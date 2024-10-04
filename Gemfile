# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rake', require: false
gem 'rexml'

gem 'hearth',
    git: 'https://github.com/smithy-lang/smithy-ruby',
    glob: 'hearth/hearth.gemspec'
    # path: '../smithy-ruby/hearth'

if defined?(JRUBY_VERSION)
  # get the latest jruby-openssl to support sigv4a
  # see: https://github.com/jruby/jruby-openssl/issues/30
  gem 'jruby-openssl'
end

group :benchmark do
  gem 'memory_profiler'
end

group :development do
  gem 'byebug'
  gem 'rbs'
  gem 'rubocop'
  gem 'rubocop-rake'
  gem 'racc' # required still by rubocop but moved to bundled gem in 3.3
  gem 'steep'
  gem 'opentelemetry-sdk'
  gem 'opentelemetry-exporter-otlp'
end

group :repl do
  gem 'pry'
end

group :test do
  gem 'rspec'
  gem 'simplecov'
  gem 'webmock'
end
