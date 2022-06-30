# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisVideoMedia
  module Validators

    class ClientLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConnectionLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetMediaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMediaInput, context: context)
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Validators::StartSelector.validate!(input[:start_selector], context: "#{context}[:start_selector]") unless input[:start_selector].nil?
      end
    end

    class GetMediaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMediaOutput, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        unless input[:payload].respond_to?(:read) || input[:payload].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:payload].class}"
        end
      end
    end

    class InvalidArgumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArgumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEndpointException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEndpointException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotAuthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotAuthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSelector, context: context)
        Hearth::Validator.validate!(input[:start_selector_type], ::String, context: "#{context}[:start_selector_type]")
        Hearth::Validator.validate!(input[:after_fragment_number], ::String, context: "#{context}[:after_fragment_number]")
        Hearth::Validator.validate!(input[:start_timestamp], ::Time, context: "#{context}[:start_timestamp]")
        Hearth::Validator.validate!(input[:continuation_token], ::String, context: "#{context}[:continuation_token]")
      end
    end

  end
end
