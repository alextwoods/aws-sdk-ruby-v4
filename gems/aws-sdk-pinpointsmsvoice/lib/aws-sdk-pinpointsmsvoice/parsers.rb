# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::PinpointSMSVoice
  module Parsers

    # Operation Parser for CreateConfigurationSet
    class CreateConfigurationSet
      def self.parse(http_resp)
        data = Types::CreateConfigurationSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for AlreadyExistsException
    class AlreadyExistsException
      def self.parse(http_resp)
        data = Types::AlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServiceErrorException
    class InternalServiceErrorException
      def self.parse(http_resp)
        data = Types::InternalServiceErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateConfigurationSetEventDestination
    class CreateConfigurationSetEventDestination
      def self.parse(http_resp)
        data = Types::CreateConfigurationSetEventDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteConfigurationSet
    class DeleteConfigurationSet
      def self.parse(http_resp)
        data = Types::DeleteConfigurationSetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteConfigurationSetEventDestination
    class DeleteConfigurationSetEventDestination
      def self.parse(http_resp)
        data = Types::DeleteConfigurationSetEventDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetConfigurationSetEventDestinations
    class GetConfigurationSetEventDestinations
      def self.parse(http_resp)
        data = Types::GetConfigurationSetEventDestinationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.event_destinations = (Parsers::EventDestinations.parse(map['EventDestinations']) unless map['EventDestinations'].nil?)
        data
      end
    end

    class EventDestinations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EventDestination.parse(value) unless value.nil?
        end
        data
      end
    end

    class EventDestination
      def self.parse(map)
        data = Types::EventDestination.new
        data.cloud_watch_logs_destination = (Parsers::CloudWatchLogsDestination.parse(map['CloudWatchLogsDestination']) unless map['CloudWatchLogsDestination'].nil?)
        data.enabled = map['Enabled']
        data.kinesis_firehose_destination = (Parsers::KinesisFirehoseDestination.parse(map['KinesisFirehoseDestination']) unless map['KinesisFirehoseDestination'].nil?)
        data.matching_event_types = (Parsers::EventTypes.parse(map['MatchingEventTypes']) unless map['MatchingEventTypes'].nil?)
        data.name = map['Name']
        data.sns_destination = (Parsers::SnsDestination.parse(map['SnsDestination']) unless map['SnsDestination'].nil?)
        return data
      end
    end

    class SnsDestination
      def self.parse(map)
        data = Types::SnsDestination.new
        data.topic_arn = map['TopicArn']
        return data
      end
    end

    class EventTypes
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class KinesisFirehoseDestination
      def self.parse(map)
        data = Types::KinesisFirehoseDestination.new
        data.delivery_stream_arn = map['DeliveryStreamArn']
        data.iam_role_arn = map['IamRoleArn']
        return data
      end
    end

    class CloudWatchLogsDestination
      def self.parse(map)
        data = Types::CloudWatchLogsDestination.new
        data.iam_role_arn = map['IamRoleArn']
        data.log_group_arn = map['LogGroupArn']
        return data
      end
    end

    # Operation Parser for ListConfigurationSets
    class ListConfigurationSets
      def self.parse(http_resp)
        data = Types::ListConfigurationSetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.configuration_sets = (Parsers::ConfigurationSets.parse(map['ConfigurationSets']) unless map['ConfigurationSets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConfigurationSets
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for SendVoiceMessage
    class SendVoiceMessage
      def self.parse(http_resp)
        data = Types::SendVoiceMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.message_id = map['MessageId']
        data
      end
    end

    # Operation Parser for UpdateConfigurationSetEventDestination
    class UpdateConfigurationSetEventDestination
      def self.parse(http_resp)
        data = Types::UpdateConfigurationSetEventDestinationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
