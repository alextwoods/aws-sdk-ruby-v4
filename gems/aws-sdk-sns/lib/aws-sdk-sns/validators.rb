# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SNS
  module Validators

    class ActionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AddPermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddPermissionInput, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Validators::DelegatesList.validate!(input[:aws_account_id], context: "#{context}[:aws_account_id]") unless input[:aws_account_id].nil?
        Validators::ActionsList.validate!(input[:action_name], context: "#{context}[:action_name]") unless input[:action_name].nil?
      end
    end

    class AddPermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddPermissionOutput, context: context)
      end
    end

    class AuthorizationErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchEntryIdsNotDistinctException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchEntryIdsNotDistinctException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchRequestTooLongException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchRequestTooLongException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchResultErrorEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchResultErrorEntry, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:sender_fault], ::TrueClass, ::FalseClass, context: "#{context}[:sender_fault]")
      end
    end

    class BatchResultErrorEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchResultErrorEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CheckIfPhoneNumberIsOptedOutInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckIfPhoneNumberIsOptedOutInput, context: context)
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
      end
    end

    class CheckIfPhoneNumberIsOptedOutOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckIfPhoneNumberIsOptedOutOutput, context: context)
        Hearth::Validator.validate!(input[:is_opted_out], ::TrueClass, ::FalseClass, context: "#{context}[:is_opted_out]")
      end
    end

    class ConcurrentAccessException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentAccessException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConfirmSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
        Hearth::Validator.validate!(input[:authenticate_on_unsubscribe], ::String, context: "#{context}[:authenticate_on_unsubscribe]")
      end
    end

    class ConfirmSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmSubscriptionOutput, context: context)
        Hearth::Validator.validate!(input[:subscription_arn], ::String, context: "#{context}[:subscription_arn]")
      end
    end

    class CreatePlatformApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePlatformApplicationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        Validators::MapStringToString.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class CreatePlatformApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePlatformApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:platform_application_arn], ::String, context: "#{context}[:platform_application_arn]")
      end
    end

    class CreatePlatformEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePlatformEndpointInput, context: context)
        Hearth::Validator.validate!(input[:platform_application_arn], ::String, context: "#{context}[:platform_application_arn]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
        Hearth::Validator.validate!(input[:custom_user_data], ::String, context: "#{context}[:custom_user_data]")
        Validators::MapStringToString.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class CreatePlatformEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePlatformEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
      end
    end

    class CreateSMSSandboxPhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSMSSandboxPhoneNumberInput, context: context)
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class CreateSMSSandboxPhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSMSSandboxPhoneNumberOutput, context: context)
      end
    end

    class CreateTopicInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTopicInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::TopicAttributesMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateTopicOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTopicOutput, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class DelegatesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeleteEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
      end
    end

    class DeleteEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointOutput, context: context)
      end
    end

    class DeletePlatformApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePlatformApplicationInput, context: context)
        Hearth::Validator.validate!(input[:platform_application_arn], ::String, context: "#{context}[:platform_application_arn]")
      end
    end

    class DeletePlatformApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePlatformApplicationOutput, context: context)
      end
    end

    class DeleteSMSSandboxPhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSMSSandboxPhoneNumberInput, context: context)
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
      end
    end

    class DeleteSMSSandboxPhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSMSSandboxPhoneNumberOutput, context: context)
      end
    end

    class DeleteTopicInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTopicInput, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class DeleteTopicOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTopicOutput, context: context)
      end
    end

    class EmptyBatchRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmptyBatchRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Endpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Endpoint, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
        Validators::MapStringToString.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class EndpointDisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointDisabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FilterPolicyLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterPolicyLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetEndpointAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEndpointAttributesInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
      end
    end

    class GetEndpointAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEndpointAttributesOutput, context: context)
        Validators::MapStringToString.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class GetPlatformApplicationAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPlatformApplicationAttributesInput, context: context)
        Hearth::Validator.validate!(input[:platform_application_arn], ::String, context: "#{context}[:platform_application_arn]")
      end
    end

    class GetPlatformApplicationAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPlatformApplicationAttributesOutput, context: context)
        Validators::MapStringToString.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class GetSMSAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSMSAttributesInput, context: context)
        Validators::ListString.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class GetSMSAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSMSAttributesOutput, context: context)
        Validators::MapStringToString.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class GetSMSSandboxAccountStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSMSSandboxAccountStatusInput, context: context)
      end
    end

    class GetSMSSandboxAccountStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSMSSandboxAccountStatusOutput, context: context)
        Hearth::Validator.validate!(input[:is_in_sandbox], ::TrueClass, ::FalseClass, context: "#{context}[:is_in_sandbox]")
      end
    end

    class GetSubscriptionAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSubscriptionAttributesInput, context: context)
        Hearth::Validator.validate!(input[:subscription_arn], ::String, context: "#{context}[:subscription_arn]")
      end
    end

    class GetSubscriptionAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSubscriptionAttributesOutput, context: context)
        Validators::SubscriptionAttributesMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class GetTopicAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTopicAttributesInput, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class GetTopicAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTopicAttributesOutput, context: context)
        Validators::TopicAttributesMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class InternalErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidBatchEntryIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidBatchEntryIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSecurityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSecurityException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSAccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSAccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSDisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSDisabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSInvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSInvalidStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSOptInRequired
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSOptInRequired, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListEndpointsByPlatformApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEndpointsByPlatformApplicationInput, context: context)
        Hearth::Validator.validate!(input[:platform_application_arn], ::String, context: "#{context}[:platform_application_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEndpointsByPlatformApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEndpointsByPlatformApplicationOutput, context: context)
        Validators::ListOfEndpoints.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfEndpoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Endpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfPlatformApplications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PlatformApplication.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOriginationNumbersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOriginationNumbersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListOriginationNumbersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOriginationNumbersOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::PhoneNumberInformationList.validate!(input[:phone_numbers], context: "#{context}[:phone_numbers]") unless input[:phone_numbers].nil?
      end
    end

    class ListPhoneNumbersOptedOutInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPhoneNumbersOptedOutInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPhoneNumbersOptedOutOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPhoneNumbersOptedOutOutput, context: context)
        Validators::PhoneNumberList.validate!(input[:phone_numbers], context: "#{context}[:phone_numbers]") unless input[:phone_numbers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPlatformApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPlatformApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPlatformApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPlatformApplicationsOutput, context: context)
        Validators::ListOfPlatformApplications.validate!(input[:platform_applications], context: "#{context}[:platform_applications]") unless input[:platform_applications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSMSSandboxPhoneNumbersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSMSSandboxPhoneNumbersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSMSSandboxPhoneNumbersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSMSSandboxPhoneNumbersOutput, context: context)
        Validators::SMSSandboxPhoneNumberList.validate!(input[:phone_numbers], context: "#{context}[:phone_numbers]") unless input[:phone_numbers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListString
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListSubscriptionsByTopicInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSubscriptionsByTopicInput, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSubscriptionsByTopicOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSubscriptionsByTopicOutput, context: context)
        Validators::SubscriptionsList.validate!(input[:subscriptions], context: "#{context}[:subscriptions]") unless input[:subscriptions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSubscriptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSubscriptionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSubscriptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSubscriptionsOutput, context: context)
        Validators::SubscriptionsList.validate!(input[:subscriptions], context: "#{context}[:subscriptions]") unless input[:subscriptions].nil?
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
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTopicsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTopicsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTopicsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTopicsOutput, context: context)
        Validators::TopicsList.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MapStringToString
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class MessageAttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::MessageAttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MessageAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageAttributeValue, context: context)
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:string_value], ::String, context: "#{context}[:string_value]")
        Hearth::Validator.validate!(input[:binary_value], ::String, context: "#{context}[:binary_value]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class OptInPhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptInPhoneNumberInput, context: context)
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
      end
    end

    class OptInPhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptInPhoneNumberOutput, context: context)
      end
    end

    class OptedOutException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptedOutException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PhoneNumberInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhoneNumberInformation, context: context)
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:iso2_country_code], ::String, context: "#{context}[:iso2_country_code]")
        Hearth::Validator.validate!(input[:route_type], ::String, context: "#{context}[:route_type]")
        Validators::NumberCapabilityList.validate!(input[:number_capabilities], context: "#{context}[:number_capabilities]") unless input[:number_capabilities].nil?
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

    class PhoneNumberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PlatformApplication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlatformApplication, context: context)
        Hearth::Validator.validate!(input[:platform_application_arn], ::String, context: "#{context}[:platform_application_arn]")
        Validators::MapStringToString.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class PlatformApplicationDisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlatformApplicationDisabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PublishBatchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishBatchInput, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Validators::PublishBatchRequestEntryList.validate!(input[:publish_batch_request_entries], context: "#{context}[:publish_batch_request_entries]") unless input[:publish_batch_request_entries].nil?
      end
    end

    class PublishBatchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishBatchOutput, context: context)
        Validators::PublishBatchResultEntryList.validate!(input[:successful], context: "#{context}[:successful]") unless input[:successful].nil?
        Validators::BatchResultErrorEntryList.validate!(input[:failed], context: "#{context}[:failed]") unless input[:failed].nil?
      end
    end

    class PublishBatchRequestEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishBatchRequestEntry, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:message_structure], ::String, context: "#{context}[:message_structure]")
        Validators::MessageAttributeMap.validate!(input[:message_attributes], context: "#{context}[:message_attributes]") unless input[:message_attributes].nil?
        Hearth::Validator.validate!(input[:message_deduplication_id], ::String, context: "#{context}[:message_deduplication_id]")
        Hearth::Validator.validate!(input[:message_group_id], ::String, context: "#{context}[:message_group_id]")
      end
    end

    class PublishBatchRequestEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PublishBatchRequestEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PublishBatchResultEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishBatchResultEntry, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:sequence_number], ::String, context: "#{context}[:sequence_number]")
      end
    end

    class PublishBatchResultEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PublishBatchResultEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PublishInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishInput, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:message_structure], ::String, context: "#{context}[:message_structure]")
        Validators::MessageAttributeMap.validate!(input[:message_attributes], context: "#{context}[:message_attributes]") unless input[:message_attributes].nil?
        Hearth::Validator.validate!(input[:message_deduplication_id], ::String, context: "#{context}[:message_deduplication_id]")
        Hearth::Validator.validate!(input[:message_group_id], ::String, context: "#{context}[:message_group_id]")
      end
    end

    class PublishOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishOutput, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:sequence_number], ::String, context: "#{context}[:sequence_number]")
      end
    end

    class RemovePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemovePermissionInput, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
      end
    end

    class RemovePermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemovePermissionOutput, context: context)
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SMSSandboxPhoneNumber
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SMSSandboxPhoneNumber, context: context)
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class SMSSandboxPhoneNumberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SMSSandboxPhoneNumber.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SetEndpointAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetEndpointAttributesInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
        Validators::MapStringToString.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class SetEndpointAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetEndpointAttributesOutput, context: context)
      end
    end

    class SetPlatformApplicationAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetPlatformApplicationAttributesInput, context: context)
        Hearth::Validator.validate!(input[:platform_application_arn], ::String, context: "#{context}[:platform_application_arn]")
        Validators::MapStringToString.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class SetPlatformApplicationAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetPlatformApplicationAttributesOutput, context: context)
      end
    end

    class SetSMSAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetSMSAttributesInput, context: context)
        Validators::MapStringToString.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class SetSMSAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetSMSAttributesOutput, context: context)
      end
    end

    class SetSubscriptionAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetSubscriptionAttributesInput, context: context)
        Hearth::Validator.validate!(input[:subscription_arn], ::String, context: "#{context}[:subscription_arn]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:attribute_value], ::String, context: "#{context}[:attribute_value]")
      end
    end

    class SetSubscriptionAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetSubscriptionAttributesOutput, context: context)
      end
    end

    class SetTopicAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTopicAttributesInput, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:attribute_value], ::String, context: "#{context}[:attribute_value]")
      end
    end

    class SetTopicAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTopicAttributesOutput, context: context)
      end
    end

    class StaleTagException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StaleTagException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubscribeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscribeInput, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Validators::SubscriptionAttributesMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:return_subscription_arn], ::TrueClass, ::FalseClass, context: "#{context}[:return_subscription_arn]")
      end
    end

    class SubscribeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscribeOutput, context: context)
        Hearth::Validator.validate!(input[:subscription_arn], ::String, context: "#{context}[:subscription_arn]")
      end
    end

    class Subscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Subscription, context: context)
        Hearth::Validator.validate!(input[:subscription_arn], ::String, context: "#{context}[:subscription_arn]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class SubscriptionAttributesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class SubscriptionLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscriptionLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubscriptionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Subscription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class TagLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class TagPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyEntriesInBatchRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyEntriesInBatchRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Topic
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Topic, context: context)
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class TopicAttributesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TopicLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TopicLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TopicsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Topic.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnsubscribeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsubscribeInput, context: context)
        Hearth::Validator.validate!(input[:subscription_arn], ::String, context: "#{context}[:subscription_arn]")
      end
    end

    class UnsubscribeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsubscribeOutput, context: context)
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

    class UserErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class VerificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class VerifySMSSandboxPhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifySMSSandboxPhoneNumberInput, context: context)
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:one_time_password], ::String, context: "#{context}[:one_time_password]")
      end
    end

    class VerifySMSSandboxPhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifySMSSandboxPhoneNumberOutput, context: context)
      end
    end

  end
end
