# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ChimeSDKMessaging
  module Builders

    # Operation Builder for AssociateChannelFlow
    class AssociateChannelFlow
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/channel-flow',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ChannelFlowArn'] = input[:channel_flow_arn] unless input[:channel_flow_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for BatchCreateChannelMembership
    class BatchCreateChannelMembership
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=batch-create').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/memberships',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['MemberArns'] = MemberArns.build(input[:member_arns]) unless input[:member_arns].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # List Builder for MemberArns
    class MemberArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ChannelFlowCallback
    class ChannelFlowCallback
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=channel-flow-callback').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CallbackId'] = input[:callback_id] unless input[:callback_id].nil?
        data['DeleteResource'] = input[:delete_resource] unless input[:delete_resource].nil?
        data['ChannelMessage'] = ChannelMessageCallback.build(input[:channel_message]) unless input[:channel_message].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ChannelMessageCallback
    class ChannelMessageCallback
      def self.build(input)
        data = {}
        data['MessageId'] = input[:message_id] unless input[:message_id].nil?
        data['Content'] = input[:content] unless input[:content].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        data['PushNotification'] = PushNotificationConfiguration.build(input[:push_notification]) unless input[:push_notification].nil?
        data['MessageAttributes'] = MessageAttributeMap.build(input[:message_attributes]) unless input[:message_attributes].nil?
        data
      end
    end

    # Map Builder for MessageAttributeMap
    class MessageAttributeMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = MessageAttributeValue.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for MessageAttributeValue
    class MessageAttributeValue
      def self.build(input)
        data = {}
        data['StringValues'] = MessageAttributeStringValues.build(input[:string_values]) unless input[:string_values].nil?
        data
      end
    end

    # List Builder for MessageAttributeStringValues
    class MessageAttributeStringValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PushNotificationConfiguration
    class PushNotificationConfiguration
      def self.build(input)
        data = {}
        data['Title'] = input[:title] unless input[:title].nil?
        data['Body'] = input[:body] unless input[:body].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for CreateChannel
    class CreateChannel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/channels')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AppInstanceArn'] = input[:app_instance_arn] unless input[:app_instance_arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Mode'] = input[:mode] unless input[:mode].nil?
        data['Privacy'] = input[:privacy] unless input[:privacy].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['ChannelId'] = input[:channel_id] unless input[:channel_id].nil?
        data['MemberArns'] = ChannelMemberArns.build(input[:member_arns]) unless input[:member_arns].nil?
        data['ModeratorArns'] = ChannelModeratorArns.build(input[:moderator_arns]) unless input[:moderator_arns].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # List Builder for ChannelModeratorArns
    class ChannelModeratorArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ChannelMemberArns
    class ChannelMemberArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateChannelBan
    class CreateChannelBan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/bans',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MemberArn'] = input[:member_arn] unless input[:member_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for CreateChannelFlow
    class CreateChannelFlow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/channel-flows')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AppInstanceArn'] = input[:app_instance_arn] unless input[:app_instance_arn].nil?
        data['Processors'] = ProcessorList.build(input[:processors]) unless input[:processors].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ProcessorList
    class ProcessorList
      def self.build(input)
        data = []
        input.each do |element|
          data << Processor.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Processor
    class Processor
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Configuration'] = ProcessorConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['ExecutionOrder'] = input[:execution_order] unless input[:execution_order].nil?
        data['FallbackAction'] = input[:fallback_action] unless input[:fallback_action].nil?
        data
      end
    end

    # Structure Builder for ProcessorConfiguration
    class ProcessorConfiguration
      def self.build(input)
        data = {}
        data['Lambda'] = LambdaConfiguration.build(input[:lambda]) unless input[:lambda].nil?
        data
      end
    end

    # Structure Builder for LambdaConfiguration
    class LambdaConfiguration
      def self.build(input)
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['InvocationType'] = input[:invocation_type] unless input[:invocation_type].nil?
        data
      end
    end

    # Operation Builder for CreateChannelMembership
    class CreateChannelMembership
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/memberships',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MemberArn'] = input[:member_arn] unless input[:member_arn].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for CreateChannelModerator
    class CreateChannelModerator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/moderators',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ChannelModeratorArn'] = input[:channel_moderator_arn] unless input[:channel_moderator_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for DeleteChannel
    class DeleteChannel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for DeleteChannelBan
    class DeleteChannelBan
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        if input[:member_arn].to_s.empty?
          raise ArgumentError, "HTTP label :member_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/bans/%<MemberArn>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s),
            MemberArn: Hearth::HTTP.uri_escape(input[:member_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for DeleteChannelFlow
    class DeleteChannelFlow
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:channel_flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel-flows/%<ChannelFlowArn>s',
            ChannelFlowArn: Hearth::HTTP.uri_escape(input[:channel_flow_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteChannelMembership
    class DeleteChannelMembership
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        if input[:member_arn].to_s.empty?
          raise ArgumentError, "HTTP label :member_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/memberships/%<MemberArn>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s),
            MemberArn: Hearth::HTTP.uri_escape(input[:member_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for DeleteChannelMessage
    class DeleteChannelMessage
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        if input[:message_id].to_s.empty?
          raise ArgumentError, "HTTP label :message_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/messages/%<MessageId>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s),
            MessageId: Hearth::HTTP.uri_escape(input[:message_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for DeleteChannelModerator
    class DeleteChannelModerator
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        if input[:channel_moderator_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_moderator_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/moderators/%<ChannelModeratorArn>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s),
            ChannelModeratorArn: Hearth::HTTP.uri_escape(input[:channel_moderator_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for DescribeChannel
    class DescribeChannel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for DescribeChannelBan
    class DescribeChannelBan
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        if input[:member_arn].to_s.empty?
          raise ArgumentError, "HTTP label :member_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/bans/%<MemberArn>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s),
            MemberArn: Hearth::HTTP.uri_escape(input[:member_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for DescribeChannelFlow
    class DescribeChannelFlow
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel-flows/%<ChannelFlowArn>s',
            ChannelFlowArn: Hearth::HTTP.uri_escape(input[:channel_flow_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeChannelMembership
    class DescribeChannelMembership
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        if input[:member_arn].to_s.empty?
          raise ArgumentError, "HTTP label :member_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/memberships/%<MemberArn>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s),
            MemberArn: Hearth::HTTP.uri_escape(input[:member_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for DescribeChannelMembershipForAppInstanceUser
    class DescribeChannelMembershipForAppInstanceUser
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('scope=app-instance-user-membership').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['app-instance-user-arn'] = input[:app_instance_user_arn].to_s unless input[:app_instance_user_arn].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for DescribeChannelModeratedByAppInstanceUser
    class DescribeChannelModeratedByAppInstanceUser
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('scope=app-instance-user-moderated-channel').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['app-instance-user-arn'] = input[:app_instance_user_arn].to_s unless input[:app_instance_user_arn].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for DescribeChannelModerator
    class DescribeChannelModerator
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        if input[:channel_moderator_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_moderator_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/moderators/%<ChannelModeratorArn>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s),
            ChannelModeratorArn: Hearth::HTTP.uri_escape(input[:channel_moderator_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for DisassociateChannelFlow
    class DisassociateChannelFlow
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        if input[:channel_flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/channel-flow/%<ChannelFlowArn>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s),
            ChannelFlowArn: Hearth::HTTP.uri_escape(input[:channel_flow_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for GetChannelMembershipPreferences
    class GetChannelMembershipPreferences
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        if input[:member_arn].to_s.empty?
          raise ArgumentError, "HTTP label :member_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/memberships/%<MemberArn>s/preferences',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s),
            MemberArn: Hearth::HTTP.uri_escape(input[:member_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for GetChannelMessage
    class GetChannelMessage
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        if input[:message_id].to_s.empty?
          raise ArgumentError, "HTTP label :message_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/messages/%<MessageId>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s),
            MessageId: Hearth::HTTP.uri_escape(input[:message_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for GetChannelMessageStatus
    class GetChannelMessageStatus
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('scope=message-status').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        if input[:message_id].to_s.empty?
          raise ArgumentError, "HTTP label :message_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/messages/%<MessageId>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s),
            MessageId: Hearth::HTTP.uri_escape(input[:message_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for GetMessagingSessionEndpoint
    class GetMessagingSessionEndpoint
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/endpoints/messaging-session')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListChannelBans
    class ListChannelBans
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/bans',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for ListChannelFlows
    class ListChannelFlows
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/channel-flows')
        params = Hearth::Query::ParamList.new
        params['app-instance-arn'] = input[:app_instance_arn].to_s unless input[:app_instance_arn].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListChannelMemberships
    class ListChannelMemberships
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/memberships',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['type'] = input[:type].to_s unless input[:type].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for ListChannelMembershipsForAppInstanceUser
    class ListChannelMembershipsForAppInstanceUser
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('scope=app-instance-user-memberships').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/channels')
        params = Hearth::Query::ParamList.new
        params['app-instance-user-arn'] = input[:app_instance_user_arn].to_s unless input[:app_instance_user_arn].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for ListChannelMessages
    class ListChannelMessages
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/messages',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['sort-order'] = input[:sort_order].to_s unless input[:sort_order].nil?
        params['not-before'] = Hearth::TimeHelper.to_date_time(input[:not_before]) unless input[:not_before].nil?
        params['not-after'] = Hearth::TimeHelper.to_date_time(input[:not_after]) unless input[:not_after].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for ListChannelModerators
    class ListChannelModerators
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/moderators',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for ListChannels
    class ListChannels
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/channels')
        params = Hearth::Query::ParamList.new
        params['app-instance-arn'] = input[:app_instance_arn].to_s unless input[:app_instance_arn].nil?
        params['privacy'] = input[:privacy].to_s unless input[:privacy].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for ListChannelsAssociatedWithChannelFlow
    class ListChannelsAssociatedWithChannelFlow
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('scope=channel-flow-associations').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/channels')
        params = Hearth::Query::ParamList.new
        params['channel-flow-arn'] = input[:channel_flow_arn].to_s unless input[:channel_flow_arn].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListChannelsModeratedByAppInstanceUser
    class ListChannelsModeratedByAppInstanceUser
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('scope=app-instance-user-moderated-channels').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/channels')
        params = Hearth::Query::ParamList.new
        params['app-instance-user-arn'] = input[:app_instance_user_arn].to_s unless input[:app_instance_user_arn].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['arn'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutChannelMembershipPreferences
    class PutChannelMembershipPreferences
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        if input[:member_arn].to_s.empty?
          raise ArgumentError, "HTTP label :member_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/memberships/%<MemberArn>s/preferences',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s),
            MemberArn: Hearth::HTTP.uri_escape(input[:member_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Preferences'] = ChannelMembershipPreferences.build(input[:preferences]) unless input[:preferences].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Structure Builder for ChannelMembershipPreferences
    class ChannelMembershipPreferences
      def self.build(input)
        data = {}
        data['PushNotifications'] = PushNotificationPreferences.build(input[:push_notifications]) unless input[:push_notifications].nil?
        data
      end
    end

    # Structure Builder for PushNotificationPreferences
    class PushNotificationPreferences
      def self.build(input)
        data = {}
        data['AllowNotifications'] = input[:allow_notifications] unless input[:allow_notifications].nil?
        data['FilterRule'] = input[:filter_rule] unless input[:filter_rule].nil?
        data
      end
    end

    # Operation Builder for RedactChannelMessage
    class RedactChannelMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=redact').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        if input[:message_id].to_s.empty?
          raise ArgumentError, "HTTP label :message_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/messages/%<MessageId>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s),
            MessageId: Hearth::HTTP.uri_escape(input[:message_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for SearchChannels
    class SearchChannels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=search').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/channels')
        params = Hearth::Query::ParamList.new
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Fields'] = SearchFields.build(input[:fields]) unless input[:fields].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # List Builder for SearchFields
    class SearchFields
      def self.build(input)
        data = []
        input.each do |element|
          data << SearchField.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SearchField
    class SearchField
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Values'] = SearchFieldValues.build(input[:values]) unless input[:values].nil?
        data['Operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # List Builder for SearchFieldValues
    class SearchFieldValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SendChannelMessage
    class SendChannelMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/messages',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Content'] = input[:content] unless input[:content].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Persistence'] = input[:persistence] unless input[:persistence].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['PushNotification'] = PushNotificationConfiguration.build(input[:push_notification]) unless input[:push_notification].nil?
        data['MessageAttributes'] = MessageAttributeMap.build(input[:message_attributes]) unless input[:message_attributes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=tag-resource').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=untag-resource').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateChannel
    class UpdateChannel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Mode'] = input[:mode] unless input[:mode].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for UpdateChannelFlow
    class UpdateChannelFlow
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:channel_flow_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_flow_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channel-flows/%<ChannelFlowArn>s',
            ChannelFlowArn: Hearth::HTTP.uri_escape(input[:channel_flow_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Processors'] = ProcessorList.build(input[:processors]) unless input[:processors].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateChannelMessage
    class UpdateChannelMessage
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        if input[:message_id].to_s.empty?
          raise ArgumentError, "HTTP label :message_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/messages/%<MessageId>s',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s),
            MessageId: Hearth::HTTP.uri_escape(input[:message_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Content'] = input[:content] unless input[:content].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for UpdateChannelReadMarker
    class UpdateChannelReadMarker
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:channel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :channel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/channels/%<ChannelArn>s/readMarker',
            ChannelArn: Hearth::HTTP.uri_escape(input[:channel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end
  end
end
