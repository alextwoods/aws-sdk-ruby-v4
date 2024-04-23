# frozen_string_literal: true

require 'fileutils'

ROOT = File.dirname(__FILE__)
GEMS_DIR = "#{ROOT}/gems"

# $LOAD_PATH.unshift("#{GEMS_DIR}/aws-sdk-core/lib")
# $LOAD_PATH.unshift("#{GEMS_DIR}/aws-sigv4/lib")

desc 'Cleans and Builds all codegen projects and SDKs'
task :codegen => ['codegen:clean', 'codegen:build']

namespace :codegen do
  desc 'Verify java version is 17 - required for running codegen with gradle'
  task 'verify-java' do
    # java must be set to a compatible version (17)
    # the java command respects the JAVA_HOME env var
    out = `java -XshowSettings:properties -version 2>&1`
    java_version = out.split("\n")
                      .map(&:strip).find { |l| l.start_with?('java.specification.version') }
                      &.split&.last

    unless java_version == '17'
      raise "Invalid Java language version: '#{java_version || 'unknown'}'. \n" \
            "Ensure you have installed the JDK and set your JAVA_HOME directory correctly.\n" \
            'Or ensure you have setup jenv using `jenv local 17.0` after adding the correct jdk'
    end
  end

  desc 'Clean all codegen projects'
  task 'clean' do
    Dir.chdir('codegen') do
      sh('./gradlew clean')
    end
  end

  desc 'Build all codegen projects'
  task 'build' => 'verify-java' do
    Dir.chdir('codegen') do
      sh('./gradlew build')
    end
  end

  desc 'Run build on a single codegen project'
  rule(/codegen:build:.+/ => 'codegen:verify-java') do |task|
    project = task.name.split(':').last
    Dir.chdir('codegen') do
      sh("./gradlew #{project}:build")
    end
  end

  desc 'Build a single gem'
  rule(/codegen:.+/ => 'codegen:verify-java') do |task|
    gem = task.name.split(':').last
    Dir.chdir('codegen') do
      sh("./gradlew build -Pgem=#{gem}")
    end
  end
end

desc 'Run rspec for all gems'
task 'test' do
  spec_file_list = Dir.glob('gems/**/spec')
  sh("bundle exec rspec #{spec_file_list.join(' ')}")
end

namespace :test do
  desc 'Run rspec for fully hand maintained gems (core and sigv4)'
  task 'core' do
    sh('bundle exec rspec gems/aws-sdk-core gems/aws-sigv4')
  end

  task 'protocol-tests' do
    build_dir = 'codegen/protocol-test-codegen/build/smithyprojections/protocol-test-codegen'

    test_sdk_dirs = Dir.glob("#{build_dir}/*/ruby-codegen/*")
                       .select { |d| Dir.exist?("#{d}/spec") }

    specs = test_sdk_dirs.map { |d| "#{d}/spec" }.join(' ')
    includes = test_sdk_dirs.map do |d|
      "-I #{d}/lib"
    end.join(' ') + ' -I gems/aws-sdk-core/lib -I gems/aws-sigv4/lib'

    sh("bundle exec rspec #{specs} #{includes}")
  end

  rule(/test:protocol:.+/) do |task|
    protocol = task.name.split(':').last
    build_dir = 'codegen/protocol-test-codegen/build/smithyprojections/protocol-test-codegen'

    test_sdk_dir = Dir.glob("#{build_dir}/*/ruby-codegen/*")
                      .find { |d| d.include?(protocol) }

    includes = "-I #{test_sdk_dir}/lib -I gems/aws-sdk-core/lib -I gems/aws-sigv4/lib"

    sh("bundle exec rspec #{test_sdk_dir}/spec #{includes}")
  end

  rule(/test:.+/) do |task|
    gem = task.name.split(':').last
    spec_file_list = Dir.glob("gems/#{gem}/spec")
    sh("bundle exec rspec #{spec_file_list.join(' ')}")
  end
end

namespace :rubocop do
  desc 'Runs rubocop on hand coded gems'
  task 'core' do
    Dir.chdir('gems/aws-sdk-core') do
      sh('bundle exec rubocop -E -S')
    end

    Dir.chdir('gems/aws-sigv4') do
      sh('bundle exec rubocop -E -S')
    end
  end

  desc 'Runs rubocop on the hand coded ruby files (tests and middleware/plugins/ect) in codegen'
  task 'codegen' do
    Dir.chdir('codegen') do
      sh('bundle exec rubocop -E -S')
    end
  end
end

namespace :steep do
end

namespace :rbs do
end

task :repl do
  # Modify load path to include all sdk gems
  Dir.glob("gems/*/lib") do |gem_path|
    $LOAD_PATH.unshift(File.expand_path(gem_path))
  end
  require 'irb'
  require 'aws-sdk-core'

  binding.irb
end

namespace :benchmark do
  desc 'Runs a performance benchmark on the SDK'
  task 'run' do
    require 'tmpdir'
    require 'memory_profiler' # MemoryProfiler does not work for JRuby
    require 'json'

    require_relative 'benchmark/benchmark'

    # Modify load path to include all sdk gems
    Dir.glob("gems/*/lib") do |gem_path|
      $LOAD_PATH.unshift(File.expand_path(gem_path))
    end

    report_data = Benchmark.initialize_report_data
    benchmark_data = report_data["benchmark"]

    puts "Benchmarking gem size/requires/client initialization"
    Dir.mktmpdir("ruby-sdk-benchmark") do |tmpdir|
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

    puts "Benchmarking complete, writing out report to: benchmark_report.json"
    File.write("benchmark_report.json", JSON.pretty_generate(report_data))
  end

  desc 'Upload/archive the benchmark report'
  task 'archive' do
    require 'aws-sdk-s3'
    require 'securerandom'

    puts 'Archiving benchmark report from GH with '\
        "repo: #{ENV['GH_REPO']}, ref: #{ENV['GH_REF']}, event: #{ENV['GH_EVENT']}"
    folder =
      if ENV['GH_EVENT'] == 'pull_request'
        "pr/#{ENV['GH_REF']}"
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
    require 'aws-sdk-cloudwatch'
    require_relative 'benchmark/metrics'

    event =
      if ENV['GH_EVENT'] == 'pull_request'
        'pr'
      else
        'release'
      end
    report = JSON.parse(File.read('benchmark_report.json'))
    target = report['ruby_engine'] + "-" + report['ruby_version'].split('.').first(2).join('.')

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
          timestamp: report['timestamp'] || Time.now,
          metric_name: k,
          value: v)
      end
    end
    puts "Benchmarking metrics uploaded"
  end
end
