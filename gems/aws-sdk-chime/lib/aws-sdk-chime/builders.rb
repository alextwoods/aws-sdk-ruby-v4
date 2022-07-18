# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Chime
  module Builders

    # Operation Builder for AssociatePhoneNumberWithUser
    class AssociatePhoneNumberWithUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=associate-phone-number').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/users/%<UserId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['E164PhoneNumber'] = input[:e164_phone_number] unless input[:e164_phone_number].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociatePhoneNumbersWithVoiceConnector
    class AssociatePhoneNumbersWithVoiceConnector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=associate-phone-numbers').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['E164PhoneNumbers'] = Builders::E164PhoneNumberList.build(input[:e164_phone_numbers]) unless input[:e164_phone_numbers].nil?
        data['ForceAssociate'] = input[:force_associate] unless input[:force_associate].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for E164PhoneNumberList
    class E164PhoneNumberList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for AssociatePhoneNumbersWithVoiceConnectorGroup
    class AssociatePhoneNumbersWithVoiceConnectorGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=associate-phone-numbers').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:voice_connector_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connector-groups/%<VoiceConnectorGroupId>s',
            VoiceConnectorGroupId: Hearth::HTTP.uri_escape(input[:voice_connector_group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['E164PhoneNumbers'] = Builders::E164PhoneNumberList.build(input[:e164_phone_numbers]) unless input[:e164_phone_numbers].nil?
        data['ForceAssociate'] = input[:force_associate] unless input[:force_associate].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateSigninDelegateGroupsWithAccount
    class AssociateSigninDelegateGroupsWithAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=associate-signin-delegate-groups').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SigninDelegateGroups'] = Builders::SigninDelegateGroupList.build(input[:signin_delegate_groups]) unless input[:signin_delegate_groups].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SigninDelegateGroupList
    class SigninDelegateGroupList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SigninDelegateGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SigninDelegateGroup
    class SigninDelegateGroup
      def self.build(input)
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data
      end
    end

    # Operation Builder for BatchCreateAttendee
    class BatchCreateAttendee
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=batch-create').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/attendees',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Attendees'] = Builders::CreateAttendeeRequestItemList.build(input[:attendees]) unless input[:attendees].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CreateAttendeeRequestItemList
    class CreateAttendeeRequestItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CreateAttendeeRequestItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateAttendeeRequestItem
    class CreateAttendeeRequestItem
      def self.build(input)
        data = {}
        data['ExternalUserId'] = input[:external_user_id] unless input[:external_user_id].nil?
        data['Tags'] = Builders::AttendeeTagList.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # List Builder for AttendeeTagList
    class AttendeeTagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
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
        data['MemberArns'] = Builders::MemberArns.build(input[:member_arns]) unless input[:member_arns].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for BatchCreateRoomMembership
    class BatchCreateRoomMembership
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=batch-create').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:room_id].to_s.empty?
          raise ArgumentError, "HTTP label :room_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/rooms/%<RoomId>s/memberships',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            RoomId: Hearth::HTTP.uri_escape(input[:room_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MembershipItemList'] = Builders::MembershipItemList.build(input[:membership_item_list]) unless input[:membership_item_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MembershipItemList
    class MembershipItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MembershipItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MembershipItem
    class MembershipItem
      def self.build(input)
        data = {}
        data['MemberId'] = input[:member_id] unless input[:member_id].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data
      end
    end

    # Operation Builder for BatchDeletePhoneNumber
    class BatchDeletePhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=batch-delete').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/phone-numbers')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PhoneNumberIds'] = Builders::NonEmptyStringList.build(input[:phone_number_ids]) unless input[:phone_number_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for NonEmptyStringList
    class NonEmptyStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchSuspendUser
    class BatchSuspendUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=suspend').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/users',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['UserIdList'] = Builders::UserIdList.build(input[:user_id_list]) unless input[:user_id_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UserIdList
    class UserIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchUnsuspendUser
    class BatchUnsuspendUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=unsuspend').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/users',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['UserIdList'] = Builders::UserIdList.build(input[:user_id_list]) unless input[:user_id_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchUpdatePhoneNumber
    class BatchUpdatePhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=batch-update').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/phone-numbers')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['UpdatePhoneNumberRequestItems'] = Builders::UpdatePhoneNumberRequestItemList.build(input[:update_phone_number_request_items]) unless input[:update_phone_number_request_items].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UpdatePhoneNumberRequestItemList
    class UpdatePhoneNumberRequestItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UpdatePhoneNumberRequestItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UpdatePhoneNumberRequestItem
    class UpdatePhoneNumberRequestItem
      def self.build(input)
        data = {}
        data['PhoneNumberId'] = input[:phone_number_id] unless input[:phone_number_id].nil?
        data['ProductType'] = input[:product_type] unless input[:product_type].nil?
        data['CallingName'] = input[:calling_name] unless input[:calling_name].nil?
        data
      end
    end

    # Operation Builder for BatchUpdateUser
    class BatchUpdateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/users',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['UpdateUserRequestItems'] = Builders::UpdateUserRequestItemList.build(input[:update_user_request_items]) unless input[:update_user_request_items].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UpdateUserRequestItemList
    class UpdateUserRequestItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UpdateUserRequestItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UpdateUserRequestItem
    class UpdateUserRequestItem
      def self.build(input)
        data = {}
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['LicenseType'] = input[:license_type] unless input[:license_type].nil?
        data['UserType'] = input[:user_type] unless input[:user_type].nil?
        data['AlexaForBusinessMetadata'] = Builders::AlexaForBusinessMetadata.build(input[:alexa_for_business_metadata]) unless input[:alexa_for_business_metadata].nil?
        data
      end
    end

    # Structure Builder for AlexaForBusinessMetadata
    class AlexaForBusinessMetadata
      def self.build(input)
        data = {}
        data['IsAlexaForBusinessEnabled'] = input[:is_alexa_for_business_enabled] unless input[:is_alexa_for_business_enabled].nil?
        data['AlexaForBusinessRoomArn'] = input[:alexa_for_business_room_arn] unless input[:alexa_for_business_room_arn].nil?
        data
      end
    end

    # Operation Builder for CreateAccount
    class CreateAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/accounts')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAppInstance
    class CreateAppInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/app-instances')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateAppInstanceAdmin
    class CreateAppInstanceAdmin
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s/admins',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AppInstanceAdminArn'] = input[:app_instance_admin_arn] unless input[:app_instance_admin_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAppInstanceUser
    class CreateAppInstanceUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/app-instance-users')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AppInstanceArn'] = input[:app_instance_arn] unless input[:app_instance_arn].nil?
        data['AppInstanceUserId'] = input[:app_instance_user_id] unless input[:app_instance_user_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAttendee
    class CreateAttendee
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/attendees',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ExternalUserId'] = input[:external_user_id] unless input[:external_user_id].nil?
        data['Tags'] = Builders::AttendeeTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateBot
    class CreateBot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/bots',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['Domain'] = input[:domain] unless input[:domain].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
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
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
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
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for CreateMediaCapturePipeline
    class CreateMediaCapturePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/media-capture-pipelines')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SourceType'] = input[:source_type] unless input[:source_type].nil?
        data['SourceArn'] = input[:source_arn] unless input[:source_arn].nil?
        data['SinkType'] = input[:sink_type] unless input[:sink_type].nil?
        data['SinkArn'] = input[:sink_arn] unless input[:sink_arn].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['ChimeSdkMeetingConfiguration'] = Builders::ChimeSdkMeetingConfiguration.build(input[:chime_sdk_meeting_configuration]) unless input[:chime_sdk_meeting_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ChimeSdkMeetingConfiguration
    class ChimeSdkMeetingConfiguration
      def self.build(input)
        data = {}
        data['SourceConfiguration'] = Builders::SourceConfiguration.build(input[:source_configuration]) unless input[:source_configuration].nil?
        data['ArtifactsConfiguration'] = Builders::ArtifactsConfiguration.build(input[:artifacts_configuration]) unless input[:artifacts_configuration].nil?
        data
      end
    end

    # Structure Builder for ArtifactsConfiguration
    class ArtifactsConfiguration
      def self.build(input)
        data = {}
        data['Audio'] = Builders::AudioArtifactsConfiguration.build(input[:audio]) unless input[:audio].nil?
        data['Video'] = Builders::VideoArtifactsConfiguration.build(input[:video]) unless input[:video].nil?
        data['Content'] = Builders::ContentArtifactsConfiguration.build(input[:content]) unless input[:content].nil?
        data
      end
    end

    # Structure Builder for ContentArtifactsConfiguration
    class ContentArtifactsConfiguration
      def self.build(input)
        data = {}
        data['State'] = input[:state] unless input[:state].nil?
        data['MuxType'] = input[:mux_type] unless input[:mux_type].nil?
        data
      end
    end

    # Structure Builder for VideoArtifactsConfiguration
    class VideoArtifactsConfiguration
      def self.build(input)
        data = {}
        data['State'] = input[:state] unless input[:state].nil?
        data['MuxType'] = input[:mux_type] unless input[:mux_type].nil?
        data
      end
    end

    # Structure Builder for AudioArtifactsConfiguration
    class AudioArtifactsConfiguration
      def self.build(input)
        data = {}
        data['MuxType'] = input[:mux_type] unless input[:mux_type].nil?
        data
      end
    end

    # Structure Builder for SourceConfiguration
    class SourceConfiguration
      def self.build(input)
        data = {}
        data['SelectedVideoStreams'] = Builders::SelectedVideoStreams.build(input[:selected_video_streams]) unless input[:selected_video_streams].nil?
        data
      end
    end

    # Structure Builder for SelectedVideoStreams
    class SelectedVideoStreams
      def self.build(input)
        data = {}
        data['AttendeeIds'] = Builders::AttendeeIdList.build(input[:attendee_ids]) unless input[:attendee_ids].nil?
        data['ExternalUserIds'] = Builders::ExternalUserIdList.build(input[:external_user_ids]) unless input[:external_user_ids].nil?
        data
      end
    end

    # List Builder for ExternalUserIdList
    class ExternalUserIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AttendeeIdList
    class AttendeeIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateMeeting
    class CreateMeeting
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/meetings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['ExternalMeetingId'] = input[:external_meeting_id] unless input[:external_meeting_id].nil?
        data['MeetingHostId'] = input[:meeting_host_id] unless input[:meeting_host_id].nil?
        data['MediaRegion'] = input[:media_region] unless input[:media_region].nil?
        data['Tags'] = Builders::MeetingTagList.build(input[:tags]) unless input[:tags].nil?
        data['NotificationsConfiguration'] = Builders::MeetingNotificationConfiguration.build(input[:notifications_configuration]) unless input[:notifications_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MeetingNotificationConfiguration
    class MeetingNotificationConfiguration
      def self.build(input)
        data = {}
        data['SnsTopicArn'] = input[:sns_topic_arn] unless input[:sns_topic_arn].nil?
        data['SqsQueueArn'] = input[:sqs_queue_arn] unless input[:sqs_queue_arn].nil?
        data
      end
    end

    # List Builder for MeetingTagList
    class MeetingTagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateMeetingDialOut
    class CreateMeetingDialOut
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/dial-outs',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FromPhoneNumber'] = input[:from_phone_number] unless input[:from_phone_number].nil?
        data['ToPhoneNumber'] = input[:to_phone_number] unless input[:to_phone_number].nil?
        data['JoinToken'] = input[:join_token] unless input[:join_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateMeetingWithAttendees
    class CreateMeetingWithAttendees
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=create-attendees').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/meetings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['ExternalMeetingId'] = input[:external_meeting_id] unless input[:external_meeting_id].nil?
        data['MeetingHostId'] = input[:meeting_host_id] unless input[:meeting_host_id].nil?
        data['MediaRegion'] = input[:media_region] unless input[:media_region].nil?
        data['Tags'] = Builders::MeetingTagList.build(input[:tags]) unless input[:tags].nil?
        data['NotificationsConfiguration'] = Builders::MeetingNotificationConfiguration.build(input[:notifications_configuration]) unless input[:notifications_configuration].nil?
        data['Attendees'] = Builders::CreateMeetingWithAttendeesRequestItemList.build(input[:attendees]) unless input[:attendees].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CreateMeetingWithAttendeesRequestItemList
    class CreateMeetingWithAttendeesRequestItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CreateAttendeeRequestItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreatePhoneNumberOrder
    class CreatePhoneNumberOrder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/phone-number-orders')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ProductType'] = input[:product_type] unless input[:product_type].nil?
        data['E164PhoneNumbers'] = Builders::E164PhoneNumberList.build(input[:e164_phone_numbers]) unless input[:e164_phone_numbers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateProxySession
    class CreateProxySession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/proxy-sessions',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ParticipantPhoneNumbers'] = Builders::ParticipantPhoneNumberList.build(input[:participant_phone_numbers]) unless input[:participant_phone_numbers].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['ExpiryMinutes'] = input[:expiry_minutes] unless input[:expiry_minutes].nil?
        data['Capabilities'] = Builders::CapabilityList.build(input[:capabilities]) unless input[:capabilities].nil?
        data['NumberSelectionBehavior'] = input[:number_selection_behavior] unless input[:number_selection_behavior].nil?
        data['GeoMatchLevel'] = input[:geo_match_level] unless input[:geo_match_level].nil?
        data['GeoMatchParams'] = Builders::GeoMatchParams.build(input[:geo_match_params]) unless input[:geo_match_params].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for GeoMatchParams
    class GeoMatchParams
      def self.build(input)
        data = {}
        data['Country'] = input[:country] unless input[:country].nil?
        data['AreaCode'] = input[:area_code] unless input[:area_code].nil?
        data
      end
    end

    # List Builder for CapabilityList
    class CapabilityList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ParticipantPhoneNumberList
    class ParticipantPhoneNumberList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateRoom
    class CreateRoom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/rooms',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRoomMembership
    class CreateRoomMembership
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:room_id].to_s.empty?
          raise ArgumentError, "HTTP label :room_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/rooms/%<RoomId>s/memberships',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            RoomId: Hearth::HTTP.uri_escape(input[:room_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MemberId'] = input[:member_id] unless input[:member_id].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSipMediaApplication
    class CreateSipMediaApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/sip-media-applications')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AwsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Endpoints'] = Builders::SipMediaApplicationEndpointList.build(input[:endpoints]) unless input[:endpoints].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SipMediaApplicationEndpointList
    class SipMediaApplicationEndpointList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SipMediaApplicationEndpoint.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SipMediaApplicationEndpoint
    class SipMediaApplicationEndpoint
      def self.build(input)
        data = {}
        data['LambdaArn'] = input[:lambda_arn] unless input[:lambda_arn].nil?
        data
      end
    end

    # Operation Builder for CreateSipMediaApplicationCall
    class CreateSipMediaApplicationCall
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:sip_media_application_id].to_s.empty?
          raise ArgumentError, "HTTP label :sip_media_application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sip-media-applications/%<SipMediaApplicationId>s/calls',
            SipMediaApplicationId: Hearth::HTTP.uri_escape(input[:sip_media_application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FromPhoneNumber'] = input[:from_phone_number] unless input[:from_phone_number].nil?
        data['ToPhoneNumber'] = input[:to_phone_number] unless input[:to_phone_number].nil?
        data['SipHeaders'] = Builders::SipHeadersMap.build(input[:sip_headers]) unless input[:sip_headers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for SipHeadersMap
    class SipHeadersMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateSipRule
    class CreateSipRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/sip-rules')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['TriggerType'] = input[:trigger_type] unless input[:trigger_type].nil?
        data['TriggerValue'] = input[:trigger_value] unless input[:trigger_value].nil?
        data['Disabled'] = input[:disabled] unless input[:disabled].nil?
        data['TargetApplications'] = Builders::SipRuleTargetApplicationList.build(input[:target_applications]) unless input[:target_applications].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SipRuleTargetApplicationList
    class SipRuleTargetApplicationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SipRuleTargetApplication.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SipRuleTargetApplication
    class SipRuleTargetApplication
      def self.build(input)
        data = {}
        data['SipMediaApplicationId'] = input[:sip_media_application_id] unless input[:sip_media_application_id].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['AwsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data
      end
    end

    # Operation Builder for CreateUser
    class CreateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=create').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/users',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Username'] = input[:username] unless input[:username].nil?
        data['Email'] = input[:email] unless input[:email].nil?
        data['UserType'] = input[:user_type] unless input[:user_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateVoiceConnector
    class CreateVoiceConnector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/voice-connectors')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['AwsRegion'] = input[:aws_region] unless input[:aws_region].nil?
        data['RequireEncryption'] = input[:require_encryption] unless input[:require_encryption].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateVoiceConnectorGroup
    class CreateVoiceConnectorGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/voice-connector-groups')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['VoiceConnectorItems'] = Builders::VoiceConnectorItemList.build(input[:voice_connector_items]) unless input[:voice_connector_items].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for VoiceConnectorItemList
    class VoiceConnectorItemList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::VoiceConnectorItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VoiceConnectorItem
    class VoiceConnectorItem
      def self.build(input)
        data = {}
        data['VoiceConnectorId'] = input[:voice_connector_id] unless input[:voice_connector_id].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data
      end
    end

    # Operation Builder for DeleteAccount
    class DeleteAccount
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAppInstance
    class DeleteAppInstance
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAppInstanceAdmin
    class DeleteAppInstanceAdmin
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:app_instance_admin_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_admin_arn cannot be nil or empty."
        end
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s/admins/%<AppInstanceAdminArn>s',
            AppInstanceAdminArn: Hearth::HTTP.uri_escape(input[:app_instance_admin_arn].to_s),
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAppInstanceStreamingConfigurations
    class DeleteAppInstanceStreamingConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s/streaming-configurations',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAppInstanceUser
    class DeleteAppInstanceUser
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:app_instance_user_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_user_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instance-users/%<AppInstanceUserArn>s',
            AppInstanceUserArn: Hearth::HTTP.uri_escape(input[:app_instance_user_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAttendee
    class DeleteAttendee
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        if input[:attendee_id].to_s.empty?
          raise ArgumentError, "HTTP label :attendee_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/attendees/%<AttendeeId>s',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s),
            AttendeeId: Hearth::HTTP.uri_escape(input[:attendee_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
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

    # Operation Builder for DeleteEventsConfiguration
    class DeleteEventsConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/bots/%<BotId>s/events-configuration',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            BotId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteMediaCapturePipeline
    class DeleteMediaCapturePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:media_pipeline_id].to_s.empty?
          raise ArgumentError, "HTTP label :media_pipeline_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/media-capture-pipelines/%<MediaPipelineId>s',
            MediaPipelineId: Hearth::HTTP.uri_escape(input[:media_pipeline_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteMeeting
    class DeleteMeeting
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePhoneNumber
    class DeletePhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:phone_number_id].to_s.empty?
          raise ArgumentError, "HTTP label :phone_number_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/phone-numbers/%<PhoneNumberId>s',
            PhoneNumberId: Hearth::HTTP.uri_escape(input[:phone_number_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteProxySession
    class DeleteProxySession
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        if input[:proxy_session_id].to_s.empty?
          raise ArgumentError, "HTTP label :proxy_session_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/proxy-sessions/%<ProxySessionId>s',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s),
            ProxySessionId: Hearth::HTTP.uri_escape(input[:proxy_session_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRoom
    class DeleteRoom
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:room_id].to_s.empty?
          raise ArgumentError, "HTTP label :room_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/rooms/%<RoomId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            RoomId: Hearth::HTTP.uri_escape(input[:room_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRoomMembership
    class DeleteRoomMembership
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:room_id].to_s.empty?
          raise ArgumentError, "HTTP label :room_id cannot be nil or empty."
        end
        if input[:member_id].to_s.empty?
          raise ArgumentError, "HTTP label :member_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/rooms/%<RoomId>s/memberships/%<MemberId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            RoomId: Hearth::HTTP.uri_escape(input[:room_id].to_s),
            MemberId: Hearth::HTTP.uri_escape(input[:member_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSipMediaApplication
    class DeleteSipMediaApplication
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:sip_media_application_id].to_s.empty?
          raise ArgumentError, "HTTP label :sip_media_application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sip-media-applications/%<SipMediaApplicationId>s',
            SipMediaApplicationId: Hearth::HTTP.uri_escape(input[:sip_media_application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSipRule
    class DeleteSipRule
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:sip_rule_id].to_s.empty?
          raise ArgumentError, "HTTP label :sip_rule_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sip-rules/%<SipRuleId>s',
            SipRuleId: Hearth::HTTP.uri_escape(input[:sip_rule_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVoiceConnector
    class DeleteVoiceConnector
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVoiceConnectorEmergencyCallingConfiguration
    class DeleteVoiceConnectorEmergencyCallingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/emergency-calling-configuration',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVoiceConnectorGroup
    class DeleteVoiceConnectorGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:voice_connector_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connector-groups/%<VoiceConnectorGroupId>s',
            VoiceConnectorGroupId: Hearth::HTTP.uri_escape(input[:voice_connector_group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVoiceConnectorOrigination
    class DeleteVoiceConnectorOrigination
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/origination',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVoiceConnectorProxy
    class DeleteVoiceConnectorProxy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/programmable-numbers/proxy',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVoiceConnectorStreamingConfiguration
    class DeleteVoiceConnectorStreamingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/streaming-configuration',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVoiceConnectorTermination
    class DeleteVoiceConnectorTermination
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/termination',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVoiceConnectorTerminationCredentials
    class DeleteVoiceConnectorTerminationCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=delete').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/termination/credentials',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Usernames'] = Builders::SensitiveStringList.build(input[:usernames]) unless input[:usernames].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SensitiveStringList
    class SensitiveStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeAppInstance
    class DescribeAppInstance
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAppInstanceAdmin
    class DescribeAppInstanceAdmin
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_instance_admin_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_admin_arn cannot be nil or empty."
        end
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s/admins/%<AppInstanceAdminArn>s',
            AppInstanceAdminArn: Hearth::HTTP.uri_escape(input[:app_instance_admin_arn].to_s),
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAppInstanceUser
    class DescribeAppInstanceUser
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_instance_user_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_user_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instance-users/%<AppInstanceUserArn>s',
            AppInstanceUserArn: Hearth::HTTP.uri_escape(input[:app_instance_user_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
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

    # Operation Builder for DisassociatePhoneNumberFromUser
    class DisassociatePhoneNumberFromUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=disassociate-phone-number').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/users/%<UserId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociatePhoneNumbersFromVoiceConnector
    class DisassociatePhoneNumbersFromVoiceConnector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=disassociate-phone-numbers').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['E164PhoneNumbers'] = Builders::E164PhoneNumberList.build(input[:e164_phone_numbers]) unless input[:e164_phone_numbers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociatePhoneNumbersFromVoiceConnectorGroup
    class DisassociatePhoneNumbersFromVoiceConnectorGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=disassociate-phone-numbers').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:voice_connector_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connector-groups/%<VoiceConnectorGroupId>s',
            VoiceConnectorGroupId: Hearth::HTTP.uri_escape(input[:voice_connector_group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['E164PhoneNumbers'] = Builders::E164PhoneNumberList.build(input[:e164_phone_numbers]) unless input[:e164_phone_numbers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateSigninDelegateGroupsFromAccount
    class DisassociateSigninDelegateGroupsFromAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=disassociate-signin-delegate-groups').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GroupNames'] = Builders::NonEmptyStringList.build(input[:group_names]) unless input[:group_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAccount
    class GetAccount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAccountSettings
    class GetAccountSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/settings',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAppInstanceRetentionSettings
    class GetAppInstanceRetentionSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s/retention-settings',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAppInstanceStreamingConfigurations
    class GetAppInstanceStreamingConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s/streaming-configurations',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAttendee
    class GetAttendee
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        if input[:attendee_id].to_s.empty?
          raise ArgumentError, "HTTP label :attendee_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/attendees/%<AttendeeId>s',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s),
            AttendeeId: Hearth::HTTP.uri_escape(input[:attendee_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBot
    class GetBot
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/bots/%<BotId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            BotId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
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

    # Operation Builder for GetEventsConfiguration
    class GetEventsConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/bots/%<BotId>s/events-configuration',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            BotId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetGlobalSettings
    class GetGlobalSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/settings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMediaCapturePipeline
    class GetMediaCapturePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:media_pipeline_id].to_s.empty?
          raise ArgumentError, "HTTP label :media_pipeline_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/media-capture-pipelines/%<MediaPipelineId>s',
            MediaPipelineId: Hearth::HTTP.uri_escape(input[:media_pipeline_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMeeting
    class GetMeeting
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
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

    # Operation Builder for GetPhoneNumber
    class GetPhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:phone_number_id].to_s.empty?
          raise ArgumentError, "HTTP label :phone_number_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/phone-numbers/%<PhoneNumberId>s',
            PhoneNumberId: Hearth::HTTP.uri_escape(input[:phone_number_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPhoneNumberOrder
    class GetPhoneNumberOrder
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:phone_number_order_id].to_s.empty?
          raise ArgumentError, "HTTP label :phone_number_order_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/phone-number-orders/%<PhoneNumberOrderId>s',
            PhoneNumberOrderId: Hearth::HTTP.uri_escape(input[:phone_number_order_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPhoneNumberSettings
    class GetPhoneNumberSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/settings/phone-number')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetProxySession
    class GetProxySession
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        if input[:proxy_session_id].to_s.empty?
          raise ArgumentError, "HTTP label :proxy_session_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/proxy-sessions/%<ProxySessionId>s',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s),
            ProxySessionId: Hearth::HTTP.uri_escape(input[:proxy_session_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRetentionSettings
    class GetRetentionSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/retention-settings',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRoom
    class GetRoom
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:room_id].to_s.empty?
          raise ArgumentError, "HTTP label :room_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/rooms/%<RoomId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            RoomId: Hearth::HTTP.uri_escape(input[:room_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSipMediaApplication
    class GetSipMediaApplication
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:sip_media_application_id].to_s.empty?
          raise ArgumentError, "HTTP label :sip_media_application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sip-media-applications/%<SipMediaApplicationId>s',
            SipMediaApplicationId: Hearth::HTTP.uri_escape(input[:sip_media_application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSipMediaApplicationLoggingConfiguration
    class GetSipMediaApplicationLoggingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:sip_media_application_id].to_s.empty?
          raise ArgumentError, "HTTP label :sip_media_application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sip-media-applications/%<SipMediaApplicationId>s/logging-configuration',
            SipMediaApplicationId: Hearth::HTTP.uri_escape(input[:sip_media_application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSipRule
    class GetSipRule
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:sip_rule_id].to_s.empty?
          raise ArgumentError, "HTTP label :sip_rule_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sip-rules/%<SipRuleId>s',
            SipRuleId: Hearth::HTTP.uri_escape(input[:sip_rule_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetUser
    class GetUser
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/users/%<UserId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetUserSettings
    class GetUserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/users/%<UserId>s/settings',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetVoiceConnector
    class GetVoiceConnector
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetVoiceConnectorEmergencyCallingConfiguration
    class GetVoiceConnectorEmergencyCallingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/emergency-calling-configuration',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetVoiceConnectorGroup
    class GetVoiceConnectorGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:voice_connector_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connector-groups/%<VoiceConnectorGroupId>s',
            VoiceConnectorGroupId: Hearth::HTTP.uri_escape(input[:voice_connector_group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetVoiceConnectorLoggingConfiguration
    class GetVoiceConnectorLoggingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/logging-configuration',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetVoiceConnectorOrigination
    class GetVoiceConnectorOrigination
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/origination',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetVoiceConnectorProxy
    class GetVoiceConnectorProxy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/programmable-numbers/proxy',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetVoiceConnectorStreamingConfiguration
    class GetVoiceConnectorStreamingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/streaming-configuration',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetVoiceConnectorTermination
    class GetVoiceConnectorTermination
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/termination',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetVoiceConnectorTerminationHealth
    class GetVoiceConnectorTerminationHealth
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/termination/health',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for InviteUsers
    class InviteUsers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=add').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/users',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['UserEmailList'] = Builders::UserEmailList.build(input[:user_email_list]) unless input[:user_email_list].nil?
        data['UserType'] = input[:user_type] unless input[:user_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UserEmailList
    class UserEmailList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListAccounts
    class ListAccounts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/accounts')
        params = Hearth::Query::ParamList.new
        params['name'] = input[:name].to_s unless input[:name].nil?
        params['user-email'] = input[:user_email].to_s unless input[:user_email].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAppInstanceAdmins
    class ListAppInstanceAdmins
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s/admins',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAppInstanceUsers
    class ListAppInstanceUsers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/app-instance-users')
        params = Hearth::Query::ParamList.new
        params['app-instance-arn'] = input[:app_instance_arn].to_s unless input[:app_instance_arn].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAppInstances
    class ListAppInstances
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/app-instances')
        params = Hearth::Query::ParamList.new
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAttendeeTags
    class ListAttendeeTags
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        if input[:attendee_id].to_s.empty?
          raise ArgumentError, "HTTP label :attendee_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/attendees/%<AttendeeId>s/tags',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s),
            AttendeeId: Hearth::HTTP.uri_escape(input[:attendee_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAttendees
    class ListAttendees
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/attendees',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBots
    class ListBots
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/bots',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
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

    # Operation Builder for ListMediaCapturePipelines
    class ListMediaCapturePipelines
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/media-capture-pipelines')
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMeetingTags
    class ListMeetingTags
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/tags',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMeetings
    class ListMeetings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/meetings')
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPhoneNumberOrders
    class ListPhoneNumberOrders
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/phone-number-orders')
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPhoneNumbers
    class ListPhoneNumbers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/phone-numbers')
        params = Hearth::Query::ParamList.new
        params['status'] = input[:status].to_s unless input[:status].nil?
        params['product-type'] = input[:product_type].to_s unless input[:product_type].nil?
        params['filter-name'] = input[:filter_name].to_s unless input[:filter_name].nil?
        params['filter-value'] = input[:filter_value].to_s unless input[:filter_value].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProxySessions
    class ListProxySessions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/proxy-sessions',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['status'] = input[:status].to_s unless input[:status].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRoomMemberships
    class ListRoomMemberships
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:room_id].to_s.empty?
          raise ArgumentError, "HTTP label :room_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/rooms/%<RoomId>s/memberships',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            RoomId: Hearth::HTTP.uri_escape(input[:room_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRooms
    class ListRooms
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/rooms',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['member-id'] = input[:member_id].to_s unless input[:member_id].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSipMediaApplications
    class ListSipMediaApplications
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/sip-media-applications')
        params = Hearth::Query::ParamList.new
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSipRules
    class ListSipRules
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/sip-rules')
        params = Hearth::Query::ParamList.new
        params['sip-media-application'] = input[:sip_media_application_id].to_s unless input[:sip_media_application_id].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSupportedPhoneNumberCountries
    class ListSupportedPhoneNumberCountries
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/phone-number-countries')
        params = Hearth::Query::ParamList.new
        params['product-type'] = input[:product_type].to_s unless input[:product_type].nil?
        http_req.append_query_params(params)
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

    # Operation Builder for ListUsers
    class ListUsers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/users',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['user-email'] = input[:user_email].to_s unless input[:user_email].nil?
        params['user-type'] = input[:user_type].to_s unless input[:user_type].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListVoiceConnectorGroups
    class ListVoiceConnectorGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/voice-connector-groups')
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListVoiceConnectorTerminationCredentials
    class ListVoiceConnectorTerminationCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/termination/credentials',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListVoiceConnectors
    class ListVoiceConnectors
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/voice-connectors')
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for LogoutUser
    class LogoutUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=logout').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/users/%<UserId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutAppInstanceRetentionSettings
    class PutAppInstanceRetentionSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s/retention-settings',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AppInstanceRetentionSettings'] = Builders::AppInstanceRetentionSettings.build(input[:app_instance_retention_settings]) unless input[:app_instance_retention_settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AppInstanceRetentionSettings
    class AppInstanceRetentionSettings
      def self.build(input)
        data = {}
        data['ChannelRetentionSettings'] = Builders::ChannelRetentionSettings.build(input[:channel_retention_settings]) unless input[:channel_retention_settings].nil?
        data
      end
    end

    # Structure Builder for ChannelRetentionSettings
    class ChannelRetentionSettings
      def self.build(input)
        data = {}
        data['RetentionDays'] = input[:retention_days] unless input[:retention_days].nil?
        data
      end
    end

    # Operation Builder for PutAppInstanceStreamingConfigurations
    class PutAppInstanceStreamingConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s/streaming-configurations',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AppInstanceStreamingConfigurations'] = Builders::AppInstanceStreamingConfigurationList.build(input[:app_instance_streaming_configurations]) unless input[:app_instance_streaming_configurations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AppInstanceStreamingConfigurationList
    class AppInstanceStreamingConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AppInstanceStreamingConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AppInstanceStreamingConfiguration
    class AppInstanceStreamingConfiguration
      def self.build(input)
        data = {}
        data['AppInstanceDataType'] = input[:app_instance_data_type] unless input[:app_instance_data_type].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data
      end
    end

    # Operation Builder for PutEventsConfiguration
    class PutEventsConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/bots/%<BotId>s/events-configuration',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            BotId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['OutboundEventsHTTPSEndpoint'] = input[:outbound_events_https_endpoint] unless input[:outbound_events_https_endpoint].nil?
        data['LambdaFunctionArn'] = input[:lambda_function_arn] unless input[:lambda_function_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRetentionSettings
    class PutRetentionSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/retention-settings',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RetentionSettings'] = Builders::RetentionSettings.build(input[:retention_settings]) unless input[:retention_settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RetentionSettings
    class RetentionSettings
      def self.build(input)
        data = {}
        data['RoomRetentionSettings'] = Builders::RoomRetentionSettings.build(input[:room_retention_settings]) unless input[:room_retention_settings].nil?
        data['ConversationRetentionSettings'] = Builders::ConversationRetentionSettings.build(input[:conversation_retention_settings]) unless input[:conversation_retention_settings].nil?
        data
      end
    end

    # Structure Builder for ConversationRetentionSettings
    class ConversationRetentionSettings
      def self.build(input)
        data = {}
        data['RetentionDays'] = input[:retention_days] unless input[:retention_days].nil?
        data
      end
    end

    # Structure Builder for RoomRetentionSettings
    class RoomRetentionSettings
      def self.build(input)
        data = {}
        data['RetentionDays'] = input[:retention_days] unless input[:retention_days].nil?
        data
      end
    end

    # Operation Builder for PutSipMediaApplicationLoggingConfiguration
    class PutSipMediaApplicationLoggingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:sip_media_application_id].to_s.empty?
          raise ArgumentError, "HTTP label :sip_media_application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sip-media-applications/%<SipMediaApplicationId>s/logging-configuration',
            SipMediaApplicationId: Hearth::HTTP.uri_escape(input[:sip_media_application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SipMediaApplicationLoggingConfiguration'] = Builders::SipMediaApplicationLoggingConfiguration.build(input[:sip_media_application_logging_configuration]) unless input[:sip_media_application_logging_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SipMediaApplicationLoggingConfiguration
    class SipMediaApplicationLoggingConfiguration
      def self.build(input)
        data = {}
        data['EnableSipMediaApplicationMessageLogs'] = input[:enable_sip_media_application_message_logs] unless input[:enable_sip_media_application_message_logs].nil?
        data
      end
    end

    # Operation Builder for PutVoiceConnectorEmergencyCallingConfiguration
    class PutVoiceConnectorEmergencyCallingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/emergency-calling-configuration',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['EmergencyCallingConfiguration'] = Builders::EmergencyCallingConfiguration.build(input[:emergency_calling_configuration]) unless input[:emergency_calling_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for EmergencyCallingConfiguration
    class EmergencyCallingConfiguration
      def self.build(input)
        data = {}
        data['DNIS'] = Builders::DNISEmergencyCallingConfigurationList.build(input[:dnis]) unless input[:dnis].nil?
        data
      end
    end

    # List Builder for DNISEmergencyCallingConfigurationList
    class DNISEmergencyCallingConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DNISEmergencyCallingConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DNISEmergencyCallingConfiguration
    class DNISEmergencyCallingConfiguration
      def self.build(input)
        data = {}
        data['EmergencyPhoneNumber'] = input[:emergency_phone_number] unless input[:emergency_phone_number].nil?
        data['TestPhoneNumber'] = input[:test_phone_number] unless input[:test_phone_number].nil?
        data['CallingCountry'] = input[:calling_country] unless input[:calling_country].nil?
        data
      end
    end

    # Operation Builder for PutVoiceConnectorLoggingConfiguration
    class PutVoiceConnectorLoggingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/logging-configuration',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LoggingConfiguration'] = Builders::LoggingConfiguration.build(input[:logging_configuration]) unless input[:logging_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoggingConfiguration
    class LoggingConfiguration
      def self.build(input)
        data = {}
        data['EnableSIPLogs'] = input[:enable_sip_logs] unless input[:enable_sip_logs].nil?
        data['EnableMediaMetricLogs'] = input[:enable_media_metric_logs] unless input[:enable_media_metric_logs].nil?
        data
      end
    end

    # Operation Builder for PutVoiceConnectorOrigination
    class PutVoiceConnectorOrigination
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/origination',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Origination'] = Builders::Origination.build(input[:origination]) unless input[:origination].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Origination
    class Origination
      def self.build(input)
        data = {}
        data['Routes'] = Builders::OriginationRouteList.build(input[:routes]) unless input[:routes].nil?
        data['Disabled'] = input[:disabled] unless input[:disabled].nil?
        data
      end
    end

    # List Builder for OriginationRouteList
    class OriginationRouteList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OriginationRoute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OriginationRoute
    class OriginationRoute
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['Weight'] = input[:weight] unless input[:weight].nil?
        data
      end
    end

    # Operation Builder for PutVoiceConnectorProxy
    class PutVoiceConnectorProxy
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/programmable-numbers/proxy',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DefaultSessionExpiryMinutes'] = input[:default_session_expiry_minutes] unless input[:default_session_expiry_minutes].nil?
        data['PhoneNumberPoolCountries'] = Builders::CountryList.build(input[:phone_number_pool_countries]) unless input[:phone_number_pool_countries].nil?
        data['FallBackPhoneNumber'] = input[:fall_back_phone_number] unless input[:fall_back_phone_number].nil?
        data['Disabled'] = input[:disabled] unless input[:disabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CountryList
    class CountryList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutVoiceConnectorStreamingConfiguration
    class PutVoiceConnectorStreamingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/streaming-configuration',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['StreamingConfiguration'] = Builders::StreamingConfiguration.build(input[:streaming_configuration]) unless input[:streaming_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for StreamingConfiguration
    class StreamingConfiguration
      def self.build(input)
        data = {}
        data['DataRetentionInHours'] = input[:data_retention_in_hours] unless input[:data_retention_in_hours].nil?
        data['Disabled'] = input[:disabled] unless input[:disabled].nil?
        data['StreamingNotificationTargets'] = Builders::StreamingNotificationTargetList.build(input[:streaming_notification_targets]) unless input[:streaming_notification_targets].nil?
        data
      end
    end

    # List Builder for StreamingNotificationTargetList
    class StreamingNotificationTargetList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StreamingNotificationTarget.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StreamingNotificationTarget
    class StreamingNotificationTarget
      def self.build(input)
        data = {}
        data['NotificationTarget'] = input[:notification_target] unless input[:notification_target].nil?
        data
      end
    end

    # Operation Builder for PutVoiceConnectorTermination
    class PutVoiceConnectorTermination
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/termination',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Termination'] = Builders::Termination.build(input[:termination]) unless input[:termination].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Termination
    class Termination
      def self.build(input)
        data = {}
        data['CpsLimit'] = input[:cps_limit] unless input[:cps_limit].nil?
        data['DefaultPhoneNumber'] = input[:default_phone_number] unless input[:default_phone_number].nil?
        data['CallingRegions'] = Builders::CallingRegionList.build(input[:calling_regions]) unless input[:calling_regions].nil?
        data['CidrAllowedList'] = Builders::StringList.build(input[:cidr_allowed_list]) unless input[:cidr_allowed_list].nil?
        data['Disabled'] = input[:disabled] unless input[:disabled].nil?
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CallingRegionList
    class CallingRegionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutVoiceConnectorTerminationCredentials
    class PutVoiceConnectorTerminationCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=put').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/termination/credentials',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Credentials'] = Builders::CredentialList.build(input[:credentials]) unless input[:credentials].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CredentialList
    class CredentialList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Credential.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Credential
    class Credential
      def self.build(input)
        data = {}
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
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

    # Operation Builder for RedactConversationMessage
    class RedactConversationMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=redact').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:conversation_id].to_s.empty?
          raise ArgumentError, "HTTP label :conversation_id cannot be nil or empty."
        end
        if input[:message_id].to_s.empty?
          raise ArgumentError, "HTTP label :message_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/conversations/%<ConversationId>s/messages/%<MessageId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            ConversationId: Hearth::HTTP.uri_escape(input[:conversation_id].to_s),
            MessageId: Hearth::HTTP.uri_escape(input[:message_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RedactRoomMessage
    class RedactRoomMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=redact').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:room_id].to_s.empty?
          raise ArgumentError, "HTTP label :room_id cannot be nil or empty."
        end
        if input[:message_id].to_s.empty?
          raise ArgumentError, "HTTP label :message_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/rooms/%<RoomId>s/messages/%<MessageId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            RoomId: Hearth::HTTP.uri_escape(input[:room_id].to_s),
            MessageId: Hearth::HTTP.uri_escape(input[:message_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RegenerateSecurityToken
    class RegenerateSecurityToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=regenerate-security-token').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/bots/%<BotId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            BotId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ResetPersonalPIN
    class ResetPersonalPIN
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=reset-personal-pin').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/users/%<UserId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RestorePhoneNumber
    class RestorePhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=restore').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:phone_number_id].to_s.empty?
          raise ArgumentError, "HTTP label :phone_number_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/phone-numbers/%<PhoneNumberId>s',
            PhoneNumberId: Hearth::HTTP.uri_escape(input[:phone_number_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for SearchAvailablePhoneNumbers
    class SearchAvailablePhoneNumbers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        CGI.parse('type=phone-numbers').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/search')
        params = Hearth::Query::ParamList.new
        params['area-code'] = input[:area_code].to_s unless input[:area_code].nil?
        params['city'] = input[:city].to_s unless input[:city].nil?
        params['country'] = input[:country].to_s unless input[:country].nil?
        params['state'] = input[:state].to_s unless input[:state].nil?
        params['toll-free-prefix'] = input[:toll_free_prefix].to_s unless input[:toll_free_prefix].nil?
        params['phone-number-type'] = input[:phone_number_type].to_s unless input[:phone_number_type].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
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
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
      end
    end

    # Operation Builder for StartMeetingTranscription
    class StartMeetingTranscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=start').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/transcription',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TranscriptionConfiguration'] = Builders::TranscriptionConfiguration.build(input[:transcription_configuration]) unless input[:transcription_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TranscriptionConfiguration
    class TranscriptionConfiguration
      def self.build(input)
        data = {}
        data['EngineTranscribeSettings'] = Builders::EngineTranscribeSettings.build(input[:engine_transcribe_settings]) unless input[:engine_transcribe_settings].nil?
        data['EngineTranscribeMedicalSettings'] = Builders::EngineTranscribeMedicalSettings.build(input[:engine_transcribe_medical_settings]) unless input[:engine_transcribe_medical_settings].nil?
        data
      end
    end

    # Structure Builder for EngineTranscribeMedicalSettings
    class EngineTranscribeMedicalSettings
      def self.build(input)
        data = {}
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['Specialty'] = input[:specialty] unless input[:specialty].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        data['Region'] = input[:region] unless input[:region].nil?
        data['ContentIdentificationType'] = input[:content_identification_type] unless input[:content_identification_type].nil?
        data
      end
    end

    # Structure Builder for EngineTranscribeSettings
    class EngineTranscribeSettings
      def self.build(input)
        data = {}
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['VocabularyFilterMethod'] = input[:vocabulary_filter_method] unless input[:vocabulary_filter_method].nil?
        data['VocabularyFilterName'] = input[:vocabulary_filter_name] unless input[:vocabulary_filter_name].nil?
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        data['Region'] = input[:region] unless input[:region].nil?
        data['EnablePartialResultsStabilization'] = input[:enable_partial_results_stabilization] unless input[:enable_partial_results_stabilization].nil?
        data['PartialResultsStability'] = input[:partial_results_stability] unless input[:partial_results_stability].nil?
        data['ContentIdentificationType'] = input[:content_identification_type] unless input[:content_identification_type].nil?
        data['ContentRedactionType'] = input[:content_redaction_type] unless input[:content_redaction_type].nil?
        data['PiiEntityTypes'] = input[:pii_entity_types] unless input[:pii_entity_types].nil?
        data['LanguageModelName'] = input[:language_model_name] unless input[:language_model_name].nil?
        data
      end
    end

    # Operation Builder for StopMeetingTranscription
    class StopMeetingTranscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=stop').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/transcription',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagAttendee
    class TagAttendee
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=add').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        if input[:attendee_id].to_s.empty?
          raise ArgumentError, "HTTP label :attendee_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/attendees/%<AttendeeId>s/tags',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s),
            AttendeeId: Hearth::HTTP.uri_escape(input[:attendee_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::AttendeeTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagMeeting
    class TagMeeting
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=add').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/tags',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::MeetingTagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagAttendee
    class UntagAttendee
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=delete').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        if input[:attendee_id].to_s.empty?
          raise ArgumentError, "HTTP label :attendee_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/attendees/%<AttendeeId>s/tags',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s),
            AttendeeId: Hearth::HTTP.uri_escape(input[:attendee_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TagKeys'] = Builders::AttendeeTagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AttendeeTagKeyList
    class AttendeeTagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UntagMeeting
    class UntagMeeting
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('operation=delete').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        if input[:meeting_id].to_s.empty?
          raise ArgumentError, "HTTP label :meeting_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/meetings/%<MeetingId>s/tags',
            MeetingId: Hearth::HTTP.uri_escape(input[:meeting_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TagKeys'] = Builders::MeetingTagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MeetingTagKeyList
    class MeetingTagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
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
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateAccount
    class UpdateAccount
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DefaultLicense'] = input[:default_license] unless input[:default_license].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAccountSettings
    class UpdateAccountSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/settings',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AccountSettings'] = Builders::AccountSettings.build(input[:account_settings]) unless input[:account_settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AccountSettings
    class AccountSettings
      def self.build(input)
        data = {}
        data['DisableRemoteControl'] = input[:disable_remote_control] unless input[:disable_remote_control].nil?
        data['EnableDialOut'] = input[:enable_dial_out] unless input[:enable_dial_out].nil?
        data
      end
    end

    # Operation Builder for UpdateAppInstance
    class UpdateAppInstance
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:app_instance_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instances/%<AppInstanceArn>s',
            AppInstanceArn: Hearth::HTTP.uri_escape(input[:app_instance_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAppInstanceUser
    class UpdateAppInstanceUser
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:app_instance_user_arn].to_s.empty?
          raise ArgumentError, "HTTP label :app_instance_user_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app-instance-users/%<AppInstanceUserArn>s',
            AppInstanceUserArn: Hearth::HTTP.uri_escape(input[:app_instance_user_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Metadata'] = input[:metadata] unless input[:metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateBot
    class UpdateBot
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:bot_id].to_s.empty?
          raise ArgumentError, "HTTP label :bot_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/bots/%<BotId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            BotId: Hearth::HTTP.uri_escape(input[:bot_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Disabled'] = input[:disabled] unless input[:disabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['x-amz-chime-bearer'] = input[:chime_bearer] unless input[:chime_bearer].nil? || input[:chime_bearer].empty?
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
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateGlobalSettings
    class UpdateGlobalSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/settings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['BusinessCalling'] = Builders::BusinessCallingSettings.build(input[:business_calling]) unless input[:business_calling].nil?
        data['VoiceConnector'] = Builders::VoiceConnectorSettings.build(input[:voice_connector]) unless input[:voice_connector].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VoiceConnectorSettings
    class VoiceConnectorSettings
      def self.build(input)
        data = {}
        data['CdrBucket'] = input[:cdr_bucket] unless input[:cdr_bucket].nil?
        data
      end
    end

    # Structure Builder for BusinessCallingSettings
    class BusinessCallingSettings
      def self.build(input)
        data = {}
        data['CdrBucket'] = input[:cdr_bucket] unless input[:cdr_bucket].nil?
        data
      end
    end

    # Operation Builder for UpdatePhoneNumber
    class UpdatePhoneNumber
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:phone_number_id].to_s.empty?
          raise ArgumentError, "HTTP label :phone_number_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/phone-numbers/%<PhoneNumberId>s',
            PhoneNumberId: Hearth::HTTP.uri_escape(input[:phone_number_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ProductType'] = input[:product_type] unless input[:product_type].nil?
        data['CallingName'] = input[:calling_name] unless input[:calling_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePhoneNumberSettings
    class UpdatePhoneNumberSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/settings/phone-number')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CallingName'] = input[:calling_name] unless input[:calling_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProxySession
    class UpdateProxySession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        if input[:proxy_session_id].to_s.empty?
          raise ArgumentError, "HTTP label :proxy_session_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s/proxy-sessions/%<ProxySessionId>s',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s),
            ProxySessionId: Hearth::HTTP.uri_escape(input[:proxy_session_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Capabilities'] = Builders::CapabilityList.build(input[:capabilities]) unless input[:capabilities].nil?
        data['ExpiryMinutes'] = input[:expiry_minutes] unless input[:expiry_minutes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRoom
    class UpdateRoom
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:room_id].to_s.empty?
          raise ArgumentError, "HTTP label :room_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/rooms/%<RoomId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            RoomId: Hearth::HTTP.uri_escape(input[:room_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRoomMembership
    class UpdateRoomMembership
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:room_id].to_s.empty?
          raise ArgumentError, "HTTP label :room_id cannot be nil or empty."
        end
        if input[:member_id].to_s.empty?
          raise ArgumentError, "HTTP label :member_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/rooms/%<RoomId>s/memberships/%<MemberId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            RoomId: Hearth::HTTP.uri_escape(input[:room_id].to_s),
            MemberId: Hearth::HTTP.uri_escape(input[:member_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Role'] = input[:role] unless input[:role].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSipMediaApplication
    class UpdateSipMediaApplication
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:sip_media_application_id].to_s.empty?
          raise ArgumentError, "HTTP label :sip_media_application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sip-media-applications/%<SipMediaApplicationId>s',
            SipMediaApplicationId: Hearth::HTTP.uri_escape(input[:sip_media_application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Endpoints'] = Builders::SipMediaApplicationEndpointList.build(input[:endpoints]) unless input[:endpoints].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSipMediaApplicationCall
    class UpdateSipMediaApplicationCall
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:sip_media_application_id].to_s.empty?
          raise ArgumentError, "HTTP label :sip_media_application_id cannot be nil or empty."
        end
        if input[:transaction_id].to_s.empty?
          raise ArgumentError, "HTTP label :transaction_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sip-media-applications/%<SipMediaApplicationId>s/calls/%<TransactionId>s',
            SipMediaApplicationId: Hearth::HTTP.uri_escape(input[:sip_media_application_id].to_s),
            TransactionId: Hearth::HTTP.uri_escape(input[:transaction_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Arguments'] = Builders::SMAUpdateCallArgumentsMap.build(input[:arguments]) unless input[:arguments].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for SMAUpdateCallArgumentsMap
    class SMAUpdateCallArgumentsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateSipRule
    class UpdateSipRule
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:sip_rule_id].to_s.empty?
          raise ArgumentError, "HTTP label :sip_rule_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sip-rules/%<SipRuleId>s',
            SipRuleId: Hearth::HTTP.uri_escape(input[:sip_rule_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Disabled'] = input[:disabled] unless input[:disabled].nil?
        data['TargetApplications'] = Builders::SipRuleTargetApplicationList.build(input[:target_applications]) unless input[:target_applications].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUser
    class UpdateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/users/%<UserId>s',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LicenseType'] = input[:license_type] unless input[:license_type].nil?
        data['UserType'] = input[:user_type] unless input[:user_type].nil?
        data['AlexaForBusinessMetadata'] = Builders::AlexaForBusinessMetadata.build(input[:alexa_for_business_metadata]) unless input[:alexa_for_business_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUserSettings
    class UpdateUserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:account_id].to_s.empty?
          raise ArgumentError, "HTTP label :account_id cannot be nil or empty."
        end
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AccountId>s/users/%<UserId>s/settings',
            AccountId: Hearth::HTTP.uri_escape(input[:account_id].to_s),
            UserId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['UserSettings'] = Builders::UserSettings.build(input[:user_settings]) unless input[:user_settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UserSettings
    class UserSettings
      def self.build(input)
        data = {}
        data['Telephony'] = Builders::TelephonySettings.build(input[:telephony]) unless input[:telephony].nil?
        data
      end
    end

    # Structure Builder for TelephonySettings
    class TelephonySettings
      def self.build(input)
        data = {}
        data['InboundCalling'] = input[:inbound_calling] unless input[:inbound_calling].nil?
        data['OutboundCalling'] = input[:outbound_calling] unless input[:outbound_calling].nil?
        data['SMS'] = input[:sms] unless input[:sms].nil?
        data
      end
    end

    # Operation Builder for UpdateVoiceConnector
    class UpdateVoiceConnector
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:voice_connector_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connectors/%<VoiceConnectorId>s',
            VoiceConnectorId: Hearth::HTTP.uri_escape(input[:voice_connector_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['RequireEncryption'] = input[:require_encryption] unless input[:require_encryption].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateVoiceConnectorGroup
    class UpdateVoiceConnectorGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:voice_connector_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :voice_connector_group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/voice-connector-groups/%<VoiceConnectorGroupId>s',
            VoiceConnectorGroupId: Hearth::HTTP.uri_escape(input[:voice_connector_group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['VoiceConnectorItems'] = Builders::VoiceConnectorItemList.build(input[:voice_connector_items]) unless input[:voice_connector_items].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
