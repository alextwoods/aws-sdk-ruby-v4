# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Chime
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module Account
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Account, context: context)
        type = Types::Account.new
        type.aws_account_id = params[:aws_account_id]
        type.account_id = params[:account_id]
        type.name = params[:name]
        type.account_type = params[:account_type]
        type.created_timestamp = params[:created_timestamp]
        type.default_license = params[:default_license]
        type.supported_licenses = LicenseList.build(params[:supported_licenses], context: "#{context}[:supported_licenses]") unless params[:supported_licenses].nil?
        type.account_status = params[:account_status]
        type.signin_delegate_groups = SigninDelegateGroupList.build(params[:signin_delegate_groups], context: "#{context}[:signin_delegate_groups]") unless params[:signin_delegate_groups].nil?
        type
      end
    end

    module AccountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Account.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccountSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountSettings, context: context)
        type = Types::AccountSettings.new
        type.disable_remote_control = params[:disable_remote_control]
        type.enable_dial_out = params[:enable_dial_out]
        type
      end
    end

    module AlexaForBusinessMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlexaForBusinessMetadata, context: context)
        type = Types::AlexaForBusinessMetadata.new
        type.is_alexa_for_business_enabled = params[:is_alexa_for_business_enabled]
        type.alexa_for_business_room_arn = params[:alexa_for_business_room_arn]
        type
      end
    end

    module AppInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstance, context: context)
        type = Types::AppInstance.new
        type.app_instance_arn = params[:app_instance_arn]
        type.name = params[:name]
        type.metadata = params[:metadata]
        type.created_timestamp = params[:created_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type
      end
    end

    module AppInstanceAdmin
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceAdmin, context: context)
        type = Types::AppInstanceAdmin.new
        type.admin = Identity.build(params[:admin], context: "#{context}[:admin]") unless params[:admin].nil?
        type.app_instance_arn = params[:app_instance_arn]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module AppInstanceAdminList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppInstanceAdminSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppInstanceAdminSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceAdminSummary, context: context)
        type = Types::AppInstanceAdminSummary.new
        type.admin = Identity.build(params[:admin], context: "#{context}[:admin]") unless params[:admin].nil?
        type
      end
    end

    module AppInstanceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppInstanceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppInstanceRetentionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceRetentionSettings, context: context)
        type = Types::AppInstanceRetentionSettings.new
        type.channel_retention_settings = ChannelRetentionSettings.build(params[:channel_retention_settings], context: "#{context}[:channel_retention_settings]") unless params[:channel_retention_settings].nil?
        type
      end
    end

    module AppInstanceStreamingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceStreamingConfiguration, context: context)
        type = Types::AppInstanceStreamingConfiguration.new
        type.app_instance_data_type = params[:app_instance_data_type]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module AppInstanceStreamingConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppInstanceStreamingConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppInstanceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceSummary, context: context)
        type = Types::AppInstanceSummary.new
        type.app_instance_arn = params[:app_instance_arn]
        type.name = params[:name]
        type.metadata = params[:metadata]
        type
      end
    end

    module AppInstanceUser
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceUser, context: context)
        type = Types::AppInstanceUser.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.name = params[:name]
        type.created_timestamp = params[:created_timestamp]
        type.metadata = params[:metadata]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type
      end
    end

    module AppInstanceUserList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppInstanceUserSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppInstanceUserMembershipSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceUserMembershipSummary, context: context)
        type = Types::AppInstanceUserMembershipSummary.new
        type.type = params[:type]
        type.read_marker_timestamp = params[:read_marker_timestamp]
        type
      end
    end

    module AppInstanceUserSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceUserSummary, context: context)
        type = Types::AppInstanceUserSummary.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.name = params[:name]
        type.metadata = params[:metadata]
        type
      end
    end

    module ArtifactsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArtifactsConfiguration, context: context)
        type = Types::ArtifactsConfiguration.new
        type.audio = AudioArtifactsConfiguration.build(params[:audio], context: "#{context}[:audio]") unless params[:audio].nil?
        type.video = VideoArtifactsConfiguration.build(params[:video], context: "#{context}[:video]") unless params[:video].nil?
        type.content = ContentArtifactsConfiguration.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type
      end
    end

    module AssociatePhoneNumberWithUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePhoneNumberWithUserInput, context: context)
        type = Types::AssociatePhoneNumberWithUserInput.new
        type.account_id = params[:account_id]
        type.user_id = params[:user_id]
        type.e164_phone_number = params[:e164_phone_number]
        type
      end
    end

    module AssociatePhoneNumberWithUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePhoneNumberWithUserOutput, context: context)
        type = Types::AssociatePhoneNumberWithUserOutput.new
        type
      end
    end

    module AssociatePhoneNumbersWithVoiceConnectorGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePhoneNumbersWithVoiceConnectorGroupInput, context: context)
        type = Types::AssociatePhoneNumbersWithVoiceConnectorGroupInput.new
        type.voice_connector_group_id = params[:voice_connector_group_id]
        type.e164_phone_numbers = E164PhoneNumberList.build(params[:e164_phone_numbers], context: "#{context}[:e164_phone_numbers]") unless params[:e164_phone_numbers].nil?
        type.force_associate = params[:force_associate]
        type
      end
    end

    module AssociatePhoneNumbersWithVoiceConnectorGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePhoneNumbersWithVoiceConnectorGroupOutput, context: context)
        type = Types::AssociatePhoneNumbersWithVoiceConnectorGroupOutput.new
        type.phone_number_errors = PhoneNumberErrorList.build(params[:phone_number_errors], context: "#{context}[:phone_number_errors]") unless params[:phone_number_errors].nil?
        type
      end
    end

    module AssociatePhoneNumbersWithVoiceConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePhoneNumbersWithVoiceConnectorInput, context: context)
        type = Types::AssociatePhoneNumbersWithVoiceConnectorInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.e164_phone_numbers = E164PhoneNumberList.build(params[:e164_phone_numbers], context: "#{context}[:e164_phone_numbers]") unless params[:e164_phone_numbers].nil?
        type.force_associate = params[:force_associate]
        type
      end
    end

    module AssociatePhoneNumbersWithVoiceConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePhoneNumbersWithVoiceConnectorOutput, context: context)
        type = Types::AssociatePhoneNumbersWithVoiceConnectorOutput.new
        type.phone_number_errors = PhoneNumberErrorList.build(params[:phone_number_errors], context: "#{context}[:phone_number_errors]") unless params[:phone_number_errors].nil?
        type
      end
    end

    module AssociateSigninDelegateGroupsWithAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateSigninDelegateGroupsWithAccountInput, context: context)
        type = Types::AssociateSigninDelegateGroupsWithAccountInput.new
        type.account_id = params[:account_id]
        type.signin_delegate_groups = SigninDelegateGroupList.build(params[:signin_delegate_groups], context: "#{context}[:signin_delegate_groups]") unless params[:signin_delegate_groups].nil?
        type
      end
    end

    module AssociateSigninDelegateGroupsWithAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateSigninDelegateGroupsWithAccountOutput, context: context)
        type = Types::AssociateSigninDelegateGroupsWithAccountOutput.new
        type
      end
    end

    module Attendee
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Attendee, context: context)
        type = Types::Attendee.new
        type.external_user_id = params[:external_user_id]
        type.attendee_id = params[:attendee_id]
        type.join_token = params[:join_token]
        type
      end
    end

    module AttendeeIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AttendeeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Attendee.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttendeeTagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AttendeeTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AudioArtifactsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AudioArtifactsConfiguration, context: context)
        type = Types::AudioArtifactsConfiguration.new
        type.mux_type = params[:mux_type]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module BatchChannelMemberships
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchChannelMemberships, context: context)
        type = Types::BatchChannelMemberships.new
        type.invited_by = Identity.build(params[:invited_by], context: "#{context}[:invited_by]") unless params[:invited_by].nil?
        type.type = params[:type]
        type.members = Members.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.channel_arn = params[:channel_arn]
        type
      end
    end

    module BatchCreateAttendeeErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateAttendeeError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchCreateAttendeeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateAttendeeInput, context: context)
        type = Types::BatchCreateAttendeeInput.new
        type.meeting_id = params[:meeting_id]
        type.attendees = CreateAttendeeRequestItemList.build(params[:attendees], context: "#{context}[:attendees]") unless params[:attendees].nil?
        type
      end
    end

    module BatchCreateAttendeeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateAttendeeOutput, context: context)
        type = Types::BatchCreateAttendeeOutput.new
        type.attendees = AttendeeList.build(params[:attendees], context: "#{context}[:attendees]") unless params[:attendees].nil?
        type.errors = BatchCreateAttendeeErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchCreateChannelMembershipError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateChannelMembershipError, context: context)
        type = Types::BatchCreateChannelMembershipError.new
        type.member_arn = params[:member_arn]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchCreateChannelMembershipErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchCreateChannelMembershipError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchCreateChannelMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateChannelMembershipInput, context: context)
        type = Types::BatchCreateChannelMembershipInput.new
        type.channel_arn = params[:channel_arn]
        type.type = params[:type]
        type.member_arns = MemberArns.build(params[:member_arns], context: "#{context}[:member_arns]") unless params[:member_arns].nil?
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module BatchCreateChannelMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateChannelMembershipOutput, context: context)
        type = Types::BatchCreateChannelMembershipOutput.new
        type.batch_channel_memberships = BatchChannelMemberships.build(params[:batch_channel_memberships], context: "#{context}[:batch_channel_memberships]") unless params[:batch_channel_memberships].nil?
        type.errors = BatchCreateChannelMembershipErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchCreateRoomMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateRoomMembershipInput, context: context)
        type = Types::BatchCreateRoomMembershipInput.new
        type.account_id = params[:account_id]
        type.room_id = params[:room_id]
        type.membership_item_list = MembershipItemList.build(params[:membership_item_list], context: "#{context}[:membership_item_list]") unless params[:membership_item_list].nil?
        type
      end
    end

    module BatchCreateRoomMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateRoomMembershipOutput, context: context)
        type = Types::BatchCreateRoomMembershipOutput.new
        type.errors = MemberErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchDeletePhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeletePhoneNumberInput, context: context)
        type = Types::BatchDeletePhoneNumberInput.new
        type.phone_number_ids = NonEmptyStringList.build(params[:phone_number_ids], context: "#{context}[:phone_number_ids]") unless params[:phone_number_ids].nil?
        type
      end
    end

    module BatchDeletePhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeletePhoneNumberOutput, context: context)
        type = Types::BatchDeletePhoneNumberOutput.new
        type.phone_number_errors = PhoneNumberErrorList.build(params[:phone_number_errors], context: "#{context}[:phone_number_errors]") unless params[:phone_number_errors].nil?
        type
      end
    end

    module BatchSuspendUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchSuspendUserInput, context: context)
        type = Types::BatchSuspendUserInput.new
        type.account_id = params[:account_id]
        type.user_id_list = UserIdList.build(params[:user_id_list], context: "#{context}[:user_id_list]") unless params[:user_id_list].nil?
        type
      end
    end

    module BatchSuspendUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchSuspendUserOutput, context: context)
        type = Types::BatchSuspendUserOutput.new
        type.user_errors = UserErrorList.build(params[:user_errors], context: "#{context}[:user_errors]") unless params[:user_errors].nil?
        type
      end
    end

    module BatchUnsuspendUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUnsuspendUserInput, context: context)
        type = Types::BatchUnsuspendUserInput.new
        type.account_id = params[:account_id]
        type.user_id_list = UserIdList.build(params[:user_id_list], context: "#{context}[:user_id_list]") unless params[:user_id_list].nil?
        type
      end
    end

    module BatchUnsuspendUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUnsuspendUserOutput, context: context)
        type = Types::BatchUnsuspendUserOutput.new
        type.user_errors = UserErrorList.build(params[:user_errors], context: "#{context}[:user_errors]") unless params[:user_errors].nil?
        type
      end
    end

    module BatchUpdatePhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdatePhoneNumberInput, context: context)
        type = Types::BatchUpdatePhoneNumberInput.new
        type.update_phone_number_request_items = UpdatePhoneNumberRequestItemList.build(params[:update_phone_number_request_items], context: "#{context}[:update_phone_number_request_items]") unless params[:update_phone_number_request_items].nil?
        type
      end
    end

    module BatchUpdatePhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdatePhoneNumberOutput, context: context)
        type = Types::BatchUpdatePhoneNumberOutput.new
        type.phone_number_errors = PhoneNumberErrorList.build(params[:phone_number_errors], context: "#{context}[:phone_number_errors]") unless params[:phone_number_errors].nil?
        type
      end
    end

    module BatchUpdateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateUserInput, context: context)
        type = Types::BatchUpdateUserInput.new
        type.account_id = params[:account_id]
        type.update_user_request_items = UpdateUserRequestItemList.build(params[:update_user_request_items], context: "#{context}[:update_user_request_items]") unless params[:update_user_request_items].nil?
        type
      end
    end

    module BatchUpdateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdateUserOutput, context: context)
        type = Types::BatchUpdateUserOutput.new
        type.user_errors = UserErrorList.build(params[:user_errors], context: "#{context}[:user_errors]") unless params[:user_errors].nil?
        type
      end
    end

    module Bot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Bot, context: context)
        type = Types::Bot.new
        type.bot_id = params[:bot_id]
        type.user_id = params[:user_id]
        type.display_name = params[:display_name]
        type.bot_type = params[:bot_type]
        type.disabled = params[:disabled]
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type.bot_email = params[:bot_email]
        type.security_token = params[:security_token]
        type
      end
    end

    module BotList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Bot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BusinessCallingSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BusinessCallingSettings, context: context)
        type = Types::BusinessCallingSettings.new
        type.cdr_bucket = params[:cdr_bucket]
        type
      end
    end

    module CallingRegionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CapabilityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Channel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Channel, context: context)
        type = Types::Channel.new
        type.name = params[:name]
        type.channel_arn = params[:channel_arn]
        type.mode = params[:mode]
        type.privacy = params[:privacy]
        type.metadata = params[:metadata]
        type.created_by = Identity.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.created_timestamp = params[:created_timestamp]
        type.last_message_timestamp = params[:last_message_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type
      end
    end

    module ChannelBan
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelBan, context: context)
        type = Types::ChannelBan.new
        type.member = Identity.build(params[:member], context: "#{context}[:member]") unless params[:member].nil?
        type.channel_arn = params[:channel_arn]
        type.created_timestamp = params[:created_timestamp]
        type.created_by = Identity.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type
      end
    end

    module ChannelBanSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelBanSummary, context: context)
        type = Types::ChannelBanSummary.new
        type.member = Identity.build(params[:member], context: "#{context}[:member]") unless params[:member].nil?
        type
      end
    end

    module ChannelBanSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelBanSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChannelMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelMembership, context: context)
        type = Types::ChannelMembership.new
        type.invited_by = Identity.build(params[:invited_by], context: "#{context}[:invited_by]") unless params[:invited_by].nil?
        type.type = params[:type]
        type.member = Identity.build(params[:member], context: "#{context}[:member]") unless params[:member].nil?
        type.channel_arn = params[:channel_arn]
        type.created_timestamp = params[:created_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type
      end
    end

    module ChannelMembershipForAppInstanceUserSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelMembershipForAppInstanceUserSummary, context: context)
        type = Types::ChannelMembershipForAppInstanceUserSummary.new
        type.channel_summary = ChannelSummary.build(params[:channel_summary], context: "#{context}[:channel_summary]") unless params[:channel_summary].nil?
        type.app_instance_user_membership_summary = AppInstanceUserMembershipSummary.build(params[:app_instance_user_membership_summary], context: "#{context}[:app_instance_user_membership_summary]") unless params[:app_instance_user_membership_summary].nil?
        type
      end
    end

    module ChannelMembershipForAppInstanceUserSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelMembershipForAppInstanceUserSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChannelMembershipSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelMembershipSummary, context: context)
        type = Types::ChannelMembershipSummary.new
        type.member = Identity.build(params[:member], context: "#{context}[:member]") unless params[:member].nil?
        type
      end
    end

    module ChannelMembershipSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelMembershipSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChannelMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelMessage, context: context)
        type = Types::ChannelMessage.new
        type.channel_arn = params[:channel_arn]
        type.message_id = params[:message_id]
        type.content = params[:content]
        type.metadata = params[:metadata]
        type.type = params[:type]
        type.created_timestamp = params[:created_timestamp]
        type.last_edited_timestamp = params[:last_edited_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.sender = Identity.build(params[:sender], context: "#{context}[:sender]") unless params[:sender].nil?
        type.redacted = params[:redacted]
        type.persistence = params[:persistence]
        type
      end
    end

    module ChannelMessageSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelMessageSummary, context: context)
        type = Types::ChannelMessageSummary.new
        type.message_id = params[:message_id]
        type.content = params[:content]
        type.metadata = params[:metadata]
        type.type = params[:type]
        type.created_timestamp = params[:created_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type.last_edited_timestamp = params[:last_edited_timestamp]
        type.sender = Identity.build(params[:sender], context: "#{context}[:sender]") unless params[:sender].nil?
        type.redacted = params[:redacted]
        type
      end
    end

    module ChannelMessageSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelMessageSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChannelModeratedByAppInstanceUserSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelModeratedByAppInstanceUserSummary, context: context)
        type = Types::ChannelModeratedByAppInstanceUserSummary.new
        type.channel_summary = ChannelSummary.build(params[:channel_summary], context: "#{context}[:channel_summary]") unless params[:channel_summary].nil?
        type
      end
    end

    module ChannelModeratedByAppInstanceUserSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelModeratedByAppInstanceUserSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChannelModerator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelModerator, context: context)
        type = Types::ChannelModerator.new
        type.moderator = Identity.build(params[:moderator], context: "#{context}[:moderator]") unless params[:moderator].nil?
        type.channel_arn = params[:channel_arn]
        type.created_timestamp = params[:created_timestamp]
        type.created_by = Identity.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type
      end
    end

    module ChannelModeratorSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelModeratorSummary, context: context)
        type = Types::ChannelModeratorSummary.new
        type.moderator = Identity.build(params[:moderator], context: "#{context}[:moderator]") unless params[:moderator].nil?
        type
      end
    end

    module ChannelModeratorSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelModeratorSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChannelRetentionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelRetentionSettings, context: context)
        type = Types::ChannelRetentionSettings.new
        type.retention_days = params[:retention_days]
        type
      end
    end

    module ChannelSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelSummary, context: context)
        type = Types::ChannelSummary.new
        type.name = params[:name]
        type.channel_arn = params[:channel_arn]
        type.mode = params[:mode]
        type.privacy = params[:privacy]
        type.metadata = params[:metadata]
        type.last_message_timestamp = params[:last_message_timestamp]
        type
      end
    end

    module ChannelSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChimeSdkMeetingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChimeSdkMeetingConfiguration, context: context)
        type = Types::ChimeSdkMeetingConfiguration.new
        type.source_configuration = SourceConfiguration.build(params[:source_configuration], context: "#{context}[:source_configuration]") unless params[:source_configuration].nil?
        type.artifacts_configuration = ArtifactsConfiguration.build(params[:artifacts_configuration], context: "#{context}[:artifacts_configuration]") unless params[:artifacts_configuration].nil?
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ContentArtifactsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContentArtifactsConfiguration, context: context)
        type = Types::ContentArtifactsConfiguration.new
        type.state = params[:state]
        type.mux_type = params[:mux_type]
        type
      end
    end

    module ConversationRetentionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConversationRetentionSettings, context: context)
        type = Types::ConversationRetentionSettings.new
        type.retention_days = params[:retention_days]
        type
      end
    end

    module CountryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccountInput, context: context)
        type = Types::CreateAccountInput.new
        type.name = params[:name]
        type
      end
    end

    module CreateAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccountOutput, context: context)
        type = Types::CreateAccountOutput.new
        type.account = Account.build(params[:account], context: "#{context}[:account]") unless params[:account].nil?
        type
      end
    end

    module CreateAppInstanceAdminInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInstanceAdminInput, context: context)
        type = Types::CreateAppInstanceAdminInput.new
        type.app_instance_admin_arn = params[:app_instance_admin_arn]
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module CreateAppInstanceAdminOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInstanceAdminOutput, context: context)
        type = Types::CreateAppInstanceAdminOutput.new
        type.app_instance_admin = Identity.build(params[:app_instance_admin], context: "#{context}[:app_instance_admin]") unless params[:app_instance_admin].nil?
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module CreateAppInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInstanceInput, context: context)
        type = Types::CreateAppInstanceInput.new
        type.name = params[:name]
        type.metadata = params[:metadata]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAppInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInstanceOutput, context: context)
        type = Types::CreateAppInstanceOutput.new
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module CreateAppInstanceUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInstanceUserInput, context: context)
        type = Types::CreateAppInstanceUserInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.app_instance_user_id = params[:app_instance_user_id]
        type.name = params[:name]
        type.metadata = params[:metadata]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAppInstanceUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInstanceUserOutput, context: context)
        type = Types::CreateAppInstanceUserOutput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type
      end
    end

    module CreateAttendeeError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAttendeeError, context: context)
        type = Types::CreateAttendeeError.new
        type.external_user_id = params[:external_user_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module CreateAttendeeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAttendeeInput, context: context)
        type = Types::CreateAttendeeInput.new
        type.meeting_id = params[:meeting_id]
        type.external_user_id = params[:external_user_id]
        type.tags = AttendeeTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAttendeeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAttendeeOutput, context: context)
        type = Types::CreateAttendeeOutput.new
        type.attendee = Attendee.build(params[:attendee], context: "#{context}[:attendee]") unless params[:attendee].nil?
        type
      end
    end

    module CreateAttendeeRequestItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAttendeeRequestItem, context: context)
        type = Types::CreateAttendeeRequestItem.new
        type.external_user_id = params[:external_user_id]
        type.tags = AttendeeTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAttendeeRequestItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateAttendeeRequestItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateBotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBotInput, context: context)
        type = Types::CreateBotInput.new
        type.account_id = params[:account_id]
        type.display_name = params[:display_name]
        type.domain = params[:domain]
        type
      end
    end

    module CreateBotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBotOutput, context: context)
        type = Types::CreateBotOutput.new
        type.bot = Bot.build(params[:bot], context: "#{context}[:bot]") unless params[:bot].nil?
        type
      end
    end

    module CreateChannelBanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelBanInput, context: context)
        type = Types::CreateChannelBanInput.new
        type.channel_arn = params[:channel_arn]
        type.member_arn = params[:member_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module CreateChannelBanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelBanOutput, context: context)
        type = Types::CreateChannelBanOutput.new
        type.channel_arn = params[:channel_arn]
        type.member = Identity.build(params[:member], context: "#{context}[:member]") unless params[:member].nil?
        type
      end
    end

    module CreateChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelInput, context: context)
        type = Types::CreateChannelInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.name = params[:name]
        type.mode = params[:mode]
        type.privacy = params[:privacy]
        type.metadata = params[:metadata]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module CreateChannelMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelMembershipInput, context: context)
        type = Types::CreateChannelMembershipInput.new
        type.channel_arn = params[:channel_arn]
        type.member_arn = params[:member_arn]
        type.type = params[:type]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module CreateChannelMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelMembershipOutput, context: context)
        type = Types::CreateChannelMembershipOutput.new
        type.channel_arn = params[:channel_arn]
        type.member = Identity.build(params[:member], context: "#{context}[:member]") unless params[:member].nil?
        type
      end
    end

    module CreateChannelModeratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelModeratorInput, context: context)
        type = Types::CreateChannelModeratorInput.new
        type.channel_arn = params[:channel_arn]
        type.channel_moderator_arn = params[:channel_moderator_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module CreateChannelModeratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelModeratorOutput, context: context)
        type = Types::CreateChannelModeratorOutput.new
        type.channel_arn = params[:channel_arn]
        type.channel_moderator = Identity.build(params[:channel_moderator], context: "#{context}[:channel_moderator]") unless params[:channel_moderator].nil?
        type
      end
    end

    module CreateChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelOutput, context: context)
        type = Types::CreateChannelOutput.new
        type.channel_arn = params[:channel_arn]
        type
      end
    end

    module CreateMediaCapturePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMediaCapturePipelineInput, context: context)
        type = Types::CreateMediaCapturePipelineInput.new
        type.source_type = params[:source_type]
        type.source_arn = params[:source_arn]
        type.sink_type = params[:sink_type]
        type.sink_arn = params[:sink_arn]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.chime_sdk_meeting_configuration = ChimeSdkMeetingConfiguration.build(params[:chime_sdk_meeting_configuration], context: "#{context}[:chime_sdk_meeting_configuration]") unless params[:chime_sdk_meeting_configuration].nil?
        type
      end
    end

    module CreateMediaCapturePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMediaCapturePipelineOutput, context: context)
        type = Types::CreateMediaCapturePipelineOutput.new
        type.media_capture_pipeline = MediaCapturePipeline.build(params[:media_capture_pipeline], context: "#{context}[:media_capture_pipeline]") unless params[:media_capture_pipeline].nil?
        type
      end
    end

    module CreateMeetingDialOutInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMeetingDialOutInput, context: context)
        type = Types::CreateMeetingDialOutInput.new
        type.meeting_id = params[:meeting_id]
        type.from_phone_number = params[:from_phone_number]
        type.to_phone_number = params[:to_phone_number]
        type.join_token = params[:join_token]
        type
      end
    end

    module CreateMeetingDialOutOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMeetingDialOutOutput, context: context)
        type = Types::CreateMeetingDialOutOutput.new
        type.transaction_id = params[:transaction_id]
        type
      end
    end

    module CreateMeetingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMeetingInput, context: context)
        type = Types::CreateMeetingInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.external_meeting_id = params[:external_meeting_id]
        type.meeting_host_id = params[:meeting_host_id]
        type.media_region = params[:media_region]
        type.tags = MeetingTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.notifications_configuration = MeetingNotificationConfiguration.build(params[:notifications_configuration], context: "#{context}[:notifications_configuration]") unless params[:notifications_configuration].nil?
        type
      end
    end

    module CreateMeetingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMeetingOutput, context: context)
        type = Types::CreateMeetingOutput.new
        type.meeting = Meeting.build(params[:meeting], context: "#{context}[:meeting]") unless params[:meeting].nil?
        type
      end
    end

    module CreateMeetingWithAttendeesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMeetingWithAttendeesInput, context: context)
        type = Types::CreateMeetingWithAttendeesInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.external_meeting_id = params[:external_meeting_id]
        type.meeting_host_id = params[:meeting_host_id]
        type.media_region = params[:media_region]
        type.tags = MeetingTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.notifications_configuration = MeetingNotificationConfiguration.build(params[:notifications_configuration], context: "#{context}[:notifications_configuration]") unless params[:notifications_configuration].nil?
        type.attendees = CreateMeetingWithAttendeesRequestItemList.build(params[:attendees], context: "#{context}[:attendees]") unless params[:attendees].nil?
        type
      end
    end

    module CreateMeetingWithAttendeesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMeetingWithAttendeesOutput, context: context)
        type = Types::CreateMeetingWithAttendeesOutput.new
        type.meeting = Meeting.build(params[:meeting], context: "#{context}[:meeting]") unless params[:meeting].nil?
        type.attendees = AttendeeList.build(params[:attendees], context: "#{context}[:attendees]") unless params[:attendees].nil?
        type.errors = BatchCreateAttendeeErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module CreateMeetingWithAttendeesRequestItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateAttendeeRequestItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreatePhoneNumberOrderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePhoneNumberOrderInput, context: context)
        type = Types::CreatePhoneNumberOrderInput.new
        type.product_type = params[:product_type]
        type.e164_phone_numbers = E164PhoneNumberList.build(params[:e164_phone_numbers], context: "#{context}[:e164_phone_numbers]") unless params[:e164_phone_numbers].nil?
        type
      end
    end

    module CreatePhoneNumberOrderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePhoneNumberOrderOutput, context: context)
        type = Types::CreatePhoneNumberOrderOutput.new
        type.phone_number_order = PhoneNumberOrder.build(params[:phone_number_order], context: "#{context}[:phone_number_order]") unless params[:phone_number_order].nil?
        type
      end
    end

    module CreateProxySessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProxySessionInput, context: context)
        type = Types::CreateProxySessionInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.participant_phone_numbers = ParticipantPhoneNumberList.build(params[:participant_phone_numbers], context: "#{context}[:participant_phone_numbers]") unless params[:participant_phone_numbers].nil?
        type.name = params[:name]
        type.expiry_minutes = params[:expiry_minutes]
        type.capabilities = CapabilityList.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.number_selection_behavior = params[:number_selection_behavior]
        type.geo_match_level = params[:geo_match_level]
        type.geo_match_params = GeoMatchParams.build(params[:geo_match_params], context: "#{context}[:geo_match_params]") unless params[:geo_match_params].nil?
        type
      end
    end

    module CreateProxySessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProxySessionOutput, context: context)
        type = Types::CreateProxySessionOutput.new
        type.proxy_session = ProxySession.build(params[:proxy_session], context: "#{context}[:proxy_session]") unless params[:proxy_session].nil?
        type
      end
    end

    module CreateRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoomInput, context: context)
        type = Types::CreateRoomInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateRoomMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoomMembershipInput, context: context)
        type = Types::CreateRoomMembershipInput.new
        type.account_id = params[:account_id]
        type.room_id = params[:room_id]
        type.member_id = params[:member_id]
        type.role = params[:role]
        type
      end
    end

    module CreateRoomMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoomMembershipOutput, context: context)
        type = Types::CreateRoomMembershipOutput.new
        type.room_membership = RoomMembership.build(params[:room_membership], context: "#{context}[:room_membership]") unless params[:room_membership].nil?
        type
      end
    end

    module CreateRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoomOutput, context: context)
        type = Types::CreateRoomOutput.new
        type.room = Room.build(params[:room], context: "#{context}[:room]") unless params[:room].nil?
        type
      end
    end

    module CreateSipMediaApplicationCallInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSipMediaApplicationCallInput, context: context)
        type = Types::CreateSipMediaApplicationCallInput.new
        type.from_phone_number = params[:from_phone_number]
        type.to_phone_number = params[:to_phone_number]
        type.sip_media_application_id = params[:sip_media_application_id]
        type.sip_headers = SipHeadersMap.build(params[:sip_headers], context: "#{context}[:sip_headers]") unless params[:sip_headers].nil?
        type
      end
    end

    module CreateSipMediaApplicationCallOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSipMediaApplicationCallOutput, context: context)
        type = Types::CreateSipMediaApplicationCallOutput.new
        type.sip_media_application_call = SipMediaApplicationCall.build(params[:sip_media_application_call], context: "#{context}[:sip_media_application_call]") unless params[:sip_media_application_call].nil?
        type
      end
    end

    module CreateSipMediaApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSipMediaApplicationInput, context: context)
        type = Types::CreateSipMediaApplicationInput.new
        type.aws_region = params[:aws_region]
        type.name = params[:name]
        type.endpoints = SipMediaApplicationEndpointList.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type
      end
    end

    module CreateSipMediaApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSipMediaApplicationOutput, context: context)
        type = Types::CreateSipMediaApplicationOutput.new
        type.sip_media_application = SipMediaApplication.build(params[:sip_media_application], context: "#{context}[:sip_media_application]") unless params[:sip_media_application].nil?
        type
      end
    end

    module CreateSipRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSipRuleInput, context: context)
        type = Types::CreateSipRuleInput.new
        type.name = params[:name]
        type.trigger_type = params[:trigger_type]
        type.trigger_value = params[:trigger_value]
        type.disabled = params[:disabled]
        type.target_applications = SipRuleTargetApplicationList.build(params[:target_applications], context: "#{context}[:target_applications]") unless params[:target_applications].nil?
        type
      end
    end

    module CreateSipRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSipRuleOutput, context: context)
        type = Types::CreateSipRuleOutput.new
        type.sip_rule = SipRule.build(params[:sip_rule], context: "#{context}[:sip_rule]") unless params[:sip_rule].nil?
        type
      end
    end

    module CreateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserInput, context: context)
        type = Types::CreateUserInput.new
        type.account_id = params[:account_id]
        type.username = params[:username]
        type.email = params[:email]
        type.user_type = params[:user_type]
        type
      end
    end

    module CreateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserOutput, context: context)
        type = Types::CreateUserOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module CreateVoiceConnectorGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVoiceConnectorGroupInput, context: context)
        type = Types::CreateVoiceConnectorGroupInput.new
        type.name = params[:name]
        type.voice_connector_items = VoiceConnectorItemList.build(params[:voice_connector_items], context: "#{context}[:voice_connector_items]") unless params[:voice_connector_items].nil?
        type
      end
    end

    module CreateVoiceConnectorGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVoiceConnectorGroupOutput, context: context)
        type = Types::CreateVoiceConnectorGroupOutput.new
        type.voice_connector_group = VoiceConnectorGroup.build(params[:voice_connector_group], context: "#{context}[:voice_connector_group]") unless params[:voice_connector_group].nil?
        type
      end
    end

    module CreateVoiceConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVoiceConnectorInput, context: context)
        type = Types::CreateVoiceConnectorInput.new
        type.name = params[:name]
        type.aws_region = params[:aws_region]
        type.require_encryption = params[:require_encryption]
        type
      end
    end

    module CreateVoiceConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVoiceConnectorOutput, context: context)
        type = Types::CreateVoiceConnectorOutput.new
        type.voice_connector = VoiceConnector.build(params[:voice_connector], context: "#{context}[:voice_connector]") unless params[:voice_connector].nil?
        type
      end
    end

    module Credential
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Credential, context: context)
        type = Types::Credential.new
        type.username = params[:username]
        type.password = params[:password]
        type
      end
    end

    module CredentialList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Credential.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DNISEmergencyCallingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DNISEmergencyCallingConfiguration, context: context)
        type = Types::DNISEmergencyCallingConfiguration.new
        type.emergency_phone_number = params[:emergency_phone_number]
        type.test_phone_number = params[:test_phone_number]
        type.calling_country = params[:calling_country]
        type
      end
    end

    module DNISEmergencyCallingConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DNISEmergencyCallingConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccountInput, context: context)
        type = Types::DeleteAccountInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module DeleteAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccountOutput, context: context)
        type = Types::DeleteAccountOutput.new
        type
      end
    end

    module DeleteAppInstanceAdminInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInstanceAdminInput, context: context)
        type = Types::DeleteAppInstanceAdminInput.new
        type.app_instance_admin_arn = params[:app_instance_admin_arn]
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module DeleteAppInstanceAdminOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInstanceAdminOutput, context: context)
        type = Types::DeleteAppInstanceAdminOutput.new
        type
      end
    end

    module DeleteAppInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInstanceInput, context: context)
        type = Types::DeleteAppInstanceInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module DeleteAppInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInstanceOutput, context: context)
        type = Types::DeleteAppInstanceOutput.new
        type
      end
    end

    module DeleteAppInstanceStreamingConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInstanceStreamingConfigurationsInput, context: context)
        type = Types::DeleteAppInstanceStreamingConfigurationsInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module DeleteAppInstanceStreamingConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInstanceStreamingConfigurationsOutput, context: context)
        type = Types::DeleteAppInstanceStreamingConfigurationsOutput.new
        type
      end
    end

    module DeleteAppInstanceUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInstanceUserInput, context: context)
        type = Types::DeleteAppInstanceUserInput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type
      end
    end

    module DeleteAppInstanceUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInstanceUserOutput, context: context)
        type = Types::DeleteAppInstanceUserOutput.new
        type
      end
    end

    module DeleteAttendeeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAttendeeInput, context: context)
        type = Types::DeleteAttendeeInput.new
        type.meeting_id = params[:meeting_id]
        type.attendee_id = params[:attendee_id]
        type
      end
    end

    module DeleteAttendeeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAttendeeOutput, context: context)
        type = Types::DeleteAttendeeOutput.new
        type
      end
    end

    module DeleteChannelBanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelBanInput, context: context)
        type = Types::DeleteChannelBanInput.new
        type.channel_arn = params[:channel_arn]
        type.member_arn = params[:member_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module DeleteChannelBanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelBanOutput, context: context)
        type = Types::DeleteChannelBanOutput.new
        type
      end
    end

    module DeleteChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelInput, context: context)
        type = Types::DeleteChannelInput.new
        type.channel_arn = params[:channel_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module DeleteChannelMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelMembershipInput, context: context)
        type = Types::DeleteChannelMembershipInput.new
        type.channel_arn = params[:channel_arn]
        type.member_arn = params[:member_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module DeleteChannelMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelMembershipOutput, context: context)
        type = Types::DeleteChannelMembershipOutput.new
        type
      end
    end

    module DeleteChannelMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelMessageInput, context: context)
        type = Types::DeleteChannelMessageInput.new
        type.channel_arn = params[:channel_arn]
        type.message_id = params[:message_id]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module DeleteChannelMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelMessageOutput, context: context)
        type = Types::DeleteChannelMessageOutput.new
        type
      end
    end

    module DeleteChannelModeratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelModeratorInput, context: context)
        type = Types::DeleteChannelModeratorInput.new
        type.channel_arn = params[:channel_arn]
        type.channel_moderator_arn = params[:channel_moderator_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module DeleteChannelModeratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelModeratorOutput, context: context)
        type = Types::DeleteChannelModeratorOutput.new
        type
      end
    end

    module DeleteChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelOutput, context: context)
        type = Types::DeleteChannelOutput.new
        type
      end
    end

    module DeleteEventsConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventsConfigurationInput, context: context)
        type = Types::DeleteEventsConfigurationInput.new
        type.account_id = params[:account_id]
        type.bot_id = params[:bot_id]
        type
      end
    end

    module DeleteEventsConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventsConfigurationOutput, context: context)
        type = Types::DeleteEventsConfigurationOutput.new
        type
      end
    end

    module DeleteMediaCapturePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMediaCapturePipelineInput, context: context)
        type = Types::DeleteMediaCapturePipelineInput.new
        type.media_pipeline_id = params[:media_pipeline_id]
        type
      end
    end

    module DeleteMediaCapturePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMediaCapturePipelineOutput, context: context)
        type = Types::DeleteMediaCapturePipelineOutput.new
        type
      end
    end

    module DeleteMeetingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMeetingInput, context: context)
        type = Types::DeleteMeetingInput.new
        type.meeting_id = params[:meeting_id]
        type
      end
    end

    module DeleteMeetingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMeetingOutput, context: context)
        type = Types::DeleteMeetingOutput.new
        type
      end
    end

    module DeletePhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePhoneNumberInput, context: context)
        type = Types::DeletePhoneNumberInput.new
        type.phone_number_id = params[:phone_number_id]
        type
      end
    end

    module DeletePhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePhoneNumberOutput, context: context)
        type = Types::DeletePhoneNumberOutput.new
        type
      end
    end

    module DeleteProxySessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProxySessionInput, context: context)
        type = Types::DeleteProxySessionInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.proxy_session_id = params[:proxy_session_id]
        type
      end
    end

    module DeleteProxySessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProxySessionOutput, context: context)
        type = Types::DeleteProxySessionOutput.new
        type
      end
    end

    module DeleteRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoomInput, context: context)
        type = Types::DeleteRoomInput.new
        type.account_id = params[:account_id]
        type.room_id = params[:room_id]
        type
      end
    end

    module DeleteRoomMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoomMembershipInput, context: context)
        type = Types::DeleteRoomMembershipInput.new
        type.account_id = params[:account_id]
        type.room_id = params[:room_id]
        type.member_id = params[:member_id]
        type
      end
    end

    module DeleteRoomMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoomMembershipOutput, context: context)
        type = Types::DeleteRoomMembershipOutput.new
        type
      end
    end

    module DeleteRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoomOutput, context: context)
        type = Types::DeleteRoomOutput.new
        type
      end
    end

    module DeleteSipMediaApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSipMediaApplicationInput, context: context)
        type = Types::DeleteSipMediaApplicationInput.new
        type.sip_media_application_id = params[:sip_media_application_id]
        type
      end
    end

    module DeleteSipMediaApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSipMediaApplicationOutput, context: context)
        type = Types::DeleteSipMediaApplicationOutput.new
        type
      end
    end

    module DeleteSipRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSipRuleInput, context: context)
        type = Types::DeleteSipRuleInput.new
        type.sip_rule_id = params[:sip_rule_id]
        type
      end
    end

    module DeleteSipRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSipRuleOutput, context: context)
        type = Types::DeleteSipRuleOutput.new
        type
      end
    end

    module DeleteVoiceConnectorEmergencyCallingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorEmergencyCallingConfigurationInput, context: context)
        type = Types::DeleteVoiceConnectorEmergencyCallingConfigurationInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type
      end
    end

    module DeleteVoiceConnectorEmergencyCallingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorEmergencyCallingConfigurationOutput, context: context)
        type = Types::DeleteVoiceConnectorEmergencyCallingConfigurationOutput.new
        type
      end
    end

    module DeleteVoiceConnectorGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorGroupInput, context: context)
        type = Types::DeleteVoiceConnectorGroupInput.new
        type.voice_connector_group_id = params[:voice_connector_group_id]
        type
      end
    end

    module DeleteVoiceConnectorGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorGroupOutput, context: context)
        type = Types::DeleteVoiceConnectorGroupOutput.new
        type
      end
    end

    module DeleteVoiceConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorInput, context: context)
        type = Types::DeleteVoiceConnectorInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type
      end
    end

    module DeleteVoiceConnectorOriginationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorOriginationInput, context: context)
        type = Types::DeleteVoiceConnectorOriginationInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type
      end
    end

    module DeleteVoiceConnectorOriginationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorOriginationOutput, context: context)
        type = Types::DeleteVoiceConnectorOriginationOutput.new
        type
      end
    end

    module DeleteVoiceConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorOutput, context: context)
        type = Types::DeleteVoiceConnectorOutput.new
        type
      end
    end

    module DeleteVoiceConnectorProxyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorProxyInput, context: context)
        type = Types::DeleteVoiceConnectorProxyInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type
      end
    end

    module DeleteVoiceConnectorProxyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorProxyOutput, context: context)
        type = Types::DeleteVoiceConnectorProxyOutput.new
        type
      end
    end

    module DeleteVoiceConnectorStreamingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorStreamingConfigurationInput, context: context)
        type = Types::DeleteVoiceConnectorStreamingConfigurationInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type
      end
    end

    module DeleteVoiceConnectorStreamingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorStreamingConfigurationOutput, context: context)
        type = Types::DeleteVoiceConnectorStreamingConfigurationOutput.new
        type
      end
    end

    module DeleteVoiceConnectorTerminationCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorTerminationCredentialsInput, context: context)
        type = Types::DeleteVoiceConnectorTerminationCredentialsInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.usernames = SensitiveStringList.build(params[:usernames], context: "#{context}[:usernames]") unless params[:usernames].nil?
        type
      end
    end

    module DeleteVoiceConnectorTerminationCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorTerminationCredentialsOutput, context: context)
        type = Types::DeleteVoiceConnectorTerminationCredentialsOutput.new
        type
      end
    end

    module DeleteVoiceConnectorTerminationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorTerminationInput, context: context)
        type = Types::DeleteVoiceConnectorTerminationInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type
      end
    end

    module DeleteVoiceConnectorTerminationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVoiceConnectorTerminationOutput, context: context)
        type = Types::DeleteVoiceConnectorTerminationOutput.new
        type
      end
    end

    module DescribeAppInstanceAdminInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInstanceAdminInput, context: context)
        type = Types::DescribeAppInstanceAdminInput.new
        type.app_instance_admin_arn = params[:app_instance_admin_arn]
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module DescribeAppInstanceAdminOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInstanceAdminOutput, context: context)
        type = Types::DescribeAppInstanceAdminOutput.new
        type.app_instance_admin = AppInstanceAdmin.build(params[:app_instance_admin], context: "#{context}[:app_instance_admin]") unless params[:app_instance_admin].nil?
        type
      end
    end

    module DescribeAppInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInstanceInput, context: context)
        type = Types::DescribeAppInstanceInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module DescribeAppInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInstanceOutput, context: context)
        type = Types::DescribeAppInstanceOutput.new
        type.app_instance = AppInstance.build(params[:app_instance], context: "#{context}[:app_instance]") unless params[:app_instance].nil?
        type
      end
    end

    module DescribeAppInstanceUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInstanceUserInput, context: context)
        type = Types::DescribeAppInstanceUserInput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type
      end
    end

    module DescribeAppInstanceUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInstanceUserOutput, context: context)
        type = Types::DescribeAppInstanceUserOutput.new
        type.app_instance_user = AppInstanceUser.build(params[:app_instance_user], context: "#{context}[:app_instance_user]") unless params[:app_instance_user].nil?
        type
      end
    end

    module DescribeChannelBanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelBanInput, context: context)
        type = Types::DescribeChannelBanInput.new
        type.channel_arn = params[:channel_arn]
        type.member_arn = params[:member_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module DescribeChannelBanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelBanOutput, context: context)
        type = Types::DescribeChannelBanOutput.new
        type.channel_ban = ChannelBan.build(params[:channel_ban], context: "#{context}[:channel_ban]") unless params[:channel_ban].nil?
        type
      end
    end

    module DescribeChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelInput, context: context)
        type = Types::DescribeChannelInput.new
        type.channel_arn = params[:channel_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module DescribeChannelMembershipForAppInstanceUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelMembershipForAppInstanceUserInput, context: context)
        type = Types::DescribeChannelMembershipForAppInstanceUserInput.new
        type.channel_arn = params[:channel_arn]
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module DescribeChannelMembershipForAppInstanceUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelMembershipForAppInstanceUserOutput, context: context)
        type = Types::DescribeChannelMembershipForAppInstanceUserOutput.new
        type.channel_membership = ChannelMembershipForAppInstanceUserSummary.build(params[:channel_membership], context: "#{context}[:channel_membership]") unless params[:channel_membership].nil?
        type
      end
    end

    module DescribeChannelMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelMembershipInput, context: context)
        type = Types::DescribeChannelMembershipInput.new
        type.channel_arn = params[:channel_arn]
        type.member_arn = params[:member_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module DescribeChannelMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelMembershipOutput, context: context)
        type = Types::DescribeChannelMembershipOutput.new
        type.channel_membership = ChannelMembership.build(params[:channel_membership], context: "#{context}[:channel_membership]") unless params[:channel_membership].nil?
        type
      end
    end

    module DescribeChannelModeratedByAppInstanceUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelModeratedByAppInstanceUserInput, context: context)
        type = Types::DescribeChannelModeratedByAppInstanceUserInput.new
        type.channel_arn = params[:channel_arn]
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module DescribeChannelModeratedByAppInstanceUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelModeratedByAppInstanceUserOutput, context: context)
        type = Types::DescribeChannelModeratedByAppInstanceUserOutput.new
        type.channel = ChannelModeratedByAppInstanceUserSummary.build(params[:channel], context: "#{context}[:channel]") unless params[:channel].nil?
        type
      end
    end

    module DescribeChannelModeratorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelModeratorInput, context: context)
        type = Types::DescribeChannelModeratorInput.new
        type.channel_arn = params[:channel_arn]
        type.channel_moderator_arn = params[:channel_moderator_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module DescribeChannelModeratorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelModeratorOutput, context: context)
        type = Types::DescribeChannelModeratorOutput.new
        type.channel_moderator = ChannelModerator.build(params[:channel_moderator], context: "#{context}[:channel_moderator]") unless params[:channel_moderator].nil?
        type
      end
    end

    module DescribeChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelOutput, context: context)
        type = Types::DescribeChannelOutput.new
        type.channel = Channel.build(params[:channel], context: "#{context}[:channel]") unless params[:channel].nil?
        type
      end
    end

    module DisassociatePhoneNumberFromUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociatePhoneNumberFromUserInput, context: context)
        type = Types::DisassociatePhoneNumberFromUserInput.new
        type.account_id = params[:account_id]
        type.user_id = params[:user_id]
        type
      end
    end

    module DisassociatePhoneNumberFromUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociatePhoneNumberFromUserOutput, context: context)
        type = Types::DisassociatePhoneNumberFromUserOutput.new
        type
      end
    end

    module DisassociatePhoneNumbersFromVoiceConnectorGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociatePhoneNumbersFromVoiceConnectorGroupInput, context: context)
        type = Types::DisassociatePhoneNumbersFromVoiceConnectorGroupInput.new
        type.voice_connector_group_id = params[:voice_connector_group_id]
        type.e164_phone_numbers = E164PhoneNumberList.build(params[:e164_phone_numbers], context: "#{context}[:e164_phone_numbers]") unless params[:e164_phone_numbers].nil?
        type
      end
    end

    module DisassociatePhoneNumbersFromVoiceConnectorGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociatePhoneNumbersFromVoiceConnectorGroupOutput, context: context)
        type = Types::DisassociatePhoneNumbersFromVoiceConnectorGroupOutput.new
        type.phone_number_errors = PhoneNumberErrorList.build(params[:phone_number_errors], context: "#{context}[:phone_number_errors]") unless params[:phone_number_errors].nil?
        type
      end
    end

    module DisassociatePhoneNumbersFromVoiceConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociatePhoneNumbersFromVoiceConnectorInput, context: context)
        type = Types::DisassociatePhoneNumbersFromVoiceConnectorInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.e164_phone_numbers = E164PhoneNumberList.build(params[:e164_phone_numbers], context: "#{context}[:e164_phone_numbers]") unless params[:e164_phone_numbers].nil?
        type
      end
    end

    module DisassociatePhoneNumbersFromVoiceConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociatePhoneNumbersFromVoiceConnectorOutput, context: context)
        type = Types::DisassociatePhoneNumbersFromVoiceConnectorOutput.new
        type.phone_number_errors = PhoneNumberErrorList.build(params[:phone_number_errors], context: "#{context}[:phone_number_errors]") unless params[:phone_number_errors].nil?
        type
      end
    end

    module DisassociateSigninDelegateGroupsFromAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateSigninDelegateGroupsFromAccountInput, context: context)
        type = Types::DisassociateSigninDelegateGroupsFromAccountInput.new
        type.account_id = params[:account_id]
        type.group_names = NonEmptyStringList.build(params[:group_names], context: "#{context}[:group_names]") unless params[:group_names].nil?
        type
      end
    end

    module DisassociateSigninDelegateGroupsFromAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateSigninDelegateGroupsFromAccountOutput, context: context)
        type = Types::DisassociateSigninDelegateGroupsFromAccountOutput.new
        type
      end
    end

    module E164PhoneNumberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EmergencyCallingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmergencyCallingConfiguration, context: context)
        type = Types::EmergencyCallingConfiguration.new
        type.dnis = DNISEmergencyCallingConfigurationList.build(params[:dnis], context: "#{context}[:dnis]") unless params[:dnis].nil?
        type
      end
    end

    module EngineTranscribeMedicalSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EngineTranscribeMedicalSettings, context: context)
        type = Types::EngineTranscribeMedicalSettings.new
        type.language_code = params[:language_code]
        type.specialty = params[:specialty]
        type.type = params[:type]
        type.vocabulary_name = params[:vocabulary_name]
        type.region = params[:region]
        type.content_identification_type = params[:content_identification_type]
        type
      end
    end

    module EngineTranscribeSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EngineTranscribeSettings, context: context)
        type = Types::EngineTranscribeSettings.new
        type.language_code = params[:language_code]
        type.vocabulary_filter_method = params[:vocabulary_filter_method]
        type.vocabulary_filter_name = params[:vocabulary_filter_name]
        type.vocabulary_name = params[:vocabulary_name]
        type.region = params[:region]
        type.enable_partial_results_stabilization = params[:enable_partial_results_stabilization]
        type.partial_results_stability = params[:partial_results_stability]
        type.content_identification_type = params[:content_identification_type]
        type.content_redaction_type = params[:content_redaction_type]
        type.pii_entity_types = params[:pii_entity_types]
        type.language_model_name = params[:language_model_name]
        type
      end
    end

    module EventsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventsConfiguration, context: context)
        type = Types::EventsConfiguration.new
        type.bot_id = params[:bot_id]
        type.outbound_events_https_endpoint = params[:outbound_events_https_endpoint]
        type.lambda_function_arn = params[:lambda_function_arn]
        type
      end
    end

    module ExternalUserIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ForbiddenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ForbiddenException, context: context)
        type = Types::ForbiddenException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module GeoMatchParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeoMatchParams, context: context)
        type = Types::GeoMatchParams.new
        type.country = params[:country]
        type.area_code = params[:area_code]
        type
      end
    end

    module GetAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountInput, context: context)
        type = Types::GetAccountInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module GetAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountOutput, context: context)
        type = Types::GetAccountOutput.new
        type.account = Account.build(params[:account], context: "#{context}[:account]") unless params[:account].nil?
        type
      end
    end

    module GetAccountSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountSettingsInput, context: context)
        type = Types::GetAccountSettingsInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module GetAccountSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountSettingsOutput, context: context)
        type = Types::GetAccountSettingsOutput.new
        type.account_settings = AccountSettings.build(params[:account_settings], context: "#{context}[:account_settings]") unless params[:account_settings].nil?
        type
      end
    end

    module GetAppInstanceRetentionSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppInstanceRetentionSettingsInput, context: context)
        type = Types::GetAppInstanceRetentionSettingsInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module GetAppInstanceRetentionSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppInstanceRetentionSettingsOutput, context: context)
        type = Types::GetAppInstanceRetentionSettingsOutput.new
        type.app_instance_retention_settings = AppInstanceRetentionSettings.build(params[:app_instance_retention_settings], context: "#{context}[:app_instance_retention_settings]") unless params[:app_instance_retention_settings].nil?
        type.initiate_deletion_timestamp = params[:initiate_deletion_timestamp]
        type
      end
    end

    module GetAppInstanceStreamingConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppInstanceStreamingConfigurationsInput, context: context)
        type = Types::GetAppInstanceStreamingConfigurationsInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module GetAppInstanceStreamingConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAppInstanceStreamingConfigurationsOutput, context: context)
        type = Types::GetAppInstanceStreamingConfigurationsOutput.new
        type.app_instance_streaming_configurations = AppInstanceStreamingConfigurationList.build(params[:app_instance_streaming_configurations], context: "#{context}[:app_instance_streaming_configurations]") unless params[:app_instance_streaming_configurations].nil?
        type
      end
    end

    module GetAttendeeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAttendeeInput, context: context)
        type = Types::GetAttendeeInput.new
        type.meeting_id = params[:meeting_id]
        type.attendee_id = params[:attendee_id]
        type
      end
    end

    module GetAttendeeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAttendeeOutput, context: context)
        type = Types::GetAttendeeOutput.new
        type.attendee = Attendee.build(params[:attendee], context: "#{context}[:attendee]") unless params[:attendee].nil?
        type
      end
    end

    module GetBotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotInput, context: context)
        type = Types::GetBotInput.new
        type.account_id = params[:account_id]
        type.bot_id = params[:bot_id]
        type
      end
    end

    module GetBotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBotOutput, context: context)
        type = Types::GetBotOutput.new
        type.bot = Bot.build(params[:bot], context: "#{context}[:bot]") unless params[:bot].nil?
        type
      end
    end

    module GetChannelMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChannelMessageInput, context: context)
        type = Types::GetChannelMessageInput.new
        type.channel_arn = params[:channel_arn]
        type.message_id = params[:message_id]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module GetChannelMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChannelMessageOutput, context: context)
        type = Types::GetChannelMessageOutput.new
        type.channel_message = ChannelMessage.build(params[:channel_message], context: "#{context}[:channel_message]") unless params[:channel_message].nil?
        type
      end
    end

    module GetEventsConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventsConfigurationInput, context: context)
        type = Types::GetEventsConfigurationInput.new
        type.account_id = params[:account_id]
        type.bot_id = params[:bot_id]
        type
      end
    end

    module GetEventsConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventsConfigurationOutput, context: context)
        type = Types::GetEventsConfigurationOutput.new
        type.events_configuration = EventsConfiguration.build(params[:events_configuration], context: "#{context}[:events_configuration]") unless params[:events_configuration].nil?
        type
      end
    end

    module GetGlobalSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGlobalSettingsInput, context: context)
        type = Types::GetGlobalSettingsInput.new
        type
      end
    end

    module GetGlobalSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGlobalSettingsOutput, context: context)
        type = Types::GetGlobalSettingsOutput.new
        type.business_calling = BusinessCallingSettings.build(params[:business_calling], context: "#{context}[:business_calling]") unless params[:business_calling].nil?
        type.voice_connector = VoiceConnectorSettings.build(params[:voice_connector], context: "#{context}[:voice_connector]") unless params[:voice_connector].nil?
        type
      end
    end

    module GetMediaCapturePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMediaCapturePipelineInput, context: context)
        type = Types::GetMediaCapturePipelineInput.new
        type.media_pipeline_id = params[:media_pipeline_id]
        type
      end
    end

    module GetMediaCapturePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMediaCapturePipelineOutput, context: context)
        type = Types::GetMediaCapturePipelineOutput.new
        type.media_capture_pipeline = MediaCapturePipeline.build(params[:media_capture_pipeline], context: "#{context}[:media_capture_pipeline]") unless params[:media_capture_pipeline].nil?
        type
      end
    end

    module GetMeetingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMeetingInput, context: context)
        type = Types::GetMeetingInput.new
        type.meeting_id = params[:meeting_id]
        type
      end
    end

    module GetMeetingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMeetingOutput, context: context)
        type = Types::GetMeetingOutput.new
        type.meeting = Meeting.build(params[:meeting], context: "#{context}[:meeting]") unless params[:meeting].nil?
        type
      end
    end

    module GetMessagingSessionEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMessagingSessionEndpointInput, context: context)
        type = Types::GetMessagingSessionEndpointInput.new
        type
      end
    end

    module GetMessagingSessionEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMessagingSessionEndpointOutput, context: context)
        type = Types::GetMessagingSessionEndpointOutput.new
        type.endpoint = MessagingSessionEndpoint.build(params[:endpoint], context: "#{context}[:endpoint]") unless params[:endpoint].nil?
        type
      end
    end

    module GetPhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPhoneNumberInput, context: context)
        type = Types::GetPhoneNumberInput.new
        type.phone_number_id = params[:phone_number_id]
        type
      end
    end

    module GetPhoneNumberOrderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPhoneNumberOrderInput, context: context)
        type = Types::GetPhoneNumberOrderInput.new
        type.phone_number_order_id = params[:phone_number_order_id]
        type
      end
    end

    module GetPhoneNumberOrderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPhoneNumberOrderOutput, context: context)
        type = Types::GetPhoneNumberOrderOutput.new
        type.phone_number_order = PhoneNumberOrder.build(params[:phone_number_order], context: "#{context}[:phone_number_order]") unless params[:phone_number_order].nil?
        type
      end
    end

    module GetPhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPhoneNumberOutput, context: context)
        type = Types::GetPhoneNumberOutput.new
        type.phone_number = PhoneNumber.build(params[:phone_number], context: "#{context}[:phone_number]") unless params[:phone_number].nil?
        type
      end
    end

    module GetPhoneNumberSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPhoneNumberSettingsInput, context: context)
        type = Types::GetPhoneNumberSettingsInput.new
        type
      end
    end

    module GetPhoneNumberSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPhoneNumberSettingsOutput, context: context)
        type = Types::GetPhoneNumberSettingsOutput.new
        type.calling_name = params[:calling_name]
        type.calling_name_updated_timestamp = params[:calling_name_updated_timestamp]
        type
      end
    end

    module GetProxySessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProxySessionInput, context: context)
        type = Types::GetProxySessionInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.proxy_session_id = params[:proxy_session_id]
        type
      end
    end

    module GetProxySessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProxySessionOutput, context: context)
        type = Types::GetProxySessionOutput.new
        type.proxy_session = ProxySession.build(params[:proxy_session], context: "#{context}[:proxy_session]") unless params[:proxy_session].nil?
        type
      end
    end

    module GetRetentionSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRetentionSettingsInput, context: context)
        type = Types::GetRetentionSettingsInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module GetRetentionSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRetentionSettingsOutput, context: context)
        type = Types::GetRetentionSettingsOutput.new
        type.retention_settings = RetentionSettings.build(params[:retention_settings], context: "#{context}[:retention_settings]") unless params[:retention_settings].nil?
        type.initiate_deletion_timestamp = params[:initiate_deletion_timestamp]
        type
      end
    end

    module GetRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoomInput, context: context)
        type = Types::GetRoomInput.new
        type.account_id = params[:account_id]
        type.room_id = params[:room_id]
        type
      end
    end

    module GetRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoomOutput, context: context)
        type = Types::GetRoomOutput.new
        type.room = Room.build(params[:room], context: "#{context}[:room]") unless params[:room].nil?
        type
      end
    end

    module GetSipMediaApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSipMediaApplicationInput, context: context)
        type = Types::GetSipMediaApplicationInput.new
        type.sip_media_application_id = params[:sip_media_application_id]
        type
      end
    end

    module GetSipMediaApplicationLoggingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSipMediaApplicationLoggingConfigurationInput, context: context)
        type = Types::GetSipMediaApplicationLoggingConfigurationInput.new
        type.sip_media_application_id = params[:sip_media_application_id]
        type
      end
    end

    module GetSipMediaApplicationLoggingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSipMediaApplicationLoggingConfigurationOutput, context: context)
        type = Types::GetSipMediaApplicationLoggingConfigurationOutput.new
        type.sip_media_application_logging_configuration = SipMediaApplicationLoggingConfiguration.build(params[:sip_media_application_logging_configuration], context: "#{context}[:sip_media_application_logging_configuration]") unless params[:sip_media_application_logging_configuration].nil?
        type
      end
    end

    module GetSipMediaApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSipMediaApplicationOutput, context: context)
        type = Types::GetSipMediaApplicationOutput.new
        type.sip_media_application = SipMediaApplication.build(params[:sip_media_application], context: "#{context}[:sip_media_application]") unless params[:sip_media_application].nil?
        type
      end
    end

    module GetSipRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSipRuleInput, context: context)
        type = Types::GetSipRuleInput.new
        type.sip_rule_id = params[:sip_rule_id]
        type
      end
    end

    module GetSipRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSipRuleOutput, context: context)
        type = Types::GetSipRuleOutput.new
        type.sip_rule = SipRule.build(params[:sip_rule], context: "#{context}[:sip_rule]") unless params[:sip_rule].nil?
        type
      end
    end

    module GetUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserInput, context: context)
        type = Types::GetUserInput.new
        type.account_id = params[:account_id]
        type.user_id = params[:user_id]
        type
      end
    end

    module GetUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserOutput, context: context)
        type = Types::GetUserOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module GetUserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserSettingsInput, context: context)
        type = Types::GetUserSettingsInput.new
        type.account_id = params[:account_id]
        type.user_id = params[:user_id]
        type
      end
    end

    module GetUserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserSettingsOutput, context: context)
        type = Types::GetUserSettingsOutput.new
        type.user_settings = UserSettings.build(params[:user_settings], context: "#{context}[:user_settings]") unless params[:user_settings].nil?
        type
      end
    end

    module GetVoiceConnectorEmergencyCallingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorEmergencyCallingConfigurationInput, context: context)
        type = Types::GetVoiceConnectorEmergencyCallingConfigurationInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type
      end
    end

    module GetVoiceConnectorEmergencyCallingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorEmergencyCallingConfigurationOutput, context: context)
        type = Types::GetVoiceConnectorEmergencyCallingConfigurationOutput.new
        type.emergency_calling_configuration = EmergencyCallingConfiguration.build(params[:emergency_calling_configuration], context: "#{context}[:emergency_calling_configuration]") unless params[:emergency_calling_configuration].nil?
        type
      end
    end

    module GetVoiceConnectorGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorGroupInput, context: context)
        type = Types::GetVoiceConnectorGroupInput.new
        type.voice_connector_group_id = params[:voice_connector_group_id]
        type
      end
    end

    module GetVoiceConnectorGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorGroupOutput, context: context)
        type = Types::GetVoiceConnectorGroupOutput.new
        type.voice_connector_group = VoiceConnectorGroup.build(params[:voice_connector_group], context: "#{context}[:voice_connector_group]") unless params[:voice_connector_group].nil?
        type
      end
    end

    module GetVoiceConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorInput, context: context)
        type = Types::GetVoiceConnectorInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type
      end
    end

    module GetVoiceConnectorLoggingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorLoggingConfigurationInput, context: context)
        type = Types::GetVoiceConnectorLoggingConfigurationInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type
      end
    end

    module GetVoiceConnectorLoggingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorLoggingConfigurationOutput, context: context)
        type = Types::GetVoiceConnectorLoggingConfigurationOutput.new
        type.logging_configuration = LoggingConfiguration.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type
      end
    end

    module GetVoiceConnectorOriginationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorOriginationInput, context: context)
        type = Types::GetVoiceConnectorOriginationInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type
      end
    end

    module GetVoiceConnectorOriginationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorOriginationOutput, context: context)
        type = Types::GetVoiceConnectorOriginationOutput.new
        type.origination = Origination.build(params[:origination], context: "#{context}[:origination]") unless params[:origination].nil?
        type
      end
    end

    module GetVoiceConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorOutput, context: context)
        type = Types::GetVoiceConnectorOutput.new
        type.voice_connector = VoiceConnector.build(params[:voice_connector], context: "#{context}[:voice_connector]") unless params[:voice_connector].nil?
        type
      end
    end

    module GetVoiceConnectorProxyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorProxyInput, context: context)
        type = Types::GetVoiceConnectorProxyInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type
      end
    end

    module GetVoiceConnectorProxyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorProxyOutput, context: context)
        type = Types::GetVoiceConnectorProxyOutput.new
        type.proxy = Proxy.build(params[:proxy], context: "#{context}[:proxy]") unless params[:proxy].nil?
        type
      end
    end

    module GetVoiceConnectorStreamingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorStreamingConfigurationInput, context: context)
        type = Types::GetVoiceConnectorStreamingConfigurationInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type
      end
    end

    module GetVoiceConnectorStreamingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorStreamingConfigurationOutput, context: context)
        type = Types::GetVoiceConnectorStreamingConfigurationOutput.new
        type.streaming_configuration = StreamingConfiguration.build(params[:streaming_configuration], context: "#{context}[:streaming_configuration]") unless params[:streaming_configuration].nil?
        type
      end
    end

    module GetVoiceConnectorTerminationHealthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorTerminationHealthInput, context: context)
        type = Types::GetVoiceConnectorTerminationHealthInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type
      end
    end

    module GetVoiceConnectorTerminationHealthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorTerminationHealthOutput, context: context)
        type = Types::GetVoiceConnectorTerminationHealthOutput.new
        type.termination_health = TerminationHealth.build(params[:termination_health], context: "#{context}[:termination_health]") unless params[:termination_health].nil?
        type
      end
    end

    module GetVoiceConnectorTerminationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorTerminationInput, context: context)
        type = Types::GetVoiceConnectorTerminationInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type
      end
    end

    module GetVoiceConnectorTerminationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVoiceConnectorTerminationOutput, context: context)
        type = Types::GetVoiceConnectorTerminationOutput.new
        type.termination = Termination.build(params[:termination], context: "#{context}[:termination]") unless params[:termination].nil?
        type
      end
    end

    module Identity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Identity, context: context)
        type = Types::Identity.new
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module Invite
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Invite, context: context)
        type = Types::Invite.new
        type.invite_id = params[:invite_id]
        type.status = params[:status]
        type.email_address = params[:email_address]
        type.email_status = params[:email_status]
        type
      end
    end

    module InviteList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Invite.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InviteUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InviteUsersInput, context: context)
        type = Types::InviteUsersInput.new
        type.account_id = params[:account_id]
        type.user_email_list = UserEmailList.build(params[:user_email_list], context: "#{context}[:user_email_list]") unless params[:user_email_list].nil?
        type.user_type = params[:user_type]
        type
      end
    end

    module InviteUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InviteUsersOutput, context: context)
        type = Types::InviteUsersOutput.new
        type.invites = InviteList.build(params[:invites], context: "#{context}[:invites]") unless params[:invites].nil?
        type
      end
    end

    module LicenseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListAccountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountsInput, context: context)
        type = Types::ListAccountsInput.new
        type.name = params[:name]
        type.user_email = params[:user_email]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAccountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountsOutput, context: context)
        type = Types::ListAccountsOutput.new
        type.accounts = AccountList.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppInstanceAdminsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppInstanceAdminsInput, context: context)
        type = Types::ListAppInstanceAdminsInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppInstanceAdminsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppInstanceAdminsOutput, context: context)
        type = Types::ListAppInstanceAdminsOutput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.app_instance_admins = AppInstanceAdminList.build(params[:app_instance_admins], context: "#{context}[:app_instance_admins]") unless params[:app_instance_admins].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppInstanceUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppInstanceUsersInput, context: context)
        type = Types::ListAppInstanceUsersInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppInstanceUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppInstanceUsersOutput, context: context)
        type = Types::ListAppInstanceUsersOutput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.app_instance_users = AppInstanceUserList.build(params[:app_instance_users], context: "#{context}[:app_instance_users]") unless params[:app_instance_users].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppInstancesInput, context: context)
        type = Types::ListAppInstancesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppInstancesOutput, context: context)
        type = Types::ListAppInstancesOutput.new
        type.app_instances = AppInstanceList.build(params[:app_instances], context: "#{context}[:app_instances]") unless params[:app_instances].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAttendeeTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttendeeTagsInput, context: context)
        type = Types::ListAttendeeTagsInput.new
        type.meeting_id = params[:meeting_id]
        type.attendee_id = params[:attendee_id]
        type
      end
    end

    module ListAttendeeTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttendeeTagsOutput, context: context)
        type = Types::ListAttendeeTagsOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListAttendeesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttendeesInput, context: context)
        type = Types::ListAttendeesInput.new
        type.meeting_id = params[:meeting_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAttendeesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttendeesOutput, context: context)
        type = Types::ListAttendeesOutput.new
        type.attendees = AttendeeList.build(params[:attendees], context: "#{context}[:attendees]") unless params[:attendees].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBotsInput, context: context)
        type = Types::ListBotsInput.new
        type.account_id = params[:account_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBotsOutput, context: context)
        type = Types::ListBotsOutput.new
        type.bots = BotList.build(params[:bots], context: "#{context}[:bots]") unless params[:bots].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListChannelBansInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelBansInput, context: context)
        type = Types::ListChannelBansInput.new
        type.channel_arn = params[:channel_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module ListChannelBansOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelBansOutput, context: context)
        type = Types::ListChannelBansOutput.new
        type.channel_arn = params[:channel_arn]
        type.next_token = params[:next_token]
        type.channel_bans = ChannelBanSummaryList.build(params[:channel_bans], context: "#{context}[:channel_bans]") unless params[:channel_bans].nil?
        type
      end
    end

    module ListChannelMembershipsForAppInstanceUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelMembershipsForAppInstanceUserInput, context: context)
        type = Types::ListChannelMembershipsForAppInstanceUserInput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module ListChannelMembershipsForAppInstanceUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelMembershipsForAppInstanceUserOutput, context: context)
        type = Types::ListChannelMembershipsForAppInstanceUserOutput.new
        type.channel_memberships = ChannelMembershipForAppInstanceUserSummaryList.build(params[:channel_memberships], context: "#{context}[:channel_memberships]") unless params[:channel_memberships].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListChannelMembershipsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelMembershipsInput, context: context)
        type = Types::ListChannelMembershipsInput.new
        type.channel_arn = params[:channel_arn]
        type.type = params[:type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module ListChannelMembershipsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelMembershipsOutput, context: context)
        type = Types::ListChannelMembershipsOutput.new
        type.channel_arn = params[:channel_arn]
        type.channel_memberships = ChannelMembershipSummaryList.build(params[:channel_memberships], context: "#{context}[:channel_memberships]") unless params[:channel_memberships].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListChannelMessagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelMessagesInput, context: context)
        type = Types::ListChannelMessagesInput.new
        type.channel_arn = params[:channel_arn]
        type.sort_order = params[:sort_order]
        type.not_before = params[:not_before]
        type.not_after = params[:not_after]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module ListChannelMessagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelMessagesOutput, context: context)
        type = Types::ListChannelMessagesOutput.new
        type.channel_arn = params[:channel_arn]
        type.next_token = params[:next_token]
        type.channel_messages = ChannelMessageSummaryList.build(params[:channel_messages], context: "#{context}[:channel_messages]") unless params[:channel_messages].nil?
        type
      end
    end

    module ListChannelModeratorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelModeratorsInput, context: context)
        type = Types::ListChannelModeratorsInput.new
        type.channel_arn = params[:channel_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module ListChannelModeratorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelModeratorsOutput, context: context)
        type = Types::ListChannelModeratorsOutput.new
        type.channel_arn = params[:channel_arn]
        type.next_token = params[:next_token]
        type.channel_moderators = ChannelModeratorSummaryList.build(params[:channel_moderators], context: "#{context}[:channel_moderators]") unless params[:channel_moderators].nil?
        type
      end
    end

    module ListChannelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelsInput, context: context)
        type = Types::ListChannelsInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.privacy = params[:privacy]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module ListChannelsModeratedByAppInstanceUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelsModeratedByAppInstanceUserInput, context: context)
        type = Types::ListChannelsModeratedByAppInstanceUserInput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module ListChannelsModeratedByAppInstanceUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelsModeratedByAppInstanceUserOutput, context: context)
        type = Types::ListChannelsModeratedByAppInstanceUserOutput.new
        type.channels = ChannelModeratedByAppInstanceUserSummaryList.build(params[:channels], context: "#{context}[:channels]") unless params[:channels].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListChannelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelsOutput, context: context)
        type = Types::ListChannelsOutput.new
        type.channels = ChannelSummaryList.build(params[:channels], context: "#{context}[:channels]") unless params[:channels].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMediaCapturePipelinesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMediaCapturePipelinesInput, context: context)
        type = Types::ListMediaCapturePipelinesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListMediaCapturePipelinesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMediaCapturePipelinesOutput, context: context)
        type = Types::ListMediaCapturePipelinesOutput.new
        type.media_capture_pipelines = MediaCapturePipelineList.build(params[:media_capture_pipelines], context: "#{context}[:media_capture_pipelines]") unless params[:media_capture_pipelines].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMeetingTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMeetingTagsInput, context: context)
        type = Types::ListMeetingTagsInput.new
        type.meeting_id = params[:meeting_id]
        type
      end
    end

    module ListMeetingTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMeetingTagsOutput, context: context)
        type = Types::ListMeetingTagsOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListMeetingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMeetingsInput, context: context)
        type = Types::ListMeetingsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListMeetingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMeetingsOutput, context: context)
        type = Types::ListMeetingsOutput.new
        type.meetings = MeetingList.build(params[:meetings], context: "#{context}[:meetings]") unless params[:meetings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPhoneNumberOrdersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPhoneNumberOrdersInput, context: context)
        type = Types::ListPhoneNumberOrdersInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPhoneNumberOrdersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPhoneNumberOrdersOutput, context: context)
        type = Types::ListPhoneNumberOrdersOutput.new
        type.phone_number_orders = PhoneNumberOrderList.build(params[:phone_number_orders], context: "#{context}[:phone_number_orders]") unless params[:phone_number_orders].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPhoneNumbersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPhoneNumbersInput, context: context)
        type = Types::ListPhoneNumbersInput.new
        type.status = params[:status]
        type.product_type = params[:product_type]
        type.filter_name = params[:filter_name]
        type.filter_value = params[:filter_value]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPhoneNumbersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPhoneNumbersOutput, context: context)
        type = Types::ListPhoneNumbersOutput.new
        type.phone_numbers = PhoneNumberList.build(params[:phone_numbers], context: "#{context}[:phone_numbers]") unless params[:phone_numbers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProxySessionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProxySessionsInput, context: context)
        type = Types::ListProxySessionsInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.status = params[:status]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListProxySessionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProxySessionsOutput, context: context)
        type = Types::ListProxySessionsOutput.new
        type.proxy_sessions = ProxySessions.build(params[:proxy_sessions], context: "#{context}[:proxy_sessions]") unless params[:proxy_sessions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRoomMembershipsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoomMembershipsInput, context: context)
        type = Types::ListRoomMembershipsInput.new
        type.account_id = params[:account_id]
        type.room_id = params[:room_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRoomMembershipsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoomMembershipsOutput, context: context)
        type = Types::ListRoomMembershipsOutput.new
        type.room_memberships = RoomMembershipList.build(params[:room_memberships], context: "#{context}[:room_memberships]") unless params[:room_memberships].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRoomsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoomsInput, context: context)
        type = Types::ListRoomsInput.new
        type.account_id = params[:account_id]
        type.member_id = params[:member_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRoomsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoomsOutput, context: context)
        type = Types::ListRoomsOutput.new
        type.rooms = RoomList.build(params[:rooms], context: "#{context}[:rooms]") unless params[:rooms].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSipMediaApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSipMediaApplicationsInput, context: context)
        type = Types::ListSipMediaApplicationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSipMediaApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSipMediaApplicationsOutput, context: context)
        type = Types::ListSipMediaApplicationsOutput.new
        type.sip_media_applications = SipMediaApplicationList.build(params[:sip_media_applications], context: "#{context}[:sip_media_applications]") unless params[:sip_media_applications].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSipRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSipRulesInput, context: context)
        type = Types::ListSipRulesInput.new
        type.sip_media_application_id = params[:sip_media_application_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSipRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSipRulesOutput, context: context)
        type = Types::ListSipRulesOutput.new
        type.sip_rules = SipRuleList.build(params[:sip_rules], context: "#{context}[:sip_rules]") unless params[:sip_rules].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSupportedPhoneNumberCountriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSupportedPhoneNumberCountriesInput, context: context)
        type = Types::ListSupportedPhoneNumberCountriesInput.new
        type.product_type = params[:product_type]
        type
      end
    end

    module ListSupportedPhoneNumberCountriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSupportedPhoneNumberCountriesOutput, context: context)
        type = Types::ListSupportedPhoneNumberCountriesOutput.new
        type.phone_number_countries = PhoneNumberCountriesList.build(params[:phone_number_countries], context: "#{context}[:phone_number_countries]") unless params[:phone_number_countries].nil?
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

    module ListUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersInput, context: context)
        type = Types::ListUsersInput.new
        type.account_id = params[:account_id]
        type.user_email = params[:user_email]
        type.user_type = params[:user_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersOutput, context: context)
        type = Types::ListUsersOutput.new
        type.users = UserList.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListVoiceConnectorGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVoiceConnectorGroupsInput, context: context)
        type = Types::ListVoiceConnectorGroupsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListVoiceConnectorGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVoiceConnectorGroupsOutput, context: context)
        type = Types::ListVoiceConnectorGroupsOutput.new
        type.voice_connector_groups = VoiceConnectorGroupList.build(params[:voice_connector_groups], context: "#{context}[:voice_connector_groups]") unless params[:voice_connector_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListVoiceConnectorTerminationCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVoiceConnectorTerminationCredentialsInput, context: context)
        type = Types::ListVoiceConnectorTerminationCredentialsInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type
      end
    end

    module ListVoiceConnectorTerminationCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVoiceConnectorTerminationCredentialsOutput, context: context)
        type = Types::ListVoiceConnectorTerminationCredentialsOutput.new
        type.usernames = SensitiveStringList.build(params[:usernames], context: "#{context}[:usernames]") unless params[:usernames].nil?
        type
      end
    end

    module ListVoiceConnectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVoiceConnectorsInput, context: context)
        type = Types::ListVoiceConnectorsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListVoiceConnectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVoiceConnectorsOutput, context: context)
        type = Types::ListVoiceConnectorsOutput.new
        type.voice_connectors = VoiceConnectorList.build(params[:voice_connectors], context: "#{context}[:voice_connectors]") unless params[:voice_connectors].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LoggingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingConfiguration, context: context)
        type = Types::LoggingConfiguration.new
        type.enable_sip_logs = params[:enable_sip_logs]
        type.enable_media_metric_logs = params[:enable_media_metric_logs]
        type
      end
    end

    module LogoutUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogoutUserInput, context: context)
        type = Types::LogoutUserInput.new
        type.account_id = params[:account_id]
        type.user_id = params[:user_id]
        type
      end
    end

    module LogoutUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogoutUserOutput, context: context)
        type = Types::LogoutUserOutput.new
        type
      end
    end

    module MediaCapturePipeline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaCapturePipeline, context: context)
        type = Types::MediaCapturePipeline.new
        type.media_pipeline_id = params[:media_pipeline_id]
        type.source_type = params[:source_type]
        type.source_arn = params[:source_arn]
        type.status = params[:status]
        type.sink_type = params[:sink_type]
        type.sink_arn = params[:sink_arn]
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type.chime_sdk_meeting_configuration = ChimeSdkMeetingConfiguration.build(params[:chime_sdk_meeting_configuration], context: "#{context}[:chime_sdk_meeting_configuration]") unless params[:chime_sdk_meeting_configuration].nil?
        type
      end
    end

    module MediaCapturePipelineList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MediaCapturePipeline.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MediaPlacement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MediaPlacement, context: context)
        type = Types::MediaPlacement.new
        type.audio_host_url = params[:audio_host_url]
        type.audio_fallback_url = params[:audio_fallback_url]
        type.screen_data_url = params[:screen_data_url]
        type.screen_sharing_url = params[:screen_sharing_url]
        type.screen_viewing_url = params[:screen_viewing_url]
        type.signaling_url = params[:signaling_url]
        type.turn_control_url = params[:turn_control_url]
        type.event_ingestion_url = params[:event_ingestion_url]
        type
      end
    end

    module Meeting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Meeting, context: context)
        type = Types::Meeting.new
        type.meeting_id = params[:meeting_id]
        type.external_meeting_id = params[:external_meeting_id]
        type.media_placement = MediaPlacement.build(params[:media_placement], context: "#{context}[:media_placement]") unless params[:media_placement].nil?
        type.media_region = params[:media_region]
        type
      end
    end

    module MeetingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Meeting.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MeetingNotificationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MeetingNotificationConfiguration, context: context)
        type = Types::MeetingNotificationConfiguration.new
        type.sns_topic_arn = params[:sns_topic_arn]
        type.sqs_queue_arn = params[:sqs_queue_arn]
        type
      end
    end

    module MeetingTagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MeetingTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Member
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Member, context: context)
        type = Types::Member.new
        type.member_id = params[:member_id]
        type.member_type = params[:member_type]
        type.email = params[:email]
        type.full_name = params[:full_name]
        type.account_id = params[:account_id]
        type
      end
    end

    module MemberArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MemberError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberError, context: context)
        type = Types::MemberError.new
        type.member_id = params[:member_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module MemberErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MemberError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Members
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Identity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MembershipItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MembershipItem, context: context)
        type = Types::MembershipItem.new
        type.member_id = params[:member_id]
        type.role = params[:role]
        type
      end
    end

    module MembershipItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MembershipItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MessagingSessionEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessagingSessionEndpoint, context: context)
        type = Types::MessagingSessionEndpoint.new
        type.url = params[:url]
        type
      end
    end

    module NonEmptyStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module OrderedPhoneNumber
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrderedPhoneNumber, context: context)
        type = Types::OrderedPhoneNumber.new
        type.e164_phone_number = params[:e164_phone_number]
        type.status = params[:status]
        type
      end
    end

    module OrderedPhoneNumberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrderedPhoneNumber.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Origination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Origination, context: context)
        type = Types::Origination.new
        type.routes = OriginationRouteList.build(params[:routes], context: "#{context}[:routes]") unless params[:routes].nil?
        type.disabled = params[:disabled]
        type
      end
    end

    module OriginationRoute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OriginationRoute, context: context)
        type = Types::OriginationRoute.new
        type.host = params[:host]
        type.port = params[:port]
        type.protocol = params[:protocol]
        type.priority = params[:priority]
        type.weight = params[:weight]
        type
      end
    end

    module OriginationRouteList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OriginationRoute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Participant
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Participant, context: context)
        type = Types::Participant.new
        type.phone_number = params[:phone_number]
        type.proxy_phone_number = params[:proxy_phone_number]
        type
      end
    end

    module ParticipantPhoneNumberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Participants
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Participant.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PhoneNumber
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhoneNumber, context: context)
        type = Types::PhoneNumber.new
        type.phone_number_id = params[:phone_number_id]
        type.e164_phone_number = params[:e164_phone_number]
        type.country = params[:country]
        type.type = params[:type]
        type.product_type = params[:product_type]
        type.status = params[:status]
        type.capabilities = PhoneNumberCapabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.associations = PhoneNumberAssociationList.build(params[:associations], context: "#{context}[:associations]") unless params[:associations].nil?
        type.calling_name = params[:calling_name]
        type.calling_name_status = params[:calling_name_status]
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type.deletion_timestamp = params[:deletion_timestamp]
        type
      end
    end

    module PhoneNumberAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhoneNumberAssociation, context: context)
        type = Types::PhoneNumberAssociation.new
        type.value = params[:value]
        type.name = params[:name]
        type.associated_timestamp = params[:associated_timestamp]
        type
      end
    end

    module PhoneNumberAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PhoneNumberAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PhoneNumberCapabilities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhoneNumberCapabilities, context: context)
        type = Types::PhoneNumberCapabilities.new
        type.inbound_call = params[:inbound_call]
        type.outbound_call = params[:outbound_call]
        type.inbound_sms = params[:inbound_sms]
        type.outbound_sms = params[:outbound_sms]
        type.inbound_mms = params[:inbound_mms]
        type.outbound_mms = params[:outbound_mms]
        type
      end
    end

    module PhoneNumberCountriesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PhoneNumberCountry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PhoneNumberCountry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhoneNumberCountry, context: context)
        type = Types::PhoneNumberCountry.new
        type.country_code = params[:country_code]
        type.supported_phone_number_types = PhoneNumberTypeList.build(params[:supported_phone_number_types], context: "#{context}[:supported_phone_number_types]") unless params[:supported_phone_number_types].nil?
        type
      end
    end

    module PhoneNumberError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhoneNumberError, context: context)
        type = Types::PhoneNumberError.new
        type.phone_number_id = params[:phone_number_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module PhoneNumberErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PhoneNumberError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PhoneNumberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PhoneNumber.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PhoneNumberOrder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhoneNumberOrder, context: context)
        type = Types::PhoneNumberOrder.new
        type.phone_number_order_id = params[:phone_number_order_id]
        type.product_type = params[:product_type]
        type.status = params[:status]
        type.ordered_phone_numbers = OrderedPhoneNumberList.build(params[:ordered_phone_numbers], context: "#{context}[:ordered_phone_numbers]") unless params[:ordered_phone_numbers].nil?
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type
      end
    end

    module PhoneNumberOrderList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PhoneNumberOrder.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PhoneNumberTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Proxy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Proxy, context: context)
        type = Types::Proxy.new
        type.default_session_expiry_minutes = params[:default_session_expiry_minutes]
        type.disabled = params[:disabled]
        type.fall_back_phone_number = params[:fall_back_phone_number]
        type.phone_number_countries = StringList.build(params[:phone_number_countries], context: "#{context}[:phone_number_countries]") unless params[:phone_number_countries].nil?
        type
      end
    end

    module ProxySession
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProxySession, context: context)
        type = Types::ProxySession.new
        type.voice_connector_id = params[:voice_connector_id]
        type.proxy_session_id = params[:proxy_session_id]
        type.name = params[:name]
        type.status = params[:status]
        type.expiry_minutes = params[:expiry_minutes]
        type.capabilities = CapabilityList.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type.ended_timestamp = params[:ended_timestamp]
        type.participants = Participants.build(params[:participants], context: "#{context}[:participants]") unless params[:participants].nil?
        type.number_selection_behavior = params[:number_selection_behavior]
        type.geo_match_level = params[:geo_match_level]
        type.geo_match_params = GeoMatchParams.build(params[:geo_match_params], context: "#{context}[:geo_match_params]") unless params[:geo_match_params].nil?
        type
      end
    end

    module ProxySessions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProxySession.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutAppInstanceRetentionSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAppInstanceRetentionSettingsInput, context: context)
        type = Types::PutAppInstanceRetentionSettingsInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.app_instance_retention_settings = AppInstanceRetentionSettings.build(params[:app_instance_retention_settings], context: "#{context}[:app_instance_retention_settings]") unless params[:app_instance_retention_settings].nil?
        type
      end
    end

    module PutAppInstanceRetentionSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAppInstanceRetentionSettingsOutput, context: context)
        type = Types::PutAppInstanceRetentionSettingsOutput.new
        type.app_instance_retention_settings = AppInstanceRetentionSettings.build(params[:app_instance_retention_settings], context: "#{context}[:app_instance_retention_settings]") unless params[:app_instance_retention_settings].nil?
        type.initiate_deletion_timestamp = params[:initiate_deletion_timestamp]
        type
      end
    end

    module PutAppInstanceStreamingConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAppInstanceStreamingConfigurationsInput, context: context)
        type = Types::PutAppInstanceStreamingConfigurationsInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.app_instance_streaming_configurations = AppInstanceStreamingConfigurationList.build(params[:app_instance_streaming_configurations], context: "#{context}[:app_instance_streaming_configurations]") unless params[:app_instance_streaming_configurations].nil?
        type
      end
    end

    module PutAppInstanceStreamingConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAppInstanceStreamingConfigurationsOutput, context: context)
        type = Types::PutAppInstanceStreamingConfigurationsOutput.new
        type.app_instance_streaming_configurations = AppInstanceStreamingConfigurationList.build(params[:app_instance_streaming_configurations], context: "#{context}[:app_instance_streaming_configurations]") unless params[:app_instance_streaming_configurations].nil?
        type
      end
    end

    module PutEventsConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventsConfigurationInput, context: context)
        type = Types::PutEventsConfigurationInput.new
        type.account_id = params[:account_id]
        type.bot_id = params[:bot_id]
        type.outbound_events_https_endpoint = params[:outbound_events_https_endpoint]
        type.lambda_function_arn = params[:lambda_function_arn]
        type
      end
    end

    module PutEventsConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventsConfigurationOutput, context: context)
        type = Types::PutEventsConfigurationOutput.new
        type.events_configuration = EventsConfiguration.build(params[:events_configuration], context: "#{context}[:events_configuration]") unless params[:events_configuration].nil?
        type
      end
    end

    module PutRetentionSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRetentionSettingsInput, context: context)
        type = Types::PutRetentionSettingsInput.new
        type.account_id = params[:account_id]
        type.retention_settings = RetentionSettings.build(params[:retention_settings], context: "#{context}[:retention_settings]") unless params[:retention_settings].nil?
        type
      end
    end

    module PutRetentionSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRetentionSettingsOutput, context: context)
        type = Types::PutRetentionSettingsOutput.new
        type.retention_settings = RetentionSettings.build(params[:retention_settings], context: "#{context}[:retention_settings]") unless params[:retention_settings].nil?
        type.initiate_deletion_timestamp = params[:initiate_deletion_timestamp]
        type
      end
    end

    module PutSipMediaApplicationLoggingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSipMediaApplicationLoggingConfigurationInput, context: context)
        type = Types::PutSipMediaApplicationLoggingConfigurationInput.new
        type.sip_media_application_id = params[:sip_media_application_id]
        type.sip_media_application_logging_configuration = SipMediaApplicationLoggingConfiguration.build(params[:sip_media_application_logging_configuration], context: "#{context}[:sip_media_application_logging_configuration]") unless params[:sip_media_application_logging_configuration].nil?
        type
      end
    end

    module PutSipMediaApplicationLoggingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSipMediaApplicationLoggingConfigurationOutput, context: context)
        type = Types::PutSipMediaApplicationLoggingConfigurationOutput.new
        type.sip_media_application_logging_configuration = SipMediaApplicationLoggingConfiguration.build(params[:sip_media_application_logging_configuration], context: "#{context}[:sip_media_application_logging_configuration]") unless params[:sip_media_application_logging_configuration].nil?
        type
      end
    end

    module PutVoiceConnectorEmergencyCallingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVoiceConnectorEmergencyCallingConfigurationInput, context: context)
        type = Types::PutVoiceConnectorEmergencyCallingConfigurationInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.emergency_calling_configuration = EmergencyCallingConfiguration.build(params[:emergency_calling_configuration], context: "#{context}[:emergency_calling_configuration]") unless params[:emergency_calling_configuration].nil?
        type
      end
    end

    module PutVoiceConnectorEmergencyCallingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVoiceConnectorEmergencyCallingConfigurationOutput, context: context)
        type = Types::PutVoiceConnectorEmergencyCallingConfigurationOutput.new
        type.emergency_calling_configuration = EmergencyCallingConfiguration.build(params[:emergency_calling_configuration], context: "#{context}[:emergency_calling_configuration]") unless params[:emergency_calling_configuration].nil?
        type
      end
    end

    module PutVoiceConnectorLoggingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVoiceConnectorLoggingConfigurationInput, context: context)
        type = Types::PutVoiceConnectorLoggingConfigurationInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.logging_configuration = LoggingConfiguration.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type
      end
    end

    module PutVoiceConnectorLoggingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVoiceConnectorLoggingConfigurationOutput, context: context)
        type = Types::PutVoiceConnectorLoggingConfigurationOutput.new
        type.logging_configuration = LoggingConfiguration.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type
      end
    end

    module PutVoiceConnectorOriginationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVoiceConnectorOriginationInput, context: context)
        type = Types::PutVoiceConnectorOriginationInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.origination = Origination.build(params[:origination], context: "#{context}[:origination]") unless params[:origination].nil?
        type
      end
    end

    module PutVoiceConnectorOriginationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVoiceConnectorOriginationOutput, context: context)
        type = Types::PutVoiceConnectorOriginationOutput.new
        type.origination = Origination.build(params[:origination], context: "#{context}[:origination]") unless params[:origination].nil?
        type
      end
    end

    module PutVoiceConnectorProxyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVoiceConnectorProxyInput, context: context)
        type = Types::PutVoiceConnectorProxyInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.default_session_expiry_minutes = params[:default_session_expiry_minutes]
        type.phone_number_pool_countries = CountryList.build(params[:phone_number_pool_countries], context: "#{context}[:phone_number_pool_countries]") unless params[:phone_number_pool_countries].nil?
        type.fall_back_phone_number = params[:fall_back_phone_number]
        type.disabled = params[:disabled]
        type
      end
    end

    module PutVoiceConnectorProxyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVoiceConnectorProxyOutput, context: context)
        type = Types::PutVoiceConnectorProxyOutput.new
        type.proxy = Proxy.build(params[:proxy], context: "#{context}[:proxy]") unless params[:proxy].nil?
        type
      end
    end

    module PutVoiceConnectorStreamingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVoiceConnectorStreamingConfigurationInput, context: context)
        type = Types::PutVoiceConnectorStreamingConfigurationInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.streaming_configuration = StreamingConfiguration.build(params[:streaming_configuration], context: "#{context}[:streaming_configuration]") unless params[:streaming_configuration].nil?
        type
      end
    end

    module PutVoiceConnectorStreamingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVoiceConnectorStreamingConfigurationOutput, context: context)
        type = Types::PutVoiceConnectorStreamingConfigurationOutput.new
        type.streaming_configuration = StreamingConfiguration.build(params[:streaming_configuration], context: "#{context}[:streaming_configuration]") unless params[:streaming_configuration].nil?
        type
      end
    end

    module PutVoiceConnectorTerminationCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVoiceConnectorTerminationCredentialsInput, context: context)
        type = Types::PutVoiceConnectorTerminationCredentialsInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.credentials = CredentialList.build(params[:credentials], context: "#{context}[:credentials]") unless params[:credentials].nil?
        type
      end
    end

    module PutVoiceConnectorTerminationCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVoiceConnectorTerminationCredentialsOutput, context: context)
        type = Types::PutVoiceConnectorTerminationCredentialsOutput.new
        type
      end
    end

    module PutVoiceConnectorTerminationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVoiceConnectorTerminationInput, context: context)
        type = Types::PutVoiceConnectorTerminationInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.termination = Termination.build(params[:termination], context: "#{context}[:termination]") unless params[:termination].nil?
        type
      end
    end

    module PutVoiceConnectorTerminationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutVoiceConnectorTerminationOutput, context: context)
        type = Types::PutVoiceConnectorTerminationOutput.new
        type.termination = Termination.build(params[:termination], context: "#{context}[:termination]") unless params[:termination].nil?
        type
      end
    end

    module RedactChannelMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedactChannelMessageInput, context: context)
        type = Types::RedactChannelMessageInput.new
        type.channel_arn = params[:channel_arn]
        type.message_id = params[:message_id]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module RedactChannelMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedactChannelMessageOutput, context: context)
        type = Types::RedactChannelMessageOutput.new
        type.channel_arn = params[:channel_arn]
        type.message_id = params[:message_id]
        type
      end
    end

    module RedactConversationMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedactConversationMessageInput, context: context)
        type = Types::RedactConversationMessageInput.new
        type.account_id = params[:account_id]
        type.conversation_id = params[:conversation_id]
        type.message_id = params[:message_id]
        type
      end
    end

    module RedactConversationMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedactConversationMessageOutput, context: context)
        type = Types::RedactConversationMessageOutput.new
        type
      end
    end

    module RedactRoomMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedactRoomMessageInput, context: context)
        type = Types::RedactRoomMessageInput.new
        type.account_id = params[:account_id]
        type.room_id = params[:room_id]
        type.message_id = params[:message_id]
        type
      end
    end

    module RedactRoomMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedactRoomMessageOutput, context: context)
        type = Types::RedactRoomMessageOutput.new
        type
      end
    end

    module RegenerateSecurityTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegenerateSecurityTokenInput, context: context)
        type = Types::RegenerateSecurityTokenInput.new
        type.account_id = params[:account_id]
        type.bot_id = params[:bot_id]
        type
      end
    end

    module RegenerateSecurityTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegenerateSecurityTokenOutput, context: context)
        type = Types::RegenerateSecurityTokenOutput.new
        type.bot = Bot.build(params[:bot], context: "#{context}[:bot]") unless params[:bot].nil?
        type
      end
    end

    module ResetPersonalPINInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetPersonalPINInput, context: context)
        type = Types::ResetPersonalPINInput.new
        type.account_id = params[:account_id]
        type.user_id = params[:user_id]
        type
      end
    end

    module ResetPersonalPINOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetPersonalPINOutput, context: context)
        type = Types::ResetPersonalPINOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module ResourceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLimitExceededException, context: context)
        type = Types::ResourceLimitExceededException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module RestorePhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestorePhoneNumberInput, context: context)
        type = Types::RestorePhoneNumberInput.new
        type.phone_number_id = params[:phone_number_id]
        type
      end
    end

    module RestorePhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestorePhoneNumberOutput, context: context)
        type = Types::RestorePhoneNumberOutput.new
        type.phone_number = PhoneNumber.build(params[:phone_number], context: "#{context}[:phone_number]") unless params[:phone_number].nil?
        type
      end
    end

    module RetentionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetentionSettings, context: context)
        type = Types::RetentionSettings.new
        type.room_retention_settings = RoomRetentionSettings.build(params[:room_retention_settings], context: "#{context}[:room_retention_settings]") unless params[:room_retention_settings].nil?
        type.conversation_retention_settings = ConversationRetentionSettings.build(params[:conversation_retention_settings], context: "#{context}[:conversation_retention_settings]") unless params[:conversation_retention_settings].nil?
        type
      end
    end

    module Room
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Room, context: context)
        type = Types::Room.new
        type.room_id = params[:room_id]
        type.name = params[:name]
        type.account_id = params[:account_id]
        type.created_by = params[:created_by]
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type
      end
    end

    module RoomList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Room.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RoomMembership
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoomMembership, context: context)
        type = Types::RoomMembership.new
        type.room_id = params[:room_id]
        type.member = Member.build(params[:member], context: "#{context}[:member]") unless params[:member].nil?
        type.role = params[:role]
        type.invited_by = params[:invited_by]
        type.updated_timestamp = params[:updated_timestamp]
        type
      end
    end

    module RoomMembershipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoomMembership.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RoomRetentionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoomRetentionSettings, context: context)
        type = Types::RoomRetentionSettings.new
        type.retention_days = params[:retention_days]
        type
      end
    end

    module SMAUpdateCallArgumentsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module SearchAvailablePhoneNumbersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchAvailablePhoneNumbersInput, context: context)
        type = Types::SearchAvailablePhoneNumbersInput.new
        type.area_code = params[:area_code]
        type.city = params[:city]
        type.country = params[:country]
        type.state = params[:state]
        type.toll_free_prefix = params[:toll_free_prefix]
        type.phone_number_type = params[:phone_number_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchAvailablePhoneNumbersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchAvailablePhoneNumbersOutput, context: context)
        type = Types::SearchAvailablePhoneNumbersOutput.new
        type.e164_phone_numbers = E164PhoneNumberList.build(params[:e164_phone_numbers], context: "#{context}[:e164_phone_numbers]") unless params[:e164_phone_numbers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SelectedVideoStreams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelectedVideoStreams, context: context)
        type = Types::SelectedVideoStreams.new
        type.attendee_ids = AttendeeIdList.build(params[:attendee_ids], context: "#{context}[:attendee_ids]") unless params[:attendee_ids].nil?
        type.external_user_ids = ExternalUserIdList.build(params[:external_user_ids], context: "#{context}[:external_user_ids]") unless params[:external_user_ids].nil?
        type
      end
    end

    module SendChannelMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendChannelMessageInput, context: context)
        type = Types::SendChannelMessageInput.new
        type.channel_arn = params[:channel_arn]
        type.content = params[:content]
        type.type = params[:type]
        type.persistence = params[:persistence]
        type.metadata = params[:metadata]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module SendChannelMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendChannelMessageOutput, context: context)
        type = Types::SendChannelMessageOutput.new
        type.channel_arn = params[:channel_arn]
        type.message_id = params[:message_id]
        type
      end
    end

    module SensitiveStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceFailureException, context: context)
        type = Types::ServiceFailureException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module SigninDelegateGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SigninDelegateGroup, context: context)
        type = Types::SigninDelegateGroup.new
        type.group_name = params[:group_name]
        type
      end
    end

    module SigninDelegateGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SigninDelegateGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SipHeadersMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module SipMediaApplication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SipMediaApplication, context: context)
        type = Types::SipMediaApplication.new
        type.sip_media_application_id = params[:sip_media_application_id]
        type.aws_region = params[:aws_region]
        type.name = params[:name]
        type.endpoints = SipMediaApplicationEndpointList.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type
      end
    end

    module SipMediaApplicationCall
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SipMediaApplicationCall, context: context)
        type = Types::SipMediaApplicationCall.new
        type.transaction_id = params[:transaction_id]
        type
      end
    end

    module SipMediaApplicationEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SipMediaApplicationEndpoint, context: context)
        type = Types::SipMediaApplicationEndpoint.new
        type.lambda_arn = params[:lambda_arn]
        type
      end
    end

    module SipMediaApplicationEndpointList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SipMediaApplicationEndpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SipMediaApplicationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SipMediaApplication.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SipMediaApplicationLoggingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SipMediaApplicationLoggingConfiguration, context: context)
        type = Types::SipMediaApplicationLoggingConfiguration.new
        type.enable_sip_media_application_message_logs = params[:enable_sip_media_application_message_logs]
        type
      end
    end

    module SipRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SipRule, context: context)
        type = Types::SipRule.new
        type.sip_rule_id = params[:sip_rule_id]
        type.name = params[:name]
        type.disabled = params[:disabled]
        type.trigger_type = params[:trigger_type]
        type.trigger_value = params[:trigger_value]
        type.target_applications = SipRuleTargetApplicationList.build(params[:target_applications], context: "#{context}[:target_applications]") unless params[:target_applications].nil?
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type
      end
    end

    module SipRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SipRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SipRuleTargetApplication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SipRuleTargetApplication, context: context)
        type = Types::SipRuleTargetApplication.new
        type.sip_media_application_id = params[:sip_media_application_id]
        type.priority = params[:priority]
        type.aws_region = params[:aws_region]
        type
      end
    end

    module SipRuleTargetApplicationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SipRuleTargetApplication.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SourceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceConfiguration, context: context)
        type = Types::SourceConfiguration.new
        type.selected_video_streams = SelectedVideoStreams.build(params[:selected_video_streams], context: "#{context}[:selected_video_streams]") unless params[:selected_video_streams].nil?
        type
      end
    end

    module StartMeetingTranscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMeetingTranscriptionInput, context: context)
        type = Types::StartMeetingTranscriptionInput.new
        type.meeting_id = params[:meeting_id]
        type.transcription_configuration = TranscriptionConfiguration.build(params[:transcription_configuration], context: "#{context}[:transcription_configuration]") unless params[:transcription_configuration].nil?
        type
      end
    end

    module StartMeetingTranscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMeetingTranscriptionOutput, context: context)
        type = Types::StartMeetingTranscriptionOutput.new
        type
      end
    end

    module StopMeetingTranscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopMeetingTranscriptionInput, context: context)
        type = Types::StopMeetingTranscriptionInput.new
        type.meeting_id = params[:meeting_id]
        type
      end
    end

    module StopMeetingTranscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopMeetingTranscriptionOutput, context: context)
        type = Types::StopMeetingTranscriptionOutput.new
        type
      end
    end

    module StreamingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamingConfiguration, context: context)
        type = Types::StreamingConfiguration.new
        type.data_retention_in_hours = params[:data_retention_in_hours]
        type.disabled = params[:disabled]
        type.streaming_notification_targets = StreamingNotificationTargetList.build(params[:streaming_notification_targets], context: "#{context}[:streaming_notification_targets]") unless params[:streaming_notification_targets].nil?
        type
      end
    end

    module StreamingNotificationTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamingNotificationTarget, context: context)
        type = Types::StreamingNotificationTarget.new
        type.notification_target = params[:notification_target]
        type
      end
    end

    module StreamingNotificationTargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StreamingNotificationTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
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

    module TagAttendeeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagAttendeeInput, context: context)
        type = Types::TagAttendeeInput.new
        type.meeting_id = params[:meeting_id]
        type.attendee_id = params[:attendee_id]
        type.tags = AttendeeTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagAttendeeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagAttendeeOutput, context: context)
        type = Types::TagAttendeeOutput.new
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

    module TagMeetingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagMeetingInput, context: context)
        type = Types::TagMeetingInput.new
        type.meeting_id = params[:meeting_id]
        type.tags = MeetingTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagMeetingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagMeetingOutput, context: context)
        type = Types::TagMeetingOutput.new
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

    module TelephonySettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TelephonySettings, context: context)
        type = Types::TelephonySettings.new
        type.inbound_calling = params[:inbound_calling]
        type.outbound_calling = params[:outbound_calling]
        type.sms = params[:sms]
        type
      end
    end

    module Termination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Termination, context: context)
        type = Types::Termination.new
        type.cps_limit = params[:cps_limit]
        type.default_phone_number = params[:default_phone_number]
        type.calling_regions = CallingRegionList.build(params[:calling_regions], context: "#{context}[:calling_regions]") unless params[:calling_regions].nil?
        type.cidr_allowed_list = StringList.build(params[:cidr_allowed_list], context: "#{context}[:cidr_allowed_list]") unless params[:cidr_allowed_list].nil?
        type.disabled = params[:disabled]
        type
      end
    end

    module TerminationHealth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminationHealth, context: context)
        type = Types::TerminationHealth.new
        type.timestamp = params[:timestamp]
        type.source = params[:source]
        type
      end
    end

    module ThrottledClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottledClientException, context: context)
        type = Types::ThrottledClientException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module TranscriptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TranscriptionConfiguration, context: context)
        type = Types::TranscriptionConfiguration.new
        type.engine_transcribe_settings = EngineTranscribeSettings.build(params[:engine_transcribe_settings], context: "#{context}[:engine_transcribe_settings]") unless params[:engine_transcribe_settings].nil?
        type.engine_transcribe_medical_settings = EngineTranscribeMedicalSettings.build(params[:engine_transcribe_medical_settings], context: "#{context}[:engine_transcribe_medical_settings]") unless params[:engine_transcribe_medical_settings].nil?
        type
      end
    end

    module UnauthorizedClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedClientException, context: context)
        type = Types::UnauthorizedClientException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module UnprocessableEntityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnprocessableEntityException, context: context)
        type = Types::UnprocessableEntityException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module UntagAttendeeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagAttendeeInput, context: context)
        type = Types::UntagAttendeeInput.new
        type.meeting_id = params[:meeting_id]
        type.attendee_id = params[:attendee_id]
        type.tag_keys = AttendeeTagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagAttendeeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagAttendeeOutput, context: context)
        type = Types::UntagAttendeeOutput.new
        type
      end
    end

    module UntagMeetingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagMeetingInput, context: context)
        type = Types::UntagMeetingInput.new
        type.meeting_id = params[:meeting_id]
        type.tag_keys = MeetingTagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagMeetingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagMeetingOutput, context: context)
        type = Types::UntagMeetingOutput.new
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

    module UpdateAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountInput, context: context)
        type = Types::UpdateAccountInput.new
        type.account_id = params[:account_id]
        type.name = params[:name]
        type.default_license = params[:default_license]
        type
      end
    end

    module UpdateAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountOutput, context: context)
        type = Types::UpdateAccountOutput.new
        type.account = Account.build(params[:account], context: "#{context}[:account]") unless params[:account].nil?
        type
      end
    end

    module UpdateAccountSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountSettingsInput, context: context)
        type = Types::UpdateAccountSettingsInput.new
        type.account_id = params[:account_id]
        type.account_settings = AccountSettings.build(params[:account_settings], context: "#{context}[:account_settings]") unless params[:account_settings].nil?
        type
      end
    end

    module UpdateAccountSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountSettingsOutput, context: context)
        type = Types::UpdateAccountSettingsOutput.new
        type
      end
    end

    module UpdateAppInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppInstanceInput, context: context)
        type = Types::UpdateAppInstanceInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.name = params[:name]
        type.metadata = params[:metadata]
        type
      end
    end

    module UpdateAppInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppInstanceOutput, context: context)
        type = Types::UpdateAppInstanceOutput.new
        type.app_instance_arn = params[:app_instance_arn]
        type
      end
    end

    module UpdateAppInstanceUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppInstanceUserInput, context: context)
        type = Types::UpdateAppInstanceUserInput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type.name = params[:name]
        type.metadata = params[:metadata]
        type
      end
    end

    module UpdateAppInstanceUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppInstanceUserOutput, context: context)
        type = Types::UpdateAppInstanceUserOutput.new
        type.app_instance_user_arn = params[:app_instance_user_arn]
        type
      end
    end

    module UpdateBotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBotInput, context: context)
        type = Types::UpdateBotInput.new
        type.account_id = params[:account_id]
        type.bot_id = params[:bot_id]
        type.disabled = params[:disabled]
        type
      end
    end

    module UpdateBotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBotOutput, context: context)
        type = Types::UpdateBotOutput.new
        type.bot = Bot.build(params[:bot], context: "#{context}[:bot]") unless params[:bot].nil?
        type
      end
    end

    module UpdateChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelInput, context: context)
        type = Types::UpdateChannelInput.new
        type.channel_arn = params[:channel_arn]
        type.name = params[:name]
        type.mode = params[:mode]
        type.metadata = params[:metadata]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module UpdateChannelMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelMessageInput, context: context)
        type = Types::UpdateChannelMessageInput.new
        type.channel_arn = params[:channel_arn]
        type.message_id = params[:message_id]
        type.content = params[:content]
        type.metadata = params[:metadata]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module UpdateChannelMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelMessageOutput, context: context)
        type = Types::UpdateChannelMessageOutput.new
        type.channel_arn = params[:channel_arn]
        type.message_id = params[:message_id]
        type
      end
    end

    module UpdateChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelOutput, context: context)
        type = Types::UpdateChannelOutput.new
        type.channel_arn = params[:channel_arn]
        type
      end
    end

    module UpdateChannelReadMarkerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelReadMarkerInput, context: context)
        type = Types::UpdateChannelReadMarkerInput.new
        type.channel_arn = params[:channel_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module UpdateChannelReadMarkerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelReadMarkerOutput, context: context)
        type = Types::UpdateChannelReadMarkerOutput.new
        type.channel_arn = params[:channel_arn]
        type
      end
    end

    module UpdateGlobalSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGlobalSettingsInput, context: context)
        type = Types::UpdateGlobalSettingsInput.new
        type.business_calling = BusinessCallingSettings.build(params[:business_calling], context: "#{context}[:business_calling]") unless params[:business_calling].nil?
        type.voice_connector = VoiceConnectorSettings.build(params[:voice_connector], context: "#{context}[:voice_connector]") unless params[:voice_connector].nil?
        type
      end
    end

    module UpdateGlobalSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGlobalSettingsOutput, context: context)
        type = Types::UpdateGlobalSettingsOutput.new
        type
      end
    end

    module UpdatePhoneNumberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePhoneNumberInput, context: context)
        type = Types::UpdatePhoneNumberInput.new
        type.phone_number_id = params[:phone_number_id]
        type.product_type = params[:product_type]
        type.calling_name = params[:calling_name]
        type
      end
    end

    module UpdatePhoneNumberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePhoneNumberOutput, context: context)
        type = Types::UpdatePhoneNumberOutput.new
        type.phone_number = PhoneNumber.build(params[:phone_number], context: "#{context}[:phone_number]") unless params[:phone_number].nil?
        type
      end
    end

    module UpdatePhoneNumberRequestItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePhoneNumberRequestItem, context: context)
        type = Types::UpdatePhoneNumberRequestItem.new
        type.phone_number_id = params[:phone_number_id]
        type.product_type = params[:product_type]
        type.calling_name = params[:calling_name]
        type
      end
    end

    module UpdatePhoneNumberRequestItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdatePhoneNumberRequestItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdatePhoneNumberSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePhoneNumberSettingsInput, context: context)
        type = Types::UpdatePhoneNumberSettingsInput.new
        type.calling_name = params[:calling_name]
        type
      end
    end

    module UpdatePhoneNumberSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePhoneNumberSettingsOutput, context: context)
        type = Types::UpdatePhoneNumberSettingsOutput.new
        type
      end
    end

    module UpdateProxySessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProxySessionInput, context: context)
        type = Types::UpdateProxySessionInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.proxy_session_id = params[:proxy_session_id]
        type.capabilities = CapabilityList.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.expiry_minutes = params[:expiry_minutes]
        type
      end
    end

    module UpdateProxySessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProxySessionOutput, context: context)
        type = Types::UpdateProxySessionOutput.new
        type.proxy_session = ProxySession.build(params[:proxy_session], context: "#{context}[:proxy_session]") unless params[:proxy_session].nil?
        type
      end
    end

    module UpdateRoomInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoomInput, context: context)
        type = Types::UpdateRoomInput.new
        type.account_id = params[:account_id]
        type.room_id = params[:room_id]
        type.name = params[:name]
        type
      end
    end

    module UpdateRoomMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoomMembershipInput, context: context)
        type = Types::UpdateRoomMembershipInput.new
        type.account_id = params[:account_id]
        type.room_id = params[:room_id]
        type.member_id = params[:member_id]
        type.role = params[:role]
        type
      end
    end

    module UpdateRoomMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoomMembershipOutput, context: context)
        type = Types::UpdateRoomMembershipOutput.new
        type.room_membership = RoomMembership.build(params[:room_membership], context: "#{context}[:room_membership]") unless params[:room_membership].nil?
        type
      end
    end

    module UpdateRoomOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoomOutput, context: context)
        type = Types::UpdateRoomOutput.new
        type.room = Room.build(params[:room], context: "#{context}[:room]") unless params[:room].nil?
        type
      end
    end

    module UpdateSipMediaApplicationCallInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSipMediaApplicationCallInput, context: context)
        type = Types::UpdateSipMediaApplicationCallInput.new
        type.sip_media_application_id = params[:sip_media_application_id]
        type.transaction_id = params[:transaction_id]
        type.arguments = SMAUpdateCallArgumentsMap.build(params[:arguments], context: "#{context}[:arguments]") unless params[:arguments].nil?
        type
      end
    end

    module UpdateSipMediaApplicationCallOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSipMediaApplicationCallOutput, context: context)
        type = Types::UpdateSipMediaApplicationCallOutput.new
        type.sip_media_application_call = SipMediaApplicationCall.build(params[:sip_media_application_call], context: "#{context}[:sip_media_application_call]") unless params[:sip_media_application_call].nil?
        type
      end
    end

    module UpdateSipMediaApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSipMediaApplicationInput, context: context)
        type = Types::UpdateSipMediaApplicationInput.new
        type.sip_media_application_id = params[:sip_media_application_id]
        type.name = params[:name]
        type.endpoints = SipMediaApplicationEndpointList.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type
      end
    end

    module UpdateSipMediaApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSipMediaApplicationOutput, context: context)
        type = Types::UpdateSipMediaApplicationOutput.new
        type.sip_media_application = SipMediaApplication.build(params[:sip_media_application], context: "#{context}[:sip_media_application]") unless params[:sip_media_application].nil?
        type
      end
    end

    module UpdateSipRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSipRuleInput, context: context)
        type = Types::UpdateSipRuleInput.new
        type.sip_rule_id = params[:sip_rule_id]
        type.name = params[:name]
        type.disabled = params[:disabled]
        type.target_applications = SipRuleTargetApplicationList.build(params[:target_applications], context: "#{context}[:target_applications]") unless params[:target_applications].nil?
        type
      end
    end

    module UpdateSipRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSipRuleOutput, context: context)
        type = Types::UpdateSipRuleOutput.new
        type.sip_rule = SipRule.build(params[:sip_rule], context: "#{context}[:sip_rule]") unless params[:sip_rule].nil?
        type
      end
    end

    module UpdateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserInput, context: context)
        type = Types::UpdateUserInput.new
        type.account_id = params[:account_id]
        type.user_id = params[:user_id]
        type.license_type = params[:license_type]
        type.user_type = params[:user_type]
        type.alexa_for_business_metadata = AlexaForBusinessMetadata.build(params[:alexa_for_business_metadata], context: "#{context}[:alexa_for_business_metadata]") unless params[:alexa_for_business_metadata].nil?
        type
      end
    end

    module UpdateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserOutput, context: context)
        type = Types::UpdateUserOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type
      end
    end

    module UpdateUserRequestItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserRequestItem, context: context)
        type = Types::UpdateUserRequestItem.new
        type.user_id = params[:user_id]
        type.license_type = params[:license_type]
        type.user_type = params[:user_type]
        type.alexa_for_business_metadata = AlexaForBusinessMetadata.build(params[:alexa_for_business_metadata], context: "#{context}[:alexa_for_business_metadata]") unless params[:alexa_for_business_metadata].nil?
        type
      end
    end

    module UpdateUserRequestItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UpdateUserRequestItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateUserSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserSettingsInput, context: context)
        type = Types::UpdateUserSettingsInput.new
        type.account_id = params[:account_id]
        type.user_id = params[:user_id]
        type.user_settings = UserSettings.build(params[:user_settings], context: "#{context}[:user_settings]") unless params[:user_settings].nil?
        type
      end
    end

    module UpdateUserSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserSettingsOutput, context: context)
        type = Types::UpdateUserSettingsOutput.new
        type
      end
    end

    module UpdateVoiceConnectorGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVoiceConnectorGroupInput, context: context)
        type = Types::UpdateVoiceConnectorGroupInput.new
        type.voice_connector_group_id = params[:voice_connector_group_id]
        type.name = params[:name]
        type.voice_connector_items = VoiceConnectorItemList.build(params[:voice_connector_items], context: "#{context}[:voice_connector_items]") unless params[:voice_connector_items].nil?
        type
      end
    end

    module UpdateVoiceConnectorGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVoiceConnectorGroupOutput, context: context)
        type = Types::UpdateVoiceConnectorGroupOutput.new
        type.voice_connector_group = VoiceConnectorGroup.build(params[:voice_connector_group], context: "#{context}[:voice_connector_group]") unless params[:voice_connector_group].nil?
        type
      end
    end

    module UpdateVoiceConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVoiceConnectorInput, context: context)
        type = Types::UpdateVoiceConnectorInput.new
        type.voice_connector_id = params[:voice_connector_id]
        type.name = params[:name]
        type.require_encryption = params[:require_encryption]
        type
      end
    end

    module UpdateVoiceConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVoiceConnectorOutput, context: context)
        type = Types::UpdateVoiceConnectorOutput.new
        type.voice_connector = VoiceConnector.build(params[:voice_connector], context: "#{context}[:voice_connector]") unless params[:voice_connector].nil?
        type
      end
    end

    module User
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::User, context: context)
        type = Types::User.new
        type.user_id = params[:user_id]
        type.account_id = params[:account_id]
        type.primary_email = params[:primary_email]
        type.primary_provisioned_number = params[:primary_provisioned_number]
        type.display_name = params[:display_name]
        type.license_type = params[:license_type]
        type.user_type = params[:user_type]
        type.user_registration_status = params[:user_registration_status]
        type.user_invitation_status = params[:user_invitation_status]
        type.registered_on = params[:registered_on]
        type.invited_on = params[:invited_on]
        type.alexa_for_business_metadata = AlexaForBusinessMetadata.build(params[:alexa_for_business_metadata], context: "#{context}[:alexa_for_business_metadata]") unless params[:alexa_for_business_metadata].nil?
        type.personal_pin = params[:personal_pin]
        type
      end
    end

    module UserEmailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UserError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserError, context: context)
        type = Types::UserError.new
        type.user_id = params[:user_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module UserErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UserList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << User.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserSettings, context: context)
        type = Types::UserSettings.new
        type.telephony = TelephonySettings.build(params[:telephony], context: "#{context}[:telephony]") unless params[:telephony].nil?
        type
      end
    end

    module VideoArtifactsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VideoArtifactsConfiguration, context: context)
        type = Types::VideoArtifactsConfiguration.new
        type.state = params[:state]
        type.mux_type = params[:mux_type]
        type
      end
    end

    module VoiceConnector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VoiceConnector, context: context)
        type = Types::VoiceConnector.new
        type.voice_connector_id = params[:voice_connector_id]
        type.aws_region = params[:aws_region]
        type.name = params[:name]
        type.outbound_host_name = params[:outbound_host_name]
        type.require_encryption = params[:require_encryption]
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type.voice_connector_arn = params[:voice_connector_arn]
        type
      end
    end

    module VoiceConnectorGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VoiceConnectorGroup, context: context)
        type = Types::VoiceConnectorGroup.new
        type.voice_connector_group_id = params[:voice_connector_group_id]
        type.name = params[:name]
        type.voice_connector_items = VoiceConnectorItemList.build(params[:voice_connector_items], context: "#{context}[:voice_connector_items]") unless params[:voice_connector_items].nil?
        type.created_timestamp = params[:created_timestamp]
        type.updated_timestamp = params[:updated_timestamp]
        type.voice_connector_group_arn = params[:voice_connector_group_arn]
        type
      end
    end

    module VoiceConnectorGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VoiceConnectorGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VoiceConnectorItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VoiceConnectorItem, context: context)
        type = Types::VoiceConnectorItem.new
        type.voice_connector_id = params[:voice_connector_id]
        type.priority = params[:priority]
        type
      end
    end

    module VoiceConnectorItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VoiceConnectorItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VoiceConnectorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VoiceConnector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VoiceConnectorSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VoiceConnectorSettings, context: context)
        type = Types::VoiceConnectorSettings.new
        type.cdr_bucket = params[:cdr_bucket]
        type
      end
    end

  end
end
