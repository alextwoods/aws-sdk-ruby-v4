# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::PinpointSMSVoiceV2
  module Builders

    # Operation Builder for AssociateOriginationIdentity
    class AssociateOriginationIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.AssociateOriginationIdentity'
        data = {}
        data['PoolId'] = input[:pool_id] unless input[:pool_id].nil?
        data['OriginationIdentity'] = input[:origination_identity] unless input[:origination_identity].nil?
        data['IsoCountryCode'] = input[:iso_country_code] unless input[:iso_country_code].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateConfigurationSet
    class CreateConfigurationSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.CreateConfigurationSet'
        data = {}
        data['ConfigurationSetName'] = input[:configuration_set_name] unless input[:configuration_set_name].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateEventDestination
    class CreateEventDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.CreateEventDestination'
        data = {}
        data['ConfigurationSetName'] = input[:configuration_set_name] unless input[:configuration_set_name].nil?
        data['EventDestinationName'] = input[:event_destination_name] unless input[:event_destination_name].nil?
        data['MatchingEventTypes'] = EventTypeList.build(input[:matching_event_types]) unless input[:matching_event_types].nil?
        data['CloudWatchLogsDestination'] = CloudWatchLogsDestination.build(input[:cloud_watch_logs_destination]) unless input[:cloud_watch_logs_destination].nil?
        data['KinesisFirehoseDestination'] = KinesisFirehoseDestination.build(input[:kinesis_firehose_destination]) unless input[:kinesis_firehose_destination].nil?
        data['SnsDestination'] = SnsDestination.build(input[:sns_destination]) unless input[:sns_destination].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Structure Builder for KinesisFirehoseDestination
    class KinesisFirehoseDestination
      def self.build(input)
        data = {}
        data['IamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['DeliveryStreamArn'] = input[:delivery_stream_arn] unless input[:delivery_stream_arn].nil?
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

    # List Builder for EventTypeList
    class EventTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateOptOutList
    class CreateOptOutList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.CreateOptOutList'
        data = {}
        data['OptOutListName'] = input[:opt_out_list_name] unless input[:opt_out_list_name].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreatePool
    class CreatePool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.CreatePool'
        data = {}
        data['OriginationIdentity'] = input[:origination_identity] unless input[:origination_identity].nil?
        data['IsoCountryCode'] = input[:iso_country_code] unless input[:iso_country_code].nil?
        data['MessageType'] = input[:message_type] unless input[:message_type].nil?
        data['DeletionProtectionEnabled'] = input[:deletion_protection_enabled] unless input[:deletion_protection_enabled].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConfigurationSet
    class DeleteConfigurationSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DeleteConfigurationSet'
        data = {}
        data['ConfigurationSetName'] = input[:configuration_set_name] unless input[:configuration_set_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDefaultMessageType
    class DeleteDefaultMessageType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DeleteDefaultMessageType'
        data = {}
        data['ConfigurationSetName'] = input[:configuration_set_name] unless input[:configuration_set_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDefaultSenderId
    class DeleteDefaultSenderId
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DeleteDefaultSenderId'
        data = {}
        data['ConfigurationSetName'] = input[:configuration_set_name] unless input[:configuration_set_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEventDestination
    class DeleteEventDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DeleteEventDestination'
        data = {}
        data['ConfigurationSetName'] = input[:configuration_set_name] unless input[:configuration_set_name].nil?
        data['EventDestinationName'] = input[:event_destination_name] unless input[:event_destination_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteKeyword
    class DeleteKeyword
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DeleteKeyword'
        data = {}
        data['OriginationIdentity'] = input[:origination_identity] unless input[:origination_identity].nil?
        data['Keyword'] = input[:keyword] unless input[:keyword].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteOptOutList
    class DeleteOptOutList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DeleteOptOutList'
        data = {}
        data['OptOutListName'] = input[:opt_out_list_name] unless input[:opt_out_list_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteOptedOutNumber
    class DeleteOptedOutNumber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DeleteOptedOutNumber'
        data = {}
        data['OptOutListName'] = input[:opt_out_list_name] unless input[:opt_out_list_name].nil?
        data['OptedOutNumber'] = input[:opted_out_number] unless input[:opted_out_number].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePool
    class DeletePool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DeletePool'
        data = {}
        data['PoolId'] = input[:pool_id] unless input[:pool_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTextMessageSpendLimitOverride
    class DeleteTextMessageSpendLimitOverride
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DeleteTextMessageSpendLimitOverride'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteVoiceMessageSpendLimitOverride
    class DeleteVoiceMessageSpendLimitOverride
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DeleteVoiceMessageSpendLimitOverride'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DescribeAccountAttributes'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAccountLimits
    class DescribeAccountLimits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DescribeAccountLimits'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConfigurationSets
    class DescribeConfigurationSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DescribeConfigurationSets'
        data = {}
        data['ConfigurationSetNames'] = ConfigurationSetNameList.build(input[:configuration_set_names]) unless input[:configuration_set_names].nil?
        data['Filters'] = ConfigurationSetFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ConfigurationSetFilterList
    class ConfigurationSetFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << ConfigurationSetFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConfigurationSetFilter
    class ConfigurationSetFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = FilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for FilterValueList
    class FilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ConfigurationSetNameList
    class ConfigurationSetNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeKeywords
    class DescribeKeywords
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DescribeKeywords'
        data = {}
        data['OriginationIdentity'] = input[:origination_identity] unless input[:origination_identity].nil?
        data['Keywords'] = KeywordList.build(input[:keywords]) unless input[:keywords].nil?
        data['Filters'] = KeywordFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for KeywordFilterList
    class KeywordFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << KeywordFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for KeywordFilter
    class KeywordFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = FilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for KeywordList
    class KeywordList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeOptOutLists
    class DescribeOptOutLists
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DescribeOptOutLists'
        data = {}
        data['OptOutListNames'] = OptOutListNameList.build(input[:opt_out_list_names]) unless input[:opt_out_list_names].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OptOutListNameList
    class OptOutListNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeOptedOutNumbers
    class DescribeOptedOutNumbers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DescribeOptedOutNumbers'
        data = {}
        data['OptOutListName'] = input[:opt_out_list_name] unless input[:opt_out_list_name].nil?
        data['OptedOutNumbers'] = OptedOutNumberList.build(input[:opted_out_numbers]) unless input[:opted_out_numbers].nil?
        data['Filters'] = OptedOutFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OptedOutFilterList
    class OptedOutFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << OptedOutFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OptedOutFilter
    class OptedOutFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = FilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for OptedOutNumberList
    class OptedOutNumberList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribePhoneNumbers
    class DescribePhoneNumbers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DescribePhoneNumbers'
        data = {}
        data['PhoneNumberIds'] = PhoneNumberIdList.build(input[:phone_number_ids]) unless input[:phone_number_ids].nil?
        data['Filters'] = PhoneNumberFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PhoneNumberFilterList
    class PhoneNumberFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << PhoneNumberFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PhoneNumberFilter
    class PhoneNumberFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = FilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for PhoneNumberIdList
    class PhoneNumberIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribePools
    class DescribePools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DescribePools'
        data = {}
        data['PoolIds'] = PoolIdList.build(input[:pool_ids]) unless input[:pool_ids].nil?
        data['Filters'] = PoolFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PoolFilterList
    class PoolFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << PoolFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PoolFilter
    class PoolFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = FilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for PoolIdList
    class PoolIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeSenderIds
    class DescribeSenderIds
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DescribeSenderIds'
        data = {}
        data['SenderIds'] = SenderIdList.build(input[:sender_ids]) unless input[:sender_ids].nil?
        data['Filters'] = SenderIdFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SenderIdFilterList
    class SenderIdFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << SenderIdFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SenderIdFilter
    class SenderIdFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = FilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for SenderIdList
    class SenderIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << SenderIdAndCountry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SenderIdAndCountry
    class SenderIdAndCountry
      def self.build(input)
        data = {}
        data['SenderId'] = input[:sender_id] unless input[:sender_id].nil?
        data['IsoCountryCode'] = input[:iso_country_code] unless input[:iso_country_code].nil?
        data
      end
    end

    # Operation Builder for DescribeSpendLimits
    class DescribeSpendLimits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DescribeSpendLimits'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateOriginationIdentity
    class DisassociateOriginationIdentity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.DisassociateOriginationIdentity'
        data = {}
        data['PoolId'] = input[:pool_id] unless input[:pool_id].nil?
        data['OriginationIdentity'] = input[:origination_identity] unless input[:origination_identity].nil?
        data['IsoCountryCode'] = input[:iso_country_code] unless input[:iso_country_code].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPoolOriginationIdentities
    class ListPoolOriginationIdentities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.ListPoolOriginationIdentities'
        data = {}
        data['PoolId'] = input[:pool_id] unless input[:pool_id].nil?
        data['Filters'] = PoolOriginationIdentitiesFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PoolOriginationIdentitiesFilterList
    class PoolOriginationIdentitiesFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << PoolOriginationIdentitiesFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PoolOriginationIdentitiesFilter
    class PoolOriginationIdentitiesFilter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = FilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutKeyword
    class PutKeyword
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.PutKeyword'
        data = {}
        data['OriginationIdentity'] = input[:origination_identity] unless input[:origination_identity].nil?
        data['Keyword'] = input[:keyword] unless input[:keyword].nil?
        data['KeywordMessage'] = input[:keyword_message] unless input[:keyword_message].nil?
        data['KeywordAction'] = input[:keyword_action] unless input[:keyword_action].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutOptedOutNumber
    class PutOptedOutNumber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.PutOptedOutNumber'
        data = {}
        data['OptOutListName'] = input[:opt_out_list_name] unless input[:opt_out_list_name].nil?
        data['OptedOutNumber'] = input[:opted_out_number] unless input[:opted_out_number].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ReleasePhoneNumber
    class ReleasePhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.ReleasePhoneNumber'
        data = {}
        data['PhoneNumberId'] = input[:phone_number_id] unless input[:phone_number_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RequestPhoneNumber
    class RequestPhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.RequestPhoneNumber'
        data = {}
        data['IsoCountryCode'] = input[:iso_country_code] unless input[:iso_country_code].nil?
        data['MessageType'] = input[:message_type] unless input[:message_type].nil?
        data['NumberCapabilities'] = NumberCapabilityList.build(input[:number_capabilities]) unless input[:number_capabilities].nil?
        data['NumberType'] = input[:number_type] unless input[:number_type].nil?
        data['OptOutListName'] = input[:opt_out_list_name] unless input[:opt_out_list_name].nil?
        data['PoolId'] = input[:pool_id] unless input[:pool_id].nil?
        data['RegistrationId'] = input[:registration_id] unless input[:registration_id].nil?
        data['DeletionProtectionEnabled'] = input[:deletion_protection_enabled] unless input[:deletion_protection_enabled].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for NumberCapabilityList
    class NumberCapabilityList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SendTextMessage
    class SendTextMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.SendTextMessage'
        data = {}
        data['DestinationPhoneNumber'] = input[:destination_phone_number] unless input[:destination_phone_number].nil?
        data['OriginationIdentity'] = input[:origination_identity] unless input[:origination_identity].nil?
        data['MessageBody'] = input[:message_body] unless input[:message_body].nil?
        data['MessageType'] = input[:message_type] unless input[:message_type].nil?
        data['Keyword'] = input[:keyword] unless input[:keyword].nil?
        data['ConfigurationSetName'] = input[:configuration_set_name] unless input[:configuration_set_name].nil?
        data['MaxPrice'] = input[:max_price] unless input[:max_price].nil?
        data['TimeToLive'] = input[:time_to_live] unless input[:time_to_live].nil?
        data['Context'] = ContextMap.build(input[:context]) unless input[:context].nil?
        data['DestinationCountryParameters'] = DestinationCountryParameters.build(input[:destination_country_parameters]) unless input[:destination_country_parameters].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for DestinationCountryParameters
    class DestinationCountryParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for ContextMap
    class ContextMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for SendVoiceMessage
    class SendVoiceMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.SendVoiceMessage'
        data = {}
        data['DestinationPhoneNumber'] = input[:destination_phone_number] unless input[:destination_phone_number].nil?
        data['OriginationIdentity'] = input[:origination_identity] unless input[:origination_identity].nil?
        data['MessageBody'] = input[:message_body] unless input[:message_body].nil?
        data['MessageBodyTextType'] = input[:message_body_text_type] unless input[:message_body_text_type].nil?
        data['VoiceId'] = input[:voice_id] unless input[:voice_id].nil?
        data['ConfigurationSetName'] = input[:configuration_set_name] unless input[:configuration_set_name].nil?
        data['MaxPricePerMinute'] = input[:max_price_per_minute] unless input[:max_price_per_minute].nil?
        data['TimeToLive'] = input[:time_to_live] unless input[:time_to_live].nil?
        data['Context'] = ContextMap.build(input[:context]) unless input[:context].nil?
        data['DryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetDefaultMessageType
    class SetDefaultMessageType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.SetDefaultMessageType'
        data = {}
        data['ConfigurationSetName'] = input[:configuration_set_name] unless input[:configuration_set_name].nil?
        data['MessageType'] = input[:message_type] unless input[:message_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetDefaultSenderId
    class SetDefaultSenderId
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.SetDefaultSenderId'
        data = {}
        data['ConfigurationSetName'] = input[:configuration_set_name] unless input[:configuration_set_name].nil?
        data['SenderId'] = input[:sender_id] unless input[:sender_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetTextMessageSpendLimitOverride
    class SetTextMessageSpendLimitOverride
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.SetTextMessageSpendLimitOverride'
        data = {}
        data['MonthlyLimit'] = input[:monthly_limit] unless input[:monthly_limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetVoiceMessageSpendLimitOverride
    class SetVoiceMessageSpendLimitOverride
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.SetVoiceMessageSpendLimitOverride'
        data = {}
        data['MonthlyLimit'] = input[:monthly_limit] unless input[:monthly_limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = NonEmptyTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for NonEmptyTagList
    class NonEmptyTagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateEventDestination
    class UpdateEventDestination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.UpdateEventDestination'
        data = {}
        data['ConfigurationSetName'] = input[:configuration_set_name] unless input[:configuration_set_name].nil?
        data['EventDestinationName'] = input[:event_destination_name] unless input[:event_destination_name].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['MatchingEventTypes'] = EventTypeList.build(input[:matching_event_types]) unless input[:matching_event_types].nil?
        data['CloudWatchLogsDestination'] = CloudWatchLogsDestination.build(input[:cloud_watch_logs_destination]) unless input[:cloud_watch_logs_destination].nil?
        data['KinesisFirehoseDestination'] = KinesisFirehoseDestination.build(input[:kinesis_firehose_destination]) unless input[:kinesis_firehose_destination].nil?
        data['SnsDestination'] = SnsDestination.build(input[:sns_destination]) unless input[:sns_destination].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePhoneNumber
    class UpdatePhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.UpdatePhoneNumber'
        data = {}
        data['PhoneNumberId'] = input[:phone_number_id] unless input[:phone_number_id].nil?
        data['TwoWayEnabled'] = input[:two_way_enabled] unless input[:two_way_enabled].nil?
        data['TwoWayChannelArn'] = input[:two_way_channel_arn] unless input[:two_way_channel_arn].nil?
        data['SelfManagedOptOutsEnabled'] = input[:self_managed_opt_outs_enabled] unless input[:self_managed_opt_outs_enabled].nil?
        data['OptOutListName'] = input[:opt_out_list_name] unless input[:opt_out_list_name].nil?
        data['DeletionProtectionEnabled'] = input[:deletion_protection_enabled] unless input[:deletion_protection_enabled].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePool
    class UpdatePool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'PinpointSMSVoiceV2.UpdatePool'
        data = {}
        data['PoolId'] = input[:pool_id] unless input[:pool_id].nil?
        data['TwoWayEnabled'] = input[:two_way_enabled] unless input[:two_way_enabled].nil?
        data['TwoWayChannelArn'] = input[:two_way_channel_arn] unless input[:two_way_channel_arn].nil?
        data['SelfManagedOptOutsEnabled'] = input[:self_managed_opt_outs_enabled] unless input[:self_managed_opt_outs_enabled].nil?
        data['OptOutListName'] = input[:opt_out_list_name] unless input[:opt_out_list_name].nil?
        data['SharedRoutesEnabled'] = input[:shared_routes_enabled] unless input[:shared_routes_enabled].nil?
        data['DeletionProtectionEnabled'] = input[:deletion_protection_enabled] unless input[:deletion_protection_enabled].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
