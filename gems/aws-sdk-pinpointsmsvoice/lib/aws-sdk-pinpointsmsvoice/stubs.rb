# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PinpointSMSVoice
  module Stubs

    # Operation Stubber for CreateConfigurationSet
    class CreateConfigurationSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateConfigurationSetEventDestination
    class CreateConfigurationSetEventDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConfigurationSet
    class DeleteConfigurationSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConfigurationSetEventDestination
    class DeleteConfigurationSetEventDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetConfigurationSetEventDestinations
    class GetConfigurationSetEventDestinations
      def self.default(visited=[])
        {
          event_destinations: EventDestinations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EventDestinations'] = Stubs::EventDestinations.stub(stub[:event_destinations]) unless stub[:event_destinations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EventDestinations
    class EventDestinations
      def self.default(visited=[])
        return nil if visited.include?('EventDestinations')
        visited = visited + ['EventDestinations']
        [
          EventDestination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EventDestination.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventDestination
    class EventDestination
      def self.default(visited=[])
        return nil if visited.include?('EventDestination')
        visited = visited + ['EventDestination']
        {
          cloud_watch_logs_destination: CloudWatchLogsDestination.default(visited),
          enabled: false,
          kinesis_firehose_destination: KinesisFirehoseDestination.default(visited),
          matching_event_types: EventTypes.default(visited),
          name: 'name',
          sns_destination: SnsDestination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventDestination.new
        data = {}
        data['CloudWatchLogsDestination'] = Stubs::CloudWatchLogsDestination.stub(stub[:cloud_watch_logs_destination]) unless stub[:cloud_watch_logs_destination].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['KinesisFirehoseDestination'] = Stubs::KinesisFirehoseDestination.stub(stub[:kinesis_firehose_destination]) unless stub[:kinesis_firehose_destination].nil?
        data['MatchingEventTypes'] = Stubs::EventTypes.stub(stub[:matching_event_types]) unless stub[:matching_event_types].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SnsDestination'] = Stubs::SnsDestination.stub(stub[:sns_destination]) unless stub[:sns_destination].nil?
        data
      end
    end

    # Structure Stubber for SnsDestination
    class SnsDestination
      def self.default(visited=[])
        return nil if visited.include?('SnsDestination')
        visited = visited + ['SnsDestination']
        {
          topic_arn: 'topic_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SnsDestination.new
        data = {}
        data['TopicArn'] = stub[:topic_arn] unless stub[:topic_arn].nil?
        data
      end
    end

    # List Stubber for EventTypes
    class EventTypes
      def self.default(visited=[])
        return nil if visited.include?('EventTypes')
        visited = visited + ['EventTypes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KinesisFirehoseDestination
    class KinesisFirehoseDestination
      def self.default(visited=[])
        return nil if visited.include?('KinesisFirehoseDestination')
        visited = visited + ['KinesisFirehoseDestination']
        {
          delivery_stream_arn: 'delivery_stream_arn',
          iam_role_arn: 'iam_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisFirehoseDestination.new
        data = {}
        data['DeliveryStreamArn'] = stub[:delivery_stream_arn] unless stub[:delivery_stream_arn].nil?
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data
      end
    end

    # Structure Stubber for CloudWatchLogsDestination
    class CloudWatchLogsDestination
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchLogsDestination')
        visited = visited + ['CloudWatchLogsDestination']
        {
          iam_role_arn: 'iam_role_arn',
          log_group_arn: 'log_group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchLogsDestination.new
        data = {}
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['LogGroupArn'] = stub[:log_group_arn] unless stub[:log_group_arn].nil?
        data
      end
    end

    # Operation Stubber for ListConfigurationSets
    class ListConfigurationSets
      def self.default(visited=[])
        {
          configuration_sets: ConfigurationSets.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ConfigurationSets'] = Stubs::ConfigurationSets.stub(stub[:configuration_sets]) unless stub[:configuration_sets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ConfigurationSets
    class ConfigurationSets
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationSets')
        visited = visited + ['ConfigurationSets']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for SendVoiceMessage
    class SendVoiceMessage
      def self.default(visited=[])
        {
          message_id: 'message_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateConfigurationSetEventDestination
    class UpdateConfigurationSetEventDestination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
