# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MarketplaceMetering
  module Builders

    # Operation Builder for BatchMeterUsage
    class BatchMeterUsage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMPMeteringService.BatchMeterUsage'
        data = {}
        data['UsageRecords'] = Builders::UsageRecordList.build(input[:usage_records]) unless input[:usage_records].nil?
        data['ProductCode'] = input[:product_code] unless input[:product_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UsageRecordList
    class UsageRecordList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UsageRecord.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UsageRecord
    class UsageRecord
      def self.build(input)
        data = {}
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:timestamp]).to_i unless input[:timestamp].nil?
        data['CustomerIdentifier'] = input[:customer_identifier] unless input[:customer_identifier].nil?
        data['Dimension'] = input[:dimension] unless input[:dimension].nil?
        data['Quantity'] = input[:quantity] unless input[:quantity].nil?
        data['UsageAllocations'] = Builders::UsageAllocations.build(input[:usage_allocations]) unless input[:usage_allocations].nil?
        data
      end
    end

    # List Builder for UsageAllocations
    class UsageAllocations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UsageAllocation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UsageAllocation
    class UsageAllocation
      def self.build(input)
        data = {}
        data['AllocatedUsageQuantity'] = input[:allocated_usage_quantity] unless input[:allocated_usage_quantity].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for MeterUsage
    class MeterUsage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMPMeteringService.MeterUsage'
        data = {}
        data['ProductCode'] = input[:product_code] unless input[:product_code].nil?
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:timestamp]).to_i unless input[:timestamp].nil?
        data['UsageDimension'] = input[:usage_dimension] unless input[:usage_dimension].nil?
        data['UsageQuantity'] = input[:usage_quantity] unless input[:usage_quantity].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        data['UsageAllocations'] = Builders::UsageAllocations.build(input[:usage_allocations]) unless input[:usage_allocations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterUsage
    class RegisterUsage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMPMeteringService.RegisterUsage'
        data = {}
        data['ProductCode'] = input[:product_code] unless input[:product_code].nil?
        data['PublicKeyVersion'] = input[:public_key_version] unless input[:public_key_version].nil?
        data['Nonce'] = input[:nonce] unless input[:nonce].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResolveCustomer
    class ResolveCustomer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSMPMeteringService.ResolveCustomer'
        data = {}
        data['RegistrationToken'] = input[:registration_token] unless input[:registration_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
