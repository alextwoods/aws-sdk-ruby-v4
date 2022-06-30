# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::KinesisVideoMedia
  module Params

    module ClientLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientLimitExceededException, context: context)
        type = Types::ClientLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ConnectionLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionLimitExceededException, context: context)
        type = Types::ConnectionLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module GetMediaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMediaInput, context: context)
        type = Types::GetMediaInput.new
        type.stream_name = params[:stream_name]
        type.stream_arn = params[:stream_arn]
        type.start_selector = StartSelector.build(params[:start_selector], context: "#{context}[:start_selector]") unless params[:start_selector].nil?
        type
      end
    end

    module GetMediaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMediaOutput, context: context)
        type = Types::GetMediaOutput.new
        type.content_type = params[:content_type]
        io = params[:payload] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.payload = io
        type
      end
    end

    module InvalidArgumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArgumentException, context: context)
        type = Types::InvalidArgumentException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidEndpointException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEndpointException, context: context)
        type = Types::InvalidEndpointException.new
        type.message = params[:message]
        type
      end
    end

    module NotAuthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotAuthorizedException, context: context)
        type = Types::NotAuthorizedException.new
        type.message = params[:message]
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

    module StartSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSelector, context: context)
        type = Types::StartSelector.new
        type.start_selector_type = params[:start_selector_type]
        type.after_fragment_number = params[:after_fragment_number]
        type.start_timestamp = params[:start_timestamp]
        type.continuation_token = params[:continuation_token]
        type
      end
    end

  end
end
