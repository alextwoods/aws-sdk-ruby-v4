# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ChimeSDKMessaging
  module Parsers

    # Operation Parser for AssociateChannelFlow
    class AssociateChannelFlow
      def self.parse(http_resp)
        data = Types::AssociateChannelFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for UnauthorizedClientException
    class UnauthorizedClientException
      def self.parse(http_resp)
        data = Types::UnauthorizedClientException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottledClientException
    class ThrottledClientException
      def self.parse(http_resp)
        data = Types::ThrottledClientException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceFailureException
    class ServiceFailureException
      def self.parse(http_resp)
        data = Types::ServiceFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for BatchCreateChannelMembership
    class BatchCreateChannelMembership
      def self.parse(http_resp)
        data = Types::BatchCreateChannelMembershipOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.batch_channel_memberships = (Parsers::BatchChannelMemberships.parse(map['BatchChannelMemberships']) unless map['BatchChannelMemberships'].nil?)
        data.errors = (Parsers::BatchCreateChannelMembershipErrors.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class BatchCreateChannelMembershipErrors
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchCreateChannelMembershipError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchCreateChannelMembershipError
      def self.parse(map)
        data = Types::BatchCreateChannelMembershipError.new
        data.member_arn = map['MemberArn']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class BatchChannelMemberships
      def self.parse(map)
        data = Types::BatchChannelMemberships.new
        data.invited_by = (Parsers::Identity.parse(map['InvitedBy']) unless map['InvitedBy'].nil?)
        data.type = map['Type']
        data.members = (Parsers::Members.parse(map['Members']) unless map['Members'].nil?)
        data.channel_arn = map['ChannelArn']
        return data
      end
    end

    class Members
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Identity.parse(value) unless value.nil?
        end
        data
      end
    end

    class Identity
      def self.parse(map)
        data = Types::Identity.new
        data.arn = map['Arn']
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ChannelFlowCallback
    class ChannelFlowCallback
      def self.parse(http_resp)
        data = Types::ChannelFlowCallbackOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.callback_id = map['CallbackId']
        data
      end
    end

    # Operation Parser for CreateChannel
    class CreateChannel
      def self.parse(http_resp)
        data = Types::CreateChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data
      end
    end

    # Error Parser for ResourceLimitExceededException
    class ResourceLimitExceededException
      def self.parse(http_resp)
        data = Types::ResourceLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['Code']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateChannelBan
    class CreateChannelBan
      def self.parse(http_resp)
        data = Types::CreateChannelBanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.member = (Parsers::Identity.parse(map['Member']) unless map['Member'].nil?)
        data
      end
    end

    # Operation Parser for CreateChannelFlow
    class CreateChannelFlow
      def self.parse(http_resp)
        data = Types::CreateChannelFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_flow_arn = map['ChannelFlowArn']
        data
      end
    end

    # Operation Parser for CreateChannelMembership
    class CreateChannelMembership
      def self.parse(http_resp)
        data = Types::CreateChannelMembershipOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.member = (Parsers::Identity.parse(map['Member']) unless map['Member'].nil?)
        data
      end
    end

    # Operation Parser for CreateChannelModerator
    class CreateChannelModerator
      def self.parse(http_resp)
        data = Types::CreateChannelModeratorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.channel_moderator = (Parsers::Identity.parse(map['ChannelModerator']) unless map['ChannelModerator'].nil?)
        data
      end
    end

    # Operation Parser for DeleteChannel
    class DeleteChannel
      def self.parse(http_resp)
        data = Types::DeleteChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteChannelBan
    class DeleteChannelBan
      def self.parse(http_resp)
        data = Types::DeleteChannelBanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteChannelFlow
    class DeleteChannelFlow
      def self.parse(http_resp)
        data = Types::DeleteChannelFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteChannelMembership
    class DeleteChannelMembership
      def self.parse(http_resp)
        data = Types::DeleteChannelMembershipOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteChannelMessage
    class DeleteChannelMessage
      def self.parse(http_resp)
        data = Types::DeleteChannelMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteChannelModerator
    class DeleteChannelModerator
      def self.parse(http_resp)
        data = Types::DeleteChannelModeratorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeChannel
    class DescribeChannel
      def self.parse(http_resp)
        data = Types::DescribeChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel = (Parsers::Channel.parse(map['Channel']) unless map['Channel'].nil?)
        data
      end
    end

    class Channel
      def self.parse(map)
        data = Types::Channel.new
        data.name = map['Name']
        data.channel_arn = map['ChannelArn']
        data.mode = map['Mode']
        data.privacy = map['Privacy']
        data.metadata = map['Metadata']
        data.created_by = (Parsers::Identity.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.last_message_timestamp = Time.at(map['LastMessageTimestamp'].to_i) if map['LastMessageTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        data.channel_flow_arn = map['ChannelFlowArn']
        return data
      end
    end

    # Operation Parser for DescribeChannelBan
    class DescribeChannelBan
      def self.parse(http_resp)
        data = Types::DescribeChannelBanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_ban = (Parsers::ChannelBan.parse(map['ChannelBan']) unless map['ChannelBan'].nil?)
        data
      end
    end

    class ChannelBan
      def self.parse(map)
        data = Types::ChannelBan.new
        data.member = (Parsers::Identity.parse(map['Member']) unless map['Member'].nil?)
        data.channel_arn = map['ChannelArn']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.created_by = (Parsers::Identity.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeChannelFlow
    class DescribeChannelFlow
      def self.parse(http_resp)
        data = Types::DescribeChannelFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_flow = (Parsers::ChannelFlow.parse(map['ChannelFlow']) unless map['ChannelFlow'].nil?)
        data
      end
    end

    class ChannelFlow
      def self.parse(map)
        data = Types::ChannelFlow.new
        data.channel_flow_arn = map['ChannelFlowArn']
        data.processors = (Parsers::ProcessorList.parse(map['Processors']) unless map['Processors'].nil?)
        data.name = map['Name']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        return data
      end
    end

    class ProcessorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Processor.parse(value) unless value.nil?
        end
        data
      end
    end

    class Processor
      def self.parse(map)
        data = Types::Processor.new
        data.name = map['Name']
        data.configuration = (Parsers::ProcessorConfiguration.parse(map['Configuration']) unless map['Configuration'].nil?)
        data.execution_order = map['ExecutionOrder']
        data.fallback_action = map['FallbackAction']
        return data
      end
    end

    class ProcessorConfiguration
      def self.parse(map)
        data = Types::ProcessorConfiguration.new
        data.lambda = (Parsers::LambdaConfiguration.parse(map['Lambda']) unless map['Lambda'].nil?)
        return data
      end
    end

    class LambdaConfiguration
      def self.parse(map)
        data = Types::LambdaConfiguration.new
        data.resource_arn = map['ResourceArn']
        data.invocation_type = map['InvocationType']
        return data
      end
    end

    # Operation Parser for DescribeChannelMembership
    class DescribeChannelMembership
      def self.parse(http_resp)
        data = Types::DescribeChannelMembershipOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_membership = (Parsers::ChannelMembership.parse(map['ChannelMembership']) unless map['ChannelMembership'].nil?)
        data
      end
    end

    class ChannelMembership
      def self.parse(map)
        data = Types::ChannelMembership.new
        data.invited_by = (Parsers::Identity.parse(map['InvitedBy']) unless map['InvitedBy'].nil?)
        data.type = map['Type']
        data.member = (Parsers::Identity.parse(map['Member']) unless map['Member'].nil?)
        data.channel_arn = map['ChannelArn']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeChannelMembershipForAppInstanceUser
    class DescribeChannelMembershipForAppInstanceUser
      def self.parse(http_resp)
        data = Types::DescribeChannelMembershipForAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_membership = (Parsers::ChannelMembershipForAppInstanceUserSummary.parse(map['ChannelMembership']) unless map['ChannelMembership'].nil?)
        data
      end
    end

    class ChannelMembershipForAppInstanceUserSummary
      def self.parse(map)
        data = Types::ChannelMembershipForAppInstanceUserSummary.new
        data.channel_summary = (Parsers::ChannelSummary.parse(map['ChannelSummary']) unless map['ChannelSummary'].nil?)
        data.app_instance_user_membership_summary = (Parsers::AppInstanceUserMembershipSummary.parse(map['AppInstanceUserMembershipSummary']) unless map['AppInstanceUserMembershipSummary'].nil?)
        return data
      end
    end

    class AppInstanceUserMembershipSummary
      def self.parse(map)
        data = Types::AppInstanceUserMembershipSummary.new
        data.type = map['Type']
        data.read_marker_timestamp = Time.at(map['ReadMarkerTimestamp'].to_i) if map['ReadMarkerTimestamp']
        return data
      end
    end

    class ChannelSummary
      def self.parse(map)
        data = Types::ChannelSummary.new
        data.name = map['Name']
        data.channel_arn = map['ChannelArn']
        data.mode = map['Mode']
        data.privacy = map['Privacy']
        data.metadata = map['Metadata']
        data.last_message_timestamp = Time.at(map['LastMessageTimestamp'].to_i) if map['LastMessageTimestamp']
        return data
      end
    end

    # Operation Parser for DescribeChannelModeratedByAppInstanceUser
    class DescribeChannelModeratedByAppInstanceUser
      def self.parse(http_resp)
        data = Types::DescribeChannelModeratedByAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel = (Parsers::ChannelModeratedByAppInstanceUserSummary.parse(map['Channel']) unless map['Channel'].nil?)
        data
      end
    end

    class ChannelModeratedByAppInstanceUserSummary
      def self.parse(map)
        data = Types::ChannelModeratedByAppInstanceUserSummary.new
        data.channel_summary = (Parsers::ChannelSummary.parse(map['ChannelSummary']) unless map['ChannelSummary'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeChannelModerator
    class DescribeChannelModerator
      def self.parse(http_resp)
        data = Types::DescribeChannelModeratorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_moderator = (Parsers::ChannelModerator.parse(map['ChannelModerator']) unless map['ChannelModerator'].nil?)
        data
      end
    end

    class ChannelModerator
      def self.parse(map)
        data = Types::ChannelModerator.new
        data.moderator = (Parsers::Identity.parse(map['Moderator']) unless map['Moderator'].nil?)
        data.channel_arn = map['ChannelArn']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.created_by = (Parsers::Identity.parse(map['CreatedBy']) unless map['CreatedBy'].nil?)
        return data
      end
    end

    # Operation Parser for DisassociateChannelFlow
    class DisassociateChannelFlow
      def self.parse(http_resp)
        data = Types::DisassociateChannelFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetChannelMembershipPreferences
    class GetChannelMembershipPreferences
      def self.parse(http_resp)
        data = Types::GetChannelMembershipPreferencesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.member = (Parsers::Identity.parse(map['Member']) unless map['Member'].nil?)
        data.preferences = (Parsers::ChannelMembershipPreferences.parse(map['Preferences']) unless map['Preferences'].nil?)
        data
      end
    end

    class ChannelMembershipPreferences
      def self.parse(map)
        data = Types::ChannelMembershipPreferences.new
        data.push_notifications = (Parsers::PushNotificationPreferences.parse(map['PushNotifications']) unless map['PushNotifications'].nil?)
        return data
      end
    end

    class PushNotificationPreferences
      def self.parse(map)
        data = Types::PushNotificationPreferences.new
        data.allow_notifications = map['AllowNotifications']
        data.filter_rule = map['FilterRule']
        return data
      end
    end

    # Operation Parser for GetChannelMessage
    class GetChannelMessage
      def self.parse(http_resp)
        data = Types::GetChannelMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_message = (Parsers::ChannelMessage.parse(map['ChannelMessage']) unless map['ChannelMessage'].nil?)
        data
      end
    end

    class ChannelMessage
      def self.parse(map)
        data = Types::ChannelMessage.new
        data.channel_arn = map['ChannelArn']
        data.message_id = map['MessageId']
        data.content = map['Content']
        data.metadata = map['Metadata']
        data.type = map['Type']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.last_edited_timestamp = Time.at(map['LastEditedTimestamp'].to_i) if map['LastEditedTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        data.sender = (Parsers::Identity.parse(map['Sender']) unless map['Sender'].nil?)
        data.redacted = map['Redacted']
        data.persistence = map['Persistence']
        data.status = (Parsers::ChannelMessageStatusStructure.parse(map['Status']) unless map['Status'].nil?)
        data.message_attributes = (Parsers::MessageAttributeMap.parse(map['MessageAttributes']) unless map['MessageAttributes'].nil?)
        return data
      end
    end

    class MessageAttributeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::MessageAttributeValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class MessageAttributeValue
      def self.parse(map)
        data = Types::MessageAttributeValue.new
        data.string_values = (Parsers::MessageAttributeStringValues.parse(map['StringValues']) unless map['StringValues'].nil?)
        return data
      end
    end

    class MessageAttributeStringValues
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ChannelMessageStatusStructure
      def self.parse(map)
        data = Types::ChannelMessageStatusStructure.new
        data.value = map['Value']
        data.detail = map['Detail']
        return data
      end
    end

    # Operation Parser for GetChannelMessageStatus
    class GetChannelMessageStatus
      def self.parse(http_resp)
        data = Types::GetChannelMessageStatusOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = (Parsers::ChannelMessageStatusStructure.parse(map['Status']) unless map['Status'].nil?)
        data
      end
    end

    # Operation Parser for GetMessagingSessionEndpoint
    class GetMessagingSessionEndpoint
      def self.parse(http_resp)
        data = Types::GetMessagingSessionEndpointOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.endpoint = (Parsers::MessagingSessionEndpoint.parse(map['Endpoint']) unless map['Endpoint'].nil?)
        data
      end
    end

    class MessagingSessionEndpoint
      def self.parse(map)
        data = Types::MessagingSessionEndpoint.new
        data.url = map['Url']
        return data
      end
    end

    # Operation Parser for ListChannelBans
    class ListChannelBans
      def self.parse(http_resp)
        data = Types::ListChannelBansOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.next_token = map['NextToken']
        data.channel_bans = (Parsers::ChannelBanSummaryList.parse(map['ChannelBans']) unless map['ChannelBans'].nil?)
        data
      end
    end

    class ChannelBanSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelBanSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChannelBanSummary
      def self.parse(map)
        data = Types::ChannelBanSummary.new
        data.member = (Parsers::Identity.parse(map['Member']) unless map['Member'].nil?)
        return data
      end
    end

    # Operation Parser for ListChannelFlows
    class ListChannelFlows
      def self.parse(http_resp)
        data = Types::ListChannelFlowsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_flows = (Parsers::ChannelFlowSummaryList.parse(map['ChannelFlows']) unless map['ChannelFlows'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ChannelFlowSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelFlowSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChannelFlowSummary
      def self.parse(map)
        data = Types::ChannelFlowSummary.new
        data.channel_flow_arn = map['ChannelFlowArn']
        data.name = map['Name']
        data.processors = (Parsers::ProcessorList.parse(map['Processors']) unless map['Processors'].nil?)
        return data
      end
    end

    # Operation Parser for ListChannelMemberships
    class ListChannelMemberships
      def self.parse(http_resp)
        data = Types::ListChannelMembershipsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.channel_memberships = (Parsers::ChannelMembershipSummaryList.parse(map['ChannelMemberships']) unless map['ChannelMemberships'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ChannelMembershipSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelMembershipSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChannelMembershipSummary
      def self.parse(map)
        data = Types::ChannelMembershipSummary.new
        data.member = (Parsers::Identity.parse(map['Member']) unless map['Member'].nil?)
        return data
      end
    end

    # Operation Parser for ListChannelMembershipsForAppInstanceUser
    class ListChannelMembershipsForAppInstanceUser
      def self.parse(http_resp)
        data = Types::ListChannelMembershipsForAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_memberships = (Parsers::ChannelMembershipForAppInstanceUserSummaryList.parse(map['ChannelMemberships']) unless map['ChannelMemberships'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ChannelMembershipForAppInstanceUserSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelMembershipForAppInstanceUserSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListChannelMessages
    class ListChannelMessages
      def self.parse(http_resp)
        data = Types::ListChannelMessagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.next_token = map['NextToken']
        data.channel_messages = (Parsers::ChannelMessageSummaryList.parse(map['ChannelMessages']) unless map['ChannelMessages'].nil?)
        data
      end
    end

    class ChannelMessageSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelMessageSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChannelMessageSummary
      def self.parse(map)
        data = Types::ChannelMessageSummary.new
        data.message_id = map['MessageId']
        data.content = map['Content']
        data.metadata = map['Metadata']
        data.type = map['Type']
        data.created_timestamp = Time.at(map['CreatedTimestamp'].to_i) if map['CreatedTimestamp']
        data.last_updated_timestamp = Time.at(map['LastUpdatedTimestamp'].to_i) if map['LastUpdatedTimestamp']
        data.last_edited_timestamp = Time.at(map['LastEditedTimestamp'].to_i) if map['LastEditedTimestamp']
        data.sender = (Parsers::Identity.parse(map['Sender']) unless map['Sender'].nil?)
        data.redacted = map['Redacted']
        data.status = (Parsers::ChannelMessageStatusStructure.parse(map['Status']) unless map['Status'].nil?)
        data.message_attributes = (Parsers::MessageAttributeMap.parse(map['MessageAttributes']) unless map['MessageAttributes'].nil?)
        return data
      end
    end

    # Operation Parser for ListChannelModerators
    class ListChannelModerators
      def self.parse(http_resp)
        data = Types::ListChannelModeratorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.next_token = map['NextToken']
        data.channel_moderators = (Parsers::ChannelModeratorSummaryList.parse(map['ChannelModerators']) unless map['ChannelModerators'].nil?)
        data
      end
    end

    class ChannelModeratorSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelModeratorSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChannelModeratorSummary
      def self.parse(map)
        data = Types::ChannelModeratorSummary.new
        data.moderator = (Parsers::Identity.parse(map['Moderator']) unless map['Moderator'].nil?)
        return data
      end
    end

    # Operation Parser for ListChannels
    class ListChannels
      def self.parse(http_resp)
        data = Types::ListChannelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channels = (Parsers::ChannelSummaryList.parse(map['Channels']) unless map['Channels'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ChannelSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListChannelsAssociatedWithChannelFlow
    class ListChannelsAssociatedWithChannelFlow
      def self.parse(http_resp)
        data = Types::ListChannelsAssociatedWithChannelFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channels = (Parsers::ChannelAssociatedWithFlowSummaryList.parse(map['Channels']) unless map['Channels'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ChannelAssociatedWithFlowSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelAssociatedWithFlowSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChannelAssociatedWithFlowSummary
      def self.parse(map)
        data = Types::ChannelAssociatedWithFlowSummary.new
        data.name = map['Name']
        data.channel_arn = map['ChannelArn']
        data.mode = map['Mode']
        data.privacy = map['Privacy']
        data.metadata = map['Metadata']
        return data
      end
    end

    # Operation Parser for ListChannelsModeratedByAppInstanceUser
    class ListChannelsModeratedByAppInstanceUser
      def self.parse(http_resp)
        data = Types::ListChannelsModeratedByAppInstanceUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channels = (Parsers::ChannelModeratedByAppInstanceUserSummaryList.parse(map['Channels']) unless map['Channels'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ChannelModeratedByAppInstanceUserSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChannelModeratedByAppInstanceUserSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for PutChannelMembershipPreferences
    class PutChannelMembershipPreferences
      def self.parse(http_resp)
        data = Types::PutChannelMembershipPreferencesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.member = (Parsers::Identity.parse(map['Member']) unless map['Member'].nil?)
        data.preferences = (Parsers::ChannelMembershipPreferences.parse(map['Preferences']) unless map['Preferences'].nil?)
        data
      end
    end

    # Operation Parser for RedactChannelMessage
    class RedactChannelMessage
      def self.parse(http_resp)
        data = Types::RedactChannelMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.message_id = map['MessageId']
        data
      end
    end

    # Operation Parser for SearchChannels
    class SearchChannels
      def self.parse(http_resp)
        data = Types::SearchChannelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channels = (Parsers::ChannelSummaryList.parse(map['Channels']) unless map['Channels'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for SendChannelMessage
    class SendChannelMessage
      def self.parse(http_resp)
        data = Types::SendChannelMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.message_id = map['MessageId']
        data.status = (Parsers::ChannelMessageStatusStructure.parse(map['Status']) unless map['Status'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateChannel
    class UpdateChannel
      def self.parse(http_resp)
        data = Types::UpdateChannelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data
      end
    end

    # Operation Parser for UpdateChannelFlow
    class UpdateChannelFlow
      def self.parse(http_resp)
        data = Types::UpdateChannelFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_flow_arn = map['ChannelFlowArn']
        data
      end
    end

    # Operation Parser for UpdateChannelMessage
    class UpdateChannelMessage
      def self.parse(http_resp)
        data = Types::UpdateChannelMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data.message_id = map['MessageId']
        data.status = (Parsers::ChannelMessageStatusStructure.parse(map['Status']) unless map['Status'].nil?)
        data
      end
    end

    # Operation Parser for UpdateChannelReadMarker
    class UpdateChannelReadMarker
      def self.parse(http_resp)
        data = Types::UpdateChannelReadMarkerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.channel_arn = map['ChannelArn']
        data
      end
    end
  end
end
