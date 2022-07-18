# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DynamoDBStreams
  module Stubs

    # Operation Stubber for DescribeStream
    class DescribeStream
      def self.default(visited=[])
        {
          stream_description: StreamDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamDescription'] = Stubs::StreamDescription.stub(stub[:stream_description]) unless stub[:stream_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for StreamDescription
    class StreamDescription
      def self.default(visited=[])
        return nil if visited.include?('StreamDescription')
        visited = visited + ['StreamDescription']
        {
          stream_arn: 'stream_arn',
          stream_label: 'stream_label',
          stream_status: 'stream_status',
          stream_view_type: 'stream_view_type',
          creation_request_date_time: Time.now,
          table_name: 'table_name',
          key_schema: KeySchema.default(visited),
          shards: ShardDescriptionList.default(visited),
          last_evaluated_shard_id: 'last_evaluated_shard_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamDescription.new
        data = {}
        data['StreamArn'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['StreamLabel'] = stub[:stream_label] unless stub[:stream_label].nil?
        data['StreamStatus'] = stub[:stream_status] unless stub[:stream_status].nil?
        data['StreamViewType'] = stub[:stream_view_type] unless stub[:stream_view_type].nil?
        data['CreationRequestDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_request_date_time]).to_i unless stub[:creation_request_date_time].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['KeySchema'] = Stubs::KeySchema.stub(stub[:key_schema]) unless stub[:key_schema].nil?
        data['Shards'] = Stubs::ShardDescriptionList.stub(stub[:shards]) unless stub[:shards].nil?
        data['LastEvaluatedShardId'] = stub[:last_evaluated_shard_id] unless stub[:last_evaluated_shard_id].nil?
        data
      end
    end

    # List Stubber for ShardDescriptionList
    class ShardDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('ShardDescriptionList')
        visited = visited + ['ShardDescriptionList']
        [
          Shard.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Shard.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Shard
    class Shard
      def self.default(visited=[])
        return nil if visited.include?('Shard')
        visited = visited + ['Shard']
        {
          shard_id: 'shard_id',
          sequence_number_range: SequenceNumberRange.default(visited),
          parent_shard_id: 'parent_shard_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Shard.new
        data = {}
        data['ShardId'] = stub[:shard_id] unless stub[:shard_id].nil?
        data['SequenceNumberRange'] = Stubs::SequenceNumberRange.stub(stub[:sequence_number_range]) unless stub[:sequence_number_range].nil?
        data['ParentShardId'] = stub[:parent_shard_id] unless stub[:parent_shard_id].nil?
        data
      end
    end

    # Structure Stubber for SequenceNumberRange
    class SequenceNumberRange
      def self.default(visited=[])
        return nil if visited.include?('SequenceNumberRange')
        visited = visited + ['SequenceNumberRange']
        {
          starting_sequence_number: 'starting_sequence_number',
          ending_sequence_number: 'ending_sequence_number',
        }
      end

      def self.stub(stub)
        stub ||= Types::SequenceNumberRange.new
        data = {}
        data['StartingSequenceNumber'] = stub[:starting_sequence_number] unless stub[:starting_sequence_number].nil?
        data['EndingSequenceNumber'] = stub[:ending_sequence_number] unless stub[:ending_sequence_number].nil?
        data
      end
    end

    # List Stubber for KeySchema
    class KeySchema
      def self.default(visited=[])
        return nil if visited.include?('KeySchema')
        visited = visited + ['KeySchema']
        [
          KeySchemaElement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::KeySchemaElement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KeySchemaElement
    class KeySchemaElement
      def self.default(visited=[])
        return nil if visited.include?('KeySchemaElement')
        visited = visited + ['KeySchemaElement']
        {
          attribute_name: 'attribute_name',
          key_type: 'key_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::KeySchemaElement.new
        data = {}
        data['AttributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data['KeyType'] = stub[:key_type] unless stub[:key_type].nil?
        data
      end
    end

    # Operation Stubber for GetRecords
    class GetRecords
      def self.default(visited=[])
        {
          records: RecordList.default(visited),
          next_shard_iterator: 'next_shard_iterator',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Records'] = Stubs::RecordList.stub(stub[:records]) unless stub[:records].nil?
        data['NextShardIterator'] = stub[:next_shard_iterator] unless stub[:next_shard_iterator].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RecordList
    class RecordList
      def self.default(visited=[])
        return nil if visited.include?('RecordList')
        visited = visited + ['RecordList']
        [
          Record.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Record.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Record
    class Record
      def self.default(visited=[])
        return nil if visited.include?('Record')
        visited = visited + ['Record']
        {
          event_id: 'event_id',
          event_name: 'event_name',
          event_version: 'event_version',
          event_source: 'event_source',
          aws_region: 'aws_region',
          dynamodb: StreamRecord.default(visited),
          user_identity: Identity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Record.new
        data = {}
        data['eventID'] = stub[:event_id] unless stub[:event_id].nil?
        data['eventName'] = stub[:event_name] unless stub[:event_name].nil?
        data['eventVersion'] = stub[:event_version] unless stub[:event_version].nil?
        data['eventSource'] = stub[:event_source] unless stub[:event_source].nil?
        data['awsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data['dynamodb'] = Stubs::StreamRecord.stub(stub[:dynamodb]) unless stub[:dynamodb].nil?
        data['userIdentity'] = Stubs::Identity.stub(stub[:user_identity]) unless stub[:user_identity].nil?
        data
      end
    end

    # Structure Stubber for Identity
    class Identity
      def self.default(visited=[])
        return nil if visited.include?('Identity')
        visited = visited + ['Identity']
        {
          principal_id: 'principal_id',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Identity.new
        data = {}
        data['PrincipalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for StreamRecord
    class StreamRecord
      def self.default(visited=[])
        return nil if visited.include?('StreamRecord')
        visited = visited + ['StreamRecord']
        {
          approximate_creation_date_time: Time.now,
          keys: AttributeMap.default(visited),
          new_image: AttributeMap.default(visited),
          old_image: AttributeMap.default(visited),
          sequence_number: 'sequence_number',
          size_bytes: 1,
          stream_view_type: 'stream_view_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamRecord.new
        data = {}
        data['ApproximateCreationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:approximate_creation_date_time]).to_i unless stub[:approximate_creation_date_time].nil?
        data['Keys'] = Stubs::AttributeMap.stub(stub[:keys]) unless stub[:keys].nil?
        data['NewImage'] = Stubs::AttributeMap.stub(stub[:new_image]) unless stub[:new_image].nil?
        data['OldImage'] = Stubs::AttributeMap.stub(stub[:old_image]) unless stub[:old_image].nil?
        data['SequenceNumber'] = stub[:sequence_number] unless stub[:sequence_number].nil?
        data['SizeBytes'] = stub[:size_bytes] unless stub[:size_bytes].nil?
        data['StreamViewType'] = stub[:stream_view_type] unless stub[:stream_view_type].nil?
        data
      end
    end

    # Map Stubber for AttributeMap
    class AttributeMap
      def self.default(visited=[])
        return nil if visited.include?('AttributeMap')
        visited = visited + ['AttributeMap']
        {
          test_key: AttributeValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::AttributeValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # Union Stubber for AttributeValue
    class AttributeValue
      def self.default(visited=[])
        return nil if visited.include?('AttributeValue')
        visited = visited + ['AttributeValue']
        {
          s: 's',
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::AttributeValue::S
          data['S'] = stub.__getobj__
        when Types::AttributeValue::N
          data['N'] = stub.__getobj__
        when Types::AttributeValue::B
          data['B'] = Base64::encode64(stub.__getobj__)
        when Types::AttributeValue::Ss
          data['SS'] = (Stubs::StringSetAttributeValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AttributeValue::Ns
          data['NS'] = (Stubs::NumberSetAttributeValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AttributeValue::Bs
          data['BS'] = (Stubs::BinarySetAttributeValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AttributeValue::M
          data['M'] = (Stubs::MapAttributeValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AttributeValue::L
          data['L'] = (Stubs::ListAttributeValue.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::AttributeValue::Null
          data['NULL'] = stub.__getobj__
        when Types::AttributeValue::Bool
          data['BOOL'] = stub.__getobj__
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AttributeValue"
        end

        data
      end
    end

    # List Stubber for ListAttributeValue
    class ListAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('ListAttributeValue')
        visited = visited + ['ListAttributeValue']
        [
          AttributeValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AttributeValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Map Stubber for MapAttributeValue
    class MapAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('MapAttributeValue')
        visited = visited + ['MapAttributeValue']
        {
          test_key: AttributeValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::AttributeValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for BinarySetAttributeValue
    class BinarySetAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('BinarySetAttributeValue')
        visited = visited + ['BinarySetAttributeValue']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Base64::encode64(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for NumberSetAttributeValue
    class NumberSetAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('NumberSetAttributeValue')
        visited = visited + ['NumberSetAttributeValue']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for StringSetAttributeValue
    class StringSetAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('StringSetAttributeValue')
        visited = visited + ['StringSetAttributeValue']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetShardIterator
    class GetShardIterator
      def self.default(visited=[])
        {
          shard_iterator: 'shard_iterator',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ShardIterator'] = stub[:shard_iterator] unless stub[:shard_iterator].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListStreams
    class ListStreams
      def self.default(visited=[])
        {
          streams: StreamList.default(visited),
          last_evaluated_stream_arn: 'last_evaluated_stream_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Streams'] = Stubs::StreamList.stub(stub[:streams]) unless stub[:streams].nil?
        data['LastEvaluatedStreamArn'] = stub[:last_evaluated_stream_arn] unless stub[:last_evaluated_stream_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StreamList
    class StreamList
      def self.default(visited=[])
        return nil if visited.include?('StreamList')
        visited = visited + ['StreamList']
        [
          Stream.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Stream.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Stream
    class Stream
      def self.default(visited=[])
        return nil if visited.include?('Stream')
        visited = visited + ['Stream']
        {
          stream_arn: 'stream_arn',
          table_name: 'table_name',
          stream_label: 'stream_label',
        }
      end

      def self.stub(stub)
        stub ||= Types::Stream.new
        data = {}
        data['StreamArn'] = stub[:stream_arn] unless stub[:stream_arn].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['StreamLabel'] = stub[:stream_label] unless stub[:stream_label].nil?
        data
      end
    end
  end
end
