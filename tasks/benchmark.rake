# frozen_string_literal: true

namespace :benchmark do
  desc 'Runs a performance benchmark on the SDK'
  task 'run' do
    require 'tmpdir'
    require 'memory_profiler' # MemoryProfiler does not work for JRuby
    require 'json'

    require_relative 'benchmark/benchmark'

    # Modify load path to include all sdk gems
    Dir.glob('gems/*/lib') do |gem_path|
      $LOAD_PATH.unshift(File.expand_path(gem_path))
    end

    report_data = Benchmark.initialize_report_data
    benchmark_data = report_data['benchmark']

    puts 'Benchmarking gem size/requires/client initialization'
    Dir.mktmpdir('ruby-sdk-benchmark') do |_tmpdir|
      Benchmark::Gem.descendants.each do |benchmark_gem_klass|
        benchmark_gem = benchmark_gem_klass.new
        puts "\tBenchmarking #{benchmark_gem.gem_name}"
        gem_data = benchmark_data[benchmark_gem.gem_name] ||= {}
        benchmark_gem.benchmark_gem_size(gem_data)
        benchmark_gem.benchmark_require(gem_data)
        benchmark_gem.benchmark_client(gem_data)
      end
    end

    # Benchmarking operations needs to be done after all require/client init tests
    # have been done.  This ensures that no gem requires/cache state is in
    # process memory for those tests
    puts "\nBenchmarking operations"
    Benchmark::Gem.descendants.each do |benchmark_gem_klass|
      benchmark_gem = benchmark_gem_klass.new
      puts "\tBenchmarking #{benchmark_gem.gem_name}"
      benchmark_gem.benchmark_operations(benchmark_data[benchmark_gem.gem_name])
    end

    puts 'Benchmarking complete, writing out report to: benchmark_report.json'
    File.write('benchmark_report.json', JSON.pretty_generate(report_data))
  end

  desc 'Upload/archive the benchmark report'
  task 'archive' do
    # Modify load path to include all sdk gems
    Dir.glob('gems/*/lib') do |gem_path|
      $LOAD_PATH.unshift(File.expand_path(gem_path))
    end

    require 'aws-sdk-s3'
    require 'securerandom'

    repo = ENV.fetch('GH_REPO', nil)
    ref = ENV.fetch('GH_REF', nil)
    event = ENV.fetch('GH_EVENT', nil)
    puts 'Archiving benchmark report from GH with ' \
         "repo: #{repo}, ref: #{ref}, event: #{event}"
    folder =
      if ENV['GH_EVENT'] == 'pull_request'
        "pr/#{ENV.fetch('GH_REF', nil)}"
      else
        'release'
      end
    key = "#{folder}/#{Time.now.strftime('%Y-%m-%d')}/benchmark_#{SecureRandom.uuid}.json"

    puts "Uploading report to: #{key}"
    client = AWS::SDK::S3::Client.new
    client.put_object(
      bucket: 'aws-sdk-ruby-v4-performance-benchmark-archive',
      key: key,
      body: File.read('benchmark_report.json')
    )
    puts 'Upload complete'
  end

  desc 'Upload benchmarking data to cloudwatch'
  task 'put-metrics' do
    # Modify load path to include all sdk gems
    Dir.glob('gems/*/lib') do |gem_path|
      $LOAD_PATH.unshift(File.expand_path(gem_path))
    end

    require 'aws-sdk-cloudwatch'
    require_relative 'benchmark/metrics'

    event =
      if ENV['GH_EVENT'] == 'pull_request'
        'pr'
      else
        'release'
      end
    report = JSON.parse(File.read('benchmark_report.json'))
    target = "#{report['ruby_engine']}-#{report['ruby_version'].split('.').first(2).join('.')}"

    # common dimensions
    report_dims = {
      event: event,
      target: target,
      os: report['os'],
      cpu: report['cpu'],
      env: report['execution_env']
    }

    puts 'Uploading benchmarking metrics'
    client = AWS::SDK::CloudWatch::Client.new
    benchmark_data = report['benchmark']
    benchmark_data.each do |gem_name, gem_data|
      dims = report_dims.merge(gem: gem_name)
      gem_data.each do |k, v|
        Benchmark::Metrics.put_metric(
          client: client,
          dims: dims,
          timestamp: Time.at(report.fetch('timestamp', Time.now.to_i)),
          metric_name: k,
          value: v
        )
      end
    end
    puts 'Benchmarking metrics uploaded'
  end
end
