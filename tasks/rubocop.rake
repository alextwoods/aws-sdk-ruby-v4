# frozen_string_literal: true

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
