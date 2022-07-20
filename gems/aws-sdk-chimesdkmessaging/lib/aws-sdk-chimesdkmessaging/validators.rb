# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ChimeSDKMessaging
  module Validators

    class AppInstanceUserMembershipSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppInstanceUserMembershipSummary, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:read_marker_timestamp], ::Time, context: "#{context}[:read_marker_timestamp]")
      end
    end

    class AssociateChannelFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateChannelFlowInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:channel_flow_arn], ::String, context: "#{context}[:channel_flow_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class AssociateChannelFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateChannelFlowOutput, context: context)
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
        Hearth::Validator.validate!(input[:channel_flow_arn], ::String, context: "#{context}[:channel_flow_arn]")
      end
    end

    class ChannelAssociatedWithFlowSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelAssociatedWithFlowSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:privacy], ::String, context: "#{context}[:privacy]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
      end
    end

    class ChannelAssociatedWithFlowSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChannelAssociatedWithFlowSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class ChannelFlow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelFlow, context: context)
        Hearth::Validator.validate!(input[:channel_flow_arn], ::String, context: "#{context}[:channel_flow_arn]")
        ProcessorList.validate!(input[:processors], context: "#{context}[:processors]") unless input[:processors].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_updated_timestamp], ::Time, context: "#{context}[:last_updated_timestamp]")
      end
    end

    class ChannelFlowCallbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelFlowCallbackInput, context: context)
        Hearth::Validator.validate!(input[:callback_id], ::String, context: "#{context}[:callback_id]")
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:delete_resource], ::TrueClass, ::FalseClass, context: "#{context}[:delete_resource]")
        ChannelMessageCallback.validate!(input[:channel_message], context: "#{context}[:channel_message]") unless input[:channel_message].nil?
      end
    end

    class ChannelFlowCallbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelFlowCallbackOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:callback_id], ::String, context: "#{context}[:callback_id]")
      end
    end

    class ChannelFlowSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelFlowSummary, context: context)
        Hearth::Validator.validate!(input[:channel_flow_arn], ::String, context: "#{context}[:channel_flow_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ProcessorList.validate!(input[:processors], context: "#{context}[:processors]") unless input[:processors].nil?
      end
    end

    class ChannelFlowSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChannelFlowSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChannelMemberArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
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

    class ChannelMembershipPreferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelMembershipPreferences, context: context)
        PushNotificationPreferences.validate!(input[:push_notifications], context: "#{context}[:push_notifications]") unless input[:push_notifications].nil?
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
        ChannelMessageStatusStructure.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        MessageAttributeMap.validate!(input[:message_attributes], context: "#{context}[:message_attributes]") unless input[:message_attributes].nil?
      end
    end

    class ChannelMessageCallback
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelMessageCallback, context: context)
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        PushNotificationConfiguration.validate!(input[:push_notification], context: "#{context}[:push_notification]") unless input[:push_notification].nil?
        MessageAttributeMap.validate!(input[:message_attributes], context: "#{context}[:message_attributes]") unless input[:message_attributes].nil?
      end
    end

    class ChannelMessageStatusStructure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelMessageStatusStructure, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:detail], ::String, context: "#{context}[:detail]")
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
        ChannelMessageStatusStructure.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        MessageAttributeMap.validate!(input[:message_attributes], context: "#{context}[:message_attributes]") unless input[:message_attributes].nil?
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

    class ChannelModeratorArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class CreateChannelFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelFlowInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        ProcessorList.validate!(input[:processors], context: "#{context}[:processors]") unless input[:processors].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreateChannelFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChannelFlowOutput, context: context)
        Hearth::Validator.validate!(input[:channel_flow_arn], ::String, context: "#{context}[:channel_flow_arn]")
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
        Hearth::Validator.validate!(input[:channel_id], ::String, context: "#{context}[:channel_id]")
        ChannelMemberArns.validate!(input[:member_arns], context: "#{context}[:member_arns]") unless input[:member_arns].nil?
        ChannelModeratorArns.validate!(input[:moderator_arns], context: "#{context}[:moderator_arns]") unless input[:moderator_arns].nil?
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

    class DeleteChannelFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelFlowInput, context: context)
        Hearth::Validator.validate!(input[:channel_flow_arn], ::String, context: "#{context}[:channel_flow_arn]")
      end
    end

    class DeleteChannelFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteChannelFlowOutput, context: context)
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

    class DescribeChannelFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelFlowInput, context: context)
        Hearth::Validator.validate!(input[:channel_flow_arn], ::String, context: "#{context}[:channel_flow_arn]")
      end
    end

    class DescribeChannelFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeChannelFlowOutput, context: context)
        ChannelFlow.validate!(input[:channel_flow], context: "#{context}[:channel_flow]") unless input[:channel_flow].nil?
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

    class DisassociateChannelFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateChannelFlowInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:channel_flow_arn], ::String, context: "#{context}[:channel_flow_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class DisassociateChannelFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateChannelFlowOutput, context: context)
      end
    end

    class ForbiddenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ForbiddenException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetChannelMembershipPreferencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChannelMembershipPreferencesInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:member_arn], ::String, context: "#{context}[:member_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class GetChannelMembershipPreferencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChannelMembershipPreferencesOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Identity.validate!(input[:member], context: "#{context}[:member]") unless input[:member].nil?
        ChannelMembershipPreferences.validate!(input[:preferences], context: "#{context}[:preferences]") unless input[:preferences].nil?
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

    class GetChannelMessageStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChannelMessageStatusInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
      end
    end

    class GetChannelMessageStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChannelMessageStatusOutput, context: context)
        ChannelMessageStatusStructure.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
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

    class Identity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Identity, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class LambdaConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaConfiguration, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:invocation_type], ::String, context: "#{context}[:invocation_type]")
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

    class ListChannelFlowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelFlowsInput, context: context)
        Hearth::Validator.validate!(input[:app_instance_arn], ::String, context: "#{context}[:app_instance_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListChannelFlowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelFlowsOutput, context: context)
        ChannelFlowSummaryList.validate!(input[:channel_flows], context: "#{context}[:channel_flows]") unless input[:channel_flows].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
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

    class ListChannelsAssociatedWithChannelFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelsAssociatedWithChannelFlowInput, context: context)
        Hearth::Validator.validate!(input[:channel_flow_arn], ::String, context: "#{context}[:channel_flow_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListChannelsAssociatedWithChannelFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChannelsAssociatedWithChannelFlowOutput, context: context)
        ChannelAssociatedWithFlowSummaryList.validate!(input[:channels], context: "#{context}[:channels]") unless input[:channels].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
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

    class MemberArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
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

    class MessageAttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          MessageAttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MessageAttributeStringValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MessageAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessageAttributeValue, context: context)
        MessageAttributeStringValues.validate!(input[:string_values], context: "#{context}[:string_values]") unless input[:string_values].nil?
      end
    end

    class MessagingSessionEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MessagingSessionEndpoint, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Processor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Processor, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ProcessorConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:execution_order], ::Integer, context: "#{context}[:execution_order]")
        Hearth::Validator.validate!(input[:fallback_action], ::String, context: "#{context}[:fallback_action]")
      end
    end

    class ProcessorConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessorConfiguration, context: context)
        LambdaConfiguration.validate!(input[:lambda], context: "#{context}[:lambda]") unless input[:lambda].nil?
      end
    end

    class ProcessorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Processor.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PushNotificationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PushNotificationConfiguration, context: context)
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class PushNotificationPreferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PushNotificationPreferences, context: context)
        Hearth::Validator.validate!(input[:allow_notifications], ::String, context: "#{context}[:allow_notifications]")
        Hearth::Validator.validate!(input[:filter_rule], ::String, context: "#{context}[:filter_rule]")
      end
    end

    class PutChannelMembershipPreferencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutChannelMembershipPreferencesInput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:member_arn], ::String, context: "#{context}[:member_arn]")
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
        ChannelMembershipPreferences.validate!(input[:preferences], context: "#{context}[:preferences]") unless input[:preferences].nil?
      end
    end

    class PutChannelMembershipPreferencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutChannelMembershipPreferencesOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Identity.validate!(input[:member], context: "#{context}[:member]") unless input[:member].nil?
        ChannelMembershipPreferences.validate!(input[:preferences], context: "#{context}[:preferences]") unless input[:preferences].nil?
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

    class ResourceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SearchChannelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchChannelsInput, context: context)
        Hearth::Validator.validate!(input[:chime_bearer], ::String, context: "#{context}[:chime_bearer]")
        SearchFields.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchChannelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchChannelsOutput, context: context)
        ChannelSummaryList.validate!(input[:channels], context: "#{context}[:channels]") unless input[:channels].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchField, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        SearchFieldValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class SearchFieldValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SearchFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SearchField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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
        PushNotificationConfiguration.validate!(input[:push_notification], context: "#{context}[:push_notification]") unless input[:push_notification].nil?
        MessageAttributeMap.validate!(input[:message_attributes], context: "#{context}[:message_attributes]") unless input[:message_attributes].nil?
      end
    end

    class SendChannelMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendChannelMessageOutput, context: context)
        Hearth::Validator.validate!(input[:channel_arn], ::String, context: "#{context}[:channel_arn]")
        Hearth::Validator.validate!(input[:message_id], ::String, context: "#{context}[:message_id]")
        ChannelMessageStatusStructure.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
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
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class ThrottledClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottledClientException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnauthorizedClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedClientException, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class UpdateChannelFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelFlowInput, context: context)
        Hearth::Validator.validate!(input[:channel_flow_arn], ::String, context: "#{context}[:channel_flow_arn]")
        ProcessorList.validate!(input[:processors], context: "#{context}[:processors]") unless input[:processors].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateChannelFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChannelFlowOutput, context: context)
        Hearth::Validator.validate!(input[:channel_flow_arn], ::String, context: "#{context}[:channel_flow_arn]")
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
        ChannelMessageStatusStructure.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
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

  end
end
