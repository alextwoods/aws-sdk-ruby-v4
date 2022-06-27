# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake'

# Use the latest hearth from Github
gem 'hearth',
    git: 'https://github.com/awslabs/smithy-ruby',
    glob: 'hearth/hearth.gemspec'

group :test do
  gem 'rspec'
  gem 'simplecov'
  gem 'webmock'
end

group :development do
  gem 'rbs'
  gem 'rubocop', '<= 1.27.0'
  gem 'steep'
end

group :repl do
  gem 'pry'
end
