#!/usr/bin/env ruby
# frozen_string_literal: true

# When running the REPL locally, we want to load all of the gems from source.
# First load aws-sdk-core and its dependencies.
core_gems = %w(aws-sdk-core aws-sigv4)
core_gems.each do |gem_name|
  $LOAD_PATH.unshift(File.expand_path("gems/#{gem_name}/lib", __dir__))
end

# Then load all of the service gems.
service_gems = Dir['gems/aws-sdk-*'].reject do |path|
  core_gems.include?(File.basename(path))
end
service_gems.each do |path|
  $LOAD_PATH.unshift(File.expand_path("#{path}/lib", __dir__))
end

# Finally load all of the gems.
core_gems.each { |gem_name| require gem_name }
# TODO: Because this is slow - we should autoload but it requires a complete
# code generated list of services like aws-sdk-resources.
Thread.new do
  service_gems.each { |path| require File.basename(path) }
end

# TODO: Global config for AWS::SDK

require 'pry'
AWS::SDK.pry
