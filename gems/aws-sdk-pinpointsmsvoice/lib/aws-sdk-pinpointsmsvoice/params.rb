# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::PinpointSMSVoice
  module Params

    module AlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlreadyExistsException, context: context)
        type = Types::AlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module CallInstructionsMessageType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CallInstructionsMessageType, context: context)
        type = Types::CallInstructionsMessageType.new
        type.text = params[:text]
        type
      end
    end

    module CloudWatchLogsDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLogsDestination, context: context)
        type = Types::CloudWatchLogsDestination.new
        type.iam_role_arn = params[:iam_role_arn]
        type.log_group_arn = params[:log_group_arn]
        type
      end
    end

    module ConfigurationSets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateConfigurationSetEventDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetEventDestinationInput, context: context)
        type = Types::CreateConfigurationSetEventDestinationInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination = EventDestinationDefinition.build(params[:event_destination], context: "#{context}[:event_destination]") unless params[:event_destination].nil?
        type.event_destination_name = params[:event_destination_name]
        type
      end
    end

    module CreateConfigurationSetEventDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetEventDestinationOutput, context: context)
        type = Types::CreateConfigurationSetEventDestinationOutput.new
        type
      end
    end

    module CreateConfigurationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetInput, context: context)
        type = Types::CreateConfigurationSetInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module CreateConfigurationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetOutput, context: context)
        type = Types::CreateConfigurationSetOutput.new
        type
      end
    end

    module DeleteConfigurationSetEventDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationSetEventDestinationInput, context: context)
        type = Types::DeleteConfigurationSetEventDestinationInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination_name = params[:event_destination_name]
        type
      end
    end

    module DeleteConfigurationSetEventDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationSetEventDestinationOutput, context: context)
        type = Types::DeleteConfigurationSetEventDestinationOutput.new
        type
      end
    end

    module DeleteConfigurationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationSetInput, context: context)
        type = Types::DeleteConfigurationSetInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module DeleteConfigurationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationSetOutput, context: context)
        type = Types::DeleteConfigurationSetOutput.new
        type
      end
    end

    module EventDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDestination, context: context)
        type = Types::EventDestination.new
        type.cloud_watch_logs_destination = CloudWatchLogsDestination.build(params[:cloud_watch_logs_destination], context: "#{context}[:cloud_watch_logs_destination]") unless params[:cloud_watch_logs_destination].nil?
        type.enabled = params[:enabled]
        type.kinesis_firehose_destination = KinesisFirehoseDestination.build(params[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless params[:kinesis_firehose_destination].nil?
        type.matching_event_types = EventTypes.build(params[:matching_event_types], context: "#{context}[:matching_event_types]") unless params[:matching_event_types].nil?
        type.name = params[:name]
        type.sns_destination = SnsDestination.build(params[:sns_destination], context: "#{context}[:sns_destination]") unless params[:sns_destination].nil?
        type
      end
    end

    module EventDestinationDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDestinationDefinition, context: context)
        type = Types::EventDestinationDefinition.new
        type.cloud_watch_logs_destination = CloudWatchLogsDestination.build(params[:cloud_watch_logs_destination], context: "#{context}[:cloud_watch_logs_destination]") unless params[:cloud_watch_logs_destination].nil?
        type.enabled = params[:enabled]
        type.kinesis_firehose_destination = KinesisFirehoseDestination.build(params[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless params[:kinesis_firehose_destination].nil?
        type.matching_event_types = EventTypes.build(params[:matching_event_types], context: "#{context}[:matching_event_types]") unless params[:matching_event_types].nil?
        type.sns_destination = SnsDestination.build(params[:sns_destination], context: "#{context}[:sns_destination]") unless params[:sns_destination].nil?
        type
      end
    end

    module EventDestinations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventDestination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetConfigurationSetEventDestinationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigurationSetEventDestinationsInput, context: context)
        type = Types::GetConfigurationSetEventDestinationsInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module GetConfigurationSetEventDestinationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigurationSetEventDestinationsOutput, context: context)
        type = Types::GetConfigurationSetEventDestinationsOutput.new
        type.event_destinations = EventDestinations.build(params[:event_destinations], context: "#{context}[:event_destinations]") unless params[:event_destinations].nil?
        type
      end
    end

    module InternalServiceErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceErrorException, context: context)
        type = Types::InternalServiceErrorException.new
        type.message = params[:message]
        type
      end
    end

    module KinesisFirehoseDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisFirehoseDestination, context: context)
        type = Types::KinesisFirehoseDestination.new
        type.delivery_stream_arn = params[:delivery_stream_arn]
        type.iam_role_arn = params[:iam_role_arn]
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

    module ListConfigurationSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationSetsInput, context: context)
        type = Types::ListConfigurationSetsInput.new
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListConfigurationSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationSetsOutput, context: context)
        type = Types::ListConfigurationSetsOutput.new
        type.configuration_sets = ConfigurationSets.build(params[:configuration_sets], context: "#{context}[:configuration_sets]") unless params[:configuration_sets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PlainTextMessageType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlainTextMessageType, context: context)
        type = Types::PlainTextMessageType.new
        type.language_code = params[:language_code]
        type.text = params[:text]
        type.voice_id = params[:voice_id]
        type
      end
    end

    module SSMLMessageType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SSMLMessageType, context: context)
        type = Types::SSMLMessageType.new
        type.language_code = params[:language_code]
        type.text = params[:text]
        type.voice_id = params[:voice_id]
        type
      end
    end

    module SendVoiceMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendVoiceMessageInput, context: context)
        type = Types::SendVoiceMessageInput.new
        type.caller_id = params[:caller_id]
        type.configuration_set_name = params[:configuration_set_name]
        type.content = VoiceMessageContent.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.destination_phone_number = params[:destination_phone_number]
        type.origination_phone_number = params[:origination_phone_number]
        type
      end
    end

    module SendVoiceMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendVoiceMessageOutput, context: context)
        type = Types::SendVoiceMessageOutput.new
        type.message_id = params[:message_id]
        type
      end
    end

    module SnsDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnsDestination, context: context)
        type = Types::SnsDestination.new
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module UpdateConfigurationSetEventDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationSetEventDestinationInput, context: context)
        type = Types::UpdateConfigurationSetEventDestinationInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination = EventDestinationDefinition.build(params[:event_destination], context: "#{context}[:event_destination]") unless params[:event_destination].nil?
        type.event_destination_name = params[:event_destination_name]
        type
      end
    end

    module UpdateConfigurationSetEventDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConfigurationSetEventDestinationOutput, context: context)
        type = Types::UpdateConfigurationSetEventDestinationOutput.new
        type
      end
    end

    module VoiceMessageContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VoiceMessageContent, context: context)
        type = Types::VoiceMessageContent.new
        type.call_instructions_message = CallInstructionsMessageType.build(params[:call_instructions_message], context: "#{context}[:call_instructions_message]") unless params[:call_instructions_message].nil?
        type.plain_text_message = PlainTextMessageType.build(params[:plain_text_message], context: "#{context}[:plain_text_message]") unless params[:plain_text_message].nil?
        type.ssml_message = SSMLMessageType.build(params[:ssml_message], context: "#{context}[:ssml_message]") unless params[:ssml_message].nil?
        type
      end
    end

  end
end
