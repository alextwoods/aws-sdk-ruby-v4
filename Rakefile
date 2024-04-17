# frozen_string_literal: true

require 'fileutils'

ROOT = File.dirname(__FILE__)
GEMS_DIR = "#{ROOT}/gems"

# $LOAD_PATH.unshift("#{GEMS_DIR}/aws-sdk-core/lib")
# $LOAD_PATH.unshift("#{GEMS_DIR}/aws-sigv4/lib")

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
      raise "Invalid Java language version: '#{java_version || 'unknown'}'. \n"\
            "Ensure you have installed the JDK and set your JAVA_HOME directory correctly.\n"\
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
  include_list = Dir.glob('gems/**/lib').map { |p| "-I#{p}" }
  sh("bundle exec rspec #{include_list.join(' ')} #{spec_file_list.join(' ')}")
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
