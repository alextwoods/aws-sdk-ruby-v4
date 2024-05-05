# frozen_string_literal: true

namespace :'protocol-test' do
  desc 'Run generated protocol specs for all protocol test gems'
  task :all do
    test_sdk_dirs = Dir.glob("#{$aws_protocol_test_codegen_dir}/*/ruby-codegen/*")
                       .select { |d| Dir.exist?("#{d}/spec") }

    specs = test_sdk_dirs.map { |d| "#{d}/spec" }.join(' ')
    includes = test_sdk_dirs.map do |d|
      "-I #{d}/lib"
    end.join(' ') + ' -I gems/aws-sdk-core/lib -I gems/aws-sigv4/lib'

    sh("bundle exec rspec #{specs} #{includes}")
  end

  desc 'Run generated protocol specs for a specific protocol'
  rule(/protocol-test:.+/) do |task|
    protocol = task.name.split(':').last
    protocols_dir = Dir.glob("#{$aws_protocol_test_codegen_dir}/*/ruby-codegen/*")
    test_sdk_dir = protocols_dir.find { |d| File.basename(d) == protocol }

    if test_sdk_dir.nil?
      available_protocols = protocols_dir.map { |d| File.basename(d) }.join(', ')
      raise "Protocol not found: #{protocol}, available protocols: #{available_protocols}"
    end

    includes = "-I #{test_sdk_dir}/lib -I gems/aws-sdk-core/lib -I gems/aws-sigv4/lib"

    sh("bundle exec rspec #{test_sdk_dir}/spec #{includes}")
  end
end
