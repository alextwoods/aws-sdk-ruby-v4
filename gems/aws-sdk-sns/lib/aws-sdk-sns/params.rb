# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::SNS
  module Params

    module ActionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AddPermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddPermissionInput, context: context)
        type = Types::AddPermissionInput.new
        type.topic_arn = params[:topic_arn]
        type.label = params[:label]
        type.aws_account_id = DelegatesList.build(params[:aws_account_id], context: "#{context}[:aws_account_id]") unless params[:aws_account_id].nil?
        type.action_name = ActionsList.build(params[:action_name], context: "#{context}[:action_name]") unless params[:action_name].nil?
        type
      end
    end

    module AddPermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddPermissionOutput, context: context)
        type = Types::AddPermissionOutput.new
        type
      end
    end

    module AuthorizationErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizationErrorException, context: context)
        type = Types::AuthorizationErrorException.new
        type.message = params[:message]
        type
      end
    end

    module BatchEntryIdsNotDistinctException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchEntryIdsNotDistinctException, context: context)
        type = Types::BatchEntryIdsNotDistinctException.new
        type.message = params[:message]
        type
      end
    end

    module BatchRequestTooLongException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchRequestTooLongException, context: context)
        type = Types::BatchRequestTooLongException.new
        type.message = params[:message]
        type
      end
    end

    module BatchResultErrorEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchResultErrorEntry, context: context)
        type = Types::BatchResultErrorEntry.new
        type.id = params[:id]
        type.code = params[:code]
        type.message = params[:message]
        type.sender_fault = params[:sender_fault]
        type
      end
    end

    module BatchResultErrorEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchResultErrorEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CheckIfPhoneNumberIsOptedOutInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckIfPhoneNumberIsOptedOutInput, context: context)
        type = Types::CheckIfPhoneNumberIsOptedOutInput.new
        type.phone_number = params[:phone_number]
        type
      end
    end

    module CheckIfPhoneNumberIsOptedOutOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckIfPhoneNumberIsOptedOutOutput, context: context)
        type = Types::CheckIfPhoneNumberIsOptedOutOutput.new
        type.is_opted_out = params[:is_opted_out]
        type
      end
    end

    module ConcurrentAccessException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentAccessException, context: context)
        type = Types::ConcurrentAccessException.new
        type.message = params[:message]
        type
      end
    end

    module ConfirmSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmSubscriptionInput, context: context)
        type = Types::ConfirmSubscriptionInput.new
        type.topic_arn = params[:topic_arn]
        type.token = params[:token]
        type.authenticate_on_unsubscribe = params[:authenticate_on_unsubscribe]
        type
      end
    end

    module ConfirmSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmSubscriptionOutput, context: context)
        type = Types::ConfirmSubscriptionOutput.new
        type.subscription_arn = params[:subscription_arn]
        type
      end
    end

    module CreatePlatformApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePlatformApplicationInput, context: context)
        type = Types::CreatePlatformApplicationInput.new
        type.name = params[:name]
        type.platform = params[:platform]
        type.attributes = MapStringToString.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module CreatePlatformApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePlatformApplicationOutput, context: context)
        type = Types::CreatePlatformApplicationOutput.new
        type.platform_application_arn = params[:platform_application_arn]
        type
      end
    end

    module CreatePlatformEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePlatformEndpointInput, context: context)
        type = Types::CreatePlatformEndpointInput.new
        type.platform_application_arn = params[:platform_application_arn]
        type.token = params[:token]
        type.custom_user_data = params[:custom_user_data]
        type.attributes = MapStringToString.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module CreatePlatformEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePlatformEndpointOutput, context: context)
        type = Types::CreatePlatformEndpointOutput.new
        type.endpoint_arn = params[:endpoint_arn]
        type
      end
    end

    module CreateSMSSandboxPhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSMSSandboxPhoneNumberInput, context: context)
        type = Types::CreateSMSSandboxPhoneNumberInput.new
        type.phone_number = params[:phone_number]
        type.language_code = params[:language_code]
        type
      end
    end

    module CreateSMSSandboxPhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSMSSandboxPhoneNumberOutput, context: context)
        type = Types::CreateSMSSandboxPhoneNumberOutput.new
        type
      end
    end

    module CreateTopicInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTopicInput, context: context)
        type = Types::CreateTopicInput.new
        type.name = params[:name]
        type.attributes = TopicAttributesMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateTopicOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTopicOutput, context: context)
        type = Types::CreateTopicOutput.new
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module DelegatesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeleteEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointInput, context: context)
        type = Types::DeleteEndpointInput.new
        type.endpoint_arn = params[:endpoint_arn]
        type
      end
    end

    module DeleteEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointOutput, context: context)
        type = Types::DeleteEndpointOutput.new
        type
      end
    end

    module DeletePlatformApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePlatformApplicationInput, context: context)
        type = Types::DeletePlatformApplicationInput.new
        type.platform_application_arn = params[:platform_application_arn]
        type
      end
    end

    module DeletePlatformApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePlatformApplicationOutput, context: context)
        type = Types::DeletePlatformApplicationOutput.new
        type
      end
    end

    module DeleteSMSSandboxPhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSMSSandboxPhoneNumberInput, context: context)
        type = Types::DeleteSMSSandboxPhoneNumberInput.new
        type.phone_number = params[:phone_number]
        type
      end
    end

    module DeleteSMSSandboxPhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSMSSandboxPhoneNumberOutput, context: context)
        type = Types::DeleteSMSSandboxPhoneNumberOutput.new
        type
      end
    end

    module DeleteTopicInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTopicInput, context: context)
        type = Types::DeleteTopicInput.new
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module DeleteTopicOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTopicOutput, context: context)
        type = Types::DeleteTopicOutput.new
        type
      end
    end

    module EmptyBatchRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmptyBatchRequestException, context: context)
        type = Types::EmptyBatchRequestException.new
        type.message = params[:message]
        type
      end
    end

    module Endpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Endpoint, context: context)
        type = Types::Endpoint.new
        type.endpoint_arn = params[:endpoint_arn]
        type.attributes = MapStringToString.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module EndpointDisabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointDisabledException, context: context)
        type = Types::EndpointDisabledException.new
        type.message = params[:message]
        type
      end
    end

    module FilterPolicyLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterPolicyLimitExceededException, context: context)
        type = Types::FilterPolicyLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module GetEndpointAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEndpointAttributesInput, context: context)
        type = Types::GetEndpointAttributesInput.new
        type.endpoint_arn = params[:endpoint_arn]
        type
      end
    end

    module GetEndpointAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEndpointAttributesOutput, context: context)
        type = Types::GetEndpointAttributesOutput.new
        type.attributes = MapStringToString.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module GetPlatformApplicationAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPlatformApplicationAttributesInput, context: context)
        type = Types::GetPlatformApplicationAttributesInput.new
        type.platform_application_arn = params[:platform_application_arn]
        type
      end
    end

    module GetPlatformApplicationAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPlatformApplicationAttributesOutput, context: context)
        type = Types::GetPlatformApplicationAttributesOutput.new
        type.attributes = MapStringToString.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module GetSMSAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSMSAttributesInput, context: context)
        type = Types::GetSMSAttributesInput.new
        type.attributes = ListString.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module GetSMSAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSMSAttributesOutput, context: context)
        type = Types::GetSMSAttributesOutput.new
        type.attributes = MapStringToString.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module GetSMSSandboxAccountStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSMSSandboxAccountStatusInput, context: context)
        type = Types::GetSMSSandboxAccountStatusInput.new
        type
      end
    end

    module GetSMSSandboxAccountStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSMSSandboxAccountStatusOutput, context: context)
        type = Types::GetSMSSandboxAccountStatusOutput.new
        type.is_in_sandbox = params[:is_in_sandbox]
        type
      end
    end

    module GetSubscriptionAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSubscriptionAttributesInput, context: context)
        type = Types::GetSubscriptionAttributesInput.new
        type.subscription_arn = params[:subscription_arn]
        type
      end
    end

    module GetSubscriptionAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSubscriptionAttributesOutput, context: context)
        type = Types::GetSubscriptionAttributesOutput.new
        type.attributes = SubscriptionAttributesMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module GetTopicAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTopicAttributesInput, context: context)
        type = Types::GetTopicAttributesInput.new
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module GetTopicAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTopicAttributesOutput, context: context)
        type = Types::GetTopicAttributesOutput.new
        type.attributes = TopicAttributesMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module InternalErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalErrorException, context: context)
        type = Types::InternalErrorException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidBatchEntryIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidBatchEntryIdException, context: context)
        type = Types::InvalidBatchEntryIdException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSecurityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSecurityException, context: context)
        type = Types::InvalidSecurityException.new
        type.message = params[:message]
        type
      end
    end

    module KMSAccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSAccessDeniedException, context: context)
        type = Types::KMSAccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module KMSDisabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSDisabledException, context: context)
        type = Types::KMSDisabledException.new
        type.message = params[:message]
        type
      end
    end

    module KMSInvalidStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSInvalidStateException, context: context)
        type = Types::KMSInvalidStateException.new
        type.message = params[:message]
        type
      end
    end

    module KMSNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSNotFoundException, context: context)
        type = Types::KMSNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module KMSOptInRequired
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSOptInRequired, context: context)
        type = Types::KMSOptInRequired.new
        type.message = params[:message]
        type
      end
    end

    module KMSThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSThrottlingException, context: context)
        type = Types::KMSThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module ListEndpointsByPlatformApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEndpointsByPlatformApplicationInput, context: context)
        type = Types::ListEndpointsByPlatformApplicationInput.new
        type.platform_application_arn = params[:platform_application_arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEndpointsByPlatformApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEndpointsByPlatformApplicationOutput, context: context)
        type = Types::ListEndpointsByPlatformApplicationOutput.new
        type.endpoints = ListOfEndpoints.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfEndpoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Endpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfPlatformApplications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlatformApplication.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOriginationNumbersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOriginationNumbersInput, context: context)
        type = Types::ListOriginationNumbersInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListOriginationNumbersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOriginationNumbersOutput, context: context)
        type = Types::ListOriginationNumbersOutput.new
        type.next_token = params[:next_token]
        type.phone_numbers = PhoneNumberInformationList.build(params[:phone_numbers], context: "#{context}[:phone_numbers]") unless params[:phone_numbers].nil?
        type
      end
    end

    module ListPhoneNumbersOptedOutInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPhoneNumbersOptedOutInput, context: context)
        type = Types::ListPhoneNumbersOptedOutInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPhoneNumbersOptedOutOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPhoneNumbersOptedOutOutput, context: context)
        type = Types::ListPhoneNumbersOptedOutOutput.new
        type.phone_numbers = PhoneNumberList.build(params[:phone_numbers], context: "#{context}[:phone_numbers]") unless params[:phone_numbers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPlatformApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPlatformApplicationsInput, context: context)
        type = Types::ListPlatformApplicationsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPlatformApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPlatformApplicationsOutput, context: context)
        type = Types::ListPlatformApplicationsOutput.new
        type.platform_applications = ListOfPlatformApplications.build(params[:platform_applications], context: "#{context}[:platform_applications]") unless params[:platform_applications].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSMSSandboxPhoneNumbersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSMSSandboxPhoneNumbersInput, context: context)
        type = Types::ListSMSSandboxPhoneNumbersInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSMSSandboxPhoneNumbersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSMSSandboxPhoneNumbersOutput, context: context)
        type = Types::ListSMSSandboxPhoneNumbersOutput.new
        type.phone_numbers = SMSSandboxPhoneNumberList.build(params[:phone_numbers], context: "#{context}[:phone_numbers]") unless params[:phone_numbers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListString
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListSubscriptionsByTopicInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSubscriptionsByTopicInput, context: context)
        type = Types::ListSubscriptionsByTopicInput.new
        type.topic_arn = params[:topic_arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSubscriptionsByTopicOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSubscriptionsByTopicOutput, context: context)
        type = Types::ListSubscriptionsByTopicOutput.new
        type.subscriptions = SubscriptionsList.build(params[:subscriptions], context: "#{context}[:subscriptions]") unless params[:subscriptions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSubscriptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSubscriptionsInput, context: context)
        type = Types::ListSubscriptionsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSubscriptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSubscriptionsOutput, context: context)
        type = Types::ListSubscriptionsOutput.new
        type.subscriptions = SubscriptionsList.build(params[:subscriptions], context: "#{context}[:subscriptions]") unless params[:subscriptions].nil?
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
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTopicsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTopicsInput, context: context)
        type = Types::ListTopicsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTopicsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTopicsOutput, context: context)
        type = Types::ListTopicsOutput.new
        type.topics = TopicsList.build(params[:topics], context: "#{context}[:topics]") unless params[:topics].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MapStringToString
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module MessageAttributeMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = MessageAttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MessageAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageAttributeValue, context: context)
        type = Types::MessageAttributeValue.new
        type.data_type = params[:data_type]
        type.string_value = params[:string_value]
        type.binary_value = params[:binary_value]
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

    module OptInPhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptInPhoneNumberInput, context: context)
        type = Types::OptInPhoneNumberInput.new
        type.phone_number = params[:phone_number]
        type
      end
    end

    module OptInPhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptInPhoneNumberOutput, context: context)
        type = Types::OptInPhoneNumberOutput.new
        type
      end
    end

    module OptedOutException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptedOutException, context: context)
        type = Types::OptedOutException.new
        type.message = params[:message]
        type
      end
    end

    module PhoneNumberInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhoneNumberInformation, context: context)
        type = Types::PhoneNumberInformation.new
        type.created_at = params[:created_at]
        type.phone_number = params[:phone_number]
        type.status = params[:status]
        type.iso2_country_code = params[:iso2_country_code]
        type.route_type = params[:route_type]
        type.number_capabilities = NumberCapabilityList.build(params[:number_capabilities], context: "#{context}[:number_capabilities]") unless params[:number_capabilities].nil?
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

    module PhoneNumberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PlatformApplication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlatformApplication, context: context)
        type = Types::PlatformApplication.new
        type.platform_application_arn = params[:platform_application_arn]
        type.attributes = MapStringToString.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module PlatformApplicationDisabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlatformApplicationDisabledException, context: context)
        type = Types::PlatformApplicationDisabledException.new
        type.message = params[:message]
        type
      end
    end

    module PublishBatchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishBatchInput, context: context)
        type = Types::PublishBatchInput.new
        type.topic_arn = params[:topic_arn]
        type.publish_batch_request_entries = PublishBatchRequestEntryList.build(params[:publish_batch_request_entries], context: "#{context}[:publish_batch_request_entries]") unless params[:publish_batch_request_entries].nil?
        type
      end
    end

    module PublishBatchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishBatchOutput, context: context)
        type = Types::PublishBatchOutput.new
        type.successful = PublishBatchResultEntryList.build(params[:successful], context: "#{context}[:successful]") unless params[:successful].nil?
        type.failed = BatchResultErrorEntryList.build(params[:failed], context: "#{context}[:failed]") unless params[:failed].nil?
        type
      end
    end

    module PublishBatchRequestEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishBatchRequestEntry, context: context)
        type = Types::PublishBatchRequestEntry.new
        type.id = params[:id]
        type.message = params[:message]
        type.subject = params[:subject]
        type.message_structure = params[:message_structure]
        type.message_attributes = MessageAttributeMap.build(params[:message_attributes], context: "#{context}[:message_attributes]") unless params[:message_attributes].nil?
        type.message_deduplication_id = params[:message_deduplication_id]
        type.message_group_id = params[:message_group_id]
        type
      end
    end

    module PublishBatchRequestEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PublishBatchRequestEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PublishBatchResultEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishBatchResultEntry, context: context)
        type = Types::PublishBatchResultEntry.new
        type.id = params[:id]
        type.message_id = params[:message_id]
        type.sequence_number = params[:sequence_number]
        type
      end
    end

    module PublishBatchResultEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PublishBatchResultEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PublishInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishInput, context: context)
        type = Types::PublishInput.new
        type.topic_arn = params[:topic_arn]
        type.target_arn = params[:target_arn]
        type.phone_number = params[:phone_number]
        type.message = params[:message]
        type.subject = params[:subject]
        type.message_structure = params[:message_structure]
        type.message_attributes = MessageAttributeMap.build(params[:message_attributes], context: "#{context}[:message_attributes]") unless params[:message_attributes].nil?
        type.message_deduplication_id = params[:message_deduplication_id]
        type.message_group_id = params[:message_group_id]
        type
      end
    end

    module PublishOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishOutput, context: context)
        type = Types::PublishOutput.new
        type.message_id = params[:message_id]
        type.sequence_number = params[:sequence_number]
        type
      end
    end

    module RemovePermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemovePermissionInput, context: context)
        type = Types::RemovePermissionInput.new
        type.topic_arn = params[:topic_arn]
        type.label = params[:label]
        type
      end
    end

    module RemovePermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemovePermissionOutput, context: context)
        type = Types::RemovePermissionOutput.new
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module SMSSandboxPhoneNumber
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SMSSandboxPhoneNumber, context: context)
        type = Types::SMSSandboxPhoneNumber.new
        type.phone_number = params[:phone_number]
        type.status = params[:status]
        type
      end
    end

    module SMSSandboxPhoneNumberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SMSSandboxPhoneNumber.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SetEndpointAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetEndpointAttributesInput, context: context)
        type = Types::SetEndpointAttributesInput.new
        type.endpoint_arn = params[:endpoint_arn]
        type.attributes = MapStringToString.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module SetEndpointAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetEndpointAttributesOutput, context: context)
        type = Types::SetEndpointAttributesOutput.new
        type
      end
    end

    module SetPlatformApplicationAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetPlatformApplicationAttributesInput, context: context)
        type = Types::SetPlatformApplicationAttributesInput.new
        type.platform_application_arn = params[:platform_application_arn]
        type.attributes = MapStringToString.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module SetPlatformApplicationAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetPlatformApplicationAttributesOutput, context: context)
        type = Types::SetPlatformApplicationAttributesOutput.new
        type
      end
    end

    module SetSMSAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetSMSAttributesInput, context: context)
        type = Types::SetSMSAttributesInput.new
        type.attributes = MapStringToString.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module SetSMSAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetSMSAttributesOutput, context: context)
        type = Types::SetSMSAttributesOutput.new
        type
      end
    end

    module SetSubscriptionAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetSubscriptionAttributesInput, context: context)
        type = Types::SetSubscriptionAttributesInput.new
        type.subscription_arn = params[:subscription_arn]
        type.attribute_name = params[:attribute_name]
        type.attribute_value = params[:attribute_value]
        type
      end
    end

    module SetSubscriptionAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetSubscriptionAttributesOutput, context: context)
        type = Types::SetSubscriptionAttributesOutput.new
        type
      end
    end

    module SetTopicAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTopicAttributesInput, context: context)
        type = Types::SetTopicAttributesInput.new
        type.topic_arn = params[:topic_arn]
        type.attribute_name = params[:attribute_name]
        type.attribute_value = params[:attribute_value]
        type
      end
    end

    module SetTopicAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTopicAttributesOutput, context: context)
        type = Types::SetTopicAttributesOutput.new
        type
      end
    end

    module StaleTagException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StaleTagException, context: context)
        type = Types::StaleTagException.new
        type.message = params[:message]
        type
      end
    end

    module SubscribeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscribeInput, context: context)
        type = Types::SubscribeInput.new
        type.topic_arn = params[:topic_arn]
        type.protocol = params[:protocol]
        type.endpoint = params[:endpoint]
        type.attributes = SubscriptionAttributesMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.return_subscription_arn = params[:return_subscription_arn]
        type
      end
    end

    module SubscribeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscribeOutput, context: context)
        type = Types::SubscribeOutput.new
        type.subscription_arn = params[:subscription_arn]
        type
      end
    end

    module Subscription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Subscription, context: context)
        type = Types::Subscription.new
        type.subscription_arn = params[:subscription_arn]
        type.owner = params[:owner]
        type.protocol = params[:protocol]
        type.endpoint = params[:endpoint]
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module SubscriptionAttributesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module SubscriptionLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscriptionLimitExceededException, context: context)
        type = Types::SubscriptionLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SubscriptionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Subscription.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module TagLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagLimitExceededException, context: context)
        type = Types::TagLimitExceededException.new
        type.message = params[:message]
        type
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

    module TagPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagPolicyException, context: context)
        type = Types::TagPolicyException.new
        type.message = params[:message]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module ThrottledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottledException, context: context)
        type = Types::ThrottledException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyEntriesInBatchRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyEntriesInBatchRequestException, context: context)
        type = Types::TooManyEntriesInBatchRequestException.new
        type.message = params[:message]
        type
      end
    end

    module Topic
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Topic, context: context)
        type = Types::Topic.new
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module TopicAttributesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TopicLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TopicLimitExceededException, context: context)
        type = Types::TopicLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module TopicsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Topic.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnsubscribeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsubscribeInput, context: context)
        type = Types::UnsubscribeInput.new
        type.subscription_arn = params[:subscription_arn]
        type
      end
    end

    module UnsubscribeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsubscribeOutput, context: context)
        type = Types::UnsubscribeOutput.new
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

    module UserErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserErrorException, context: context)
        type = Types::UserErrorException.new
        type.message = params[:message]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module VerificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerificationException, context: context)
        type = Types::VerificationException.new
        type.message = params[:message]
        type.status = params[:status]
        type
      end
    end

    module VerifySMSSandboxPhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifySMSSandboxPhoneNumberInput, context: context)
        type = Types::VerifySMSSandboxPhoneNumberInput.new
        type.phone_number = params[:phone_number]
        type.one_time_password = params[:one_time_password]
        type
      end
    end

    module VerifySMSSandboxPhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifySMSSandboxPhoneNumberOutput, context: context)
        type = Types::VerifySMSSandboxPhoneNumberOutput.new
        type
      end
    end

  end
end
