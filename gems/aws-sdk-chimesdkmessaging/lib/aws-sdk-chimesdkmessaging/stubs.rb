# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ChimeSDKMessaging
  module Stubs

    # Operation Stubber for AssociateChannelFlow
    class AssociateChannelFlow
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchCreateChannelMembership
    class BatchCreateChannelMembership
      def self.default(visited=[])
        {
          batch_channel_memberships: Stubs::BatchChannelMemberships.default(visited),
          errors: Stubs::BatchCreateChannelMembershipErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BatchChannelMemberships'] = Stubs::BatchChannelMemberships.stub(stub[:batch_channel_memberships]) unless stub[:batch_channel_memberships].nil?
        data['Errors'] = Stubs::BatchCreateChannelMembershipErrors.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchCreateChannelMembershipErrors
    class BatchCreateChannelMembershipErrors
      def self.default(visited=[])
        return nil if visited.include?('BatchCreateChannelMembershipErrors')
        visited = visited + ['BatchCreateChannelMembershipErrors']
        [
          Stubs::BatchCreateChannelMembershipError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchCreateChannelMembershipError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchCreateChannelMembershipError
    class BatchCreateChannelMembershipError
      def self.default(visited=[])
        return nil if visited.include?('BatchCreateChannelMembershipError')
        visited = visited + ['BatchCreateChannelMembershipError']
        {
          member_arn: 'member_arn',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchCreateChannelMembershipError.new
        data = {}
        data['MemberArn'] = stub[:member_arn] unless stub[:member_arn].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for BatchChannelMemberships
    class BatchChannelMemberships
      def self.default(visited=[])
        return nil if visited.include?('BatchChannelMemberships')
        visited = visited + ['BatchChannelMemberships']
        {
          invited_by: Stubs::Identity.default(visited),
          type: 'type',
          members: Stubs::Members.default(visited),
          channel_arn: 'channel_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchChannelMemberships.new
        data = {}
        data['InvitedBy'] = Stubs::Identity.stub(stub[:invited_by]) unless stub[:invited_by].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Members'] = Stubs::Members.stub(stub[:members]) unless stub[:members].nil?
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data
      end
    end

    # List Stubber for Members
    class Members
      def self.default(visited=[])
        return nil if visited.include?('Members')
        visited = visited + ['Members']
        [
          Stubs::Identity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Identity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Identity
    class Identity
      def self.default(visited=[])
        return nil if visited.include?('Identity')
        visited = visited + ['Identity']
        {
          arn: 'arn',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Identity.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ChannelFlowCallback
    class ChannelFlowCallback
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
          callback_id: 'callback_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['CallbackId'] = stub[:callback_id] unless stub[:callback_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateChannel
    class CreateChannel
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateChannelBan
    class CreateChannelBan
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
          member: Stubs::Identity.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['Member'] = Stubs::Identity.stub(stub[:member]) unless stub[:member].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateChannelFlow
    class CreateChannelFlow
      def self.default(visited=[])
        {
          channel_flow_arn: 'channel_flow_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelFlowArn'] = stub[:channel_flow_arn] unless stub[:channel_flow_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateChannelMembership
    class CreateChannelMembership
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
          member: Stubs::Identity.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['Member'] = Stubs::Identity.stub(stub[:member]) unless stub[:member].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateChannelModerator
    class CreateChannelModerator
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
          channel_moderator: Stubs::Identity.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['ChannelModerator'] = Stubs::Identity.stub(stub[:channel_moderator]) unless stub[:channel_moderator].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteChannel
    class DeleteChannel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteChannelBan
    class DeleteChannelBan
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteChannelFlow
    class DeleteChannelFlow
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteChannelMembership
    class DeleteChannelMembership
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteChannelMessage
    class DeleteChannelMessage
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteChannelModerator
    class DeleteChannelModerator
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DescribeChannel
    class DescribeChannel
      def self.default(visited=[])
        {
          channel: Stubs::Channel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Channel'] = Stubs::Channel.stub(stub[:channel]) unless stub[:channel].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Channel
    class Channel
      def self.default(visited=[])
        return nil if visited.include?('Channel')
        visited = visited + ['Channel']
        {
          name: 'name',
          channel_arn: 'channel_arn',
          mode: 'mode',
          privacy: 'privacy',
          metadata: 'metadata',
          created_by: Stubs::Identity.default(visited),
          created_timestamp: Time.now,
          last_message_timestamp: Time.now,
          last_updated_timestamp: Time.now,
          channel_flow_arn: 'channel_flow_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Channel.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data['Privacy'] = stub[:privacy] unless stub[:privacy].nil?
        data['Metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data['CreatedBy'] = Stubs::Identity.stub(stub[:created_by]) unless stub[:created_by].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['LastMessageTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_message_timestamp]).to_i unless stub[:last_message_timestamp].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data['ChannelFlowArn'] = stub[:channel_flow_arn] unless stub[:channel_flow_arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeChannelBan
    class DescribeChannelBan
      def self.default(visited=[])
        {
          channel_ban: Stubs::ChannelBan.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelBan'] = Stubs::ChannelBan.stub(stub[:channel_ban]) unless stub[:channel_ban].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ChannelBan
    class ChannelBan
      def self.default(visited=[])
        return nil if visited.include?('ChannelBan')
        visited = visited + ['ChannelBan']
        {
          member: Stubs::Identity.default(visited),
          channel_arn: 'channel_arn',
          created_timestamp: Time.now,
          created_by: Stubs::Identity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelBan.new
        data = {}
        data['Member'] = Stubs::Identity.stub(stub[:member]) unless stub[:member].nil?
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['CreatedBy'] = Stubs::Identity.stub(stub[:created_by]) unless stub[:created_by].nil?
        data
      end
    end

    # Operation Stubber for DescribeChannelFlow
    class DescribeChannelFlow
      def self.default(visited=[])
        {
          channel_flow: Stubs::ChannelFlow.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelFlow'] = Stubs::ChannelFlow.stub(stub[:channel_flow]) unless stub[:channel_flow].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ChannelFlow
    class ChannelFlow
      def self.default(visited=[])
        return nil if visited.include?('ChannelFlow')
        visited = visited + ['ChannelFlow']
        {
          channel_flow_arn: 'channel_flow_arn',
          processors: Stubs::ProcessorList.default(visited),
          name: 'name',
          created_timestamp: Time.now,
          last_updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelFlow.new
        data = {}
        data['ChannelFlowArn'] = stub[:channel_flow_arn] unless stub[:channel_flow_arn].nil?
        data['Processors'] = Stubs::ProcessorList.stub(stub[:processors]) unless stub[:processors].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data
      end
    end

    # List Stubber for ProcessorList
    class ProcessorList
      def self.default(visited=[])
        return nil if visited.include?('ProcessorList')
        visited = visited + ['ProcessorList']
        [
          Stubs::Processor.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Processor.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Processor
    class Processor
      def self.default(visited=[])
        return nil if visited.include?('Processor')
        visited = visited + ['Processor']
        {
          name: 'name',
          configuration: Stubs::ProcessorConfiguration.default(visited),
          execution_order: 1,
          fallback_action: 'fallback_action',
        }
      end

      def self.stub(stub)
        stub ||= Types::Processor.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Configuration'] = Stubs::ProcessorConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['ExecutionOrder'] = stub[:execution_order] unless stub[:execution_order].nil?
        data['FallbackAction'] = stub[:fallback_action] unless stub[:fallback_action].nil?
        data
      end
    end

    # Structure Stubber for ProcessorConfiguration
    class ProcessorConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ProcessorConfiguration')
        visited = visited + ['ProcessorConfiguration']
        {
          lambda: Stubs::LambdaConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProcessorConfiguration.new
        data = {}
        data['Lambda'] = Stubs::LambdaConfiguration.stub(stub[:lambda]) unless stub[:lambda].nil?
        data
      end
    end

    # Structure Stubber for LambdaConfiguration
    class LambdaConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LambdaConfiguration')
        visited = visited + ['LambdaConfiguration']
        {
          resource_arn: 'resource_arn',
          invocation_type: 'invocation_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaConfiguration.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['InvocationType'] = stub[:invocation_type] unless stub[:invocation_type].nil?
        data
      end
    end

    # Operation Stubber for DescribeChannelMembership
    class DescribeChannelMembership
      def self.default(visited=[])
        {
          channel_membership: Stubs::ChannelMembership.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelMembership'] = Stubs::ChannelMembership.stub(stub[:channel_membership]) unless stub[:channel_membership].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ChannelMembership
    class ChannelMembership
      def self.default(visited=[])
        return nil if visited.include?('ChannelMembership')
        visited = visited + ['ChannelMembership']
        {
          invited_by: Stubs::Identity.default(visited),
          type: 'type',
          member: Stubs::Identity.default(visited),
          channel_arn: 'channel_arn',
          created_timestamp: Time.now,
          last_updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelMembership.new
        data = {}
        data['InvitedBy'] = Stubs::Identity.stub(stub[:invited_by]) unless stub[:invited_by].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Member'] = Stubs::Identity.stub(stub[:member]) unless stub[:member].nil?
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data
      end
    end

    # Operation Stubber for DescribeChannelMembershipForAppInstanceUser
    class DescribeChannelMembershipForAppInstanceUser
      def self.default(visited=[])
        {
          channel_membership: Stubs::ChannelMembershipForAppInstanceUserSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelMembership'] = Stubs::ChannelMembershipForAppInstanceUserSummary.stub(stub[:channel_membership]) unless stub[:channel_membership].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ChannelMembershipForAppInstanceUserSummary
    class ChannelMembershipForAppInstanceUserSummary
      def self.default(visited=[])
        return nil if visited.include?('ChannelMembershipForAppInstanceUserSummary')
        visited = visited + ['ChannelMembershipForAppInstanceUserSummary']
        {
          channel_summary: Stubs::ChannelSummary.default(visited),
          app_instance_user_membership_summary: Stubs::AppInstanceUserMembershipSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelMembershipForAppInstanceUserSummary.new
        data = {}
        data['ChannelSummary'] = Stubs::ChannelSummary.stub(stub[:channel_summary]) unless stub[:channel_summary].nil?
        data['AppInstanceUserMembershipSummary'] = Stubs::AppInstanceUserMembershipSummary.stub(stub[:app_instance_user_membership_summary]) unless stub[:app_instance_user_membership_summary].nil?
        data
      end
    end

    # Structure Stubber for AppInstanceUserMembershipSummary
    class AppInstanceUserMembershipSummary
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceUserMembershipSummary')
        visited = visited + ['AppInstanceUserMembershipSummary']
        {
          type: 'type',
          read_marker_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceUserMembershipSummary.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ReadMarkerTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:read_marker_timestamp]).to_i unless stub[:read_marker_timestamp].nil?
        data
      end
    end

    # Structure Stubber for ChannelSummary
    class ChannelSummary
      def self.default(visited=[])
        return nil if visited.include?('ChannelSummary')
        visited = visited + ['ChannelSummary']
        {
          name: 'name',
          channel_arn: 'channel_arn',
          mode: 'mode',
          privacy: 'privacy',
          metadata: 'metadata',
          last_message_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data['Privacy'] = stub[:privacy] unless stub[:privacy].nil?
        data['Metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data['LastMessageTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_message_timestamp]).to_i unless stub[:last_message_timestamp].nil?
        data
      end
    end

    # Operation Stubber for DescribeChannelModeratedByAppInstanceUser
    class DescribeChannelModeratedByAppInstanceUser
      def self.default(visited=[])
        {
          channel: Stubs::ChannelModeratedByAppInstanceUserSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Channel'] = Stubs::ChannelModeratedByAppInstanceUserSummary.stub(stub[:channel]) unless stub[:channel].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ChannelModeratedByAppInstanceUserSummary
    class ChannelModeratedByAppInstanceUserSummary
      def self.default(visited=[])
        return nil if visited.include?('ChannelModeratedByAppInstanceUserSummary')
        visited = visited + ['ChannelModeratedByAppInstanceUserSummary']
        {
          channel_summary: Stubs::ChannelSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelModeratedByAppInstanceUserSummary.new
        data = {}
        data['ChannelSummary'] = Stubs::ChannelSummary.stub(stub[:channel_summary]) unless stub[:channel_summary].nil?
        data
      end
    end

    # Operation Stubber for DescribeChannelModerator
    class DescribeChannelModerator
      def self.default(visited=[])
        {
          channel_moderator: Stubs::ChannelModerator.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelModerator'] = Stubs::ChannelModerator.stub(stub[:channel_moderator]) unless stub[:channel_moderator].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ChannelModerator
    class ChannelModerator
      def self.default(visited=[])
        return nil if visited.include?('ChannelModerator')
        visited = visited + ['ChannelModerator']
        {
          moderator: Stubs::Identity.default(visited),
          channel_arn: 'channel_arn',
          created_timestamp: Time.now,
          created_by: Stubs::Identity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelModerator.new
        data = {}
        data['Moderator'] = Stubs::Identity.stub(stub[:moderator]) unless stub[:moderator].nil?
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['CreatedBy'] = Stubs::Identity.stub(stub[:created_by]) unless stub[:created_by].nil?
        data
      end
    end

    # Operation Stubber for DisassociateChannelFlow
    class DisassociateChannelFlow
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetChannelMembershipPreferences
    class GetChannelMembershipPreferences
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
          member: Stubs::Identity.default(visited),
          preferences: Stubs::ChannelMembershipPreferences.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['Member'] = Stubs::Identity.stub(stub[:member]) unless stub[:member].nil?
        data['Preferences'] = Stubs::ChannelMembershipPreferences.stub(stub[:preferences]) unless stub[:preferences].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ChannelMembershipPreferences
    class ChannelMembershipPreferences
      def self.default(visited=[])
        return nil if visited.include?('ChannelMembershipPreferences')
        visited = visited + ['ChannelMembershipPreferences']
        {
          push_notifications: Stubs::PushNotificationPreferences.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelMembershipPreferences.new
        data = {}
        data['PushNotifications'] = Stubs::PushNotificationPreferences.stub(stub[:push_notifications]) unless stub[:push_notifications].nil?
        data
      end
    end

    # Structure Stubber for PushNotificationPreferences
    class PushNotificationPreferences
      def self.default(visited=[])
        return nil if visited.include?('PushNotificationPreferences')
        visited = visited + ['PushNotificationPreferences']
        {
          allow_notifications: 'allow_notifications',
          filter_rule: 'filter_rule',
        }
      end

      def self.stub(stub)
        stub ||= Types::PushNotificationPreferences.new
        data = {}
        data['AllowNotifications'] = stub[:allow_notifications] unless stub[:allow_notifications].nil?
        data['FilterRule'] = stub[:filter_rule] unless stub[:filter_rule].nil?
        data
      end
    end

    # Operation Stubber for GetChannelMessage
    class GetChannelMessage
      def self.default(visited=[])
        {
          channel_message: Stubs::ChannelMessage.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelMessage'] = Stubs::ChannelMessage.stub(stub[:channel_message]) unless stub[:channel_message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ChannelMessage
    class ChannelMessage
      def self.default(visited=[])
        return nil if visited.include?('ChannelMessage')
        visited = visited + ['ChannelMessage']
        {
          channel_arn: 'channel_arn',
          message_id: 'message_id',
          content: 'content',
          metadata: 'metadata',
          type: 'type',
          created_timestamp: Time.now,
          last_edited_timestamp: Time.now,
          last_updated_timestamp: Time.now,
          sender: Stubs::Identity.default(visited),
          redacted: false,
          persistence: 'persistence',
          status: Stubs::ChannelMessageStatusStructure.default(visited),
          message_attributes: Stubs::MessageAttributeMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelMessage.new
        data = {}
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['Metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['LastEditedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_edited_timestamp]).to_i unless stub[:last_edited_timestamp].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data['Sender'] = Stubs::Identity.stub(stub[:sender]) unless stub[:sender].nil?
        data['Redacted'] = stub[:redacted] unless stub[:redacted].nil?
        data['Persistence'] = stub[:persistence] unless stub[:persistence].nil?
        data['Status'] = Stubs::ChannelMessageStatusStructure.stub(stub[:status]) unless stub[:status].nil?
        data['MessageAttributes'] = Stubs::MessageAttributeMap.stub(stub[:message_attributes]) unless stub[:message_attributes].nil?
        data
      end
    end

    # Map Stubber for MessageAttributeMap
    class MessageAttributeMap
      def self.default(visited=[])
        return nil if visited.include?('MessageAttributeMap')
        visited = visited + ['MessageAttributeMap']
        {
          test_key: Stubs::MessageAttributeValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::MessageAttributeValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for MessageAttributeValue
    class MessageAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('MessageAttributeValue')
        visited = visited + ['MessageAttributeValue']
        {
          string_values: Stubs::MessageAttributeStringValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MessageAttributeValue.new
        data = {}
        data['StringValues'] = Stubs::MessageAttributeStringValues.stub(stub[:string_values]) unless stub[:string_values].nil?
        data
      end
    end

    # List Stubber for MessageAttributeStringValues
    class MessageAttributeStringValues
      def self.default(visited=[])
        return nil if visited.include?('MessageAttributeStringValues')
        visited = visited + ['MessageAttributeStringValues']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChannelMessageStatusStructure
    class ChannelMessageStatusStructure
      def self.default(visited=[])
        return nil if visited.include?('ChannelMessageStatusStructure')
        visited = visited + ['ChannelMessageStatusStructure']
        {
          value: 'value',
          detail: 'detail',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelMessageStatusStructure.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Detail'] = stub[:detail] unless stub[:detail].nil?
        data
      end
    end

    # Operation Stubber for GetChannelMessageStatus
    class GetChannelMessageStatus
      def self.default(visited=[])
        {
          status: Stubs::ChannelMessageStatusStructure.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Status'] = Stubs::ChannelMessageStatusStructure.stub(stub[:status]) unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetMessagingSessionEndpoint
    class GetMessagingSessionEndpoint
      def self.default(visited=[])
        {
          endpoint: Stubs::MessagingSessionEndpoint.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Endpoint'] = Stubs::MessagingSessionEndpoint.stub(stub[:endpoint]) unless stub[:endpoint].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for MessagingSessionEndpoint
    class MessagingSessionEndpoint
      def self.default(visited=[])
        return nil if visited.include?('MessagingSessionEndpoint')
        visited = visited + ['MessagingSessionEndpoint']
        {
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::MessagingSessionEndpoint.new
        data = {}
        data['Url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for ListChannelBans
    class ListChannelBans
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
          next_token: 'next_token',
          channel_bans: Stubs::ChannelBanSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ChannelBans'] = Stubs::ChannelBanSummaryList.stub(stub[:channel_bans]) unless stub[:channel_bans].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChannelBanSummaryList
    class ChannelBanSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ChannelBanSummaryList')
        visited = visited + ['ChannelBanSummaryList']
        [
          Stubs::ChannelBanSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChannelBanSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChannelBanSummary
    class ChannelBanSummary
      def self.default(visited=[])
        return nil if visited.include?('ChannelBanSummary')
        visited = visited + ['ChannelBanSummary']
        {
          member: Stubs::Identity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelBanSummary.new
        data = {}
        data['Member'] = Stubs::Identity.stub(stub[:member]) unless stub[:member].nil?
        data
      end
    end

    # Operation Stubber for ListChannelFlows
    class ListChannelFlows
      def self.default(visited=[])
        {
          channel_flows: Stubs::ChannelFlowSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelFlows'] = Stubs::ChannelFlowSummaryList.stub(stub[:channel_flows]) unless stub[:channel_flows].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChannelFlowSummaryList
    class ChannelFlowSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ChannelFlowSummaryList')
        visited = visited + ['ChannelFlowSummaryList']
        [
          Stubs::ChannelFlowSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChannelFlowSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChannelFlowSummary
    class ChannelFlowSummary
      def self.default(visited=[])
        return nil if visited.include?('ChannelFlowSummary')
        visited = visited + ['ChannelFlowSummary']
        {
          channel_flow_arn: 'channel_flow_arn',
          name: 'name',
          processors: Stubs::ProcessorList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelFlowSummary.new
        data = {}
        data['ChannelFlowArn'] = stub[:channel_flow_arn] unless stub[:channel_flow_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Processors'] = Stubs::ProcessorList.stub(stub[:processors]) unless stub[:processors].nil?
        data
      end
    end

    # Operation Stubber for ListChannelMemberships
    class ListChannelMemberships
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
          channel_memberships: Stubs::ChannelMembershipSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['ChannelMemberships'] = Stubs::ChannelMembershipSummaryList.stub(stub[:channel_memberships]) unless stub[:channel_memberships].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChannelMembershipSummaryList
    class ChannelMembershipSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ChannelMembershipSummaryList')
        visited = visited + ['ChannelMembershipSummaryList']
        [
          Stubs::ChannelMembershipSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChannelMembershipSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChannelMembershipSummary
    class ChannelMembershipSummary
      def self.default(visited=[])
        return nil if visited.include?('ChannelMembershipSummary')
        visited = visited + ['ChannelMembershipSummary']
        {
          member: Stubs::Identity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelMembershipSummary.new
        data = {}
        data['Member'] = Stubs::Identity.stub(stub[:member]) unless stub[:member].nil?
        data
      end
    end

    # Operation Stubber for ListChannelMembershipsForAppInstanceUser
    class ListChannelMembershipsForAppInstanceUser
      def self.default(visited=[])
        {
          channel_memberships: Stubs::ChannelMembershipForAppInstanceUserSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelMemberships'] = Stubs::ChannelMembershipForAppInstanceUserSummaryList.stub(stub[:channel_memberships]) unless stub[:channel_memberships].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChannelMembershipForAppInstanceUserSummaryList
    class ChannelMembershipForAppInstanceUserSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ChannelMembershipForAppInstanceUserSummaryList')
        visited = visited + ['ChannelMembershipForAppInstanceUserSummaryList']
        [
          Stubs::ChannelMembershipForAppInstanceUserSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChannelMembershipForAppInstanceUserSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListChannelMessages
    class ListChannelMessages
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
          next_token: 'next_token',
          channel_messages: Stubs::ChannelMessageSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ChannelMessages'] = Stubs::ChannelMessageSummaryList.stub(stub[:channel_messages]) unless stub[:channel_messages].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChannelMessageSummaryList
    class ChannelMessageSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ChannelMessageSummaryList')
        visited = visited + ['ChannelMessageSummaryList']
        [
          Stubs::ChannelMessageSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChannelMessageSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChannelMessageSummary
    class ChannelMessageSummary
      def self.default(visited=[])
        return nil if visited.include?('ChannelMessageSummary')
        visited = visited + ['ChannelMessageSummary']
        {
          message_id: 'message_id',
          content: 'content',
          metadata: 'metadata',
          type: 'type',
          created_timestamp: Time.now,
          last_updated_timestamp: Time.now,
          last_edited_timestamp: Time.now,
          sender: Stubs::Identity.default(visited),
          redacted: false,
          status: Stubs::ChannelMessageStatusStructure.default(visited),
          message_attributes: Stubs::MessageAttributeMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelMessageSummary.new
        data = {}
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['Metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data['LastEditedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_edited_timestamp]).to_i unless stub[:last_edited_timestamp].nil?
        data['Sender'] = Stubs::Identity.stub(stub[:sender]) unless stub[:sender].nil?
        data['Redacted'] = stub[:redacted] unless stub[:redacted].nil?
        data['Status'] = Stubs::ChannelMessageStatusStructure.stub(stub[:status]) unless stub[:status].nil?
        data['MessageAttributes'] = Stubs::MessageAttributeMap.stub(stub[:message_attributes]) unless stub[:message_attributes].nil?
        data
      end
    end

    # Operation Stubber for ListChannelModerators
    class ListChannelModerators
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
          next_token: 'next_token',
          channel_moderators: Stubs::ChannelModeratorSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ChannelModerators'] = Stubs::ChannelModeratorSummaryList.stub(stub[:channel_moderators]) unless stub[:channel_moderators].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChannelModeratorSummaryList
    class ChannelModeratorSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ChannelModeratorSummaryList')
        visited = visited + ['ChannelModeratorSummaryList']
        [
          Stubs::ChannelModeratorSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChannelModeratorSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChannelModeratorSummary
    class ChannelModeratorSummary
      def self.default(visited=[])
        return nil if visited.include?('ChannelModeratorSummary')
        visited = visited + ['ChannelModeratorSummary']
        {
          moderator: Stubs::Identity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelModeratorSummary.new
        data = {}
        data['Moderator'] = Stubs::Identity.stub(stub[:moderator]) unless stub[:moderator].nil?
        data
      end
    end

    # Operation Stubber for ListChannels
    class ListChannels
      def self.default(visited=[])
        {
          channels: Stubs::ChannelSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Channels'] = Stubs::ChannelSummaryList.stub(stub[:channels]) unless stub[:channels].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChannelSummaryList
    class ChannelSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ChannelSummaryList')
        visited = visited + ['ChannelSummaryList']
        [
          Stubs::ChannelSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChannelSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListChannelsAssociatedWithChannelFlow
    class ListChannelsAssociatedWithChannelFlow
      def self.default(visited=[])
        {
          channels: Stubs::ChannelAssociatedWithFlowSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Channels'] = Stubs::ChannelAssociatedWithFlowSummaryList.stub(stub[:channels]) unless stub[:channels].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChannelAssociatedWithFlowSummaryList
    class ChannelAssociatedWithFlowSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ChannelAssociatedWithFlowSummaryList')
        visited = visited + ['ChannelAssociatedWithFlowSummaryList']
        [
          Stubs::ChannelAssociatedWithFlowSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChannelAssociatedWithFlowSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChannelAssociatedWithFlowSummary
    class ChannelAssociatedWithFlowSummary
      def self.default(visited=[])
        return nil if visited.include?('ChannelAssociatedWithFlowSummary')
        visited = visited + ['ChannelAssociatedWithFlowSummary']
        {
          name: 'name',
          channel_arn: 'channel_arn',
          mode: 'mode',
          privacy: 'privacy',
          metadata: 'metadata',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelAssociatedWithFlowSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data['Privacy'] = stub[:privacy] unless stub[:privacy].nil?
        data['Metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data
      end
    end

    # Operation Stubber for ListChannelsModeratedByAppInstanceUser
    class ListChannelsModeratedByAppInstanceUser
      def self.default(visited=[])
        {
          channels: Stubs::ChannelModeratedByAppInstanceUserSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Channels'] = Stubs::ChannelModeratedByAppInstanceUserSummaryList.stub(stub[:channels]) unless stub[:channels].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChannelModeratedByAppInstanceUserSummaryList
    class ChannelModeratedByAppInstanceUserSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ChannelModeratedByAppInstanceUserSummaryList')
        visited = visited + ['ChannelModeratedByAppInstanceUserSummaryList']
        [
          Stubs::ChannelModeratedByAppInstanceUserSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChannelModeratedByAppInstanceUserSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for PutChannelMembershipPreferences
    class PutChannelMembershipPreferences
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
          member: Stubs::Identity.default(visited),
          preferences: Stubs::ChannelMembershipPreferences.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['Member'] = Stubs::Identity.stub(stub[:member]) unless stub[:member].nil?
        data['Preferences'] = Stubs::ChannelMembershipPreferences.stub(stub[:preferences]) unless stub[:preferences].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RedactChannelMessage
    class RedactChannelMessage
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
          message_id: 'message_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SearchChannels
    class SearchChannels
      def self.default(visited=[])
        {
          channels: Stubs::ChannelSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Channels'] = Stubs::ChannelSummaryList.stub(stub[:channels]) unless stub[:channels].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SendChannelMessage
    class SendChannelMessage
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
          message_id: 'message_id',
          status: Stubs::ChannelMessageStatusStructure.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        data['Status'] = Stubs::ChannelMessageStatusStructure.stub(stub[:status]) unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateChannel
    class UpdateChannel
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateChannelFlow
    class UpdateChannelFlow
      def self.default(visited=[])
        {
          channel_flow_arn: 'channel_flow_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelFlowArn'] = stub[:channel_flow_arn] unless stub[:channel_flow_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateChannelMessage
    class UpdateChannelMessage
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
          message_id: 'message_id',
          status: Stubs::ChannelMessageStatusStructure.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        data['Status'] = Stubs::ChannelMessageStatusStructure.stub(stub[:status]) unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateChannelReadMarker
    class UpdateChannelReadMarker
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
