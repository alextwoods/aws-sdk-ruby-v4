# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkMailMessageFlow
  module Validators

    class GetRawMessageContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRawMessageContentInput, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class GetRawMessageContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRawMessageContentOutput, context: context)
        unless input[:message_content].respond_to?(:read) || input[:message_content].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:message_content].class}"
        end
      end
    end

    class InvalidContentLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidContentLocation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MessageFrozen
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageFrozen, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MessageRejected
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageRejected, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PutRawMessageContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRawMessageContentInput, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Validators::RawMessageContent.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
      end
    end

    class PutRawMessageContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRawMessageContentOutput, context: context)
      end
    end

    class RawMessageContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RawMessageContent, context: context)
        Validators::S3Reference.validate!(input[:s3_reference], context: "#{context}[:s3_reference]") unless input[:s3_reference].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3Reference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Reference, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:object_version], ::String, context: "#{context}[:object_version]")
      end
    end

  end
end
