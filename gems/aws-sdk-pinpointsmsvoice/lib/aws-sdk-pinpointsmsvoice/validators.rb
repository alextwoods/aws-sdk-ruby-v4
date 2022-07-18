# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PinpointSMSVoice
  module Validators

    class AlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CallInstructionsMessageType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CallInstructionsMessageType, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
      end
    end

    class CloudWatchLogsDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLogsDestination, context: context)
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:log_group_arn], ::String, context: "#{context}[:log_group_arn]")
      end
    end

    class ConfigurationSets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateConfigurationSetEventDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetEventDestinationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        EventDestinationDefinition.validate!(input[:event_destination], context: "#{context}[:event_destination]") unless input[:event_destination].nil?
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
      end
    end

    class CreateConfigurationSetEventDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetEventDestinationOutput, context: context)
      end
    end

    class CreateConfigurationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class CreateConfigurationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetOutput, context: context)
      end
    end

    class DeleteConfigurationSetEventDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationSetEventDestinationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
      end
    end

    class DeleteConfigurationSetEventDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationSetEventDestinationOutput, context: context)
      end
    end

    class DeleteConfigurationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationSetInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class DeleteConfigurationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationSetOutput, context: context)
      end
    end

    class EventDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDestination, context: context)
        CloudWatchLogsDestination.validate!(input[:cloud_watch_logs_destination], context: "#{context}[:cloud_watch_logs_destination]") unless input[:cloud_watch_logs_destination].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        KinesisFirehoseDestination.validate!(input[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless input[:kinesis_firehose_destination].nil?
        EventTypes.validate!(input[:matching_event_types], context: "#{context}[:matching_event_types]") unless input[:matching_event_types].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SnsDestination.validate!(input[:sns_destination], context: "#{context}[:sns_destination]") unless input[:sns_destination].nil?
      end
    end

    class EventDestinationDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDestinationDefinition, context: context)
        CloudWatchLogsDestination.validate!(input[:cloud_watch_logs_destination], context: "#{context}[:cloud_watch_logs_destination]") unless input[:cloud_watch_logs_destination].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        KinesisFirehoseDestination.validate!(input[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless input[:kinesis_firehose_destination].nil?
        EventTypes.validate!(input[:matching_event_types], context: "#{context}[:matching_event_types]") unless input[:matching_event_types].nil?
        SnsDestination.validate!(input[:sns_destination], context: "#{context}[:sns_destination]") unless input[:sns_destination].nil?
      end
    end

    class EventDestinations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetConfigurationSetEventDestinationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigurationSetEventDestinationsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class GetConfigurationSetEventDestinationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigurationSetEventDestinationsOutput, context: context)
        EventDestinations.validate!(input[:event_destinations], context: "#{context}[:event_destinations]") unless input[:event_destinations].nil?
      end
    end

    class InternalServiceErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KinesisFirehoseDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisFirehoseDestination, context: context)
        Hearth::Validator.validate!(input[:delivery_stream_arn], ::String, context: "#{context}[:delivery_stream_arn]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListConfigurationSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationSetsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::String, context: "#{context}[:page_size]")
      end
    end

    class ListConfigurationSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationSetsOutput, context: context)
        ConfigurationSets.validate!(input[:configuration_sets], context: "#{context}[:configuration_sets]") unless input[:configuration_sets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PlainTextMessageType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlainTextMessageType, context: context)
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:voice_id], ::String, context: "#{context}[:voice_id]")
      end
    end

    class SSMLMessageType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SSMLMessageType, context: context)
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:voice_id], ::String, context: "#{context}[:voice_id]")
      end
    end

    class SendVoiceMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendVoiceMessageInput, context: context)
        Hearth::Validator.validate!(input[:caller_id], ::String, context: "#{context}[:caller_id]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        VoiceMessageContent.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Hearth::Validator.validate!(input[:destination_phone_number], ::String, context: "#{context}[:destination_phone_number]")
        Hearth::Validator.validate!(input[:origination_phone_number], ::String, context: "#{context}[:origination_phone_number]")
      end
    end

    class SendVoiceMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendVoiceMessageOutput, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class SnsDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnsDestination, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateConfigurationSetEventDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationSetEventDestinationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        EventDestinationDefinition.validate!(input[:event_destination], context: "#{context}[:event_destination]") unless input[:event_destination].nil?
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
      end
    end

    class UpdateConfigurationSetEventDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConfigurationSetEventDestinationOutput, context: context)
      end
    end

    class VoiceMessageContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VoiceMessageContent, context: context)
        CallInstructionsMessageType.validate!(input[:call_instructions_message], context: "#{context}[:call_instructions_message]") unless input[:call_instructions_message].nil?
        PlainTextMessageType.validate!(input[:plain_text_message], context: "#{context}[:plain_text_message]") unless input[:plain_text_message].nil?
        SSMLMessageType.validate!(input[:ssml_message], context: "#{context}[:ssml_message]") unless input[:ssml_message].nil?
      end
    end

  end
end
