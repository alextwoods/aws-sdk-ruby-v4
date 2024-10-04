# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-kms/auth'
require_relative 'aws-sdk-kms/builders'
require_relative 'aws-sdk-kms/client'
require_relative 'aws-sdk-kms/config'
require_relative 'aws-sdk-kms/errors'
require_relative 'aws-sdk-kms/endpoint'
require_relative 'aws-sdk-kms/middleware'
require_relative 'aws-sdk-kms/paginators'
require_relative 'aws-sdk-kms/params'
require_relative 'aws-sdk-kms/parsers'
require_relative 'aws-sdk-kms/stubs'
require_relative 'aws-sdk-kms/telemetry'
require_relative 'aws-sdk-kms/types'
require_relative 'aws-sdk-kms/validators'
require_relative 'aws-sdk-kms/waiters'
begin
  require_relative 'aws-sdk-kms/customizations'
rescue LoadError; end

module AWS::SDK::KMS
  VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip
end
