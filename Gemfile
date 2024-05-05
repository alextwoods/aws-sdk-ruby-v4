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
  gem 'rubocop-rake'
  gem 'racc' # required still by rubocop but moved to bundled gem in 3.3
  gem 'steep'
end

group :benchmark do
  gem 'memory_profiler'
end
