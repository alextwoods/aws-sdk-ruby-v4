# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake'

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

group :repl do
  gem 'pry'
end
