# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-lexruntimev2/auth'
require_relative 'aws-sdk-lexruntimev2/builders'
require_relative 'aws-sdk-lexruntimev2/client'
require_relative 'aws-sdk-lexruntimev2/config'
require_relative 'aws-sdk-lexruntimev2/errors'
require_relative 'aws-sdk-lexruntimev2/endpoint'
require_relative 'aws-sdk-lexruntimev2/middleware'
require_relative 'aws-sdk-lexruntimev2/paginators'
require_relative 'aws-sdk-lexruntimev2/params'
require_relative 'aws-sdk-lexruntimev2/parsers'
require_relative 'aws-sdk-lexruntimev2/stubs'
require_relative 'aws-sdk-lexruntimev2/telemetry'
require_relative 'aws-sdk-lexruntimev2/types'
require_relative 'aws-sdk-lexruntimev2/validators'
require_relative 'aws-sdk-lexruntimev2/waiters'
require_relative 'aws-sdk-lexruntimev2/event_stream'
begin
  require_relative 'aws-sdk-lexruntimev2/customizations'
rescue LoadError; end

module AWS::SDK::LexRuntimeV2
  VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip
end
