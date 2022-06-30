# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ChimeSDKMessaging
  module Params

    module AppInstanceUserMembershipSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppInstanceUserMembershipSummary, context: context)
        type = Types::AppInstanceUserMembershipSummary.new
        type.type = params[:type]
        type.read_marker_timestamp = params[:read_marker_timestamp]
        type
      end
    end

    module AssociateChannelFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateChannelFlowInput, context: context)
        type = Types::AssociateChannelFlowInput.new
        type.channel_arn = params[:channel_arn]
        type.channel_flow_arn = params[:channel_flow_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module AssociateChannelFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateChannelFlowOutput, context: context)
        type = Types::AssociateChannelFlowOutput.new
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
        type.channel_flow_arn = params[:channel_flow_arn]
        type
      end
    end

    module ChannelAssociatedWithFlowSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelAssociatedWithFlowSummary, context: context)
        type = Types::ChannelAssociatedWithFlowSummary.new
        type.name = params[:name]
        type.channel_arn = params[:channel_arn]
        type.mode = params[:mode]
        type.privacy = params[:privacy]
        type.metadata = params[:metadata]
        type
      end
    end

    module ChannelAssociatedWithFlowSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelAssociatedWithFlowSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module ChannelFlow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelFlow, context: context)
        type = Types::ChannelFlow.new
        type.channel_flow_arn = params[:channel_flow_arn]
        type.processors = ProcessorList.build(params[:processors], context: "#{context}[:processors]") unless params[:processors].nil?
        type.name = params[:name]
        type.created_timestamp = params[:created_timestamp]
        type.last_updated_timestamp = params[:last_updated_timestamp]
        type
      end
    end

    module ChannelFlowCallbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelFlowCallbackInput, context: context)
        type = Types::ChannelFlowCallbackInput.new
        type.callback_id = params[:callback_id] || SecureRandom.uuid
        type.channel_arn = params[:channel_arn]
        type.delete_resource = params[:delete_resource]
        type.channel_message = ChannelMessageCallback.build(params[:channel_message], context: "#{context}[:channel_message]") unless params[:channel_message].nil?
        type
      end
    end

    module ChannelFlowCallbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelFlowCallbackOutput, context: context)
        type = Types::ChannelFlowCallbackOutput.new
        type.channel_arn = params[:channel_arn]
        type.callback_id = params[:callback_id]
        type
      end
    end

    module ChannelFlowSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelFlowSummary, context: context)
        type = Types::ChannelFlowSummary.new
        type.channel_flow_arn = params[:channel_flow_arn]
        type.name = params[:name]
        type.processors = ProcessorList.build(params[:processors], context: "#{context}[:processors]") unless params[:processors].nil?
        type
      end
    end

    module ChannelFlowSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelFlowSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChannelMemberArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
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

    module ChannelMembershipPreferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelMembershipPreferences, context: context)
        type = Types::ChannelMembershipPreferences.new
        type.push_notifications = PushNotificationPreferences.build(params[:push_notifications], context: "#{context}[:push_notifications]") unless params[:push_notifications].nil?
        type
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
        type.status = ChannelMessageStatusStructure.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.message_attributes = MessageAttributeMap.build(params[:message_attributes], context: "#{context}[:message_attributes]") unless params[:message_attributes].nil?
        type
      end
    end

    module ChannelMessageCallback
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelMessageCallback, context: context)
        type = Types::ChannelMessageCallback.new
        type.message_id = params[:message_id]
        type.content = params[:content]
        type.metadata = params[:metadata]
        type.push_notification = PushNotificationConfiguration.build(params[:push_notification], context: "#{context}[:push_notification]") unless params[:push_notification].nil?
        type.message_attributes = MessageAttributeMap.build(params[:message_attributes], context: "#{context}[:message_attributes]") unless params[:message_attributes].nil?
        type
      end
    end

    module ChannelMessageStatusStructure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelMessageStatusStructure, context: context)
        type = Types::ChannelMessageStatusStructure.new
        type.value = params[:value]
        type.detail = params[:detail]
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
        type.status = ChannelMessageStatusStructure.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.message_attributes = MessageAttributeMap.build(params[:message_attributes], context: "#{context}[:message_attributes]") unless params[:message_attributes].nil?
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

    module ChannelModeratorArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.code = params[:code]
        type.message = params[:message]
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

    module CreateChannelFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelFlowInput, context: context)
        type = Types::CreateChannelFlowInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.processors = ProcessorList.build(params[:processors], context: "#{context}[:processors]") unless params[:processors].nil?
        type.name = params[:name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module CreateChannelFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChannelFlowOutput, context: context)
        type = Types::CreateChannelFlowOutput.new
        type.channel_flow_arn = params[:channel_flow_arn]
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
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.chime_bearer = params[:chime_bearer]
        type.channel_id = params[:channel_id]
        type.member_arns = ChannelMemberArns.build(params[:member_arns], context: "#{context}[:member_arns]") unless params[:member_arns].nil?
        type.moderator_arns = ChannelModeratorArns.build(params[:moderator_arns], context: "#{context}[:moderator_arns]") unless params[:moderator_arns].nil?
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

    module DeleteChannelFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelFlowInput, context: context)
        type = Types::DeleteChannelFlowInput.new
        type.channel_flow_arn = params[:channel_flow_arn]
        type
      end
    end

    module DeleteChannelFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteChannelFlowOutput, context: context)
        type = Types::DeleteChannelFlowOutput.new
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

    module DescribeChannelFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelFlowInput, context: context)
        type = Types::DescribeChannelFlowInput.new
        type.channel_flow_arn = params[:channel_flow_arn]
        type
      end
    end

    module DescribeChannelFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeChannelFlowOutput, context: context)
        type = Types::DescribeChannelFlowOutput.new
        type.channel_flow = ChannelFlow.build(params[:channel_flow], context: "#{context}[:channel_flow]") unless params[:channel_flow].nil?
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

    module DisassociateChannelFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateChannelFlowInput, context: context)
        type = Types::DisassociateChannelFlowInput.new
        type.channel_arn = params[:channel_arn]
        type.channel_flow_arn = params[:channel_flow_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module DisassociateChannelFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateChannelFlowOutput, context: context)
        type = Types::DisassociateChannelFlowOutput.new
        type
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

    module GetChannelMembershipPreferencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChannelMembershipPreferencesInput, context: context)
        type = Types::GetChannelMembershipPreferencesInput.new
        type.channel_arn = params[:channel_arn]
        type.member_arn = params[:member_arn]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module GetChannelMembershipPreferencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChannelMembershipPreferencesOutput, context: context)
        type = Types::GetChannelMembershipPreferencesOutput.new
        type.channel_arn = params[:channel_arn]
        type.member = Identity.build(params[:member], context: "#{context}[:member]") unless params[:member].nil?
        type.preferences = ChannelMembershipPreferences.build(params[:preferences], context: "#{context}[:preferences]") unless params[:preferences].nil?
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

    module GetChannelMessageStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChannelMessageStatusInput, context: context)
        type = Types::GetChannelMessageStatusInput.new
        type.channel_arn = params[:channel_arn]
        type.message_id = params[:message_id]
        type.chime_bearer = params[:chime_bearer]
        type
      end
    end

    module GetChannelMessageStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChannelMessageStatusOutput, context: context)
        type = Types::GetChannelMessageStatusOutput.new
        type.status = ChannelMessageStatusStructure.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
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

    module Identity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Identity, context: context)
        type = Types::Identity.new
        type.arn = params[:arn]
        type.name = params[:name]
        type
      end
    end

    module LambdaConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaConfiguration, context: context)
        type = Types::LambdaConfiguration.new
        type.resource_arn = params[:resource_arn]
        type.invocation_type = params[:invocation_type]
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

    module ListChannelFlowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelFlowsInput, context: context)
        type = Types::ListChannelFlowsInput.new
        type.app_instance_arn = params[:app_instance_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListChannelFlowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelFlowsOutput, context: context)
        type = Types::ListChannelFlowsOutput.new
        type.channel_flows = ChannelFlowSummaryList.build(params[:channel_flows], context: "#{context}[:channel_flows]") unless params[:channel_flows].nil?
        type.next_token = params[:next_token]
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

    module ListChannelsAssociatedWithChannelFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelsAssociatedWithChannelFlowInput, context: context)
        type = Types::ListChannelsAssociatedWithChannelFlowInput.new
        type.channel_flow_arn = params[:channel_flow_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListChannelsAssociatedWithChannelFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChannelsAssociatedWithChannelFlowOutput, context: context)
        type = Types::ListChannelsAssociatedWithChannelFlowOutput.new
        type.channels = ChannelAssociatedWithFlowSummaryList.build(params[:channels], context: "#{context}[:channels]") unless params[:channels].nil?
        type.next_token = params[:next_token]
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

    module MessageAttributeStringValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MessageAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MessageAttributeValue, context: context)
        type = Types::MessageAttributeValue.new
        type.string_values = MessageAttributeStringValues.build(params[:string_values], context: "#{context}[:string_values]") unless params[:string_values].nil?
        type
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

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module Processor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Processor, context: context)
        type = Types::Processor.new
        type.name = params[:name]
        type.configuration = ProcessorConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.execution_order = params[:execution_order]
        type.fallback_action = params[:fallback_action]
        type
      end
    end

    module ProcessorConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessorConfiguration, context: context)
        type = Types::ProcessorConfiguration.new
        type.lambda = LambdaConfiguration.build(params[:lambda], context: "#{context}[:lambda]") unless params[:lambda].nil?
        type
      end
    end

    module ProcessorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Processor.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PushNotificationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PushNotificationConfiguration, context: context)
        type = Types::PushNotificationConfiguration.new
        type.title = params[:title]
        type.body = params[:body]
        type.type = params[:type]
        type
      end
    end

    module PushNotificationPreferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PushNotificationPreferences, context: context)
        type = Types::PushNotificationPreferences.new
        type.allow_notifications = params[:allow_notifications]
        type.filter_rule = params[:filter_rule]
        type
      end
    end

    module PutChannelMembershipPreferencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutChannelMembershipPreferencesInput, context: context)
        type = Types::PutChannelMembershipPreferencesInput.new
        type.channel_arn = params[:channel_arn]
        type.member_arn = params[:member_arn]
        type.chime_bearer = params[:chime_bearer]
        type.preferences = ChannelMembershipPreferences.build(params[:preferences], context: "#{context}[:preferences]") unless params[:preferences].nil?
        type
      end
    end

    module PutChannelMembershipPreferencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutChannelMembershipPreferencesOutput, context: context)
        type = Types::PutChannelMembershipPreferencesOutput.new
        type.channel_arn = params[:channel_arn]
        type.member = Identity.build(params[:member], context: "#{context}[:member]") unless params[:member].nil?
        type.preferences = ChannelMembershipPreferences.build(params[:preferences], context: "#{context}[:preferences]") unless params[:preferences].nil?
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

    module ResourceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLimitExceededException, context: context)
        type = Types::ResourceLimitExceededException.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module SearchChannelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchChannelsInput, context: context)
        type = Types::SearchChannelsInput.new
        type.chime_bearer = params[:chime_bearer]
        type.fields = SearchFields.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchChannelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchChannelsOutput, context: context)
        type = Types::SearchChannelsOutput.new
        type.channels = ChannelSummaryList.build(params[:channels], context: "#{context}[:channels]") unless params[:channels].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchField, context: context)
        type = Types::SearchField.new
        type.key = params[:key]
        type.values = SearchFieldValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module SearchFieldValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SearchFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SearchField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.chime_bearer = params[:chime_bearer]
        type.push_notification = PushNotificationConfiguration.build(params[:push_notification], context: "#{context}[:push_notification]") unless params[:push_notification].nil?
        type.message_attributes = MessageAttributeMap.build(params[:message_attributes], context: "#{context}[:message_attributes]") unless params[:message_attributes].nil?
        type
      end
    end

    module SendChannelMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendChannelMessageOutput, context: context)
        type = Types::SendChannelMessageOutput.new
        type.channel_arn = params[:channel_arn]
        type.message_id = params[:message_id]
        type.status = ChannelMessageStatusStructure.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
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

    module ThrottledClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottledClientException, context: context)
        type = Types::ThrottledClientException.new
        type.code = params[:code]
        type.message = params[:message]
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

    module UpdateChannelFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelFlowInput, context: context)
        type = Types::UpdateChannelFlowInput.new
        type.channel_flow_arn = params[:channel_flow_arn]
        type.processors = ProcessorList.build(params[:processors], context: "#{context}[:processors]") unless params[:processors].nil?
        type.name = params[:name]
        type
      end
    end

    module UpdateChannelFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChannelFlowOutput, context: context)
        type = Types::UpdateChannelFlowOutput.new
        type.channel_flow_arn = params[:channel_flow_arn]
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
        type.status = ChannelMessageStatusStructure.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
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

  end
end
