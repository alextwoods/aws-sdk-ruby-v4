#!/usr/bin/env ruby
# frozen_string_literal: true
require 'json'

gems = Dir['gems/*'].select { |d| File.directory?(d) }
gems.each do |gem_path|
  $LOAD_PATH.unshift(File.expand_path('lib', gem_path))
end

# Setup Autoloads if the smithy-build file exists
smithy_build_path = 'codegen/aws-sdk-codegen/smithy-build.json'
if File.exist?(smithy_build_path)
  require 'aws-sdk-core' # ensure we have the AWS::SDK namespace
  
  smithy_build = JSON.parse(File.read(smithy_build_path))
  smithy_build['projections'].each do |_id, projection|
    service = projection['plugins']['ruby-codegen']
    module_name = service['module'].split('::').last
    gem_name = service['gemspec']['gemName']
    AWS::SDK.autoload module_name.to_sym, gem_name
  end
else
  gems
    .map { |path| File.basename(path) }
    .select { |path| path.start_with?('aws-sdk') }
    .each { |path| require path }
end

# TODO: Global config for AWS::SDK

require 'pry'
AWS::SDK.pry