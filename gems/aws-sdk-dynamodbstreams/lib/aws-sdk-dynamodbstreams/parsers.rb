# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::DynamoDBStreams
  module Parsers

    # Operation Parser for DescribeStream
    class DescribeStream
      def self.parse(http_resp)
        data = Types::DescribeStreamOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stream_description = (Parsers::StreamDescription.parse(map['StreamDescription']) unless map['StreamDescription'].nil?)
        data
      end
    end

    class StreamDescription
      def self.parse(map)
        data = Types::StreamDescription.new
        data.stream_arn = map['StreamArn']
        data.stream_label = map['StreamLabel']
        data.stream_status = map['StreamStatus']
        data.stream_view_type = map['StreamViewType']
        data.creation_request_date_time = Time.at(map['CreationRequestDateTime'].to_i) if map['CreationRequestDateTime']
        data.table_name = map['TableName']
        data.key_schema = (Parsers::KeySchema.parse(map['KeySchema']) unless map['KeySchema'].nil?)
        data.shards = (Parsers::ShardDescriptionList.parse(map['Shards']) unless map['Shards'].nil?)
        data.last_evaluated_shard_id = map['LastEvaluatedShardId']
        return data
      end
    end

    class ShardDescriptionList
      def self.parse(list)
        list.map do |value|
          Parsers::Shard.parse(value) unless value.nil?
        end
      end
    end

    class Shard
      def self.parse(map)
        data = Types::Shard.new
        data.shard_id = map['ShardId']
        data.sequence_number_range = (Parsers::SequenceNumberRange.parse(map['SequenceNumberRange']) unless map['SequenceNumberRange'].nil?)
        data.parent_shard_id = map['ParentShardId']
        return data
      end
    end

    class SequenceNumberRange
      def self.parse(map)
        data = Types::SequenceNumberRange.new
        data.starting_sequence_number = map['StartingSequenceNumber']
        data.ending_sequence_number = map['EndingSequenceNumber']
        return data
      end
    end

    class KeySchema
      def self.parse(list)
        list.map do |value|
          Parsers::KeySchemaElement.parse(value) unless value.nil?
        end
      end
    end

    class KeySchemaElement
      def self.parse(map)
        data = Types::KeySchemaElement.new
        data.attribute_name = map['AttributeName']
        data.key_type = map['KeyType']
        return data
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp)
        data = Types::InternalServerError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetRecords
    class GetRecords
      def self.parse(http_resp)
        data = Types::GetRecordsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.records = (Parsers::RecordList.parse(map['Records']) unless map['Records'].nil?)
        data.next_shard_iterator = map['NextShardIterator']
        data
      end
    end

    class RecordList
      def self.parse(list)
        list.map do |value|
          Parsers::Record.parse(value) unless value.nil?
        end
      end
    end

    class Record
      def self.parse(map)
        data = Types::Record.new
        data.event_id = map['eventID']
        data.event_name = map['eventName']
        data.event_version = map['eventVersion']
        data.event_source = map['eventSource']
        data.aws_region = map['awsRegion']
        data.dynamodb = (Parsers::StreamRecord.parse(map['dynamodb']) unless map['dynamodb'].nil?)
        data.user_identity = (Parsers::Identity.parse(map['userIdentity']) unless map['userIdentity'].nil?)
        return data
      end
    end

    class Identity
      def self.parse(map)
        data = Types::Identity.new
        data.principal_id = map['PrincipalId']
        data.type = map['Type']
        return data
      end
    end

    class StreamRecord
      def self.parse(map)
        data = Types::StreamRecord.new
        data.approximate_creation_date_time = Time.at(map['ApproximateCreationDateTime'].to_i) if map['ApproximateCreationDateTime']
        data.keys = (Parsers::AttributeMap.parse(map['Keys']) unless map['Keys'].nil?)
        data.new_image = (Parsers::AttributeMap.parse(map['NewImage']) unless map['NewImage'].nil?)
        data.old_image = (Parsers::AttributeMap.parse(map['OldImage']) unless map['OldImage'].nil?)
        data.sequence_number = map['SequenceNumber']
        data.size_bytes = map['SizeBytes']
        data.stream_view_type = map['StreamViewType']
        return data
      end
    end

    class AttributeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::AttributeValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class AttributeValue
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'S'
          value = value
          Types::AttributeValue::S.new(value) if value
        when 'N'
          value = value
          Types::AttributeValue::N.new(value) if value
        when 'B'
          value = Base64::decode64(value) unless value.nil?
          Types::AttributeValue::B.new(value) if value
        when 'SS'
          value = (Parsers::StringSetAttributeValue.parse(value) unless value.nil?)
          Types::AttributeValue::Ss.new(value) if value
        when 'NS'
          value = (Parsers::NumberSetAttributeValue.parse(value) unless value.nil?)
          Types::AttributeValue::Ns.new(value) if value
        when 'BS'
          value = (Parsers::BinarySetAttributeValue.parse(value) unless value.nil?)
          Types::AttributeValue::Bs.new(value) if value
        when 'M'
          value = (Parsers::MapAttributeValue.parse(value) unless value.nil?)
          Types::AttributeValue::M.new(value) if value
        when 'L'
          value = (Parsers::ListAttributeValue.parse(value) unless value.nil?)
          Types::AttributeValue::L.new(value) if value
        when 'NULL'
          value = value
          Types::AttributeValue::Null.new(value) if value
        when 'BOOL'
          value = value
          Types::AttributeValue::Bool.new(value) if value
        else
          Types::AttributeValue::Unknown.new({name: key, value: value})
        end
      end
    end

    class ListAttributeValue
      def self.parse(list)
        list.map do |value|
          Parsers::AttributeValue.parse(value) unless value.nil?
        end
      end
    end

    class MapAttributeValue
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::AttributeValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class BinarySetAttributeValue
      def self.parse(list)
        list.map do |value|
          Base64::decode64(value) unless value.nil?
        end
      end
    end

    class NumberSetAttributeValue
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class StringSetAttributeValue
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for ExpiredIteratorException
    class ExpiredIteratorException
      def self.parse(http_resp)
        data = Types::ExpiredIteratorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TrimmedDataAccessException
    class TrimmedDataAccessException
      def self.parse(http_resp)
        data = Types::TrimmedDataAccessException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetShardIterator
    class GetShardIterator
      def self.parse(http_resp)
        data = Types::GetShardIteratorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.shard_iterator = map['ShardIterator']
        data
      end
    end

    # Operation Parser for ListStreams
    class ListStreams
      def self.parse(http_resp)
        data = Types::ListStreamsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.streams = (Parsers::StreamList.parse(map['Streams']) unless map['Streams'].nil?)
        data.last_evaluated_stream_arn = map['LastEvaluatedStreamArn']
        data
      end
    end

    class StreamList
      def self.parse(list)
        list.map do |value|
          Parsers::Stream.parse(value) unless value.nil?
        end
      end
    end

    class Stream
      def self.parse(map)
        data = Types::Stream.new
        data.stream_arn = map['StreamArn']
        data.table_name = map['TableName']
        data.stream_label = map['StreamLabel']
        return data
      end
    end
  end
end
