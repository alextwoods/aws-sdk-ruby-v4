# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::CognitoIdentityProvider
  module Validators

    class AccountRecoverySettingType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountRecoverySettingType, context: context)
        RecoveryMechanismsType.validate!(input[:recovery_mechanisms], context: "#{context}[:recovery_mechanisms]") unless input[:recovery_mechanisms].nil?
      end
    end

    class AccountTakeoverActionType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountTakeoverActionType, context: context)
        Hearth::Validator.validate!(input[:notify], ::TrueClass, ::FalseClass, context: "#{context}[:notify]")
        Hearth::Validator.validate!(input[:event_action], ::String, context: "#{context}[:event_action]")
      end
    end

    class AccountTakeoverActionsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountTakeoverActionsType, context: context)
        AccountTakeoverActionType.validate!(input[:low_action], context: "#{context}[:low_action]") unless input[:low_action].nil?
        AccountTakeoverActionType.validate!(input[:medium_action], context: "#{context}[:medium_action]") unless input[:medium_action].nil?
        AccountTakeoverActionType.validate!(input[:high_action], context: "#{context}[:high_action]") unless input[:high_action].nil?
      end
    end

    class AccountTakeoverRiskConfigurationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountTakeoverRiskConfigurationType, context: context)
        NotifyConfigurationType.validate!(input[:notify_configuration], context: "#{context}[:notify_configuration]") unless input[:notify_configuration].nil?
        AccountTakeoverActionsType.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
      end
    end

    class AddCustomAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddCustomAttributesInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        CustomAttributesListType.validate!(input[:custom_attributes], context: "#{context}[:custom_attributes]") unless input[:custom_attributes].nil?
      end
    end

    class AddCustomAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddCustomAttributesOutput, context: context)
      end
    end

    class AdminAddUserToGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminAddUserToGroupInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
      end
    end

    class AdminAddUserToGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminAddUserToGroupOutput, context: context)
      end
    end

    class AdminConfirmSignUpInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminConfirmSignUpInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        ClientMetadataType.validate!(input[:client_metadata], context: "#{context}[:client_metadata]") unless input[:client_metadata].nil?
      end
    end

    class AdminConfirmSignUpOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminConfirmSignUpOutput, context: context)
      end
    end

    class AdminCreateUserConfigType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminCreateUserConfigType, context: context)
        Hearth::Validator.validate!(input[:allow_admin_create_user_only], ::TrueClass, ::FalseClass, context: "#{context}[:allow_admin_create_user_only]")
        Hearth::Validator.validate!(input[:unused_account_validity_days], ::Integer, context: "#{context}[:unused_account_validity_days]")
        MessageTemplateType.validate!(input[:invite_message_template], context: "#{context}[:invite_message_template]") unless input[:invite_message_template].nil?
      end
    end

    class AdminCreateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminCreateUserInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        AttributeListType.validate!(input[:user_attributes], context: "#{context}[:user_attributes]") unless input[:user_attributes].nil?
        AttributeListType.validate!(input[:validation_data], context: "#{context}[:validation_data]") unless input[:validation_data].nil?
        Hearth::Validator.validate!(input[:temporary_password], ::String, context: "#{context}[:temporary_password]")
        Hearth::Validator.validate!(input[:force_alias_creation], ::TrueClass, ::FalseClass, context: "#{context}[:force_alias_creation]")
        Hearth::Validator.validate!(input[:message_action], ::String, context: "#{context}[:message_action]")
        DeliveryMediumListType.validate!(input[:desired_delivery_mediums], context: "#{context}[:desired_delivery_mediums]") unless input[:desired_delivery_mediums].nil?
        ClientMetadataType.validate!(input[:client_metadata], context: "#{context}[:client_metadata]") unless input[:client_metadata].nil?
      end
    end

    class AdminCreateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminCreateUserOutput, context: context)
        UserType.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class AdminDeleteUserAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminDeleteUserAttributesInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        AttributeNameListType.validate!(input[:user_attribute_names], context: "#{context}[:user_attribute_names]") unless input[:user_attribute_names].nil?
      end
    end

    class AdminDeleteUserAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminDeleteUserAttributesOutput, context: context)
      end
    end

    class AdminDeleteUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminDeleteUserInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class AdminDeleteUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminDeleteUserOutput, context: context)
      end
    end

    class AdminDisableProviderForUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminDisableProviderForUserInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        ProviderUserIdentifierType.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class AdminDisableProviderForUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminDisableProviderForUserOutput, context: context)
      end
    end

    class AdminDisableUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminDisableUserInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class AdminDisableUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminDisableUserOutput, context: context)
      end
    end

    class AdminEnableUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminEnableUserInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class AdminEnableUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminEnableUserOutput, context: context)
      end
    end

    class AdminForgetDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminForgetDeviceInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:device_key], ::String, context: "#{context}[:device_key]")
      end
    end

    class AdminForgetDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminForgetDeviceOutput, context: context)
      end
    end

    class AdminGetDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminGetDeviceInput, context: context)
        Hearth::Validator.validate!(input[:device_key], ::String, context: "#{context}[:device_key]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class AdminGetDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminGetDeviceOutput, context: context)
        DeviceType.validate!(input[:device], context: "#{context}[:device]") unless input[:device].nil?
      end
    end

    class AdminGetUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminGetUserInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class AdminGetUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminGetUserOutput, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        AttributeListType.validate!(input[:user_attributes], context: "#{context}[:user_attributes]") unless input[:user_attributes].nil?
        Hearth::Validator.validate!(input[:user_create_date], ::Time, context: "#{context}[:user_create_date]")
        Hearth::Validator.validate!(input[:user_last_modified_date], ::Time, context: "#{context}[:user_last_modified_date]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:user_status], ::String, context: "#{context}[:user_status]")
        MFAOptionListType.validate!(input[:mfa_options], context: "#{context}[:mfa_options]") unless input[:mfa_options].nil?
        Hearth::Validator.validate!(input[:preferred_mfa_setting], ::String, context: "#{context}[:preferred_mfa_setting]")
        UserMFASettingListType.validate!(input[:user_mfa_setting_list], context: "#{context}[:user_mfa_setting_list]") unless input[:user_mfa_setting_list].nil?
      end
    end

    class AdminInitiateAuthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminInitiateAuthInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:auth_flow], ::String, context: "#{context}[:auth_flow]")
        AuthParametersType.validate!(input[:auth_parameters], context: "#{context}[:auth_parameters]") unless input[:auth_parameters].nil?
        ClientMetadataType.validate!(input[:client_metadata], context: "#{context}[:client_metadata]") unless input[:client_metadata].nil?
        AnalyticsMetadataType.validate!(input[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless input[:analytics_metadata].nil?
        ContextDataType.validate!(input[:context_data], context: "#{context}[:context_data]") unless input[:context_data].nil?
      end
    end

    class AdminInitiateAuthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminInitiateAuthOutput, context: context)
        Hearth::Validator.validate!(input[:challenge_name], ::String, context: "#{context}[:challenge_name]")
        Hearth::Validator.validate!(input[:session], ::String, context: "#{context}[:session]")
        ChallengeParametersType.validate!(input[:challenge_parameters], context: "#{context}[:challenge_parameters]") unless input[:challenge_parameters].nil?
        AuthenticationResultType.validate!(input[:authentication_result], context: "#{context}[:authentication_result]") unless input[:authentication_result].nil?
      end
    end

    class AdminLinkProviderForUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminLinkProviderForUserInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        ProviderUserIdentifierType.validate!(input[:destination_user], context: "#{context}[:destination_user]") unless input[:destination_user].nil?
        ProviderUserIdentifierType.validate!(input[:source_user], context: "#{context}[:source_user]") unless input[:source_user].nil?
      end
    end

    class AdminLinkProviderForUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminLinkProviderForUserOutput, context: context)
      end
    end

    class AdminListDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminListDevicesInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
      end
    end

    class AdminListDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminListDevicesOutput, context: context)
        DeviceListType.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
      end
    end

    class AdminListGroupsForUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminListGroupsForUserInput, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class AdminListGroupsForUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminListGroupsForUserOutput, context: context)
        GroupListType.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class AdminListUserAuthEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminListUserAuthEventsInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class AdminListUserAuthEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminListUserAuthEventsOutput, context: context)
        AuthEventsType.validate!(input[:auth_events], context: "#{context}[:auth_events]") unless input[:auth_events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class AdminRemoveUserFromGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminRemoveUserFromGroupInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
      end
    end

    class AdminRemoveUserFromGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminRemoveUserFromGroupOutput, context: context)
      end
    end

    class AdminResetUserPasswordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminResetUserPasswordInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        ClientMetadataType.validate!(input[:client_metadata], context: "#{context}[:client_metadata]") unless input[:client_metadata].nil?
      end
    end

    class AdminResetUserPasswordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminResetUserPasswordOutput, context: context)
      end
    end

    class AdminRespondToAuthChallengeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminRespondToAuthChallengeInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:challenge_name], ::String, context: "#{context}[:challenge_name]")
        ChallengeResponsesType.validate!(input[:challenge_responses], context: "#{context}[:challenge_responses]") unless input[:challenge_responses].nil?
        Hearth::Validator.validate!(input[:session], ::String, context: "#{context}[:session]")
        AnalyticsMetadataType.validate!(input[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless input[:analytics_metadata].nil?
        ContextDataType.validate!(input[:context_data], context: "#{context}[:context_data]") unless input[:context_data].nil?
        ClientMetadataType.validate!(input[:client_metadata], context: "#{context}[:client_metadata]") unless input[:client_metadata].nil?
      end
    end

    class AdminRespondToAuthChallengeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminRespondToAuthChallengeOutput, context: context)
        Hearth::Validator.validate!(input[:challenge_name], ::String, context: "#{context}[:challenge_name]")
        Hearth::Validator.validate!(input[:session], ::String, context: "#{context}[:session]")
        ChallengeParametersType.validate!(input[:challenge_parameters], context: "#{context}[:challenge_parameters]") unless input[:challenge_parameters].nil?
        AuthenticationResultType.validate!(input[:authentication_result], context: "#{context}[:authentication_result]") unless input[:authentication_result].nil?
      end
    end

    class AdminSetUserMFAPreferenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminSetUserMFAPreferenceInput, context: context)
        SMSMfaSettingsType.validate!(input[:sms_mfa_settings], context: "#{context}[:sms_mfa_settings]") unless input[:sms_mfa_settings].nil?
        SoftwareTokenMfaSettingsType.validate!(input[:software_token_mfa_settings], context: "#{context}[:software_token_mfa_settings]") unless input[:software_token_mfa_settings].nil?
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
      end
    end

    class AdminSetUserMFAPreferenceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminSetUserMFAPreferenceOutput, context: context)
      end
    end

    class AdminSetUserPasswordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminSetUserPasswordInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Hearth::Validator.validate!(input[:permanent], ::TrueClass, ::FalseClass, context: "#{context}[:permanent]")
      end
    end

    class AdminSetUserPasswordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminSetUserPasswordOutput, context: context)
      end
    end

    class AdminSetUserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminSetUserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        MFAOptionListType.validate!(input[:mfa_options], context: "#{context}[:mfa_options]") unless input[:mfa_options].nil?
      end
    end

    class AdminSetUserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminSetUserSettingsOutput, context: context)
      end
    end

    class AdminUpdateAuthEventFeedbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminUpdateAuthEventFeedbackInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:feedback_value], ::String, context: "#{context}[:feedback_value]")
      end
    end

    class AdminUpdateAuthEventFeedbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminUpdateAuthEventFeedbackOutput, context: context)
      end
    end

    class AdminUpdateDeviceStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminUpdateDeviceStatusInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:device_key], ::String, context: "#{context}[:device_key]")
        Hearth::Validator.validate!(input[:device_remembered_status], ::String, context: "#{context}[:device_remembered_status]")
      end
    end

    class AdminUpdateDeviceStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminUpdateDeviceStatusOutput, context: context)
      end
    end

    class AdminUpdateUserAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminUpdateUserAttributesInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        AttributeListType.validate!(input[:user_attributes], context: "#{context}[:user_attributes]") unless input[:user_attributes].nil?
        ClientMetadataType.validate!(input[:client_metadata], context: "#{context}[:client_metadata]") unless input[:client_metadata].nil?
      end
    end

    class AdminUpdateUserAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminUpdateUserAttributesOutput, context: context)
      end
    end

    class AdminUserGlobalSignOutInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminUserGlobalSignOutInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
      end
    end

    class AdminUserGlobalSignOutOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdminUserGlobalSignOutOutput, context: context)
      end
    end

    class AliasAttributesListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AliasExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AliasExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AnalyticsConfigurationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyticsConfigurationType, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Hearth::Validator.validate!(input[:user_data_shared], ::TrueClass, ::FalseClass, context: "#{context}[:user_data_shared]")
      end
    end

    class AnalyticsMetadataType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyticsMetadataType, context: context)
        Hearth::Validator.validate!(input[:analytics_endpoint_id], ::String, context: "#{context}[:analytics_endpoint_id]")
      end
    end

    class AssociateSoftwareTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateSoftwareTokenInput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:session], ::String, context: "#{context}[:session]")
      end
    end

    class AssociateSoftwareTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateSoftwareTokenOutput, context: context)
        Hearth::Validator.validate!(input[:secret_code], ::String, context: "#{context}[:secret_code]")
        Hearth::Validator.validate!(input[:session], ::String, context: "#{context}[:session]")
      end
    end

    class AttributeListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttributeType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttributeMappingType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class AttributeNameListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AttributeType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeType, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AttributesRequireVerificationBeforeUpdateType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AuthEventType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthEventType, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:event_response], ::String, context: "#{context}[:event_response]")
        EventRiskType.validate!(input[:event_risk], context: "#{context}[:event_risk]") unless input[:event_risk].nil?
        ChallengeResponseListType.validate!(input[:challenge_responses], context: "#{context}[:challenge_responses]") unless input[:challenge_responses].nil?
        EventContextDataType.validate!(input[:event_context_data], context: "#{context}[:event_context_data]") unless input[:event_context_data].nil?
        EventFeedbackType.validate!(input[:event_feedback], context: "#{context}[:event_feedback]") unless input[:event_feedback].nil?
      end
    end

    class AuthEventsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AuthEventType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AuthParametersType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class AuthenticationResultType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticationResultType, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:expires_in], ::Integer, context: "#{context}[:expires_in]")
        Hearth::Validator.validate!(input[:token_type], ::String, context: "#{context}[:token_type]")
        Hearth::Validator.validate!(input[:refresh_token], ::String, context: "#{context}[:refresh_token]")
        Hearth::Validator.validate!(input[:id_token], ::String, context: "#{context}[:id_token]")
        NewDeviceMetadataType.validate!(input[:new_device_metadata], context: "#{context}[:new_device_metadata]") unless input[:new_device_metadata].nil?
      end
    end

    class BlockedIPRangeListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CallbackURLsListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ChallengeParametersType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ChallengeResponseListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChallengeResponseType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChallengeResponseType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChallengeResponseType, context: context)
        Hearth::Validator.validate!(input[:challenge_name], ::String, context: "#{context}[:challenge_name]")
        Hearth::Validator.validate!(input[:challenge_response], ::String, context: "#{context}[:challenge_response]")
      end
    end

    class ChallengeResponsesType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ChangePasswordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangePasswordInput, context: context)
        Hearth::Validator.validate!(input[:previous_password], ::String, context: "#{context}[:previous_password]")
        Hearth::Validator.validate!(input[:proposed_password], ::String, context: "#{context}[:proposed_password]")
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
      end
    end

    class ChangePasswordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangePasswordOutput, context: context)
      end
    end

    class ClientMetadataType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ClientPermissionListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CodeDeliveryDetailsListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CodeDeliveryDetailsType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CodeDeliveryDetailsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeDeliveryDetailsType, context: context)
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:delivery_medium], ::String, context: "#{context}[:delivery_medium]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
      end
    end

    class CodeDeliveryFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeDeliveryFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CodeMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CompromisedCredentialsActionsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompromisedCredentialsActionsType, context: context)
        Hearth::Validator.validate!(input[:event_action], ::String, context: "#{context}[:event_action]")
      end
    end

    class CompromisedCredentialsRiskConfigurationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompromisedCredentialsRiskConfigurationType, context: context)
        EventFiltersType.validate!(input[:event_filter], context: "#{context}[:event_filter]") unless input[:event_filter].nil?
        CompromisedCredentialsActionsType.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConfirmDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmDeviceInput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:device_key], ::String, context: "#{context}[:device_key]")
        DeviceSecretVerifierConfigType.validate!(input[:device_secret_verifier_config], context: "#{context}[:device_secret_verifier_config]") unless input[:device_secret_verifier_config].nil?
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
      end
    end

    class ConfirmDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:user_confirmation_necessary], ::TrueClass, ::FalseClass, context: "#{context}[:user_confirmation_necessary]")
      end
    end

    class ConfirmForgotPasswordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmForgotPasswordInput, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:secret_hash], ::String, context: "#{context}[:secret_hash]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:confirmation_code], ::String, context: "#{context}[:confirmation_code]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        AnalyticsMetadataType.validate!(input[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless input[:analytics_metadata].nil?
        UserContextDataType.validate!(input[:user_context_data], context: "#{context}[:user_context_data]") unless input[:user_context_data].nil?
        ClientMetadataType.validate!(input[:client_metadata], context: "#{context}[:client_metadata]") unless input[:client_metadata].nil?
      end
    end

    class ConfirmForgotPasswordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmForgotPasswordOutput, context: context)
      end
    end

    class ConfirmSignUpInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmSignUpInput, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:secret_hash], ::String, context: "#{context}[:secret_hash]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:confirmation_code], ::String, context: "#{context}[:confirmation_code]")
        Hearth::Validator.validate!(input[:force_alias_creation], ::TrueClass, ::FalseClass, context: "#{context}[:force_alias_creation]")
        AnalyticsMetadataType.validate!(input[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless input[:analytics_metadata].nil?
        UserContextDataType.validate!(input[:user_context_data], context: "#{context}[:user_context_data]") unless input[:user_context_data].nil?
        ClientMetadataType.validate!(input[:client_metadata], context: "#{context}[:client_metadata]") unless input[:client_metadata].nil?
      end
    end

    class ConfirmSignUpOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfirmSignUpOutput, context: context)
      end
    end

    class ContextDataType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContextDataType, context: context)
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:server_name], ::String, context: "#{context}[:server_name]")
        Hearth::Validator.validate!(input[:server_path], ::String, context: "#{context}[:server_path]")
        HttpHeaderList.validate!(input[:http_headers], context: "#{context}[:http_headers]") unless input[:http_headers].nil?
        Hearth::Validator.validate!(input[:encoded_data], ::String, context: "#{context}[:encoded_data]")
      end
    end

    class CreateGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:precedence], ::Integer, context: "#{context}[:precedence]")
      end
    end

    class CreateGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupOutput, context: context)
        GroupType.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
      end
    end

    class CreateIdentityProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIdentityProviderInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:provider_type], ::String, context: "#{context}[:provider_type]")
        ProviderDetailsType.validate!(input[:provider_details], context: "#{context}[:provider_details]") unless input[:provider_details].nil?
        AttributeMappingType.validate!(input[:attribute_mapping], context: "#{context}[:attribute_mapping]") unless input[:attribute_mapping].nil?
        IdpIdentifiersListType.validate!(input[:idp_identifiers], context: "#{context}[:idp_identifiers]") unless input[:idp_identifiers].nil?
      end
    end

    class CreateIdentityProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIdentityProviderOutput, context: context)
        IdentityProviderType.validate!(input[:identity_provider], context: "#{context}[:identity_provider]") unless input[:identity_provider].nil?
      end
    end

    class CreateResourceServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceServerInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ResourceServerScopeListType.validate!(input[:scopes], context: "#{context}[:scopes]") unless input[:scopes].nil?
      end
    end

    class CreateResourceServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceServerOutput, context: context)
        ResourceServerType.validate!(input[:resource_server], context: "#{context}[:resource_server]") unless input[:resource_server].nil?
      end
    end

    class CreateUserImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserImportJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_role_arn], ::String, context: "#{context}[:cloud_watch_logs_role_arn]")
      end
    end

    class CreateUserImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserImportJobOutput, context: context)
        UserImportJobType.validate!(input[:user_import_job], context: "#{context}[:user_import_job]") unless input[:user_import_job].nil?
      end
    end

    class CreateUserPoolClientInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserPoolClientInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:client_name], ::String, context: "#{context}[:client_name]")
        Hearth::Validator.validate!(input[:generate_secret], ::TrueClass, ::FalseClass, context: "#{context}[:generate_secret]")
        Hearth::Validator.validate!(input[:refresh_token_validity], ::Integer, context: "#{context}[:refresh_token_validity]")
        Hearth::Validator.validate!(input[:access_token_validity], ::Integer, context: "#{context}[:access_token_validity]")
        Hearth::Validator.validate!(input[:id_token_validity], ::Integer, context: "#{context}[:id_token_validity]")
        TokenValidityUnitsType.validate!(input[:token_validity_units], context: "#{context}[:token_validity_units]") unless input[:token_validity_units].nil?
        ClientPermissionListType.validate!(input[:read_attributes], context: "#{context}[:read_attributes]") unless input[:read_attributes].nil?
        ClientPermissionListType.validate!(input[:write_attributes], context: "#{context}[:write_attributes]") unless input[:write_attributes].nil?
        ExplicitAuthFlowsListType.validate!(input[:explicit_auth_flows], context: "#{context}[:explicit_auth_flows]") unless input[:explicit_auth_flows].nil?
        SupportedIdentityProvidersListType.validate!(input[:supported_identity_providers], context: "#{context}[:supported_identity_providers]") unless input[:supported_identity_providers].nil?
        CallbackURLsListType.validate!(input[:callback_ur_ls], context: "#{context}[:callback_ur_ls]") unless input[:callback_ur_ls].nil?
        LogoutURLsListType.validate!(input[:logout_ur_ls], context: "#{context}[:logout_ur_ls]") unless input[:logout_ur_ls].nil?
        Hearth::Validator.validate!(input[:default_redirect_uri], ::String, context: "#{context}[:default_redirect_uri]")
        OAuthFlowsType.validate!(input[:allowed_o_auth_flows], context: "#{context}[:allowed_o_auth_flows]") unless input[:allowed_o_auth_flows].nil?
        ScopeListType.validate!(input[:allowed_o_auth_scopes], context: "#{context}[:allowed_o_auth_scopes]") unless input[:allowed_o_auth_scopes].nil?
        Hearth::Validator.validate!(input[:allowed_o_auth_flows_user_pool_client], ::TrueClass, ::FalseClass, context: "#{context}[:allowed_o_auth_flows_user_pool_client]")
        AnalyticsConfigurationType.validate!(input[:analytics_configuration], context: "#{context}[:analytics_configuration]") unless input[:analytics_configuration].nil?
        Hearth::Validator.validate!(input[:prevent_user_existence_errors], ::String, context: "#{context}[:prevent_user_existence_errors]")
        Hearth::Validator.validate!(input[:enable_token_revocation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_token_revocation]")
        Hearth::Validator.validate!(input[:enable_propagate_additional_user_context_data], ::TrueClass, ::FalseClass, context: "#{context}[:enable_propagate_additional_user_context_data]")
      end
    end

    class CreateUserPoolClientOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserPoolClientOutput, context: context)
        UserPoolClientType.validate!(input[:user_pool_client], context: "#{context}[:user_pool_client]") unless input[:user_pool_client].nil?
      end
    end

    class CreateUserPoolDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserPoolDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        CustomDomainConfigType.validate!(input[:custom_domain_config], context: "#{context}[:custom_domain_config]") unless input[:custom_domain_config].nil?
      end
    end

    class CreateUserPoolDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserPoolDomainOutput, context: context)
        Hearth::Validator.validate!(input[:cloud_front_domain], ::String, context: "#{context}[:cloud_front_domain]")
      end
    end

    class CreateUserPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserPoolInput, context: context)
        Hearth::Validator.validate!(input[:pool_name], ::String, context: "#{context}[:pool_name]")
        UserPoolPolicyType.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        LambdaConfigType.validate!(input[:lambda_config], context: "#{context}[:lambda_config]") unless input[:lambda_config].nil?
        VerifiedAttributesListType.validate!(input[:auto_verified_attributes], context: "#{context}[:auto_verified_attributes]") unless input[:auto_verified_attributes].nil?
        AliasAttributesListType.validate!(input[:alias_attributes], context: "#{context}[:alias_attributes]") unless input[:alias_attributes].nil?
        UsernameAttributesListType.validate!(input[:username_attributes], context: "#{context}[:username_attributes]") unless input[:username_attributes].nil?
        Hearth::Validator.validate!(input[:sms_verification_message], ::String, context: "#{context}[:sms_verification_message]")
        Hearth::Validator.validate!(input[:email_verification_message], ::String, context: "#{context}[:email_verification_message]")
        Hearth::Validator.validate!(input[:email_verification_subject], ::String, context: "#{context}[:email_verification_subject]")
        VerificationMessageTemplateType.validate!(input[:verification_message_template], context: "#{context}[:verification_message_template]") unless input[:verification_message_template].nil?
        Hearth::Validator.validate!(input[:sms_authentication_message], ::String, context: "#{context}[:sms_authentication_message]")
        Hearth::Validator.validate!(input[:mfa_configuration], ::String, context: "#{context}[:mfa_configuration]")
        UserAttributeUpdateSettingsType.validate!(input[:user_attribute_update_settings], context: "#{context}[:user_attribute_update_settings]") unless input[:user_attribute_update_settings].nil?
        DeviceConfigurationType.validate!(input[:device_configuration], context: "#{context}[:device_configuration]") unless input[:device_configuration].nil?
        EmailConfigurationType.validate!(input[:email_configuration], context: "#{context}[:email_configuration]") unless input[:email_configuration].nil?
        SmsConfigurationType.validate!(input[:sms_configuration], context: "#{context}[:sms_configuration]") unless input[:sms_configuration].nil?
        UserPoolTagsType.validate!(input[:user_pool_tags], context: "#{context}[:user_pool_tags]") unless input[:user_pool_tags].nil?
        AdminCreateUserConfigType.validate!(input[:admin_create_user_config], context: "#{context}[:admin_create_user_config]") unless input[:admin_create_user_config].nil?
        SchemaAttributesListType.validate!(input[:schema], context: "#{context}[:schema]") unless input[:schema].nil?
        UserPoolAddOnsType.validate!(input[:user_pool_add_ons], context: "#{context}[:user_pool_add_ons]") unless input[:user_pool_add_ons].nil?
        UsernameConfigurationType.validate!(input[:username_configuration], context: "#{context}[:username_configuration]") unless input[:username_configuration].nil?
        AccountRecoverySettingType.validate!(input[:account_recovery_setting], context: "#{context}[:account_recovery_setting]") unless input[:account_recovery_setting].nil?
      end
    end

    class CreateUserPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserPoolOutput, context: context)
        UserPoolType.validate!(input[:user_pool], context: "#{context}[:user_pool]") unless input[:user_pool].nil?
      end
    end

    class CustomAttributesListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SchemaAttributeType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomDomainConfigType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomDomainConfigType, context: context)
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
      end
    end

    class CustomEmailLambdaVersionConfigType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomEmailLambdaVersionConfigType, context: context)
        Hearth::Validator.validate!(input[:lambda_version], ::String, context: "#{context}[:lambda_version]")
        Hearth::Validator.validate!(input[:lambda_arn], ::String, context: "#{context}[:lambda_arn]")
      end
    end

    class CustomSMSLambdaVersionConfigType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomSMSLambdaVersionConfigType, context: context)
        Hearth::Validator.validate!(input[:lambda_version], ::String, context: "#{context}[:lambda_version]")
        Hearth::Validator.validate!(input[:lambda_arn], ::String, context: "#{context}[:lambda_arn]")
      end
    end

    class DeleteGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
      end
    end

    class DeleteGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupOutput, context: context)
      end
    end

    class DeleteIdentityProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIdentityProviderInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
      end
    end

    class DeleteIdentityProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIdentityProviderOutput, context: context)
      end
    end

    class DeleteResourceServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceServerInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class DeleteResourceServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceServerOutput, context: context)
      end
    end

    class DeleteUserAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserAttributesInput, context: context)
        AttributeNameListType.validate!(input[:user_attribute_names], context: "#{context}[:user_attribute_names]") unless input[:user_attribute_names].nil?
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
      end
    end

    class DeleteUserAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserAttributesOutput, context: context)
      end
    end

    class DeleteUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserInput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
      end
    end

    class DeleteUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserOutput, context: context)
      end
    end

    class DeleteUserPoolClientInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserPoolClientInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
      end
    end

    class DeleteUserPoolClientOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserPoolClientOutput, context: context)
      end
    end

    class DeleteUserPoolDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserPoolDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
      end
    end

    class DeleteUserPoolDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserPoolDomainOutput, context: context)
      end
    end

    class DeleteUserPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserPoolInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
      end
    end

    class DeleteUserPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserPoolOutput, context: context)
      end
    end

    class DeliveryMediumListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DescribeIdentityProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdentityProviderInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
      end
    end

    class DescribeIdentityProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIdentityProviderOutput, context: context)
        IdentityProviderType.validate!(input[:identity_provider], context: "#{context}[:identity_provider]") unless input[:identity_provider].nil?
      end
    end

    class DescribeResourceServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourceServerInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class DescribeResourceServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourceServerOutput, context: context)
        ResourceServerType.validate!(input[:resource_server], context: "#{context}[:resource_server]") unless input[:resource_server].nil?
      end
    end

    class DescribeRiskConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRiskConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
      end
    end

    class DescribeRiskConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRiskConfigurationOutput, context: context)
        RiskConfigurationType.validate!(input[:risk_configuration], context: "#{context}[:risk_configuration]") unless input[:risk_configuration].nil?
      end
    end

    class DescribeUserImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserImportJobInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeUserImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserImportJobOutput, context: context)
        UserImportJobType.validate!(input[:user_import_job], context: "#{context}[:user_import_job]") unless input[:user_import_job].nil?
      end
    end

    class DescribeUserPoolClientInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserPoolClientInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
      end
    end

    class DescribeUserPoolClientOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserPoolClientOutput, context: context)
        UserPoolClientType.validate!(input[:user_pool_client], context: "#{context}[:user_pool_client]") unless input[:user_pool_client].nil?
      end
    end

    class DescribeUserPoolDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserPoolDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class DescribeUserPoolDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserPoolDomainOutput, context: context)
        DomainDescriptionType.validate!(input[:domain_description], context: "#{context}[:domain_description]") unless input[:domain_description].nil?
      end
    end

    class DescribeUserPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserPoolInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
      end
    end

    class DescribeUserPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserPoolOutput, context: context)
        UserPoolType.validate!(input[:user_pool], context: "#{context}[:user_pool]") unless input[:user_pool].nil?
      end
    end

    class DeviceConfigurationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceConfigurationType, context: context)
        Hearth::Validator.validate!(input[:challenge_required_on_new_device], ::TrueClass, ::FalseClass, context: "#{context}[:challenge_required_on_new_device]")
        Hearth::Validator.validate!(input[:device_only_remembered_on_user_prompt], ::TrueClass, ::FalseClass, context: "#{context}[:device_only_remembered_on_user_prompt]")
      end
    end

    class DeviceListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeviceType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeviceSecretVerifierConfigType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceSecretVerifierConfigType, context: context)
        Hearth::Validator.validate!(input[:password_verifier], ::String, context: "#{context}[:password_verifier]")
        Hearth::Validator.validate!(input[:salt], ::String, context: "#{context}[:salt]")
      end
    end

    class DeviceType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceType, context: context)
        Hearth::Validator.validate!(input[:device_key], ::String, context: "#{context}[:device_key]")
        AttributeListType.validate!(input[:device_attributes], context: "#{context}[:device_attributes]") unless input[:device_attributes].nil?
        Hearth::Validator.validate!(input[:device_create_date], ::Time, context: "#{context}[:device_create_date]")
        Hearth::Validator.validate!(input[:device_last_modified_date], ::Time, context: "#{context}[:device_last_modified_date]")
        Hearth::Validator.validate!(input[:device_last_authenticated_date], ::Time, context: "#{context}[:device_last_authenticated_date]")
      end
    end

    class DomainDescriptionType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainDescriptionType, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:cloud_front_distribution], ::String, context: "#{context}[:cloud_front_distribution]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        CustomDomainConfigType.validate!(input[:custom_domain_config], context: "#{context}[:custom_domain_config]") unless input[:custom_domain_config].nil?
      end
    end

    class DuplicateProviderException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateProviderException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EmailConfigurationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailConfigurationType, context: context)
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:reply_to_email_address], ::String, context: "#{context}[:reply_to_email_address]")
        Hearth::Validator.validate!(input[:email_sending_account], ::String, context: "#{context}[:email_sending_account]")
        Hearth::Validator.validate!(input[:from], ::String, context: "#{context}[:from]")
        Hearth::Validator.validate!(input[:configuration_set], ::String, context: "#{context}[:configuration_set]")
      end
    end

    class EnableSoftwareTokenMFAException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableSoftwareTokenMFAException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EventContextDataType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventContextDataType, context: context)
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:city], ::String, context: "#{context}[:city]")
        Hearth::Validator.validate!(input[:country], ::String, context: "#{context}[:country]")
      end
    end

    class EventFeedbackType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventFeedbackType, context: context)
        Hearth::Validator.validate!(input[:feedback_value], ::String, context: "#{context}[:feedback_value]")
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:feedback_date], ::Time, context: "#{context}[:feedback_date]")
      end
    end

    class EventFiltersType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventRiskType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventRiskType, context: context)
        Hearth::Validator.validate!(input[:risk_decision], ::String, context: "#{context}[:risk_decision]")
        Hearth::Validator.validate!(input[:risk_level], ::String, context: "#{context}[:risk_level]")
        Hearth::Validator.validate!(input[:compromised_credentials_detected], ::TrueClass, ::FalseClass, context: "#{context}[:compromised_credentials_detected]")
      end
    end

    class ExpiredCodeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpiredCodeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExplicitAuthFlowsListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ForgetDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForgetDeviceInput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:device_key], ::String, context: "#{context}[:device_key]")
      end
    end

    class ForgetDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForgetDeviceOutput, context: context)
      end
    end

    class ForgotPasswordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForgotPasswordInput, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:secret_hash], ::String, context: "#{context}[:secret_hash]")
        UserContextDataType.validate!(input[:user_context_data], context: "#{context}[:user_context_data]") unless input[:user_context_data].nil?
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        AnalyticsMetadataType.validate!(input[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless input[:analytics_metadata].nil?
        ClientMetadataType.validate!(input[:client_metadata], context: "#{context}[:client_metadata]") unless input[:client_metadata].nil?
      end
    end

    class ForgotPasswordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForgotPasswordOutput, context: context)
        CodeDeliveryDetailsType.validate!(input[:code_delivery_details], context: "#{context}[:code_delivery_details]") unless input[:code_delivery_details].nil?
      end
    end

    class GetCSVHeaderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCSVHeaderInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
      end
    end

    class GetCSVHeaderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCSVHeaderOutput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        ListOfStringTypes.validate!(input[:csv_header], context: "#{context}[:csv_header]") unless input[:csv_header].nil?
      end
    end

    class GetDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceInput, context: context)
        Hearth::Validator.validate!(input[:device_key], ::String, context: "#{context}[:device_key]")
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
      end
    end

    class GetDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceOutput, context: context)
        DeviceType.validate!(input[:device], context: "#{context}[:device]") unless input[:device].nil?
      end
    end

    class GetGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
      end
    end

    class GetGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGroupOutput, context: context)
        GroupType.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
      end
    end

    class GetIdentityProviderByIdentifierInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityProviderByIdentifierInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:idp_identifier], ::String, context: "#{context}[:idp_identifier]")
      end
    end

    class GetIdentityProviderByIdentifierOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityProviderByIdentifierOutput, context: context)
        IdentityProviderType.validate!(input[:identity_provider], context: "#{context}[:identity_provider]") unless input[:identity_provider].nil?
      end
    end

    class GetSigningCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSigningCertificateInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
      end
    end

    class GetSigningCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSigningCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
      end
    end

    class GetUICustomizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUICustomizationInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
      end
    end

    class GetUICustomizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUICustomizationOutput, context: context)
        UICustomizationType.validate!(input[:ui_customization], context: "#{context}[:ui_customization]") unless input[:ui_customization].nil?
      end
    end

    class GetUserAttributeVerificationCodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserAttributeVerificationCodeInput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        ClientMetadataType.validate!(input[:client_metadata], context: "#{context}[:client_metadata]") unless input[:client_metadata].nil?
      end
    end

    class GetUserAttributeVerificationCodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserAttributeVerificationCodeOutput, context: context)
        CodeDeliveryDetailsType.validate!(input[:code_delivery_details], context: "#{context}[:code_delivery_details]") unless input[:code_delivery_details].nil?
      end
    end

    class GetUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserInput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
      end
    end

    class GetUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserOutput, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        AttributeListType.validate!(input[:user_attributes], context: "#{context}[:user_attributes]") unless input[:user_attributes].nil?
        MFAOptionListType.validate!(input[:mfa_options], context: "#{context}[:mfa_options]") unless input[:mfa_options].nil?
        Hearth::Validator.validate!(input[:preferred_mfa_setting], ::String, context: "#{context}[:preferred_mfa_setting]")
        UserMFASettingListType.validate!(input[:user_mfa_setting_list], context: "#{context}[:user_mfa_setting_list]") unless input[:user_mfa_setting_list].nil?
      end
    end

    class GetUserPoolMfaConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserPoolMfaConfigInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
      end
    end

    class GetUserPoolMfaConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserPoolMfaConfigOutput, context: context)
        SmsMfaConfigType.validate!(input[:sms_mfa_configuration], context: "#{context}[:sms_mfa_configuration]") unless input[:sms_mfa_configuration].nil?
        SoftwareTokenMfaConfigType.validate!(input[:software_token_mfa_configuration], context: "#{context}[:software_token_mfa_configuration]") unless input[:software_token_mfa_configuration].nil?
        Hearth::Validator.validate!(input[:mfa_configuration], ::String, context: "#{context}[:mfa_configuration]")
      end
    end

    class GlobalSignOutInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalSignOutInput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
      end
    end

    class GlobalSignOutOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlobalSignOutOutput, context: context)
      end
    end

    class GroupExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GroupListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GroupType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GroupType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupType, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:precedence], ::Integer, context: "#{context}[:precedence]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class HttpHeader
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HttpHeader, context: context)
        Hearth::Validator.validate!(input[:header_name], ::String, context: "#{context}[:header_name]")
        Hearth::Validator.validate!(input[:header_value], ::String, context: "#{context}[:header_value]")
      end
    end

    class HttpHeaderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HttpHeader.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IdentityProviderType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityProviderType, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:provider_type], ::String, context: "#{context}[:provider_type]")
        ProviderDetailsType.validate!(input[:provider_details], context: "#{context}[:provider_details]") unless input[:provider_details].nil?
        AttributeMappingType.validate!(input[:attribute_mapping], context: "#{context}[:attribute_mapping]") unless input[:attribute_mapping].nil?
        IdpIdentifiersListType.validate!(input[:idp_identifiers], context: "#{context}[:idp_identifiers]") unless input[:idp_identifiers].nil?
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class IdpIdentifiersListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InitiateAuthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitiateAuthInput, context: context)
        Hearth::Validator.validate!(input[:auth_flow], ::String, context: "#{context}[:auth_flow]")
        AuthParametersType.validate!(input[:auth_parameters], context: "#{context}[:auth_parameters]") unless input[:auth_parameters].nil?
        ClientMetadataType.validate!(input[:client_metadata], context: "#{context}[:client_metadata]") unless input[:client_metadata].nil?
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        AnalyticsMetadataType.validate!(input[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless input[:analytics_metadata].nil?
        UserContextDataType.validate!(input[:user_context_data], context: "#{context}[:user_context_data]") unless input[:user_context_data].nil?
      end
    end

    class InitiateAuthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitiateAuthOutput, context: context)
        Hearth::Validator.validate!(input[:challenge_name], ::String, context: "#{context}[:challenge_name]")
        Hearth::Validator.validate!(input[:session], ::String, context: "#{context}[:session]")
        ChallengeParametersType.validate!(input[:challenge_parameters], context: "#{context}[:challenge_parameters]") unless input[:challenge_parameters].nil?
        AuthenticationResultType.validate!(input[:authentication_result], context: "#{context}[:authentication_result]") unless input[:authentication_result].nil?
      end
    end

    class InternalErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEmailRoleAccessPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEmailRoleAccessPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidLambdaResponseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLambdaResponseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOAuthFlowException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOAuthFlowException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPasswordException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPasswordException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSmsRoleAccessPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSmsRoleAccessPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSmsRoleTrustRelationshipException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSmsRoleTrustRelationshipException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidUserPoolConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidUserPoolConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LambdaConfigType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaConfigType, context: context)
        Hearth::Validator.validate!(input[:pre_sign_up], ::String, context: "#{context}[:pre_sign_up]")
        Hearth::Validator.validate!(input[:custom_message], ::String, context: "#{context}[:custom_message]")
        Hearth::Validator.validate!(input[:post_confirmation], ::String, context: "#{context}[:post_confirmation]")
        Hearth::Validator.validate!(input[:pre_authentication], ::String, context: "#{context}[:pre_authentication]")
        Hearth::Validator.validate!(input[:post_authentication], ::String, context: "#{context}[:post_authentication]")
        Hearth::Validator.validate!(input[:define_auth_challenge], ::String, context: "#{context}[:define_auth_challenge]")
        Hearth::Validator.validate!(input[:create_auth_challenge], ::String, context: "#{context}[:create_auth_challenge]")
        Hearth::Validator.validate!(input[:verify_auth_challenge_response], ::String, context: "#{context}[:verify_auth_challenge_response]")
        Hearth::Validator.validate!(input[:pre_token_generation], ::String, context: "#{context}[:pre_token_generation]")
        Hearth::Validator.validate!(input[:user_migration], ::String, context: "#{context}[:user_migration]")
        CustomSMSLambdaVersionConfigType.validate!(input[:custom_sms_sender], context: "#{context}[:custom_sms_sender]") unless input[:custom_sms_sender].nil?
        CustomEmailLambdaVersionConfigType.validate!(input[:custom_email_sender], context: "#{context}[:custom_email_sender]") unless input[:custom_email_sender].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesInput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
      end
    end

    class ListDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesOutput, context: context)
        DeviceListType.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
      end
    end

    class ListGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsOutput, context: context)
        GroupListType.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIdentityProvidersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentityProvidersInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIdentityProvidersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentityProvidersOutput, context: context)
        ProvidersListType.validate!(input[:providers], context: "#{context}[:providers]") unless input[:providers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfStringTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListResourceServersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceServersInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourceServersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceServersOutput, context: context)
        ResourceServersListType.validate!(input[:resource_servers], context: "#{context}[:resource_servers]") unless input[:resource_servers].nil?
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
        UserPoolTagsType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListUserImportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserImportJobsInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
      end
    end

    class ListUserImportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserImportJobsOutput, context: context)
        UserImportJobsListType.validate!(input[:user_import_jobs], context: "#{context}[:user_import_jobs]") unless input[:user_import_jobs].nil?
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
      end
    end

    class ListUserPoolClientsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserPoolClientsInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUserPoolClientsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserPoolClientsOutput, context: context)
        UserPoolClientListType.validate!(input[:user_pool_clients], context: "#{context}[:user_pool_clients]") unless input[:user_pool_clients].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUserPoolsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserPoolsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListUserPoolsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserPoolsOutput, context: context)
        UserPoolListType.validate!(input[:user_pools], context: "#{context}[:user_pools]") unless input[:user_pools].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUsersInGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersInGroupInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUsersInGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersInGroupOutput, context: context)
        UsersListType.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        SearchedAttributeNamesListType.validate!(input[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless input[:attributes_to_get].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
        Hearth::Validator.validate!(input[:filter], ::String, context: "#{context}[:filter]")
      end
    end

    class ListUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersOutput, context: context)
        UsersListType.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
      end
    end

    class LogoutURLsListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MFAMethodNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MFAMethodNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MFAOptionListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MFAOptionType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MFAOptionType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MFAOptionType, context: context)
        Hearth::Validator.validate!(input[:delivery_medium], ::String, context: "#{context}[:delivery_medium]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
      end
    end

    class MessageTemplateType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageTemplateType, context: context)
        Hearth::Validator.validate!(input[:sms_message], ::String, context: "#{context}[:sms_message]")
        Hearth::Validator.validate!(input[:email_message], ::String, context: "#{context}[:email_message]")
        Hearth::Validator.validate!(input[:email_subject], ::String, context: "#{context}[:email_subject]")
      end
    end

    class NewDeviceMetadataType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NewDeviceMetadataType, context: context)
        Hearth::Validator.validate!(input[:device_key], ::String, context: "#{context}[:device_key]")
        Hearth::Validator.validate!(input[:device_group_key], ::String, context: "#{context}[:device_group_key]")
      end
    end

    class NotAuthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotAuthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotifyConfigurationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyConfigurationType, context: context)
        Hearth::Validator.validate!(input[:from], ::String, context: "#{context}[:from]")
        Hearth::Validator.validate!(input[:reply_to], ::String, context: "#{context}[:reply_to]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        NotifyEmailType.validate!(input[:block_email], context: "#{context}[:block_email]") unless input[:block_email].nil?
        NotifyEmailType.validate!(input[:no_action_email], context: "#{context}[:no_action_email]") unless input[:no_action_email].nil?
        NotifyEmailType.validate!(input[:mfa_email], context: "#{context}[:mfa_email]") unless input[:mfa_email].nil?
      end
    end

    class NotifyEmailType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyEmailType, context: context)
        Hearth::Validator.validate!(input[:subject], ::String, context: "#{context}[:subject]")
        Hearth::Validator.validate!(input[:html_body], ::String, context: "#{context}[:html_body]")
        Hearth::Validator.validate!(input[:text_body], ::String, context: "#{context}[:text_body]")
      end
    end

    class NumberAttributeConstraintsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NumberAttributeConstraintsType, context: context)
        Hearth::Validator.validate!(input[:min_value], ::String, context: "#{context}[:min_value]")
        Hearth::Validator.validate!(input[:max_value], ::String, context: "#{context}[:max_value]")
      end
    end

    class OAuthFlowsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PasswordPolicyType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PasswordPolicyType, context: context)
        Hearth::Validator.validate!(input[:minimum_length], ::Integer, context: "#{context}[:minimum_length]")
        Hearth::Validator.validate!(input[:require_uppercase], ::TrueClass, ::FalseClass, context: "#{context}[:require_uppercase]")
        Hearth::Validator.validate!(input[:require_lowercase], ::TrueClass, ::FalseClass, context: "#{context}[:require_lowercase]")
        Hearth::Validator.validate!(input[:require_numbers], ::TrueClass, ::FalseClass, context: "#{context}[:require_numbers]")
        Hearth::Validator.validate!(input[:require_symbols], ::TrueClass, ::FalseClass, context: "#{context}[:require_symbols]")
        Hearth::Validator.validate!(input[:temporary_password_validity_days], ::Integer, context: "#{context}[:temporary_password_validity_days]")
      end
    end

    class PasswordResetRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PasswordResetRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PreconditionNotMetException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreconditionNotMetException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ProviderDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProviderDescription, context: context)
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:provider_type], ::String, context: "#{context}[:provider_type]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class ProviderDetailsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ProviderUserIdentifierType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProviderUserIdentifierType, context: context)
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:provider_attribute_name], ::String, context: "#{context}[:provider_attribute_name]")
        Hearth::Validator.validate!(input[:provider_attribute_value], ::String, context: "#{context}[:provider_attribute_value]")
      end
    end

    class ProvidersListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProviderDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecoveryMechanismsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecoveryOptionType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecoveryOptionType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecoveryOptionType, context: context)
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ResendConfirmationCodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResendConfirmationCodeInput, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:secret_hash], ::String, context: "#{context}[:secret_hash]")
        UserContextDataType.validate!(input[:user_context_data], context: "#{context}[:user_context_data]") unless input[:user_context_data].nil?
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        AnalyticsMetadataType.validate!(input[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless input[:analytics_metadata].nil?
        ClientMetadataType.validate!(input[:client_metadata], context: "#{context}[:client_metadata]") unless input[:client_metadata].nil?
      end
    end

    class ResendConfirmationCodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResendConfirmationCodeOutput, context: context)
        CodeDeliveryDetailsType.validate!(input[:code_delivery_details], context: "#{context}[:code_delivery_details]") unless input[:code_delivery_details].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceServerScopeListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceServerScopeType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceServerScopeType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceServerScopeType, context: context)
        Hearth::Validator.validate!(input[:scope_name], ::String, context: "#{context}[:scope_name]")
        Hearth::Validator.validate!(input[:scope_description], ::String, context: "#{context}[:scope_description]")
      end
    end

    class ResourceServerType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceServerType, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ResourceServerScopeListType.validate!(input[:scopes], context: "#{context}[:scopes]") unless input[:scopes].nil?
      end
    end

    class ResourceServersListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceServerType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RespondToAuthChallengeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RespondToAuthChallengeInput, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:challenge_name], ::String, context: "#{context}[:challenge_name]")
        Hearth::Validator.validate!(input[:session], ::String, context: "#{context}[:session]")
        ChallengeResponsesType.validate!(input[:challenge_responses], context: "#{context}[:challenge_responses]") unless input[:challenge_responses].nil?
        AnalyticsMetadataType.validate!(input[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless input[:analytics_metadata].nil?
        UserContextDataType.validate!(input[:user_context_data], context: "#{context}[:user_context_data]") unless input[:user_context_data].nil?
        ClientMetadataType.validate!(input[:client_metadata], context: "#{context}[:client_metadata]") unless input[:client_metadata].nil?
      end
    end

    class RespondToAuthChallengeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RespondToAuthChallengeOutput, context: context)
        Hearth::Validator.validate!(input[:challenge_name], ::String, context: "#{context}[:challenge_name]")
        Hearth::Validator.validate!(input[:session], ::String, context: "#{context}[:session]")
        ChallengeParametersType.validate!(input[:challenge_parameters], context: "#{context}[:challenge_parameters]") unless input[:challenge_parameters].nil?
        AuthenticationResultType.validate!(input[:authentication_result], context: "#{context}[:authentication_result]") unless input[:authentication_result].nil?
      end
    end

    class RevokeTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeTokenInput, context: context)
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
      end
    end

    class RevokeTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokeTokenOutput, context: context)
      end
    end

    class RiskConfigurationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RiskConfigurationType, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        CompromisedCredentialsRiskConfigurationType.validate!(input[:compromised_credentials_risk_configuration], context: "#{context}[:compromised_credentials_risk_configuration]") unless input[:compromised_credentials_risk_configuration].nil?
        AccountTakeoverRiskConfigurationType.validate!(input[:account_takeover_risk_configuration], context: "#{context}[:account_takeover_risk_configuration]") unless input[:account_takeover_risk_configuration].nil?
        RiskExceptionConfigurationType.validate!(input[:risk_exception_configuration], context: "#{context}[:risk_exception_configuration]") unless input[:risk_exception_configuration].nil?
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
      end
    end

    class RiskExceptionConfigurationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RiskExceptionConfigurationType, context: context)
        BlockedIPRangeListType.validate!(input[:blocked_ip_range_list], context: "#{context}[:blocked_ip_range_list]") unless input[:blocked_ip_range_list].nil?
        SkippedIPRangeListType.validate!(input[:skipped_ip_range_list], context: "#{context}[:skipped_ip_range_list]") unless input[:skipped_ip_range_list].nil?
      end
    end

    class SMSMfaSettingsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SMSMfaSettingsType, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:preferred_mfa], ::TrueClass, ::FalseClass, context: "#{context}[:preferred_mfa]")
      end
    end

    class SchemaAttributeType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaAttributeType, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:attribute_data_type], ::String, context: "#{context}[:attribute_data_type]")
        Hearth::Validator.validate!(input[:developer_only_attribute], ::TrueClass, ::FalseClass, context: "#{context}[:developer_only_attribute]")
        Hearth::Validator.validate!(input[:mutable], ::TrueClass, ::FalseClass, context: "#{context}[:mutable]")
        Hearth::Validator.validate!(input[:required], ::TrueClass, ::FalseClass, context: "#{context}[:required]")
        NumberAttributeConstraintsType.validate!(input[:number_attribute_constraints], context: "#{context}[:number_attribute_constraints]") unless input[:number_attribute_constraints].nil?
        StringAttributeConstraintsType.validate!(input[:string_attribute_constraints], context: "#{context}[:string_attribute_constraints]") unless input[:string_attribute_constraints].nil?
      end
    end

    class SchemaAttributesListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SchemaAttributeType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScopeDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScopeDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ScopeListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SearchedAttributeNamesListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SetRiskConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetRiskConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        CompromisedCredentialsRiskConfigurationType.validate!(input[:compromised_credentials_risk_configuration], context: "#{context}[:compromised_credentials_risk_configuration]") unless input[:compromised_credentials_risk_configuration].nil?
        AccountTakeoverRiskConfigurationType.validate!(input[:account_takeover_risk_configuration], context: "#{context}[:account_takeover_risk_configuration]") unless input[:account_takeover_risk_configuration].nil?
        RiskExceptionConfigurationType.validate!(input[:risk_exception_configuration], context: "#{context}[:risk_exception_configuration]") unless input[:risk_exception_configuration].nil?
      end
    end

    class SetRiskConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetRiskConfigurationOutput, context: context)
        RiskConfigurationType.validate!(input[:risk_configuration], context: "#{context}[:risk_configuration]") unless input[:risk_configuration].nil?
      end
    end

    class SetUICustomizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetUICustomizationInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:css], ::String, context: "#{context}[:css]")
        Hearth::Validator.validate!(input[:image_file], ::String, context: "#{context}[:image_file]")
      end
    end

    class SetUICustomizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetUICustomizationOutput, context: context)
        UICustomizationType.validate!(input[:ui_customization], context: "#{context}[:ui_customization]") unless input[:ui_customization].nil?
      end
    end

    class SetUserMFAPreferenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetUserMFAPreferenceInput, context: context)
        SMSMfaSettingsType.validate!(input[:sms_mfa_settings], context: "#{context}[:sms_mfa_settings]") unless input[:sms_mfa_settings].nil?
        SoftwareTokenMfaSettingsType.validate!(input[:software_token_mfa_settings], context: "#{context}[:software_token_mfa_settings]") unless input[:software_token_mfa_settings].nil?
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
      end
    end

    class SetUserMFAPreferenceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetUserMFAPreferenceOutput, context: context)
      end
    end

    class SetUserPoolMfaConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetUserPoolMfaConfigInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        SmsMfaConfigType.validate!(input[:sms_mfa_configuration], context: "#{context}[:sms_mfa_configuration]") unless input[:sms_mfa_configuration].nil?
        SoftwareTokenMfaConfigType.validate!(input[:software_token_mfa_configuration], context: "#{context}[:software_token_mfa_configuration]") unless input[:software_token_mfa_configuration].nil?
        Hearth::Validator.validate!(input[:mfa_configuration], ::String, context: "#{context}[:mfa_configuration]")
      end
    end

    class SetUserPoolMfaConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetUserPoolMfaConfigOutput, context: context)
        SmsMfaConfigType.validate!(input[:sms_mfa_configuration], context: "#{context}[:sms_mfa_configuration]") unless input[:sms_mfa_configuration].nil?
        SoftwareTokenMfaConfigType.validate!(input[:software_token_mfa_configuration], context: "#{context}[:software_token_mfa_configuration]") unless input[:software_token_mfa_configuration].nil?
        Hearth::Validator.validate!(input[:mfa_configuration], ::String, context: "#{context}[:mfa_configuration]")
      end
    end

    class SetUserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetUserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        MFAOptionListType.validate!(input[:mfa_options], context: "#{context}[:mfa_options]") unless input[:mfa_options].nil?
      end
    end

    class SetUserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetUserSettingsOutput, context: context)
      end
    end

    class SignUpInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SignUpInput, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:secret_hash], ::String, context: "#{context}[:secret_hash]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        AttributeListType.validate!(input[:user_attributes], context: "#{context}[:user_attributes]") unless input[:user_attributes].nil?
        AttributeListType.validate!(input[:validation_data], context: "#{context}[:validation_data]") unless input[:validation_data].nil?
        AnalyticsMetadataType.validate!(input[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless input[:analytics_metadata].nil?
        UserContextDataType.validate!(input[:user_context_data], context: "#{context}[:user_context_data]") unless input[:user_context_data].nil?
        ClientMetadataType.validate!(input[:client_metadata], context: "#{context}[:client_metadata]") unless input[:client_metadata].nil?
      end
    end

    class SignUpOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SignUpOutput, context: context)
        Hearth::Validator.validate!(input[:user_confirmed], ::TrueClass, ::FalseClass, context: "#{context}[:user_confirmed]")
        CodeDeliveryDetailsType.validate!(input[:code_delivery_details], context: "#{context}[:code_delivery_details]") unless input[:code_delivery_details].nil?
        Hearth::Validator.validate!(input[:user_sub], ::String, context: "#{context}[:user_sub]")
      end
    end

    class SkippedIPRangeListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SmsConfigurationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SmsConfigurationType, context: context)
        Hearth::Validator.validate!(input[:sns_caller_arn], ::String, context: "#{context}[:sns_caller_arn]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Hearth::Validator.validate!(input[:sns_region], ::String, context: "#{context}[:sns_region]")
      end
    end

    class SmsMfaConfigType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SmsMfaConfigType, context: context)
        Hearth::Validator.validate!(input[:sms_authentication_message], ::String, context: "#{context}[:sms_authentication_message]")
        SmsConfigurationType.validate!(input[:sms_configuration], context: "#{context}[:sms_configuration]") unless input[:sms_configuration].nil?
      end
    end

    class SoftwareTokenMFANotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SoftwareTokenMFANotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SoftwareTokenMfaConfigType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SoftwareTokenMfaConfigType, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class SoftwareTokenMfaSettingsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SoftwareTokenMfaSettingsType, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:preferred_mfa], ::TrueClass, ::FalseClass, context: "#{context}[:preferred_mfa]")
      end
    end

    class StartUserImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartUserImportJobInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartUserImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartUserImportJobOutput, context: context)
        UserImportJobType.validate!(input[:user_import_job], context: "#{context}[:user_import_job]") unless input[:user_import_job].nil?
      end
    end

    class StopUserImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopUserImportJobInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopUserImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopUserImportJobOutput, context: context)
        UserImportJobType.validate!(input[:user_import_job], context: "#{context}[:user_import_job]") unless input[:user_import_job].nil?
      end
    end

    class StringAttributeConstraintsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StringAttributeConstraintsType, context: context)
        Hearth::Validator.validate!(input[:min_length], ::String, context: "#{context}[:min_length]")
        Hearth::Validator.validate!(input[:max_length], ::String, context: "#{context}[:max_length]")
      end
    end

    class SupportedIdentityProvidersListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        UserPoolTagsType.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TokenValidityUnitsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TokenValidityUnitsType, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:id_token], ::String, context: "#{context}[:id_token]")
        Hearth::Validator.validate!(input[:refresh_token], ::String, context: "#{context}[:refresh_token]")
      end
    end

    class TooManyFailedAttemptsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyFailedAttemptsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UICustomizationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UICustomizationType, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:image_url], ::String, context: "#{context}[:image_url]")
        Hearth::Validator.validate!(input[:css], ::String, context: "#{context}[:css]")
        Hearth::Validator.validate!(input[:css_version], ::String, context: "#{context}[:css_version]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnexpectedLambdaException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnexpectedLambdaException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedIdentityProviderException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedIdentityProviderException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedTokenTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedTokenTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedUserStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedUserStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        UserPoolTagsListType.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAuthEventFeedbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAuthEventFeedbackInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:feedback_token], ::String, context: "#{context}[:feedback_token]")
        Hearth::Validator.validate!(input[:feedback_value], ::String, context: "#{context}[:feedback_value]")
      end
    end

    class UpdateAuthEventFeedbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAuthEventFeedbackOutput, context: context)
      end
    end

    class UpdateDeviceStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceStatusInput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:device_key], ::String, context: "#{context}[:device_key]")
        Hearth::Validator.validate!(input[:device_remembered_status], ::String, context: "#{context}[:device_remembered_status]")
      end
    end

    class UpdateDeviceStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceStatusOutput, context: context)
      end
    end

    class UpdateGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:precedence], ::Integer, context: "#{context}[:precedence]")
      end
    end

    class UpdateGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupOutput, context: context)
        GroupType.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
      end
    end

    class UpdateIdentityProviderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIdentityProviderInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        ProviderDetailsType.validate!(input[:provider_details], context: "#{context}[:provider_details]") unless input[:provider_details].nil?
        AttributeMappingType.validate!(input[:attribute_mapping], context: "#{context}[:attribute_mapping]") unless input[:attribute_mapping].nil?
        IdpIdentifiersListType.validate!(input[:idp_identifiers], context: "#{context}[:idp_identifiers]") unless input[:idp_identifiers].nil?
      end
    end

    class UpdateIdentityProviderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIdentityProviderOutput, context: context)
        IdentityProviderType.validate!(input[:identity_provider], context: "#{context}[:identity_provider]") unless input[:identity_provider].nil?
      end
    end

    class UpdateResourceServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceServerInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ResourceServerScopeListType.validate!(input[:scopes], context: "#{context}[:scopes]") unless input[:scopes].nil?
      end
    end

    class UpdateResourceServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceServerOutput, context: context)
        ResourceServerType.validate!(input[:resource_server], context: "#{context}[:resource_server]") unless input[:resource_server].nil?
      end
    end

    class UpdateUserAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserAttributesInput, context: context)
        AttributeListType.validate!(input[:user_attributes], context: "#{context}[:user_attributes]") unless input[:user_attributes].nil?
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        ClientMetadataType.validate!(input[:client_metadata], context: "#{context}[:client_metadata]") unless input[:client_metadata].nil?
      end
    end

    class UpdateUserAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserAttributesOutput, context: context)
        CodeDeliveryDetailsListType.validate!(input[:code_delivery_details_list], context: "#{context}[:code_delivery_details_list]") unless input[:code_delivery_details_list].nil?
      end
    end

    class UpdateUserPoolClientInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserPoolClientInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_name], ::String, context: "#{context}[:client_name]")
        Hearth::Validator.validate!(input[:refresh_token_validity], ::Integer, context: "#{context}[:refresh_token_validity]")
        Hearth::Validator.validate!(input[:access_token_validity], ::Integer, context: "#{context}[:access_token_validity]")
        Hearth::Validator.validate!(input[:id_token_validity], ::Integer, context: "#{context}[:id_token_validity]")
        TokenValidityUnitsType.validate!(input[:token_validity_units], context: "#{context}[:token_validity_units]") unless input[:token_validity_units].nil?
        ClientPermissionListType.validate!(input[:read_attributes], context: "#{context}[:read_attributes]") unless input[:read_attributes].nil?
        ClientPermissionListType.validate!(input[:write_attributes], context: "#{context}[:write_attributes]") unless input[:write_attributes].nil?
        ExplicitAuthFlowsListType.validate!(input[:explicit_auth_flows], context: "#{context}[:explicit_auth_flows]") unless input[:explicit_auth_flows].nil?
        SupportedIdentityProvidersListType.validate!(input[:supported_identity_providers], context: "#{context}[:supported_identity_providers]") unless input[:supported_identity_providers].nil?
        CallbackURLsListType.validate!(input[:callback_ur_ls], context: "#{context}[:callback_ur_ls]") unless input[:callback_ur_ls].nil?
        LogoutURLsListType.validate!(input[:logout_ur_ls], context: "#{context}[:logout_ur_ls]") unless input[:logout_ur_ls].nil?
        Hearth::Validator.validate!(input[:default_redirect_uri], ::String, context: "#{context}[:default_redirect_uri]")
        OAuthFlowsType.validate!(input[:allowed_o_auth_flows], context: "#{context}[:allowed_o_auth_flows]") unless input[:allowed_o_auth_flows].nil?
        ScopeListType.validate!(input[:allowed_o_auth_scopes], context: "#{context}[:allowed_o_auth_scopes]") unless input[:allowed_o_auth_scopes].nil?
        Hearth::Validator.validate!(input[:allowed_o_auth_flows_user_pool_client], ::TrueClass, ::FalseClass, context: "#{context}[:allowed_o_auth_flows_user_pool_client]")
        AnalyticsConfigurationType.validate!(input[:analytics_configuration], context: "#{context}[:analytics_configuration]") unless input[:analytics_configuration].nil?
        Hearth::Validator.validate!(input[:prevent_user_existence_errors], ::String, context: "#{context}[:prevent_user_existence_errors]")
        Hearth::Validator.validate!(input[:enable_token_revocation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_token_revocation]")
        Hearth::Validator.validate!(input[:enable_propagate_additional_user_context_data], ::TrueClass, ::FalseClass, context: "#{context}[:enable_propagate_additional_user_context_data]")
      end
    end

    class UpdateUserPoolClientOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserPoolClientOutput, context: context)
        UserPoolClientType.validate!(input[:user_pool_client], context: "#{context}[:user_pool_client]") unless input[:user_pool_client].nil?
      end
    end

    class UpdateUserPoolDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserPoolDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        CustomDomainConfigType.validate!(input[:custom_domain_config], context: "#{context}[:custom_domain_config]") unless input[:custom_domain_config].nil?
      end
    end

    class UpdateUserPoolDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserPoolDomainOutput, context: context)
        Hearth::Validator.validate!(input[:cloud_front_domain], ::String, context: "#{context}[:cloud_front_domain]")
      end
    end

    class UpdateUserPoolInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserPoolInput, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        UserPoolPolicyType.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        LambdaConfigType.validate!(input[:lambda_config], context: "#{context}[:lambda_config]") unless input[:lambda_config].nil?
        VerifiedAttributesListType.validate!(input[:auto_verified_attributes], context: "#{context}[:auto_verified_attributes]") unless input[:auto_verified_attributes].nil?
        Hearth::Validator.validate!(input[:sms_verification_message], ::String, context: "#{context}[:sms_verification_message]")
        Hearth::Validator.validate!(input[:email_verification_message], ::String, context: "#{context}[:email_verification_message]")
        Hearth::Validator.validate!(input[:email_verification_subject], ::String, context: "#{context}[:email_verification_subject]")
        VerificationMessageTemplateType.validate!(input[:verification_message_template], context: "#{context}[:verification_message_template]") unless input[:verification_message_template].nil?
        Hearth::Validator.validate!(input[:sms_authentication_message], ::String, context: "#{context}[:sms_authentication_message]")
        UserAttributeUpdateSettingsType.validate!(input[:user_attribute_update_settings], context: "#{context}[:user_attribute_update_settings]") unless input[:user_attribute_update_settings].nil?
        Hearth::Validator.validate!(input[:mfa_configuration], ::String, context: "#{context}[:mfa_configuration]")
        DeviceConfigurationType.validate!(input[:device_configuration], context: "#{context}[:device_configuration]") unless input[:device_configuration].nil?
        EmailConfigurationType.validate!(input[:email_configuration], context: "#{context}[:email_configuration]") unless input[:email_configuration].nil?
        SmsConfigurationType.validate!(input[:sms_configuration], context: "#{context}[:sms_configuration]") unless input[:sms_configuration].nil?
        UserPoolTagsType.validate!(input[:user_pool_tags], context: "#{context}[:user_pool_tags]") unless input[:user_pool_tags].nil?
        AdminCreateUserConfigType.validate!(input[:admin_create_user_config], context: "#{context}[:admin_create_user_config]") unless input[:admin_create_user_config].nil?
        UserPoolAddOnsType.validate!(input[:user_pool_add_ons], context: "#{context}[:user_pool_add_ons]") unless input[:user_pool_add_ons].nil?
        AccountRecoverySettingType.validate!(input[:account_recovery_setting], context: "#{context}[:account_recovery_setting]") unless input[:account_recovery_setting].nil?
      end
    end

    class UpdateUserPoolOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserPoolOutput, context: context)
      end
    end

    class UserAttributeUpdateSettingsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserAttributeUpdateSettingsType, context: context)
        AttributesRequireVerificationBeforeUpdateType.validate!(input[:attributes_require_verification_before_update], context: "#{context}[:attributes_require_verification_before_update]") unless input[:attributes_require_verification_before_update].nil?
      end
    end

    class UserContextDataType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserContextDataType, context: context)
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:encoded_data], ::String, context: "#{context}[:encoded_data]")
      end
    end

    class UserImportInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserImportInProgressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserImportJobType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserImportJobType, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:pre_signed_url], ::String, context: "#{context}[:pre_signed_url]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:completion_date], ::Time, context: "#{context}[:completion_date]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_role_arn], ::String, context: "#{context}[:cloud_watch_logs_role_arn]")
        Hearth::Validator.validate!(input[:imported_users], ::Integer, context: "#{context}[:imported_users]")
        Hearth::Validator.validate!(input[:skipped_users], ::Integer, context: "#{context}[:skipped_users]")
        Hearth::Validator.validate!(input[:failed_users], ::Integer, context: "#{context}[:failed_users]")
        Hearth::Validator.validate!(input[:completion_message], ::String, context: "#{context}[:completion_message]")
      end
    end

    class UserImportJobsListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserImportJobType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserLambdaValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserLambdaValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserMFASettingListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UserNotConfirmedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserNotConfirmedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserPoolAddOnNotEnabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserPoolAddOnNotEnabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserPoolAddOnsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserPoolAddOnsType, context: context)
        Hearth::Validator.validate!(input[:advanced_security_mode], ::String, context: "#{context}[:advanced_security_mode]")
      end
    end

    class UserPoolClientDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserPoolClientDescription, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:client_name], ::String, context: "#{context}[:client_name]")
      end
    end

    class UserPoolClientListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserPoolClientDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserPoolClientType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserPoolClientType, context: context)
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:client_name], ::String, context: "#{context}[:client_name]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:refresh_token_validity], ::Integer, context: "#{context}[:refresh_token_validity]")
        Hearth::Validator.validate!(input[:access_token_validity], ::Integer, context: "#{context}[:access_token_validity]")
        Hearth::Validator.validate!(input[:id_token_validity], ::Integer, context: "#{context}[:id_token_validity]")
        TokenValidityUnitsType.validate!(input[:token_validity_units], context: "#{context}[:token_validity_units]") unless input[:token_validity_units].nil?
        ClientPermissionListType.validate!(input[:read_attributes], context: "#{context}[:read_attributes]") unless input[:read_attributes].nil?
        ClientPermissionListType.validate!(input[:write_attributes], context: "#{context}[:write_attributes]") unless input[:write_attributes].nil?
        ExplicitAuthFlowsListType.validate!(input[:explicit_auth_flows], context: "#{context}[:explicit_auth_flows]") unless input[:explicit_auth_flows].nil?
        SupportedIdentityProvidersListType.validate!(input[:supported_identity_providers], context: "#{context}[:supported_identity_providers]") unless input[:supported_identity_providers].nil?
        CallbackURLsListType.validate!(input[:callback_ur_ls], context: "#{context}[:callback_ur_ls]") unless input[:callback_ur_ls].nil?
        LogoutURLsListType.validate!(input[:logout_ur_ls], context: "#{context}[:logout_ur_ls]") unless input[:logout_ur_ls].nil?
        Hearth::Validator.validate!(input[:default_redirect_uri], ::String, context: "#{context}[:default_redirect_uri]")
        OAuthFlowsType.validate!(input[:allowed_o_auth_flows], context: "#{context}[:allowed_o_auth_flows]") unless input[:allowed_o_auth_flows].nil?
        ScopeListType.validate!(input[:allowed_o_auth_scopes], context: "#{context}[:allowed_o_auth_scopes]") unless input[:allowed_o_auth_scopes].nil?
        Hearth::Validator.validate!(input[:allowed_o_auth_flows_user_pool_client], ::TrueClass, ::FalseClass, context: "#{context}[:allowed_o_auth_flows_user_pool_client]")
        AnalyticsConfigurationType.validate!(input[:analytics_configuration], context: "#{context}[:analytics_configuration]") unless input[:analytics_configuration].nil?
        Hearth::Validator.validate!(input[:prevent_user_existence_errors], ::String, context: "#{context}[:prevent_user_existence_errors]")
        Hearth::Validator.validate!(input[:enable_token_revocation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_token_revocation]")
        Hearth::Validator.validate!(input[:enable_propagate_additional_user_context_data], ::TrueClass, ::FalseClass, context: "#{context}[:enable_propagate_additional_user_context_data]")
      end
    end

    class UserPoolDescriptionType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserPoolDescriptionType, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        LambdaConfigType.validate!(input[:lambda_config], context: "#{context}[:lambda_config]") unless input[:lambda_config].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class UserPoolListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserPoolDescriptionType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserPoolPolicyType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserPoolPolicyType, context: context)
        PasswordPolicyType.validate!(input[:password_policy], context: "#{context}[:password_policy]") unless input[:password_policy].nil?
      end
    end

    class UserPoolTaggingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserPoolTaggingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserPoolTagsListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UserPoolTagsType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class UserPoolType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserPoolType, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        UserPoolPolicyType.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        LambdaConfigType.validate!(input[:lambda_config], context: "#{context}[:lambda_config]") unless input[:lambda_config].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        SchemaAttributesListType.validate!(input[:schema_attributes], context: "#{context}[:schema_attributes]") unless input[:schema_attributes].nil?
        VerifiedAttributesListType.validate!(input[:auto_verified_attributes], context: "#{context}[:auto_verified_attributes]") unless input[:auto_verified_attributes].nil?
        AliasAttributesListType.validate!(input[:alias_attributes], context: "#{context}[:alias_attributes]") unless input[:alias_attributes].nil?
        UsernameAttributesListType.validate!(input[:username_attributes], context: "#{context}[:username_attributes]") unless input[:username_attributes].nil?
        Hearth::Validator.validate!(input[:sms_verification_message], ::String, context: "#{context}[:sms_verification_message]")
        Hearth::Validator.validate!(input[:email_verification_message], ::String, context: "#{context}[:email_verification_message]")
        Hearth::Validator.validate!(input[:email_verification_subject], ::String, context: "#{context}[:email_verification_subject]")
        VerificationMessageTemplateType.validate!(input[:verification_message_template], context: "#{context}[:verification_message_template]") unless input[:verification_message_template].nil?
        Hearth::Validator.validate!(input[:sms_authentication_message], ::String, context: "#{context}[:sms_authentication_message]")
        UserAttributeUpdateSettingsType.validate!(input[:user_attribute_update_settings], context: "#{context}[:user_attribute_update_settings]") unless input[:user_attribute_update_settings].nil?
        Hearth::Validator.validate!(input[:mfa_configuration], ::String, context: "#{context}[:mfa_configuration]")
        DeviceConfigurationType.validate!(input[:device_configuration], context: "#{context}[:device_configuration]") unless input[:device_configuration].nil?
        Hearth::Validator.validate!(input[:estimated_number_of_users], ::Integer, context: "#{context}[:estimated_number_of_users]")
        EmailConfigurationType.validate!(input[:email_configuration], context: "#{context}[:email_configuration]") unless input[:email_configuration].nil?
        SmsConfigurationType.validate!(input[:sms_configuration], context: "#{context}[:sms_configuration]") unless input[:sms_configuration].nil?
        UserPoolTagsType.validate!(input[:user_pool_tags], context: "#{context}[:user_pool_tags]") unless input[:user_pool_tags].nil?
        Hearth::Validator.validate!(input[:sms_configuration_failure], ::String, context: "#{context}[:sms_configuration_failure]")
        Hearth::Validator.validate!(input[:email_configuration_failure], ::String, context: "#{context}[:email_configuration_failure]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:custom_domain], ::String, context: "#{context}[:custom_domain]")
        AdminCreateUserConfigType.validate!(input[:admin_create_user_config], context: "#{context}[:admin_create_user_config]") unless input[:admin_create_user_config].nil?
        UserPoolAddOnsType.validate!(input[:user_pool_add_ons], context: "#{context}[:user_pool_add_ons]") unless input[:user_pool_add_ons].nil?
        UsernameConfigurationType.validate!(input[:username_configuration], context: "#{context}[:username_configuration]") unless input[:username_configuration].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        AccountRecoverySettingType.validate!(input[:account_recovery_setting], context: "#{context}[:account_recovery_setting]") unless input[:account_recovery_setting].nil?
      end
    end

    class UserType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserType, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        AttributeListType.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:user_create_date], ::Time, context: "#{context}[:user_create_date]")
        Hearth::Validator.validate!(input[:user_last_modified_date], ::Time, context: "#{context}[:user_last_modified_date]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:user_status], ::String, context: "#{context}[:user_status]")
        MFAOptionListType.validate!(input[:mfa_options], context: "#{context}[:mfa_options]") unless input[:mfa_options].nil?
      end
    end

    class UsernameAttributesListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UsernameConfigurationType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsernameConfigurationType, context: context)
        Hearth::Validator.validate!(input[:case_sensitive], ::TrueClass, ::FalseClass, context: "#{context}[:case_sensitive]")
      end
    end

    class UsernameExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsernameExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UsersListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VerificationMessageTemplateType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerificationMessageTemplateType, context: context)
        Hearth::Validator.validate!(input[:sms_message], ::String, context: "#{context}[:sms_message]")
        Hearth::Validator.validate!(input[:email_message], ::String, context: "#{context}[:email_message]")
        Hearth::Validator.validate!(input[:email_subject], ::String, context: "#{context}[:email_subject]")
        Hearth::Validator.validate!(input[:email_message_by_link], ::String, context: "#{context}[:email_message_by_link]")
        Hearth::Validator.validate!(input[:email_subject_by_link], ::String, context: "#{context}[:email_subject_by_link]")
        Hearth::Validator.validate!(input[:default_email_option], ::String, context: "#{context}[:default_email_option]")
      end
    end

    class VerifiedAttributesListType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VerifySoftwareTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifySoftwareTokenInput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:session], ::String, context: "#{context}[:session]")
        Hearth::Validator.validate!(input[:user_code], ::String, context: "#{context}[:user_code]")
        Hearth::Validator.validate!(input[:friendly_device_name], ::String, context: "#{context}[:friendly_device_name]")
      end
    end

    class VerifySoftwareTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifySoftwareTokenOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:session], ::String, context: "#{context}[:session]")
      end
    end

    class VerifyUserAttributeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyUserAttributeInput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class VerifyUserAttributeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VerifyUserAttributeOutput, context: context)
      end
    end

  end
end
