# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MarketplaceMetering
  module Validators

    class BatchMeterUsageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchMeterUsageInput, context: context)
        Validators::UsageRecordList.validate!(input[:usage_records], context: "#{context}[:usage_records]") unless input[:usage_records].nil?
        Hearth::Validator.validate!(input[:product_code], ::String, context: "#{context}[:product_code]")
      end
    end

    class BatchMeterUsageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchMeterUsageOutput, context: context)
        Validators::UsageRecordResultList.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
        Validators::UsageRecordList.validate!(input[:unprocessed_records], context: "#{context}[:unprocessed_records]") unless input[:unprocessed_records].nil?
      end
    end

    class CustomerNotEntitledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerNotEntitledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DisabledApiException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisabledApiException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DuplicateRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExpiredTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpiredTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InternalServiceErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCustomerIdentifierException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCustomerIdentifierException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEndpointRegionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEndpointRegionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidProductCodeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidProductCodeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPublicKeyVersionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPublicKeyVersionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRegionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRegionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTagException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTagException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidUsageAllocationsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidUsageAllocationsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidUsageDimensionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidUsageDimensionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MeterUsageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MeterUsageInput, context: context)
        Hearth::Validator.validate!(input[:product_code], ::String, context: "#{context}[:product_code]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:usage_dimension], ::String, context: "#{context}[:usage_dimension]")
        Hearth::Validator.validate!(input[:usage_quantity], ::Integer, context: "#{context}[:usage_quantity]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Validators::UsageAllocations.validate!(input[:usage_allocations], context: "#{context}[:usage_allocations]") unless input[:usage_allocations].nil?
      end
    end

    class MeterUsageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MeterUsageOutput, context: context)
        Hearth::Validator.validate!(input[:metering_record_id], ::String, context: "#{context}[:metering_record_id]")
      end
    end

    class PlatformNotSupportedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlatformNotSupportedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RegisterUsageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterUsageInput, context: context)
        Hearth::Validator.validate!(input[:product_code], ::String, context: "#{context}[:product_code]")
        Hearth::Validator.validate!(input[:public_key_version], ::Integer, context: "#{context}[:public_key_version]")
        Hearth::Validator.validate!(input[:nonce], ::String, context: "#{context}[:nonce]")
      end
    end

    class RegisterUsageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterUsageOutput, context: context)
        Hearth::Validator.validate!(input[:public_key_rotation_timestamp], ::Time, context: "#{context}[:public_key_rotation_timestamp]")
        Hearth::Validator.validate!(input[:signature], ::String, context: "#{context}[:signature]")
      end
    end

    class ResolveCustomerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolveCustomerInput, context: context)
        Hearth::Validator.validate!(input[:registration_token], ::String, context: "#{context}[:registration_token]")
      end
    end

    class ResolveCustomerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolveCustomerOutput, context: context)
        Hearth::Validator.validate!(input[:customer_identifier], ::String, context: "#{context}[:customer_identifier]")
        Hearth::Validator.validate!(input[:product_code], ::String, context: "#{context}[:product_code]")
        Hearth::Validator.validate!(input[:customer_aws_account_id], ::String, context: "#{context}[:customer_aws_account_id]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TimestampOutOfBoundsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimestampOutOfBoundsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UsageAllocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageAllocation, context: context)
        Hearth::Validator.validate!(input[:allocated_usage_quantity], ::Integer, context: "#{context}[:allocated_usage_quantity]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UsageAllocations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UsageAllocation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UsageRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageRecord, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:customer_identifier], ::String, context: "#{context}[:customer_identifier]")
        Hearth::Validator.validate!(input[:dimension], ::String, context: "#{context}[:dimension]")
        Hearth::Validator.validate!(input[:quantity], ::Integer, context: "#{context}[:quantity]")
        Validators::UsageAllocations.validate!(input[:usage_allocations], context: "#{context}[:usage_allocations]") unless input[:usage_allocations].nil?
      end
    end

    class UsageRecordList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UsageRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UsageRecordResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsageRecordResult, context: context)
        Validators::UsageRecord.validate!(input[:usage_record], context: "#{context}[:usage_record]") unless input[:usage_record].nil?
        Hearth::Validator.validate!(input[:metering_record_id], ::String, context: "#{context}[:metering_record_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UsageRecordResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UsageRecordResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
