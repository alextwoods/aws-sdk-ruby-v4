# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-dynamodb/auth'
require_relative 'aws-sdk-dynamodb/builders'
require_relative 'aws-sdk-dynamodb/client'
require_relative 'aws-sdk-dynamodb/config'
require_relative 'aws-sdk-dynamodb/errors'
require_relative 'aws-sdk-dynamodb/endpoint'
require_relative 'aws-sdk-dynamodb/middleware'
require_relative 'aws-sdk-dynamodb/paginators'
require_relative 'aws-sdk-dynamodb/params'
require_relative 'aws-sdk-dynamodb/parsers'
require_relative 'aws-sdk-dynamodb/stubs'
require_relative 'aws-sdk-dynamodb/telemetry'
require_relative 'aws-sdk-dynamodb/types'
require_relative 'aws-sdk-dynamodb/validators'
require_relative 'aws-sdk-dynamodb/waiters'
begin
  require_relative 'aws-sdk-dynamodb/customizations'
rescue LoadError; end

module AWS::SDK::DynamoDB
  VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip
end
