# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PinpointSMSVoiceV2
  module Stubs

    # Operation Stubber for AssociateOriginationIdentity
    class AssociateOriginationIdentity
      def self.default(visited=[])
        {
          pool_arn: 'pool_arn',
          pool_id: 'pool_id',
          origination_identity_arn: 'origination_identity_arn',
          origination_identity: 'origination_identity',
          iso_country_code: 'iso_country_code',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PoolArn'] = stub[:pool_arn] unless stub[:pool_arn].nil?
        data['PoolId'] = stub[:pool_id] unless stub[:pool_id].nil?
        data['OriginationIdentityArn'] = stub[:origination_identity_arn] unless stub[:origination_identity_arn].nil?
        data['OriginationIdentity'] = stub[:origination_identity] unless stub[:origination_identity].nil?
        data['IsoCountryCode'] = stub[:iso_country_code] unless stub[:iso_country_code].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateConfigurationSet
    class CreateConfigurationSet
      def self.default(visited=[])
        {
          configuration_set_arn: 'configuration_set_arn',
          configuration_set_name: 'configuration_set_name',
          tags: Stubs::TagList.default(visited),
          created_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigurationSetArn'] = stub[:configuration_set_arn] unless stub[:configuration_set_arn].nil?
        data['ConfigurationSetName'] = stub[:configuration_set_name] unless stub[:configuration_set_name].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for CreateEventDestination
    class CreateEventDestination
      def self.default(visited=[])
        {
          configuration_set_arn: 'configuration_set_arn',
          configuration_set_name: 'configuration_set_name',
          event_destination: Stubs::EventDestination.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigurationSetArn'] = stub[:configuration_set_arn] unless stub[:configuration_set_arn].nil?
        data['ConfigurationSetName'] = stub[:configuration_set_name] unless stub[:configuration_set_name].nil?
        data['EventDestination'] = Stubs::EventDestination.stub(stub[:event_destination]) unless stub[:event_destination].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for EventDestination
    class EventDestination
      def self.default(visited=[])
        return nil if visited.include?('EventDestination')
        visited = visited + ['EventDestination']
        {
          event_destination_name: 'event_destination_name',
          enabled: false,
          matching_event_types: Stubs::EventTypeList.default(visited),
          cloud_watch_logs_destination: Stubs::CloudWatchLogsDestination.default(visited),
          kinesis_firehose_destination: Stubs::KinesisFirehoseDestination.default(visited),
          sns_destination: Stubs::SnsDestination.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventDestination.new
        data = {}
        data['EventDestinationName'] = stub[:event_destination_name] unless stub[:event_destination_name].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['MatchingEventTypes'] = Stubs::EventTypeList.stub(stub[:matching_event_types]) unless stub[:matching_event_types].nil?
        data['CloudWatchLogsDestination'] = Stubs::CloudWatchLogsDestination.stub(stub[:cloud_watch_logs_destination]) unless stub[:cloud_watch_logs_destination].nil?
        data['KinesisFirehoseDestination'] = Stubs::KinesisFirehoseDestination.stub(stub[:kinesis_firehose_destination]) unless stub[:kinesis_firehose_destination].nil?
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

    # Structure Stubber for KinesisFirehoseDestination
    class KinesisFirehoseDestination
      def self.default(visited=[])
        return nil if visited.include?('KinesisFirehoseDestination')
        visited = visited + ['KinesisFirehoseDestination']
        {
          iam_role_arn: 'iam_role_arn',
          delivery_stream_arn: 'delivery_stream_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KinesisFirehoseDestination.new
        data = {}
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['DeliveryStreamArn'] = stub[:delivery_stream_arn] unless stub[:delivery_stream_arn].nil?
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

    # List Stubber for EventTypeList
    class EventTypeList
      def self.default(visited=[])
        return nil if visited.include?('EventTypeList')
        visited = visited + ['EventTypeList']
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

    # Operation Stubber for CreateOptOutList
    class CreateOptOutList
      def self.default(visited=[])
        {
          opt_out_list_arn: 'opt_out_list_arn',
          opt_out_list_name: 'opt_out_list_name',
          tags: Stubs::TagList.default(visited),
          created_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OptOutListArn'] = stub[:opt_out_list_arn] unless stub[:opt_out_list_arn].nil?
        data['OptOutListName'] = stub[:opt_out_list_name] unless stub[:opt_out_list_name].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePool
    class CreatePool
      def self.default(visited=[])
        {
          pool_arn: 'pool_arn',
          pool_id: 'pool_id',
          status: 'status',
          message_type: 'message_type',
          two_way_enabled: false,
          two_way_channel_arn: 'two_way_channel_arn',
          self_managed_opt_outs_enabled: false,
          opt_out_list_name: 'opt_out_list_name',
          shared_routes_enabled: false,
          deletion_protection_enabled: false,
          tags: Stubs::TagList.default(visited),
          created_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PoolArn'] = stub[:pool_arn] unless stub[:pool_arn].nil?
        data['PoolId'] = stub[:pool_id] unless stub[:pool_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['MessageType'] = stub[:message_type] unless stub[:message_type].nil?
        data['TwoWayEnabled'] = stub[:two_way_enabled] unless stub[:two_way_enabled].nil?
        data['TwoWayChannelArn'] = stub[:two_way_channel_arn] unless stub[:two_way_channel_arn].nil?
        data['SelfManagedOptOutsEnabled'] = stub[:self_managed_opt_outs_enabled] unless stub[:self_managed_opt_outs_enabled].nil?
        data['OptOutListName'] = stub[:opt_out_list_name] unless stub[:opt_out_list_name].nil?
        data['SharedRoutesEnabled'] = stub[:shared_routes_enabled] unless stub[:shared_routes_enabled].nil?
        data['DeletionProtectionEnabled'] = stub[:deletion_protection_enabled] unless stub[:deletion_protection_enabled].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteConfigurationSet
    class DeleteConfigurationSet
      def self.default(visited=[])
        {
          configuration_set_arn: 'configuration_set_arn',
          configuration_set_name: 'configuration_set_name',
          event_destinations: Stubs::EventDestinationList.default(visited),
          default_message_type: 'default_message_type',
          default_sender_id: 'default_sender_id',
          created_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigurationSetArn'] = stub[:configuration_set_arn] unless stub[:configuration_set_arn].nil?
        data['ConfigurationSetName'] = stub[:configuration_set_name] unless stub[:configuration_set_name].nil?
        data['EventDestinations'] = Stubs::EventDestinationList.stub(stub[:event_destinations]) unless stub[:event_destinations].nil?
        data['DefaultMessageType'] = stub[:default_message_type] unless stub[:default_message_type].nil?
        data['DefaultSenderId'] = stub[:default_sender_id] unless stub[:default_sender_id].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventDestinationList
    class EventDestinationList
      def self.default(visited=[])
        return nil if visited.include?('EventDestinationList')
        visited = visited + ['EventDestinationList']
        [
          Stubs::EventDestination.default(visited)
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

    # Operation Stubber for DeleteDefaultMessageType
    class DeleteDefaultMessageType
      def self.default(visited=[])
        {
          configuration_set_arn: 'configuration_set_arn',
          configuration_set_name: 'configuration_set_name',
          message_type: 'message_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigurationSetArn'] = stub[:configuration_set_arn] unless stub[:configuration_set_arn].nil?
        data['ConfigurationSetName'] = stub[:configuration_set_name] unless stub[:configuration_set_name].nil?
        data['MessageType'] = stub[:message_type] unless stub[:message_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDefaultSenderId
    class DeleteDefaultSenderId
      def self.default(visited=[])
        {
          configuration_set_arn: 'configuration_set_arn',
          configuration_set_name: 'configuration_set_name',
          sender_id: 'sender_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigurationSetArn'] = stub[:configuration_set_arn] unless stub[:configuration_set_arn].nil?
        data['ConfigurationSetName'] = stub[:configuration_set_name] unless stub[:configuration_set_name].nil?
        data['SenderId'] = stub[:sender_id] unless stub[:sender_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEventDestination
    class DeleteEventDestination
      def self.default(visited=[])
        {
          configuration_set_arn: 'configuration_set_arn',
          configuration_set_name: 'configuration_set_name',
          event_destination: Stubs::EventDestination.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigurationSetArn'] = stub[:configuration_set_arn] unless stub[:configuration_set_arn].nil?
        data['ConfigurationSetName'] = stub[:configuration_set_name] unless stub[:configuration_set_name].nil?
        data['EventDestination'] = Stubs::EventDestination.stub(stub[:event_destination]) unless stub[:event_destination].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteKeyword
    class DeleteKeyword
      def self.default(visited=[])
        {
          origination_identity_arn: 'origination_identity_arn',
          origination_identity: 'origination_identity',
          keyword: 'keyword',
          keyword_message: 'keyword_message',
          keyword_action: 'keyword_action',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OriginationIdentityArn'] = stub[:origination_identity_arn] unless stub[:origination_identity_arn].nil?
        data['OriginationIdentity'] = stub[:origination_identity] unless stub[:origination_identity].nil?
        data['Keyword'] = stub[:keyword] unless stub[:keyword].nil?
        data['KeywordMessage'] = stub[:keyword_message] unless stub[:keyword_message].nil?
        data['KeywordAction'] = stub[:keyword_action] unless stub[:keyword_action].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteOptOutList
    class DeleteOptOutList
      def self.default(visited=[])
        {
          opt_out_list_arn: 'opt_out_list_arn',
          opt_out_list_name: 'opt_out_list_name',
          created_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OptOutListArn'] = stub[:opt_out_list_arn] unless stub[:opt_out_list_arn].nil?
        data['OptOutListName'] = stub[:opt_out_list_name] unless stub[:opt_out_list_name].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteOptedOutNumber
    class DeleteOptedOutNumber
      def self.default(visited=[])
        {
          opt_out_list_arn: 'opt_out_list_arn',
          opt_out_list_name: 'opt_out_list_name',
          opted_out_number: 'opted_out_number',
          opted_out_timestamp: Time.now,
          end_user_opted_out: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OptOutListArn'] = stub[:opt_out_list_arn] unless stub[:opt_out_list_arn].nil?
        data['OptOutListName'] = stub[:opt_out_list_name] unless stub[:opt_out_list_name].nil?
        data['OptedOutNumber'] = stub[:opted_out_number] unless stub[:opted_out_number].nil?
        data['OptedOutTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:opted_out_timestamp]).to_i unless stub[:opted_out_timestamp].nil?
        data['EndUserOptedOut'] = stub[:end_user_opted_out] unless stub[:end_user_opted_out].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePool
    class DeletePool
      def self.default(visited=[])
        {
          pool_arn: 'pool_arn',
          pool_id: 'pool_id',
          status: 'status',
          message_type: 'message_type',
          two_way_enabled: false,
          two_way_channel_arn: 'two_way_channel_arn',
          self_managed_opt_outs_enabled: false,
          opt_out_list_name: 'opt_out_list_name',
          shared_routes_enabled: false,
          created_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PoolArn'] = stub[:pool_arn] unless stub[:pool_arn].nil?
        data['PoolId'] = stub[:pool_id] unless stub[:pool_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['MessageType'] = stub[:message_type] unless stub[:message_type].nil?
        data['TwoWayEnabled'] = stub[:two_way_enabled] unless stub[:two_way_enabled].nil?
        data['TwoWayChannelArn'] = stub[:two_way_channel_arn] unless stub[:two_way_channel_arn].nil?
        data['SelfManagedOptOutsEnabled'] = stub[:self_managed_opt_outs_enabled] unless stub[:self_managed_opt_outs_enabled].nil?
        data['OptOutListName'] = stub[:opt_out_list_name] unless stub[:opt_out_list_name].nil?
        data['SharedRoutesEnabled'] = stub[:shared_routes_enabled] unless stub[:shared_routes_enabled].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTextMessageSpendLimitOverride
    class DeleteTextMessageSpendLimitOverride
      def self.default(visited=[])
        {
          monthly_limit: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MonthlyLimit'] = stub[:monthly_limit] unless stub[:monthly_limit].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteVoiceMessageSpendLimitOverride
    class DeleteVoiceMessageSpendLimitOverride
      def self.default(visited=[])
        {
          monthly_limit: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MonthlyLimit'] = stub[:monthly_limit] unless stub[:monthly_limit].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.default(visited=[])
        {
          account_attributes: Stubs::AccountAttributeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountAttributes'] = Stubs::AccountAttributeList.stub(stub[:account_attributes]) unless stub[:account_attributes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AccountAttributeList
    class AccountAttributeList
      def self.default(visited=[])
        return nil if visited.include?('AccountAttributeList')
        visited = visited + ['AccountAttributeList']
        [
          Stubs::AccountAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AccountAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccountAttribute
    class AccountAttribute
      def self.default(visited=[])
        return nil if visited.include?('AccountAttribute')
        visited = visited + ['AccountAttribute']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountAttribute.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for DescribeAccountLimits
    class DescribeAccountLimits
      def self.default(visited=[])
        {
          account_limits: Stubs::AccountLimitList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AccountLimits'] = Stubs::AccountLimitList.stub(stub[:account_limits]) unless stub[:account_limits].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AccountLimitList
    class AccountLimitList
      def self.default(visited=[])
        return nil if visited.include?('AccountLimitList')
        visited = visited + ['AccountLimitList']
        [
          Stubs::AccountLimit.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AccountLimit.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccountLimit
    class AccountLimit
      def self.default(visited=[])
        return nil if visited.include?('AccountLimit')
        visited = visited + ['AccountLimit']
        {
          name: 'name',
          used: 1,
          max: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountLimit.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Used'] = stub[:used] unless stub[:used].nil?
        data['Max'] = stub[:max] unless stub[:max].nil?
        data
      end
    end

    # Operation Stubber for DescribeConfigurationSets
    class DescribeConfigurationSets
      def self.default(visited=[])
        {
          configuration_sets: Stubs::ConfigurationSetInformationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigurationSets'] = Stubs::ConfigurationSetInformationList.stub(stub[:configuration_sets]) unless stub[:configuration_sets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConfigurationSetInformationList
    class ConfigurationSetInformationList
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationSetInformationList')
        visited = visited + ['ConfigurationSetInformationList']
        [
          Stubs::ConfigurationSetInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConfigurationSetInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConfigurationSetInformation
    class ConfigurationSetInformation
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationSetInformation')
        visited = visited + ['ConfigurationSetInformation']
        {
          configuration_set_arn: 'configuration_set_arn',
          configuration_set_name: 'configuration_set_name',
          event_destinations: Stubs::EventDestinationList.default(visited),
          default_message_type: 'default_message_type',
          default_sender_id: 'default_sender_id',
          created_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigurationSetInformation.new
        data = {}
        data['ConfigurationSetArn'] = stub[:configuration_set_arn] unless stub[:configuration_set_arn].nil?
        data['ConfigurationSetName'] = stub[:configuration_set_name] unless stub[:configuration_set_name].nil?
        data['EventDestinations'] = Stubs::EventDestinationList.stub(stub[:event_destinations]) unless stub[:event_destinations].nil?
        data['DefaultMessageType'] = stub[:default_message_type] unless stub[:default_message_type].nil?
        data['DefaultSenderId'] = stub[:default_sender_id] unless stub[:default_sender_id].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data
      end
    end

    # Operation Stubber for DescribeKeywords
    class DescribeKeywords
      def self.default(visited=[])
        {
          origination_identity_arn: 'origination_identity_arn',
          origination_identity: 'origination_identity',
          keywords: Stubs::KeywordInformationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OriginationIdentityArn'] = stub[:origination_identity_arn] unless stub[:origination_identity_arn].nil?
        data['OriginationIdentity'] = stub[:origination_identity] unless stub[:origination_identity].nil?
        data['Keywords'] = Stubs::KeywordInformationList.stub(stub[:keywords]) unless stub[:keywords].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for KeywordInformationList
    class KeywordInformationList
      def self.default(visited=[])
        return nil if visited.include?('KeywordInformationList')
        visited = visited + ['KeywordInformationList']
        [
          Stubs::KeywordInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::KeywordInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KeywordInformation
    class KeywordInformation
      def self.default(visited=[])
        return nil if visited.include?('KeywordInformation')
        visited = visited + ['KeywordInformation']
        {
          keyword: 'keyword',
          keyword_message: 'keyword_message',
          keyword_action: 'keyword_action',
        }
      end

      def self.stub(stub)
        stub ||= Types::KeywordInformation.new
        data = {}
        data['Keyword'] = stub[:keyword] unless stub[:keyword].nil?
        data['KeywordMessage'] = stub[:keyword_message] unless stub[:keyword_message].nil?
        data['KeywordAction'] = stub[:keyword_action] unless stub[:keyword_action].nil?
        data
      end
    end

    # Operation Stubber for DescribeOptOutLists
    class DescribeOptOutLists
      def self.default(visited=[])
        {
          opt_out_lists: Stubs::OptOutListInformationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OptOutLists'] = Stubs::OptOutListInformationList.stub(stub[:opt_out_lists]) unless stub[:opt_out_lists].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OptOutListInformationList
    class OptOutListInformationList
      def self.default(visited=[])
        return nil if visited.include?('OptOutListInformationList')
        visited = visited + ['OptOutListInformationList']
        [
          Stubs::OptOutListInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OptOutListInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OptOutListInformation
    class OptOutListInformation
      def self.default(visited=[])
        return nil if visited.include?('OptOutListInformation')
        visited = visited + ['OptOutListInformation']
        {
          opt_out_list_arn: 'opt_out_list_arn',
          opt_out_list_name: 'opt_out_list_name',
          created_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::OptOutListInformation.new
        data = {}
        data['OptOutListArn'] = stub[:opt_out_list_arn] unless stub[:opt_out_list_arn].nil?
        data['OptOutListName'] = stub[:opt_out_list_name] unless stub[:opt_out_list_name].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data
      end
    end

    # Operation Stubber for DescribeOptedOutNumbers
    class DescribeOptedOutNumbers
      def self.default(visited=[])
        {
          opt_out_list_arn: 'opt_out_list_arn',
          opt_out_list_name: 'opt_out_list_name',
          opted_out_numbers: Stubs::OptedOutNumberInformationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OptOutListArn'] = stub[:opt_out_list_arn] unless stub[:opt_out_list_arn].nil?
        data['OptOutListName'] = stub[:opt_out_list_name] unless stub[:opt_out_list_name].nil?
        data['OptedOutNumbers'] = Stubs::OptedOutNumberInformationList.stub(stub[:opted_out_numbers]) unless stub[:opted_out_numbers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OptedOutNumberInformationList
    class OptedOutNumberInformationList
      def self.default(visited=[])
        return nil if visited.include?('OptedOutNumberInformationList')
        visited = visited + ['OptedOutNumberInformationList']
        [
          Stubs::OptedOutNumberInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OptedOutNumberInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OptedOutNumberInformation
    class OptedOutNumberInformation
      def self.default(visited=[])
        return nil if visited.include?('OptedOutNumberInformation')
        visited = visited + ['OptedOutNumberInformation']
        {
          opted_out_number: 'opted_out_number',
          opted_out_timestamp: Time.now,
          end_user_opted_out: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::OptedOutNumberInformation.new
        data = {}
        data['OptedOutNumber'] = stub[:opted_out_number] unless stub[:opted_out_number].nil?
        data['OptedOutTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:opted_out_timestamp]).to_i unless stub[:opted_out_timestamp].nil?
        data['EndUserOptedOut'] = stub[:end_user_opted_out] unless stub[:end_user_opted_out].nil?
        data
      end
    end

    # Operation Stubber for DescribePhoneNumbers
    class DescribePhoneNumbers
      def self.default(visited=[])
        {
          phone_numbers: Stubs::PhoneNumberInformationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PhoneNumbers'] = Stubs::PhoneNumberInformationList.stub(stub[:phone_numbers]) unless stub[:phone_numbers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PhoneNumberInformationList
    class PhoneNumberInformationList
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberInformationList')
        visited = visited + ['PhoneNumberInformationList']
        [
          Stubs::PhoneNumberInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PhoneNumberInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PhoneNumberInformation
    class PhoneNumberInformation
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberInformation')
        visited = visited + ['PhoneNumberInformation']
        {
          phone_number_arn: 'phone_number_arn',
          phone_number_id: 'phone_number_id',
          phone_number: 'phone_number',
          status: 'status',
          iso_country_code: 'iso_country_code',
          message_type: 'message_type',
          number_capabilities: Stubs::NumberCapabilityList.default(visited),
          number_type: 'number_type',
          monthly_leasing_price: 'monthly_leasing_price',
          two_way_enabled: false,
          two_way_channel_arn: 'two_way_channel_arn',
          self_managed_opt_outs_enabled: false,
          opt_out_list_name: 'opt_out_list_name',
          deletion_protection_enabled: false,
          pool_id: 'pool_id',
          created_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PhoneNumberInformation.new
        data = {}
        data['PhoneNumberArn'] = stub[:phone_number_arn] unless stub[:phone_number_arn].nil?
        data['PhoneNumberId'] = stub[:phone_number_id] unless stub[:phone_number_id].nil?
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['IsoCountryCode'] = stub[:iso_country_code] unless stub[:iso_country_code].nil?
        data['MessageType'] = stub[:message_type] unless stub[:message_type].nil?
        data['NumberCapabilities'] = Stubs::NumberCapabilityList.stub(stub[:number_capabilities]) unless stub[:number_capabilities].nil?
        data['NumberType'] = stub[:number_type] unless stub[:number_type].nil?
        data['MonthlyLeasingPrice'] = stub[:monthly_leasing_price] unless stub[:monthly_leasing_price].nil?
        data['TwoWayEnabled'] = stub[:two_way_enabled] unless stub[:two_way_enabled].nil?
        data['TwoWayChannelArn'] = stub[:two_way_channel_arn] unless stub[:two_way_channel_arn].nil?
        data['SelfManagedOptOutsEnabled'] = stub[:self_managed_opt_outs_enabled] unless stub[:self_managed_opt_outs_enabled].nil?
        data['OptOutListName'] = stub[:opt_out_list_name] unless stub[:opt_out_list_name].nil?
        data['DeletionProtectionEnabled'] = stub[:deletion_protection_enabled] unless stub[:deletion_protection_enabled].nil?
        data['PoolId'] = stub[:pool_id] unless stub[:pool_id].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data
      end
    end

    # List Stubber for NumberCapabilityList
    class NumberCapabilityList
      def self.default(visited=[])
        return nil if visited.include?('NumberCapabilityList')
        visited = visited + ['NumberCapabilityList']
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

    # Operation Stubber for DescribePools
    class DescribePools
      def self.default(visited=[])
        {
          pools: Stubs::PoolInformationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Pools'] = Stubs::PoolInformationList.stub(stub[:pools]) unless stub[:pools].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PoolInformationList
    class PoolInformationList
      def self.default(visited=[])
        return nil if visited.include?('PoolInformationList')
        visited = visited + ['PoolInformationList']
        [
          Stubs::PoolInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PoolInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PoolInformation
    class PoolInformation
      def self.default(visited=[])
        return nil if visited.include?('PoolInformation')
        visited = visited + ['PoolInformation']
        {
          pool_arn: 'pool_arn',
          pool_id: 'pool_id',
          status: 'status',
          message_type: 'message_type',
          two_way_enabled: false,
          two_way_channel_arn: 'two_way_channel_arn',
          self_managed_opt_outs_enabled: false,
          opt_out_list_name: 'opt_out_list_name',
          shared_routes_enabled: false,
          deletion_protection_enabled: false,
          created_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PoolInformation.new
        data = {}
        data['PoolArn'] = stub[:pool_arn] unless stub[:pool_arn].nil?
        data['PoolId'] = stub[:pool_id] unless stub[:pool_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['MessageType'] = stub[:message_type] unless stub[:message_type].nil?
        data['TwoWayEnabled'] = stub[:two_way_enabled] unless stub[:two_way_enabled].nil?
        data['TwoWayChannelArn'] = stub[:two_way_channel_arn] unless stub[:two_way_channel_arn].nil?
        data['SelfManagedOptOutsEnabled'] = stub[:self_managed_opt_outs_enabled] unless stub[:self_managed_opt_outs_enabled].nil?
        data['OptOutListName'] = stub[:opt_out_list_name] unless stub[:opt_out_list_name].nil?
        data['SharedRoutesEnabled'] = stub[:shared_routes_enabled] unless stub[:shared_routes_enabled].nil?
        data['DeletionProtectionEnabled'] = stub[:deletion_protection_enabled] unless stub[:deletion_protection_enabled].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data
      end
    end

    # Operation Stubber for DescribeSenderIds
    class DescribeSenderIds
      def self.default(visited=[])
        {
          sender_ids: Stubs::SenderIdInformationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SenderIds'] = Stubs::SenderIdInformationList.stub(stub[:sender_ids]) unless stub[:sender_ids].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SenderIdInformationList
    class SenderIdInformationList
      def self.default(visited=[])
        return nil if visited.include?('SenderIdInformationList')
        visited = visited + ['SenderIdInformationList']
        [
          Stubs::SenderIdInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SenderIdInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SenderIdInformation
    class SenderIdInformation
      def self.default(visited=[])
        return nil if visited.include?('SenderIdInformation')
        visited = visited + ['SenderIdInformation']
        {
          sender_id_arn: 'sender_id_arn',
          sender_id: 'sender_id',
          iso_country_code: 'iso_country_code',
          message_types: Stubs::MessageTypeList.default(visited),
          monthly_leasing_price: 'monthly_leasing_price',
        }
      end

      def self.stub(stub)
        stub ||= Types::SenderIdInformation.new
        data = {}
        data['SenderIdArn'] = stub[:sender_id_arn] unless stub[:sender_id_arn].nil?
        data['SenderId'] = stub[:sender_id] unless stub[:sender_id].nil?
        data['IsoCountryCode'] = stub[:iso_country_code] unless stub[:iso_country_code].nil?
        data['MessageTypes'] = Stubs::MessageTypeList.stub(stub[:message_types]) unless stub[:message_types].nil?
        data['MonthlyLeasingPrice'] = stub[:monthly_leasing_price] unless stub[:monthly_leasing_price].nil?
        data
      end
    end

    # List Stubber for MessageTypeList
    class MessageTypeList
      def self.default(visited=[])
        return nil if visited.include?('MessageTypeList')
        visited = visited + ['MessageTypeList']
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

    # Operation Stubber for DescribeSpendLimits
    class DescribeSpendLimits
      def self.default(visited=[])
        {
          spend_limits: Stubs::SpendLimitList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SpendLimits'] = Stubs::SpendLimitList.stub(stub[:spend_limits]) unless stub[:spend_limits].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SpendLimitList
    class SpendLimitList
      def self.default(visited=[])
        return nil if visited.include?('SpendLimitList')
        visited = visited + ['SpendLimitList']
        [
          Stubs::SpendLimit.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SpendLimit.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SpendLimit
    class SpendLimit
      def self.default(visited=[])
        return nil if visited.include?('SpendLimit')
        visited = visited + ['SpendLimit']
        {
          name: 'name',
          enforced_limit: 1,
          max_limit: 1,
          overridden: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SpendLimit.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['EnforcedLimit'] = stub[:enforced_limit] unless stub[:enforced_limit].nil?
        data['MaxLimit'] = stub[:max_limit] unless stub[:max_limit].nil?
        data['Overridden'] = stub[:overridden] unless stub[:overridden].nil?
        data
      end
    end

    # Operation Stubber for DisassociateOriginationIdentity
    class DisassociateOriginationIdentity
      def self.default(visited=[])
        {
          pool_arn: 'pool_arn',
          pool_id: 'pool_id',
          origination_identity_arn: 'origination_identity_arn',
          origination_identity: 'origination_identity',
          iso_country_code: 'iso_country_code',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PoolArn'] = stub[:pool_arn] unless stub[:pool_arn].nil?
        data['PoolId'] = stub[:pool_id] unless stub[:pool_id].nil?
        data['OriginationIdentityArn'] = stub[:origination_identity_arn] unless stub[:origination_identity_arn].nil?
        data['OriginationIdentity'] = stub[:origination_identity] unless stub[:origination_identity].nil?
        data['IsoCountryCode'] = stub[:iso_country_code] unless stub[:iso_country_code].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListPoolOriginationIdentities
    class ListPoolOriginationIdentities
      def self.default(visited=[])
        {
          pool_arn: 'pool_arn',
          pool_id: 'pool_id',
          origination_identities: Stubs::OriginationIdentityMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PoolArn'] = stub[:pool_arn] unless stub[:pool_arn].nil?
        data['PoolId'] = stub[:pool_id] unless stub[:pool_id].nil?
        data['OriginationIdentities'] = Stubs::OriginationIdentityMetadataList.stub(stub[:origination_identities]) unless stub[:origination_identities].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OriginationIdentityMetadataList
    class OriginationIdentityMetadataList
      def self.default(visited=[])
        return nil if visited.include?('OriginationIdentityMetadataList')
        visited = visited + ['OriginationIdentityMetadataList']
        [
          Stubs::OriginationIdentityMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OriginationIdentityMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OriginationIdentityMetadata
    class OriginationIdentityMetadata
      def self.default(visited=[])
        return nil if visited.include?('OriginationIdentityMetadata')
        visited = visited + ['OriginationIdentityMetadata']
        {
          origination_identity_arn: 'origination_identity_arn',
          origination_identity: 'origination_identity',
          iso_country_code: 'iso_country_code',
          number_capabilities: Stubs::NumberCapabilityList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OriginationIdentityMetadata.new
        data = {}
        data['OriginationIdentityArn'] = stub[:origination_identity_arn] unless stub[:origination_identity_arn].nil?
        data['OriginationIdentity'] = stub[:origination_identity] unless stub[:origination_identity].nil?
        data['IsoCountryCode'] = stub[:iso_country_code] unless stub[:iso_country_code].nil?
        data['NumberCapabilities'] = Stubs::NumberCapabilityList.stub(stub[:number_capabilities]) unless stub[:number_capabilities].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutKeyword
    class PutKeyword
      def self.default(visited=[])
        {
          origination_identity_arn: 'origination_identity_arn',
          origination_identity: 'origination_identity',
          keyword: 'keyword',
          keyword_message: 'keyword_message',
          keyword_action: 'keyword_action',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OriginationIdentityArn'] = stub[:origination_identity_arn] unless stub[:origination_identity_arn].nil?
        data['OriginationIdentity'] = stub[:origination_identity] unless stub[:origination_identity].nil?
        data['Keyword'] = stub[:keyword] unless stub[:keyword].nil?
        data['KeywordMessage'] = stub[:keyword_message] unless stub[:keyword_message].nil?
        data['KeywordAction'] = stub[:keyword_action] unless stub[:keyword_action].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutOptedOutNumber
    class PutOptedOutNumber
      def self.default(visited=[])
        {
          opt_out_list_arn: 'opt_out_list_arn',
          opt_out_list_name: 'opt_out_list_name',
          opted_out_number: 'opted_out_number',
          opted_out_timestamp: Time.now,
          end_user_opted_out: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['OptOutListArn'] = stub[:opt_out_list_arn] unless stub[:opt_out_list_arn].nil?
        data['OptOutListName'] = stub[:opt_out_list_name] unless stub[:opt_out_list_name].nil?
        data['OptedOutNumber'] = stub[:opted_out_number] unless stub[:opted_out_number].nil?
        data['OptedOutTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:opted_out_timestamp]).to_i unless stub[:opted_out_timestamp].nil?
        data['EndUserOptedOut'] = stub[:end_user_opted_out] unless stub[:end_user_opted_out].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ReleasePhoneNumber
    class ReleasePhoneNumber
      def self.default(visited=[])
        {
          phone_number_arn: 'phone_number_arn',
          phone_number_id: 'phone_number_id',
          phone_number: 'phone_number',
          status: 'status',
          iso_country_code: 'iso_country_code',
          message_type: 'message_type',
          number_capabilities: Stubs::NumberCapabilityList.default(visited),
          number_type: 'number_type',
          monthly_leasing_price: 'monthly_leasing_price',
          two_way_enabled: false,
          two_way_channel_arn: 'two_way_channel_arn',
          self_managed_opt_outs_enabled: false,
          opt_out_list_name: 'opt_out_list_name',
          created_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PhoneNumberArn'] = stub[:phone_number_arn] unless stub[:phone_number_arn].nil?
        data['PhoneNumberId'] = stub[:phone_number_id] unless stub[:phone_number_id].nil?
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['IsoCountryCode'] = stub[:iso_country_code] unless stub[:iso_country_code].nil?
        data['MessageType'] = stub[:message_type] unless stub[:message_type].nil?
        data['NumberCapabilities'] = Stubs::NumberCapabilityList.stub(stub[:number_capabilities]) unless stub[:number_capabilities].nil?
        data['NumberType'] = stub[:number_type] unless stub[:number_type].nil?
        data['MonthlyLeasingPrice'] = stub[:monthly_leasing_price] unless stub[:monthly_leasing_price].nil?
        data['TwoWayEnabled'] = stub[:two_way_enabled] unless stub[:two_way_enabled].nil?
        data['TwoWayChannelArn'] = stub[:two_way_channel_arn] unless stub[:two_way_channel_arn].nil?
        data['SelfManagedOptOutsEnabled'] = stub[:self_managed_opt_outs_enabled] unless stub[:self_managed_opt_outs_enabled].nil?
        data['OptOutListName'] = stub[:opt_out_list_name] unless stub[:opt_out_list_name].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RequestPhoneNumber
    class RequestPhoneNumber
      def self.default(visited=[])
        {
          phone_number_arn: 'phone_number_arn',
          phone_number_id: 'phone_number_id',
          phone_number: 'phone_number',
          status: 'status',
          iso_country_code: 'iso_country_code',
          message_type: 'message_type',
          number_capabilities: Stubs::NumberCapabilityList.default(visited),
          number_type: 'number_type',
          monthly_leasing_price: 'monthly_leasing_price',
          two_way_enabled: false,
          two_way_channel_arn: 'two_way_channel_arn',
          self_managed_opt_outs_enabled: false,
          opt_out_list_name: 'opt_out_list_name',
          deletion_protection_enabled: false,
          pool_id: 'pool_id',
          tags: Stubs::TagList.default(visited),
          created_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PhoneNumberArn'] = stub[:phone_number_arn] unless stub[:phone_number_arn].nil?
        data['PhoneNumberId'] = stub[:phone_number_id] unless stub[:phone_number_id].nil?
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['IsoCountryCode'] = stub[:iso_country_code] unless stub[:iso_country_code].nil?
        data['MessageType'] = stub[:message_type] unless stub[:message_type].nil?
        data['NumberCapabilities'] = Stubs::NumberCapabilityList.stub(stub[:number_capabilities]) unless stub[:number_capabilities].nil?
        data['NumberType'] = stub[:number_type] unless stub[:number_type].nil?
        data['MonthlyLeasingPrice'] = stub[:monthly_leasing_price] unless stub[:monthly_leasing_price].nil?
        data['TwoWayEnabled'] = stub[:two_way_enabled] unless stub[:two_way_enabled].nil?
        data['TwoWayChannelArn'] = stub[:two_way_channel_arn] unless stub[:two_way_channel_arn].nil?
        data['SelfManagedOptOutsEnabled'] = stub[:self_managed_opt_outs_enabled] unless stub[:self_managed_opt_outs_enabled].nil?
        data['OptOutListName'] = stub[:opt_out_list_name] unless stub[:opt_out_list_name].nil?
        data['DeletionProtectionEnabled'] = stub[:deletion_protection_enabled] unless stub[:deletion_protection_enabled].nil?
        data['PoolId'] = stub[:pool_id] unless stub[:pool_id].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendTextMessage
    class SendTextMessage
      def self.default(visited=[])
        {
          message_id: 'message_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetDefaultMessageType
    class SetDefaultMessageType
      def self.default(visited=[])
        {
          configuration_set_arn: 'configuration_set_arn',
          configuration_set_name: 'configuration_set_name',
          message_type: 'message_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigurationSetArn'] = stub[:configuration_set_arn] unless stub[:configuration_set_arn].nil?
        data['ConfigurationSetName'] = stub[:configuration_set_name] unless stub[:configuration_set_name].nil?
        data['MessageType'] = stub[:message_type] unless stub[:message_type].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetDefaultSenderId
    class SetDefaultSenderId
      def self.default(visited=[])
        {
          configuration_set_arn: 'configuration_set_arn',
          configuration_set_name: 'configuration_set_name',
          sender_id: 'sender_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigurationSetArn'] = stub[:configuration_set_arn] unless stub[:configuration_set_arn].nil?
        data['ConfigurationSetName'] = stub[:configuration_set_name] unless stub[:configuration_set_name].nil?
        data['SenderId'] = stub[:sender_id] unless stub[:sender_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetTextMessageSpendLimitOverride
    class SetTextMessageSpendLimitOverride
      def self.default(visited=[])
        {
          monthly_limit: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MonthlyLimit'] = stub[:monthly_limit] unless stub[:monthly_limit].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetVoiceMessageSpendLimitOverride
    class SetVoiceMessageSpendLimitOverride
      def self.default(visited=[])
        {
          monthly_limit: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MonthlyLimit'] = stub[:monthly_limit] unless stub[:monthly_limit].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEventDestination
    class UpdateEventDestination
      def self.default(visited=[])
        {
          configuration_set_arn: 'configuration_set_arn',
          configuration_set_name: 'configuration_set_name',
          event_destination: Stubs::EventDestination.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ConfigurationSetArn'] = stub[:configuration_set_arn] unless stub[:configuration_set_arn].nil?
        data['ConfigurationSetName'] = stub[:configuration_set_name] unless stub[:configuration_set_name].nil?
        data['EventDestination'] = Stubs::EventDestination.stub(stub[:event_destination]) unless stub[:event_destination].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePhoneNumber
    class UpdatePhoneNumber
      def self.default(visited=[])
        {
          phone_number_arn: 'phone_number_arn',
          phone_number_id: 'phone_number_id',
          phone_number: 'phone_number',
          status: 'status',
          iso_country_code: 'iso_country_code',
          message_type: 'message_type',
          number_capabilities: Stubs::NumberCapabilityList.default(visited),
          number_type: 'number_type',
          monthly_leasing_price: 'monthly_leasing_price',
          two_way_enabled: false,
          two_way_channel_arn: 'two_way_channel_arn',
          self_managed_opt_outs_enabled: false,
          opt_out_list_name: 'opt_out_list_name',
          deletion_protection_enabled: false,
          created_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PhoneNumberArn'] = stub[:phone_number_arn] unless stub[:phone_number_arn].nil?
        data['PhoneNumberId'] = stub[:phone_number_id] unless stub[:phone_number_id].nil?
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['IsoCountryCode'] = stub[:iso_country_code] unless stub[:iso_country_code].nil?
        data['MessageType'] = stub[:message_type] unless stub[:message_type].nil?
        data['NumberCapabilities'] = Stubs::NumberCapabilityList.stub(stub[:number_capabilities]) unless stub[:number_capabilities].nil?
        data['NumberType'] = stub[:number_type] unless stub[:number_type].nil?
        data['MonthlyLeasingPrice'] = stub[:monthly_leasing_price] unless stub[:monthly_leasing_price].nil?
        data['TwoWayEnabled'] = stub[:two_way_enabled] unless stub[:two_way_enabled].nil?
        data['TwoWayChannelArn'] = stub[:two_way_channel_arn] unless stub[:two_way_channel_arn].nil?
        data['SelfManagedOptOutsEnabled'] = stub[:self_managed_opt_outs_enabled] unless stub[:self_managed_opt_outs_enabled].nil?
        data['OptOutListName'] = stub[:opt_out_list_name] unless stub[:opt_out_list_name].nil?
        data['DeletionProtectionEnabled'] = stub[:deletion_protection_enabled] unless stub[:deletion_protection_enabled].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePool
    class UpdatePool
      def self.default(visited=[])
        {
          pool_arn: 'pool_arn',
          pool_id: 'pool_id',
          status: 'status',
          message_type: 'message_type',
          two_way_enabled: false,
          two_way_channel_arn: 'two_way_channel_arn',
          self_managed_opt_outs_enabled: false,
          opt_out_list_name: 'opt_out_list_name',
          shared_routes_enabled: false,
          deletion_protection_enabled: false,
          created_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PoolArn'] = stub[:pool_arn] unless stub[:pool_arn].nil?
        data['PoolId'] = stub[:pool_id] unless stub[:pool_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['MessageType'] = stub[:message_type] unless stub[:message_type].nil?
        data['TwoWayEnabled'] = stub[:two_way_enabled] unless stub[:two_way_enabled].nil?
        data['TwoWayChannelArn'] = stub[:two_way_channel_arn] unless stub[:two_way_channel_arn].nil?
        data['SelfManagedOptOutsEnabled'] = stub[:self_managed_opt_outs_enabled] unless stub[:self_managed_opt_outs_enabled].nil?
        data['OptOutListName'] = stub[:opt_out_list_name] unless stub[:opt_out_list_name].nil?
        data['SharedRoutesEnabled'] = stub[:shared_routes_enabled] unless stub[:shared_routes_enabled].nil?
        data['DeletionProtectionEnabled'] = stub[:deletion_protection_enabled] unless stub[:deletion_protection_enabled].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
