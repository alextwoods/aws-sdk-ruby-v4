# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::MarketplaceMetering
  module Params

    module BatchMeterUsageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchMeterUsageInput, context: context)
        type = Types::BatchMeterUsageInput.new
        type.usage_records = UsageRecordList.build(params[:usage_records], context: "#{context}[:usage_records]") unless params[:usage_records].nil?
        type.product_code = params[:product_code]
        type
      end
    end

    module BatchMeterUsageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchMeterUsageOutput, context: context)
        type = Types::BatchMeterUsageOutput.new
        type.results = UsageRecordResultList.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type.unprocessed_records = UsageRecordList.build(params[:unprocessed_records], context: "#{context}[:unprocessed_records]") unless params[:unprocessed_records].nil?
        type
      end
    end

    module CustomerNotEntitledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerNotEntitledException, context: context)
        type = Types::CustomerNotEntitledException.new
        type.message = params[:message]
        type
      end
    end

    module DisabledApiException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisabledApiException, context: context)
        type = Types::DisabledApiException.new
        type.message = params[:message]
        type
      end
    end

    module DuplicateRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateRequestException, context: context)
        type = Types::DuplicateRequestException.new
        type.message = params[:message]
        type
      end
    end

    module ExpiredTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpiredTokenException, context: context)
        type = Types::ExpiredTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InternalServiceErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceErrorException, context: context)
        type = Types::InternalServiceErrorException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCustomerIdentifierException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCustomerIdentifierException, context: context)
        type = Types::InvalidCustomerIdentifierException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidEndpointRegionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEndpointRegionException, context: context)
        type = Types::InvalidEndpointRegionException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidProductCodeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidProductCodeException, context: context)
        type = Types::InvalidProductCodeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPublicKeyVersionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPublicKeyVersionException, context: context)
        type = Types::InvalidPublicKeyVersionException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRegionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRegionException, context: context)
        type = Types::InvalidRegionException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTagException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTagException, context: context)
        type = Types::InvalidTagException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTokenException, context: context)
        type = Types::InvalidTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidUsageAllocationsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidUsageAllocationsException, context: context)
        type = Types::InvalidUsageAllocationsException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidUsageDimensionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidUsageDimensionException, context: context)
        type = Types::InvalidUsageDimensionException.new
        type.message = params[:message]
        type
      end
    end

    module MeterUsageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MeterUsageInput, context: context)
        type = Types::MeterUsageInput.new
        type.product_code = params[:product_code]
        type.timestamp = params[:timestamp]
        type.usage_dimension = params[:usage_dimension]
        type.usage_quantity = params[:usage_quantity]
        type.dry_run = params[:dry_run]
        type.usage_allocations = UsageAllocations.build(params[:usage_allocations], context: "#{context}[:usage_allocations]") unless params[:usage_allocations].nil?
        type
      end
    end

    module MeterUsageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MeterUsageOutput, context: context)
        type = Types::MeterUsageOutput.new
        type.metering_record_id = params[:metering_record_id]
        type
      end
    end

    module PlatformNotSupportedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlatformNotSupportedException, context: context)
        type = Types::PlatformNotSupportedException.new
        type.message = params[:message]
        type
      end
    end

    module RegisterUsageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterUsageInput, context: context)
        type = Types::RegisterUsageInput.new
        type.product_code = params[:product_code]
        type.public_key_version = params[:public_key_version]
        type.nonce = params[:nonce]
        type
      end
    end

    module RegisterUsageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterUsageOutput, context: context)
        type = Types::RegisterUsageOutput.new
        type.public_key_rotation_timestamp = params[:public_key_rotation_timestamp]
        type.signature = params[:signature]
        type
      end
    end

    module ResolveCustomerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolveCustomerInput, context: context)
        type = Types::ResolveCustomerInput.new
        type.registration_token = params[:registration_token]
        type
      end
    end

    module ResolveCustomerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolveCustomerOutput, context: context)
        type = Types::ResolveCustomerOutput.new
        type.customer_identifier = params[:customer_identifier]
        type.product_code = params[:product_code]
        type.customer_aws_account_id = params[:customer_aws_account_id]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TimestampOutOfBoundsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimestampOutOfBoundsException, context: context)
        type = Types::TimestampOutOfBoundsException.new
        type.message = params[:message]
        type
      end
    end

    module UsageAllocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageAllocation, context: context)
        type = Types::UsageAllocation.new
        type.allocated_usage_quantity = params[:allocated_usage_quantity]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UsageAllocations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsageAllocation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UsageRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageRecord, context: context)
        type = Types::UsageRecord.new
        type.timestamp = params[:timestamp]
        type.customer_identifier = params[:customer_identifier]
        type.dimension = params[:dimension]
        type.quantity = params[:quantity]
        type.usage_allocations = UsageAllocations.build(params[:usage_allocations], context: "#{context}[:usage_allocations]") unless params[:usage_allocations].nil?
        type
      end
    end

    module UsageRecordList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsageRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UsageRecordResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsageRecordResult, context: context)
        type = Types::UsageRecordResult.new
        type.usage_record = UsageRecord.build(params[:usage_record], context: "#{context}[:usage_record]") unless params[:usage_record].nil?
        type.metering_record_id = params[:metering_record_id]
        type.status = params[:status]
        type
      end
    end

    module UsageRecordResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsageRecordResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
