# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTDataPlane
  module Validators

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteThingShadowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThingShadowInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:shadow_name], ::String, context: "#{context}[:shadow_name]")
      end
    end

    class DeleteThingShadowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThingShadowOutput, context: context)
        Hearth::Validator.validate!(input[:payload], ::String, context: "#{context}[:payload]")
      end
    end

    class GetRetainedMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRetainedMessageInput, context: context)
        Hearth::Validator.validate!(input[:topic], ::String, context: "#{context}[:topic]")
      end
    end

    class GetRetainedMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRetainedMessageOutput, context: context)
        Hearth::Validator.validate!(input[:topic], ::String, context: "#{context}[:topic]")
        Hearth::Validator.validate!(input[:payload], ::String, context: "#{context}[:payload]")
        Hearth::Validator.validate!(input[:qos], ::Integer, context: "#{context}[:qos]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
      end
    end

    class GetThingShadowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetThingShadowInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:shadow_name], ::String, context: "#{context}[:shadow_name]")
      end
    end

    class GetThingShadowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetThingShadowOutput, context: context)
        Hearth::Validator.validate!(input[:payload], ::String, context: "#{context}[:payload]")
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListNamedShadowsForThingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNamedShadowsForThingInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
      end
    end

    class ListNamedShadowsForThingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNamedShadowsForThingOutput, context: context)
        NamedShadowList.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:timestamp], ::Integer, context: "#{context}[:timestamp]")
      end
    end

    class ListRetainedMessagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRetainedMessagesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRetainedMessagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRetainedMessagesOutput, context: context)
        RetainedMessageList.validate!(input[:retained_topics], context: "#{context}[:retained_topics]") unless input[:retained_topics].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MethodNotAllowedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MethodNotAllowedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NamedShadowList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PublishInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishInput, context: context)
        Hearth::Validator.validate!(input[:topic], ::String, context: "#{context}[:topic]")
        Hearth::Validator.validate!(input[:qos], ::Integer, context: "#{context}[:qos]")
        Hearth::Validator.validate!(input[:retain], ::TrueClass, ::FalseClass, context: "#{context}[:retain]")
        Hearth::Validator.validate!(input[:payload], ::String, context: "#{context}[:payload]")
      end
    end

    class PublishOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishOutput, context: context)
      end
    end

    class RequestEntityTooLargeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestEntityTooLargeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RetainedMessageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RetainedMessageSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RetainedMessageSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetainedMessageSummary, context: context)
        Hearth::Validator.validate!(input[:topic], ::String, context: "#{context}[:topic]")
        Hearth::Validator.validate!(input[:payload_size], ::Integer, context: "#{context}[:payload_size]")
        Hearth::Validator.validate!(input[:qos], ::Integer, context: "#{context}[:qos]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedDocumentEncodingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedDocumentEncodingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateThingShadowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThingShadowInput, context: context)
        Hearth::Validator.validate!(input[:thing_name], ::String, context: "#{context}[:thing_name]")
        Hearth::Validator.validate!(input[:shadow_name], ::String, context: "#{context}[:shadow_name]")
        Hearth::Validator.validate!(input[:payload], ::String, context: "#{context}[:payload]")
      end
    end

    class UpdateThingShadowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThingShadowOutput, context: context)
        Hearth::Validator.validate!(input[:payload], ::String, context: "#{context}[:payload]")
      end
    end

  end
end
