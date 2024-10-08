# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-sts/auth'
require_relative 'aws-sdk-sts/builders'
require_relative 'aws-sdk-sts/client'
require_relative 'aws-sdk-sts/config'
require_relative 'aws-sdk-sts/errors'
require_relative 'aws-sdk-sts/endpoint'
require_relative 'aws-sdk-sts/middleware'
require_relative 'aws-sdk-sts/paginators'
require_relative 'aws-sdk-sts/params'
require_relative 'aws-sdk-sts/parsers'
require_relative 'aws-sdk-sts/stubs'
require_relative 'aws-sdk-sts/telemetry'
require_relative 'aws-sdk-sts/types'
require_relative 'aws-sdk-sts/validators'
require_relative 'aws-sdk-sts/waiters'
begin
  require_relative 'aws-sdk-sts/customizations'
rescue LoadError; end

module AWS::SDK::STS
  VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip
end
