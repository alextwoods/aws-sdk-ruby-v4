# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MarketplaceMetering
  module Parsers

    # Operation Parser for BatchMeterUsage
    class BatchMeterUsage
      def self.parse(http_resp)
        data = Types::BatchMeterUsageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.results = (Parsers::UsageRecordResultList.parse(map['Results']) unless map['Results'].nil?)
        data.unprocessed_records = (Parsers::UsageRecordList.parse(map['UnprocessedRecords']) unless map['UnprocessedRecords'].nil?)
        data
      end
    end

    class UsageRecordList
      def self.parse(list)
        list.map do |value|
          Parsers::UsageRecord.parse(value) unless value.nil?
        end
      end
    end

    class UsageRecord
      def self.parse(map)
        data = Types::UsageRecord.new
        data.timestamp = Time.at(map['Timestamp'].to_i) if map['Timestamp']
        data.customer_identifier = map['CustomerIdentifier']
        data.dimension = map['Dimension']
        data.quantity = map['Quantity']
        data.usage_allocations = (Parsers::UsageAllocations.parse(map['UsageAllocations']) unless map['UsageAllocations'].nil?)
        return data
      end
    end

    class UsageAllocations
      def self.parse(list)
        list.map do |value|
          Parsers::UsageAllocation.parse(value) unless value.nil?
        end
      end
    end

    class UsageAllocation
      def self.parse(map)
        data = Types::UsageAllocation.new
        data.allocated_usage_quantity = map['AllocatedUsageQuantity']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class UsageRecordResultList
      def self.parse(list)
        list.map do |value|
          Parsers::UsageRecordResult.parse(value) unless value.nil?
        end
      end
    end

    class UsageRecordResult
      def self.parse(map)
        data = Types::UsageRecordResult.new
        data.usage_record = (Parsers::UsageRecord.parse(map['UsageRecord']) unless map['UsageRecord'].nil?)
        data.metering_record_id = map['MeteringRecordId']
        data.status = map['Status']
        return data
      end
    end

    # Error Parser for DisabledApiException
    class DisabledApiException
      def self.parse(http_resp)
        data = Types::DisabledApiException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidUsageAllocationsException
    class InvalidUsageAllocationsException
      def self.parse(http_resp)
        data = Types::InvalidUsageAllocationsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidUsageDimensionException
    class InvalidUsageDimensionException
      def self.parse(http_resp)
        data = Types::InvalidUsageDimensionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InternalServiceErrorException
    class InternalServiceErrorException
      def self.parse(http_resp)
        data = Types::InternalServiceErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidCustomerIdentifierException
    class InvalidCustomerIdentifierException
      def self.parse(http_resp)
        data = Types::InvalidCustomerIdentifierException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTagException
    class InvalidTagException
      def self.parse(http_resp)
        data = Types::InvalidTagException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TimestampOutOfBoundsException
    class TimestampOutOfBoundsException
      def self.parse(http_resp)
        data = Types::TimestampOutOfBoundsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidProductCodeException
    class InvalidProductCodeException
      def self.parse(http_resp)
        data = Types::InvalidProductCodeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for MeterUsage
    class MeterUsage
      def self.parse(http_resp)
        data = Types::MeterUsageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.metering_record_id = map['MeteringRecordId']
        data
      end
    end

    # Error Parser for DuplicateRequestException
    class DuplicateRequestException
      def self.parse(http_resp)
        data = Types::DuplicateRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidEndpointRegionException
    class InvalidEndpointRegionException
      def self.parse(http_resp)
        data = Types::InvalidEndpointRegionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CustomerNotEntitledException
    class CustomerNotEntitledException
      def self.parse(http_resp)
        data = Types::CustomerNotEntitledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for RegisterUsage
    class RegisterUsage
      def self.parse(http_resp)
        data = Types::RegisterUsageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.public_key_rotation_timestamp = Time.at(map['PublicKeyRotationTimestamp'].to_i) if map['PublicKeyRotationTimestamp']
        data.signature = map['Signature']
        data
      end
    end

    # Error Parser for InvalidRegionException
    class InvalidRegionException
      def self.parse(http_resp)
        data = Types::InvalidRegionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidPublicKeyVersionException
    class InvalidPublicKeyVersionException
      def self.parse(http_resp)
        data = Types::InvalidPublicKeyVersionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for PlatformNotSupportedException
    class PlatformNotSupportedException
      def self.parse(http_resp)
        data = Types::PlatformNotSupportedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ResolveCustomer
    class ResolveCustomer
      def self.parse(http_resp)
        data = Types::ResolveCustomerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.customer_identifier = map['CustomerIdentifier']
        data.product_code = map['ProductCode']
        data.customer_aws_account_id = map['CustomerAWSAccountId']
        data
      end
    end

    # Error Parser for ExpiredTokenException
    class ExpiredTokenException
      def self.parse(http_resp)
        data = Types::ExpiredTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTokenException
    class InvalidTokenException
      def self.parse(http_resp)
        data = Types::InvalidTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end
  end
end
