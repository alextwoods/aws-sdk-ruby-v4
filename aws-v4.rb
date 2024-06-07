#!/usr/bin/env ruby
# frozen_string_literal: true

gems = Dir['gems/*']
gems.each do |gem_path|
  $LOAD_PATH.unshift(File.expand_path('lib', gem_path))
end
# TODO: This is slow - we should autoload but it requires a complete
# code generated list of services like aws-sdk-resources.
gems.each { |path| require File.basename(path) }

# TODO: Global config for AWS::SDK

require 'pry'
AWS::SDK.pry