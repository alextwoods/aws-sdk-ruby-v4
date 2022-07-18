# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DynamoDBStreams
  module Builders

    # Operation Builder for DescribeStream
    class DescribeStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDBStreams_20120810.DescribeStream'
        data = {}
        data['StreamArn'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['ExclusiveStartShardId'] = input[:exclusive_start_shard_id] unless input[:exclusive_start_shard_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRecords
    class GetRecords
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDBStreams_20120810.GetRecords'
        data = {}
        data['ShardIterator'] = input[:shard_iterator] unless input[:shard_iterator].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetShardIterator
    class GetShardIterator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDBStreams_20120810.GetShardIterator'
        data = {}
        data['StreamArn'] = input[:stream_arn] unless input[:stream_arn].nil?
        data['ShardId'] = input[:shard_id] unless input[:shard_id].nil?
        data['ShardIteratorType'] = input[:shard_iterator_type] unless input[:shard_iterator_type].nil?
        data['SequenceNumber'] = input[:sequence_number] unless input[:sequence_number].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListStreams
    class ListStreams
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'DynamoDBStreams_20120810.ListStreams'
        data = {}
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['ExclusiveStartStreamArn'] = input[:exclusive_start_stream_arn] unless input[:exclusive_start_stream_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
