# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PinpointSMSVoiceV2
  module Parsers

    # Operation Parser for AssociateOriginationIdentity
    class AssociateOriginationIdentity
      def self.parse(http_resp)
        data = Types::AssociateOriginationIdentityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pool_arn = map['PoolArn']
        data.pool_id = map['PoolId']
        data.origination_identity_arn = map['OriginationIdentityArn']
        data.origination_identity = map['OriginationIdentity']
        data.iso_country_code = map['IsoCountryCode']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data.resource_id = map['ResourceId']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.reason = map['Reason']
        data.resource_type = map['ResourceType']
        data.resource_id = map['ResourceId']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.reason = map['Reason']
        data.fields = (Parsers::ValidationExceptionFieldList.parse(map['Fields']) unless map['Fields'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        list.map do |value|
          Parsers::ValidationExceptionField.parse(value) unless value.nil?
        end
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['Name']
        data.message = map['Message']
        return data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Operation Parser for CreateConfigurationSet
    class CreateConfigurationSet
      def self.parse(http_resp)
        data = Types::CreateConfigurationSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_set_arn = map['ConfigurationSetArn']
        data.configuration_set_name = map['ConfigurationSetName']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for CreateEventDestination
    class CreateEventDestination
      def self.parse(http_resp)
        data = Types::CreateEventDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_set_arn = map['ConfigurationSetArn']
        data.configuration_set_name = map['ConfigurationSetName']
        data.event_destination = (Parsers::EventDestination.parse(map['EventDestination']) unless map['EventDestination'].nil?)
        data
      end
    end

    class EventDestination
      def self.parse(map)
        data = Types::EventDestination.new
        data.event_destination_name = map['EventDestinationName']
        data.enabled = map['Enabled']
        data.matching_event_types = (Parsers::EventTypeList.parse(map['MatchingEventTypes']) unless map['MatchingEventTypes'].nil?)
        data.cloud_watch_logs_destination = (Parsers::CloudWatchLogsDestination.parse(map['CloudWatchLogsDestination']) unless map['CloudWatchLogsDestination'].nil?)
        data.kinesis_firehose_destination = (Parsers::KinesisFirehoseDestination.parse(map['KinesisFirehoseDestination']) unless map['KinesisFirehoseDestination'].nil?)
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

    class KinesisFirehoseDestination
      def self.parse(map)
        data = Types::KinesisFirehoseDestination.new
        data.iam_role_arn = map['IamRoleArn']
        data.delivery_stream_arn = map['DeliveryStreamArn']
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

    class EventTypeList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for CreateOptOutList
    class CreateOptOutList
      def self.parse(http_resp)
        data = Types::CreateOptOutListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.opt_out_list_arn = map['OptOutListArn']
        data.opt_out_list_name = map['OptOutListName']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data
      end
    end

    # Operation Parser for CreatePool
    class CreatePool
      def self.parse(http_resp)
        data = Types::CreatePoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pool_arn = map['PoolArn']
        data.pool_id = map['PoolId']
        data.status = map['Status']
        data.message_type = map['MessageType']
        data.two_way_enabled = map['TwoWayEnabled']
        data.two_way_channel_arn = map['TwoWayChannelArn']
        data.self_managed_opt_outs_enabled = map['SelfManagedOptOutsEnabled']
        data.opt_out_list_name = map['OptOutListName']
        data.shared_routes_enabled = map['SharedRoutesEnabled']
        data.deletion_protection_enabled = map['DeletionProtectionEnabled']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data
      end
    end

    # Operation Parser for DeleteConfigurationSet
    class DeleteConfigurationSet
      def self.parse(http_resp)
        data = Types::DeleteConfigurationSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_set_arn = map['ConfigurationSetArn']
        data.configuration_set_name = map['ConfigurationSetName']
        data.event_destinations = (Parsers::EventDestinationList.parse(map['EventDestinations']) unless map['EventDestinations'].nil?)
        data.default_message_type = map['DefaultMessageType']
        data.default_sender_id = map['DefaultSenderId']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data
      end
    end

    class EventDestinationList
      def self.parse(list)
        list.map do |value|
          Parsers::EventDestination.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DeleteDefaultMessageType
    class DeleteDefaultMessageType
      def self.parse(http_resp)
        data = Types::DeleteDefaultMessageTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_set_arn = map['ConfigurationSetArn']
        data.configuration_set_name = map['ConfigurationSetName']
        data.message_type = map['MessageType']
        data
      end
    end

    # Operation Parser for DeleteDefaultSenderId
    class DeleteDefaultSenderId
      def self.parse(http_resp)
        data = Types::DeleteDefaultSenderIdOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_set_arn = map['ConfigurationSetArn']
        data.configuration_set_name = map['ConfigurationSetName']
        data.sender_id = map['SenderId']
        data
      end
    end

    # Operation Parser for DeleteEventDestination
    class DeleteEventDestination
      def self.parse(http_resp)
        data = Types::DeleteEventDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_set_arn = map['ConfigurationSetArn']
        data.configuration_set_name = map['ConfigurationSetName']
        data.event_destination = (Parsers::EventDestination.parse(map['EventDestination']) unless map['EventDestination'].nil?)
        data
      end
    end

    # Operation Parser for DeleteKeyword
    class DeleteKeyword
      def self.parse(http_resp)
        data = Types::DeleteKeywordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.origination_identity_arn = map['OriginationIdentityArn']
        data.origination_identity = map['OriginationIdentity']
        data.keyword = map['Keyword']
        data.keyword_message = map['KeywordMessage']
        data.keyword_action = map['KeywordAction']
        data
      end
    end

    # Operation Parser for DeleteOptOutList
    class DeleteOptOutList
      def self.parse(http_resp)
        data = Types::DeleteOptOutListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.opt_out_list_arn = map['OptOutListArn']
        data.opt_out_list_name = map['OptOutListName']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data
      end
    end

    # Operation Parser for DeleteOptedOutNumber
    class DeleteOptedOutNumber
      def self.parse(http_resp)
        data = Types::DeleteOptedOutNumberOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.opt_out_list_arn = map['OptOutListArn']
        data.opt_out_list_name = map['OptOutListName']
        data.opted_out_number = map['OptedOutNumber']
        data.opted_out_timestamp = Time.at(map['OptedOutTimestamp'].to_i) if map['OptedOutTimestamp']
        data.end_user_opted_out = map['EndUserOptedOut']
        data
      end
    end

    # Operation Parser for DeletePool
    class DeletePool
      def self.parse(http_resp)
        data = Types::DeletePoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pool_arn = map['PoolArn']
        data.pool_id = map['PoolId']
        data.status = map['Status']
        data.message_type = map['MessageType']
        data.two_way_enabled = map['TwoWayEnabled']
        data.two_way_channel_arn = map['TwoWayChannelArn']
        data.self_managed_opt_outs_enabled = map['SelfManagedOptOutsEnabled']
        data.opt_out_list_name = map['OptOutListName']
        data.shared_routes_enabled = map['SharedRoutesEnabled']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data
      end
    end

    # Operation Parser for DeleteTextMessageSpendLimitOverride
    class DeleteTextMessageSpendLimitOverride
      def self.parse(http_resp)
        data = Types::DeleteTextMessageSpendLimitOverrideOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.monthly_limit = map['MonthlyLimit']
        data
      end
    end

    # Operation Parser for DeleteVoiceMessageSpendLimitOverride
    class DeleteVoiceMessageSpendLimitOverride
      def self.parse(http_resp)
        data = Types::DeleteVoiceMessageSpendLimitOverrideOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.monthly_limit = map['MonthlyLimit']
        data
      end
    end

    # Operation Parser for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.parse(http_resp)
        data = Types::DescribeAccountAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_attributes = (Parsers::AccountAttributeList.parse(map['AccountAttributes']) unless map['AccountAttributes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AccountAttributeList
      def self.parse(list)
        list.map do |value|
          Parsers::AccountAttribute.parse(value) unless value.nil?
        end
      end
    end

    class AccountAttribute
      def self.parse(map)
        data = Types::AccountAttribute.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for DescribeAccountLimits
    class DescribeAccountLimits
      def self.parse(http_resp)
        data = Types::DescribeAccountLimitsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.account_limits = (Parsers::AccountLimitList.parse(map['AccountLimits']) unless map['AccountLimits'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AccountLimitList
      def self.parse(list)
        list.map do |value|
          Parsers::AccountLimit.parse(value) unless value.nil?
        end
      end
    end

    class AccountLimit
      def self.parse(map)
        data = Types::AccountLimit.new
        data.name = map['Name']
        data.used = map['Used']
        data.max = map['Max']
        return data
      end
    end

    # Operation Parser for DescribeConfigurationSets
    class DescribeConfigurationSets
      def self.parse(http_resp)
        data = Types::DescribeConfigurationSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_sets = (Parsers::ConfigurationSetInformationList.parse(map['ConfigurationSets']) unless map['ConfigurationSets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ConfigurationSetInformationList
      def self.parse(list)
        list.map do |value|
          Parsers::ConfigurationSetInformation.parse(value) unless value.nil?
        end
      end
    end

    class ConfigurationSetInformation
      def self.parse(map)
        data = Types::ConfigurationSetInformation.new
        data.configuration_set_arn = map['ConfigurationSetArn']
        data.configuration_set_name = map['ConfigurationSetName']
        data.event_destinations = (Parsers::EventDestinationList.parse(map['EventDestinations']) unless map['EventDestinations'].nil?)
        data.default_message_type = map['DefaultMessageType']
        data.default_sender_id = map['DefaultSenderId']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeKeywords
    class DescribeKeywords
      def self.parse(http_resp)
        data = Types::DescribeKeywordsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.origination_identity_arn = map['OriginationIdentityArn']
        data.origination_identity = map['OriginationIdentity']
        data.keywords = (Parsers::KeywordInformationList.parse(map['Keywords']) unless map['Keywords'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class KeywordInformationList
      def self.parse(list)
        list.map do |value|
          Parsers::KeywordInformation.parse(value) unless value.nil?
        end
      end
    end

    class KeywordInformation
      def self.parse(map)
        data = Types::KeywordInformation.new
        data.keyword = map['Keyword']
        data.keyword_message = map['KeywordMessage']
        data.keyword_action = map['KeywordAction']
        return data
      end
    end

    # Operation Parser for DescribeOptOutLists
    class DescribeOptOutLists
      def self.parse(http_resp)
        data = Types::DescribeOptOutListsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.opt_out_lists = (Parsers::OptOutListInformationList.parse(map['OptOutLists']) unless map['OptOutLists'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OptOutListInformationList
      def self.parse(list)
        list.map do |value|
          Parsers::OptOutListInformation.parse(value) unless value.nil?
        end
      end
    end

    class OptOutListInformation
      def self.parse(map)
        data = Types::OptOutListInformation.new
        data.opt_out_list_arn = map['OptOutListArn']
        data.opt_out_list_name = map['OptOutListName']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeOptedOutNumbers
    class DescribeOptedOutNumbers
      def self.parse(http_resp)
        data = Types::DescribeOptedOutNumbersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.opt_out_list_arn = map['OptOutListArn']
        data.opt_out_list_name = map['OptOutListName']
        data.opted_out_numbers = (Parsers::OptedOutNumberInformationList.parse(map['OptedOutNumbers']) unless map['OptedOutNumbers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OptedOutNumberInformationList
      def self.parse(list)
        list.map do |value|
          Parsers::OptedOutNumberInformation.parse(value) unless value.nil?
        end
      end
    end

    class OptedOutNumberInformation
      def self.parse(map)
        data = Types::OptedOutNumberInformation.new
        data.opted_out_number = map['OptedOutNumber']
        data.opted_out_timestamp = Time.at(map['OptedOutTimestamp'].to_i) if map['OptedOutTimestamp']
        data.end_user_opted_out = map['EndUserOptedOut']
        return data
      end
    end

    # Operation Parser for DescribePhoneNumbers
    class DescribePhoneNumbers
      def self.parse(http_resp)
        data = Types::DescribePhoneNumbersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.phone_numbers = (Parsers::PhoneNumberInformationList.parse(map['PhoneNumbers']) unless map['PhoneNumbers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PhoneNumberInformationList
      def self.parse(list)
        list.map do |value|
          Parsers::PhoneNumberInformation.parse(value) unless value.nil?
        end
      end
    end

    class PhoneNumberInformation
      def self.parse(map)
        data = Types::PhoneNumberInformation.new
        data.phone_number_arn = map['PhoneNumberArn']
        data.phone_number_id = map['PhoneNumberId']
        data.phone_number = map['PhoneNumber']
        data.status = map['Status']
        data.iso_country_code = map['IsoCountryCode']
        data.message_type = map['MessageType']
        data.number_capabilities = (Parsers::NumberCapabilityList.parse(map['NumberCapabilities']) unless map['NumberCapabilities'].nil?)
        data.number_type = map['NumberType']
        data.monthly_leasing_price = map['MonthlyLeasingPrice']
        data.two_way_enabled = map['TwoWayEnabled']
        data.two_way_channel_arn = map['TwoWayChannelArn']
        data.self_managed_opt_outs_enabled = map['SelfManagedOptOutsEnabled']
        data.opt_out_list_name = map['OptOutListName']
        data.deletion_protection_enabled = map['DeletionProtectionEnabled']
        data.pool_id = map['PoolId']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        return data
      end
    end

    class NumberCapabilityList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribePools
    class DescribePools
      def self.parse(http_resp)
        data = Types::DescribePoolsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pools = (Parsers::PoolInformationList.parse(map['Pools']) unless map['Pools'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PoolInformationList
      def self.parse(list)
        list.map do |value|
          Parsers::PoolInformation.parse(value) unless value.nil?
        end
      end
    end

    class PoolInformation
      def self.parse(map)
        data = Types::PoolInformation.new
        data.pool_arn = map['PoolArn']
        data.pool_id = map['PoolId']
        data.status = map['Status']
        data.message_type = map['MessageType']
        data.two_way_enabled = map['TwoWayEnabled']
        data.two_way_channel_arn = map['TwoWayChannelArn']
        data.self_managed_opt_outs_enabled = map['SelfManagedOptOutsEnabled']
        data.opt_out_list_name = map['OptOutListName']
        data.shared_routes_enabled = map['SharedRoutesEnabled']
        data.deletion_protection_enabled = map['DeletionProtectionEnabled']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeSenderIds
    class DescribeSenderIds
      def self.parse(http_resp)
        data = Types::DescribeSenderIdsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sender_ids = (Parsers::SenderIdInformationList.parse(map['SenderIds']) unless map['SenderIds'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SenderIdInformationList
      def self.parse(list)
        list.map do |value|
          Parsers::SenderIdInformation.parse(value) unless value.nil?
        end
      end
    end

    class SenderIdInformation
      def self.parse(map)
        data = Types::SenderIdInformation.new
        data.sender_id_arn = map['SenderIdArn']
        data.sender_id = map['SenderId']
        data.iso_country_code = map['IsoCountryCode']
        data.message_types = (Parsers::MessageTypeList.parse(map['MessageTypes']) unless map['MessageTypes'].nil?)
        data.monthly_leasing_price = map['MonthlyLeasingPrice']
        return data
      end
    end

    class MessageTypeList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeSpendLimits
    class DescribeSpendLimits
      def self.parse(http_resp)
        data = Types::DescribeSpendLimitsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.spend_limits = (Parsers::SpendLimitList.parse(map['SpendLimits']) unless map['SpendLimits'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SpendLimitList
      def self.parse(list)
        list.map do |value|
          Parsers::SpendLimit.parse(value) unless value.nil?
        end
      end
    end

    class SpendLimit
      def self.parse(map)
        data = Types::SpendLimit.new
        data.name = map['Name']
        data.enforced_limit = map['EnforcedLimit']
        data.max_limit = map['MaxLimit']
        data.overridden = map['Overridden']
        return data
      end
    end

    # Operation Parser for DisassociateOriginationIdentity
    class DisassociateOriginationIdentity
      def self.parse(http_resp)
        data = Types::DisassociateOriginationIdentityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pool_arn = map['PoolArn']
        data.pool_id = map['PoolId']
        data.origination_identity_arn = map['OriginationIdentityArn']
        data.origination_identity = map['OriginationIdentity']
        data.iso_country_code = map['IsoCountryCode']
        data
      end
    end

    # Operation Parser for ListPoolOriginationIdentities
    class ListPoolOriginationIdentities
      def self.parse(http_resp)
        data = Types::ListPoolOriginationIdentitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pool_arn = map['PoolArn']
        data.pool_id = map['PoolId']
        data.origination_identities = (Parsers::OriginationIdentityMetadataList.parse(map['OriginationIdentities']) unless map['OriginationIdentities'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class OriginationIdentityMetadataList
      def self.parse(list)
        list.map do |value|
          Parsers::OriginationIdentityMetadata.parse(value) unless value.nil?
        end
      end
    end

    class OriginationIdentityMetadata
      def self.parse(map)
        data = Types::OriginationIdentityMetadata.new
        data.origination_identity_arn = map['OriginationIdentityArn']
        data.origination_identity = map['OriginationIdentity']
        data.iso_country_code = map['IsoCountryCode']
        data.number_capabilities = (Parsers::NumberCapabilityList.parse(map['NumberCapabilities']) unless map['NumberCapabilities'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_arn = map['ResourceArn']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for PutKeyword
    class PutKeyword
      def self.parse(http_resp)
        data = Types::PutKeywordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.origination_identity_arn = map['OriginationIdentityArn']
        data.origination_identity = map['OriginationIdentity']
        data.keyword = map['Keyword']
        data.keyword_message = map['KeywordMessage']
        data.keyword_action = map['KeywordAction']
        data
      end
    end

    # Operation Parser for PutOptedOutNumber
    class PutOptedOutNumber
      def self.parse(http_resp)
        data = Types::PutOptedOutNumberOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.opt_out_list_arn = map['OptOutListArn']
        data.opt_out_list_name = map['OptOutListName']
        data.opted_out_number = map['OptedOutNumber']
        data.opted_out_timestamp = Time.at(map['OptedOutTimestamp'].to_i) if map['OptedOutTimestamp']
        data.end_user_opted_out = map['EndUserOptedOut']
        data
      end
    end

    # Operation Parser for ReleasePhoneNumber
    class ReleasePhoneNumber
      def self.parse(http_resp)
        data = Types::ReleasePhoneNumberOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.phone_number_arn = map['PhoneNumberArn']
        data.phone_number_id = map['PhoneNumberId']
        data.phone_number = map['PhoneNumber']
        data.status = map['Status']
        data.iso_country_code = map['IsoCountryCode']
        data.message_type = map['MessageType']
        data.number_capabilities = (Parsers::NumberCapabilityList.parse(map['NumberCapabilities']) unless map['NumberCapabilities'].nil?)
        data.number_type = map['NumberType']
        data.monthly_leasing_price = map['MonthlyLeasingPrice']
        data.two_way_enabled = map['TwoWayEnabled']
        data.two_way_channel_arn = map['TwoWayChannelArn']
        data.self_managed_opt_outs_enabled = map['SelfManagedOptOutsEnabled']
        data.opt_out_list_name = map['OptOutListName']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data
      end
    end

    # Operation Parser for RequestPhoneNumber
    class RequestPhoneNumber
      def self.parse(http_resp)
        data = Types::RequestPhoneNumberOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.phone_number_arn = map['PhoneNumberArn']
        data.phone_number_id = map['PhoneNumberId']
        data.phone_number = map['PhoneNumber']
        data.status = map['Status']
        data.iso_country_code = map['IsoCountryCode']
        data.message_type = map['MessageType']
        data.number_capabilities = (Parsers::NumberCapabilityList.parse(map['NumberCapabilities']) unless map['NumberCapabilities'].nil?)
        data.number_type = map['NumberType']
        data.monthly_leasing_price = map['MonthlyLeasingPrice']
        data.two_way_enabled = map['TwoWayEnabled']
        data.two_way_channel_arn = map['TwoWayChannelArn']
        data.self_managed_opt_outs_enabled = map['SelfManagedOptOutsEnabled']
        data.opt_out_list_name = map['OptOutListName']
        data.deletion_protection_enabled = map['DeletionProtectionEnabled']
        data.pool_id = map['PoolId']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data
      end
    end

    # Operation Parser for SendTextMessage
    class SendTextMessage
      def self.parse(http_resp)
        data = Types::SendTextMessageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message_id = map['MessageId']
        data
      end
    end

    # Operation Parser for SendVoiceMessage
    class SendVoiceMessage
      def self.parse(http_resp)
        data = Types::SendVoiceMessageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message_id = map['MessageId']
        data
      end
    end

    # Operation Parser for SetDefaultMessageType
    class SetDefaultMessageType
      def self.parse(http_resp)
        data = Types::SetDefaultMessageTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_set_arn = map['ConfigurationSetArn']
        data.configuration_set_name = map['ConfigurationSetName']
        data.message_type = map['MessageType']
        data
      end
    end

    # Operation Parser for SetDefaultSenderId
    class SetDefaultSenderId
      def self.parse(http_resp)
        data = Types::SetDefaultSenderIdOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_set_arn = map['ConfigurationSetArn']
        data.configuration_set_name = map['ConfigurationSetName']
        data.sender_id = map['SenderId']
        data
      end
    end

    # Operation Parser for SetTextMessageSpendLimitOverride
    class SetTextMessageSpendLimitOverride
      def self.parse(http_resp)
        data = Types::SetTextMessageSpendLimitOverrideOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.monthly_limit = map['MonthlyLimit']
        data
      end
    end

    # Operation Parser for SetVoiceMessageSpendLimitOverride
    class SetVoiceMessageSpendLimitOverride
      def self.parse(http_resp)
        data = Types::SetVoiceMessageSpendLimitOverrideOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.monthly_limit = map['MonthlyLimit']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateEventDestination
    class UpdateEventDestination
      def self.parse(http_resp)
        data = Types::UpdateEventDestinationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_set_arn = map['ConfigurationSetArn']
        data.configuration_set_name = map['ConfigurationSetName']
        data.event_destination = (Parsers::EventDestination.parse(map['EventDestination']) unless map['EventDestination'].nil?)
        data
      end
    end

    # Operation Parser for UpdatePhoneNumber
    class UpdatePhoneNumber
      def self.parse(http_resp)
        data = Types::UpdatePhoneNumberOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.phone_number_arn = map['PhoneNumberArn']
        data.phone_number_id = map['PhoneNumberId']
        data.phone_number = map['PhoneNumber']
        data.status = map['Status']
        data.iso_country_code = map['IsoCountryCode']
        data.message_type = map['MessageType']
        data.number_capabilities = (Parsers::NumberCapabilityList.parse(map['NumberCapabilities']) unless map['NumberCapabilities'].nil?)
        data.number_type = map['NumberType']
        data.monthly_leasing_price = map['MonthlyLeasingPrice']
        data.two_way_enabled = map['TwoWayEnabled']
        data.two_way_channel_arn = map['TwoWayChannelArn']
        data.self_managed_opt_outs_enabled = map['SelfManagedOptOutsEnabled']
        data.opt_out_list_name = map['OptOutListName']
        data.deletion_protection_enabled = map['DeletionProtectionEnabled']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data
      end
    end

    # Operation Parser for UpdatePool
    class UpdatePool
      def self.parse(http_resp)
        data = Types::UpdatePoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pool_arn = map['PoolArn']
        data.pool_id = map['PoolId']
        data.status = map['Status']
        data.message_type = map['MessageType']
        data.two_way_enabled = map['TwoWayEnabled']
        data.two_way_channel_arn = map['TwoWayChannelArn']
        data.self_managed_opt_outs_enabled = map['SelfManagedOptOutsEnabled']
        data.opt_out_list_name = map['OptOutListName']
        data.shared_routes_enabled = map['SharedRoutesEnabled']
        data.deletion_protection_enabled = map['DeletionProtectionEnabled']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data
      end
    end
  end
end
