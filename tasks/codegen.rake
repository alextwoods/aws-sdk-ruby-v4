# frozen_string_literal: true

desc 'Cleans and Builds all codegen projects and SDKs'
task codegen: %w[codegen:clean codegen:build]

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

  desc 'Cleans and builds all codegen projects'
  task 'clean-build' => %i[clean build]

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
