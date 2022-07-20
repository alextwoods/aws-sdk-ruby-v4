# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::PinpointSMSVoiceV2
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module AccountAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountAttribute, context: context)
        type = Types::AccountAttribute.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module AccountAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccountLimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountLimit, context: context)
        type = Types::AccountLimit.new
        type.name = params[:name]
        type.used = params[:used]
        type.max = params[:max]
        type
      end
    end

    module AccountLimitList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountLimit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociateOriginationIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateOriginationIdentityInput, context: context)
        type = Types::AssociateOriginationIdentityInput.new
        type.pool_id = params[:pool_id]
        type.origination_identity = params[:origination_identity]
        type.iso_country_code = params[:iso_country_code]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module AssociateOriginationIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateOriginationIdentityOutput, context: context)
        type = Types::AssociateOriginationIdentityOutput.new
        type.pool_arn = params[:pool_arn]
        type.pool_id = params[:pool_id]
        type.origination_identity_arn = params[:origination_identity_arn]
        type.origination_identity = params[:origination_identity]
        type.iso_country_code = params[:iso_country_code]
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

    module ConfigurationSetFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationSetFilter, context: context)
        type = Types::ConfigurationSetFilter.new
        type.name = params[:name]
        type.values = FilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ConfigurationSetFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationSetFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfigurationSetInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationSetInformation, context: context)
        type = Types::ConfigurationSetInformation.new
        type.configuration_set_arn = params[:configuration_set_arn]
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destinations = EventDestinationList.build(params[:event_destinations], context: "#{context}[:event_destinations]") unless params[:event_destinations].nil?
        type.default_message_type = params[:default_message_type]
        type.default_sender_id = params[:default_sender_id]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module ConfigurationSetInformationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationSetInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfigurationSetNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module ContextMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module CreateConfigurationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetInput, context: context)
        type = Types::CreateConfigurationSetInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateConfigurationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConfigurationSetOutput, context: context)
        type = Types::CreateConfigurationSetOutput.new
        type.configuration_set_arn = params[:configuration_set_arn]
        type.configuration_set_name = params[:configuration_set_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module CreateEventDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventDestinationInput, context: context)
        type = Types::CreateEventDestinationInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination_name = params[:event_destination_name]
        type.matching_event_types = EventTypeList.build(params[:matching_event_types], context: "#{context}[:matching_event_types]") unless params[:matching_event_types].nil?
        type.cloud_watch_logs_destination = CloudWatchLogsDestination.build(params[:cloud_watch_logs_destination], context: "#{context}[:cloud_watch_logs_destination]") unless params[:cloud_watch_logs_destination].nil?
        type.kinesis_firehose_destination = KinesisFirehoseDestination.build(params[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless params[:kinesis_firehose_destination].nil?
        type.sns_destination = SnsDestination.build(params[:sns_destination], context: "#{context}[:sns_destination]") unless params[:sns_destination].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateEventDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventDestinationOutput, context: context)
        type = Types::CreateEventDestinationOutput.new
        type.configuration_set_arn = params[:configuration_set_arn]
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination = EventDestination.build(params[:event_destination], context: "#{context}[:event_destination]") unless params[:event_destination].nil?
        type
      end
    end

    module CreateOptOutListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOptOutListInput, context: context)
        type = Types::CreateOptOutListInput.new
        type.opt_out_list_name = params[:opt_out_list_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateOptOutListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOptOutListOutput, context: context)
        type = Types::CreateOptOutListOutput.new
        type.opt_out_list_arn = params[:opt_out_list_arn]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module CreatePoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePoolInput, context: context)
        type = Types::CreatePoolInput.new
        type.origination_identity = params[:origination_identity]
        type.iso_country_code = params[:iso_country_code]
        type.message_type = params[:message_type]
        type.deletion_protection_enabled = params[:deletion_protection_enabled]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreatePoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePoolOutput, context: context)
        type = Types::CreatePoolOutput.new
        type.pool_arn = params[:pool_arn]
        type.pool_id = params[:pool_id]
        type.status = params[:status]
        type.message_type = params[:message_type]
        type.two_way_enabled = params[:two_way_enabled]
        type.two_way_channel_arn = params[:two_way_channel_arn]
        type.self_managed_opt_outs_enabled = params[:self_managed_opt_outs_enabled]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.shared_routes_enabled = params[:shared_routes_enabled]
        type.deletion_protection_enabled = params[:deletion_protection_enabled]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.created_timestamp = params[:created_timestamp]
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
        type.configuration_set_arn = params[:configuration_set_arn]
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destinations = EventDestinationList.build(params[:event_destinations], context: "#{context}[:event_destinations]") unless params[:event_destinations].nil?
        type.default_message_type = params[:default_message_type]
        type.default_sender_id = params[:default_sender_id]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module DeleteDefaultMessageTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDefaultMessageTypeInput, context: context)
        type = Types::DeleteDefaultMessageTypeInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module DeleteDefaultMessageTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDefaultMessageTypeOutput, context: context)
        type = Types::DeleteDefaultMessageTypeOutput.new
        type.configuration_set_arn = params[:configuration_set_arn]
        type.configuration_set_name = params[:configuration_set_name]
        type.message_type = params[:message_type]
        type
      end
    end

    module DeleteDefaultSenderIdInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDefaultSenderIdInput, context: context)
        type = Types::DeleteDefaultSenderIdInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type
      end
    end

    module DeleteDefaultSenderIdOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDefaultSenderIdOutput, context: context)
        type = Types::DeleteDefaultSenderIdOutput.new
        type.configuration_set_arn = params[:configuration_set_arn]
        type.configuration_set_name = params[:configuration_set_name]
        type.sender_id = params[:sender_id]
        type
      end
    end

    module DeleteEventDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventDestinationInput, context: context)
        type = Types::DeleteEventDestinationInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination_name = params[:event_destination_name]
        type
      end
    end

    module DeleteEventDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventDestinationOutput, context: context)
        type = Types::DeleteEventDestinationOutput.new
        type.configuration_set_arn = params[:configuration_set_arn]
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination = EventDestination.build(params[:event_destination], context: "#{context}[:event_destination]") unless params[:event_destination].nil?
        type
      end
    end

    module DeleteKeywordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteKeywordInput, context: context)
        type = Types::DeleteKeywordInput.new
        type.origination_identity = params[:origination_identity]
        type.keyword = params[:keyword]
        type
      end
    end

    module DeleteKeywordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteKeywordOutput, context: context)
        type = Types::DeleteKeywordOutput.new
        type.origination_identity_arn = params[:origination_identity_arn]
        type.origination_identity = params[:origination_identity]
        type.keyword = params[:keyword]
        type.keyword_message = params[:keyword_message]
        type.keyword_action = params[:keyword_action]
        type
      end
    end

    module DeleteOptOutListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOptOutListInput, context: context)
        type = Types::DeleteOptOutListInput.new
        type.opt_out_list_name = params[:opt_out_list_name]
        type
      end
    end

    module DeleteOptOutListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOptOutListOutput, context: context)
        type = Types::DeleteOptOutListOutput.new
        type.opt_out_list_arn = params[:opt_out_list_arn]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module DeleteOptedOutNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOptedOutNumberInput, context: context)
        type = Types::DeleteOptedOutNumberInput.new
        type.opt_out_list_name = params[:opt_out_list_name]
        type.opted_out_number = params[:opted_out_number]
        type
      end
    end

    module DeleteOptedOutNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOptedOutNumberOutput, context: context)
        type = Types::DeleteOptedOutNumberOutput.new
        type.opt_out_list_arn = params[:opt_out_list_arn]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.opted_out_number = params[:opted_out_number]
        type.opted_out_timestamp = params[:opted_out_timestamp]
        type.end_user_opted_out = params[:end_user_opted_out]
        type
      end
    end

    module DeletePoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePoolInput, context: context)
        type = Types::DeletePoolInput.new
        type.pool_id = params[:pool_id]
        type
      end
    end

    module DeletePoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePoolOutput, context: context)
        type = Types::DeletePoolOutput.new
        type.pool_arn = params[:pool_arn]
        type.pool_id = params[:pool_id]
        type.status = params[:status]
        type.message_type = params[:message_type]
        type.two_way_enabled = params[:two_way_enabled]
        type.two_way_channel_arn = params[:two_way_channel_arn]
        type.self_managed_opt_outs_enabled = params[:self_managed_opt_outs_enabled]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.shared_routes_enabled = params[:shared_routes_enabled]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module DeleteTextMessageSpendLimitOverrideInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTextMessageSpendLimitOverrideInput, context: context)
        type = Types::DeleteTextMessageSpendLimitOverrideInput.new
        type
      end
    end

    module DeleteTextMessageSpendLimitOverrideOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTextMessageSpendLimitOverrideOutput, context: context)
        type = Types::DeleteTextMessageSpendLimitOverrideOutput.new
        type.monthly_limit = params[:monthly_limit]
        type
      end
    end

    module DeleteVoiceMessageSpendLimitOverrideInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceMessageSpendLimitOverrideInput, context: context)
        type = Types::DeleteVoiceMessageSpendLimitOverrideInput.new
        type
      end
    end

    module DeleteVoiceMessageSpendLimitOverrideOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceMessageSpendLimitOverrideOutput, context: context)
        type = Types::DeleteVoiceMessageSpendLimitOverrideOutput.new
        type.monthly_limit = params[:monthly_limit]
        type
      end
    end

    module DescribeAccountAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAttributesInput, context: context)
        type = Types::DescribeAccountAttributesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeAccountAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountAttributesOutput, context: context)
        type = Types::DescribeAccountAttributesOutput.new
        type.account_attributes = AccountAttributeList.build(params[:account_attributes], context: "#{context}[:account_attributes]") unless params[:account_attributes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAccountLimitsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountLimitsInput, context: context)
        type = Types::DescribeAccountLimitsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeAccountLimitsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountLimitsOutput, context: context)
        type = Types::DescribeAccountLimitsOutput.new
        type.account_limits = AccountLimitList.build(params[:account_limits], context: "#{context}[:account_limits]") unless params[:account_limits].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConfigurationSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationSetsInput, context: context)
        type = Types::DescribeConfigurationSetsInput.new
        type.configuration_set_names = ConfigurationSetNameList.build(params[:configuration_set_names], context: "#{context}[:configuration_set_names]") unless params[:configuration_set_names].nil?
        type.filters = ConfigurationSetFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeConfigurationSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationSetsOutput, context: context)
        type = Types::DescribeConfigurationSetsOutput.new
        type.configuration_sets = ConfigurationSetInformationList.build(params[:configuration_sets], context: "#{context}[:configuration_sets]") unless params[:configuration_sets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeKeywordsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeKeywordsInput, context: context)
        type = Types::DescribeKeywordsInput.new
        type.origination_identity = params[:origination_identity]
        type.keywords = KeywordList.build(params[:keywords], context: "#{context}[:keywords]") unless params[:keywords].nil?
        type.filters = KeywordFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeKeywordsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeKeywordsOutput, context: context)
        type = Types::DescribeKeywordsOutput.new
        type.origination_identity_arn = params[:origination_identity_arn]
        type.origination_identity = params[:origination_identity]
        type.keywords = KeywordInformationList.build(params[:keywords], context: "#{context}[:keywords]") unless params[:keywords].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeOptOutListsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOptOutListsInput, context: context)
        type = Types::DescribeOptOutListsInput.new
        type.opt_out_list_names = OptOutListNameList.build(params[:opt_out_list_names], context: "#{context}[:opt_out_list_names]") unless params[:opt_out_list_names].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeOptOutListsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOptOutListsOutput, context: context)
        type = Types::DescribeOptOutListsOutput.new
        type.opt_out_lists = OptOutListInformationList.build(params[:opt_out_lists], context: "#{context}[:opt_out_lists]") unless params[:opt_out_lists].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeOptedOutNumbersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOptedOutNumbersInput, context: context)
        type = Types::DescribeOptedOutNumbersInput.new
        type.opt_out_list_name = params[:opt_out_list_name]
        type.opted_out_numbers = OptedOutNumberList.build(params[:opted_out_numbers], context: "#{context}[:opted_out_numbers]") unless params[:opted_out_numbers].nil?
        type.filters = OptedOutFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeOptedOutNumbersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOptedOutNumbersOutput, context: context)
        type = Types::DescribeOptedOutNumbersOutput.new
        type.opt_out_list_arn = params[:opt_out_list_arn]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.opted_out_numbers = OptedOutNumberInformationList.build(params[:opted_out_numbers], context: "#{context}[:opted_out_numbers]") unless params[:opted_out_numbers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePhoneNumbersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePhoneNumbersInput, context: context)
        type = Types::DescribePhoneNumbersInput.new
        type.phone_number_ids = PhoneNumberIdList.build(params[:phone_number_ids], context: "#{context}[:phone_number_ids]") unless params[:phone_number_ids].nil?
        type.filters = PhoneNumberFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribePhoneNumbersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePhoneNumbersOutput, context: context)
        type = Types::DescribePhoneNumbersOutput.new
        type.phone_numbers = PhoneNumberInformationList.build(params[:phone_numbers], context: "#{context}[:phone_numbers]") unless params[:phone_numbers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePoolsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePoolsInput, context: context)
        type = Types::DescribePoolsInput.new
        type.pool_ids = PoolIdList.build(params[:pool_ids], context: "#{context}[:pool_ids]") unless params[:pool_ids].nil?
        type.filters = PoolFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribePoolsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePoolsOutput, context: context)
        type = Types::DescribePoolsOutput.new
        type.pools = PoolInformationList.build(params[:pools], context: "#{context}[:pools]") unless params[:pools].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSenderIdsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSenderIdsInput, context: context)
        type = Types::DescribeSenderIdsInput.new
        type.sender_ids = SenderIdList.build(params[:sender_ids], context: "#{context}[:sender_ids]") unless params[:sender_ids].nil?
        type.filters = SenderIdFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeSenderIdsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSenderIdsOutput, context: context)
        type = Types::DescribeSenderIdsOutput.new
        type.sender_ids = SenderIdInformationList.build(params[:sender_ids], context: "#{context}[:sender_ids]") unless params[:sender_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSpendLimitsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSpendLimitsInput, context: context)
        type = Types::DescribeSpendLimitsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeSpendLimitsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSpendLimitsOutput, context: context)
        type = Types::DescribeSpendLimitsOutput.new
        type.spend_limits = SpendLimitList.build(params[:spend_limits], context: "#{context}[:spend_limits]") unless params[:spend_limits].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DestinationCountryParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DisassociateOriginationIdentityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateOriginationIdentityInput, context: context)
        type = Types::DisassociateOriginationIdentityInput.new
        type.pool_id = params[:pool_id]
        type.origination_identity = params[:origination_identity]
        type.iso_country_code = params[:iso_country_code]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DisassociateOriginationIdentityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateOriginationIdentityOutput, context: context)
        type = Types::DisassociateOriginationIdentityOutput.new
        type.pool_arn = params[:pool_arn]
        type.pool_id = params[:pool_id]
        type.origination_identity_arn = params[:origination_identity_arn]
        type.origination_identity = params[:origination_identity]
        type.iso_country_code = params[:iso_country_code]
        type
      end
    end

    module EventDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventDestination, context: context)
        type = Types::EventDestination.new
        type.event_destination_name = params[:event_destination_name]
        type.enabled = params[:enabled]
        type.matching_event_types = EventTypeList.build(params[:matching_event_types], context: "#{context}[:matching_event_types]") unless params[:matching_event_types].nil?
        type.cloud_watch_logs_destination = CloudWatchLogsDestination.build(params[:cloud_watch_logs_destination], context: "#{context}[:cloud_watch_logs_destination]") unless params[:cloud_watch_logs_destination].nil?
        type.kinesis_firehose_destination = KinesisFirehoseDestination.build(params[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless params[:kinesis_firehose_destination].nil?
        type.sns_destination = SnsDestination.build(params[:sns_destination], context: "#{context}[:sns_destination]") unless params[:sns_destination].nil?
        type
      end
    end

    module EventDestinationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventDestination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module KeywordFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeywordFilter, context: context)
        type = Types::KeywordFilter.new
        type.name = params[:name]
        type.values = FilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module KeywordFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeywordFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KeywordInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeywordInformation, context: context)
        type = Types::KeywordInformation.new
        type.keyword = params[:keyword]
        type.keyword_message = params[:keyword_message]
        type.keyword_action = params[:keyword_action]
        type
      end
    end

    module KeywordInformationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeywordInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KeywordList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module KinesisFirehoseDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisFirehoseDestination, context: context)
        type = Types::KinesisFirehoseDestination.new
        type.iam_role_arn = params[:iam_role_arn]
        type.delivery_stream_arn = params[:delivery_stream_arn]
        type
      end
    end

    module ListPoolOriginationIdentitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPoolOriginationIdentitiesInput, context: context)
        type = Types::ListPoolOriginationIdentitiesInput.new
        type.pool_id = params[:pool_id]
        type.filters = PoolOriginationIdentitiesFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPoolOriginationIdentitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPoolOriginationIdentitiesOutput, context: context)
        type = Types::ListPoolOriginationIdentitiesOutput.new
        type.pool_arn = params[:pool_arn]
        type.pool_id = params[:pool_id]
        type.origination_identities = OriginationIdentityMetadataList.build(params[:origination_identities], context: "#{context}[:origination_identities]") unless params[:origination_identities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MessageTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NonEmptyTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NumberCapabilityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OptOutListInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptOutListInformation, context: context)
        type = Types::OptOutListInformation.new
        type.opt_out_list_arn = params[:opt_out_list_arn]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module OptOutListInformationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OptOutListInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OptOutListNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OptedOutFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptedOutFilter, context: context)
        type = Types::OptedOutFilter.new
        type.name = params[:name]
        type.values = FilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module OptedOutFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OptedOutFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OptedOutNumberInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptedOutNumberInformation, context: context)
        type = Types::OptedOutNumberInformation.new
        type.opted_out_number = params[:opted_out_number]
        type.opted_out_timestamp = params[:opted_out_timestamp]
        type.end_user_opted_out = params[:end_user_opted_out]
        type
      end
    end

    module OptedOutNumberInformationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OptedOutNumberInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OptedOutNumberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OriginationIdentityMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OriginationIdentityMetadata, context: context)
        type = Types::OriginationIdentityMetadata.new
        type.origination_identity_arn = params[:origination_identity_arn]
        type.origination_identity = params[:origination_identity]
        type.iso_country_code = params[:iso_country_code]
        type.number_capabilities = NumberCapabilityList.build(params[:number_capabilities], context: "#{context}[:number_capabilities]") unless params[:number_capabilities].nil?
        type
      end
    end

    module OriginationIdentityMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OriginationIdentityMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PhoneNumberFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhoneNumberFilter, context: context)
        type = Types::PhoneNumberFilter.new
        type.name = params[:name]
        type.values = FilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module PhoneNumberFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PhoneNumberFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PhoneNumberIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PhoneNumberInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhoneNumberInformation, context: context)
        type = Types::PhoneNumberInformation.new
        type.phone_number_arn = params[:phone_number_arn]
        type.phone_number_id = params[:phone_number_id]
        type.phone_number = params[:phone_number]
        type.status = params[:status]
        type.iso_country_code = params[:iso_country_code]
        type.message_type = params[:message_type]
        type.number_capabilities = NumberCapabilityList.build(params[:number_capabilities], context: "#{context}[:number_capabilities]") unless params[:number_capabilities].nil?
        type.number_type = params[:number_type]
        type.monthly_leasing_price = params[:monthly_leasing_price]
        type.two_way_enabled = params[:two_way_enabled]
        type.two_way_channel_arn = params[:two_way_channel_arn]
        type.self_managed_opt_outs_enabled = params[:self_managed_opt_outs_enabled]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.deletion_protection_enabled = params[:deletion_protection_enabled]
        type.pool_id = params[:pool_id]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module PhoneNumberInformationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PhoneNumberInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PoolFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PoolFilter, context: context)
        type = Types::PoolFilter.new
        type.name = params[:name]
        type.values = FilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module PoolFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PoolFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PoolIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PoolInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PoolInformation, context: context)
        type = Types::PoolInformation.new
        type.pool_arn = params[:pool_arn]
        type.pool_id = params[:pool_id]
        type.status = params[:status]
        type.message_type = params[:message_type]
        type.two_way_enabled = params[:two_way_enabled]
        type.two_way_channel_arn = params[:two_way_channel_arn]
        type.self_managed_opt_outs_enabled = params[:self_managed_opt_outs_enabled]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.shared_routes_enabled = params[:shared_routes_enabled]
        type.deletion_protection_enabled = params[:deletion_protection_enabled]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module PoolInformationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PoolInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PoolOriginationIdentitiesFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PoolOriginationIdentitiesFilter, context: context)
        type = Types::PoolOriginationIdentitiesFilter.new
        type.name = params[:name]
        type.values = FilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module PoolOriginationIdentitiesFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PoolOriginationIdentitiesFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutKeywordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutKeywordInput, context: context)
        type = Types::PutKeywordInput.new
        type.origination_identity = params[:origination_identity]
        type.keyword = params[:keyword]
        type.keyword_message = params[:keyword_message]
        type.keyword_action = params[:keyword_action]
        type
      end
    end

    module PutKeywordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutKeywordOutput, context: context)
        type = Types::PutKeywordOutput.new
        type.origination_identity_arn = params[:origination_identity_arn]
        type.origination_identity = params[:origination_identity]
        type.keyword = params[:keyword]
        type.keyword_message = params[:keyword_message]
        type.keyword_action = params[:keyword_action]
        type
      end
    end

    module PutOptedOutNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutOptedOutNumberInput, context: context)
        type = Types::PutOptedOutNumberInput.new
        type.opt_out_list_name = params[:opt_out_list_name]
        type.opted_out_number = params[:opted_out_number]
        type
      end
    end

    module PutOptedOutNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutOptedOutNumberOutput, context: context)
        type = Types::PutOptedOutNumberOutput.new
        type.opt_out_list_arn = params[:opt_out_list_arn]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.opted_out_number = params[:opted_out_number]
        type.opted_out_timestamp = params[:opted_out_timestamp]
        type.end_user_opted_out = params[:end_user_opted_out]
        type
      end
    end

    module ReleasePhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReleasePhoneNumberInput, context: context)
        type = Types::ReleasePhoneNumberInput.new
        type.phone_number_id = params[:phone_number_id]
        type
      end
    end

    module ReleasePhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReleasePhoneNumberOutput, context: context)
        type = Types::ReleasePhoneNumberOutput.new
        type.phone_number_arn = params[:phone_number_arn]
        type.phone_number_id = params[:phone_number_id]
        type.phone_number = params[:phone_number]
        type.status = params[:status]
        type.iso_country_code = params[:iso_country_code]
        type.message_type = params[:message_type]
        type.number_capabilities = NumberCapabilityList.build(params[:number_capabilities], context: "#{context}[:number_capabilities]") unless params[:number_capabilities].nil?
        type.number_type = params[:number_type]
        type.monthly_leasing_price = params[:monthly_leasing_price]
        type.two_way_enabled = params[:two_way_enabled]
        type.two_way_channel_arn = params[:two_way_channel_arn]
        type.self_managed_opt_outs_enabled = params[:self_managed_opt_outs_enabled]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module RequestPhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestPhoneNumberInput, context: context)
        type = Types::RequestPhoneNumberInput.new
        type.iso_country_code = params[:iso_country_code]
        type.message_type = params[:message_type]
        type.number_capabilities = NumberCapabilityList.build(params[:number_capabilities], context: "#{context}[:number_capabilities]") unless params[:number_capabilities].nil?
        type.number_type = params[:number_type]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.pool_id = params[:pool_id]
        type.registration_id = params[:registration_id]
        type.deletion_protection_enabled = params[:deletion_protection_enabled]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module RequestPhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestPhoneNumberOutput, context: context)
        type = Types::RequestPhoneNumberOutput.new
        type.phone_number_arn = params[:phone_number_arn]
        type.phone_number_id = params[:phone_number_id]
        type.phone_number = params[:phone_number]
        type.status = params[:status]
        type.iso_country_code = params[:iso_country_code]
        type.message_type = params[:message_type]
        type.number_capabilities = NumberCapabilityList.build(params[:number_capabilities], context: "#{context}[:number_capabilities]") unless params[:number_capabilities].nil?
        type.number_type = params[:number_type]
        type.monthly_leasing_price = params[:monthly_leasing_price]
        type.two_way_enabled = params[:two_way_enabled]
        type.two_way_channel_arn = params[:two_way_channel_arn]
        type.self_managed_opt_outs_enabled = params[:self_managed_opt_outs_enabled]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.deletion_protection_enabled = params[:deletion_protection_enabled]
        type.pool_id = params[:pool_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module SendTextMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendTextMessageInput, context: context)
        type = Types::SendTextMessageInput.new
        type.destination_phone_number = params[:destination_phone_number]
        type.origination_identity = params[:origination_identity]
        type.message_body = params[:message_body]
        type.message_type = params[:message_type]
        type.keyword = params[:keyword]
        type.configuration_set_name = params[:configuration_set_name]
        type.max_price = params[:max_price]
        type.time_to_live = params[:time_to_live]
        type.context = ContextMap.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type.destination_country_parameters = DestinationCountryParameters.build(params[:destination_country_parameters], context: "#{context}[:destination_country_parameters]") unless params[:destination_country_parameters].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module SendTextMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendTextMessageOutput, context: context)
        type = Types::SendTextMessageOutput.new
        type.message_id = params[:message_id]
        type
      end
    end

    module SendVoiceMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendVoiceMessageInput, context: context)
        type = Types::SendVoiceMessageInput.new
        type.destination_phone_number = params[:destination_phone_number]
        type.origination_identity = params[:origination_identity]
        type.message_body = params[:message_body]
        type.message_body_text_type = params[:message_body_text_type]
        type.voice_id = params[:voice_id]
        type.configuration_set_name = params[:configuration_set_name]
        type.max_price_per_minute = params[:max_price_per_minute]
        type.time_to_live = params[:time_to_live]
        type.context = ContextMap.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type.dry_run = params[:dry_run]
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

    module SenderIdAndCountry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SenderIdAndCountry, context: context)
        type = Types::SenderIdAndCountry.new
        type.sender_id = params[:sender_id]
        type.iso_country_code = params[:iso_country_code]
        type
      end
    end

    module SenderIdFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SenderIdFilter, context: context)
        type = Types::SenderIdFilter.new
        type.name = params[:name]
        type.values = FilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module SenderIdFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SenderIdFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SenderIdInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SenderIdInformation, context: context)
        type = Types::SenderIdInformation.new
        type.sender_id_arn = params[:sender_id_arn]
        type.sender_id = params[:sender_id]
        type.iso_country_code = params[:iso_country_code]
        type.message_types = MessageTypeList.build(params[:message_types], context: "#{context}[:message_types]") unless params[:message_types].nil?
        type.monthly_leasing_price = params[:monthly_leasing_price]
        type
      end
    end

    module SenderIdInformationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SenderIdInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SenderIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SenderIdAndCountry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module SetDefaultMessageTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetDefaultMessageTypeInput, context: context)
        type = Types::SetDefaultMessageTypeInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.message_type = params[:message_type]
        type
      end
    end

    module SetDefaultMessageTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetDefaultMessageTypeOutput, context: context)
        type = Types::SetDefaultMessageTypeOutput.new
        type.configuration_set_arn = params[:configuration_set_arn]
        type.configuration_set_name = params[:configuration_set_name]
        type.message_type = params[:message_type]
        type
      end
    end

    module SetDefaultSenderIdInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetDefaultSenderIdInput, context: context)
        type = Types::SetDefaultSenderIdInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.sender_id = params[:sender_id]
        type
      end
    end

    module SetDefaultSenderIdOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetDefaultSenderIdOutput, context: context)
        type = Types::SetDefaultSenderIdOutput.new
        type.configuration_set_arn = params[:configuration_set_arn]
        type.configuration_set_name = params[:configuration_set_name]
        type.sender_id = params[:sender_id]
        type
      end
    end

    module SetTextMessageSpendLimitOverrideInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTextMessageSpendLimitOverrideInput, context: context)
        type = Types::SetTextMessageSpendLimitOverrideInput.new
        type.monthly_limit = params[:monthly_limit]
        type
      end
    end

    module SetTextMessageSpendLimitOverrideOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTextMessageSpendLimitOverrideOutput, context: context)
        type = Types::SetTextMessageSpendLimitOverrideOutput.new
        type.monthly_limit = params[:monthly_limit]
        type
      end
    end

    module SetVoiceMessageSpendLimitOverrideInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetVoiceMessageSpendLimitOverrideInput, context: context)
        type = Types::SetVoiceMessageSpendLimitOverrideInput.new
        type.monthly_limit = params[:monthly_limit]
        type
      end
    end

    module SetVoiceMessageSpendLimitOverrideOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetVoiceMessageSpendLimitOverrideOutput, context: context)
        type = Types::SetVoiceMessageSpendLimitOverrideOutput.new
        type.monthly_limit = params[:monthly_limit]
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

    module SpendLimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpendLimit, context: context)
        type = Types::SpendLimit.new
        type.name = params[:name]
        type.enforced_limit = params[:enforced_limit]
        type.max_limit = params[:max_limit]
        type.overridden = params[:overridden]
        type
      end
    end

    module SpendLimitList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SpendLimit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = NonEmptyTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateEventDestinationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventDestinationInput, context: context)
        type = Types::UpdateEventDestinationInput.new
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination_name = params[:event_destination_name]
        type.enabled = params[:enabled]
        type.matching_event_types = EventTypeList.build(params[:matching_event_types], context: "#{context}[:matching_event_types]") unless params[:matching_event_types].nil?
        type.cloud_watch_logs_destination = CloudWatchLogsDestination.build(params[:cloud_watch_logs_destination], context: "#{context}[:cloud_watch_logs_destination]") unless params[:cloud_watch_logs_destination].nil?
        type.kinesis_firehose_destination = KinesisFirehoseDestination.build(params[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless params[:kinesis_firehose_destination].nil?
        type.sns_destination = SnsDestination.build(params[:sns_destination], context: "#{context}[:sns_destination]") unless params[:sns_destination].nil?
        type
      end
    end

    module UpdateEventDestinationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventDestinationOutput, context: context)
        type = Types::UpdateEventDestinationOutput.new
        type.configuration_set_arn = params[:configuration_set_arn]
        type.configuration_set_name = params[:configuration_set_name]
        type.event_destination = EventDestination.build(params[:event_destination], context: "#{context}[:event_destination]") unless params[:event_destination].nil?
        type
      end
    end

    module UpdatePhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePhoneNumberInput, context: context)
        type = Types::UpdatePhoneNumberInput.new
        type.phone_number_id = params[:phone_number_id]
        type.two_way_enabled = params[:two_way_enabled]
        type.two_way_channel_arn = params[:two_way_channel_arn]
        type.self_managed_opt_outs_enabled = params[:self_managed_opt_outs_enabled]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.deletion_protection_enabled = params[:deletion_protection_enabled]
        type
      end
    end

    module UpdatePhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePhoneNumberOutput, context: context)
        type = Types::UpdatePhoneNumberOutput.new
        type.phone_number_arn = params[:phone_number_arn]
        type.phone_number_id = params[:phone_number_id]
        type.phone_number = params[:phone_number]
        type.status = params[:status]
        type.iso_country_code = params[:iso_country_code]
        type.message_type = params[:message_type]
        type.number_capabilities = NumberCapabilityList.build(params[:number_capabilities], context: "#{context}[:number_capabilities]") unless params[:number_capabilities].nil?
        type.number_type = params[:number_type]
        type.monthly_leasing_price = params[:monthly_leasing_price]
        type.two_way_enabled = params[:two_way_enabled]
        type.two_way_channel_arn = params[:two_way_channel_arn]
        type.self_managed_opt_outs_enabled = params[:self_managed_opt_outs_enabled]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.deletion_protection_enabled = params[:deletion_protection_enabled]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module UpdatePoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePoolInput, context: context)
        type = Types::UpdatePoolInput.new
        type.pool_id = params[:pool_id]
        type.two_way_enabled = params[:two_way_enabled]
        type.two_way_channel_arn = params[:two_way_channel_arn]
        type.self_managed_opt_outs_enabled = params[:self_managed_opt_outs_enabled]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.shared_routes_enabled = params[:shared_routes_enabled]
        type.deletion_protection_enabled = params[:deletion_protection_enabled]
        type
      end
    end

    module UpdatePoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePoolOutput, context: context)
        type = Types::UpdatePoolOutput.new
        type.pool_arn = params[:pool_arn]
        type.pool_id = params[:pool_id]
        type.status = params[:status]
        type.message_type = params[:message_type]
        type.two_way_enabled = params[:two_way_enabled]
        type.two_way_channel_arn = params[:two_way_channel_arn]
        type.self_managed_opt_outs_enabled = params[:self_managed_opt_outs_enabled]
        type.opt_out_list_name = params[:opt_out_list_name]
        type.shared_routes_enabled = params[:shared_routes_enabled]
        type.deletion_protection_enabled = params[:deletion_protection_enabled]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.fields = ValidationExceptionFieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
