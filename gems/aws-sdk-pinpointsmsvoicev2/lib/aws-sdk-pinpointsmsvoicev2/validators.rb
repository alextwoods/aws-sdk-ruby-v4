# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PinpointSMSVoiceV2
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class AccountAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountAttribute, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AccountAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccountAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccountLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountLimit, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:used], ::Integer, context: "#{context}[:used]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class AccountLimitList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AccountLimit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociateOriginationIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateOriginationIdentityInput, context: context)
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:origination_identity], ::String, context: "#{context}[:origination_identity]")
        Hearth::Validator.validate!(input[:iso_country_code], ::String, context: "#{context}[:iso_country_code]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class AssociateOriginationIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateOriginationIdentityOutput, context: context)
        Hearth::Validator.validate!(input[:pool_arn], ::String, context: "#{context}[:pool_arn]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:origination_identity_arn], ::String, context: "#{context}[:origination_identity_arn]")
        Hearth::Validator.validate!(input[:origination_identity], ::String, context: "#{context}[:origination_identity]")
        Hearth::Validator.validate!(input[:iso_country_code], ::String, context: "#{context}[:iso_country_code]")
      end
    end

    class CloudWatchLogsDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLogsDestination, context: context)
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:log_group_arn], ::String, context: "#{context}[:log_group_arn]")
      end
    end

    class ConfigurationSetFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationSetFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ConfigurationSetFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConfigurationSetFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigurationSetInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationSetInformation, context: context)
        Hearth::Validator.validate!(input[:configuration_set_arn], ::String, context: "#{context}[:configuration_set_arn]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Validators::EventDestinationList.validate!(input[:event_destinations], context: "#{context}[:event_destinations]") unless input[:event_destinations].nil?
        Hearth::Validator.validate!(input[:default_message_type], ::String, context: "#{context}[:default_message_type]")
        Hearth::Validator.validate!(input[:default_sender_id], ::String, context: "#{context}[:default_sender_id]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class ConfigurationSetInformationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConfigurationSetInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigurationSetNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class ContextMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class CreateConfigurationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateConfigurationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConfigurationSetOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_arn], ::String, context: "#{context}[:configuration_set_arn]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class CreateEventDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventDestinationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
        Validators::EventTypeList.validate!(input[:matching_event_types], context: "#{context}[:matching_event_types]") unless input[:matching_event_types].nil?
        Validators::CloudWatchLogsDestination.validate!(input[:cloud_watch_logs_destination], context: "#{context}[:cloud_watch_logs_destination]") unless input[:cloud_watch_logs_destination].nil?
        Validators::KinesisFirehoseDestination.validate!(input[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless input[:kinesis_firehose_destination].nil?
        Validators::SnsDestination.validate!(input[:sns_destination], context: "#{context}[:sns_destination]") unless input[:sns_destination].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateEventDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventDestinationOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_arn], ::String, context: "#{context}[:configuration_set_arn]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Validators::EventDestination.validate!(input[:event_destination], context: "#{context}[:event_destination]") unless input[:event_destination].nil?
      end
    end

    class CreateOptOutListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOptOutListInput, context: context)
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateOptOutListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOptOutListOutput, context: context)
        Hearth::Validator.validate!(input[:opt_out_list_arn], ::String, context: "#{context}[:opt_out_list_arn]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class CreatePoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePoolInput, context: context)
        Hearth::Validator.validate!(input[:origination_identity], ::String, context: "#{context}[:origination_identity]")
        Hearth::Validator.validate!(input[:iso_country_code], ::String, context: "#{context}[:iso_country_code]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Hearth::Validator.validate!(input[:deletion_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection_enabled]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreatePoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePoolOutput, context: context)
        Hearth::Validator.validate!(input[:pool_arn], ::String, context: "#{context}[:pool_arn]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Hearth::Validator.validate!(input[:two_way_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:two_way_enabled]")
        Hearth::Validator.validate!(input[:two_way_channel_arn], ::String, context: "#{context}[:two_way_channel_arn]")
        Hearth::Validator.validate!(input[:self_managed_opt_outs_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:self_managed_opt_outs_enabled]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:shared_routes_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:shared_routes_enabled]")
        Hearth::Validator.validate!(input[:deletion_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection_enabled]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
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
        Hearth::Validator.validate!(input[:configuration_set_arn], ::String, context: "#{context}[:configuration_set_arn]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Validators::EventDestinationList.validate!(input[:event_destinations], context: "#{context}[:event_destinations]") unless input[:event_destinations].nil?
        Hearth::Validator.validate!(input[:default_message_type], ::String, context: "#{context}[:default_message_type]")
        Hearth::Validator.validate!(input[:default_sender_id], ::String, context: "#{context}[:default_sender_id]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class DeleteDefaultMessageTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDefaultMessageTypeInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class DeleteDefaultMessageTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDefaultMessageTypeOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_arn], ::String, context: "#{context}[:configuration_set_arn]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
      end
    end

    class DeleteDefaultSenderIdInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDefaultSenderIdInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
      end
    end

    class DeleteDefaultSenderIdOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDefaultSenderIdOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_arn], ::String, context: "#{context}[:configuration_set_arn]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:sender_id], ::String, context: "#{context}[:sender_id]")
      end
    end

    class DeleteEventDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventDestinationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
      end
    end

    class DeleteEventDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventDestinationOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_arn], ::String, context: "#{context}[:configuration_set_arn]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Validators::EventDestination.validate!(input[:event_destination], context: "#{context}[:event_destination]") unless input[:event_destination].nil?
      end
    end

    class DeleteKeywordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKeywordInput, context: context)
        Hearth::Validator.validate!(input[:origination_identity], ::String, context: "#{context}[:origination_identity]")
        Hearth::Validator.validate!(input[:keyword], ::String, context: "#{context}[:keyword]")
      end
    end

    class DeleteKeywordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKeywordOutput, context: context)
        Hearth::Validator.validate!(input[:origination_identity_arn], ::String, context: "#{context}[:origination_identity_arn]")
        Hearth::Validator.validate!(input[:origination_identity], ::String, context: "#{context}[:origination_identity]")
        Hearth::Validator.validate!(input[:keyword], ::String, context: "#{context}[:keyword]")
        Hearth::Validator.validate!(input[:keyword_message], ::String, context: "#{context}[:keyword_message]")
        Hearth::Validator.validate!(input[:keyword_action], ::String, context: "#{context}[:keyword_action]")
      end
    end

    class DeleteOptOutListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOptOutListInput, context: context)
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
      end
    end

    class DeleteOptOutListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOptOutListOutput, context: context)
        Hearth::Validator.validate!(input[:opt_out_list_arn], ::String, context: "#{context}[:opt_out_list_arn]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class DeleteOptedOutNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOptedOutNumberInput, context: context)
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:opted_out_number], ::String, context: "#{context}[:opted_out_number]")
      end
    end

    class DeleteOptedOutNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOptedOutNumberOutput, context: context)
        Hearth::Validator.validate!(input[:opt_out_list_arn], ::String, context: "#{context}[:opt_out_list_arn]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:opted_out_number], ::String, context: "#{context}[:opted_out_number]")
        Hearth::Validator.validate!(input[:opted_out_timestamp], ::Time, context: "#{context}[:opted_out_timestamp]")
        Hearth::Validator.validate!(input[:end_user_opted_out], ::TrueClass, ::FalseClass, context: "#{context}[:end_user_opted_out]")
      end
    end

    class DeletePoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePoolInput, context: context)
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
      end
    end

    class DeletePoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePoolOutput, context: context)
        Hearth::Validator.validate!(input[:pool_arn], ::String, context: "#{context}[:pool_arn]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Hearth::Validator.validate!(input[:two_way_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:two_way_enabled]")
        Hearth::Validator.validate!(input[:two_way_channel_arn], ::String, context: "#{context}[:two_way_channel_arn]")
        Hearth::Validator.validate!(input[:self_managed_opt_outs_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:self_managed_opt_outs_enabled]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:shared_routes_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:shared_routes_enabled]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class DeleteTextMessageSpendLimitOverrideInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTextMessageSpendLimitOverrideInput, context: context)
      end
    end

    class DeleteTextMessageSpendLimitOverrideOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTextMessageSpendLimitOverrideOutput, context: context)
        Hearth::Validator.validate!(input[:monthly_limit], ::Integer, context: "#{context}[:monthly_limit]")
      end
    end

    class DeleteVoiceMessageSpendLimitOverrideInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceMessageSpendLimitOverrideInput, context: context)
      end
    end

    class DeleteVoiceMessageSpendLimitOverrideOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceMessageSpendLimitOverrideOutput, context: context)
        Hearth::Validator.validate!(input[:monthly_limit], ::Integer, context: "#{context}[:monthly_limit]")
      end
    end

    class DescribeAccountAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAttributesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeAccountAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountAttributesOutput, context: context)
        Validators::AccountAttributeList.validate!(input[:account_attributes], context: "#{context}[:account_attributes]") unless input[:account_attributes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAccountLimitsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountLimitsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeAccountLimitsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountLimitsOutput, context: context)
        Validators::AccountLimitList.validate!(input[:account_limits], context: "#{context}[:account_limits]") unless input[:account_limits].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConfigurationSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationSetsInput, context: context)
        Validators::ConfigurationSetNameList.validate!(input[:configuration_set_names], context: "#{context}[:configuration_set_names]") unless input[:configuration_set_names].nil?
        Validators::ConfigurationSetFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeConfigurationSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationSetsOutput, context: context)
        Validators::ConfigurationSetInformationList.validate!(input[:configuration_sets], context: "#{context}[:configuration_sets]") unless input[:configuration_sets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeKeywordsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeKeywordsInput, context: context)
        Hearth::Validator.validate!(input[:origination_identity], ::String, context: "#{context}[:origination_identity]")
        Validators::KeywordList.validate!(input[:keywords], context: "#{context}[:keywords]") unless input[:keywords].nil?
        Validators::KeywordFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeKeywordsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeKeywordsOutput, context: context)
        Hearth::Validator.validate!(input[:origination_identity_arn], ::String, context: "#{context}[:origination_identity_arn]")
        Hearth::Validator.validate!(input[:origination_identity], ::String, context: "#{context}[:origination_identity]")
        Validators::KeywordInformationList.validate!(input[:keywords], context: "#{context}[:keywords]") unless input[:keywords].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeOptOutListsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOptOutListsInput, context: context)
        Validators::OptOutListNameList.validate!(input[:opt_out_list_names], context: "#{context}[:opt_out_list_names]") unless input[:opt_out_list_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeOptOutListsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOptOutListsOutput, context: context)
        Validators::OptOutListInformationList.validate!(input[:opt_out_lists], context: "#{context}[:opt_out_lists]") unless input[:opt_out_lists].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeOptedOutNumbersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOptedOutNumbersInput, context: context)
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Validators::OptedOutNumberList.validate!(input[:opted_out_numbers], context: "#{context}[:opted_out_numbers]") unless input[:opted_out_numbers].nil?
        Validators::OptedOutFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeOptedOutNumbersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOptedOutNumbersOutput, context: context)
        Hearth::Validator.validate!(input[:opt_out_list_arn], ::String, context: "#{context}[:opt_out_list_arn]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Validators::OptedOutNumberInformationList.validate!(input[:opted_out_numbers], context: "#{context}[:opted_out_numbers]") unless input[:opted_out_numbers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePhoneNumbersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePhoneNumbersInput, context: context)
        Validators::PhoneNumberIdList.validate!(input[:phone_number_ids], context: "#{context}[:phone_number_ids]") unless input[:phone_number_ids].nil?
        Validators::PhoneNumberFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribePhoneNumbersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePhoneNumbersOutput, context: context)
        Validators::PhoneNumberInformationList.validate!(input[:phone_numbers], context: "#{context}[:phone_numbers]") unless input[:phone_numbers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePoolsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePoolsInput, context: context)
        Validators::PoolIdList.validate!(input[:pool_ids], context: "#{context}[:pool_ids]") unless input[:pool_ids].nil?
        Validators::PoolFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribePoolsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePoolsOutput, context: context)
        Validators::PoolInformationList.validate!(input[:pools], context: "#{context}[:pools]") unless input[:pools].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSenderIdsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSenderIdsInput, context: context)
        Validators::SenderIdList.validate!(input[:sender_ids], context: "#{context}[:sender_ids]") unless input[:sender_ids].nil?
        Validators::SenderIdFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeSenderIdsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSenderIdsOutput, context: context)
        Validators::SenderIdInformationList.validate!(input[:sender_ids], context: "#{context}[:sender_ids]") unless input[:sender_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSpendLimitsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSpendLimitsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeSpendLimitsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSpendLimitsOutput, context: context)
        Validators::SpendLimitList.validate!(input[:spend_limits], context: "#{context}[:spend_limits]") unless input[:spend_limits].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DestinationCountryParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DisassociateOriginationIdentityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateOriginationIdentityInput, context: context)
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:origination_identity], ::String, context: "#{context}[:origination_identity]")
        Hearth::Validator.validate!(input[:iso_country_code], ::String, context: "#{context}[:iso_country_code]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DisassociateOriginationIdentityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateOriginationIdentityOutput, context: context)
        Hearth::Validator.validate!(input[:pool_arn], ::String, context: "#{context}[:pool_arn]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:origination_identity_arn], ::String, context: "#{context}[:origination_identity_arn]")
        Hearth::Validator.validate!(input[:origination_identity], ::String, context: "#{context}[:origination_identity]")
        Hearth::Validator.validate!(input[:iso_country_code], ::String, context: "#{context}[:iso_country_code]")
      end
    end

    class EventDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventDestination, context: context)
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::EventTypeList.validate!(input[:matching_event_types], context: "#{context}[:matching_event_types]") unless input[:matching_event_types].nil?
        Validators::CloudWatchLogsDestination.validate!(input[:cloud_watch_logs_destination], context: "#{context}[:cloud_watch_logs_destination]") unless input[:cloud_watch_logs_destination].nil?
        Validators::KinesisFirehoseDestination.validate!(input[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless input[:kinesis_firehose_destination].nil?
        Validators::SnsDestination.validate!(input[:sns_destination], context: "#{context}[:sns_destination]") unless input[:sns_destination].nil?
      end
    end

    class EventDestinationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class KeywordFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeywordFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class KeywordFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::KeywordFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KeywordInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeywordInformation, context: context)
        Hearth::Validator.validate!(input[:keyword], ::String, context: "#{context}[:keyword]")
        Hearth::Validator.validate!(input[:keyword_message], ::String, context: "#{context}[:keyword_message]")
        Hearth::Validator.validate!(input[:keyword_action], ::String, context: "#{context}[:keyword_action]")
      end
    end

    class KeywordInformationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::KeywordInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KeywordList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class KinesisFirehoseDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisFirehoseDestination, context: context)
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:delivery_stream_arn], ::String, context: "#{context}[:delivery_stream_arn]")
      end
    end

    class ListPoolOriginationIdentitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPoolOriginationIdentitiesInput, context: context)
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Validators::PoolOriginationIdentitiesFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPoolOriginationIdentitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPoolOriginationIdentitiesOutput, context: context)
        Hearth::Validator.validate!(input[:pool_arn], ::String, context: "#{context}[:pool_arn]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Validators::OriginationIdentityMetadataList.validate!(input[:origination_identities], context: "#{context}[:origination_identities]") unless input[:origination_identities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MessageTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NonEmptyTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NumberCapabilityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OptOutListInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptOutListInformation, context: context)
        Hearth::Validator.validate!(input[:opt_out_list_arn], ::String, context: "#{context}[:opt_out_list_arn]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class OptOutListInformationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OptOutListInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OptOutListNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OptedOutFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptedOutFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class OptedOutFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OptedOutFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OptedOutNumberInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptedOutNumberInformation, context: context)
        Hearth::Validator.validate!(input[:opted_out_number], ::String, context: "#{context}[:opted_out_number]")
        Hearth::Validator.validate!(input[:opted_out_timestamp], ::Time, context: "#{context}[:opted_out_timestamp]")
        Hearth::Validator.validate!(input[:end_user_opted_out], ::TrueClass, ::FalseClass, context: "#{context}[:end_user_opted_out]")
      end
    end

    class OptedOutNumberInformationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OptedOutNumberInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OptedOutNumberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OriginationIdentityMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginationIdentityMetadata, context: context)
        Hearth::Validator.validate!(input[:origination_identity_arn], ::String, context: "#{context}[:origination_identity_arn]")
        Hearth::Validator.validate!(input[:origination_identity], ::String, context: "#{context}[:origination_identity]")
        Hearth::Validator.validate!(input[:iso_country_code], ::String, context: "#{context}[:iso_country_code]")
        Validators::NumberCapabilityList.validate!(input[:number_capabilities], context: "#{context}[:number_capabilities]") unless input[:number_capabilities].nil?
      end
    end

    class OriginationIdentityMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OriginationIdentityMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PhoneNumberFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhoneNumberFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class PhoneNumberFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PhoneNumberFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PhoneNumberIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PhoneNumberInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhoneNumberInformation, context: context)
        Hearth::Validator.validate!(input[:phone_number_arn], ::String, context: "#{context}[:phone_number_arn]")
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:iso_country_code], ::String, context: "#{context}[:iso_country_code]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Validators::NumberCapabilityList.validate!(input[:number_capabilities], context: "#{context}[:number_capabilities]") unless input[:number_capabilities].nil?
        Hearth::Validator.validate!(input[:number_type], ::String, context: "#{context}[:number_type]")
        Hearth::Validator.validate!(input[:monthly_leasing_price], ::String, context: "#{context}[:monthly_leasing_price]")
        Hearth::Validator.validate!(input[:two_way_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:two_way_enabled]")
        Hearth::Validator.validate!(input[:two_way_channel_arn], ::String, context: "#{context}[:two_way_channel_arn]")
        Hearth::Validator.validate!(input[:self_managed_opt_outs_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:self_managed_opt_outs_enabled]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:deletion_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection_enabled]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class PhoneNumberInformationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PhoneNumberInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PoolFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PoolFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class PoolFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PoolFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PoolIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PoolInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PoolInformation, context: context)
        Hearth::Validator.validate!(input[:pool_arn], ::String, context: "#{context}[:pool_arn]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Hearth::Validator.validate!(input[:two_way_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:two_way_enabled]")
        Hearth::Validator.validate!(input[:two_way_channel_arn], ::String, context: "#{context}[:two_way_channel_arn]")
        Hearth::Validator.validate!(input[:self_managed_opt_outs_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:self_managed_opt_outs_enabled]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:shared_routes_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:shared_routes_enabled]")
        Hearth::Validator.validate!(input[:deletion_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection_enabled]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class PoolInformationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PoolInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PoolOriginationIdentitiesFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PoolOriginationIdentitiesFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class PoolOriginationIdentitiesFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PoolOriginationIdentitiesFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutKeywordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutKeywordInput, context: context)
        Hearth::Validator.validate!(input[:origination_identity], ::String, context: "#{context}[:origination_identity]")
        Hearth::Validator.validate!(input[:keyword], ::String, context: "#{context}[:keyword]")
        Hearth::Validator.validate!(input[:keyword_message], ::String, context: "#{context}[:keyword_message]")
        Hearth::Validator.validate!(input[:keyword_action], ::String, context: "#{context}[:keyword_action]")
      end
    end

    class PutKeywordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutKeywordOutput, context: context)
        Hearth::Validator.validate!(input[:origination_identity_arn], ::String, context: "#{context}[:origination_identity_arn]")
        Hearth::Validator.validate!(input[:origination_identity], ::String, context: "#{context}[:origination_identity]")
        Hearth::Validator.validate!(input[:keyword], ::String, context: "#{context}[:keyword]")
        Hearth::Validator.validate!(input[:keyword_message], ::String, context: "#{context}[:keyword_message]")
        Hearth::Validator.validate!(input[:keyword_action], ::String, context: "#{context}[:keyword_action]")
      end
    end

    class PutOptedOutNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutOptedOutNumberInput, context: context)
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:opted_out_number], ::String, context: "#{context}[:opted_out_number]")
      end
    end

    class PutOptedOutNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutOptedOutNumberOutput, context: context)
        Hearth::Validator.validate!(input[:opt_out_list_arn], ::String, context: "#{context}[:opt_out_list_arn]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:opted_out_number], ::String, context: "#{context}[:opted_out_number]")
        Hearth::Validator.validate!(input[:opted_out_timestamp], ::Time, context: "#{context}[:opted_out_timestamp]")
        Hearth::Validator.validate!(input[:end_user_opted_out], ::TrueClass, ::FalseClass, context: "#{context}[:end_user_opted_out]")
      end
    end

    class ReleasePhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReleasePhoneNumberInput, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
      end
    end

    class ReleasePhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReleasePhoneNumberOutput, context: context)
        Hearth::Validator.validate!(input[:phone_number_arn], ::String, context: "#{context}[:phone_number_arn]")
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:iso_country_code], ::String, context: "#{context}[:iso_country_code]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Validators::NumberCapabilityList.validate!(input[:number_capabilities], context: "#{context}[:number_capabilities]") unless input[:number_capabilities].nil?
        Hearth::Validator.validate!(input[:number_type], ::String, context: "#{context}[:number_type]")
        Hearth::Validator.validate!(input[:monthly_leasing_price], ::String, context: "#{context}[:monthly_leasing_price]")
        Hearth::Validator.validate!(input[:two_way_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:two_way_enabled]")
        Hearth::Validator.validate!(input[:two_way_channel_arn], ::String, context: "#{context}[:two_way_channel_arn]")
        Hearth::Validator.validate!(input[:self_managed_opt_outs_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:self_managed_opt_outs_enabled]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class RequestPhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestPhoneNumberInput, context: context)
        Hearth::Validator.validate!(input[:iso_country_code], ::String, context: "#{context}[:iso_country_code]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Validators::NumberCapabilityList.validate!(input[:number_capabilities], context: "#{context}[:number_capabilities]") unless input[:number_capabilities].nil?
        Hearth::Validator.validate!(input[:number_type], ::String, context: "#{context}[:number_type]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:registration_id], ::String, context: "#{context}[:registration_id]")
        Hearth::Validator.validate!(input[:deletion_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection_enabled]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class RequestPhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestPhoneNumberOutput, context: context)
        Hearth::Validator.validate!(input[:phone_number_arn], ::String, context: "#{context}[:phone_number_arn]")
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:iso_country_code], ::String, context: "#{context}[:iso_country_code]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Validators::NumberCapabilityList.validate!(input[:number_capabilities], context: "#{context}[:number_capabilities]") unless input[:number_capabilities].nil?
        Hearth::Validator.validate!(input[:number_type], ::String, context: "#{context}[:number_type]")
        Hearth::Validator.validate!(input[:monthly_leasing_price], ::String, context: "#{context}[:monthly_leasing_price]")
        Hearth::Validator.validate!(input[:two_way_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:two_way_enabled]")
        Hearth::Validator.validate!(input[:two_way_channel_arn], ::String, context: "#{context}[:two_way_channel_arn]")
        Hearth::Validator.validate!(input[:self_managed_opt_outs_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:self_managed_opt_outs_enabled]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:deletion_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection_enabled]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class SendTextMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendTextMessageInput, context: context)
        Hearth::Validator.validate!(input[:destination_phone_number], ::String, context: "#{context}[:destination_phone_number]")
        Hearth::Validator.validate!(input[:origination_identity], ::String, context: "#{context}[:origination_identity]")
        Hearth::Validator.validate!(input[:message_body], ::String, context: "#{context}[:message_body]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Hearth::Validator.validate!(input[:keyword], ::String, context: "#{context}[:keyword]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:max_price], ::String, context: "#{context}[:max_price]")
        Hearth::Validator.validate!(input[:time_to_live], ::Integer, context: "#{context}[:time_to_live]")
        Validators::ContextMap.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
        Validators::DestinationCountryParameters.validate!(input[:destination_country_parameters], context: "#{context}[:destination_country_parameters]") unless input[:destination_country_parameters].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class SendTextMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendTextMessageOutput, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class SendVoiceMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendVoiceMessageInput, context: context)
        Hearth::Validator.validate!(input[:destination_phone_number], ::String, context: "#{context}[:destination_phone_number]")
        Hearth::Validator.validate!(input[:origination_identity], ::String, context: "#{context}[:origination_identity]")
        Hearth::Validator.validate!(input[:message_body], ::String, context: "#{context}[:message_body]")
        Hearth::Validator.validate!(input[:message_body_text_type], ::String, context: "#{context}[:message_body_text_type]")
        Hearth::Validator.validate!(input[:voice_id], ::String, context: "#{context}[:voice_id]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:max_price_per_minute], ::String, context: "#{context}[:max_price_per_minute]")
        Hearth::Validator.validate!(input[:time_to_live], ::Integer, context: "#{context}[:time_to_live]")
        Validators::ContextMap.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class SendVoiceMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendVoiceMessageOutput, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class SenderIdAndCountry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SenderIdAndCountry, context: context)
        Hearth::Validator.validate!(input[:sender_id], ::String, context: "#{context}[:sender_id]")
        Hearth::Validator.validate!(input[:iso_country_code], ::String, context: "#{context}[:iso_country_code]")
      end
    end

    class SenderIdFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SenderIdFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class SenderIdFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SenderIdFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SenderIdInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SenderIdInformation, context: context)
        Hearth::Validator.validate!(input[:sender_id_arn], ::String, context: "#{context}[:sender_id_arn]")
        Hearth::Validator.validate!(input[:sender_id], ::String, context: "#{context}[:sender_id]")
        Hearth::Validator.validate!(input[:iso_country_code], ::String, context: "#{context}[:iso_country_code]")
        Validators::MessageTypeList.validate!(input[:message_types], context: "#{context}[:message_types]") unless input[:message_types].nil?
        Hearth::Validator.validate!(input[:monthly_leasing_price], ::String, context: "#{context}[:monthly_leasing_price]")
      end
    end

    class SenderIdInformationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SenderIdInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SenderIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SenderIdAndCountry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class SetDefaultMessageTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetDefaultMessageTypeInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
      end
    end

    class SetDefaultMessageTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetDefaultMessageTypeOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_arn], ::String, context: "#{context}[:configuration_set_arn]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
      end
    end

    class SetDefaultSenderIdInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetDefaultSenderIdInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:sender_id], ::String, context: "#{context}[:sender_id]")
      end
    end

    class SetDefaultSenderIdOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetDefaultSenderIdOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_arn], ::String, context: "#{context}[:configuration_set_arn]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:sender_id], ::String, context: "#{context}[:sender_id]")
      end
    end

    class SetTextMessageSpendLimitOverrideInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTextMessageSpendLimitOverrideInput, context: context)
        Hearth::Validator.validate!(input[:monthly_limit], ::Integer, context: "#{context}[:monthly_limit]")
      end
    end

    class SetTextMessageSpendLimitOverrideOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTextMessageSpendLimitOverrideOutput, context: context)
        Hearth::Validator.validate!(input[:monthly_limit], ::Integer, context: "#{context}[:monthly_limit]")
      end
    end

    class SetVoiceMessageSpendLimitOverrideInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetVoiceMessageSpendLimitOverrideInput, context: context)
        Hearth::Validator.validate!(input[:monthly_limit], ::Integer, context: "#{context}[:monthly_limit]")
      end
    end

    class SetVoiceMessageSpendLimitOverrideOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetVoiceMessageSpendLimitOverrideOutput, context: context)
        Hearth::Validator.validate!(input[:monthly_limit], ::Integer, context: "#{context}[:monthly_limit]")
      end
    end

    class SnsDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnsDestination, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class SpendLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpendLimit, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:enforced_limit], ::Integer, context: "#{context}[:enforced_limit]")
        Hearth::Validator.validate!(input[:max_limit], ::Integer, context: "#{context}[:max_limit]")
        Hearth::Validator.validate!(input[:overridden], ::TrueClass, ::FalseClass, context: "#{context}[:overridden]")
      end
    end

    class SpendLimitList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SpendLimit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::NonEmptyTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateEventDestinationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventDestinationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Hearth::Validator.validate!(input[:event_destination_name], ::String, context: "#{context}[:event_destination_name]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::EventTypeList.validate!(input[:matching_event_types], context: "#{context}[:matching_event_types]") unless input[:matching_event_types].nil?
        Validators::CloudWatchLogsDestination.validate!(input[:cloud_watch_logs_destination], context: "#{context}[:cloud_watch_logs_destination]") unless input[:cloud_watch_logs_destination].nil?
        Validators::KinesisFirehoseDestination.validate!(input[:kinesis_firehose_destination], context: "#{context}[:kinesis_firehose_destination]") unless input[:kinesis_firehose_destination].nil?
        Validators::SnsDestination.validate!(input[:sns_destination], context: "#{context}[:sns_destination]") unless input[:sns_destination].nil?
      end
    end

    class UpdateEventDestinationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventDestinationOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_set_arn], ::String, context: "#{context}[:configuration_set_arn]")
        Hearth::Validator.validate!(input[:configuration_set_name], ::String, context: "#{context}[:configuration_set_name]")
        Validators::EventDestination.validate!(input[:event_destination], context: "#{context}[:event_destination]") unless input[:event_destination].nil?
      end
    end

    class UpdatePhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePhoneNumberInput, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:two_way_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:two_way_enabled]")
        Hearth::Validator.validate!(input[:two_way_channel_arn], ::String, context: "#{context}[:two_way_channel_arn]")
        Hearth::Validator.validate!(input[:self_managed_opt_outs_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:self_managed_opt_outs_enabled]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:deletion_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection_enabled]")
      end
    end

    class UpdatePhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePhoneNumberOutput, context: context)
        Hearth::Validator.validate!(input[:phone_number_arn], ::String, context: "#{context}[:phone_number_arn]")
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:iso_country_code], ::String, context: "#{context}[:iso_country_code]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Validators::NumberCapabilityList.validate!(input[:number_capabilities], context: "#{context}[:number_capabilities]") unless input[:number_capabilities].nil?
        Hearth::Validator.validate!(input[:number_type], ::String, context: "#{context}[:number_type]")
        Hearth::Validator.validate!(input[:monthly_leasing_price], ::String, context: "#{context}[:monthly_leasing_price]")
        Hearth::Validator.validate!(input[:two_way_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:two_way_enabled]")
        Hearth::Validator.validate!(input[:two_way_channel_arn], ::String, context: "#{context}[:two_way_channel_arn]")
        Hearth::Validator.validate!(input[:self_managed_opt_outs_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:self_managed_opt_outs_enabled]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:deletion_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection_enabled]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class UpdatePoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePoolInput, context: context)
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:two_way_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:two_way_enabled]")
        Hearth::Validator.validate!(input[:two_way_channel_arn], ::String, context: "#{context}[:two_way_channel_arn]")
        Hearth::Validator.validate!(input[:self_managed_opt_outs_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:self_managed_opt_outs_enabled]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:shared_routes_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:shared_routes_enabled]")
        Hearth::Validator.validate!(input[:deletion_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection_enabled]")
      end
    end

    class UpdatePoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePoolOutput, context: context)
        Hearth::Validator.validate!(input[:pool_arn], ::String, context: "#{context}[:pool_arn]")
        Hearth::Validator.validate!(input[:pool_id], ::String, context: "#{context}[:pool_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Hearth::Validator.validate!(input[:two_way_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:two_way_enabled]")
        Hearth::Validator.validate!(input[:two_way_channel_arn], ::String, context: "#{context}[:two_way_channel_arn]")
        Hearth::Validator.validate!(input[:self_managed_opt_outs_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:self_managed_opt_outs_enabled]")
        Hearth::Validator.validate!(input[:opt_out_list_name], ::String, context: "#{context}[:opt_out_list_name]")
        Hearth::Validator.validate!(input[:shared_routes_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:shared_routes_enabled]")
        Hearth::Validator.validate!(input[:deletion_protection_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:deletion_protection_enabled]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
