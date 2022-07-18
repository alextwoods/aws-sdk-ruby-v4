# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Chime
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Account
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Account, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:account_type], ::String, context: "#{context}[:account_type]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:default_license], ::String, context: "#{context}[:default_license]")
        LicenseList.validate!(input[:supported_licenses], context: "#{context}[:supported_licenses]") unless input[:supported_licenses].nil?
        Hearth::Validator.validate!(input[:account_status], ::String, context: "#{context}[:account_status]")
        SigninDelegateGroupList.validate!(input[:signin_delegate_groups], context: "#{context}[:signin_delegate_groups]") unless input[:signin_delegate_groups].nil?
      end
    end

    class AccountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Account.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccountSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountSettings, context: context)
        Hearth::Validator.validate!(input[:disable_remote_control], ::TrueClass, ::FalseClass, context: "#{context}[:disable_remote_control]")
        Hearth::Validator.validate!(input[:enable_dial_out], ::TrueClass, ::FalseClass, context: "#{context}[:enable_dial_out]")
      end
    end

    class AlexaForBusinessMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlexaForBusinessMetadata, context: context)
        Hearth::Validator.validate!(input[:is_alexa_for_business_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_alexa_for_business_enabled]")
        Hearth::Validator.validate!(input[:alexa_for_business_room_arn], ::String, context: "#{context}[:alexa_for_business_room_arn]")
      end
    end

    class AppInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstance, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
      end
    end

    class AppInstanceAdmin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceAdmin, context: context)
        Identity.validate!(input[:admin], context: "#{context}[:admin]") unless input[:admin].nil?
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class AppInstanceAdminList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AppInstanceAdminSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppInstanceAdminSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceAdminSummary, context: context)
        Identity.validate!(input[:admin], context: "#{context}[:admin]") unless input[:admin].nil?
      end
    end

    class AppInstanceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AppInstanceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppInstanceRetentionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceRetentionSettings, context: context)
        ChannelRetentionSettings.validate!(input[:channel_retention_settings], context: "#{context}[:channel_retention_settings]") unless input[:channel_retention_settings].nil?
      end
    end

    class AppInstanceStreamingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceStreamingConfiguration, context: context)
        Hearth::Validator.validate!(input[:app_instance_data_type], ::String, context: "#{context}[:app_instance_data_type]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class AppInstanceStreamingConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AppInstanceStreamingConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppInstanceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceSummary, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
      end
    end

    class AppInstanceUser
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceUser, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
      end
    end

    class AppInstanceUserList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AppInstanceUserSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppInstanceUserMembershipSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceUserMembershipSummary, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:read_marker_timestamp], ::Time, context: "#{context}[:read_marker_timestamp]")
      end
    end

    class AppInstanceUserSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceUserSummary, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
      end
    end

    class ArtifactsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArtifactsConfiguration, context: context)
        AudioArtifactsConfiguration.validate!(input[:audio], context: "#{context}[:audio]") unless input[:audio].nil?
        VideoArtifactsConfiguration.validate!(input[:video], context: "#{context}[:video]") unless input[:video].nil?
        ContentArtifactsConfiguration.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
      end
    end

    class AssociatePhoneNumberWithUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePhoneNumberWithUserInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:e164_phone_number], ::String, context: "#{context}[:e164_phone_number]")
      end
    end

    class AssociatePhoneNumberWithUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePhoneNumberWithUserOutput, context: context)
      end
    end

    class AssociatePhoneNumbersWithVoiceConnectorGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePhoneNumbersWithVoiceConnectorGroupInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_group_id], ::String, context: "#{context}[:voice_connector_group_id]")
        E164PhoneNumberList.validate!(input[:e164_phone_numbers], context: "#{context}[:e164_phone_numbers]") unless input[:e164_phone_numbers].nil?
        Hearth::Validator.validate!(input[:force_associate], ::TrueClass, ::FalseClass, context: "#{context}[:force_associate]")
      end
    end

    class AssociatePhoneNumbersWithVoiceConnectorGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePhoneNumbersWithVoiceConnectorGroupOutput, context: context)
        PhoneNumberErrorList.validate!(input[:phone_number_errors], context: "#{context}[:phone_number_errors]") unless input[:phone_number_errors].nil?
      end
    end

    class AssociatePhoneNumbersWithVoiceConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePhoneNumbersWithVoiceConnectorInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        E164PhoneNumberList.validate!(input[:e164_phone_numbers], context: "#{context}[:e164_phone_numbers]") unless input[:e164_phone_numbers].nil?
        Hearth::Validator.validate!(input[:force_associate], ::TrueClass, ::FalseClass, context: "#{context}[:force_associate]")
      end
    end

    class AssociatePhoneNumbersWithVoiceConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePhoneNumbersWithVoiceConnectorOutput, context: context)
        PhoneNumberErrorList.validate!(input[:phone_number_errors], context: "#{context}[:phone_number_errors]") unless input[:phone_number_errors].nil?
      end
    end

    class AssociateSigninDelegateGroupsWithAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateSigninDelegateGroupsWithAccountInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        SigninDelegateGroupList.validate!(input[:signin_delegate_groups], context: "#{context}[:signin_delegate_groups]") unless input[:signin_delegate_groups].nil?
      end
    end

    class AssociateSigninDelegateGroupsWithAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateSigninDelegateGroupsWithAccountOutput, context: context)
      end
    end

    class Attendee
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Attendee, context: context)
        Hearth::Validator.validate!(input[:external_user_id], ::String, context: "#{context}[:external_user_id]")
        Hearth::Validator.validate!(input[:attendee_id], ::String, context: "#{context}[:attendee_id]")
        Hearth::Validator.validate!(input[:join_token], ::String, context: "#{context}[:join_token]")
      end
    end

    class AttendeeIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AttendeeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Attendee.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttendeeTagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AttendeeTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AudioArtifactsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AudioArtifactsConfiguration, context: context)
        Hearth::Validator.validate!(input[:mux_type], ::String, context: "#{context}[:mux_type]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchChannelMemberships
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchChannelMemberships, context: context)
        Identity.validate!(input[:invited_by], context: "#{context}[:invited_by]") unless input[:invited_by].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Members.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
      end
    end

    class BatchCreateAttendeeErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CreateAttendeeError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchCreateAttendeeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateAttendeeInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        CreateAttendeeRequestItemList.validate!(input[:attendees], context: "#{context}[:attendees]") unless input[:attendees].nil?
      end
    end

    class BatchCreateAttendeeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateAttendeeOutput, context: context)
        AttendeeList.validate!(input[:attendees], context: "#{context}[:attendees]") unless input[:attendees].nil?
        BatchCreateAttendeeErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchCreateChannelMembershipError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateChannelMembershipError, context: context)
        Hearth::Validator.validate!(input[:member_arn], ::String, context: "#{context}[:member_arn]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchCreateChannelMembershipErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchCreateChannelMembershipError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchCreateChannelMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateChannelMembershipInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        MemberArns.validate!(input[:member_arns], context: "#{context}[:member_arns]") unless input[:member_arns].nil?
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class BatchCreateChannelMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateChannelMembershipOutput, context: context)
        BatchChannelMemberships.validate!(input[:batch_channel_memberships], context: "#{context}[:batch_channel_memberships]") unless input[:batch_channel_memberships].nil?
        BatchCreateChannelMembershipErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchCreateRoomMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateRoomMembershipInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:room_id], ::String, context: "#{context}[:room_id]")
        MembershipItemList.validate!(input[:membership_item_list], context: "#{context}[:membership_item_list]") unless input[:membership_item_list].nil?
      end
    end

    class BatchCreateRoomMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateRoomMembershipOutput, context: context)
        MemberErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchDeletePhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeletePhoneNumberInput, context: context)
        NonEmptyStringList.validate!(input[:phone_number_ids], context: "#{context}[:phone_number_ids]") unless input[:phone_number_ids].nil?
      end
    end

    class BatchDeletePhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeletePhoneNumberOutput, context: context)
        PhoneNumberErrorList.validate!(input[:phone_number_errors], context: "#{context}[:phone_number_errors]") unless input[:phone_number_errors].nil?
      end
    end

    class BatchSuspendUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchSuspendUserInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        UserIdList.validate!(input[:user_id_list], context: "#{context}[:user_id_list]") unless input[:user_id_list].nil?
      end
    end

    class BatchSuspendUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchSuspendUserOutput, context: context)
        UserErrorList.validate!(input[:user_errors], context: "#{context}[:user_errors]") unless input[:user_errors].nil?
      end
    end

    class BatchUnsuspendUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUnsuspendUserInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        UserIdList.validate!(input[:user_id_list], context: "#{context}[:user_id_list]") unless input[:user_id_list].nil?
      end
    end

    class BatchUnsuspendUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUnsuspendUserOutput, context: context)
        UserErrorList.validate!(input[:user_errors], context: "#{context}[:user_errors]") unless input[:user_errors].nil?
      end
    end

    class BatchUpdatePhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdatePhoneNumberInput, context: context)
        UpdatePhoneNumberRequestItemList.validate!(input[:update_phone_number_request_items], context: "#{context}[:update_phone_number_request_items]") unless input[:update_phone_number_request_items].nil?
      end
    end

    class BatchUpdatePhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdatePhoneNumberOutput, context: context)
        PhoneNumberErrorList.validate!(input[:phone_number_errors], context: "#{context}[:phone_number_errors]") unless input[:phone_number_errors].nil?
      end
    end

    class BatchUpdateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateUserInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        UpdateUserRequestItemList.validate!(input[:update_user_request_items], context: "#{context}[:update_user_request_items]") unless input[:update_user_request_items].nil?
      end
    end

    class BatchUpdateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdateUserOutput, context: context)
        UserErrorList.validate!(input[:user_errors], context: "#{context}[:user_errors]") unless input[:user_errors].nil?
      end
    end

    class Bot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Bot, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:bot_type], ::String, context: "#{context}[:bot_type]")
        Hearth::Validator.validate!(input[:disabled], ::TrueClass, ::FalseClass, context: "#{context}[:disabled]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
        Hearth::Validator.validate!(input[:bot_email], ::String, context: "#{context}[:bot_email]")
        Hearth::Validator.validate!(input[:security_token], ::String, context: "#{context}[:security_token]")
      end
    end

    class BotList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Bot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BusinessCallingSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BusinessCallingSettings, context: context)
        Hearth::Validator.validate!(input[:cdr_bucket], ::String, context: "#{context}[:cdr_bucket]")
      end
    end

    class CallingRegionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CapabilityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Channel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Channel, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:privacy], ::String, context: "#{context}[:privacy]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Identity.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_message_timestamp], ::Time, context: "#{context}[:last_message_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
      end
    end

    class ChannelBan
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelBan, context: context)
        Identity.validate!(input[:member], context: "#{context}[:member]") unless input[:member].nil?
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Identity.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
      end
    end

    class ChannelBanSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelBanSummary, context: context)
        Identity.validate!(input[:member], context: "#{context}[:member]") unless input[:member].nil?
      end
    end

    class ChannelBanSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChannelBanSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChannelMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelMembership, context: context)
        Identity.validate!(input[:invited_by], context: "#{context}[:invited_by]") unless input[:invited_by].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Identity.validate!(input[:member], context: "#{context}[:member]") unless input[:member].nil?
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
      end
    end

    class ChannelMembershipForAppInstanceUserSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelMembershipForAppInstanceUserSummary, context: context)
        ChannelSummary.validate!(input[:channel_summary], context: "#{context}[:channel_summary]") unless input[:channel_summary].nil?
        AppInstanceUserMembershipSummary.validate!(input[:app_instance_user_membership_summary], context: "#{context}[:app_instance_user_membership_summary]") unless input[:app_instance_user_membership_summary].nil?
      end
    end

    class ChannelMembershipForAppInstanceUserSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChannelMembershipForAppInstanceUserSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChannelMembershipSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelMembershipSummary, context: context)
        Identity.validate!(input[:member], context: "#{context}[:member]") unless input[:member].nil?
      end
    end

    class ChannelMembershipSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChannelMembershipSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChannelMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelMessage, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_edited_timestamp], ::Time, context: "#{context}[:last_edited_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
        Identity.validate!(input[:sender], context: "#{context}[:sender]") unless input[:sender].nil?
        Hearth::Validator.validate!(input[:redacted], ::TrueClass, ::FalseClass, context: "#{context}[:redacted]")
        Hearth::Validator.validate!(input[:persistence], ::String, context: "#{context}[:persistence]")
      end
    end

    class ChannelMessageSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelMessageSummary, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
        Hearth::Validator.validate!(input[:last_edited_timestamp], ::Time, context: "#{context}[:last_edited_timestamp]")
        Identity.validate!(input[:sender], context: "#{context}[:sender]") unless input[:sender].nil?
        Hearth::Validator.validate!(input[:redacted], ::TrueClass, ::FalseClass, context: "#{context}[:redacted]")
      end
    end

    class ChannelMessageSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChannelMessageSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChannelModeratedByAppInstanceUserSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelModeratedByAppInstanceUserSummary, context: context)
        ChannelSummary.validate!(input[:channel_summary], context: "#{context}[:channel_summary]") unless input[:channel_summary].nil?
      end
    end

    class ChannelModeratedByAppInstanceUserSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChannelModeratedByAppInstanceUserSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChannelModerator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelModerator, context: context)
        Identity.validate!(input[:moderator], context: "#{context}[:moderator]") unless input[:moderator].nil?
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Identity.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
      end
    end

    class ChannelModeratorSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelModeratorSummary, context: context)
        Identity.validate!(input[:moderator], context: "#{context}[:moderator]") unless input[:moderator].nil?
      end
    end

    class ChannelModeratorSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChannelModeratorSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChannelRetentionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelRetentionSettings, context: context)
        Hearth::Validator.validate!(input[:retention_days], ::Integer, context: "#{context}[:retention_days]")
      end
    end

    class ChannelSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:privacy], ::String, context: "#{context}[:privacy]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:last_message_timestamp], ::Time, context: "#{context}[:last_message_timestamp]")
      end
    end

    class ChannelSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChannelSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChimeSdkMeetingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChimeSdkMeetingConfiguration, context: context)
        SourceConfiguration.validate!(input[:source_configuration], context: "#{context}[:source_configuration]") unless input[:source_configuration].nil?
        ArtifactsConfiguration.validate!(input[:artifacts_configuration], context: "#{context}[:artifacts_configuration]") unless input[:artifacts_configuration].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ContentArtifactsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContentArtifactsConfiguration, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:mux_type], ::String, context: "#{context}[:mux_type]")
      end
    end

    class ConversationRetentionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConversationRetentionSettings, context: context)
        Hearth::Validator.validate!(input[:retention_days], ::Integer, context: "#{context}[:retention_days]")
      end
    end

    class CountryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccountInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccountOutput, context: context)
        Account.validate!(input[:account], context: "#{context}[:account]") unless input[:account].nil?
      end
    end

    class CreateAppInstanceAdminInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInstanceAdminInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_admin_arn], ::String, context: "#{context}[:app_instance_admin_arn]")
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class CreateAppInstanceAdminOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInstanceAdminOutput, context: context)
        Identity.validate!(input[:app_instance_admin], context: "#{context}[:app_instance_admin]") unless input[:app_instance_admin].nil?
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class CreateAppInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInstanceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAppInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInstanceOutput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class CreateAppInstanceUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInstanceUserInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:app_instance_user_id], ::String, context: "#{context}[:app_instance_user_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAppInstanceUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInstanceUserOutput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
      end
    end

    class CreateAttendeeError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAttendeeError, context: context)
        Hearth::Validator.validate!(input[:external_user_id], ::String, context: "#{context}[:external_user_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class CreateAttendeeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAttendeeInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        Hearth::Validator.validate!(input[:external_user_id], ::String, context: "#{context}[:external_user_id]")
        AttendeeTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAttendeeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAttendeeOutput, context: context)
        Attendee.validate!(input[:attendee], context: "#{context}[:attendee]") unless input[:attendee].nil?
      end
    end

    class CreateAttendeeRequestItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAttendeeRequestItem, context: context)
        Hearth::Validator.validate!(input[:external_user_id], ::String, context: "#{context}[:external_user_id]")
        AttendeeTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAttendeeRequestItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CreateAttendeeRequestItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateBotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBotInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class CreateBotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBotOutput, context: context)
        Bot.validate!(input[:bot], context: "#{context}[:bot]") unless input[:bot].nil?
      end
    end

    class CreateChannelBanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelBanInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:member_arn], ::String, context: "#{context}[:member_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class CreateChannelBanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelBanOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Identity.validate!(input[:member], context: "#{context}[:member]") unless input[:member].nil?
      end
    end

    class CreateChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:privacy], ::String, context: "#{context}[:privacy]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class CreateChannelMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelMembershipInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:member_arn], ::String, context: "#{context}[:member_arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class CreateChannelMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelMembershipOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Identity.validate!(input[:member], context: "#{context}[:member]") unless input[:member].nil?
      end
    end

    class CreateChannelModeratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelModeratorInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:channel_moderator_arn], ::String, context: "#{context}[:channel_moderator_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class CreateChannelModeratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelModeratorOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Identity.validate!(input[:channel_moderator], context: "#{context}[:channel_moderator]") unless input[:channel_moderator].nil?
      end
    end

    class CreateChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
      end
    end

    class CreateMediaCapturePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMediaCapturePipelineInput, context: context)
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:sink_type], ::String, context: "#{context}[:sink_type]")
        Hearth::Validator.validate!(input[:sink_arn], ::String, context: "#{context}[:sink_arn]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        ChimeSdkMeetingConfiguration.validate!(input[:chime_sdk_meeting_configuration], context: "#{context}[:chime_sdk_meeting_configuration]") unless input[:chime_sdk_meeting_configuration].nil?
      end
    end

    class CreateMediaCapturePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMediaCapturePipelineOutput, context: context)
        MediaCapturePipeline.validate!(input[:media_capture_pipeline], context: "#{context}[:media_capture_pipeline]") unless input[:media_capture_pipeline].nil?
      end
    end

    class CreateMeetingDialOutInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMeetingDialOutInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        Hearth::Validator.validate!(input[:from_phone_number], ::String, context: "#{context}[:from_phone_number]")
        Hearth::Validator.validate!(input[:to_phone_number], ::String, context: "#{context}[:to_phone_number]")
        Hearth::Validator.validate!(input[:join_token], ::String, context: "#{context}[:join_token]")
      end
    end

    class CreateMeetingDialOutOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMeetingDialOutOutput, context: context)
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
      end
    end

    class CreateMeetingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMeetingInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:external_meeting_id], ::String, context: "#{context}[:external_meeting_id]")
        Hearth::Validator.validate!(input[:meeting_host_id], ::String, context: "#{context}[:meeting_host_id]")
        Hearth::Validator.validate!(input[:media_region], ::String, context: "#{context}[:media_region]")
        MeetingTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        MeetingNotificationConfiguration.validate!(input[:notifications_configuration], context: "#{context}[:notifications_configuration]") unless input[:notifications_configuration].nil?
      end
    end

    class CreateMeetingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMeetingOutput, context: context)
        Meeting.validate!(input[:meeting], context: "#{context}[:meeting]") unless input[:meeting].nil?
      end
    end

    class CreateMeetingWithAttendeesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMeetingWithAttendeesInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:external_meeting_id], ::String, context: "#{context}[:external_meeting_id]")
        Hearth::Validator.validate!(input[:meeting_host_id], ::String, context: "#{context}[:meeting_host_id]")
        Hearth::Validator.validate!(input[:media_region], ::String, context: "#{context}[:media_region]")
        MeetingTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        MeetingNotificationConfiguration.validate!(input[:notifications_configuration], context: "#{context}[:notifications_configuration]") unless input[:notifications_configuration].nil?
        CreateMeetingWithAttendeesRequestItemList.validate!(input[:attendees], context: "#{context}[:attendees]") unless input[:attendees].nil?
      end
    end

    class CreateMeetingWithAttendeesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMeetingWithAttendeesOutput, context: context)
        Meeting.validate!(input[:meeting], context: "#{context}[:meeting]") unless input[:meeting].nil?
        AttendeeList.validate!(input[:attendees], context: "#{context}[:attendees]") unless input[:attendees].nil?
        BatchCreateAttendeeErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class CreateMeetingWithAttendeesRequestItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CreateAttendeeRequestItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreatePhoneNumberOrderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePhoneNumberOrderInput, context: context)
        Hearth::Validator.validate!(input[:product_type], ::String, context: "#{context}[:product_type]")
        E164PhoneNumberList.validate!(input[:e164_phone_numbers], context: "#{context}[:e164_phone_numbers]") unless input[:e164_phone_numbers].nil?
      end
    end

    class CreatePhoneNumberOrderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePhoneNumberOrderOutput, context: context)
        PhoneNumberOrder.validate!(input[:phone_number_order], context: "#{context}[:phone_number_order]") unless input[:phone_number_order].nil?
      end
    end

    class CreateProxySessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProxySessionInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        ParticipantPhoneNumberList.validate!(input[:participant_phone_numbers], context: "#{context}[:participant_phone_numbers]") unless input[:participant_phone_numbers].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:expiry_minutes], ::Integer, context: "#{context}[:expiry_minutes]")
        CapabilityList.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        Hearth::Validator.validate!(input[:number_selection_behavior], ::String, context: "#{context}[:number_selection_behavior]")
        Hearth::Validator.validate!(input[:geo_match_level], ::String, context: "#{context}[:geo_match_level]")
        GeoMatchParams.validate!(input[:geo_match_params], context: "#{context}[:geo_match_params]") unless input[:geo_match_params].nil?
      end
    end

    class CreateProxySessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProxySessionOutput, context: context)
        ProxySession.validate!(input[:proxy_session], context: "#{context}[:proxy_session]") unless input[:proxy_session].nil?
      end
    end

    class CreateRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoomInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreateRoomMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoomMembershipInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:room_id], ::String, context: "#{context}[:room_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
      end
    end

    class CreateRoomMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoomMembershipOutput, context: context)
        RoomMembership.validate!(input[:room_membership], context: "#{context}[:room_membership]") unless input[:room_membership].nil?
      end
    end

    class CreateRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoomOutput, context: context)
        Room.validate!(input[:room], context: "#{context}[:room]") unless input[:room].nil?
      end
    end

    class CreateSipMediaApplicationCallInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSipMediaApplicationCallInput, context: context)
        Hearth::Validator.validate!(input[:from_phone_number], ::String, context: "#{context}[:from_phone_number]")
        Hearth::Validator.validate!(input[:to_phone_number], ::String, context: "#{context}[:to_phone_number]")
        Hearth::Validator.validate!(input[:sip_media_application_id], ::String, context: "#{context}[:sip_media_application_id]")
        SipHeadersMap.validate!(input[:sip_headers], context: "#{context}[:sip_headers]") unless input[:sip_headers].nil?
      end
    end

    class CreateSipMediaApplicationCallOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSipMediaApplicationCallOutput, context: context)
        SipMediaApplicationCall.validate!(input[:sip_media_application_call], context: "#{context}[:sip_media_application_call]") unless input[:sip_media_application_call].nil?
      end
    end

    class CreateSipMediaApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSipMediaApplicationInput, context: context)
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SipMediaApplicationEndpointList.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
      end
    end

    class CreateSipMediaApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSipMediaApplicationOutput, context: context)
        SipMediaApplication.validate!(input[:sip_media_application], context: "#{context}[:sip_media_application]") unless input[:sip_media_application].nil?
      end
    end

    class CreateSipRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSipRuleInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:trigger_type], ::String, context: "#{context}[:trigger_type]")
        Hearth::Validator.validate!(input[:trigger_value], ::String, context: "#{context}[:trigger_value]")
        Hearth::Validator.validate!(input[:disabled], ::TrueClass, ::FalseClass, context: "#{context}[:disabled]")
        SipRuleTargetApplicationList.validate!(input[:target_applications], context: "#{context}[:target_applications]") unless input[:target_applications].nil?
      end
    end

    class CreateSipRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSipRuleOutput, context: context)
        SipRule.validate!(input[:sip_rule], context: "#{context}[:sip_rule]") unless input[:sip_rule].nil?
      end
    end

    class CreateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:user_type], ::String, context: "#{context}[:user_type]")
      end
    end

    class CreateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserOutput, context: context)
        User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class CreateVoiceConnectorGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVoiceConnectorGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        VoiceConnectorItemList.validate!(input[:voice_connector_items], context: "#{context}[:voice_connector_items]") unless input[:voice_connector_items].nil?
      end
    end

    class CreateVoiceConnectorGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVoiceConnectorGroupOutput, context: context)
        VoiceConnectorGroup.validate!(input[:voice_connector_group], context: "#{context}[:voice_connector_group]") unless input[:voice_connector_group].nil?
      end
    end

    class CreateVoiceConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVoiceConnectorInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:require_encryption], ::TrueClass, ::FalseClass, context: "#{context}[:require_encryption]")
      end
    end

    class CreateVoiceConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVoiceConnectorOutput, context: context)
        VoiceConnector.validate!(input[:voice_connector], context: "#{context}[:voice_connector]") unless input[:voice_connector].nil?
      end
    end

    class Credential
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Credential, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class CredentialList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Credential.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DNISEmergencyCallingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DNISEmergencyCallingConfiguration, context: context)
        Hearth::Validator.validate!(input[:emergency_phone_number], ::String, context: "#{context}[:emergency_phone_number]")
        Hearth::Validator.validate!(input[:test_phone_number], ::String, context: "#{context}[:test_phone_number]")
        Hearth::Validator.validate!(input[:calling_country], ::String, context: "#{context}[:calling_country]")
      end
    end

    class DNISEmergencyCallingConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DNISEmergencyCallingConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccountInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class DeleteAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccountOutput, context: context)
      end
    end

    class DeleteAppInstanceAdminInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInstanceAdminInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_admin_arn], ::String, context: "#{context}[:app_instance_admin_arn]")
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class DeleteAppInstanceAdminOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInstanceAdminOutput, context: context)
      end
    end

    class DeleteAppInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInstanceInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class DeleteAppInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInstanceOutput, context: context)
      end
    end

    class DeleteAppInstanceStreamingConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInstanceStreamingConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class DeleteAppInstanceStreamingConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInstanceStreamingConfigurationsOutput, context: context)
      end
    end

    class DeleteAppInstanceUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInstanceUserInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
      end
    end

    class DeleteAppInstanceUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInstanceUserOutput, context: context)
      end
    end

    class DeleteAttendeeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAttendeeInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        Hearth::Validator.validate!(input[:attendee_id], ::String, context: "#{context}[:attendee_id]")
      end
    end

    class DeleteAttendeeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAttendeeOutput, context: context)
      end
    end

    class DeleteChannelBanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelBanInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:member_arn], ::String, context: "#{context}[:member_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class DeleteChannelBanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelBanOutput, context: context)
      end
    end

    class DeleteChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class DeleteChannelMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelMembershipInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:member_arn], ::String, context: "#{context}[:member_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class DeleteChannelMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelMembershipOutput, context: context)
      end
    end

    class DeleteChannelMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelMessageInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class DeleteChannelMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelMessageOutput, context: context)
      end
    end

    class DeleteChannelModeratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelModeratorInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:channel_moderator_arn], ::String, context: "#{context}[:channel_moderator_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class DeleteChannelModeratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelModeratorOutput, context: context)
      end
    end

    class DeleteChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelOutput, context: context)
      end
    end

    class DeleteEventsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventsConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
      end
    end

    class DeleteEventsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventsConfigurationOutput, context: context)
      end
    end

    class DeleteMediaCapturePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMediaCapturePipelineInput, context: context)
        Hearth::Validator.validate!(input[:media_pipeline_id], ::String, context: "#{context}[:media_pipeline_id]")
      end
    end

    class DeleteMediaCapturePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMediaCapturePipelineOutput, context: context)
      end
    end

    class DeleteMeetingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMeetingInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
      end
    end

    class DeleteMeetingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMeetingOutput, context: context)
      end
    end

    class DeletePhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePhoneNumberInput, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
      end
    end

    class DeletePhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePhoneNumberOutput, context: context)
      end
    end

    class DeleteProxySessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProxySessionInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        Hearth::Validator.validate!(input[:proxy_session_id], ::String, context: "#{context}[:proxy_session_id]")
      end
    end

    class DeleteProxySessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProxySessionOutput, context: context)
      end
    end

    class DeleteRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoomInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:room_id], ::String, context: "#{context}[:room_id]")
      end
    end

    class DeleteRoomMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoomMembershipInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:room_id], ::String, context: "#{context}[:room_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
      end
    end

    class DeleteRoomMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoomMembershipOutput, context: context)
      end
    end

    class DeleteRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoomOutput, context: context)
      end
    end

    class DeleteSipMediaApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSipMediaApplicationInput, context: context)
        Hearth::Validator.validate!(input[:sip_media_application_id], ::String, context: "#{context}[:sip_media_application_id]")
      end
    end

    class DeleteSipMediaApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSipMediaApplicationOutput, context: context)
      end
    end

    class DeleteSipRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSipRuleInput, context: context)
        Hearth::Validator.validate!(input[:sip_rule_id], ::String, context: "#{context}[:sip_rule_id]")
      end
    end

    class DeleteSipRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSipRuleOutput, context: context)
      end
    end

    class DeleteVoiceConnectorEmergencyCallingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorEmergencyCallingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
      end
    end

    class DeleteVoiceConnectorEmergencyCallingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorEmergencyCallingConfigurationOutput, context: context)
      end
    end

    class DeleteVoiceConnectorGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorGroupInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_group_id], ::String, context: "#{context}[:voice_connector_group_id]")
      end
    end

    class DeleteVoiceConnectorGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorGroupOutput, context: context)
      end
    end

    class DeleteVoiceConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
      end
    end

    class DeleteVoiceConnectorOriginationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorOriginationInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
      end
    end

    class DeleteVoiceConnectorOriginationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorOriginationOutput, context: context)
      end
    end

    class DeleteVoiceConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorOutput, context: context)
      end
    end

    class DeleteVoiceConnectorProxyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorProxyInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
      end
    end

    class DeleteVoiceConnectorProxyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorProxyOutput, context: context)
      end
    end

    class DeleteVoiceConnectorStreamingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorStreamingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
      end
    end

    class DeleteVoiceConnectorStreamingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorStreamingConfigurationOutput, context: context)
      end
    end

    class DeleteVoiceConnectorTerminationCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorTerminationCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        SensitiveStringList.validate!(input[:usernames], context: "#{context}[:usernames]") unless input[:usernames].nil?
      end
    end

    class DeleteVoiceConnectorTerminationCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorTerminationCredentialsOutput, context: context)
      end
    end

    class DeleteVoiceConnectorTerminationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorTerminationInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
      end
    end

    class DeleteVoiceConnectorTerminationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVoiceConnectorTerminationOutput, context: context)
      end
    end

    class DescribeAppInstanceAdminInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInstanceAdminInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_admin_arn], ::String, context: "#{context}[:app_instance_admin_arn]")
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class DescribeAppInstanceAdminOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInstanceAdminOutput, context: context)
        AppInstanceAdmin.validate!(input[:app_instance_admin], context: "#{context}[:app_instance_admin]") unless input[:app_instance_admin].nil?
      end
    end

    class DescribeAppInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInstanceInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class DescribeAppInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInstanceOutput, context: context)
        AppInstance.validate!(input[:app_instance], context: "#{context}[:app_instance]") unless input[:app_instance].nil?
      end
    end

    class DescribeAppInstanceUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInstanceUserInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
      end
    end

    class DescribeAppInstanceUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInstanceUserOutput, context: context)
        AppInstanceUser.validate!(input[:app_instance_user], context: "#{context}[:app_instance_user]") unless input[:app_instance_user].nil?
      end
    end

    class DescribeChannelBanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelBanInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:member_arn], ::String, context: "#{context}[:member_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class DescribeChannelBanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelBanOutput, context: context)
        ChannelBan.validate!(input[:channel_ban], context: "#{context}[:channel_ban]") unless input[:channel_ban].nil?
      end
    end

    class DescribeChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class DescribeChannelMembershipForAppInstanceUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelMembershipForAppInstanceUserInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class DescribeChannelMembershipForAppInstanceUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelMembershipForAppInstanceUserOutput, context: context)
        ChannelMembershipForAppInstanceUserSummary.validate!(input[:channel_membership], context: "#{context}[:channel_membership]") unless input[:channel_membership].nil?
      end
    end

    class DescribeChannelMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelMembershipInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:member_arn], ::String, context: "#{context}[:member_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class DescribeChannelMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelMembershipOutput, context: context)
        ChannelMembership.validate!(input[:channel_membership], context: "#{context}[:channel_membership]") unless input[:channel_membership].nil?
      end
    end

    class DescribeChannelModeratedByAppInstanceUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelModeratedByAppInstanceUserInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class DescribeChannelModeratedByAppInstanceUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelModeratedByAppInstanceUserOutput, context: context)
        ChannelModeratedByAppInstanceUserSummary.validate!(input[:channel], context: "#{context}[:channel]") unless input[:channel].nil?
      end
    end

    class DescribeChannelModeratorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelModeratorInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:channel_moderator_arn], ::String, context: "#{context}[:channel_moderator_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class DescribeChannelModeratorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelModeratorOutput, context: context)
        ChannelModerator.validate!(input[:channel_moderator], context: "#{context}[:channel_moderator]") unless input[:channel_moderator].nil?
      end
    end

    class DescribeChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelOutput, context: context)
        Channel.validate!(input[:channel], context: "#{context}[:channel]") unless input[:channel].nil?
      end
    end

    class DisassociatePhoneNumberFromUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociatePhoneNumberFromUserInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class DisassociatePhoneNumberFromUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociatePhoneNumberFromUserOutput, context: context)
      end
    end

    class DisassociatePhoneNumbersFromVoiceConnectorGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociatePhoneNumbersFromVoiceConnectorGroupInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_group_id], ::String, context: "#{context}[:voice_connector_group_id]")
        E164PhoneNumberList.validate!(input[:e164_phone_numbers], context: "#{context}[:e164_phone_numbers]") unless input[:e164_phone_numbers].nil?
      end
    end

    class DisassociatePhoneNumbersFromVoiceConnectorGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociatePhoneNumbersFromVoiceConnectorGroupOutput, context: context)
        PhoneNumberErrorList.validate!(input[:phone_number_errors], context: "#{context}[:phone_number_errors]") unless input[:phone_number_errors].nil?
      end
    end

    class DisassociatePhoneNumbersFromVoiceConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociatePhoneNumbersFromVoiceConnectorInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        E164PhoneNumberList.validate!(input[:e164_phone_numbers], context: "#{context}[:e164_phone_numbers]") unless input[:e164_phone_numbers].nil?
      end
    end

    class DisassociatePhoneNumbersFromVoiceConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociatePhoneNumbersFromVoiceConnectorOutput, context: context)
        PhoneNumberErrorList.validate!(input[:phone_number_errors], context: "#{context}[:phone_number_errors]") unless input[:phone_number_errors].nil?
      end
    end

    class DisassociateSigninDelegateGroupsFromAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateSigninDelegateGroupsFromAccountInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        NonEmptyStringList.validate!(input[:group_names], context: "#{context}[:group_names]") unless input[:group_names].nil?
      end
    end

    class DisassociateSigninDelegateGroupsFromAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateSigninDelegateGroupsFromAccountOutput, context: context)
      end
    end

    class E164PhoneNumberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EmergencyCallingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmergencyCallingConfiguration, context: context)
        DNISEmergencyCallingConfigurationList.validate!(input[:dnis], context: "#{context}[:dnis]") unless input[:dnis].nil?
      end
    end

    class EngineTranscribeMedicalSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EngineTranscribeMedicalSettings, context: context)
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:specialty], ::String, context: "#{context}[:specialty]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
      end
    end

    class EngineTranscribeSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EngineTranscribeSettings, context: context)
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:vocabulary_filter_method], ::String, context: "#{context}[:vocabulary_filter_method]")
        Hearth::Validator.validate!(input[:vocabulary_filter_name], ::String, context: "#{context}[:vocabulary_filter_name]")
        Hearth::Validator.validate!(input[:vocabulary_name], ::String, context: "#{context}[:vocabulary_name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:enable_partial_results_stabilization], ::TrueClass, ::FalseClass, context: "#{context}[:enable_partial_results_stabilization]")
        Hearth::Validator.validate!(input[:partial_results_stability], ::String, context: "#{context}[:partial_results_stability]")
        Hearth::Validator.validate!(input[:content_identification_type], ::String, context: "#{context}[:content_identification_type]")
        Hearth::Validator.validate!(input[:content_redaction_type], ::String, context: "#{context}[:content_redaction_type]")
        Hearth::Validator.validate!(input[:pii_entity_types], ::String, context: "#{context}[:pii_entity_types]")
        Hearth::Validator.validate!(input[:language_model_name], ::String, context: "#{context}[:language_model_name]")
      end
    end

    class EventsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventsConfiguration, context: context)
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:outbound_events_https_endpoint], ::String, context: "#{context}[:outbound_events_https_endpoint]")
        Hearth::Validator.validate!(input[:lambda_function_arn], ::String, context: "#{context}[:lambda_function_arn]")
      end
    end

    class ExternalUserIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GeoMatchParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeoMatchParams, context: context)
        Hearth::Validator.validate!(input[:country], ::String, context: "#{context}[:country]")
        Hearth::Validator.validate!(input[:area_code], ::String, context: "#{context}[:area_code]")
      end
    end

    class GetAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class GetAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountOutput, context: context)
        Account.validate!(input[:account], context: "#{context}[:account]") unless input[:account].nil?
      end
    end

    class GetAccountSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountSettingsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class GetAccountSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountSettingsOutput, context: context)
        AccountSettings.validate!(input[:account_settings], context: "#{context}[:account_settings]") unless input[:account_settings].nil?
      end
    end

    class GetAppInstanceRetentionSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppInstanceRetentionSettingsInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class GetAppInstanceRetentionSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppInstanceRetentionSettingsOutput, context: context)
        AppInstanceRetentionSettings.validate!(input[:app_instance_retention_settings], context: "#{context}[:app_instance_retention_settings]") unless input[:app_instance_retention_settings].nil?
        Hearth::Validator.validate!(input[:initiate_deletion_timestamp], ::Time, context: "#{context}[:initiate_deletion_timestamp]")
      end
    end

    class GetAppInstanceStreamingConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppInstanceStreamingConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class GetAppInstanceStreamingConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAppInstanceStreamingConfigurationsOutput, context: context)
        AppInstanceStreamingConfigurationList.validate!(input[:app_instance_streaming_configurations], context: "#{context}[:app_instance_streaming_configurations]") unless input[:app_instance_streaming_configurations].nil?
      end
    end

    class GetAttendeeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAttendeeInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        Hearth::Validator.validate!(input[:attendee_id], ::String, context: "#{context}[:attendee_id]")
      end
    end

    class GetAttendeeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAttendeeOutput, context: context)
        Attendee.validate!(input[:attendee], context: "#{context}[:attendee]") unless input[:attendee].nil?
      end
    end

    class GetBotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
      end
    end

    class GetBotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBotOutput, context: context)
        Bot.validate!(input[:bot], context: "#{context}[:bot]") unless input[:bot].nil?
      end
    end

    class GetChannelMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChannelMessageInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class GetChannelMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChannelMessageOutput, context: context)
        ChannelMessage.validate!(input[:channel_message], context: "#{context}[:channel_message]") unless input[:channel_message].nil?
      end
    end

    class GetEventsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventsConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
      end
    end

    class GetEventsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventsConfigurationOutput, context: context)
        EventsConfiguration.validate!(input[:events_configuration], context: "#{context}[:events_configuration]") unless input[:events_configuration].nil?
      end
    end

    class GetGlobalSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGlobalSettingsInput, context: context)
      end
    end

    class GetGlobalSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGlobalSettingsOutput, context: context)
        BusinessCallingSettings.validate!(input[:business_calling], context: "#{context}[:business_calling]") unless input[:business_calling].nil?
        VoiceConnectorSettings.validate!(input[:voice_connector], context: "#{context}[:voice_connector]") unless input[:voice_connector].nil?
      end
    end

    class GetMediaCapturePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMediaCapturePipelineInput, context: context)
        Hearth::Validator.validate!(input[:media_pipeline_id], ::String, context: "#{context}[:media_pipeline_id]")
      end
    end

    class GetMediaCapturePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMediaCapturePipelineOutput, context: context)
        MediaCapturePipeline.validate!(input[:media_capture_pipeline], context: "#{context}[:media_capture_pipeline]") unless input[:media_capture_pipeline].nil?
      end
    end

    class GetMeetingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMeetingInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
      end
    end

    class GetMeetingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMeetingOutput, context: context)
        Meeting.validate!(input[:meeting], context: "#{context}[:meeting]") unless input[:meeting].nil?
      end
    end

    class GetMessagingSessionEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMessagingSessionEndpointInput, context: context)
      end
    end

    class GetMessagingSessionEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMessagingSessionEndpointOutput, context: context)
        MessagingSessionEndpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
      end
    end

    class GetPhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPhoneNumberInput, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
      end
    end

    class GetPhoneNumberOrderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPhoneNumberOrderInput, context: context)
        Hearth::Validator.validate!(input[:phone_number_order_id], ::String, context: "#{context}[:phone_number_order_id]")
      end
    end

    class GetPhoneNumberOrderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPhoneNumberOrderOutput, context: context)
        PhoneNumberOrder.validate!(input[:phone_number_order], context: "#{context}[:phone_number_order]") unless input[:phone_number_order].nil?
      end
    end

    class GetPhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPhoneNumberOutput, context: context)
        PhoneNumber.validate!(input[:phone_number], context: "#{context}[:phone_number]") unless input[:phone_number].nil?
      end
    end

    class GetPhoneNumberSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPhoneNumberSettingsInput, context: context)
      end
    end

    class GetPhoneNumberSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPhoneNumberSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:calling_name], ::String, context: "#{context}[:calling_name]")
        Hearth::Validator.validate!(input[:calling_name_updated_timestamp], ::Time, context: "#{context}[:calling_name_updated_timestamp]")
      end
    end

    class GetProxySessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProxySessionInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        Hearth::Validator.validate!(input[:proxy_session_id], ::String, context: "#{context}[:proxy_session_id]")
      end
    end

    class GetProxySessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProxySessionOutput, context: context)
        ProxySession.validate!(input[:proxy_session], context: "#{context}[:proxy_session]") unless input[:proxy_session].nil?
      end
    end

    class GetRetentionSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRetentionSettingsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class GetRetentionSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRetentionSettingsOutput, context: context)
        RetentionSettings.validate!(input[:retention_settings], context: "#{context}[:retention_settings]") unless input[:retention_settings].nil?
        Hearth::Validator.validate!(input[:initiate_deletion_timestamp], ::Time, context: "#{context}[:initiate_deletion_timestamp]")
      end
    end

    class GetRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRoomInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:room_id], ::String, context: "#{context}[:room_id]")
      end
    end

    class GetRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRoomOutput, context: context)
        Room.validate!(input[:room], context: "#{context}[:room]") unless input[:room].nil?
      end
    end

    class GetSipMediaApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSipMediaApplicationInput, context: context)
        Hearth::Validator.validate!(input[:sip_media_application_id], ::String, context: "#{context}[:sip_media_application_id]")
      end
    end

    class GetSipMediaApplicationLoggingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSipMediaApplicationLoggingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:sip_media_application_id], ::String, context: "#{context}[:sip_media_application_id]")
      end
    end

    class GetSipMediaApplicationLoggingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSipMediaApplicationLoggingConfigurationOutput, context: context)
        SipMediaApplicationLoggingConfiguration.validate!(input[:sip_media_application_logging_configuration], context: "#{context}[:sip_media_application_logging_configuration]") unless input[:sip_media_application_logging_configuration].nil?
      end
    end

    class GetSipMediaApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSipMediaApplicationOutput, context: context)
        SipMediaApplication.validate!(input[:sip_media_application], context: "#{context}[:sip_media_application]") unless input[:sip_media_application].nil?
      end
    end

    class GetSipRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSipRuleInput, context: context)
        Hearth::Validator.validate!(input[:sip_rule_id], ::String, context: "#{context}[:sip_rule_id]")
      end
    end

    class GetSipRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSipRuleOutput, context: context)
        SipRule.validate!(input[:sip_rule], context: "#{context}[:sip_rule]") unless input[:sip_rule].nil?
      end
    end

    class GetUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class GetUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserOutput, context: context)
        User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class GetUserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class GetUserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserSettingsOutput, context: context)
        UserSettings.validate!(input[:user_settings], context: "#{context}[:user_settings]") unless input[:user_settings].nil?
      end
    end

    class GetVoiceConnectorEmergencyCallingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorEmergencyCallingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
      end
    end

    class GetVoiceConnectorEmergencyCallingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorEmergencyCallingConfigurationOutput, context: context)
        EmergencyCallingConfiguration.validate!(input[:emergency_calling_configuration], context: "#{context}[:emergency_calling_configuration]") unless input[:emergency_calling_configuration].nil?
      end
    end

    class GetVoiceConnectorGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorGroupInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_group_id], ::String, context: "#{context}[:voice_connector_group_id]")
      end
    end

    class GetVoiceConnectorGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorGroupOutput, context: context)
        VoiceConnectorGroup.validate!(input[:voice_connector_group], context: "#{context}[:voice_connector_group]") unless input[:voice_connector_group].nil?
      end
    end

    class GetVoiceConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
      end
    end

    class GetVoiceConnectorLoggingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorLoggingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
      end
    end

    class GetVoiceConnectorLoggingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorLoggingConfigurationOutput, context: context)
        LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
      end
    end

    class GetVoiceConnectorOriginationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorOriginationInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
      end
    end

    class GetVoiceConnectorOriginationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorOriginationOutput, context: context)
        Origination.validate!(input[:origination], context: "#{context}[:origination]") unless input[:origination].nil?
      end
    end

    class GetVoiceConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorOutput, context: context)
        VoiceConnector.validate!(input[:voice_connector], context: "#{context}[:voice_connector]") unless input[:voice_connector].nil?
      end
    end

    class GetVoiceConnectorProxyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorProxyInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
      end
    end

    class GetVoiceConnectorProxyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorProxyOutput, context: context)
        Proxy.validate!(input[:proxy], context: "#{context}[:proxy]") unless input[:proxy].nil?
      end
    end

    class GetVoiceConnectorStreamingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorStreamingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
      end
    end

    class GetVoiceConnectorStreamingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorStreamingConfigurationOutput, context: context)
        StreamingConfiguration.validate!(input[:streaming_configuration], context: "#{context}[:streaming_configuration]") unless input[:streaming_configuration].nil?
      end
    end

    class GetVoiceConnectorTerminationHealthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorTerminationHealthInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
      end
    end

    class GetVoiceConnectorTerminationHealthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorTerminationHealthOutput, context: context)
        TerminationHealth.validate!(input[:termination_health], context: "#{context}[:termination_health]") unless input[:termination_health].nil?
      end
    end

    class GetVoiceConnectorTerminationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorTerminationInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
      end
    end

    class GetVoiceConnectorTerminationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVoiceConnectorTerminationOutput, context: context)
        Termination.validate!(input[:termination], context: "#{context}[:termination]") unless input[:termination].nil?
      end
    end

    class Identity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Identity, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class Invite
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Invite, context: context)
        Hearth::Validator.validate!(input[:invite_id], ::String, context: "#{context}[:invite_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:email_status], ::String, context: "#{context}[:email_status]")
      end
    end

    class InviteList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Invite.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InviteUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InviteUsersInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        UserEmailList.validate!(input[:user_email_list], context: "#{context}[:user_email_list]") unless input[:user_email_list].nil?
        Hearth::Validator.validate!(input[:user_type], ::String, context: "#{context}[:user_type]")
      end
    end

    class InviteUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InviteUsersOutput, context: context)
        InviteList.validate!(input[:invites], context: "#{context}[:invites]") unless input[:invites].nil?
      end
    end

    class LicenseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListAccountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:user_email], ::String, context: "#{context}[:user_email]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAccountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountsOutput, context: context)
        AccountList.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppInstanceAdminsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppInstanceAdminsInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppInstanceAdminsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppInstanceAdminsOutput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        AppInstanceAdminList.validate!(input[:app_instance_admins], context: "#{context}[:app_instance_admins]") unless input[:app_instance_admins].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppInstanceUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppInstanceUsersInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppInstanceUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppInstanceUsersOutput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        AppInstanceUserList.validate!(input[:app_instance_users], context: "#{context}[:app_instance_users]") unless input[:app_instance_users].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppInstancesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppInstancesOutput, context: context)
        AppInstanceList.validate!(input[:app_instances], context: "#{context}[:app_instances]") unless input[:app_instances].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAttendeeTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttendeeTagsInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        Hearth::Validator.validate!(input[:attendee_id], ::String, context: "#{context}[:attendee_id]")
      end
    end

    class ListAttendeeTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttendeeTagsOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListAttendeesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttendeesInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAttendeesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttendeesOutput, context: context)
        AttendeeList.validate!(input[:attendees], context: "#{context}[:attendees]") unless input[:attendees].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBotsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBotsOutput, context: context)
        BotList.validate!(input[:bots], context: "#{context}[:bots]") unless input[:bots].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListChannelBansInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelBansInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class ListChannelBansOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelBansOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ChannelBanSummaryList.validate!(input[:channel_bans], context: "#{context}[:channel_bans]") unless input[:channel_bans].nil?
      end
    end

    class ListChannelMembershipsForAppInstanceUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelMembershipsForAppInstanceUserInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class ListChannelMembershipsForAppInstanceUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelMembershipsForAppInstanceUserOutput, context: context)
        ChannelMembershipForAppInstanceUserSummaryList.validate!(input[:channel_memberships], context: "#{context}[:channel_memberships]") unless input[:channel_memberships].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListChannelMembershipsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelMembershipsInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class ListChannelMembershipsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelMembershipsOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        ChannelMembershipSummaryList.validate!(input[:channel_memberships], context: "#{context}[:channel_memberships]") unless input[:channel_memberships].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListChannelMessagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelMessagesInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:not_before], ::Time, context: "#{context}[:not_before]")
        Hearth::Validator.validate!(input[:not_after], ::Time, context: "#{context}[:not_after]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class ListChannelMessagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelMessagesOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ChannelMessageSummaryList.validate!(input[:channel_messages], context: "#{context}[:channel_messages]") unless input[:channel_messages].nil?
      end
    end

    class ListChannelModeratorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelModeratorsInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class ListChannelModeratorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelModeratorsOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ChannelModeratorSummaryList.validate!(input[:channel_moderators], context: "#{context}[:channel_moderators]") unless input[:channel_moderators].nil?
      end
    end

    class ListChannelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelsInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:privacy], ::String, context: "#{context}[:privacy]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class ListChannelsModeratedByAppInstanceUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelsModeratedByAppInstanceUserInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class ListChannelsModeratedByAppInstanceUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelsModeratedByAppInstanceUserOutput, context: context)
        ChannelModeratedByAppInstanceUserSummaryList.validate!(input[:channels], context: "#{context}[:channels]") unless input[:channels].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListChannelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelsOutput, context: context)
        ChannelSummaryList.validate!(input[:channels], context: "#{context}[:channels]") unless input[:channels].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMediaCapturePipelinesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMediaCapturePipelinesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMediaCapturePipelinesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMediaCapturePipelinesOutput, context: context)
        MediaCapturePipelineList.validate!(input[:media_capture_pipelines], context: "#{context}[:media_capture_pipelines]") unless input[:media_capture_pipelines].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMeetingTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMeetingTagsInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
      end
    end

    class ListMeetingTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMeetingTagsOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListMeetingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMeetingsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMeetingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMeetingsOutput, context: context)
        MeetingList.validate!(input[:meetings], context: "#{context}[:meetings]") unless input[:meetings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPhoneNumberOrdersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPhoneNumberOrdersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPhoneNumberOrdersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPhoneNumberOrdersOutput, context: context)
        PhoneNumberOrderList.validate!(input[:phone_number_orders], context: "#{context}[:phone_number_orders]") unless input[:phone_number_orders].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPhoneNumbersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPhoneNumbersInput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:product_type], ::String, context: "#{context}[:product_type]")
        Hearth::Validator.validate!(input[:filter_name], ::String, context: "#{context}[:filter_name]")
        Hearth::Validator.validate!(input[:filter_value], ::String, context: "#{context}[:filter_value]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPhoneNumbersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPhoneNumbersOutput, context: context)
        PhoneNumberList.validate!(input[:phone_numbers], context: "#{context}[:phone_numbers]") unless input[:phone_numbers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProxySessionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProxySessionsInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListProxySessionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProxySessionsOutput, context: context)
        ProxySessions.validate!(input[:proxy_sessions], context: "#{context}[:proxy_sessions]") unless input[:proxy_sessions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRoomMembershipsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoomMembershipsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:room_id], ::String, context: "#{context}[:room_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRoomMembershipsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoomMembershipsOutput, context: context)
        RoomMembershipList.validate!(input[:room_memberships], context: "#{context}[:room_memberships]") unless input[:room_memberships].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRoomsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoomsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRoomsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoomsOutput, context: context)
        RoomList.validate!(input[:rooms], context: "#{context}[:rooms]") unless input[:rooms].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSipMediaApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSipMediaApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSipMediaApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSipMediaApplicationsOutput, context: context)
        SipMediaApplicationList.validate!(input[:sip_media_applications], context: "#{context}[:sip_media_applications]") unless input[:sip_media_applications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSipRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSipRulesInput, context: context)
        Hearth::Validator.validate!(input[:sip_media_application_id], ::String, context: "#{context}[:sip_media_application_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSipRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSipRulesOutput, context: context)
        SipRuleList.validate!(input[:sip_rules], context: "#{context}[:sip_rules]") unless input[:sip_rules].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSupportedPhoneNumberCountriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSupportedPhoneNumberCountriesInput, context: context)
        Hearth::Validator.validate!(input[:product_type], ::String, context: "#{context}[:product_type]")
      end
    end

    class ListSupportedPhoneNumberCountriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSupportedPhoneNumberCountriesOutput, context: context)
        PhoneNumberCountriesList.validate!(input[:phone_number_countries], context: "#{context}[:phone_number_countries]") unless input[:phone_number_countries].nil?
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
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:user_email], ::String, context: "#{context}[:user_email]")
        Hearth::Validator.validate!(input[:user_type], ::String, context: "#{context}[:user_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersOutput, context: context)
        UserList.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListVoiceConnectorGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVoiceConnectorGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListVoiceConnectorGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVoiceConnectorGroupsOutput, context: context)
        VoiceConnectorGroupList.validate!(input[:voice_connector_groups], context: "#{context}[:voice_connector_groups]") unless input[:voice_connector_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListVoiceConnectorTerminationCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVoiceConnectorTerminationCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
      end
    end

    class ListVoiceConnectorTerminationCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVoiceConnectorTerminationCredentialsOutput, context: context)
        SensitiveStringList.validate!(input[:usernames], context: "#{context}[:usernames]") unless input[:usernames].nil?
      end
    end

    class ListVoiceConnectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVoiceConnectorsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListVoiceConnectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVoiceConnectorsOutput, context: context)
        VoiceConnectorList.validate!(input[:voice_connectors], context: "#{context}[:voice_connectors]") unless input[:voice_connectors].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LoggingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingConfiguration, context: context)
        Hearth::Validator.validate!(input[:enable_sip_logs], ::TrueClass, ::FalseClass, context: "#{context}[:enable_sip_logs]")
        Hearth::Validator.validate!(input[:enable_media_metric_logs], ::TrueClass, ::FalseClass, context: "#{context}[:enable_media_metric_logs]")
      end
    end

    class LogoutUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogoutUserInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class LogoutUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogoutUserOutput, context: context)
      end
    end

    class MediaCapturePipeline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaCapturePipeline, context: context)
        Hearth::Validator.validate!(input[:media_pipeline_id], ::String, context: "#{context}[:media_pipeline_id]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:sink_type], ::String, context: "#{context}[:sink_type]")
        Hearth::Validator.validate!(input[:sink_arn], ::String, context: "#{context}[:sink_arn]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
        ChimeSdkMeetingConfiguration.validate!(input[:chime_sdk_meeting_configuration], context: "#{context}[:chime_sdk_meeting_configuration]") unless input[:chime_sdk_meeting_configuration].nil?
      end
    end

    class MediaCapturePipelineList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MediaCapturePipeline.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MediaPlacement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MediaPlacement, context: context)
        Hearth::Validator.validate!(input[:audio_host_url], ::String, context: "#{context}[:audio_host_url]")
        Hearth::Validator.validate!(input[:audio_fallback_url], ::String, context: "#{context}[:audio_fallback_url]")
        Hearth::Validator.validate!(input[:screen_data_url], ::String, context: "#{context}[:screen_data_url]")
        Hearth::Validator.validate!(input[:screen_sharing_url], ::String, context: "#{context}[:screen_sharing_url]")
        Hearth::Validator.validate!(input[:screen_viewing_url], ::String, context: "#{context}[:screen_viewing_url]")
        Hearth::Validator.validate!(input[:signaling_url], ::String, context: "#{context}[:signaling_url]")
        Hearth::Validator.validate!(input[:turn_control_url], ::String, context: "#{context}[:turn_control_url]")
        Hearth::Validator.validate!(input[:event_ingestion_url], ::String, context: "#{context}[:event_ingestion_url]")
      end
    end

    class Meeting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Meeting, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        Hearth::Validator.validate!(input[:external_meeting_id], ::String, context: "#{context}[:external_meeting_id]")
        MediaPlacement.validate!(input[:media_placement], context: "#{context}[:media_placement]") unless input[:media_placement].nil?
        Hearth::Validator.validate!(input[:media_region], ::String, context: "#{context}[:media_region]")
      end
    end

    class MeetingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Meeting.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MeetingNotificationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MeetingNotificationConfiguration, context: context)
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:sqs_queue_arn], ::String, context: "#{context}[:sqs_queue_arn]")
      end
    end

    class MeetingTagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MeetingTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Member
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Member, context: context)
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        Hearth::Validator.validate!(input[:member_type], ::String, context: "#{context}[:member_type]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:full_name], ::String, context: "#{context}[:full_name]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class MemberArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MemberError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberError, context: context)
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class MemberErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MemberError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Members
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Identity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MembershipItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MembershipItem, context: context)
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
      end
    end

    class MembershipItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MembershipItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MessagingSessionEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessagingSessionEndpoint, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class NonEmptyStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrderedPhoneNumber
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrderedPhoneNumber, context: context)
        Hearth::Validator.validate!(input[:e164_phone_number], ::String, context: "#{context}[:e164_phone_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class OrderedPhoneNumberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OrderedPhoneNumber.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Origination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Origination, context: context)
        OriginationRouteList.validate!(input[:routes], context: "#{context}[:routes]") unless input[:routes].nil?
        Hearth::Validator.validate!(input[:disabled], ::TrueClass, ::FalseClass, context: "#{context}[:disabled]")
      end
    end

    class OriginationRoute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginationRoute, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:weight], ::Integer, context: "#{context}[:weight]")
      end
    end

    class OriginationRouteList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OriginationRoute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Participant
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Participant, context: context)
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:proxy_phone_number], ::String, context: "#{context}[:proxy_phone_number]")
      end
    end

    class ParticipantPhoneNumberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Participants
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Participant.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PhoneNumber
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhoneNumber, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:e164_phone_number], ::String, context: "#{context}[:e164_phone_number]")
        Hearth::Validator.validate!(input[:country], ::String, context: "#{context}[:country]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:product_type], ::String, context: "#{context}[:product_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        PhoneNumberCapabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        PhoneNumberAssociationList.validate!(input[:associations], context: "#{context}[:associations]") unless input[:associations].nil?
        Hearth::Validator.validate!(input[:calling_name], ::String, context: "#{context}[:calling_name]")
        Hearth::Validator.validate!(input[:calling_name_status], ::String, context: "#{context}[:calling_name_status]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
        Hearth::Validator.validate!(input[:deletion_timestamp], ::Time, context: "#{context}[:deletion_timestamp]")
      end
    end

    class PhoneNumberAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhoneNumberAssociation, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:associated_timestamp], ::Time, context: "#{context}[:associated_timestamp]")
      end
    end

    class PhoneNumberAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PhoneNumberAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PhoneNumberCapabilities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhoneNumberCapabilities, context: context)
        Hearth::Validator.validate!(input[:inbound_call], ::TrueClass, ::FalseClass, context: "#{context}[:inbound_call]")
        Hearth::Validator.validate!(input[:outbound_call], ::TrueClass, ::FalseClass, context: "#{context}[:outbound_call]")
        Hearth::Validator.validate!(input[:inbound_sms], ::TrueClass, ::FalseClass, context: "#{context}[:inbound_sms]")
        Hearth::Validator.validate!(input[:outbound_sms], ::TrueClass, ::FalseClass, context: "#{context}[:outbound_sms]")
        Hearth::Validator.validate!(input[:inbound_mms], ::TrueClass, ::FalseClass, context: "#{context}[:inbound_mms]")
        Hearth::Validator.validate!(input[:outbound_mms], ::TrueClass, ::FalseClass, context: "#{context}[:outbound_mms]")
      end
    end

    class PhoneNumberCountriesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PhoneNumberCountry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PhoneNumberCountry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhoneNumberCountry, context: context)
        Hearth::Validator.validate!(input[:country_code], ::String, context: "#{context}[:country_code]")
        PhoneNumberTypeList.validate!(input[:supported_phone_number_types], context: "#{context}[:supported_phone_number_types]") unless input[:supported_phone_number_types].nil?
      end
    end

    class PhoneNumberError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhoneNumberError, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class PhoneNumberErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PhoneNumberError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PhoneNumberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PhoneNumber.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PhoneNumberOrder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhoneNumberOrder, context: context)
        Hearth::Validator.validate!(input[:phone_number_order_id], ::String, context: "#{context}[:phone_number_order_id]")
        Hearth::Validator.validate!(input[:product_type], ::String, context: "#{context}[:product_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        OrderedPhoneNumberList.validate!(input[:ordered_phone_numbers], context: "#{context}[:ordered_phone_numbers]") unless input[:ordered_phone_numbers].nil?
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
      end
    end

    class PhoneNumberOrderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PhoneNumberOrder.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PhoneNumberTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Proxy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Proxy, context: context)
        Hearth::Validator.validate!(input[:default_session_expiry_minutes], ::Integer, context: "#{context}[:default_session_expiry_minutes]")
        Hearth::Validator.validate!(input[:disabled], ::TrueClass, ::FalseClass, context: "#{context}[:disabled]")
        Hearth::Validator.validate!(input[:fall_back_phone_number], ::String, context: "#{context}[:fall_back_phone_number]")
        StringList.validate!(input[:phone_number_countries], context: "#{context}[:phone_number_countries]") unless input[:phone_number_countries].nil?
      end
    end

    class ProxySession
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProxySession, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        Hearth::Validator.validate!(input[:proxy_session_id], ::String, context: "#{context}[:proxy_session_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:expiry_minutes], ::Integer, context: "#{context}[:expiry_minutes]")
        CapabilityList.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
        Hearth::Validator.validate!(input[:ended_timestamp], ::Time, context: "#{context}[:ended_timestamp]")
        Participants.validate!(input[:participants], context: "#{context}[:participants]") unless input[:participants].nil?
        Hearth::Validator.validate!(input[:number_selection_behavior], ::String, context: "#{context}[:number_selection_behavior]")
        Hearth::Validator.validate!(input[:geo_match_level], ::String, context: "#{context}[:geo_match_level]")
        GeoMatchParams.validate!(input[:geo_match_params], context: "#{context}[:geo_match_params]") unless input[:geo_match_params].nil?
      end
    end

    class ProxySessions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProxySession.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutAppInstanceRetentionSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAppInstanceRetentionSettingsInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        AppInstanceRetentionSettings.validate!(input[:app_instance_retention_settings], context: "#{context}[:app_instance_retention_settings]") unless input[:app_instance_retention_settings].nil?
      end
    end

    class PutAppInstanceRetentionSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAppInstanceRetentionSettingsOutput, context: context)
        AppInstanceRetentionSettings.validate!(input[:app_instance_retention_settings], context: "#{context}[:app_instance_retention_settings]") unless input[:app_instance_retention_settings].nil?
        Hearth::Validator.validate!(input[:initiate_deletion_timestamp], ::Time, context: "#{context}[:initiate_deletion_timestamp]")
      end
    end

    class PutAppInstanceStreamingConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAppInstanceStreamingConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        AppInstanceStreamingConfigurationList.validate!(input[:app_instance_streaming_configurations], context: "#{context}[:app_instance_streaming_configurations]") unless input[:app_instance_streaming_configurations].nil?
      end
    end

    class PutAppInstanceStreamingConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAppInstanceStreamingConfigurationsOutput, context: context)
        AppInstanceStreamingConfigurationList.validate!(input[:app_instance_streaming_configurations], context: "#{context}[:app_instance_streaming_configurations]") unless input[:app_instance_streaming_configurations].nil?
      end
    end

    class PutEventsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventsConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:outbound_events_https_endpoint], ::String, context: "#{context}[:outbound_events_https_endpoint]")
        Hearth::Validator.validate!(input[:lambda_function_arn], ::String, context: "#{context}[:lambda_function_arn]")
      end
    end

    class PutEventsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventsConfigurationOutput, context: context)
        EventsConfiguration.validate!(input[:events_configuration], context: "#{context}[:events_configuration]") unless input[:events_configuration].nil?
      end
    end

    class PutRetentionSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRetentionSettingsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        RetentionSettings.validate!(input[:retention_settings], context: "#{context}[:retention_settings]") unless input[:retention_settings].nil?
      end
    end

    class PutRetentionSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRetentionSettingsOutput, context: context)
        RetentionSettings.validate!(input[:retention_settings], context: "#{context}[:retention_settings]") unless input[:retention_settings].nil?
        Hearth::Validator.validate!(input[:initiate_deletion_timestamp], ::Time, context: "#{context}[:initiate_deletion_timestamp]")
      end
    end

    class PutSipMediaApplicationLoggingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSipMediaApplicationLoggingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:sip_media_application_id], ::String, context: "#{context}[:sip_media_application_id]")
        SipMediaApplicationLoggingConfiguration.validate!(input[:sip_media_application_logging_configuration], context: "#{context}[:sip_media_application_logging_configuration]") unless input[:sip_media_application_logging_configuration].nil?
      end
    end

    class PutSipMediaApplicationLoggingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSipMediaApplicationLoggingConfigurationOutput, context: context)
        SipMediaApplicationLoggingConfiguration.validate!(input[:sip_media_application_logging_configuration], context: "#{context}[:sip_media_application_logging_configuration]") unless input[:sip_media_application_logging_configuration].nil?
      end
    end

    class PutVoiceConnectorEmergencyCallingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVoiceConnectorEmergencyCallingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        EmergencyCallingConfiguration.validate!(input[:emergency_calling_configuration], context: "#{context}[:emergency_calling_configuration]") unless input[:emergency_calling_configuration].nil?
      end
    end

    class PutVoiceConnectorEmergencyCallingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVoiceConnectorEmergencyCallingConfigurationOutput, context: context)
        EmergencyCallingConfiguration.validate!(input[:emergency_calling_configuration], context: "#{context}[:emergency_calling_configuration]") unless input[:emergency_calling_configuration].nil?
      end
    end

    class PutVoiceConnectorLoggingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVoiceConnectorLoggingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
      end
    end

    class PutVoiceConnectorLoggingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVoiceConnectorLoggingConfigurationOutput, context: context)
        LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
      end
    end

    class PutVoiceConnectorOriginationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVoiceConnectorOriginationInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        Origination.validate!(input[:origination], context: "#{context}[:origination]") unless input[:origination].nil?
      end
    end

    class PutVoiceConnectorOriginationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVoiceConnectorOriginationOutput, context: context)
        Origination.validate!(input[:origination], context: "#{context}[:origination]") unless input[:origination].nil?
      end
    end

    class PutVoiceConnectorProxyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVoiceConnectorProxyInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        Hearth::Validator.validate!(input[:default_session_expiry_minutes], ::Integer, context: "#{context}[:default_session_expiry_minutes]")
        CountryList.validate!(input[:phone_number_pool_countries], context: "#{context}[:phone_number_pool_countries]") unless input[:phone_number_pool_countries].nil?
        Hearth::Validator.validate!(input[:fall_back_phone_number], ::String, context: "#{context}[:fall_back_phone_number]")
        Hearth::Validator.validate!(input[:disabled], ::TrueClass, ::FalseClass, context: "#{context}[:disabled]")
      end
    end

    class PutVoiceConnectorProxyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVoiceConnectorProxyOutput, context: context)
        Proxy.validate!(input[:proxy], context: "#{context}[:proxy]") unless input[:proxy].nil?
      end
    end

    class PutVoiceConnectorStreamingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVoiceConnectorStreamingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        StreamingConfiguration.validate!(input[:streaming_configuration], context: "#{context}[:streaming_configuration]") unless input[:streaming_configuration].nil?
      end
    end

    class PutVoiceConnectorStreamingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVoiceConnectorStreamingConfigurationOutput, context: context)
        StreamingConfiguration.validate!(input[:streaming_configuration], context: "#{context}[:streaming_configuration]") unless input[:streaming_configuration].nil?
      end
    end

    class PutVoiceConnectorTerminationCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVoiceConnectorTerminationCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        CredentialList.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
      end
    end

    class PutVoiceConnectorTerminationCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVoiceConnectorTerminationCredentialsOutput, context: context)
      end
    end

    class PutVoiceConnectorTerminationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVoiceConnectorTerminationInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        Termination.validate!(input[:termination], context: "#{context}[:termination]") unless input[:termination].nil?
      end
    end

    class PutVoiceConnectorTerminationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutVoiceConnectorTerminationOutput, context: context)
        Termination.validate!(input[:termination], context: "#{context}[:termination]") unless input[:termination].nil?
      end
    end

    class RedactChannelMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedactChannelMessageInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class RedactChannelMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedactChannelMessageOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class RedactConversationMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedactConversationMessageInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:conversation_id], ::String, context: "#{context}[:conversation_id]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class RedactConversationMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedactConversationMessageOutput, context: context)
      end
    end

    class RedactRoomMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedactRoomMessageInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:room_id], ::String, context: "#{context}[:room_id]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class RedactRoomMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedactRoomMessageOutput, context: context)
      end
    end

    class RegenerateSecurityTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegenerateSecurityTokenInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
      end
    end

    class RegenerateSecurityTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegenerateSecurityTokenOutput, context: context)
        Bot.validate!(input[:bot], context: "#{context}[:bot]") unless input[:bot].nil?
      end
    end

    class ResetPersonalPINInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetPersonalPINInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class ResetPersonalPINOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetPersonalPINOutput, context: context)
        User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class ResourceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RestorePhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestorePhoneNumberInput, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
      end
    end

    class RestorePhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestorePhoneNumberOutput, context: context)
        PhoneNumber.validate!(input[:phone_number], context: "#{context}[:phone_number]") unless input[:phone_number].nil?
      end
    end

    class RetentionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetentionSettings, context: context)
        RoomRetentionSettings.validate!(input[:room_retention_settings], context: "#{context}[:room_retention_settings]") unless input[:room_retention_settings].nil?
        ConversationRetentionSettings.validate!(input[:conversation_retention_settings], context: "#{context}[:conversation_retention_settings]") unless input[:conversation_retention_settings].nil?
      end
    end

    class Room
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Room, context: context)
        Hearth::Validator.validate!(input[:room_id], ::String, context: "#{context}[:room_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
      end
    end

    class RoomList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Room.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RoomMembership
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoomMembership, context: context)
        Hearth::Validator.validate!(input[:room_id], ::String, context: "#{context}[:room_id]")
        Member.validate!(input[:member], context: "#{context}[:member]") unless input[:member].nil?
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:invited_by], ::String, context: "#{context}[:invited_by]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
      end
    end

    class RoomMembershipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RoomMembership.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RoomRetentionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoomRetentionSettings, context: context)
        Hearth::Validator.validate!(input[:retention_days], ::Integer, context: "#{context}[:retention_days]")
      end
    end

    class SMAUpdateCallArgumentsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class SearchAvailablePhoneNumbersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchAvailablePhoneNumbersInput, context: context)
        Hearth::Validator.validate!(input[:area_code], ::String, context: "#{context}[:area_code]")
        Hearth::Validator.validate!(input[:city], ::String, context: "#{context}[:city]")
        Hearth::Validator.validate!(input[:country], ::String, context: "#{context}[:country]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:toll_free_prefix], ::String, context: "#{context}[:toll_free_prefix]")
        Hearth::Validator.validate!(input[:phone_number_type], ::String, context: "#{context}[:phone_number_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchAvailablePhoneNumbersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchAvailablePhoneNumbersOutput, context: context)
        E164PhoneNumberList.validate!(input[:e164_phone_numbers], context: "#{context}[:e164_phone_numbers]") unless input[:e164_phone_numbers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SelectedVideoStreams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelectedVideoStreams, context: context)
        AttendeeIdList.validate!(input[:attendee_ids], context: "#{context}[:attendee_ids]") unless input[:attendee_ids].nil?
        ExternalUserIdList.validate!(input[:external_user_ids], context: "#{context}[:external_user_ids]") unless input[:external_user_ids].nil?
      end
    end

    class SendChannelMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendChannelMessageInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:persistence], ::String, context: "#{context}[:persistence]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class SendChannelMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendChannelMessageOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class SensitiveStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceFailureException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SigninDelegateGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SigninDelegateGroup, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
      end
    end

    class SigninDelegateGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SigninDelegateGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SipHeadersMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class SipMediaApplication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SipMediaApplication, context: context)
        Hearth::Validator.validate!(input[:sip_media_application_id], ::String, context: "#{context}[:sip_media_application_id]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SipMediaApplicationEndpointList.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
      end
    end

    class SipMediaApplicationCall
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SipMediaApplicationCall, context: context)
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
      end
    end

    class SipMediaApplicationEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SipMediaApplicationEndpoint, context: context)
        Hearth::Validator.validate!(input[:lambda_arn], ::String, context: "#{context}[:lambda_arn]")
      end
    end

    class SipMediaApplicationEndpointList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SipMediaApplicationEndpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SipMediaApplicationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SipMediaApplication.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SipMediaApplicationLoggingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SipMediaApplicationLoggingConfiguration, context: context)
        Hearth::Validator.validate!(input[:enable_sip_media_application_message_logs], ::TrueClass, ::FalseClass, context: "#{context}[:enable_sip_media_application_message_logs]")
      end
    end

    class SipRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SipRule, context: context)
        Hearth::Validator.validate!(input[:sip_rule_id], ::String, context: "#{context}[:sip_rule_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:disabled], ::TrueClass, ::FalseClass, context: "#{context}[:disabled]")
        Hearth::Validator.validate!(input[:trigger_type], ::String, context: "#{context}[:trigger_type]")
        Hearth::Validator.validate!(input[:trigger_value], ::String, context: "#{context}[:trigger_value]")
        SipRuleTargetApplicationList.validate!(input[:target_applications], context: "#{context}[:target_applications]") unless input[:target_applications].nil?
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
      end
    end

    class SipRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SipRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SipRuleTargetApplication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SipRuleTargetApplication, context: context)
        Hearth::Validator.validate!(input[:sip_media_application_id], ::String, context: "#{context}[:sip_media_application_id]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
      end
    end

    class SipRuleTargetApplicationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SipRuleTargetApplication.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SourceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceConfiguration, context: context)
        SelectedVideoStreams.validate!(input[:selected_video_streams], context: "#{context}[:selected_video_streams]") unless input[:selected_video_streams].nil?
      end
    end

    class StartMeetingTranscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMeetingTranscriptionInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        TranscriptionConfiguration.validate!(input[:transcription_configuration], context: "#{context}[:transcription_configuration]") unless input[:transcription_configuration].nil?
      end
    end

    class StartMeetingTranscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMeetingTranscriptionOutput, context: context)
      end
    end

    class StopMeetingTranscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopMeetingTranscriptionInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
      end
    end

    class StopMeetingTranscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopMeetingTranscriptionOutput, context: context)
      end
    end

    class StreamingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingConfiguration, context: context)
        Hearth::Validator.validate!(input[:data_retention_in_hours], ::Integer, context: "#{context}[:data_retention_in_hours]")
        Hearth::Validator.validate!(input[:disabled], ::TrueClass, ::FalseClass, context: "#{context}[:disabled]")
        StreamingNotificationTargetList.validate!(input[:streaming_notification_targets], context: "#{context}[:streaming_notification_targets]") unless input[:streaming_notification_targets].nil?
      end
    end

    class StreamingNotificationTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingNotificationTarget, context: context)
        Hearth::Validator.validate!(input[:notification_target], ::String, context: "#{context}[:notification_target]")
      end
    end

    class StreamingNotificationTargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StreamingNotificationTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
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

    class TagAttendeeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagAttendeeInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        Hearth::Validator.validate!(input[:attendee_id], ::String, context: "#{context}[:attendee_id]")
        AttendeeTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagAttendeeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagAttendeeOutput, context: context)
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
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagMeetingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagMeetingInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        MeetingTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagMeetingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagMeetingOutput, context: context)
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TelephonySettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TelephonySettings, context: context)
        Hearth::Validator.validate!(input[:inbound_calling], ::TrueClass, ::FalseClass, context: "#{context}[:inbound_calling]")
        Hearth::Validator.validate!(input[:outbound_calling], ::TrueClass, ::FalseClass, context: "#{context}[:outbound_calling]")
        Hearth::Validator.validate!(input[:sms], ::TrueClass, ::FalseClass, context: "#{context}[:sms]")
      end
    end

    class Termination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Termination, context: context)
        Hearth::Validator.validate!(input[:cps_limit], ::Integer, context: "#{context}[:cps_limit]")
        Hearth::Validator.validate!(input[:default_phone_number], ::String, context: "#{context}[:default_phone_number]")
        CallingRegionList.validate!(input[:calling_regions], context: "#{context}[:calling_regions]") unless input[:calling_regions].nil?
        StringList.validate!(input[:cidr_allowed_list], context: "#{context}[:cidr_allowed_list]") unless input[:cidr_allowed_list].nil?
        Hearth::Validator.validate!(input[:disabled], ::TrueClass, ::FalseClass, context: "#{context}[:disabled]")
      end
    end

    class TerminationHealth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminationHealth, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
      end
    end

    class ThrottledClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottledClientException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TranscriptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TranscriptionConfiguration, context: context)
        EngineTranscribeSettings.validate!(input[:engine_transcribe_settings], context: "#{context}[:engine_transcribe_settings]") unless input[:engine_transcribe_settings].nil?
        EngineTranscribeMedicalSettings.validate!(input[:engine_transcribe_medical_settings], context: "#{context}[:engine_transcribe_medical_settings]") unless input[:engine_transcribe_medical_settings].nil?
      end
    end

    class UnauthorizedClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedClientException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnprocessableEntityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnprocessableEntityException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagAttendeeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagAttendeeInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        Hearth::Validator.validate!(input[:attendee_id], ::String, context: "#{context}[:attendee_id]")
        AttendeeTagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagAttendeeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagAttendeeOutput, context: context)
      end
    end

    class UntagMeetingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagMeetingInput, context: context)
        Hearth::Validator.validate!(input[:meeting_id], ::String, context: "#{context}[:meeting_id]")
        MeetingTagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagMeetingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagMeetingOutput, context: context)
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:default_license], ::String, context: "#{context}[:default_license]")
      end
    end

    class UpdateAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountOutput, context: context)
        Account.validate!(input[:account], context: "#{context}[:account]") unless input[:account].nil?
      end
    end

    class UpdateAccountSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountSettingsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        AccountSettings.validate!(input[:account_settings], context: "#{context}[:account_settings]") unless input[:account_settings].nil?
      end
    end

    class UpdateAccountSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountSettingsOutput, context: context)
      end
    end

    class UpdateAppInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppInstanceInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
      end
    end

    class UpdateAppInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppInstanceOutput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
      end
    end

    class UpdateAppInstanceUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppInstanceUserInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
      end
    end

    class UpdateAppInstanceUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppInstanceUserOutput, context: context)
        Hearth::Validator.validate!(input[:app_instance_user_arn], ::String, context: "#{context}[:app_instance_user_arn]")
      end
    end

    class UpdateBotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBotInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:bot_id], ::String, context: "#{context}[:bot_id]")
        Hearth::Validator.validate!(input[:disabled], ::TrueClass, ::FalseClass, context: "#{context}[:disabled]")
      end
    end

    class UpdateBotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBotOutput, context: context)
        Bot.validate!(input[:bot], context: "#{context}[:bot]") unless input[:bot].nil?
      end
    end

    class UpdateChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class UpdateChannelMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelMessageInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class UpdateChannelMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelMessageOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
      end
    end

    class UpdateChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
      end
    end

    class UpdateChannelReadMarkerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelReadMarkerInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class UpdateChannelReadMarkerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelReadMarkerOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
      end
    end

    class UpdateGlobalSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGlobalSettingsInput, context: context)
        BusinessCallingSettings.validate!(input[:business_calling], context: "#{context}[:business_calling]") unless input[:business_calling].nil?
        VoiceConnectorSettings.validate!(input[:voice_connector], context: "#{context}[:voice_connector]") unless input[:voice_connector].nil?
      end
    end

    class UpdateGlobalSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGlobalSettingsOutput, context: context)
      end
    end

    class UpdatePhoneNumberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePhoneNumberInput, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:product_type], ::String, context: "#{context}[:product_type]")
        Hearth::Validator.validate!(input[:calling_name], ::String, context: "#{context}[:calling_name]")
      end
    end

    class UpdatePhoneNumberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePhoneNumberOutput, context: context)
        PhoneNumber.validate!(input[:phone_number], context: "#{context}[:phone_number]") unless input[:phone_number].nil?
      end
    end

    class UpdatePhoneNumberRequestItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePhoneNumberRequestItem, context: context)
        Hearth::Validator.validate!(input[:phone_number_id], ::String, context: "#{context}[:phone_number_id]")
        Hearth::Validator.validate!(input[:product_type], ::String, context: "#{context}[:product_type]")
        Hearth::Validator.validate!(input[:calling_name], ::String, context: "#{context}[:calling_name]")
      end
    end

    class UpdatePhoneNumberRequestItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UpdatePhoneNumberRequestItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdatePhoneNumberSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePhoneNumberSettingsInput, context: context)
        Hearth::Validator.validate!(input[:calling_name], ::String, context: "#{context}[:calling_name]")
      end
    end

    class UpdatePhoneNumberSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePhoneNumberSettingsOutput, context: context)
      end
    end

    class UpdateProxySessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProxySessionInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        Hearth::Validator.validate!(input[:proxy_session_id], ::String, context: "#{context}[:proxy_session_id]")
        CapabilityList.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        Hearth::Validator.validate!(input[:expiry_minutes], ::Integer, context: "#{context}[:expiry_minutes]")
      end
    end

    class UpdateProxySessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProxySessionOutput, context: context)
        ProxySession.validate!(input[:proxy_session], context: "#{context}[:proxy_session]") unless input[:proxy_session].nil?
      end
    end

    class UpdateRoomInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoomInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:room_id], ::String, context: "#{context}[:room_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateRoomMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoomMembershipInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:room_id], ::String, context: "#{context}[:room_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
      end
    end

    class UpdateRoomMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoomMembershipOutput, context: context)
        RoomMembership.validate!(input[:room_membership], context: "#{context}[:room_membership]") unless input[:room_membership].nil?
      end
    end

    class UpdateRoomOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoomOutput, context: context)
        Room.validate!(input[:room], context: "#{context}[:room]") unless input[:room].nil?
      end
    end

    class UpdateSipMediaApplicationCallInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSipMediaApplicationCallInput, context: context)
        Hearth::Validator.validate!(input[:sip_media_application_id], ::String, context: "#{context}[:sip_media_application_id]")
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        SMAUpdateCallArgumentsMap.validate!(input[:arguments], context: "#{context}[:arguments]") unless input[:arguments].nil?
      end
    end

    class UpdateSipMediaApplicationCallOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSipMediaApplicationCallOutput, context: context)
        SipMediaApplicationCall.validate!(input[:sip_media_application_call], context: "#{context}[:sip_media_application_call]") unless input[:sip_media_application_call].nil?
      end
    end

    class UpdateSipMediaApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSipMediaApplicationInput, context: context)
        Hearth::Validator.validate!(input[:sip_media_application_id], ::String, context: "#{context}[:sip_media_application_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SipMediaApplicationEndpointList.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
      end
    end

    class UpdateSipMediaApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSipMediaApplicationOutput, context: context)
        SipMediaApplication.validate!(input[:sip_media_application], context: "#{context}[:sip_media_application]") unless input[:sip_media_application].nil?
      end
    end

    class UpdateSipRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSipRuleInput, context: context)
        Hearth::Validator.validate!(input[:sip_rule_id], ::String, context: "#{context}[:sip_rule_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:disabled], ::TrueClass, ::FalseClass, context: "#{context}[:disabled]")
        SipRuleTargetApplicationList.validate!(input[:target_applications], context: "#{context}[:target_applications]") unless input[:target_applications].nil?
      end
    end

    class UpdateSipRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSipRuleOutput, context: context)
        SipRule.validate!(input[:sip_rule], context: "#{context}[:sip_rule]") unless input[:sip_rule].nil?
      end
    end

    class UpdateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:license_type], ::String, context: "#{context}[:license_type]")
        Hearth::Validator.validate!(input[:user_type], ::String, context: "#{context}[:user_type]")
        AlexaForBusinessMetadata.validate!(input[:alexa_for_business_metadata], context: "#{context}[:alexa_for_business_metadata]") unless input[:alexa_for_business_metadata].nil?
      end
    end

    class UpdateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserOutput, context: context)
        User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
      end
    end

    class UpdateUserRequestItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserRequestItem, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:license_type], ::String, context: "#{context}[:license_type]")
        Hearth::Validator.validate!(input[:user_type], ::String, context: "#{context}[:user_type]")
        AlexaForBusinessMetadata.validate!(input[:alexa_for_business_metadata], context: "#{context}[:alexa_for_business_metadata]") unless input[:alexa_for_business_metadata].nil?
      end
    end

    class UpdateUserRequestItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UpdateUserRequestItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateUserSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserSettingsInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        UserSettings.validate!(input[:user_settings], context: "#{context}[:user_settings]") unless input[:user_settings].nil?
      end
    end

    class UpdateUserSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserSettingsOutput, context: context)
      end
    end

    class UpdateVoiceConnectorGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVoiceConnectorGroupInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_group_id], ::String, context: "#{context}[:voice_connector_group_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        VoiceConnectorItemList.validate!(input[:voice_connector_items], context: "#{context}[:voice_connector_items]") unless input[:voice_connector_items].nil?
      end
    end

    class UpdateVoiceConnectorGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVoiceConnectorGroupOutput, context: context)
        VoiceConnectorGroup.validate!(input[:voice_connector_group], context: "#{context}[:voice_connector_group]") unless input[:voice_connector_group].nil?
      end
    end

    class UpdateVoiceConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVoiceConnectorInput, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:require_encryption], ::TrueClass, ::FalseClass, context: "#{context}[:require_encryption]")
      end
    end

    class UpdateVoiceConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVoiceConnectorOutput, context: context)
        VoiceConnector.validate!(input[:voice_connector], context: "#{context}[:voice_connector]") unless input[:voice_connector].nil?
      end
    end

    class User
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::User, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:primary_email], ::String, context: "#{context}[:primary_email]")
        Hearth::Validator.validate!(input[:primary_provisioned_number], ::String, context: "#{context}[:primary_provisioned_number]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:license_type], ::String, context: "#{context}[:license_type]")
        Hearth::Validator.validate!(input[:user_type], ::String, context: "#{context}[:user_type]")
        Hearth::Validator.validate!(input[:user_registration_status], ::String, context: "#{context}[:user_registration_status]")
        Hearth::Validator.validate!(input[:user_invitation_status], ::String, context: "#{context}[:user_invitation_status]")
        Hearth::Validator.validate!(input[:registered_on], ::Time, context: "#{context}[:registered_on]")
        Hearth::Validator.validate!(input[:invited_on], ::Time, context: "#{context}[:invited_on]")
        AlexaForBusinessMetadata.validate!(input[:alexa_for_business_metadata], context: "#{context}[:alexa_for_business_metadata]") unless input[:alexa_for_business_metadata].nil?
        Hearth::Validator.validate!(input[:personal_pin], ::String, context: "#{context}[:personal_pin]")
      end
    end

    class UserEmailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UserError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserError, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class UserErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UserList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          User.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserSettings, context: context)
        TelephonySettings.validate!(input[:telephony], context: "#{context}[:telephony]") unless input[:telephony].nil?
      end
    end

    class VideoArtifactsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VideoArtifactsConfiguration, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:mux_type], ::String, context: "#{context}[:mux_type]")
      end
    end

    class VoiceConnector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VoiceConnector, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:outbound_host_name], ::String, context: "#{context}[:outbound_host_name]")
        Hearth::Validator.validate!(input[:require_encryption], ::TrueClass, ::FalseClass, context: "#{context}[:require_encryption]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
        Hearth::Validator.validate!(input[:voice_connector_arn], ::String, context: "#{context}[:voice_connector_arn]")
      end
    end

    class VoiceConnectorGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VoiceConnectorGroup, context: context)
        Hearth::Validator.validate!(input[:voice_connector_group_id], ::String, context: "#{context}[:voice_connector_group_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        VoiceConnectorItemList.validate!(input[:voice_connector_items], context: "#{context}[:voice_connector_items]") unless input[:voice_connector_items].nil?
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:updated_timestamp], ::Time, context: "#{context}[:updated_timestamp]")
        Hearth::Validator.validate!(input[:voice_connector_group_arn], ::String, context: "#{context}[:voice_connector_group_arn]")
      end
    end

    class VoiceConnectorGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VoiceConnectorGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VoiceConnectorItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VoiceConnectorItem, context: context)
        Hearth::Validator.validate!(input[:voice_connector_id], ::String, context: "#{context}[:voice_connector_id]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
      end
    end

    class VoiceConnectorItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VoiceConnectorItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VoiceConnectorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VoiceConnector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VoiceConnectorSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VoiceConnectorSettings, context: context)
        Hearth::Validator.validate!(input[:cdr_bucket], ::String, context: "#{context}[:cdr_bucket]")
      end
    end

  end
end
