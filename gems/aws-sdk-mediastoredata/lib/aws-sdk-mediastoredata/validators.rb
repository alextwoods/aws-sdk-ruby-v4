# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaStoreData
  module Validators

    class ContainerNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteObjectInput, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
      end
    end

    class DeleteObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteObjectOutput, context: context)
      end
    end

    class DescribeObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeObjectInput, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
      end
    end

    class DescribeObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeObjectOutput, context: context)
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:content_length], ::Integer, context: "#{context}[:content_length]")
        Hearth::Validator.validate!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
      end
    end

    class GetObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectInput, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:range], ::String, context: "#{context}[:range]")
      end
    end

    class GetObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetObjectOutput, context: context)
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
        Hearth::Validator.validate!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate!(input[:content_range], ::String, context: "#{context}[:content_range]")
        Hearth::Validator.validate!(input[:content_length], ::Integer, context: "#{context}[:content_length]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
      end
    end

    class InternalServerError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Item
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Item, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:content_length], ::Integer, context: "#{context}[:content_length]")
      end
    end

    class ItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Item.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListItemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListItemsInput, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListItemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListItemsOutput, context: context)
        Validators::ItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ObjectNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PutObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutObjectInput, context: context)
        unless input[:body].respond_to?(:read) || input[:body].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:body].class}"
        end
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:cache_control], ::String, context: "#{context}[:cache_control]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
        Hearth::Validator.validate!(input[:upload_availability], ::String, context: "#{context}[:upload_availability]")
      end
    end

    class PutObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutObjectOutput, context: context)
        Hearth::Validator.validate!(input[:content_sha256], ::String, context: "#{context}[:content_sha256]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:storage_class], ::String, context: "#{context}[:storage_class]")
      end
    end

    class RequestedRangeNotSatisfiableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestedRangeNotSatisfiableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
