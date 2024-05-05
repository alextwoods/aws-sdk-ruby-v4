# frozen_string_literal: true

desc 'Run rspec for all gems'
task 'test' do
  spec_file_list = Dir.glob('gems/**/spec')
  sh("bundle exec rspec #{spec_file_list.join(' ')}")
end

namespace :test do
  desc 'Run rspec for one gem by name'
  rule(/^test:.+/) do |task|
    gem = task.name.split(':').last
    spec_file_list = Dir.glob("gems/#{gem}/spec")
    sh("bundle exec rspec #{spec_file_list.join(' ')}")
  end

  desc 'Run rspec for all code generated gems'
  task 'codegen-gems' do
    spec_file_list = Dir.glob('gems/**/spec')
                        .reject { |d| d.include?('aws-sdk-core') || d.include?('aws-sigv4') }
    sh("bundle exec rspec #{spec_file_list.join(' ')}")
  end
end
