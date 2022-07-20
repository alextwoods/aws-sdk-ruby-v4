# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::DynamoDBStreams
  module Validators

    class AttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          AttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class AttributeValue
      def self.validate!(input, context:)
        case input
        when Types::AttributeValue::S
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::AttributeValue::N
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::AttributeValue::B
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::AttributeValue::Ss
          StringSetAttributeValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValue::Ns
          NumberSetAttributeValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValue::Bs
          BinarySetAttributeValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValue::M
          MapAttributeValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValue::L
          ListAttributeValue.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::AttributeValue::Null
          Hearth::Validator.validate!(input.__getobj__, ::TrueClass, ::FalseClass, context: context)
        when Types::AttributeValue::Bool
          Hearth::Validator.validate!(input.__getobj__, ::TrueClass, ::FalseClass, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::AttributeValue, got #{input.class}."
        end
      end

      class S
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class N
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class B
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Ss
        def self.validate!(input, context:)
          Validators::StringSetAttributeValue.validate!(input, context: context) unless input.nil?
        end
      end

      class Ns
        def self.validate!(input, context:)
          Validators::NumberSetAttributeValue.validate!(input, context: context) unless input.nil?
        end
      end

      class Bs
        def self.validate!(input, context:)
          Validators::BinarySetAttributeValue.validate!(input, context: context) unless input.nil?
        end
      end

      class M
        def self.validate!(input, context:)
          Validators::MapAttributeValue.validate!(input, context: context) unless input.nil?
        end
      end

      class L
        def self.validate!(input, context:)
          Validators::ListAttributeValue.validate!(input, context: context) unless input.nil?
        end
      end

      class Null
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::TrueClass, ::FalseClass, context: context)
        end
      end

      class Bool
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::TrueClass, ::FalseClass, context: context)
        end
      end
    end

    class BinarySetAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DescribeStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStreamInput, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:exclusive_start_shard_id], ::String, context: "#{context}[:exclusive_start_shard_id]")
      end
    end

    class DescribeStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStreamOutput, context: context)
        StreamDescription.validate!(input[:stream_description], context: "#{context}[:stream_description]") unless input[:stream_description].nil?
      end
    end

    class ExpiredIteratorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpiredIteratorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetRecordsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecordsInput, context: context)
        Hearth::Validator.validate!(input[:shard_iterator], ::String, context: "#{context}[:shard_iterator]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetRecordsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecordsOutput, context: context)
        RecordList.validate!(input[:records], context: "#{context}[:records]") unless input[:records].nil?
        Hearth::Validator.validate!(input[:next_shard_iterator], ::String, context: "#{context}[:next_shard_iterator]")
      end
    end

    class GetShardIteratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetShardIteratorInput, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:shard_id], ::String, context: "#{context}[:shard_id]")
        Hearth::Validator.validate!(input[:shard_iterator_type], ::String, context: "#{context}[:shard_iterator_type]")
        Hearth::Validator.validate!(input[:sequence_number], ::String, context: "#{context}[:sequence_number]")
      end
    end

    class GetShardIteratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetShardIteratorOutput, context: context)
        Hearth::Validator.validate!(input[:shard_iterator], ::String, context: "#{context}[:shard_iterator]")
      end
    end

    class Identity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Identity, context: context)
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class InternalServerError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeySchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeySchemaElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KeySchemaElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeySchemaElement, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:key_type], ::String, context: "#{context}[:key_type]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttributeValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamsInput, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:exclusive_start_stream_arn], ::String, context: "#{context}[:exclusive_start_stream_arn]")
      end
    end

    class ListStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStreamsOutput, context: context)
        StreamList.validate!(input[:streams], context: "#{context}[:streams]") unless input[:streams].nil?
        Hearth::Validator.validate!(input[:last_evaluated_stream_arn], ::String, context: "#{context}[:last_evaluated_stream_arn]")
      end
    end

    class MapAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          AttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class NumberSetAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Record
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Record, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_name], ::String, context: "#{context}[:event_name]")
        Hearth::Validator.validate!(input[:event_version], ::String, context: "#{context}[:event_version]")
        Hearth::Validator.validate!(input[:event_source], ::String, context: "#{context}[:event_source]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        StreamRecord.validate!(input[:dynamodb], context: "#{context}[:dynamodb]") unless input[:dynamodb].nil?
        Identity.validate!(input[:user_identity], context: "#{context}[:user_identity]") unless input[:user_identity].nil?
      end
    end

    class RecordList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Record.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SequenceNumberRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SequenceNumberRange, context: context)
        Hearth::Validator.validate!(input[:starting_sequence_number], ::String, context: "#{context}[:starting_sequence_number]")
        Hearth::Validator.validate!(input[:ending_sequence_number], ::String, context: "#{context}[:ending_sequence_number]")
      end
    end

    class Shard
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Shard, context: context)
        Hearth::Validator.validate!(input[:shard_id], ::String, context: "#{context}[:shard_id]")
        SequenceNumberRange.validate!(input[:sequence_number_range], context: "#{context}[:sequence_number_range]") unless input[:sequence_number_range].nil?
        Hearth::Validator.validate!(input[:parent_shard_id], ::String, context: "#{context}[:parent_shard_id]")
      end
    end

    class ShardDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Shard.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Stream
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Stream, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:stream_label], ::String, context: "#{context}[:stream_label]")
      end
    end

    class StreamDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamDescription, context: context)
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:stream_label], ::String, context: "#{context}[:stream_label]")
        Hearth::Validator.validate!(input[:stream_status], ::String, context: "#{context}[:stream_status]")
        Hearth::Validator.validate!(input[:stream_view_type], ::String, context: "#{context}[:stream_view_type]")
        Hearth::Validator.validate!(input[:creation_request_date_time], ::Time, context: "#{context}[:creation_request_date_time]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        KeySchema.validate!(input[:key_schema], context: "#{context}[:key_schema]") unless input[:key_schema].nil?
        ShardDescriptionList.validate!(input[:shards], context: "#{context}[:shards]") unless input[:shards].nil?
        Hearth::Validator.validate!(input[:last_evaluated_shard_id], ::String, context: "#{context}[:last_evaluated_shard_id]")
      end
    end

    class StreamList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Stream.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StreamRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamRecord, context: context)
        Hearth::Validator.validate!(input[:approximate_creation_date_time], ::Time, context: "#{context}[:approximate_creation_date_time]")
        AttributeMap.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
        AttributeMap.validate!(input[:new_image], context: "#{context}[:new_image]") unless input[:new_image].nil?
        AttributeMap.validate!(input[:old_image], context: "#{context}[:old_image]") unless input[:old_image].nil?
        Hearth::Validator.validate!(input[:sequence_number], ::String, context: "#{context}[:sequence_number]")
        Hearth::Validator.validate!(input[:size_bytes], ::Integer, context: "#{context}[:size_bytes]")
        Hearth::Validator.validate!(input[:stream_view_type], ::String, context: "#{context}[:stream_view_type]")
      end
    end

    class StringSetAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TrimmedDataAccessException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrimmedDataAccessException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
