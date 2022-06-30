# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::WorkMailMessageFlow
  module Params

    module GetRawMessageContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRawMessageContentInput, context: context)
        type = Types::GetRawMessageContentInput.new
        type.message_id = params[:message_id]
        type
      end
    end

    module GetRawMessageContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRawMessageContentOutput, context: context)
        type = Types::GetRawMessageContentOutput.new
        io = params[:message_content] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.message_content = io
        type
      end
    end

    module InvalidContentLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidContentLocation, context: context)
        type = Types::InvalidContentLocation.new
        type.message = params[:message]
        type
      end
    end

    module MessageFrozen
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageFrozen, context: context)
        type = Types::MessageFrozen.new
        type.message = params[:message]
        type
      end
    end

    module MessageRejected
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageRejected, context: context)
        type = Types::MessageRejected.new
        type.message = params[:message]
        type
      end
    end

    module PutRawMessageContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRawMessageContentInput, context: context)
        type = Types::PutRawMessageContentInput.new
        type.message_id = params[:message_id]
        type.content = RawMessageContent.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type
      end
    end

    module PutRawMessageContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRawMessageContentOutput, context: context)
        type = Types::PutRawMessageContentOutput.new
        type
      end
    end

    module RawMessageContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RawMessageContent, context: context)
        type = Types::RawMessageContent.new
        type.s3_reference = S3Reference.build(params[:s3_reference], context: "#{context}[:s3_reference]") unless params[:s3_reference].nil?
        type
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

    module S3Reference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Reference, context: context)
        type = Types::S3Reference.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.object_version = params[:object_version]
        type
      end
    end

  end
end
