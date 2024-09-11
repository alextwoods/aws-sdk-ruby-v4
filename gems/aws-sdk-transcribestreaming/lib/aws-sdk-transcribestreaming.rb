# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-transcribestreaming/auth'
require_relative 'aws-sdk-transcribestreaming/builders'
require_relative 'aws-sdk-transcribestreaming/client'
require_relative 'aws-sdk-transcribestreaming/config'
require_relative 'aws-sdk-transcribestreaming/errors'
require_relative 'aws-sdk-transcribestreaming/endpoint'
require_relative 'aws-sdk-transcribestreaming/middleware'
require_relative 'aws-sdk-transcribestreaming/paginators'
require_relative 'aws-sdk-transcribestreaming/params'
require_relative 'aws-sdk-transcribestreaming/parsers'
require_relative 'aws-sdk-transcribestreaming/stubs'
require_relative 'aws-sdk-transcribestreaming/telemetry'
require_relative 'aws-sdk-transcribestreaming/types'
require_relative 'aws-sdk-transcribestreaming/validators'
require_relative 'aws-sdk-transcribestreaming/waiters'
require_relative 'aws-sdk-transcribestreaming/event_stream'
begin
  require_relative 'aws-sdk-transcribestreaming/customizations'
rescue LoadError; end

module AWS::SDK::TranscribeStreaming
  VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip
end
