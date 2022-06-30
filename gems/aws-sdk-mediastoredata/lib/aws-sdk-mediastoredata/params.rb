# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::MediaStoreData
  module Params

    module ContainerNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerNotFoundException, context: context)
        type = Types::ContainerNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module DeleteObjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteObjectInput, context: context)
        type = Types::DeleteObjectInput.new
        type.path = params[:path]
        type
      end
    end

    module DeleteObjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteObjectOutput, context: context)
        type = Types::DeleteObjectOutput.new
        type
      end
    end

    module DescribeObjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeObjectInput, context: context)
        type = Types::DescribeObjectInput.new
        type.path = params[:path]
        type
      end
    end

    module DescribeObjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeObjectOutput, context: context)
        type = Types::DescribeObjectOutput.new
        type.e_tag = params[:e_tag]
        type.content_type = params[:content_type]
        type.content_length = params[:content_length]
        type.cache_control = params[:cache_control]
        type.last_modified = params[:last_modified]
        type
      end
    end

    module GetObjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetObjectInput, context: context)
        type = Types::GetObjectInput.new
        type.path = params[:path]
        type.range = params[:range]
        type
      end
    end

    module GetObjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetObjectOutput, context: context)
        type = Types::GetObjectOutput.new
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type.cache_control = params[:cache_control]
        type.content_range = params[:content_range]
        type.content_length = params[:content_length]
        type.content_type = params[:content_type]
        type.e_tag = params[:e_tag]
        type.last_modified = params[:last_modified]
        type.status_code = params[:status_code]
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

    module Item
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Item, context: context)
        type = Types::Item.new
        type.name = params[:name]
        type.type = params[:type]
        type.e_tag = params[:e_tag]
        type.last_modified = params[:last_modified]
        type.content_type = params[:content_type]
        type.content_length = params[:content_length]
        type
      end
    end

    module ItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Item.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListItemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListItemsInput, context: context)
        type = Types::ListItemsInput.new
        type.path = params[:path]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListItemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListItemsOutput, context: context)
        type = Types::ListItemsOutput.new
        type.items = ItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ObjectNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectNotFoundException, context: context)
        type = Types::ObjectNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PutObjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutObjectInput, context: context)
        type = Types::PutObjectInput.new
        io = params[:body] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.body = io
        type.path = params[:path]
        type.content_type = params[:content_type]
        type.cache_control = params[:cache_control]
        type.storage_class = params[:storage_class]
        type.upload_availability = params[:upload_availability]
        type
      end
    end

    module PutObjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutObjectOutput, context: context)
        type = Types::PutObjectOutput.new
        type.content_sha256 = params[:content_sha256]
        type.e_tag = params[:e_tag]
        type.storage_class = params[:storage_class]
        type
      end
    end

    module RequestedRangeNotSatisfiableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestedRangeNotSatisfiableException, context: context)
        type = Types::RequestedRangeNotSatisfiableException.new
        type.message = params[:message]
        type
      end
    end

  end
end
