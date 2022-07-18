# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PinpointSMSVoice
  module Builders

    # Operation Builder for CreateConfigurationSet
    class CreateConfigurationSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/sms-voice/configuration-sets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ConfigurationSetName'] = input[:configuration_set_name] unless input[:configuration_set_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateConfigurationSetEventDestination
    class CreateConfigurationSetEventDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:configuration_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_set_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/sms-voice/configuration-sets/%<ConfigurationSetName>s/event-destinations',
            ConfigurationSetName: Hearth::HTTP.uri_escape(input[:configuration_set_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['EventDestination'] = Builders::EventDestinationDefinition.build(input[:event_destination]) unless input[:event_destination].nil?
        data['EventDestinationName'] = input[:event_destination_name] unless input[:event_destination_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EventDestinationDefinition
    class EventDestinationDefinition
      def self.build(input)
        data = {}
        data['CloudWatchLogsDestination'] = Builders::CloudWatchLogsDestination.build(input[:cloud_watch_logs_destination]) unless input[:cloud_watch_logs_destination].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['KinesisFirehoseDestination'] = Builders::KinesisFirehoseDestination.build(input[:kinesis_firehose_destination]) unless input[:kinesis_firehose_destination].nil?
        data['MatchingEventTypes'] = Builders::EventTypes.build(input[:matching_event_types]) unless input[:matching_event_types].nil?
        data['SnsDestination'] = Builders::SnsDestination.build(input[:sns_destination]) unless input[:sns_destination].nil?
        data
      end
    end

    # Structure Builder for SnsDestination
    class SnsDestination
      def self.build(input)
        data = {}
        data['TopicArn'] = input[:topic_arn] unless input[:topic_arn].nil?
        data
      end
    end

    # List Builder for EventTypes
    class EventTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for KinesisFirehoseDestination
    class KinesisFirehoseDestination
      def self.build(input)
        data = {}
        data['DeliveryStreamArn'] = input[:delivery_stream_arn] unless input[:delivery_stream_arn].nil?
        data['IamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data
      end
    end

    # Structure Builder for CloudWatchLogsDestination
    class CloudWatchLogsDestination
      def self.build(input)
        data = {}
        data['IamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['LogGroupArn'] = input[:log_group_arn] unless input[:log_group_arn].nil?
        data
      end
    end

    # Operation Builder for DeleteConfigurationSet
    class DeleteConfigurationSet
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:configuration_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_set_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/sms-voice/configuration-sets/%<ConfigurationSetName>s',
            ConfigurationSetName: Hearth::HTTP.uri_escape(input[:configuration_set_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteConfigurationSetEventDestination
    class DeleteConfigurationSetEventDestination
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:configuration_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_set_name cannot be nil or empty."
        end
        if input[:event_destination_name].to_s.empty?
          raise ArgumentError, "HTTP label :event_destination_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/sms-voice/configuration-sets/%<ConfigurationSetName>s/event-destinations/%<EventDestinationName>s',
            ConfigurationSetName: Hearth::HTTP.uri_escape(input[:configuration_set_name].to_s),
            EventDestinationName: Hearth::HTTP.uri_escape(input[:event_destination_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetConfigurationSetEventDestinations
    class GetConfigurationSetEventDestinations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:configuration_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_set_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/sms-voice/configuration-sets/%<ConfigurationSetName>s/event-destinations',
            ConfigurationSetName: Hearth::HTTP.uri_escape(input[:configuration_set_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListConfigurationSets
    class ListConfigurationSets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/sms-voice/configuration-sets')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['PageSize'] = input[:page_size].to_s unless input[:page_size].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for SendVoiceMessage
    class SendVoiceMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/sms-voice/voice/message')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CallerId'] = input[:caller_id] unless input[:caller_id].nil?
        data['ConfigurationSetName'] = input[:configuration_set_name] unless input[:configuration_set_name].nil?
        data['Content'] = Builders::VoiceMessageContent.build(input[:content]) unless input[:content].nil?
        data['DestinationPhoneNumber'] = input[:destination_phone_number] unless input[:destination_phone_number].nil?
        data['OriginationPhoneNumber'] = input[:origination_phone_number] unless input[:origination_phone_number].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VoiceMessageContent
    class VoiceMessageContent
      def self.build(input)
        data = {}
        data['CallInstructionsMessage'] = Builders::CallInstructionsMessageType.build(input[:call_instructions_message]) unless input[:call_instructions_message].nil?
        data['PlainTextMessage'] = Builders::PlainTextMessageType.build(input[:plain_text_message]) unless input[:plain_text_message].nil?
        data['SSMLMessage'] = Builders::SSMLMessageType.build(input[:ssml_message]) unless input[:ssml_message].nil?
        data
      end
    end

    # Structure Builder for SSMLMessageType
    class SSMLMessageType
      def self.build(input)
        data = {}
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['Text'] = input[:text] unless input[:text].nil?
        data['VoiceId'] = input[:voice_id] unless input[:voice_id].nil?
        data
      end
    end

    # Structure Builder for PlainTextMessageType
    class PlainTextMessageType
      def self.build(input)
        data = {}
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['Text'] = input[:text] unless input[:text].nil?
        data['VoiceId'] = input[:voice_id] unless input[:voice_id].nil?
        data
      end
    end

    # Structure Builder for CallInstructionsMessageType
    class CallInstructionsMessageType
      def self.build(input)
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data
      end
    end

    # Operation Builder for UpdateConfigurationSetEventDestination
    class UpdateConfigurationSetEventDestination
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:configuration_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :configuration_set_name cannot be nil or empty."
        end
        if input[:event_destination_name].to_s.empty?
          raise ArgumentError, "HTTP label :event_destination_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/sms-voice/configuration-sets/%<ConfigurationSetName>s/event-destinations/%<EventDestinationName>s',
            ConfigurationSetName: Hearth::HTTP.uri_escape(input[:configuration_set_name].to_s),
            EventDestinationName: Hearth::HTTP.uri_escape(input[:event_destination_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['EventDestination'] = Builders::EventDestinationDefinition.build(input[:event_destination]) unless input[:event_destination].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
