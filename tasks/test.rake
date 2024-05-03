
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

  task 'codegen-gems' do
    spec_file_list = Dir.glob('gems/**/spec')
      .reject { |d| d.include?('aws-sdk-core') || d.include?('aws-sigv4') }
    sh("bundle exec rspec #{spec_file_list.join(' ')}")
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
