# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MarketplaceMetering
  module Stubs

    # Operation Stubber for BatchMeterUsage
    class BatchMeterUsage
      def self.default(visited=[])
        {
          results: UsageRecordResultList.default(visited),
          unprocessed_records: UsageRecordList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Results'] = Stubs::UsageRecordResultList.stub(stub[:results]) unless stub[:results].nil?
        data['UnprocessedRecords'] = Stubs::UsageRecordList.stub(stub[:unprocessed_records]) unless stub[:unprocessed_records].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UsageRecordList
    class UsageRecordList
      def self.default(visited=[])
        return nil if visited.include?('UsageRecordList')
        visited = visited + ['UsageRecordList']
        [
          UsageRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UsageRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UsageRecord
    class UsageRecord
      def self.default(visited=[])
        return nil if visited.include?('UsageRecord')
        visited = visited + ['UsageRecord']
        {
          timestamp: Time.now,
          customer_identifier: 'customer_identifier',
          dimension: 'dimension',
          quantity: 1,
          usage_allocations: UsageAllocations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UsageRecord.new
        data = {}
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['CustomerIdentifier'] = stub[:customer_identifier] unless stub[:customer_identifier].nil?
        data['Dimension'] = stub[:dimension] unless stub[:dimension].nil?
        data['Quantity'] = stub[:quantity] unless stub[:quantity].nil?
        data['UsageAllocations'] = Stubs::UsageAllocations.stub(stub[:usage_allocations]) unless stub[:usage_allocations].nil?
        data
      end
    end

    # List Stubber for UsageAllocations
    class UsageAllocations
      def self.default(visited=[])
        return nil if visited.include?('UsageAllocations')
        visited = visited + ['UsageAllocations']
        [
          UsageAllocation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UsageAllocation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UsageAllocation
    class UsageAllocation
      def self.default(visited=[])
        return nil if visited.include?('UsageAllocation')
        visited = visited + ['UsageAllocation']
        {
          allocated_usage_quantity: 1,
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UsageAllocation.new
        data = {}
        data['AllocatedUsageQuantity'] = stub[:allocated_usage_quantity] unless stub[:allocated_usage_quantity].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for UsageRecordResultList
    class UsageRecordResultList
      def self.default(visited=[])
        return nil if visited.include?('UsageRecordResultList')
        visited = visited + ['UsageRecordResultList']
        [
          UsageRecordResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UsageRecordResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UsageRecordResult
    class UsageRecordResult
      def self.default(visited=[])
        return nil if visited.include?('UsageRecordResult')
        visited = visited + ['UsageRecordResult']
        {
          usage_record: UsageRecord.default(visited),
          metering_record_id: 'metering_record_id',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::UsageRecordResult.new
        data = {}
        data['UsageRecord'] = Stubs::UsageRecord.stub(stub[:usage_record]) unless stub[:usage_record].nil?
        data['MeteringRecordId'] = stub[:metering_record_id] unless stub[:metering_record_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for MeterUsage
    class MeterUsage
      def self.default(visited=[])
        {
          metering_record_id: 'metering_record_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MeteringRecordId'] = stub[:metering_record_id] unless stub[:metering_record_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterUsage
    class RegisterUsage
      def self.default(visited=[])
        {
          public_key_rotation_timestamp: Time.now,
          signature: 'signature',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PublicKeyRotationTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:public_key_rotation_timestamp]).to_i unless stub[:public_key_rotation_timestamp].nil?
        data['Signature'] = stub[:signature] unless stub[:signature].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResolveCustomer
    class ResolveCustomer
      def self.default(visited=[])
        {
          customer_identifier: 'customer_identifier',
          product_code: 'product_code',
          customer_aws_account_id: 'customer_aws_account_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CustomerIdentifier'] = stub[:customer_identifier] unless stub[:customer_identifier].nil?
        data['ProductCode'] = stub[:product_code] unless stub[:product_code].nil?
        data['CustomerAWSAccountId'] = stub[:customer_aws_account_id] unless stub[:customer_aws_account_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
