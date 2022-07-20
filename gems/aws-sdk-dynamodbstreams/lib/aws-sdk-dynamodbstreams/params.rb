# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DynamoDBStreams
  module Params

    module AttributeMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module AttributeValue
      def self.build(params, context: '')
        return params if params.is_a?(Types::AttributeValue)
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeValue, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :s
          Types::AttributeValue::S.new(
            params[:s]
          )
        when :n
          Types::AttributeValue::N.new(
            params[:n]
          )
        when :b
          Types::AttributeValue::B.new(
            params[:b]
          )
        when :ss
          Types::AttributeValue::Ss.new(
            (StringSetAttributeValue.build(params[:ss], context: "#{context}[:ss]") unless params[:ss].nil?)
          )
        when :ns
          Types::AttributeValue::Ns.new(
            (NumberSetAttributeValue.build(params[:ns], context: "#{context}[:ns]") unless params[:ns].nil?)
          )
        when :bs
          Types::AttributeValue::Bs.new(
            (BinarySetAttributeValue.build(params[:bs], context: "#{context}[:bs]") unless params[:bs].nil?)
          )
        when :m
          Types::AttributeValue::M.new(
            (MapAttributeValue.build(params[:m], context: "#{context}[:m]") unless params[:m].nil?)
          )
        when :l
          Types::AttributeValue::L.new(
            (ListAttributeValue.build(params[:l], context: "#{context}[:l]") unless params[:l].nil?)
          )
        when :null
          Types::AttributeValue::Null.new(
            params[:null]
          )
        when :bool
          Types::AttributeValue::Bool.new(
            params[:bool]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :s, :n, :b, :ss, :ns, :bs, :m, :l, :null, :bool set"
        end
      end
    end

    module BinarySetAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DescribeStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStreamInput, context: context)
        type = Types::DescribeStreamInput.new
        type.stream_arn = params[:stream_arn]
        type.limit = params[:limit]
        type.exclusive_start_shard_id = params[:exclusive_start_shard_id]
        type
      end
    end

    module DescribeStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStreamOutput, context: context)
        type = Types::DescribeStreamOutput.new
        type.stream_description = StreamDescription.build(params[:stream_description], context: "#{context}[:stream_description]") unless params[:stream_description].nil?
        type
      end
    end

    module ExpiredIteratorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpiredIteratorException, context: context)
        type = Types::ExpiredIteratorException.new
        type.message = params[:message]
        type
      end
    end

    module GetRecordsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecordsInput, context: context)
        type = Types::GetRecordsInput.new
        type.shard_iterator = params[:shard_iterator]
        type.limit = params[:limit]
        type
      end
    end

    module GetRecordsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecordsOutput, context: context)
        type = Types::GetRecordsOutput.new
        type.records = RecordList.build(params[:records], context: "#{context}[:records]") unless params[:records].nil?
        type.next_shard_iterator = params[:next_shard_iterator]
        type
      end
    end

    module GetShardIteratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetShardIteratorInput, context: context)
        type = Types::GetShardIteratorInput.new
        type.stream_arn = params[:stream_arn]
        type.shard_id = params[:shard_id]
        type.shard_iterator_type = params[:shard_iterator_type]
        type.sequence_number = params[:sequence_number]
        type
      end
    end

    module GetShardIteratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetShardIteratorOutput, context: context)
        type = Types::GetShardIteratorOutput.new
        type.shard_iterator = params[:shard_iterator]
        type
      end
    end

    module Identity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Identity, context: context)
        type = Types::Identity.new
        type.principal_id = params[:principal_id]
        type.type = params[:type]
        type
      end
    end

    module InternalServerError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerError, context: context)
        type = Types::InternalServerError.new
        type.message = params[:message]
        type
      end
    end

    module KeySchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeySchemaElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KeySchemaElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeySchemaElement, context: context)
        type = Types::KeySchemaElement.new
        type.attribute_name = params[:attribute_name]
        type.key_type = params[:key_type]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListStreamsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamsInput, context: context)
        type = Types::ListStreamsInput.new
        type.table_name = params[:table_name]
        type.limit = params[:limit]
        type.exclusive_start_stream_arn = params[:exclusive_start_stream_arn]
        type
      end
    end

    module ListStreamsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStreamsOutput, context: context)
        type = Types::ListStreamsOutput.new
        type.streams = StreamList.build(params[:streams], context: "#{context}[:streams]") unless params[:streams].nil?
        type.last_evaluated_stream_arn = params[:last_evaluated_stream_arn]
        type
      end
    end

    module MapAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module NumberSetAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Record
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Record, context: context)
        type = Types::Record.new
        type.event_id = params[:event_id]
        type.event_name = params[:event_name]
        type.event_version = params[:event_version]
        type.event_source = params[:event_source]
        type.aws_region = params[:aws_region]
        type.dynamodb = StreamRecord.build(params[:dynamodb], context: "#{context}[:dynamodb]") unless params[:dynamodb].nil?
        type.user_identity = Identity.build(params[:user_identity], context: "#{context}[:user_identity]") unless params[:user_identity].nil?
        type
      end
    end

    module RecordList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Record.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module SequenceNumberRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SequenceNumberRange, context: context)
        type = Types::SequenceNumberRange.new
        type.starting_sequence_number = params[:starting_sequence_number]
        type.ending_sequence_number = params[:ending_sequence_number]
        type
      end
    end

    module Shard
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Shard, context: context)
        type = Types::Shard.new
        type.shard_id = params[:shard_id]
        type.sequence_number_range = SequenceNumberRange.build(params[:sequence_number_range], context: "#{context}[:sequence_number_range]") unless params[:sequence_number_range].nil?
        type.parent_shard_id = params[:parent_shard_id]
        type
      end
    end

    module ShardDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Shard.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Stream
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Stream, context: context)
        type = Types::Stream.new
        type.stream_arn = params[:stream_arn]
        type.table_name = params[:table_name]
        type.stream_label = params[:stream_label]
        type
      end
    end

    module StreamDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamDescription, context: context)
        type = Types::StreamDescription.new
        type.stream_arn = params[:stream_arn]
        type.stream_label = params[:stream_label]
        type.stream_status = params[:stream_status]
        type.stream_view_type = params[:stream_view_type]
        type.creation_request_date_time = params[:creation_request_date_time]
        type.table_name = params[:table_name]
        type.key_schema = KeySchema.build(params[:key_schema], context: "#{context}[:key_schema]") unless params[:key_schema].nil?
        type.shards = ShardDescriptionList.build(params[:shards], context: "#{context}[:shards]") unless params[:shards].nil?
        type.last_evaluated_shard_id = params[:last_evaluated_shard_id]
        type
      end
    end

    module StreamList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Stream.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StreamRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamRecord, context: context)
        type = Types::StreamRecord.new
        type.approximate_creation_date_time = params[:approximate_creation_date_time]
        type.keys = AttributeMap.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type.new_image = AttributeMap.build(params[:new_image], context: "#{context}[:new_image]") unless params[:new_image].nil?
        type.old_image = AttributeMap.build(params[:old_image], context: "#{context}[:old_image]") unless params[:old_image].nil?
        type.sequence_number = params[:sequence_number]
        type.size_bytes = params[:size_bytes]
        type.stream_view_type = params[:stream_view_type]
        type
      end
    end

    module StringSetAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TrimmedDataAccessException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrimmedDataAccessException, context: context)
        type = Types::TrimmedDataAccessException.new
        type.message = params[:message]
        type
      end
    end

  end
end
