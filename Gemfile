# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rexml'

gem 'rake', require: false

# Use the latest hearth from Github
gem 'hearth',
    git: 'https://github.com/smithy-lang/smithy-ruby',
    glob: 'hearth/hearth.gemspec'

group :test do
  gem 'rspec'
  gem 'simplecov'
  gem 'webmock'
end

group :development do
  gem 'rbs'
  gem 'rubocop'
  gem 'steep'
end

group :benchmark do
  gem 'memory_profiler'

  # required for uploading archive/metrics
  # TODO: Once supported and available, start using local V4 gems instead of v3
  # gem 'aws-sdk-cloudwatch'
  # gem 'aws-sdk-s3'
end
