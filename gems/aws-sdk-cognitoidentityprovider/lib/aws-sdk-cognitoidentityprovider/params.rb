# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CognitoIdentityProvider
  module Params

    module AccountRecoverySettingType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountRecoverySettingType, context: context)
        type = Types::AccountRecoverySettingType.new
        type.recovery_mechanisms = RecoveryMechanismsType.build(params[:recovery_mechanisms], context: "#{context}[:recovery_mechanisms]") unless params[:recovery_mechanisms].nil?
        type
      end
    end

    module AccountTakeoverActionType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountTakeoverActionType, context: context)
        type = Types::AccountTakeoverActionType.new
        type.notify = params[:notify]
        type.event_action = params[:event_action]
        type
      end
    end

    module AccountTakeoverActionsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountTakeoverActionsType, context: context)
        type = Types::AccountTakeoverActionsType.new
        type.low_action = AccountTakeoverActionType.build(params[:low_action], context: "#{context}[:low_action]") unless params[:low_action].nil?
        type.medium_action = AccountTakeoverActionType.build(params[:medium_action], context: "#{context}[:medium_action]") unless params[:medium_action].nil?
        type.high_action = AccountTakeoverActionType.build(params[:high_action], context: "#{context}[:high_action]") unless params[:high_action].nil?
        type
      end
    end

    module AccountTakeoverRiskConfigurationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountTakeoverRiskConfigurationType, context: context)
        type = Types::AccountTakeoverRiskConfigurationType.new
        type.notify_configuration = NotifyConfigurationType.build(params[:notify_configuration], context: "#{context}[:notify_configuration]") unless params[:notify_configuration].nil?
        type.actions = AccountTakeoverActionsType.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type
      end
    end

    module AddCustomAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddCustomAttributesInput, context: context)
        type = Types::AddCustomAttributesInput.new
        type.user_pool_id = params[:user_pool_id]
        type.custom_attributes = CustomAttributesListType.build(params[:custom_attributes], context: "#{context}[:custom_attributes]") unless params[:custom_attributes].nil?
        type
      end
    end

    module AddCustomAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddCustomAttributesOutput, context: context)
        type = Types::AddCustomAttributesOutput.new
        type
      end
    end

    module AdminAddUserToGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminAddUserToGroupInput, context: context)
        type = Types::AdminAddUserToGroupInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type.group_name = params[:group_name]
        type
      end
    end

    module AdminAddUserToGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminAddUserToGroupOutput, context: context)
        type = Types::AdminAddUserToGroupOutput.new
        type
      end
    end

    module AdminConfirmSignUpInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminConfirmSignUpInput, context: context)
        type = Types::AdminConfirmSignUpInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type.client_metadata = ClientMetadataType.build(params[:client_metadata], context: "#{context}[:client_metadata]") unless params[:client_metadata].nil?
        type
      end
    end

    module AdminConfirmSignUpOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminConfirmSignUpOutput, context: context)
        type = Types::AdminConfirmSignUpOutput.new
        type
      end
    end

    module AdminCreateUserConfigType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminCreateUserConfigType, context: context)
        type = Types::AdminCreateUserConfigType.new
        type.allow_admin_create_user_only = params[:allow_admin_create_user_only]
        type.unused_account_validity_days = params[:unused_account_validity_days]
        type.invite_message_template = MessageTemplateType.build(params[:invite_message_template], context: "#{context}[:invite_message_template]") unless params[:invite_message_template].nil?
        type
      end
    end

    module AdminCreateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminCreateUserInput, context: context)
        type = Types::AdminCreateUserInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type.user_attributes = AttributeListType.build(params[:user_attributes], context: "#{context}[:user_attributes]") unless params[:user_attributes].nil?
        type.validation_data = AttributeListType.build(params[:validation_data], context: "#{context}[:validation_data]") unless params[:validation_data].nil?
        type.temporary_password = params[:temporary_password]
        type.force_alias_creation = params[:force_alias_creation]
        type.message_action = params[:message_action]
        type.desired_delivery_mediums = DeliveryMediumListType.build(params[:desired_delivery_mediums], context: "#{context}[:desired_delivery_mediums]") unless params[:desired_delivery_mediums].nil?
        type.client_metadata = ClientMetadataType.build(params[:client_metadata], context: "#{context}[:client_metadata]") unless params[:client_metadata].nil?
        type
      end
    end

    module AdminCreateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminCreateUserOutput, context: context)
        type = Types::AdminCreateUserOutput.new
        type.user = UserType.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module AdminDeleteUserAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminDeleteUserAttributesInput, context: context)
        type = Types::AdminDeleteUserAttributesInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type.user_attribute_names = AttributeNameListType.build(params[:user_attribute_names], context: "#{context}[:user_attribute_names]") unless params[:user_attribute_names].nil?
        type
      end
    end

    module AdminDeleteUserAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminDeleteUserAttributesOutput, context: context)
        type = Types::AdminDeleteUserAttributesOutput.new
        type
      end
    end

    module AdminDeleteUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminDeleteUserInput, context: context)
        type = Types::AdminDeleteUserInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type
      end
    end

    module AdminDeleteUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminDeleteUserOutput, context: context)
        type = Types::AdminDeleteUserOutput.new
        type
      end
    end

    module AdminDisableProviderForUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminDisableProviderForUserInput, context: context)
        type = Types::AdminDisableProviderForUserInput.new
        type.user_pool_id = params[:user_pool_id]
        type.user = ProviderUserIdentifierType.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module AdminDisableProviderForUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminDisableProviderForUserOutput, context: context)
        type = Types::AdminDisableProviderForUserOutput.new
        type
      end
    end

    module AdminDisableUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminDisableUserInput, context: context)
        type = Types::AdminDisableUserInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type
      end
    end

    module AdminDisableUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminDisableUserOutput, context: context)
        type = Types::AdminDisableUserOutput.new
        type
      end
    end

    module AdminEnableUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminEnableUserInput, context: context)
        type = Types::AdminEnableUserInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type
      end
    end

    module AdminEnableUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminEnableUserOutput, context: context)
        type = Types::AdminEnableUserOutput.new
        type
      end
    end

    module AdminForgetDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminForgetDeviceInput, context: context)
        type = Types::AdminForgetDeviceInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type.device_key = params[:device_key]
        type
      end
    end

    module AdminForgetDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminForgetDeviceOutput, context: context)
        type = Types::AdminForgetDeviceOutput.new
        type
      end
    end

    module AdminGetDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminGetDeviceInput, context: context)
        type = Types::AdminGetDeviceInput.new
        type.device_key = params[:device_key]
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type
      end
    end

    module AdminGetDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminGetDeviceOutput, context: context)
        type = Types::AdminGetDeviceOutput.new
        type.device = DeviceType.build(params[:device], context: "#{context}[:device]") unless params[:device].nil?
        type
      end
    end

    module AdminGetUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminGetUserInput, context: context)
        type = Types::AdminGetUserInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type
      end
    end

    module AdminGetUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminGetUserOutput, context: context)
        type = Types::AdminGetUserOutput.new
        type.username = params[:username]
        type.user_attributes = AttributeListType.build(params[:user_attributes], context: "#{context}[:user_attributes]") unless params[:user_attributes].nil?
        type.user_create_date = params[:user_create_date]
        type.user_last_modified_date = params[:user_last_modified_date]
        type.enabled = params[:enabled]
        type.user_status = params[:user_status]
        type.mfa_options = MFAOptionListType.build(params[:mfa_options], context: "#{context}[:mfa_options]") unless params[:mfa_options].nil?
        type.preferred_mfa_setting = params[:preferred_mfa_setting]
        type.user_mfa_setting_list = UserMFASettingListType.build(params[:user_mfa_setting_list], context: "#{context}[:user_mfa_setting_list]") unless params[:user_mfa_setting_list].nil?
        type
      end
    end

    module AdminInitiateAuthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminInitiateAuthInput, context: context)
        type = Types::AdminInitiateAuthInput.new
        type.user_pool_id = params[:user_pool_id]
        type.client_id = params[:client_id]
        type.auth_flow = params[:auth_flow]
        type.auth_parameters = AuthParametersType.build(params[:auth_parameters], context: "#{context}[:auth_parameters]") unless params[:auth_parameters].nil?
        type.client_metadata = ClientMetadataType.build(params[:client_metadata], context: "#{context}[:client_metadata]") unless params[:client_metadata].nil?
        type.analytics_metadata = AnalyticsMetadataType.build(params[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless params[:analytics_metadata].nil?
        type.context_data = ContextDataType.build(params[:context_data], context: "#{context}[:context_data]") unless params[:context_data].nil?
        type
      end
    end

    module AdminInitiateAuthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminInitiateAuthOutput, context: context)
        type = Types::AdminInitiateAuthOutput.new
        type.challenge_name = params[:challenge_name]
        type.session = params[:session]
        type.challenge_parameters = ChallengeParametersType.build(params[:challenge_parameters], context: "#{context}[:challenge_parameters]") unless params[:challenge_parameters].nil?
        type.authentication_result = AuthenticationResultType.build(params[:authentication_result], context: "#{context}[:authentication_result]") unless params[:authentication_result].nil?
        type
      end
    end

    module AdminLinkProviderForUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminLinkProviderForUserInput, context: context)
        type = Types::AdminLinkProviderForUserInput.new
        type.user_pool_id = params[:user_pool_id]
        type.destination_user = ProviderUserIdentifierType.build(params[:destination_user], context: "#{context}[:destination_user]") unless params[:destination_user].nil?
        type.source_user = ProviderUserIdentifierType.build(params[:source_user], context: "#{context}[:source_user]") unless params[:source_user].nil?
        type
      end
    end

    module AdminLinkProviderForUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminLinkProviderForUserOutput, context: context)
        type = Types::AdminLinkProviderForUserOutput.new
        type
      end
    end

    module AdminListDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminListDevicesInput, context: context)
        type = Types::AdminListDevicesInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type.limit = params[:limit]
        type.pagination_token = params[:pagination_token]
        type
      end
    end

    module AdminListDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminListDevicesOutput, context: context)
        type = Types::AdminListDevicesOutput.new
        type.devices = DeviceListType.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type.pagination_token = params[:pagination_token]
        type
      end
    end

    module AdminListGroupsForUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminListGroupsForUserInput, context: context)
        type = Types::AdminListGroupsForUserInput.new
        type.username = params[:username]
        type.user_pool_id = params[:user_pool_id]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module AdminListGroupsForUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminListGroupsForUserOutput, context: context)
        type = Types::AdminListGroupsForUserOutput.new
        type.groups = GroupListType.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module AdminListUserAuthEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminListUserAuthEventsInput, context: context)
        type = Types::AdminListUserAuthEventsInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module AdminListUserAuthEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminListUserAuthEventsOutput, context: context)
        type = Types::AdminListUserAuthEventsOutput.new
        type.auth_events = AuthEventsType.build(params[:auth_events], context: "#{context}[:auth_events]") unless params[:auth_events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module AdminRemoveUserFromGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminRemoveUserFromGroupInput, context: context)
        type = Types::AdminRemoveUserFromGroupInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type.group_name = params[:group_name]
        type
      end
    end

    module AdminRemoveUserFromGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminRemoveUserFromGroupOutput, context: context)
        type = Types::AdminRemoveUserFromGroupOutput.new
        type
      end
    end

    module AdminResetUserPasswordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminResetUserPasswordInput, context: context)
        type = Types::AdminResetUserPasswordInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type.client_metadata = ClientMetadataType.build(params[:client_metadata], context: "#{context}[:client_metadata]") unless params[:client_metadata].nil?
        type
      end
    end

    module AdminResetUserPasswordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminResetUserPasswordOutput, context: context)
        type = Types::AdminResetUserPasswordOutput.new
        type
      end
    end

    module AdminRespondToAuthChallengeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminRespondToAuthChallengeInput, context: context)
        type = Types::AdminRespondToAuthChallengeInput.new
        type.user_pool_id = params[:user_pool_id]
        type.client_id = params[:client_id]
        type.challenge_name = params[:challenge_name]
        type.challenge_responses = ChallengeResponsesType.build(params[:challenge_responses], context: "#{context}[:challenge_responses]") unless params[:challenge_responses].nil?
        type.session = params[:session]
        type.analytics_metadata = AnalyticsMetadataType.build(params[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless params[:analytics_metadata].nil?
        type.context_data = ContextDataType.build(params[:context_data], context: "#{context}[:context_data]") unless params[:context_data].nil?
        type.client_metadata = ClientMetadataType.build(params[:client_metadata], context: "#{context}[:client_metadata]") unless params[:client_metadata].nil?
        type
      end
    end

    module AdminRespondToAuthChallengeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminRespondToAuthChallengeOutput, context: context)
        type = Types::AdminRespondToAuthChallengeOutput.new
        type.challenge_name = params[:challenge_name]
        type.session = params[:session]
        type.challenge_parameters = ChallengeParametersType.build(params[:challenge_parameters], context: "#{context}[:challenge_parameters]") unless params[:challenge_parameters].nil?
        type.authentication_result = AuthenticationResultType.build(params[:authentication_result], context: "#{context}[:authentication_result]") unless params[:authentication_result].nil?
        type
      end
    end

    module AdminSetUserMFAPreferenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminSetUserMFAPreferenceInput, context: context)
        type = Types::AdminSetUserMFAPreferenceInput.new
        type.sms_mfa_settings = SMSMfaSettingsType.build(params[:sms_mfa_settings], context: "#{context}[:sms_mfa_settings]") unless params[:sms_mfa_settings].nil?
        type.software_token_mfa_settings = SoftwareTokenMfaSettingsType.build(params[:software_token_mfa_settings], context: "#{context}[:software_token_mfa_settings]") unless params[:software_token_mfa_settings].nil?
        type.username = params[:username]
        type.user_pool_id = params[:user_pool_id]
        type
      end
    end

    module AdminSetUserMFAPreferenceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminSetUserMFAPreferenceOutput, context: context)
        type = Types::AdminSetUserMFAPreferenceOutput.new
        type
      end
    end

    module AdminSetUserPasswordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminSetUserPasswordInput, context: context)
        type = Types::AdminSetUserPasswordInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type.password = params[:password]
        type.permanent = params[:permanent]
        type
      end
    end

    module AdminSetUserPasswordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminSetUserPasswordOutput, context: context)
        type = Types::AdminSetUserPasswordOutput.new
        type
      end
    end

    module AdminSetUserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminSetUserSettingsInput, context: context)
        type = Types::AdminSetUserSettingsInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type.mfa_options = MFAOptionListType.build(params[:mfa_options], context: "#{context}[:mfa_options]") unless params[:mfa_options].nil?
        type
      end
    end

    module AdminSetUserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminSetUserSettingsOutput, context: context)
        type = Types::AdminSetUserSettingsOutput.new
        type
      end
    end

    module AdminUpdateAuthEventFeedbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminUpdateAuthEventFeedbackInput, context: context)
        type = Types::AdminUpdateAuthEventFeedbackInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type.event_id = params[:event_id]
        type.feedback_value = params[:feedback_value]
        type
      end
    end

    module AdminUpdateAuthEventFeedbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminUpdateAuthEventFeedbackOutput, context: context)
        type = Types::AdminUpdateAuthEventFeedbackOutput.new
        type
      end
    end

    module AdminUpdateDeviceStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminUpdateDeviceStatusInput, context: context)
        type = Types::AdminUpdateDeviceStatusInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type.device_key = params[:device_key]
        type.device_remembered_status = params[:device_remembered_status]
        type
      end
    end

    module AdminUpdateDeviceStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminUpdateDeviceStatusOutput, context: context)
        type = Types::AdminUpdateDeviceStatusOutput.new
        type
      end
    end

    module AdminUpdateUserAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminUpdateUserAttributesInput, context: context)
        type = Types::AdminUpdateUserAttributesInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type.user_attributes = AttributeListType.build(params[:user_attributes], context: "#{context}[:user_attributes]") unless params[:user_attributes].nil?
        type.client_metadata = ClientMetadataType.build(params[:client_metadata], context: "#{context}[:client_metadata]") unless params[:client_metadata].nil?
        type
      end
    end

    module AdminUpdateUserAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminUpdateUserAttributesOutput, context: context)
        type = Types::AdminUpdateUserAttributesOutput.new
        type
      end
    end

    module AdminUserGlobalSignOutInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminUserGlobalSignOutInput, context: context)
        type = Types::AdminUserGlobalSignOutInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type
      end
    end

    module AdminUserGlobalSignOutOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdminUserGlobalSignOutOutput, context: context)
        type = Types::AdminUserGlobalSignOutOutput.new
        type
      end
    end

    module AliasAttributesListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AliasExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AliasExistsException, context: context)
        type = Types::AliasExistsException.new
        type.message = params[:message]
        type
      end
    end

    module AnalyticsConfigurationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalyticsConfigurationType, context: context)
        type = Types::AnalyticsConfigurationType.new
        type.application_id = params[:application_id]
        type.application_arn = params[:application_arn]
        type.role_arn = params[:role_arn]
        type.external_id = params[:external_id]
        type.user_data_shared = params[:user_data_shared]
        type
      end
    end

    module AnalyticsMetadataType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalyticsMetadataType, context: context)
        type = Types::AnalyticsMetadataType.new
        type.analytics_endpoint_id = params[:analytics_endpoint_id]
        type
      end
    end

    module AssociateSoftwareTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateSoftwareTokenInput, context: context)
        type = Types::AssociateSoftwareTokenInput.new
        type.access_token = params[:access_token]
        type.session = params[:session]
        type
      end
    end

    module AssociateSoftwareTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateSoftwareTokenOutput, context: context)
        type = Types::AssociateSoftwareTokenOutput.new
        type.secret_code = params[:secret_code]
        type.session = params[:session]
        type
      end
    end

    module AttributeListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttributeMappingType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AttributeNameListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AttributeType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeType, context: context)
        type = Types::AttributeType.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module AttributesRequireVerificationBeforeUpdateType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AuthEventType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthEventType, context: context)
        type = Types::AuthEventType.new
        type.event_id = params[:event_id]
        type.event_type = params[:event_type]
        type.creation_date = params[:creation_date]
        type.event_response = params[:event_response]
        type.event_risk = EventRiskType.build(params[:event_risk], context: "#{context}[:event_risk]") unless params[:event_risk].nil?
        type.challenge_responses = ChallengeResponseListType.build(params[:challenge_responses], context: "#{context}[:challenge_responses]") unless params[:challenge_responses].nil?
        type.event_context_data = EventContextDataType.build(params[:event_context_data], context: "#{context}[:event_context_data]") unless params[:event_context_data].nil?
        type.event_feedback = EventFeedbackType.build(params[:event_feedback], context: "#{context}[:event_feedback]") unless params[:event_feedback].nil?
        type
      end
    end

    module AuthEventsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AuthEventType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AuthParametersType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AuthenticationResultType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticationResultType, context: context)
        type = Types::AuthenticationResultType.new
        type.access_token = params[:access_token]
        type.expires_in = params[:expires_in]
        type.token_type = params[:token_type]
        type.refresh_token = params[:refresh_token]
        type.id_token = params[:id_token]
        type.new_device_metadata = NewDeviceMetadataType.build(params[:new_device_metadata], context: "#{context}[:new_device_metadata]") unless params[:new_device_metadata].nil?
        type
      end
    end

    module BlockedIPRangeListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CallbackURLsListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ChallengeParametersType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ChallengeResponseListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChallengeResponseType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChallengeResponseType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChallengeResponseType, context: context)
        type = Types::ChallengeResponseType.new
        type.challenge_name = params[:challenge_name]
        type.challenge_response = params[:challenge_response]
        type
      end
    end

    module ChallengeResponsesType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ChangePasswordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangePasswordInput, context: context)
        type = Types::ChangePasswordInput.new
        type.previous_password = params[:previous_password]
        type.proposed_password = params[:proposed_password]
        type.access_token = params[:access_token]
        type
      end
    end

    module ChangePasswordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangePasswordOutput, context: context)
        type = Types::ChangePasswordOutput.new
        type
      end
    end

    module ClientMetadataType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ClientPermissionListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CodeDeliveryDetailsListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CodeDeliveryDetailsType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CodeDeliveryDetailsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeDeliveryDetailsType, context: context)
        type = Types::CodeDeliveryDetailsType.new
        type.destination = params[:destination]
        type.delivery_medium = params[:delivery_medium]
        type.attribute_name = params[:attribute_name]
        type
      end
    end

    module CodeDeliveryFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeDeliveryFailureException, context: context)
        type = Types::CodeDeliveryFailureException.new
        type.message = params[:message]
        type
      end
    end

    module CodeMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeMismatchException, context: context)
        type = Types::CodeMismatchException.new
        type.message = params[:message]
        type
      end
    end

    module CompromisedCredentialsActionsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompromisedCredentialsActionsType, context: context)
        type = Types::CompromisedCredentialsActionsType.new
        type.event_action = params[:event_action]
        type
      end
    end

    module CompromisedCredentialsRiskConfigurationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompromisedCredentialsRiskConfigurationType, context: context)
        type = Types::CompromisedCredentialsRiskConfigurationType.new
        type.event_filter = EventFiltersType.build(params[:event_filter], context: "#{context}[:event_filter]") unless params[:event_filter].nil?
        type.actions = CompromisedCredentialsActionsType.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module ConfirmDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmDeviceInput, context: context)
        type = Types::ConfirmDeviceInput.new
        type.access_token = params[:access_token]
        type.device_key = params[:device_key]
        type.device_secret_verifier_config = DeviceSecretVerifierConfigType.build(params[:device_secret_verifier_config], context: "#{context}[:device_secret_verifier_config]") unless params[:device_secret_verifier_config].nil?
        type.device_name = params[:device_name]
        type
      end
    end

    module ConfirmDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmDeviceOutput, context: context)
        type = Types::ConfirmDeviceOutput.new
        type.user_confirmation_necessary = params[:user_confirmation_necessary]
        type
      end
    end

    module ConfirmForgotPasswordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmForgotPasswordInput, context: context)
        type = Types::ConfirmForgotPasswordInput.new
        type.client_id = params[:client_id]
        type.secret_hash = params[:secret_hash]
        type.username = params[:username]
        type.confirmation_code = params[:confirmation_code]
        type.password = params[:password]
        type.analytics_metadata = AnalyticsMetadataType.build(params[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless params[:analytics_metadata].nil?
        type.user_context_data = UserContextDataType.build(params[:user_context_data], context: "#{context}[:user_context_data]") unless params[:user_context_data].nil?
        type.client_metadata = ClientMetadataType.build(params[:client_metadata], context: "#{context}[:client_metadata]") unless params[:client_metadata].nil?
        type
      end
    end

    module ConfirmForgotPasswordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmForgotPasswordOutput, context: context)
        type = Types::ConfirmForgotPasswordOutput.new
        type
      end
    end

    module ConfirmSignUpInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmSignUpInput, context: context)
        type = Types::ConfirmSignUpInput.new
        type.client_id = params[:client_id]
        type.secret_hash = params[:secret_hash]
        type.username = params[:username]
        type.confirmation_code = params[:confirmation_code]
        type.force_alias_creation = params[:force_alias_creation]
        type.analytics_metadata = AnalyticsMetadataType.build(params[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless params[:analytics_metadata].nil?
        type.user_context_data = UserContextDataType.build(params[:user_context_data], context: "#{context}[:user_context_data]") unless params[:user_context_data].nil?
        type.client_metadata = ClientMetadataType.build(params[:client_metadata], context: "#{context}[:client_metadata]") unless params[:client_metadata].nil?
        type
      end
    end

    module ConfirmSignUpOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfirmSignUpOutput, context: context)
        type = Types::ConfirmSignUpOutput.new
        type
      end
    end

    module ContextDataType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContextDataType, context: context)
        type = Types::ContextDataType.new
        type.ip_address = params[:ip_address]
        type.server_name = params[:server_name]
        type.server_path = params[:server_path]
        type.http_headers = HttpHeaderList.build(params[:http_headers], context: "#{context}[:http_headers]") unless params[:http_headers].nil?
        type.encoded_data = params[:encoded_data]
        type
      end
    end

    module CreateGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupInput, context: context)
        type = Types::CreateGroupInput.new
        type.group_name = params[:group_name]
        type.user_pool_id = params[:user_pool_id]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.precedence = params[:precedence]
        type
      end
    end

    module CreateGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupOutput, context: context)
        type = Types::CreateGroupOutput.new
        type.group = GroupType.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type
      end
    end

    module CreateIdentityProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIdentityProviderInput, context: context)
        type = Types::CreateIdentityProviderInput.new
        type.user_pool_id = params[:user_pool_id]
        type.provider_name = params[:provider_name]
        type.provider_type = params[:provider_type]
        type.provider_details = ProviderDetailsType.build(params[:provider_details], context: "#{context}[:provider_details]") unless params[:provider_details].nil?
        type.attribute_mapping = AttributeMappingType.build(params[:attribute_mapping], context: "#{context}[:attribute_mapping]") unless params[:attribute_mapping].nil?
        type.idp_identifiers = IdpIdentifiersListType.build(params[:idp_identifiers], context: "#{context}[:idp_identifiers]") unless params[:idp_identifiers].nil?
        type
      end
    end

    module CreateIdentityProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIdentityProviderOutput, context: context)
        type = Types::CreateIdentityProviderOutput.new
        type.identity_provider = IdentityProviderType.build(params[:identity_provider], context: "#{context}[:identity_provider]") unless params[:identity_provider].nil?
        type
      end
    end

    module CreateResourceServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceServerInput, context: context)
        type = Types::CreateResourceServerInput.new
        type.user_pool_id = params[:user_pool_id]
        type.identifier = params[:identifier]
        type.name = params[:name]
        type.scopes = ResourceServerScopeListType.build(params[:scopes], context: "#{context}[:scopes]") unless params[:scopes].nil?
        type
      end
    end

    module CreateResourceServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceServerOutput, context: context)
        type = Types::CreateResourceServerOutput.new
        type.resource_server = ResourceServerType.build(params[:resource_server], context: "#{context}[:resource_server]") unless params[:resource_server].nil?
        type
      end
    end

    module CreateUserImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserImportJobInput, context: context)
        type = Types::CreateUserImportJobInput.new
        type.job_name = params[:job_name]
        type.user_pool_id = params[:user_pool_id]
        type.cloud_watch_logs_role_arn = params[:cloud_watch_logs_role_arn]
        type
      end
    end

    module CreateUserImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserImportJobOutput, context: context)
        type = Types::CreateUserImportJobOutput.new
        type.user_import_job = UserImportJobType.build(params[:user_import_job], context: "#{context}[:user_import_job]") unless params[:user_import_job].nil?
        type
      end
    end

    module CreateUserPoolClientInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserPoolClientInput, context: context)
        type = Types::CreateUserPoolClientInput.new
        type.user_pool_id = params[:user_pool_id]
        type.client_name = params[:client_name]
        type.generate_secret = params[:generate_secret]
        type.refresh_token_validity = params[:refresh_token_validity]
        type.access_token_validity = params[:access_token_validity]
        type.id_token_validity = params[:id_token_validity]
        type.token_validity_units = TokenValidityUnitsType.build(params[:token_validity_units], context: "#{context}[:token_validity_units]") unless params[:token_validity_units].nil?
        type.read_attributes = ClientPermissionListType.build(params[:read_attributes], context: "#{context}[:read_attributes]") unless params[:read_attributes].nil?
        type.write_attributes = ClientPermissionListType.build(params[:write_attributes], context: "#{context}[:write_attributes]") unless params[:write_attributes].nil?
        type.explicit_auth_flows = ExplicitAuthFlowsListType.build(params[:explicit_auth_flows], context: "#{context}[:explicit_auth_flows]") unless params[:explicit_auth_flows].nil?
        type.supported_identity_providers = SupportedIdentityProvidersListType.build(params[:supported_identity_providers], context: "#{context}[:supported_identity_providers]") unless params[:supported_identity_providers].nil?
        type.callback_ur_ls = CallbackURLsListType.build(params[:callback_ur_ls], context: "#{context}[:callback_ur_ls]") unless params[:callback_ur_ls].nil?
        type.logout_ur_ls = LogoutURLsListType.build(params[:logout_ur_ls], context: "#{context}[:logout_ur_ls]") unless params[:logout_ur_ls].nil?
        type.default_redirect_uri = params[:default_redirect_uri]
        type.allowed_o_auth_flows = OAuthFlowsType.build(params[:allowed_o_auth_flows], context: "#{context}[:allowed_o_auth_flows]") unless params[:allowed_o_auth_flows].nil?
        type.allowed_o_auth_scopes = ScopeListType.build(params[:allowed_o_auth_scopes], context: "#{context}[:allowed_o_auth_scopes]") unless params[:allowed_o_auth_scopes].nil?
        type.allowed_o_auth_flows_user_pool_client = params[:allowed_o_auth_flows_user_pool_client]
        type.analytics_configuration = AnalyticsConfigurationType.build(params[:analytics_configuration], context: "#{context}[:analytics_configuration]") unless params[:analytics_configuration].nil?
        type.prevent_user_existence_errors = params[:prevent_user_existence_errors]
        type.enable_token_revocation = params[:enable_token_revocation]
        type.enable_propagate_additional_user_context_data = params[:enable_propagate_additional_user_context_data]
        type
      end
    end

    module CreateUserPoolClientOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserPoolClientOutput, context: context)
        type = Types::CreateUserPoolClientOutput.new
        type.user_pool_client = UserPoolClientType.build(params[:user_pool_client], context: "#{context}[:user_pool_client]") unless params[:user_pool_client].nil?
        type
      end
    end

    module CreateUserPoolDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserPoolDomainInput, context: context)
        type = Types::CreateUserPoolDomainInput.new
        type.domain = params[:domain]
        type.user_pool_id = params[:user_pool_id]
        type.custom_domain_config = CustomDomainConfigType.build(params[:custom_domain_config], context: "#{context}[:custom_domain_config]") unless params[:custom_domain_config].nil?
        type
      end
    end

    module CreateUserPoolDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserPoolDomainOutput, context: context)
        type = Types::CreateUserPoolDomainOutput.new
        type.cloud_front_domain = params[:cloud_front_domain]
        type
      end
    end

    module CreateUserPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserPoolInput, context: context)
        type = Types::CreateUserPoolInput.new
        type.pool_name = params[:pool_name]
        type.policies = UserPoolPolicyType.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.lambda_config = LambdaConfigType.build(params[:lambda_config], context: "#{context}[:lambda_config]") unless params[:lambda_config].nil?
        type.auto_verified_attributes = VerifiedAttributesListType.build(params[:auto_verified_attributes], context: "#{context}[:auto_verified_attributes]") unless params[:auto_verified_attributes].nil?
        type.alias_attributes = AliasAttributesListType.build(params[:alias_attributes], context: "#{context}[:alias_attributes]") unless params[:alias_attributes].nil?
        type.username_attributes = UsernameAttributesListType.build(params[:username_attributes], context: "#{context}[:username_attributes]") unless params[:username_attributes].nil?
        type.sms_verification_message = params[:sms_verification_message]
        type.email_verification_message = params[:email_verification_message]
        type.email_verification_subject = params[:email_verification_subject]
        type.verification_message_template = VerificationMessageTemplateType.build(params[:verification_message_template], context: "#{context}[:verification_message_template]") unless params[:verification_message_template].nil?
        type.sms_authentication_message = params[:sms_authentication_message]
        type.mfa_configuration = params[:mfa_configuration]
        type.user_attribute_update_settings = UserAttributeUpdateSettingsType.build(params[:user_attribute_update_settings], context: "#{context}[:user_attribute_update_settings]") unless params[:user_attribute_update_settings].nil?
        type.device_configuration = DeviceConfigurationType.build(params[:device_configuration], context: "#{context}[:device_configuration]") unless params[:device_configuration].nil?
        type.email_configuration = EmailConfigurationType.build(params[:email_configuration], context: "#{context}[:email_configuration]") unless params[:email_configuration].nil?
        type.sms_configuration = SmsConfigurationType.build(params[:sms_configuration], context: "#{context}[:sms_configuration]") unless params[:sms_configuration].nil?
        type.user_pool_tags = UserPoolTagsType.build(params[:user_pool_tags], context: "#{context}[:user_pool_tags]") unless params[:user_pool_tags].nil?
        type.admin_create_user_config = AdminCreateUserConfigType.build(params[:admin_create_user_config], context: "#{context}[:admin_create_user_config]") unless params[:admin_create_user_config].nil?
        type.schema = SchemaAttributesListType.build(params[:schema], context: "#{context}[:schema]") unless params[:schema].nil?
        type.user_pool_add_ons = UserPoolAddOnsType.build(params[:user_pool_add_ons], context: "#{context}[:user_pool_add_ons]") unless params[:user_pool_add_ons].nil?
        type.username_configuration = UsernameConfigurationType.build(params[:username_configuration], context: "#{context}[:username_configuration]") unless params[:username_configuration].nil?
        type.account_recovery_setting = AccountRecoverySettingType.build(params[:account_recovery_setting], context: "#{context}[:account_recovery_setting]") unless params[:account_recovery_setting].nil?
        type
      end
    end

    module CreateUserPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserPoolOutput, context: context)
        type = Types::CreateUserPoolOutput.new
        type.user_pool = UserPoolType.build(params[:user_pool], context: "#{context}[:user_pool]") unless params[:user_pool].nil?
        type
      end
    end

    module CustomAttributesListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SchemaAttributeType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomDomainConfigType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomDomainConfigType, context: context)
        type = Types::CustomDomainConfigType.new
        type.certificate_arn = params[:certificate_arn]
        type
      end
    end

    module CustomEmailLambdaVersionConfigType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomEmailLambdaVersionConfigType, context: context)
        type = Types::CustomEmailLambdaVersionConfigType.new
        type.lambda_version = params[:lambda_version]
        type.lambda_arn = params[:lambda_arn]
        type
      end
    end

    module CustomSMSLambdaVersionConfigType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomSMSLambdaVersionConfigType, context: context)
        type = Types::CustomSMSLambdaVersionConfigType.new
        type.lambda_version = params[:lambda_version]
        type.lambda_arn = params[:lambda_arn]
        type
      end
    end

    module DeleteGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupInput, context: context)
        type = Types::DeleteGroupInput.new
        type.group_name = params[:group_name]
        type.user_pool_id = params[:user_pool_id]
        type
      end
    end

    module DeleteGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupOutput, context: context)
        type = Types::DeleteGroupOutput.new
        type
      end
    end

    module DeleteIdentityProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIdentityProviderInput, context: context)
        type = Types::DeleteIdentityProviderInput.new
        type.user_pool_id = params[:user_pool_id]
        type.provider_name = params[:provider_name]
        type
      end
    end

    module DeleteIdentityProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIdentityProviderOutput, context: context)
        type = Types::DeleteIdentityProviderOutput.new
        type
      end
    end

    module DeleteResourceServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceServerInput, context: context)
        type = Types::DeleteResourceServerInput.new
        type.user_pool_id = params[:user_pool_id]
        type.identifier = params[:identifier]
        type
      end
    end

    module DeleteResourceServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceServerOutput, context: context)
        type = Types::DeleteResourceServerOutput.new
        type
      end
    end

    module DeleteUserAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserAttributesInput, context: context)
        type = Types::DeleteUserAttributesInput.new
        type.user_attribute_names = AttributeNameListType.build(params[:user_attribute_names], context: "#{context}[:user_attribute_names]") unless params[:user_attribute_names].nil?
        type.access_token = params[:access_token]
        type
      end
    end

    module DeleteUserAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserAttributesOutput, context: context)
        type = Types::DeleteUserAttributesOutput.new
        type
      end
    end

    module DeleteUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserInput, context: context)
        type = Types::DeleteUserInput.new
        type.access_token = params[:access_token]
        type
      end
    end

    module DeleteUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserOutput, context: context)
        type = Types::DeleteUserOutput.new
        type
      end
    end

    module DeleteUserPoolClientInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserPoolClientInput, context: context)
        type = Types::DeleteUserPoolClientInput.new
        type.user_pool_id = params[:user_pool_id]
        type.client_id = params[:client_id]
        type
      end
    end

    module DeleteUserPoolClientOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserPoolClientOutput, context: context)
        type = Types::DeleteUserPoolClientOutput.new
        type
      end
    end

    module DeleteUserPoolDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserPoolDomainInput, context: context)
        type = Types::DeleteUserPoolDomainInput.new
        type.domain = params[:domain]
        type.user_pool_id = params[:user_pool_id]
        type
      end
    end

    module DeleteUserPoolDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserPoolDomainOutput, context: context)
        type = Types::DeleteUserPoolDomainOutput.new
        type
      end
    end

    module DeleteUserPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserPoolInput, context: context)
        type = Types::DeleteUserPoolInput.new
        type.user_pool_id = params[:user_pool_id]
        type
      end
    end

    module DeleteUserPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserPoolOutput, context: context)
        type = Types::DeleteUserPoolOutput.new
        type
      end
    end

    module DeliveryMediumListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DescribeIdentityProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdentityProviderInput, context: context)
        type = Types::DescribeIdentityProviderInput.new
        type.user_pool_id = params[:user_pool_id]
        type.provider_name = params[:provider_name]
        type
      end
    end

    module DescribeIdentityProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIdentityProviderOutput, context: context)
        type = Types::DescribeIdentityProviderOutput.new
        type.identity_provider = IdentityProviderType.build(params[:identity_provider], context: "#{context}[:identity_provider]") unless params[:identity_provider].nil?
        type
      end
    end

    module DescribeResourceServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourceServerInput, context: context)
        type = Types::DescribeResourceServerInput.new
        type.user_pool_id = params[:user_pool_id]
        type.identifier = params[:identifier]
        type
      end
    end

    module DescribeResourceServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourceServerOutput, context: context)
        type = Types::DescribeResourceServerOutput.new
        type.resource_server = ResourceServerType.build(params[:resource_server], context: "#{context}[:resource_server]") unless params[:resource_server].nil?
        type
      end
    end

    module DescribeRiskConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRiskConfigurationInput, context: context)
        type = Types::DescribeRiskConfigurationInput.new
        type.user_pool_id = params[:user_pool_id]
        type.client_id = params[:client_id]
        type
      end
    end

    module DescribeRiskConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRiskConfigurationOutput, context: context)
        type = Types::DescribeRiskConfigurationOutput.new
        type.risk_configuration = RiskConfigurationType.build(params[:risk_configuration], context: "#{context}[:risk_configuration]") unless params[:risk_configuration].nil?
        type
      end
    end

    module DescribeUserImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserImportJobInput, context: context)
        type = Types::DescribeUserImportJobInput.new
        type.user_pool_id = params[:user_pool_id]
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeUserImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserImportJobOutput, context: context)
        type = Types::DescribeUserImportJobOutput.new
        type.user_import_job = UserImportJobType.build(params[:user_import_job], context: "#{context}[:user_import_job]") unless params[:user_import_job].nil?
        type
      end
    end

    module DescribeUserPoolClientInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserPoolClientInput, context: context)
        type = Types::DescribeUserPoolClientInput.new
        type.user_pool_id = params[:user_pool_id]
        type.client_id = params[:client_id]
        type
      end
    end

    module DescribeUserPoolClientOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserPoolClientOutput, context: context)
        type = Types::DescribeUserPoolClientOutput.new
        type.user_pool_client = UserPoolClientType.build(params[:user_pool_client], context: "#{context}[:user_pool_client]") unless params[:user_pool_client].nil?
        type
      end
    end

    module DescribeUserPoolDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserPoolDomainInput, context: context)
        type = Types::DescribeUserPoolDomainInput.new
        type.domain = params[:domain]
        type
      end
    end

    module DescribeUserPoolDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserPoolDomainOutput, context: context)
        type = Types::DescribeUserPoolDomainOutput.new
        type.domain_description = DomainDescriptionType.build(params[:domain_description], context: "#{context}[:domain_description]") unless params[:domain_description].nil?
        type
      end
    end

    module DescribeUserPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserPoolInput, context: context)
        type = Types::DescribeUserPoolInput.new
        type.user_pool_id = params[:user_pool_id]
        type
      end
    end

    module DescribeUserPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserPoolOutput, context: context)
        type = Types::DescribeUserPoolOutput.new
        type.user_pool = UserPoolType.build(params[:user_pool], context: "#{context}[:user_pool]") unless params[:user_pool].nil?
        type
      end
    end

    module DeviceConfigurationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceConfigurationType, context: context)
        type = Types::DeviceConfigurationType.new
        type.challenge_required_on_new_device = params[:challenge_required_on_new_device]
        type.device_only_remembered_on_user_prompt = params[:device_only_remembered_on_user_prompt]
        type
      end
    end

    module DeviceListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeviceSecretVerifierConfigType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceSecretVerifierConfigType, context: context)
        type = Types::DeviceSecretVerifierConfigType.new
        type.password_verifier = params[:password_verifier]
        type.salt = params[:salt]
        type
      end
    end

    module DeviceType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceType, context: context)
        type = Types::DeviceType.new
        type.device_key = params[:device_key]
        type.device_attributes = AttributeListType.build(params[:device_attributes], context: "#{context}[:device_attributes]") unless params[:device_attributes].nil?
        type.device_create_date = params[:device_create_date]
        type.device_last_modified_date = params[:device_last_modified_date]
        type.device_last_authenticated_date = params[:device_last_authenticated_date]
        type
      end
    end

    module DomainDescriptionType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainDescriptionType, context: context)
        type = Types::DomainDescriptionType.new
        type.user_pool_id = params[:user_pool_id]
        type.aws_account_id = params[:aws_account_id]
        type.domain = params[:domain]
        type.s3_bucket = params[:s3_bucket]
        type.cloud_front_distribution = params[:cloud_front_distribution]
        type.version = params[:version]
        type.status = params[:status]
        type.custom_domain_config = CustomDomainConfigType.build(params[:custom_domain_config], context: "#{context}[:custom_domain_config]") unless params[:custom_domain_config].nil?
        type
      end
    end

    module DuplicateProviderException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateProviderException, context: context)
        type = Types::DuplicateProviderException.new
        type.message = params[:message]
        type
      end
    end

    module EmailConfigurationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailConfigurationType, context: context)
        type = Types::EmailConfigurationType.new
        type.source_arn = params[:source_arn]
        type.reply_to_email_address = params[:reply_to_email_address]
        type.email_sending_account = params[:email_sending_account]
        type.from = params[:from]
        type.configuration_set = params[:configuration_set]
        type
      end
    end

    module EnableSoftwareTokenMFAException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableSoftwareTokenMFAException, context: context)
        type = Types::EnableSoftwareTokenMFAException.new
        type.message = params[:message]
        type
      end
    end

    module EventContextDataType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventContextDataType, context: context)
        type = Types::EventContextDataType.new
        type.ip_address = params[:ip_address]
        type.device_name = params[:device_name]
        type.timezone = params[:timezone]
        type.city = params[:city]
        type.country = params[:country]
        type
      end
    end

    module EventFeedbackType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventFeedbackType, context: context)
        type = Types::EventFeedbackType.new
        type.feedback_value = params[:feedback_value]
        type.provider = params[:provider]
        type.feedback_date = params[:feedback_date]
        type
      end
    end

    module EventFiltersType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventRiskType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventRiskType, context: context)
        type = Types::EventRiskType.new
        type.risk_decision = params[:risk_decision]
        type.risk_level = params[:risk_level]
        type.compromised_credentials_detected = params[:compromised_credentials_detected]
        type
      end
    end

    module ExpiredCodeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpiredCodeException, context: context)
        type = Types::ExpiredCodeException.new
        type.message = params[:message]
        type
      end
    end

    module ExplicitAuthFlowsListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ForgetDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForgetDeviceInput, context: context)
        type = Types::ForgetDeviceInput.new
        type.access_token = params[:access_token]
        type.device_key = params[:device_key]
        type
      end
    end

    module ForgetDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForgetDeviceOutput, context: context)
        type = Types::ForgetDeviceOutput.new
        type
      end
    end

    module ForgotPasswordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForgotPasswordInput, context: context)
        type = Types::ForgotPasswordInput.new
        type.client_id = params[:client_id]
        type.secret_hash = params[:secret_hash]
        type.user_context_data = UserContextDataType.build(params[:user_context_data], context: "#{context}[:user_context_data]") unless params[:user_context_data].nil?
        type.username = params[:username]
        type.analytics_metadata = AnalyticsMetadataType.build(params[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless params[:analytics_metadata].nil?
        type.client_metadata = ClientMetadataType.build(params[:client_metadata], context: "#{context}[:client_metadata]") unless params[:client_metadata].nil?
        type
      end
    end

    module ForgotPasswordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForgotPasswordOutput, context: context)
        type = Types::ForgotPasswordOutput.new
        type.code_delivery_details = CodeDeliveryDetailsType.build(params[:code_delivery_details], context: "#{context}[:code_delivery_details]") unless params[:code_delivery_details].nil?
        type
      end
    end

    module GetCSVHeaderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCSVHeaderInput, context: context)
        type = Types::GetCSVHeaderInput.new
        type.user_pool_id = params[:user_pool_id]
        type
      end
    end

    module GetCSVHeaderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCSVHeaderOutput, context: context)
        type = Types::GetCSVHeaderOutput.new
        type.user_pool_id = params[:user_pool_id]
        type.csv_header = ListOfStringTypes.build(params[:csv_header], context: "#{context}[:csv_header]") unless params[:csv_header].nil?
        type
      end
    end

    module GetDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceInput, context: context)
        type = Types::GetDeviceInput.new
        type.device_key = params[:device_key]
        type.access_token = params[:access_token]
        type
      end
    end

    module GetDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceOutput, context: context)
        type = Types::GetDeviceOutput.new
        type.device = DeviceType.build(params[:device], context: "#{context}[:device]") unless params[:device].nil?
        type
      end
    end

    module GetGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupInput, context: context)
        type = Types::GetGroupInput.new
        type.group_name = params[:group_name]
        type.user_pool_id = params[:user_pool_id]
        type
      end
    end

    module GetGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGroupOutput, context: context)
        type = Types::GetGroupOutput.new
        type.group = GroupType.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type
      end
    end

    module GetIdentityProviderByIdentifierInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityProviderByIdentifierInput, context: context)
        type = Types::GetIdentityProviderByIdentifierInput.new
        type.user_pool_id = params[:user_pool_id]
        type.idp_identifier = params[:idp_identifier]
        type
      end
    end

    module GetIdentityProviderByIdentifierOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityProviderByIdentifierOutput, context: context)
        type = Types::GetIdentityProviderByIdentifierOutput.new
        type.identity_provider = IdentityProviderType.build(params[:identity_provider], context: "#{context}[:identity_provider]") unless params[:identity_provider].nil?
        type
      end
    end

    module GetSigningCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSigningCertificateInput, context: context)
        type = Types::GetSigningCertificateInput.new
        type.user_pool_id = params[:user_pool_id]
        type
      end
    end

    module GetSigningCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSigningCertificateOutput, context: context)
        type = Types::GetSigningCertificateOutput.new
        type.certificate = params[:certificate]
        type
      end
    end

    module GetUICustomizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUICustomizationInput, context: context)
        type = Types::GetUICustomizationInput.new
        type.user_pool_id = params[:user_pool_id]
        type.client_id = params[:client_id]
        type
      end
    end

    module GetUICustomizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUICustomizationOutput, context: context)
        type = Types::GetUICustomizationOutput.new
        type.ui_customization = UICustomizationType.build(params[:ui_customization], context: "#{context}[:ui_customization]") unless params[:ui_customization].nil?
        type
      end
    end

    module GetUserAttributeVerificationCodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserAttributeVerificationCodeInput, context: context)
        type = Types::GetUserAttributeVerificationCodeInput.new
        type.access_token = params[:access_token]
        type.attribute_name = params[:attribute_name]
        type.client_metadata = ClientMetadataType.build(params[:client_metadata], context: "#{context}[:client_metadata]") unless params[:client_metadata].nil?
        type
      end
    end

    module GetUserAttributeVerificationCodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserAttributeVerificationCodeOutput, context: context)
        type = Types::GetUserAttributeVerificationCodeOutput.new
        type.code_delivery_details = CodeDeliveryDetailsType.build(params[:code_delivery_details], context: "#{context}[:code_delivery_details]") unless params[:code_delivery_details].nil?
        type
      end
    end

    module GetUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserInput, context: context)
        type = Types::GetUserInput.new
        type.access_token = params[:access_token]
        type
      end
    end

    module GetUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserOutput, context: context)
        type = Types::GetUserOutput.new
        type.username = params[:username]
        type.user_attributes = AttributeListType.build(params[:user_attributes], context: "#{context}[:user_attributes]") unless params[:user_attributes].nil?
        type.mfa_options = MFAOptionListType.build(params[:mfa_options], context: "#{context}[:mfa_options]") unless params[:mfa_options].nil?
        type.preferred_mfa_setting = params[:preferred_mfa_setting]
        type.user_mfa_setting_list = UserMFASettingListType.build(params[:user_mfa_setting_list], context: "#{context}[:user_mfa_setting_list]") unless params[:user_mfa_setting_list].nil?
        type
      end
    end

    module GetUserPoolMfaConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserPoolMfaConfigInput, context: context)
        type = Types::GetUserPoolMfaConfigInput.new
        type.user_pool_id = params[:user_pool_id]
        type
      end
    end

    module GetUserPoolMfaConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserPoolMfaConfigOutput, context: context)
        type = Types::GetUserPoolMfaConfigOutput.new
        type.sms_mfa_configuration = SmsMfaConfigType.build(params[:sms_mfa_configuration], context: "#{context}[:sms_mfa_configuration]") unless params[:sms_mfa_configuration].nil?
        type.software_token_mfa_configuration = SoftwareTokenMfaConfigType.build(params[:software_token_mfa_configuration], context: "#{context}[:software_token_mfa_configuration]") unless params[:software_token_mfa_configuration].nil?
        type.mfa_configuration = params[:mfa_configuration]
        type
      end
    end

    module GlobalSignOutInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalSignOutInput, context: context)
        type = Types::GlobalSignOutInput.new
        type.access_token = params[:access_token]
        type
      end
    end

    module GlobalSignOutOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlobalSignOutOutput, context: context)
        type = Types::GlobalSignOutOutput.new
        type
      end
    end

    module GroupExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupExistsException, context: context)
        type = Types::GroupExistsException.new
        type.message = params[:message]
        type
      end
    end

    module GroupListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GroupType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupType, context: context)
        type = Types::GroupType.new
        type.group_name = params[:group_name]
        type.user_pool_id = params[:user_pool_id]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.precedence = params[:precedence]
        type.last_modified_date = params[:last_modified_date]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module HttpHeader
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HttpHeader, context: context)
        type = Types::HttpHeader.new
        type.header_name = params[:header_name]
        type.header_value = params[:header_value]
        type
      end
    end

    module HttpHeaderList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HttpHeader.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IdentityProviderType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityProviderType, context: context)
        type = Types::IdentityProviderType.new
        type.user_pool_id = params[:user_pool_id]
        type.provider_name = params[:provider_name]
        type.provider_type = params[:provider_type]
        type.provider_details = ProviderDetailsType.build(params[:provider_details], context: "#{context}[:provider_details]") unless params[:provider_details].nil?
        type.attribute_mapping = AttributeMappingType.build(params[:attribute_mapping], context: "#{context}[:attribute_mapping]") unless params[:attribute_mapping].nil?
        type.idp_identifiers = IdpIdentifiersListType.build(params[:idp_identifiers], context: "#{context}[:idp_identifiers]") unless params[:idp_identifiers].nil?
        type.last_modified_date = params[:last_modified_date]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module IdpIdentifiersListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InitiateAuthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitiateAuthInput, context: context)
        type = Types::InitiateAuthInput.new
        type.auth_flow = params[:auth_flow]
        type.auth_parameters = AuthParametersType.build(params[:auth_parameters], context: "#{context}[:auth_parameters]") unless params[:auth_parameters].nil?
        type.client_metadata = ClientMetadataType.build(params[:client_metadata], context: "#{context}[:client_metadata]") unless params[:client_metadata].nil?
        type.client_id = params[:client_id]
        type.analytics_metadata = AnalyticsMetadataType.build(params[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless params[:analytics_metadata].nil?
        type.user_context_data = UserContextDataType.build(params[:user_context_data], context: "#{context}[:user_context_data]") unless params[:user_context_data].nil?
        type
      end
    end

    module InitiateAuthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitiateAuthOutput, context: context)
        type = Types::InitiateAuthOutput.new
        type.challenge_name = params[:challenge_name]
        type.session = params[:session]
        type.challenge_parameters = ChallengeParametersType.build(params[:challenge_parameters], context: "#{context}[:challenge_parameters]") unless params[:challenge_parameters].nil?
        type.authentication_result = AuthenticationResultType.build(params[:authentication_result], context: "#{context}[:authentication_result]") unless params[:authentication_result].nil?
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

    module InvalidEmailRoleAccessPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEmailRoleAccessPolicyException, context: context)
        type = Types::InvalidEmailRoleAccessPolicyException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidLambdaResponseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidLambdaResponseException, context: context)
        type = Types::InvalidLambdaResponseException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOAuthFlowException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOAuthFlowException, context: context)
        type = Types::InvalidOAuthFlowException.new
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

    module InvalidPasswordException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPasswordException, context: context)
        type = Types::InvalidPasswordException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSmsRoleAccessPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSmsRoleAccessPolicyException, context: context)
        type = Types::InvalidSmsRoleAccessPolicyException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSmsRoleTrustRelationshipException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSmsRoleTrustRelationshipException, context: context)
        type = Types::InvalidSmsRoleTrustRelationshipException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidUserPoolConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidUserPoolConfigurationException, context: context)
        type = Types::InvalidUserPoolConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module LambdaConfigType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaConfigType, context: context)
        type = Types::LambdaConfigType.new
        type.pre_sign_up = params[:pre_sign_up]
        type.custom_message = params[:custom_message]
        type.post_confirmation = params[:post_confirmation]
        type.pre_authentication = params[:pre_authentication]
        type.post_authentication = params[:post_authentication]
        type.define_auth_challenge = params[:define_auth_challenge]
        type.create_auth_challenge = params[:create_auth_challenge]
        type.verify_auth_challenge_response = params[:verify_auth_challenge_response]
        type.pre_token_generation = params[:pre_token_generation]
        type.user_migration = params[:user_migration]
        type.custom_sms_sender = CustomSMSLambdaVersionConfigType.build(params[:custom_sms_sender], context: "#{context}[:custom_sms_sender]") unless params[:custom_sms_sender].nil?
        type.custom_email_sender = CustomEmailLambdaVersionConfigType.build(params[:custom_email_sender], context: "#{context}[:custom_email_sender]") unless params[:custom_email_sender].nil?
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesInput, context: context)
        type = Types::ListDevicesInput.new
        type.access_token = params[:access_token]
        type.limit = params[:limit]
        type.pagination_token = params[:pagination_token]
        type
      end
    end

    module ListDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesOutput, context: context)
        type = Types::ListDevicesOutput.new
        type.devices = DeviceListType.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type.pagination_token = params[:pagination_token]
        type
      end
    end

    module ListGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsInput, context: context)
        type = Types::ListGroupsInput.new
        type.user_pool_id = params[:user_pool_id]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsOutput, context: context)
        type = Types::ListGroupsOutput.new
        type.groups = GroupListType.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIdentityProvidersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentityProvidersInput, context: context)
        type = Types::ListIdentityProvidersInput.new
        type.user_pool_id = params[:user_pool_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIdentityProvidersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentityProvidersOutput, context: context)
        type = Types::ListIdentityProvidersOutput.new
        type.providers = ProvidersListType.build(params[:providers], context: "#{context}[:providers]") unless params[:providers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfStringTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListResourceServersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceServersInput, context: context)
        type = Types::ListResourceServersInput.new
        type.user_pool_id = params[:user_pool_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourceServersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceServersOutput, context: context)
        type = Types::ListResourceServersOutput.new
        type.resource_servers = ResourceServersListType.build(params[:resource_servers], context: "#{context}[:resource_servers]") unless params[:resource_servers].nil?
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
        type.tags = UserPoolTagsType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListUserImportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserImportJobsInput, context: context)
        type = Types::ListUserImportJobsInput.new
        type.user_pool_id = params[:user_pool_id]
        type.max_results = params[:max_results]
        type.pagination_token = params[:pagination_token]
        type
      end
    end

    module ListUserImportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserImportJobsOutput, context: context)
        type = Types::ListUserImportJobsOutput.new
        type.user_import_jobs = UserImportJobsListType.build(params[:user_import_jobs], context: "#{context}[:user_import_jobs]") unless params[:user_import_jobs].nil?
        type.pagination_token = params[:pagination_token]
        type
      end
    end

    module ListUserPoolClientsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserPoolClientsInput, context: context)
        type = Types::ListUserPoolClientsInput.new
        type.user_pool_id = params[:user_pool_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUserPoolClientsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserPoolClientsOutput, context: context)
        type = Types::ListUserPoolClientsOutput.new
        type.user_pool_clients = UserPoolClientListType.build(params[:user_pool_clients], context: "#{context}[:user_pool_clients]") unless params[:user_pool_clients].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUserPoolsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserPoolsInput, context: context)
        type = Types::ListUserPoolsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListUserPoolsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserPoolsOutput, context: context)
        type = Types::ListUserPoolsOutput.new
        type.user_pools = UserPoolListType.build(params[:user_pools], context: "#{context}[:user_pools]") unless params[:user_pools].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUsersInGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersInGroupInput, context: context)
        type = Types::ListUsersInGroupInput.new
        type.user_pool_id = params[:user_pool_id]
        type.group_name = params[:group_name]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUsersInGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersInGroupOutput, context: context)
        type = Types::ListUsersInGroupOutput.new
        type.users = UsersListType.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersInput, context: context)
        type = Types::ListUsersInput.new
        type.user_pool_id = params[:user_pool_id]
        type.attributes_to_get = SearchedAttributeNamesListType.build(params[:attributes_to_get], context: "#{context}[:attributes_to_get]") unless params[:attributes_to_get].nil?
        type.limit = params[:limit]
        type.pagination_token = params[:pagination_token]
        type.filter = params[:filter]
        type
      end
    end

    module ListUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersOutput, context: context)
        type = Types::ListUsersOutput.new
        type.users = UsersListType.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.pagination_token = params[:pagination_token]
        type
      end
    end

    module LogoutURLsListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MFAMethodNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MFAMethodNotFoundException, context: context)
        type = Types::MFAMethodNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module MFAOptionListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MFAOptionType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MFAOptionType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MFAOptionType, context: context)
        type = Types::MFAOptionType.new
        type.delivery_medium = params[:delivery_medium]
        type.attribute_name = params[:attribute_name]
        type
      end
    end

    module MessageTemplateType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageTemplateType, context: context)
        type = Types::MessageTemplateType.new
        type.sms_message = params[:sms_message]
        type.email_message = params[:email_message]
        type.email_subject = params[:email_subject]
        type
      end
    end

    module NewDeviceMetadataType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NewDeviceMetadataType, context: context)
        type = Types::NewDeviceMetadataType.new
        type.device_key = params[:device_key]
        type.device_group_key = params[:device_group_key]
        type
      end
    end

    module NotAuthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotAuthorizedException, context: context)
        type = Types::NotAuthorizedException.new
        type.message = params[:message]
        type
      end
    end

    module NotifyConfigurationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyConfigurationType, context: context)
        type = Types::NotifyConfigurationType.new
        type.from = params[:from]
        type.reply_to = params[:reply_to]
        type.source_arn = params[:source_arn]
        type.block_email = NotifyEmailType.build(params[:block_email], context: "#{context}[:block_email]") unless params[:block_email].nil?
        type.no_action_email = NotifyEmailType.build(params[:no_action_email], context: "#{context}[:no_action_email]") unless params[:no_action_email].nil?
        type.mfa_email = NotifyEmailType.build(params[:mfa_email], context: "#{context}[:mfa_email]") unless params[:mfa_email].nil?
        type
      end
    end

    module NotifyEmailType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyEmailType, context: context)
        type = Types::NotifyEmailType.new
        type.subject = params[:subject]
        type.html_body = params[:html_body]
        type.text_body = params[:text_body]
        type
      end
    end

    module NumberAttributeConstraintsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NumberAttributeConstraintsType, context: context)
        type = Types::NumberAttributeConstraintsType.new
        type.min_value = params[:min_value]
        type.max_value = params[:max_value]
        type
      end
    end

    module OAuthFlowsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PasswordPolicyType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PasswordPolicyType, context: context)
        type = Types::PasswordPolicyType.new
        type.minimum_length = params[:minimum_length]
        type.require_uppercase = params[:require_uppercase]
        type.require_lowercase = params[:require_lowercase]
        type.require_numbers = params[:require_numbers]
        type.require_symbols = params[:require_symbols]
        type.temporary_password_validity_days = params[:temporary_password_validity_days]
        type
      end
    end

    module PasswordResetRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PasswordResetRequiredException, context: context)
        type = Types::PasswordResetRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module PreconditionNotMetException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PreconditionNotMetException, context: context)
        type = Types::PreconditionNotMetException.new
        type.message = params[:message]
        type
      end
    end

    module ProviderDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProviderDescription, context: context)
        type = Types::ProviderDescription.new
        type.provider_name = params[:provider_name]
        type.provider_type = params[:provider_type]
        type.last_modified_date = params[:last_modified_date]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module ProviderDetailsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ProviderUserIdentifierType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProviderUserIdentifierType, context: context)
        type = Types::ProviderUserIdentifierType.new
        type.provider_name = params[:provider_name]
        type.provider_attribute_name = params[:provider_attribute_name]
        type.provider_attribute_value = params[:provider_attribute_value]
        type
      end
    end

    module ProvidersListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProviderDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecoveryMechanismsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecoveryOptionType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecoveryOptionType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecoveryOptionType, context: context)
        type = Types::RecoveryOptionType.new
        type.priority = params[:priority]
        type.name = params[:name]
        type
      end
    end

    module ResendConfirmationCodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResendConfirmationCodeInput, context: context)
        type = Types::ResendConfirmationCodeInput.new
        type.client_id = params[:client_id]
        type.secret_hash = params[:secret_hash]
        type.user_context_data = UserContextDataType.build(params[:user_context_data], context: "#{context}[:user_context_data]") unless params[:user_context_data].nil?
        type.username = params[:username]
        type.analytics_metadata = AnalyticsMetadataType.build(params[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless params[:analytics_metadata].nil?
        type.client_metadata = ClientMetadataType.build(params[:client_metadata], context: "#{context}[:client_metadata]") unless params[:client_metadata].nil?
        type
      end
    end

    module ResendConfirmationCodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResendConfirmationCodeOutput, context: context)
        type = Types::ResendConfirmationCodeOutput.new
        type.code_delivery_details = CodeDeliveryDetailsType.build(params[:code_delivery_details], context: "#{context}[:code_delivery_details]") unless params[:code_delivery_details].nil?
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

    module ResourceServerScopeListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceServerScopeType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceServerScopeType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceServerScopeType, context: context)
        type = Types::ResourceServerScopeType.new
        type.scope_name = params[:scope_name]
        type.scope_description = params[:scope_description]
        type
      end
    end

    module ResourceServerType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceServerType, context: context)
        type = Types::ResourceServerType.new
        type.user_pool_id = params[:user_pool_id]
        type.identifier = params[:identifier]
        type.name = params[:name]
        type.scopes = ResourceServerScopeListType.build(params[:scopes], context: "#{context}[:scopes]") unless params[:scopes].nil?
        type
      end
    end

    module ResourceServersListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceServerType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RespondToAuthChallengeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RespondToAuthChallengeInput, context: context)
        type = Types::RespondToAuthChallengeInput.new
        type.client_id = params[:client_id]
        type.challenge_name = params[:challenge_name]
        type.session = params[:session]
        type.challenge_responses = ChallengeResponsesType.build(params[:challenge_responses], context: "#{context}[:challenge_responses]") unless params[:challenge_responses].nil?
        type.analytics_metadata = AnalyticsMetadataType.build(params[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless params[:analytics_metadata].nil?
        type.user_context_data = UserContextDataType.build(params[:user_context_data], context: "#{context}[:user_context_data]") unless params[:user_context_data].nil?
        type.client_metadata = ClientMetadataType.build(params[:client_metadata], context: "#{context}[:client_metadata]") unless params[:client_metadata].nil?
        type
      end
    end

    module RespondToAuthChallengeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RespondToAuthChallengeOutput, context: context)
        type = Types::RespondToAuthChallengeOutput.new
        type.challenge_name = params[:challenge_name]
        type.session = params[:session]
        type.challenge_parameters = ChallengeParametersType.build(params[:challenge_parameters], context: "#{context}[:challenge_parameters]") unless params[:challenge_parameters].nil?
        type.authentication_result = AuthenticationResultType.build(params[:authentication_result], context: "#{context}[:authentication_result]") unless params[:authentication_result].nil?
        type
      end
    end

    module RevokeTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeTokenInput, context: context)
        type = Types::RevokeTokenInput.new
        type.token = params[:token]
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type
      end
    end

    module RevokeTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokeTokenOutput, context: context)
        type = Types::RevokeTokenOutput.new
        type
      end
    end

    module RiskConfigurationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RiskConfigurationType, context: context)
        type = Types::RiskConfigurationType.new
        type.user_pool_id = params[:user_pool_id]
        type.client_id = params[:client_id]
        type.compromised_credentials_risk_configuration = CompromisedCredentialsRiskConfigurationType.build(params[:compromised_credentials_risk_configuration], context: "#{context}[:compromised_credentials_risk_configuration]") unless params[:compromised_credentials_risk_configuration].nil?
        type.account_takeover_risk_configuration = AccountTakeoverRiskConfigurationType.build(params[:account_takeover_risk_configuration], context: "#{context}[:account_takeover_risk_configuration]") unless params[:account_takeover_risk_configuration].nil?
        type.risk_exception_configuration = RiskExceptionConfigurationType.build(params[:risk_exception_configuration], context: "#{context}[:risk_exception_configuration]") unless params[:risk_exception_configuration].nil?
        type.last_modified_date = params[:last_modified_date]
        type
      end
    end

    module RiskExceptionConfigurationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RiskExceptionConfigurationType, context: context)
        type = Types::RiskExceptionConfigurationType.new
        type.blocked_ip_range_list = BlockedIPRangeListType.build(params[:blocked_ip_range_list], context: "#{context}[:blocked_ip_range_list]") unless params[:blocked_ip_range_list].nil?
        type.skipped_ip_range_list = SkippedIPRangeListType.build(params[:skipped_ip_range_list], context: "#{context}[:skipped_ip_range_list]") unless params[:skipped_ip_range_list].nil?
        type
      end
    end

    module SMSMfaSettingsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SMSMfaSettingsType, context: context)
        type = Types::SMSMfaSettingsType.new
        type.enabled = params[:enabled]
        type.preferred_mfa = params[:preferred_mfa]
        type
      end
    end

    module SchemaAttributeType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaAttributeType, context: context)
        type = Types::SchemaAttributeType.new
        type.name = params[:name]
        type.attribute_data_type = params[:attribute_data_type]
        type.developer_only_attribute = params[:developer_only_attribute]
        type.mutable = params[:mutable]
        type.required = params[:required]
        type.number_attribute_constraints = NumberAttributeConstraintsType.build(params[:number_attribute_constraints], context: "#{context}[:number_attribute_constraints]") unless params[:number_attribute_constraints].nil?
        type.string_attribute_constraints = StringAttributeConstraintsType.build(params[:string_attribute_constraints], context: "#{context}[:string_attribute_constraints]") unless params[:string_attribute_constraints].nil?
        type
      end
    end

    module SchemaAttributesListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SchemaAttributeType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScopeDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScopeDoesNotExistException, context: context)
        type = Types::ScopeDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module ScopeListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SearchedAttributeNamesListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SetRiskConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetRiskConfigurationInput, context: context)
        type = Types::SetRiskConfigurationInput.new
        type.user_pool_id = params[:user_pool_id]
        type.client_id = params[:client_id]
        type.compromised_credentials_risk_configuration = CompromisedCredentialsRiskConfigurationType.build(params[:compromised_credentials_risk_configuration], context: "#{context}[:compromised_credentials_risk_configuration]") unless params[:compromised_credentials_risk_configuration].nil?
        type.account_takeover_risk_configuration = AccountTakeoverRiskConfigurationType.build(params[:account_takeover_risk_configuration], context: "#{context}[:account_takeover_risk_configuration]") unless params[:account_takeover_risk_configuration].nil?
        type.risk_exception_configuration = RiskExceptionConfigurationType.build(params[:risk_exception_configuration], context: "#{context}[:risk_exception_configuration]") unless params[:risk_exception_configuration].nil?
        type
      end
    end

    module SetRiskConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetRiskConfigurationOutput, context: context)
        type = Types::SetRiskConfigurationOutput.new
        type.risk_configuration = RiskConfigurationType.build(params[:risk_configuration], context: "#{context}[:risk_configuration]") unless params[:risk_configuration].nil?
        type
      end
    end

    module SetUICustomizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetUICustomizationInput, context: context)
        type = Types::SetUICustomizationInput.new
        type.user_pool_id = params[:user_pool_id]
        type.client_id = params[:client_id]
        type.css = params[:css]
        type.image_file = params[:image_file]
        type
      end
    end

    module SetUICustomizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetUICustomizationOutput, context: context)
        type = Types::SetUICustomizationOutput.new
        type.ui_customization = UICustomizationType.build(params[:ui_customization], context: "#{context}[:ui_customization]") unless params[:ui_customization].nil?
        type
      end
    end

    module SetUserMFAPreferenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetUserMFAPreferenceInput, context: context)
        type = Types::SetUserMFAPreferenceInput.new
        type.sms_mfa_settings = SMSMfaSettingsType.build(params[:sms_mfa_settings], context: "#{context}[:sms_mfa_settings]") unless params[:sms_mfa_settings].nil?
        type.software_token_mfa_settings = SoftwareTokenMfaSettingsType.build(params[:software_token_mfa_settings], context: "#{context}[:software_token_mfa_settings]") unless params[:software_token_mfa_settings].nil?
        type.access_token = params[:access_token]
        type
      end
    end

    module SetUserMFAPreferenceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetUserMFAPreferenceOutput, context: context)
        type = Types::SetUserMFAPreferenceOutput.new
        type
      end
    end

    module SetUserPoolMfaConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetUserPoolMfaConfigInput, context: context)
        type = Types::SetUserPoolMfaConfigInput.new
        type.user_pool_id = params[:user_pool_id]
        type.sms_mfa_configuration = SmsMfaConfigType.build(params[:sms_mfa_configuration], context: "#{context}[:sms_mfa_configuration]") unless params[:sms_mfa_configuration].nil?
        type.software_token_mfa_configuration = SoftwareTokenMfaConfigType.build(params[:software_token_mfa_configuration], context: "#{context}[:software_token_mfa_configuration]") unless params[:software_token_mfa_configuration].nil?
        type.mfa_configuration = params[:mfa_configuration]
        type
      end
    end

    module SetUserPoolMfaConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetUserPoolMfaConfigOutput, context: context)
        type = Types::SetUserPoolMfaConfigOutput.new
        type.sms_mfa_configuration = SmsMfaConfigType.build(params[:sms_mfa_configuration], context: "#{context}[:sms_mfa_configuration]") unless params[:sms_mfa_configuration].nil?
        type.software_token_mfa_configuration = SoftwareTokenMfaConfigType.build(params[:software_token_mfa_configuration], context: "#{context}[:software_token_mfa_configuration]") unless params[:software_token_mfa_configuration].nil?
        type.mfa_configuration = params[:mfa_configuration]
        type
      end
    end

    module SetUserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetUserSettingsInput, context: context)
        type = Types::SetUserSettingsInput.new
        type.access_token = params[:access_token]
        type.mfa_options = MFAOptionListType.build(params[:mfa_options], context: "#{context}[:mfa_options]") unless params[:mfa_options].nil?
        type
      end
    end

    module SetUserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetUserSettingsOutput, context: context)
        type = Types::SetUserSettingsOutput.new
        type
      end
    end

    module SignUpInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SignUpInput, context: context)
        type = Types::SignUpInput.new
        type.client_id = params[:client_id]
        type.secret_hash = params[:secret_hash]
        type.username = params[:username]
        type.password = params[:password]
        type.user_attributes = AttributeListType.build(params[:user_attributes], context: "#{context}[:user_attributes]") unless params[:user_attributes].nil?
        type.validation_data = AttributeListType.build(params[:validation_data], context: "#{context}[:validation_data]") unless params[:validation_data].nil?
        type.analytics_metadata = AnalyticsMetadataType.build(params[:analytics_metadata], context: "#{context}[:analytics_metadata]") unless params[:analytics_metadata].nil?
        type.user_context_data = UserContextDataType.build(params[:user_context_data], context: "#{context}[:user_context_data]") unless params[:user_context_data].nil?
        type.client_metadata = ClientMetadataType.build(params[:client_metadata], context: "#{context}[:client_metadata]") unless params[:client_metadata].nil?
        type
      end
    end

    module SignUpOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SignUpOutput, context: context)
        type = Types::SignUpOutput.new
        type.user_confirmed = params[:user_confirmed]
        type.code_delivery_details = CodeDeliveryDetailsType.build(params[:code_delivery_details], context: "#{context}[:code_delivery_details]") unless params[:code_delivery_details].nil?
        type.user_sub = params[:user_sub]
        type
      end
    end

    module SkippedIPRangeListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SmsConfigurationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SmsConfigurationType, context: context)
        type = Types::SmsConfigurationType.new
        type.sns_caller_arn = params[:sns_caller_arn]
        type.external_id = params[:external_id]
        type.sns_region = params[:sns_region]
        type
      end
    end

    module SmsMfaConfigType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SmsMfaConfigType, context: context)
        type = Types::SmsMfaConfigType.new
        type.sms_authentication_message = params[:sms_authentication_message]
        type.sms_configuration = SmsConfigurationType.build(params[:sms_configuration], context: "#{context}[:sms_configuration]") unless params[:sms_configuration].nil?
        type
      end
    end

    module SoftwareTokenMFANotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SoftwareTokenMFANotFoundException, context: context)
        type = Types::SoftwareTokenMFANotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module SoftwareTokenMfaConfigType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SoftwareTokenMfaConfigType, context: context)
        type = Types::SoftwareTokenMfaConfigType.new
        type.enabled = params[:enabled]
        type
      end
    end

    module SoftwareTokenMfaSettingsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SoftwareTokenMfaSettingsType, context: context)
        type = Types::SoftwareTokenMfaSettingsType.new
        type.enabled = params[:enabled]
        type.preferred_mfa = params[:preferred_mfa]
        type
      end
    end

    module StartUserImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartUserImportJobInput, context: context)
        type = Types::StartUserImportJobInput.new
        type.user_pool_id = params[:user_pool_id]
        type.job_id = params[:job_id]
        type
      end
    end

    module StartUserImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartUserImportJobOutput, context: context)
        type = Types::StartUserImportJobOutput.new
        type.user_import_job = UserImportJobType.build(params[:user_import_job], context: "#{context}[:user_import_job]") unless params[:user_import_job].nil?
        type
      end
    end

    module StopUserImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopUserImportJobInput, context: context)
        type = Types::StopUserImportJobInput.new
        type.user_pool_id = params[:user_pool_id]
        type.job_id = params[:job_id]
        type
      end
    end

    module StopUserImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopUserImportJobOutput, context: context)
        type = Types::StopUserImportJobOutput.new
        type.user_import_job = UserImportJobType.build(params[:user_import_job], context: "#{context}[:user_import_job]") unless params[:user_import_job].nil?
        type
      end
    end

    module StringAttributeConstraintsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StringAttributeConstraintsType, context: context)
        type = Types::StringAttributeConstraintsType.new
        type.min_length = params[:min_length]
        type.max_length = params[:max_length]
        type
      end
    end

    module SupportedIdentityProvidersListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = UserPoolTagsType.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TokenValidityUnitsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TokenValidityUnitsType, context: context)
        type = Types::TokenValidityUnitsType.new
        type.access_token = params[:access_token]
        type.id_token = params[:id_token]
        type.refresh_token = params[:refresh_token]
        type
      end
    end

    module TooManyFailedAttemptsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyFailedAttemptsException, context: context)
        type = Types::TooManyFailedAttemptsException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module UICustomizationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UICustomizationType, context: context)
        type = Types::UICustomizationType.new
        type.user_pool_id = params[:user_pool_id]
        type.client_id = params[:client_id]
        type.image_url = params[:image_url]
        type.css = params[:css]
        type.css_version = params[:css_version]
        type.last_modified_date = params[:last_modified_date]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.message = params[:message]
        type
      end
    end

    module UnexpectedLambdaException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnexpectedLambdaException, context: context)
        type = Types::UnexpectedLambdaException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedIdentityProviderException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedIdentityProviderException, context: context)
        type = Types::UnsupportedIdentityProviderException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedOperationException, context: context)
        type = Types::UnsupportedOperationException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedTokenTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedTokenTypeException, context: context)
        type = Types::UnsupportedTokenTypeException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedUserStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedUserStateException, context: context)
        type = Types::UnsupportedUserStateException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = UserPoolTagsListType.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateAuthEventFeedbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAuthEventFeedbackInput, context: context)
        type = Types::UpdateAuthEventFeedbackInput.new
        type.user_pool_id = params[:user_pool_id]
        type.username = params[:username]
        type.event_id = params[:event_id]
        type.feedback_token = params[:feedback_token]
        type.feedback_value = params[:feedback_value]
        type
      end
    end

    module UpdateAuthEventFeedbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAuthEventFeedbackOutput, context: context)
        type = Types::UpdateAuthEventFeedbackOutput.new
        type
      end
    end

    module UpdateDeviceStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceStatusInput, context: context)
        type = Types::UpdateDeviceStatusInput.new
        type.access_token = params[:access_token]
        type.device_key = params[:device_key]
        type.device_remembered_status = params[:device_remembered_status]
        type
      end
    end

    module UpdateDeviceStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceStatusOutput, context: context)
        type = Types::UpdateDeviceStatusOutput.new
        type
      end
    end

    module UpdateGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupInput, context: context)
        type = Types::UpdateGroupInput.new
        type.group_name = params[:group_name]
        type.user_pool_id = params[:user_pool_id]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.precedence = params[:precedence]
        type
      end
    end

    module UpdateGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupOutput, context: context)
        type = Types::UpdateGroupOutput.new
        type.group = GroupType.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type
      end
    end

    module UpdateIdentityProviderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIdentityProviderInput, context: context)
        type = Types::UpdateIdentityProviderInput.new
        type.user_pool_id = params[:user_pool_id]
        type.provider_name = params[:provider_name]
        type.provider_details = ProviderDetailsType.build(params[:provider_details], context: "#{context}[:provider_details]") unless params[:provider_details].nil?
        type.attribute_mapping = AttributeMappingType.build(params[:attribute_mapping], context: "#{context}[:attribute_mapping]") unless params[:attribute_mapping].nil?
        type.idp_identifiers = IdpIdentifiersListType.build(params[:idp_identifiers], context: "#{context}[:idp_identifiers]") unless params[:idp_identifiers].nil?
        type
      end
    end

    module UpdateIdentityProviderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIdentityProviderOutput, context: context)
        type = Types::UpdateIdentityProviderOutput.new
        type.identity_provider = IdentityProviderType.build(params[:identity_provider], context: "#{context}[:identity_provider]") unless params[:identity_provider].nil?
        type
      end
    end

    module UpdateResourceServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceServerInput, context: context)
        type = Types::UpdateResourceServerInput.new
        type.user_pool_id = params[:user_pool_id]
        type.identifier = params[:identifier]
        type.name = params[:name]
        type.scopes = ResourceServerScopeListType.build(params[:scopes], context: "#{context}[:scopes]") unless params[:scopes].nil?
        type
      end
    end

    module UpdateResourceServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceServerOutput, context: context)
        type = Types::UpdateResourceServerOutput.new
        type.resource_server = ResourceServerType.build(params[:resource_server], context: "#{context}[:resource_server]") unless params[:resource_server].nil?
        type
      end
    end

    module UpdateUserAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserAttributesInput, context: context)
        type = Types::UpdateUserAttributesInput.new
        type.user_attributes = AttributeListType.build(params[:user_attributes], context: "#{context}[:user_attributes]") unless params[:user_attributes].nil?
        type.access_token = params[:access_token]
        type.client_metadata = ClientMetadataType.build(params[:client_metadata], context: "#{context}[:client_metadata]") unless params[:client_metadata].nil?
        type
      end
    end

    module UpdateUserAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserAttributesOutput, context: context)
        type = Types::UpdateUserAttributesOutput.new
        type.code_delivery_details_list = CodeDeliveryDetailsListType.build(params[:code_delivery_details_list], context: "#{context}[:code_delivery_details_list]") unless params[:code_delivery_details_list].nil?
        type
      end
    end

    module UpdateUserPoolClientInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserPoolClientInput, context: context)
        type = Types::UpdateUserPoolClientInput.new
        type.user_pool_id = params[:user_pool_id]
        type.client_id = params[:client_id]
        type.client_name = params[:client_name]
        type.refresh_token_validity = params[:refresh_token_validity]
        type.access_token_validity = params[:access_token_validity]
        type.id_token_validity = params[:id_token_validity]
        type.token_validity_units = TokenValidityUnitsType.build(params[:token_validity_units], context: "#{context}[:token_validity_units]") unless params[:token_validity_units].nil?
        type.read_attributes = ClientPermissionListType.build(params[:read_attributes], context: "#{context}[:read_attributes]") unless params[:read_attributes].nil?
        type.write_attributes = ClientPermissionListType.build(params[:write_attributes], context: "#{context}[:write_attributes]") unless params[:write_attributes].nil?
        type.explicit_auth_flows = ExplicitAuthFlowsListType.build(params[:explicit_auth_flows], context: "#{context}[:explicit_auth_flows]") unless params[:explicit_auth_flows].nil?
        type.supported_identity_providers = SupportedIdentityProvidersListType.build(params[:supported_identity_providers], context: "#{context}[:supported_identity_providers]") unless params[:supported_identity_providers].nil?
        type.callback_ur_ls = CallbackURLsListType.build(params[:callback_ur_ls], context: "#{context}[:callback_ur_ls]") unless params[:callback_ur_ls].nil?
        type.logout_ur_ls = LogoutURLsListType.build(params[:logout_ur_ls], context: "#{context}[:logout_ur_ls]") unless params[:logout_ur_ls].nil?
        type.default_redirect_uri = params[:default_redirect_uri]
        type.allowed_o_auth_flows = OAuthFlowsType.build(params[:allowed_o_auth_flows], context: "#{context}[:allowed_o_auth_flows]") unless params[:allowed_o_auth_flows].nil?
        type.allowed_o_auth_scopes = ScopeListType.build(params[:allowed_o_auth_scopes], context: "#{context}[:allowed_o_auth_scopes]") unless params[:allowed_o_auth_scopes].nil?
        type.allowed_o_auth_flows_user_pool_client = params[:allowed_o_auth_flows_user_pool_client]
        type.analytics_configuration = AnalyticsConfigurationType.build(params[:analytics_configuration], context: "#{context}[:analytics_configuration]") unless params[:analytics_configuration].nil?
        type.prevent_user_existence_errors = params[:prevent_user_existence_errors]
        type.enable_token_revocation = params[:enable_token_revocation]
        type.enable_propagate_additional_user_context_data = params[:enable_propagate_additional_user_context_data]
        type
      end
    end

    module UpdateUserPoolClientOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserPoolClientOutput, context: context)
        type = Types::UpdateUserPoolClientOutput.new
        type.user_pool_client = UserPoolClientType.build(params[:user_pool_client], context: "#{context}[:user_pool_client]") unless params[:user_pool_client].nil?
        type
      end
    end

    module UpdateUserPoolDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserPoolDomainInput, context: context)
        type = Types::UpdateUserPoolDomainInput.new
        type.domain = params[:domain]
        type.user_pool_id = params[:user_pool_id]
        type.custom_domain_config = CustomDomainConfigType.build(params[:custom_domain_config], context: "#{context}[:custom_domain_config]") unless params[:custom_domain_config].nil?
        type
      end
    end

    module UpdateUserPoolDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserPoolDomainOutput, context: context)
        type = Types::UpdateUserPoolDomainOutput.new
        type.cloud_front_domain = params[:cloud_front_domain]
        type
      end
    end

    module UpdateUserPoolInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserPoolInput, context: context)
        type = Types::UpdateUserPoolInput.new
        type.user_pool_id = params[:user_pool_id]
        type.policies = UserPoolPolicyType.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.lambda_config = LambdaConfigType.build(params[:lambda_config], context: "#{context}[:lambda_config]") unless params[:lambda_config].nil?
        type.auto_verified_attributes = VerifiedAttributesListType.build(params[:auto_verified_attributes], context: "#{context}[:auto_verified_attributes]") unless params[:auto_verified_attributes].nil?
        type.sms_verification_message = params[:sms_verification_message]
        type.email_verification_message = params[:email_verification_message]
        type.email_verification_subject = params[:email_verification_subject]
        type.verification_message_template = VerificationMessageTemplateType.build(params[:verification_message_template], context: "#{context}[:verification_message_template]") unless params[:verification_message_template].nil?
        type.sms_authentication_message = params[:sms_authentication_message]
        type.user_attribute_update_settings = UserAttributeUpdateSettingsType.build(params[:user_attribute_update_settings], context: "#{context}[:user_attribute_update_settings]") unless params[:user_attribute_update_settings].nil?
        type.mfa_configuration = params[:mfa_configuration]
        type.device_configuration = DeviceConfigurationType.build(params[:device_configuration], context: "#{context}[:device_configuration]") unless params[:device_configuration].nil?
        type.email_configuration = EmailConfigurationType.build(params[:email_configuration], context: "#{context}[:email_configuration]") unless params[:email_configuration].nil?
        type.sms_configuration = SmsConfigurationType.build(params[:sms_configuration], context: "#{context}[:sms_configuration]") unless params[:sms_configuration].nil?
        type.user_pool_tags = UserPoolTagsType.build(params[:user_pool_tags], context: "#{context}[:user_pool_tags]") unless params[:user_pool_tags].nil?
        type.admin_create_user_config = AdminCreateUserConfigType.build(params[:admin_create_user_config], context: "#{context}[:admin_create_user_config]") unless params[:admin_create_user_config].nil?
        type.user_pool_add_ons = UserPoolAddOnsType.build(params[:user_pool_add_ons], context: "#{context}[:user_pool_add_ons]") unless params[:user_pool_add_ons].nil?
        type.account_recovery_setting = AccountRecoverySettingType.build(params[:account_recovery_setting], context: "#{context}[:account_recovery_setting]") unless params[:account_recovery_setting].nil?
        type
      end
    end

    module UpdateUserPoolOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserPoolOutput, context: context)
        type = Types::UpdateUserPoolOutput.new
        type
      end
    end

    module UserAttributeUpdateSettingsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserAttributeUpdateSettingsType, context: context)
        type = Types::UserAttributeUpdateSettingsType.new
        type.attributes_require_verification_before_update = AttributesRequireVerificationBeforeUpdateType.build(params[:attributes_require_verification_before_update], context: "#{context}[:attributes_require_verification_before_update]") unless params[:attributes_require_verification_before_update].nil?
        type
      end
    end

    module UserContextDataType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserContextDataType, context: context)
        type = Types::UserContextDataType.new
        type.ip_address = params[:ip_address]
        type.encoded_data = params[:encoded_data]
        type
      end
    end

    module UserImportInProgressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserImportInProgressException, context: context)
        type = Types::UserImportInProgressException.new
        type.message = params[:message]
        type
      end
    end

    module UserImportJobType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserImportJobType, context: context)
        type = Types::UserImportJobType.new
        type.job_name = params[:job_name]
        type.job_id = params[:job_id]
        type.user_pool_id = params[:user_pool_id]
        type.pre_signed_url = params[:pre_signed_url]
        type.creation_date = params[:creation_date]
        type.start_date = params[:start_date]
        type.completion_date = params[:completion_date]
        type.status = params[:status]
        type.cloud_watch_logs_role_arn = params[:cloud_watch_logs_role_arn]
        type.imported_users = params[:imported_users]
        type.skipped_users = params[:skipped_users]
        type.failed_users = params[:failed_users]
        type.completion_message = params[:completion_message]
        type
      end
    end

    module UserImportJobsListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserImportJobType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserLambdaValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserLambdaValidationException, context: context)
        type = Types::UserLambdaValidationException.new
        type.message = params[:message]
        type
      end
    end

    module UserMFASettingListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UserNotConfirmedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserNotConfirmedException, context: context)
        type = Types::UserNotConfirmedException.new
        type.message = params[:message]
        type
      end
    end

    module UserNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserNotFoundException, context: context)
        type = Types::UserNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module UserPoolAddOnNotEnabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserPoolAddOnNotEnabledException, context: context)
        type = Types::UserPoolAddOnNotEnabledException.new
        type.message = params[:message]
        type
      end
    end

    module UserPoolAddOnsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserPoolAddOnsType, context: context)
        type = Types::UserPoolAddOnsType.new
        type.advanced_security_mode = params[:advanced_security_mode]
        type
      end
    end

    module UserPoolClientDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserPoolClientDescription, context: context)
        type = Types::UserPoolClientDescription.new
        type.client_id = params[:client_id]
        type.user_pool_id = params[:user_pool_id]
        type.client_name = params[:client_name]
        type
      end
    end

    module UserPoolClientListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserPoolClientDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserPoolClientType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserPoolClientType, context: context)
        type = Types::UserPoolClientType.new
        type.user_pool_id = params[:user_pool_id]
        type.client_name = params[:client_name]
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type.last_modified_date = params[:last_modified_date]
        type.creation_date = params[:creation_date]
        type.refresh_token_validity = params[:refresh_token_validity]
        type.access_token_validity = params[:access_token_validity]
        type.id_token_validity = params[:id_token_validity]
        type.token_validity_units = TokenValidityUnitsType.build(params[:token_validity_units], context: "#{context}[:token_validity_units]") unless params[:token_validity_units].nil?
        type.read_attributes = ClientPermissionListType.build(params[:read_attributes], context: "#{context}[:read_attributes]") unless params[:read_attributes].nil?
        type.write_attributes = ClientPermissionListType.build(params[:write_attributes], context: "#{context}[:write_attributes]") unless params[:write_attributes].nil?
        type.explicit_auth_flows = ExplicitAuthFlowsListType.build(params[:explicit_auth_flows], context: "#{context}[:explicit_auth_flows]") unless params[:explicit_auth_flows].nil?
        type.supported_identity_providers = SupportedIdentityProvidersListType.build(params[:supported_identity_providers], context: "#{context}[:supported_identity_providers]") unless params[:supported_identity_providers].nil?
        type.callback_ur_ls = CallbackURLsListType.build(params[:callback_ur_ls], context: "#{context}[:callback_ur_ls]") unless params[:callback_ur_ls].nil?
        type.logout_ur_ls = LogoutURLsListType.build(params[:logout_ur_ls], context: "#{context}[:logout_ur_ls]") unless params[:logout_ur_ls].nil?
        type.default_redirect_uri = params[:default_redirect_uri]
        type.allowed_o_auth_flows = OAuthFlowsType.build(params[:allowed_o_auth_flows], context: "#{context}[:allowed_o_auth_flows]") unless params[:allowed_o_auth_flows].nil?
        type.allowed_o_auth_scopes = ScopeListType.build(params[:allowed_o_auth_scopes], context: "#{context}[:allowed_o_auth_scopes]") unless params[:allowed_o_auth_scopes].nil?
        type.allowed_o_auth_flows_user_pool_client = params[:allowed_o_auth_flows_user_pool_client]
        type.analytics_configuration = AnalyticsConfigurationType.build(params[:analytics_configuration], context: "#{context}[:analytics_configuration]") unless params[:analytics_configuration].nil?
        type.prevent_user_existence_errors = params[:prevent_user_existence_errors]
        type.enable_token_revocation = params[:enable_token_revocation]
        type.enable_propagate_additional_user_context_data = params[:enable_propagate_additional_user_context_data]
        type
      end
    end

    module UserPoolDescriptionType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserPoolDescriptionType, context: context)
        type = Types::UserPoolDescriptionType.new
        type.id = params[:id]
        type.name = params[:name]
        type.lambda_config = LambdaConfigType.build(params[:lambda_config], context: "#{context}[:lambda_config]") unless params[:lambda_config].nil?
        type.status = params[:status]
        type.last_modified_date = params[:last_modified_date]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module UserPoolListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserPoolDescriptionType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserPoolPolicyType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserPoolPolicyType, context: context)
        type = Types::UserPoolPolicyType.new
        type.password_policy = PasswordPolicyType.build(params[:password_policy], context: "#{context}[:password_policy]") unless params[:password_policy].nil?
        type
      end
    end

    module UserPoolTaggingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserPoolTaggingException, context: context)
        type = Types::UserPoolTaggingException.new
        type.message = params[:message]
        type
      end
    end

    module UserPoolTagsListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UserPoolTagsType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module UserPoolType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserPoolType, context: context)
        type = Types::UserPoolType.new
        type.id = params[:id]
        type.name = params[:name]
        type.policies = UserPoolPolicyType.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.lambda_config = LambdaConfigType.build(params[:lambda_config], context: "#{context}[:lambda_config]") unless params[:lambda_config].nil?
        type.status = params[:status]
        type.last_modified_date = params[:last_modified_date]
        type.creation_date = params[:creation_date]
        type.schema_attributes = SchemaAttributesListType.build(params[:schema_attributes], context: "#{context}[:schema_attributes]") unless params[:schema_attributes].nil?
        type.auto_verified_attributes = VerifiedAttributesListType.build(params[:auto_verified_attributes], context: "#{context}[:auto_verified_attributes]") unless params[:auto_verified_attributes].nil?
        type.alias_attributes = AliasAttributesListType.build(params[:alias_attributes], context: "#{context}[:alias_attributes]") unless params[:alias_attributes].nil?
        type.username_attributes = UsernameAttributesListType.build(params[:username_attributes], context: "#{context}[:username_attributes]") unless params[:username_attributes].nil?
        type.sms_verification_message = params[:sms_verification_message]
        type.email_verification_message = params[:email_verification_message]
        type.email_verification_subject = params[:email_verification_subject]
        type.verification_message_template = VerificationMessageTemplateType.build(params[:verification_message_template], context: "#{context}[:verification_message_template]") unless params[:verification_message_template].nil?
        type.sms_authentication_message = params[:sms_authentication_message]
        type.user_attribute_update_settings = UserAttributeUpdateSettingsType.build(params[:user_attribute_update_settings], context: "#{context}[:user_attribute_update_settings]") unless params[:user_attribute_update_settings].nil?
        type.mfa_configuration = params[:mfa_configuration]
        type.device_configuration = DeviceConfigurationType.build(params[:device_configuration], context: "#{context}[:device_configuration]") unless params[:device_configuration].nil?
        type.estimated_number_of_users = params[:estimated_number_of_users]
        type.email_configuration = EmailConfigurationType.build(params[:email_configuration], context: "#{context}[:email_configuration]") unless params[:email_configuration].nil?
        type.sms_configuration = SmsConfigurationType.build(params[:sms_configuration], context: "#{context}[:sms_configuration]") unless params[:sms_configuration].nil?
        type.user_pool_tags = UserPoolTagsType.build(params[:user_pool_tags], context: "#{context}[:user_pool_tags]") unless params[:user_pool_tags].nil?
        type.sms_configuration_failure = params[:sms_configuration_failure]
        type.email_configuration_failure = params[:email_configuration_failure]
        type.domain = params[:domain]
        type.custom_domain = params[:custom_domain]
        type.admin_create_user_config = AdminCreateUserConfigType.build(params[:admin_create_user_config], context: "#{context}[:admin_create_user_config]") unless params[:admin_create_user_config].nil?
        type.user_pool_add_ons = UserPoolAddOnsType.build(params[:user_pool_add_ons], context: "#{context}[:user_pool_add_ons]") unless params[:user_pool_add_ons].nil?
        type.username_configuration = UsernameConfigurationType.build(params[:username_configuration], context: "#{context}[:username_configuration]") unless params[:username_configuration].nil?
        type.arn = params[:arn]
        type.account_recovery_setting = AccountRecoverySettingType.build(params[:account_recovery_setting], context: "#{context}[:account_recovery_setting]") unless params[:account_recovery_setting].nil?
        type
      end
    end

    module UserType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserType, context: context)
        type = Types::UserType.new
        type.username = params[:username]
        type.attributes = AttributeListType.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.user_create_date = params[:user_create_date]
        type.user_last_modified_date = params[:user_last_modified_date]
        type.enabled = params[:enabled]
        type.user_status = params[:user_status]
        type.mfa_options = MFAOptionListType.build(params[:mfa_options], context: "#{context}[:mfa_options]") unless params[:mfa_options].nil?
        type
      end
    end

    module UsernameAttributesListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UsernameConfigurationType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsernameConfigurationType, context: context)
        type = Types::UsernameConfigurationType.new
        type.case_sensitive = params[:case_sensitive]
        type
      end
    end

    module UsernameExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsernameExistsException, context: context)
        type = Types::UsernameExistsException.new
        type.message = params[:message]
        type
      end
    end

    module UsersListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VerificationMessageTemplateType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerificationMessageTemplateType, context: context)
        type = Types::VerificationMessageTemplateType.new
        type.sms_message = params[:sms_message]
        type.email_message = params[:email_message]
        type.email_subject = params[:email_subject]
        type.email_message_by_link = params[:email_message_by_link]
        type.email_subject_by_link = params[:email_subject_by_link]
        type.default_email_option = params[:default_email_option]
        type
      end
    end

    module VerifiedAttributesListType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VerifySoftwareTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifySoftwareTokenInput, context: context)
        type = Types::VerifySoftwareTokenInput.new
        type.access_token = params[:access_token]
        type.session = params[:session]
        type.user_code = params[:user_code]
        type.friendly_device_name = params[:friendly_device_name]
        type
      end
    end

    module VerifySoftwareTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifySoftwareTokenOutput, context: context)
        type = Types::VerifySoftwareTokenOutput.new
        type.status = params[:status]
        type.session = params[:session]
        type
      end
    end

    module VerifyUserAttributeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyUserAttributeInput, context: context)
        type = Types::VerifyUserAttributeInput.new
        type.access_token = params[:access_token]
        type.attribute_name = params[:attribute_name]
        type.code = params[:code]
        type
      end
    end

    module VerifyUserAttributeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VerifyUserAttributeOutput, context: context)
        type = Types::VerifyUserAttributeOutput.new
        type
      end
    end

  end
end
