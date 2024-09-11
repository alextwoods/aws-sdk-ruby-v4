# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-kinesis/auth'
require_relative 'aws-sdk-kinesis/builders'
require_relative 'aws-sdk-kinesis/client'
require_relative 'aws-sdk-kinesis/config'
require_relative 'aws-sdk-kinesis/errors'
require_relative 'aws-sdk-kinesis/endpoint'
require_relative 'aws-sdk-kinesis/middleware'
require_relative 'aws-sdk-kinesis/paginators'
require_relative 'aws-sdk-kinesis/params'
require_relative 'aws-sdk-kinesis/parsers'
require_relative 'aws-sdk-kinesis/stubs'
require_relative 'aws-sdk-kinesis/telemetry'
require_relative 'aws-sdk-kinesis/types'
require_relative 'aws-sdk-kinesis/validators'
require_relative 'aws-sdk-kinesis/waiters'
require_relative 'aws-sdk-kinesis/event_stream'
begin
  require_relative 'aws-sdk-kinesis/customizations'
rescue LoadError; end

module AWS::SDK::Kinesis
  VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip
end
