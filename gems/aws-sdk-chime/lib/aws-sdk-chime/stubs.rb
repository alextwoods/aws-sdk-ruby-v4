# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Chime
  module Stubs

    # Operation Stubber for AssociatePhoneNumberWithUser
    class AssociatePhoneNumberWithUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociatePhoneNumbersWithVoiceConnector
    class AssociatePhoneNumbersWithVoiceConnector
      def self.default(visited=[])
        {
          phone_number_errors: Stubs::PhoneNumberErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumberErrors'] = Stubs::PhoneNumberErrorList.stub(stub[:phone_number_errors]) unless stub[:phone_number_errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PhoneNumberErrorList
    class PhoneNumberErrorList
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberErrorList')
        visited = visited + ['PhoneNumberErrorList']
        [
          Stubs::PhoneNumberError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PhoneNumberError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PhoneNumberError
    class PhoneNumberError
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberError')
        visited = visited + ['PhoneNumberError']
        {
          phone_number_id: 'phone_number_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::PhoneNumberError.new
        data = {}
        data['PhoneNumberId'] = stub[:phone_number_id] unless stub[:phone_number_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for AssociatePhoneNumbersWithVoiceConnectorGroup
    class AssociatePhoneNumbersWithVoiceConnectorGroup
      def self.default(visited=[])
        {
          phone_number_errors: Stubs::PhoneNumberErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumberErrors'] = Stubs::PhoneNumberErrorList.stub(stub[:phone_number_errors]) unless stub[:phone_number_errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for AssociateSigninDelegateGroupsWithAccount
    class AssociateSigninDelegateGroupsWithAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchCreateAttendee
    class BatchCreateAttendee
      def self.default(visited=[])
        {
          attendees: Stubs::AttendeeList.default(visited),
          errors: Stubs::BatchCreateAttendeeErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attendees'] = Stubs::AttendeeList.stub(stub[:attendees]) unless stub[:attendees].nil?
        data['Errors'] = Stubs::BatchCreateAttendeeErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchCreateAttendeeErrorList
    class BatchCreateAttendeeErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchCreateAttendeeErrorList')
        visited = visited + ['BatchCreateAttendeeErrorList']
        [
          Stubs::CreateAttendeeError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CreateAttendeeError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CreateAttendeeError
    class CreateAttendeeError
      def self.default(visited=[])
        return nil if visited.include?('CreateAttendeeError')
        visited = visited + ['CreateAttendeeError']
        {
          external_user_id: 'external_user_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateAttendeeError.new
        data = {}
        data['ExternalUserId'] = stub[:external_user_id] unless stub[:external_user_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # List Stubber for AttendeeList
    class AttendeeList
      def self.default(visited=[])
        return nil if visited.include?('AttendeeList')
        visited = visited + ['AttendeeList']
        [
          Stubs::Attendee.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Attendee.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Attendee
    class Attendee
      def self.default(visited=[])
        return nil if visited.include?('Attendee')
        visited = visited + ['Attendee']
        {
          external_user_id: 'external_user_id',
          attendee_id: 'attendee_id',
          join_token: 'join_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::Attendee.new
        data = {}
        data['ExternalUserId'] = stub[:external_user_id] unless stub[:external_user_id].nil?
        data['AttendeeId'] = stub[:attendee_id] unless stub[:attendee_id].nil?
        data['JoinToken'] = stub[:join_token] unless stub[:join_token].nil?
        data
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

    # Operation Stubber for BatchCreateRoomMembership
    class BatchCreateRoomMembership
      def self.default(visited=[])
        {
          errors: Stubs::MemberErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Errors'] = Stubs::MemberErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MemberErrorList
    class MemberErrorList
      def self.default(visited=[])
        return nil if visited.include?('MemberErrorList')
        visited = visited + ['MemberErrorList']
        [
          Stubs::MemberError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MemberError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MemberError
    class MemberError
      def self.default(visited=[])
        return nil if visited.include?('MemberError')
        visited = visited + ['MemberError']
        {
          member_id: 'member_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::MemberError.new
        data = {}
        data['MemberId'] = stub[:member_id] unless stub[:member_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for BatchDeletePhoneNumber
    class BatchDeletePhoneNumber
      def self.default(visited=[])
        {
          phone_number_errors: Stubs::PhoneNumberErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumberErrors'] = Stubs::PhoneNumberErrorList.stub(stub[:phone_number_errors]) unless stub[:phone_number_errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchSuspendUser
    class BatchSuspendUser
      def self.default(visited=[])
        {
          user_errors: Stubs::UserErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UserErrors'] = Stubs::UserErrorList.stub(stub[:user_errors]) unless stub[:user_errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UserErrorList
    class UserErrorList
      def self.default(visited=[])
        return nil if visited.include?('UserErrorList')
        visited = visited + ['UserErrorList']
        [
          Stubs::UserError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UserError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UserError
    class UserError
      def self.default(visited=[])
        return nil if visited.include?('UserError')
        visited = visited + ['UserError']
        {
          user_id: 'user_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserError.new
        data = {}
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for BatchUnsuspendUser
    class BatchUnsuspendUser
      def self.default(visited=[])
        {
          user_errors: Stubs::UserErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UserErrors'] = Stubs::UserErrorList.stub(stub[:user_errors]) unless stub[:user_errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchUpdatePhoneNumber
    class BatchUpdatePhoneNumber
      def self.default(visited=[])
        {
          phone_number_errors: Stubs::PhoneNumberErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumberErrors'] = Stubs::PhoneNumberErrorList.stub(stub[:phone_number_errors]) unless stub[:phone_number_errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for BatchUpdateUser
    class BatchUpdateUser
      def self.default(visited=[])
        {
          user_errors: Stubs::UserErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UserErrors'] = Stubs::UserErrorList.stub(stub[:user_errors]) unless stub[:user_errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateAccount
    class CreateAccount
      def self.default(visited=[])
        {
          account: Stubs::Account.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Account'] = Stubs::Account.stub(stub[:account]) unless stub[:account].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Account
    class Account
      def self.default(visited=[])
        return nil if visited.include?('Account')
        visited = visited + ['Account']
        {
          aws_account_id: 'aws_account_id',
          account_id: 'account_id',
          name: 'name',
          account_type: 'account_type',
          created_timestamp: Time.now,
          default_license: 'default_license',
          supported_licenses: Stubs::LicenseList.default(visited),
          account_status: 'account_status',
          signin_delegate_groups: Stubs::SigninDelegateGroupList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Account.new
        data = {}
        data['AwsAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['AccountType'] = stub[:account_type] unless stub[:account_type].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:created_timestamp]) unless stub[:created_timestamp].nil?
        data['DefaultLicense'] = stub[:default_license] unless stub[:default_license].nil?
        data['SupportedLicenses'] = Stubs::LicenseList.stub(stub[:supported_licenses]) unless stub[:supported_licenses].nil?
        data['AccountStatus'] = stub[:account_status] unless stub[:account_status].nil?
        data['SigninDelegateGroups'] = Stubs::SigninDelegateGroupList.stub(stub[:signin_delegate_groups]) unless stub[:signin_delegate_groups].nil?
        data
      end
    end

    # List Stubber for SigninDelegateGroupList
    class SigninDelegateGroupList
      def self.default(visited=[])
        return nil if visited.include?('SigninDelegateGroupList')
        visited = visited + ['SigninDelegateGroupList']
        [
          Stubs::SigninDelegateGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SigninDelegateGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SigninDelegateGroup
    class SigninDelegateGroup
      def self.default(visited=[])
        return nil if visited.include?('SigninDelegateGroup')
        visited = visited + ['SigninDelegateGroup']
        {
          group_name: 'group_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SigninDelegateGroup.new
        data = {}
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data
      end
    end

    # List Stubber for LicenseList
    class LicenseList
      def self.default(visited=[])
        return nil if visited.include?('LicenseList')
        visited = visited + ['LicenseList']
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

    # Operation Stubber for CreateAppInstance
    class CreateAppInstance
      def self.default(visited=[])
        {
          app_instance_arn: 'app_instance_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateAppInstanceAdmin
    class CreateAppInstanceAdmin
      def self.default(visited=[])
        {
          app_instance_admin: Stubs::Identity.default(visited),
          app_instance_arn: 'app_instance_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceAdmin'] = Stubs::Identity.stub(stub[:app_instance_admin]) unless stub[:app_instance_admin].nil?
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateAppInstanceUser
    class CreateAppInstanceUser
      def self.default(visited=[])
        {
          app_instance_user_arn: 'app_instance_user_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceUserArn'] = stub[:app_instance_user_arn] unless stub[:app_instance_user_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateAttendee
    class CreateAttendee
      def self.default(visited=[])
        {
          attendee: Stubs::Attendee.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attendee'] = Stubs::Attendee.stub(stub[:attendee]) unless stub[:attendee].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateBot
    class CreateBot
      def self.default(visited=[])
        {
          bot: Stubs::Bot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Bot'] = Stubs::Bot.stub(stub[:bot]) unless stub[:bot].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Bot
    class Bot
      def self.default(visited=[])
        return nil if visited.include?('Bot')
        visited = visited + ['Bot']
        {
          bot_id: 'bot_id',
          user_id: 'user_id',
          display_name: 'display_name',
          bot_type: 'bot_type',
          disabled: false,
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
          bot_email: 'bot_email',
          security_token: 'security_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::Bot.new
        data = {}
        data['BotId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['BotType'] = stub[:bot_type] unless stub[:bot_type].nil?
        data['Disabled'] = stub[:disabled] unless stub[:disabled].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:created_timestamp]) unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:updated_timestamp]) unless stub[:updated_timestamp].nil?
        data['BotEmail'] = stub[:bot_email] unless stub[:bot_email].nil?
        data['SecurityToken'] = stub[:security_token] unless stub[:security_token].nil?
        data
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

    # Operation Stubber for CreateMediaCapturePipeline
    class CreateMediaCapturePipeline
      def self.default(visited=[])
        {
          media_capture_pipeline: Stubs::MediaCapturePipeline.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['MediaCapturePipeline'] = Stubs::MediaCapturePipeline.stub(stub[:media_capture_pipeline]) unless stub[:media_capture_pipeline].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for MediaCapturePipeline
    class MediaCapturePipeline
      def self.default(visited=[])
        return nil if visited.include?('MediaCapturePipeline')
        visited = visited + ['MediaCapturePipeline']
        {
          media_pipeline_id: 'media_pipeline_id',
          source_type: 'source_type',
          source_arn: 'source_arn',
          status: 'status',
          sink_type: 'sink_type',
          sink_arn: 'sink_arn',
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
          chime_sdk_meeting_configuration: Stubs::ChimeSdkMeetingConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MediaCapturePipeline.new
        data = {}
        data['MediaPipelineId'] = stub[:media_pipeline_id] unless stub[:media_pipeline_id].nil?
        data['SourceType'] = stub[:source_type] unless stub[:source_type].nil?
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['SinkType'] = stub[:sink_type] unless stub[:sink_type].nil?
        data['SinkArn'] = stub[:sink_arn] unless stub[:sink_arn].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:created_timestamp]) unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:updated_timestamp]) unless stub[:updated_timestamp].nil?
        data['ChimeSdkMeetingConfiguration'] = Stubs::ChimeSdkMeetingConfiguration.stub(stub[:chime_sdk_meeting_configuration]) unless stub[:chime_sdk_meeting_configuration].nil?
        data
      end
    end

    # Structure Stubber for ChimeSdkMeetingConfiguration
    class ChimeSdkMeetingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ChimeSdkMeetingConfiguration')
        visited = visited + ['ChimeSdkMeetingConfiguration']
        {
          source_configuration: Stubs::SourceConfiguration.default(visited),
          artifacts_configuration: Stubs::ArtifactsConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ChimeSdkMeetingConfiguration.new
        data = {}
        data['SourceConfiguration'] = Stubs::SourceConfiguration.stub(stub[:source_configuration]) unless stub[:source_configuration].nil?
        data['ArtifactsConfiguration'] = Stubs::ArtifactsConfiguration.stub(stub[:artifacts_configuration]) unless stub[:artifacts_configuration].nil?
        data
      end
    end

    # Structure Stubber for ArtifactsConfiguration
    class ArtifactsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ArtifactsConfiguration')
        visited = visited + ['ArtifactsConfiguration']
        {
          audio: Stubs::AudioArtifactsConfiguration.default(visited),
          video: Stubs::VideoArtifactsConfiguration.default(visited),
          content: Stubs::ContentArtifactsConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ArtifactsConfiguration.new
        data = {}
        data['Audio'] = Stubs::AudioArtifactsConfiguration.stub(stub[:audio]) unless stub[:audio].nil?
        data['Video'] = Stubs::VideoArtifactsConfiguration.stub(stub[:video]) unless stub[:video].nil?
        data['Content'] = Stubs::ContentArtifactsConfiguration.stub(stub[:content]) unless stub[:content].nil?
        data
      end
    end

    # Structure Stubber for ContentArtifactsConfiguration
    class ContentArtifactsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ContentArtifactsConfiguration')
        visited = visited + ['ContentArtifactsConfiguration']
        {
          state: 'state',
          mux_type: 'mux_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContentArtifactsConfiguration.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['MuxType'] = stub[:mux_type] unless stub[:mux_type].nil?
        data
      end
    end

    # Structure Stubber for VideoArtifactsConfiguration
    class VideoArtifactsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('VideoArtifactsConfiguration')
        visited = visited + ['VideoArtifactsConfiguration']
        {
          state: 'state',
          mux_type: 'mux_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::VideoArtifactsConfiguration.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['MuxType'] = stub[:mux_type] unless stub[:mux_type].nil?
        data
      end
    end

    # Structure Stubber for AudioArtifactsConfiguration
    class AudioArtifactsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AudioArtifactsConfiguration')
        visited = visited + ['AudioArtifactsConfiguration']
        {
          mux_type: 'mux_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AudioArtifactsConfiguration.new
        data = {}
        data['MuxType'] = stub[:mux_type] unless stub[:mux_type].nil?
        data
      end
    end

    # Structure Stubber for SourceConfiguration
    class SourceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SourceConfiguration')
        visited = visited + ['SourceConfiguration']
        {
          selected_video_streams: Stubs::SelectedVideoStreams.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceConfiguration.new
        data = {}
        data['SelectedVideoStreams'] = Stubs::SelectedVideoStreams.stub(stub[:selected_video_streams]) unless stub[:selected_video_streams].nil?
        data
      end
    end

    # Structure Stubber for SelectedVideoStreams
    class SelectedVideoStreams
      def self.default(visited=[])
        return nil if visited.include?('SelectedVideoStreams')
        visited = visited + ['SelectedVideoStreams']
        {
          attendee_ids: Stubs::AttendeeIdList.default(visited),
          external_user_ids: Stubs::ExternalUserIdList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SelectedVideoStreams.new
        data = {}
        data['AttendeeIds'] = Stubs::AttendeeIdList.stub(stub[:attendee_ids]) unless stub[:attendee_ids].nil?
        data['ExternalUserIds'] = Stubs::ExternalUserIdList.stub(stub[:external_user_ids]) unless stub[:external_user_ids].nil?
        data
      end
    end

    # List Stubber for ExternalUserIdList
    class ExternalUserIdList
      def self.default(visited=[])
        return nil if visited.include?('ExternalUserIdList')
        visited = visited + ['ExternalUserIdList']
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

    # List Stubber for AttendeeIdList
    class AttendeeIdList
      def self.default(visited=[])
        return nil if visited.include?('AttendeeIdList')
        visited = visited + ['AttendeeIdList']
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

    # Operation Stubber for CreateMeeting
    class CreateMeeting
      def self.default(visited=[])
        {
          meeting: Stubs::Meeting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Meeting'] = Stubs::Meeting.stub(stub[:meeting]) unless stub[:meeting].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Meeting
    class Meeting
      def self.default(visited=[])
        return nil if visited.include?('Meeting')
        visited = visited + ['Meeting']
        {
          meeting_id: 'meeting_id',
          external_meeting_id: 'external_meeting_id',
          media_placement: Stubs::MediaPlacement.default(visited),
          media_region: 'media_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::Meeting.new
        data = {}
        data['MeetingId'] = stub[:meeting_id] unless stub[:meeting_id].nil?
        data['ExternalMeetingId'] = stub[:external_meeting_id] unless stub[:external_meeting_id].nil?
        data['MediaPlacement'] = Stubs::MediaPlacement.stub(stub[:media_placement]) unless stub[:media_placement].nil?
        data['MediaRegion'] = stub[:media_region] unless stub[:media_region].nil?
        data
      end
    end

    # Structure Stubber for MediaPlacement
    class MediaPlacement
      def self.default(visited=[])
        return nil if visited.include?('MediaPlacement')
        visited = visited + ['MediaPlacement']
        {
          audio_host_url: 'audio_host_url',
          audio_fallback_url: 'audio_fallback_url',
          screen_data_url: 'screen_data_url',
          screen_sharing_url: 'screen_sharing_url',
          screen_viewing_url: 'screen_viewing_url',
          signaling_url: 'signaling_url',
          turn_control_url: 'turn_control_url',
          event_ingestion_url: 'event_ingestion_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::MediaPlacement.new
        data = {}
        data['AudioHostUrl'] = stub[:audio_host_url] unless stub[:audio_host_url].nil?
        data['AudioFallbackUrl'] = stub[:audio_fallback_url] unless stub[:audio_fallback_url].nil?
        data['ScreenDataUrl'] = stub[:screen_data_url] unless stub[:screen_data_url].nil?
        data['ScreenSharingUrl'] = stub[:screen_sharing_url] unless stub[:screen_sharing_url].nil?
        data['ScreenViewingUrl'] = stub[:screen_viewing_url] unless stub[:screen_viewing_url].nil?
        data['SignalingUrl'] = stub[:signaling_url] unless stub[:signaling_url].nil?
        data['TurnControlUrl'] = stub[:turn_control_url] unless stub[:turn_control_url].nil?
        data['EventIngestionUrl'] = stub[:event_ingestion_url] unless stub[:event_ingestion_url].nil?
        data
      end
    end

    # Operation Stubber for CreateMeetingDialOut
    class CreateMeetingDialOut
      def self.default(visited=[])
        {
          transaction_id: 'transaction_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['TransactionId'] = stub[:transaction_id] unless stub[:transaction_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateMeetingWithAttendees
    class CreateMeetingWithAttendees
      def self.default(visited=[])
        {
          meeting: Stubs::Meeting.default(visited),
          attendees: Stubs::AttendeeList.default(visited),
          errors: Stubs::BatchCreateAttendeeErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Meeting'] = Stubs::Meeting.stub(stub[:meeting]) unless stub[:meeting].nil?
        data['Attendees'] = Stubs::AttendeeList.stub(stub[:attendees]) unless stub[:attendees].nil?
        data['Errors'] = Stubs::BatchCreateAttendeeErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreatePhoneNumberOrder
    class CreatePhoneNumberOrder
      def self.default(visited=[])
        {
          phone_number_order: Stubs::PhoneNumberOrder.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumberOrder'] = Stubs::PhoneNumberOrder.stub(stub[:phone_number_order]) unless stub[:phone_number_order].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for PhoneNumberOrder
    class PhoneNumberOrder
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberOrder')
        visited = visited + ['PhoneNumberOrder']
        {
          phone_number_order_id: 'phone_number_order_id',
          product_type: 'product_type',
          status: 'status',
          ordered_phone_numbers: Stubs::OrderedPhoneNumberList.default(visited),
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PhoneNumberOrder.new
        data = {}
        data['PhoneNumberOrderId'] = stub[:phone_number_order_id] unless stub[:phone_number_order_id].nil?
        data['ProductType'] = stub[:product_type] unless stub[:product_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['OrderedPhoneNumbers'] = Stubs::OrderedPhoneNumberList.stub(stub[:ordered_phone_numbers]) unless stub[:ordered_phone_numbers].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:created_timestamp]) unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:updated_timestamp]) unless stub[:updated_timestamp].nil?
        data
      end
    end

    # List Stubber for OrderedPhoneNumberList
    class OrderedPhoneNumberList
      def self.default(visited=[])
        return nil if visited.include?('OrderedPhoneNumberList')
        visited = visited + ['OrderedPhoneNumberList']
        [
          Stubs::OrderedPhoneNumber.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OrderedPhoneNumber.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OrderedPhoneNumber
    class OrderedPhoneNumber
      def self.default(visited=[])
        return nil if visited.include?('OrderedPhoneNumber')
        visited = visited + ['OrderedPhoneNumber']
        {
          e164_phone_number: 'e164_phone_number',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::OrderedPhoneNumber.new
        data = {}
        data['E164PhoneNumber'] = stub[:e164_phone_number] unless stub[:e164_phone_number].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for CreateProxySession
    class CreateProxySession
      def self.default(visited=[])
        {
          proxy_session: Stubs::ProxySession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProxySession'] = Stubs::ProxySession.stub(stub[:proxy_session]) unless stub[:proxy_session].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ProxySession
    class ProxySession
      def self.default(visited=[])
        return nil if visited.include?('ProxySession')
        visited = visited + ['ProxySession']
        {
          voice_connector_id: 'voice_connector_id',
          proxy_session_id: 'proxy_session_id',
          name: 'name',
          status: 'status',
          expiry_minutes: 1,
          capabilities: Stubs::CapabilityList.default(visited),
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
          ended_timestamp: Time.now,
          participants: Stubs::Participants.default(visited),
          number_selection_behavior: 'number_selection_behavior',
          geo_match_level: 'geo_match_level',
          geo_match_params: Stubs::GeoMatchParams.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProxySession.new
        data = {}
        data['VoiceConnectorId'] = stub[:voice_connector_id] unless stub[:voice_connector_id].nil?
        data['ProxySessionId'] = stub[:proxy_session_id] unless stub[:proxy_session_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ExpiryMinutes'] = stub[:expiry_minutes] unless stub[:expiry_minutes].nil?
        data['Capabilities'] = Stubs::CapabilityList.stub(stub[:capabilities]) unless stub[:capabilities].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:created_timestamp]) unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:updated_timestamp]) unless stub[:updated_timestamp].nil?
        data['EndedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:ended_timestamp]) unless stub[:ended_timestamp].nil?
        data['Participants'] = Stubs::Participants.stub(stub[:participants]) unless stub[:participants].nil?
        data['NumberSelectionBehavior'] = stub[:number_selection_behavior] unless stub[:number_selection_behavior].nil?
        data['GeoMatchLevel'] = stub[:geo_match_level] unless stub[:geo_match_level].nil?
        data['GeoMatchParams'] = Stubs::GeoMatchParams.stub(stub[:geo_match_params]) unless stub[:geo_match_params].nil?
        data
      end
    end

    # Structure Stubber for GeoMatchParams
    class GeoMatchParams
      def self.default(visited=[])
        return nil if visited.include?('GeoMatchParams')
        visited = visited + ['GeoMatchParams']
        {
          country: 'country',
          area_code: 'area_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::GeoMatchParams.new
        data = {}
        data['Country'] = stub[:country] unless stub[:country].nil?
        data['AreaCode'] = stub[:area_code] unless stub[:area_code].nil?
        data
      end
    end

    # List Stubber for Participants
    class Participants
      def self.default(visited=[])
        return nil if visited.include?('Participants')
        visited = visited + ['Participants']
        [
          Stubs::Participant.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Participant.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Participant
    class Participant
      def self.default(visited=[])
        return nil if visited.include?('Participant')
        visited = visited + ['Participant']
        {
          phone_number: 'phone_number',
          proxy_phone_number: 'proxy_phone_number',
        }
      end

      def self.stub(stub)
        stub ||= Types::Participant.new
        data = {}
        data['PhoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['ProxyPhoneNumber'] = stub[:proxy_phone_number] unless stub[:proxy_phone_number].nil?
        data
      end
    end

    # List Stubber for CapabilityList
    class CapabilityList
      def self.default(visited=[])
        return nil if visited.include?('CapabilityList')
        visited = visited + ['CapabilityList']
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

    # Operation Stubber for CreateRoom
    class CreateRoom
      def self.default(visited=[])
        {
          room: Stubs::Room.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Room'] = Stubs::Room.stub(stub[:room]) unless stub[:room].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Room
    class Room
      def self.default(visited=[])
        return nil if visited.include?('Room')
        visited = visited + ['Room']
        {
          room_id: 'room_id',
          name: 'name',
          account_id: 'account_id',
          created_by: 'created_by',
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Room.new
        data = {}
        data['RoomId'] = stub[:room_id] unless stub[:room_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:created_timestamp]) unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:updated_timestamp]) unless stub[:updated_timestamp].nil?
        data
      end
    end

    # Operation Stubber for CreateRoomMembership
    class CreateRoomMembership
      def self.default(visited=[])
        {
          room_membership: Stubs::RoomMembership.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['RoomMembership'] = Stubs::RoomMembership.stub(stub[:room_membership]) unless stub[:room_membership].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RoomMembership
    class RoomMembership
      def self.default(visited=[])
        return nil if visited.include?('RoomMembership')
        visited = visited + ['RoomMembership']
        {
          room_id: 'room_id',
          member: Stubs::Member.default(visited),
          role: 'role',
          invited_by: 'invited_by',
          updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RoomMembership.new
        data = {}
        data['RoomId'] = stub[:room_id] unless stub[:room_id].nil?
        data['Member'] = Stubs::Member.stub(stub[:member]) unless stub[:member].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['InvitedBy'] = stub[:invited_by] unless stub[:invited_by].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:updated_timestamp]) unless stub[:updated_timestamp].nil?
        data
      end
    end

    # Structure Stubber for Member
    class Member
      def self.default(visited=[])
        return nil if visited.include?('Member')
        visited = visited + ['Member']
        {
          member_id: 'member_id',
          member_type: 'member_type',
          email: 'email',
          full_name: 'full_name',
          account_id: 'account_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Member.new
        data = {}
        data['MemberId'] = stub[:member_id] unless stub[:member_id].nil?
        data['MemberType'] = stub[:member_type] unless stub[:member_type].nil?
        data['Email'] = stub[:email] unless stub[:email].nil?
        data['FullName'] = stub[:full_name] unless stub[:full_name].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data
      end
    end

    # Operation Stubber for CreateSipMediaApplication
    class CreateSipMediaApplication
      def self.default(visited=[])
        {
          sip_media_application: Stubs::SipMediaApplication.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['SipMediaApplication'] = Stubs::SipMediaApplication.stub(stub[:sip_media_application]) unless stub[:sip_media_application].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SipMediaApplication
    class SipMediaApplication
      def self.default(visited=[])
        return nil if visited.include?('SipMediaApplication')
        visited = visited + ['SipMediaApplication']
        {
          sip_media_application_id: 'sip_media_application_id',
          aws_region: 'aws_region',
          name: 'name',
          endpoints: Stubs::SipMediaApplicationEndpointList.default(visited),
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SipMediaApplication.new
        data = {}
        data['SipMediaApplicationId'] = stub[:sip_media_application_id] unless stub[:sip_media_application_id].nil?
        data['AwsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Endpoints'] = Stubs::SipMediaApplicationEndpointList.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:created_timestamp]) unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:updated_timestamp]) unless stub[:updated_timestamp].nil?
        data
      end
    end

    # List Stubber for SipMediaApplicationEndpointList
    class SipMediaApplicationEndpointList
      def self.default(visited=[])
        return nil if visited.include?('SipMediaApplicationEndpointList')
        visited = visited + ['SipMediaApplicationEndpointList']
        [
          Stubs::SipMediaApplicationEndpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SipMediaApplicationEndpoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SipMediaApplicationEndpoint
    class SipMediaApplicationEndpoint
      def self.default(visited=[])
        return nil if visited.include?('SipMediaApplicationEndpoint')
        visited = visited + ['SipMediaApplicationEndpoint']
        {
          lambda_arn: 'lambda_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SipMediaApplicationEndpoint.new
        data = {}
        data['LambdaArn'] = stub[:lambda_arn] unless stub[:lambda_arn].nil?
        data
      end
    end

    # Operation Stubber for CreateSipMediaApplicationCall
    class CreateSipMediaApplicationCall
      def self.default(visited=[])
        {
          sip_media_application_call: Stubs::SipMediaApplicationCall.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['SipMediaApplicationCall'] = Stubs::SipMediaApplicationCall.stub(stub[:sip_media_application_call]) unless stub[:sip_media_application_call].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SipMediaApplicationCall
    class SipMediaApplicationCall
      def self.default(visited=[])
        return nil if visited.include?('SipMediaApplicationCall')
        visited = visited + ['SipMediaApplicationCall']
        {
          transaction_id: 'transaction_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SipMediaApplicationCall.new
        data = {}
        data['TransactionId'] = stub[:transaction_id] unless stub[:transaction_id].nil?
        data
      end
    end

    # Operation Stubber for CreateSipRule
    class CreateSipRule
      def self.default(visited=[])
        {
          sip_rule: Stubs::SipRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['SipRule'] = Stubs::SipRule.stub(stub[:sip_rule]) unless stub[:sip_rule].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SipRule
    class SipRule
      def self.default(visited=[])
        return nil if visited.include?('SipRule')
        visited = visited + ['SipRule']
        {
          sip_rule_id: 'sip_rule_id',
          name: 'name',
          disabled: false,
          trigger_type: 'trigger_type',
          trigger_value: 'trigger_value',
          target_applications: Stubs::SipRuleTargetApplicationList.default(visited),
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SipRule.new
        data = {}
        data['SipRuleId'] = stub[:sip_rule_id] unless stub[:sip_rule_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Disabled'] = stub[:disabled] unless stub[:disabled].nil?
        data['TriggerType'] = stub[:trigger_type] unless stub[:trigger_type].nil?
        data['TriggerValue'] = stub[:trigger_value] unless stub[:trigger_value].nil?
        data['TargetApplications'] = Stubs::SipRuleTargetApplicationList.stub(stub[:target_applications]) unless stub[:target_applications].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:created_timestamp]) unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:updated_timestamp]) unless stub[:updated_timestamp].nil?
        data
      end
    end

    # List Stubber for SipRuleTargetApplicationList
    class SipRuleTargetApplicationList
      def self.default(visited=[])
        return nil if visited.include?('SipRuleTargetApplicationList')
        visited = visited + ['SipRuleTargetApplicationList']
        [
          Stubs::SipRuleTargetApplication.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SipRuleTargetApplication.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SipRuleTargetApplication
    class SipRuleTargetApplication
      def self.default(visited=[])
        return nil if visited.include?('SipRuleTargetApplication')
        visited = visited + ['SipRuleTargetApplication']
        {
          sip_media_application_id: 'sip_media_application_id',
          priority: 1,
          aws_region: 'aws_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::SipRuleTargetApplication.new
        data = {}
        data['SipMediaApplicationId'] = stub[:sip_media_application_id] unless stub[:sip_media_application_id].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['AwsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data
      end
    end

    # Operation Stubber for CreateUser
    class CreateUser
      def self.default(visited=[])
        {
          user: Stubs::User.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['User'] = Stubs::User.stub(stub[:user]) unless stub[:user].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for User
    class User
      def self.default(visited=[])
        return nil if visited.include?('User')
        visited = visited + ['User']
        {
          user_id: 'user_id',
          account_id: 'account_id',
          primary_email: 'primary_email',
          primary_provisioned_number: 'primary_provisioned_number',
          display_name: 'display_name',
          license_type: 'license_type',
          user_type: 'user_type',
          user_registration_status: 'user_registration_status',
          user_invitation_status: 'user_invitation_status',
          registered_on: Time.now,
          invited_on: Time.now,
          alexa_for_business_metadata: Stubs::AlexaForBusinessMetadata.default(visited),
          personal_pin: 'personal_pin',
        }
      end

      def self.stub(stub)
        stub ||= Types::User.new
        data = {}
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['PrimaryEmail'] = stub[:primary_email] unless stub[:primary_email].nil?
        data['PrimaryProvisionedNumber'] = stub[:primary_provisioned_number] unless stub[:primary_provisioned_number].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['LicenseType'] = stub[:license_type] unless stub[:license_type].nil?
        data['UserType'] = stub[:user_type] unless stub[:user_type].nil?
        data['UserRegistrationStatus'] = stub[:user_registration_status] unless stub[:user_registration_status].nil?
        data['UserInvitationStatus'] = stub[:user_invitation_status] unless stub[:user_invitation_status].nil?
        data['RegisteredOn'] = Hearth::TimeHelper.to_date_time(stub[:registered_on]) unless stub[:registered_on].nil?
        data['InvitedOn'] = Hearth::TimeHelper.to_date_time(stub[:invited_on]) unless stub[:invited_on].nil?
        data['AlexaForBusinessMetadata'] = Stubs::AlexaForBusinessMetadata.stub(stub[:alexa_for_business_metadata]) unless stub[:alexa_for_business_metadata].nil?
        data['PersonalPIN'] = stub[:personal_pin] unless stub[:personal_pin].nil?
        data
      end
    end

    # Structure Stubber for AlexaForBusinessMetadata
    class AlexaForBusinessMetadata
      def self.default(visited=[])
        return nil if visited.include?('AlexaForBusinessMetadata')
        visited = visited + ['AlexaForBusinessMetadata']
        {
          is_alexa_for_business_enabled: false,
          alexa_for_business_room_arn: 'alexa_for_business_room_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AlexaForBusinessMetadata.new
        data = {}
        data['IsAlexaForBusinessEnabled'] = stub[:is_alexa_for_business_enabled] unless stub[:is_alexa_for_business_enabled].nil?
        data['AlexaForBusinessRoomArn'] = stub[:alexa_for_business_room_arn] unless stub[:alexa_for_business_room_arn].nil?
        data
      end
    end

    # Operation Stubber for CreateVoiceConnector
    class CreateVoiceConnector
      def self.default(visited=[])
        {
          voice_connector: Stubs::VoiceConnector.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['VoiceConnector'] = Stubs::VoiceConnector.stub(stub[:voice_connector]) unless stub[:voice_connector].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VoiceConnector
    class VoiceConnector
      def self.default(visited=[])
        return nil if visited.include?('VoiceConnector')
        visited = visited + ['VoiceConnector']
        {
          voice_connector_id: 'voice_connector_id',
          aws_region: 'aws_region',
          name: 'name',
          outbound_host_name: 'outbound_host_name',
          require_encryption: false,
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
          voice_connector_arn: 'voice_connector_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::VoiceConnector.new
        data = {}
        data['VoiceConnectorId'] = stub[:voice_connector_id] unless stub[:voice_connector_id].nil?
        data['AwsRegion'] = stub[:aws_region] unless stub[:aws_region].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['OutboundHostName'] = stub[:outbound_host_name] unless stub[:outbound_host_name].nil?
        data['RequireEncryption'] = stub[:require_encryption] unless stub[:require_encryption].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:created_timestamp]) unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:updated_timestamp]) unless stub[:updated_timestamp].nil?
        data['VoiceConnectorArn'] = stub[:voice_connector_arn] unless stub[:voice_connector_arn].nil?
        data
      end
    end

    # Operation Stubber for CreateVoiceConnectorGroup
    class CreateVoiceConnectorGroup
      def self.default(visited=[])
        {
          voice_connector_group: Stubs::VoiceConnectorGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['VoiceConnectorGroup'] = Stubs::VoiceConnectorGroup.stub(stub[:voice_connector_group]) unless stub[:voice_connector_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VoiceConnectorGroup
    class VoiceConnectorGroup
      def self.default(visited=[])
        return nil if visited.include?('VoiceConnectorGroup')
        visited = visited + ['VoiceConnectorGroup']
        {
          voice_connector_group_id: 'voice_connector_group_id',
          name: 'name',
          voice_connector_items: Stubs::VoiceConnectorItemList.default(visited),
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
          voice_connector_group_arn: 'voice_connector_group_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::VoiceConnectorGroup.new
        data = {}
        data['VoiceConnectorGroupId'] = stub[:voice_connector_group_id] unless stub[:voice_connector_group_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['VoiceConnectorItems'] = Stubs::VoiceConnectorItemList.stub(stub[:voice_connector_items]) unless stub[:voice_connector_items].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:created_timestamp]) unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:updated_timestamp]) unless stub[:updated_timestamp].nil?
        data['VoiceConnectorGroupArn'] = stub[:voice_connector_group_arn] unless stub[:voice_connector_group_arn].nil?
        data
      end
    end

    # List Stubber for VoiceConnectorItemList
    class VoiceConnectorItemList
      def self.default(visited=[])
        return nil if visited.include?('VoiceConnectorItemList')
        visited = visited + ['VoiceConnectorItemList']
        [
          Stubs::VoiceConnectorItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VoiceConnectorItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VoiceConnectorItem
    class VoiceConnectorItem
      def self.default(visited=[])
        return nil if visited.include?('VoiceConnectorItem')
        visited = visited + ['VoiceConnectorItem']
        {
          voice_connector_id: 'voice_connector_id',
          priority: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::VoiceConnectorItem.new
        data = {}
        data['VoiceConnectorId'] = stub[:voice_connector_id] unless stub[:voice_connector_id].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data
      end
    end

    # Operation Stubber for DeleteAccount
    class DeleteAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteAppInstance
    class DeleteAppInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteAppInstanceAdmin
    class DeleteAppInstanceAdmin
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteAppInstanceStreamingConfigurations
    class DeleteAppInstanceStreamingConfigurations
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteAppInstanceUser
    class DeleteAppInstanceUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteAttendee
    class DeleteAttendee
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
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

    # Operation Stubber for DeleteEventsConfiguration
    class DeleteEventsConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteMediaCapturePipeline
    class DeleteMediaCapturePipeline
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteMeeting
    class DeleteMeeting
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeletePhoneNumber
    class DeletePhoneNumber
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteProxySession
    class DeleteProxySession
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteRoom
    class DeleteRoom
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteRoomMembership
    class DeleteRoomMembership
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteSipMediaApplication
    class DeleteSipMediaApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteSipRule
    class DeleteSipRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteVoiceConnector
    class DeleteVoiceConnector
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteVoiceConnectorEmergencyCallingConfiguration
    class DeleteVoiceConnectorEmergencyCallingConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteVoiceConnectorGroup
    class DeleteVoiceConnectorGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteVoiceConnectorOrigination
    class DeleteVoiceConnectorOrigination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteVoiceConnectorProxy
    class DeleteVoiceConnectorProxy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteVoiceConnectorStreamingConfiguration
    class DeleteVoiceConnectorStreamingConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteVoiceConnectorTermination
    class DeleteVoiceConnectorTermination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteVoiceConnectorTerminationCredentials
    class DeleteVoiceConnectorTerminationCredentials
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DescribeAppInstance
    class DescribeAppInstance
      def self.default(visited=[])
        {
          app_instance: Stubs::AppInstance.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstance'] = Stubs::AppInstance.stub(stub[:app_instance]) unless stub[:app_instance].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AppInstance
    class AppInstance
      def self.default(visited=[])
        return nil if visited.include?('AppInstance')
        visited = visited + ['AppInstance']
        {
          app_instance_arn: 'app_instance_arn',
          name: 'name',
          metadata: 'metadata',
          created_timestamp: Time.now,
          last_updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstance.new
        data = {}
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data
      end
    end

    # Operation Stubber for DescribeAppInstanceAdmin
    class DescribeAppInstanceAdmin
      def self.default(visited=[])
        {
          app_instance_admin: Stubs::AppInstanceAdmin.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceAdmin'] = Stubs::AppInstanceAdmin.stub(stub[:app_instance_admin]) unless stub[:app_instance_admin].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AppInstanceAdmin
    class AppInstanceAdmin
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceAdmin')
        visited = visited + ['AppInstanceAdmin']
        {
          admin: Stubs::Identity.default(visited),
          app_instance_arn: 'app_instance_arn',
          created_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceAdmin.new
        data = {}
        data['Admin'] = Stubs::Identity.stub(stub[:admin]) unless stub[:admin].nil?
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data
      end
    end

    # Operation Stubber for DescribeAppInstanceUser
    class DescribeAppInstanceUser
      def self.default(visited=[])
        {
          app_instance_user: Stubs::AppInstanceUser.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceUser'] = Stubs::AppInstanceUser.stub(stub[:app_instance_user]) unless stub[:app_instance_user].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AppInstanceUser
    class AppInstanceUser
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceUser')
        visited = visited + ['AppInstanceUser']
        {
          app_instance_user_arn: 'app_instance_user_arn',
          name: 'name',
          created_timestamp: Time.now,
          metadata: 'metadata',
          last_updated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceUser.new
        data = {}
        data['AppInstanceUserArn'] = stub[:app_instance_user_arn] unless stub[:app_instance_user_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['Metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data['LastUpdatedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_timestamp]).to_i unless stub[:last_updated_timestamp].nil?
        data
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

    # Operation Stubber for DisassociatePhoneNumberFromUser
    class DisassociatePhoneNumberFromUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociatePhoneNumbersFromVoiceConnector
    class DisassociatePhoneNumbersFromVoiceConnector
      def self.default(visited=[])
        {
          phone_number_errors: Stubs::PhoneNumberErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumberErrors'] = Stubs::PhoneNumberErrorList.stub(stub[:phone_number_errors]) unless stub[:phone_number_errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociatePhoneNumbersFromVoiceConnectorGroup
    class DisassociatePhoneNumbersFromVoiceConnectorGroup
      def self.default(visited=[])
        {
          phone_number_errors: Stubs::PhoneNumberErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumberErrors'] = Stubs::PhoneNumberErrorList.stub(stub[:phone_number_errors]) unless stub[:phone_number_errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateSigninDelegateGroupsFromAccount
    class DisassociateSigninDelegateGroupsFromAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAccount
    class GetAccount
      def self.default(visited=[])
        {
          account: Stubs::Account.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Account'] = Stubs::Account.stub(stub[:account]) unless stub[:account].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAccountSettings
    class GetAccountSettings
      def self.default(visited=[])
        {
          account_settings: Stubs::AccountSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AccountSettings'] = Stubs::AccountSettings.stub(stub[:account_settings]) unless stub[:account_settings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AccountSettings
    class AccountSettings
      def self.default(visited=[])
        return nil if visited.include?('AccountSettings')
        visited = visited + ['AccountSettings']
        {
          disable_remote_control: false,
          enable_dial_out: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountSettings.new
        data = {}
        data['DisableRemoteControl'] = stub[:disable_remote_control] unless stub[:disable_remote_control].nil?
        data['EnableDialOut'] = stub[:enable_dial_out] unless stub[:enable_dial_out].nil?
        data
      end
    end

    # Operation Stubber for GetAppInstanceRetentionSettings
    class GetAppInstanceRetentionSettings
      def self.default(visited=[])
        {
          app_instance_retention_settings: Stubs::AppInstanceRetentionSettings.default(visited),
          initiate_deletion_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceRetentionSettings'] = Stubs::AppInstanceRetentionSettings.stub(stub[:app_instance_retention_settings]) unless stub[:app_instance_retention_settings].nil?
        data['InitiateDeletionTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:initiate_deletion_timestamp]).to_i unless stub[:initiate_deletion_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AppInstanceRetentionSettings
    class AppInstanceRetentionSettings
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceRetentionSettings')
        visited = visited + ['AppInstanceRetentionSettings']
        {
          channel_retention_settings: Stubs::ChannelRetentionSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceRetentionSettings.new
        data = {}
        data['ChannelRetentionSettings'] = Stubs::ChannelRetentionSettings.stub(stub[:channel_retention_settings]) unless stub[:channel_retention_settings].nil?
        data
      end
    end

    # Structure Stubber for ChannelRetentionSettings
    class ChannelRetentionSettings
      def self.default(visited=[])
        return nil if visited.include?('ChannelRetentionSettings')
        visited = visited + ['ChannelRetentionSettings']
        {
          retention_days: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelRetentionSettings.new
        data = {}
        data['RetentionDays'] = stub[:retention_days] unless stub[:retention_days].nil?
        data
      end
    end

    # Operation Stubber for GetAppInstanceStreamingConfigurations
    class GetAppInstanceStreamingConfigurations
      def self.default(visited=[])
        {
          app_instance_streaming_configurations: Stubs::AppInstanceStreamingConfigurationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceStreamingConfigurations'] = Stubs::AppInstanceStreamingConfigurationList.stub(stub[:app_instance_streaming_configurations]) unless stub[:app_instance_streaming_configurations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AppInstanceStreamingConfigurationList
    class AppInstanceStreamingConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceStreamingConfigurationList')
        visited = visited + ['AppInstanceStreamingConfigurationList']
        [
          Stubs::AppInstanceStreamingConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppInstanceStreamingConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppInstanceStreamingConfiguration
    class AppInstanceStreamingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceStreamingConfiguration')
        visited = visited + ['AppInstanceStreamingConfiguration']
        {
          app_instance_data_type: 'app_instance_data_type',
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceStreamingConfiguration.new
        data = {}
        data['AppInstanceDataType'] = stub[:app_instance_data_type] unless stub[:app_instance_data_type].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data
      end
    end

    # Operation Stubber for GetAttendee
    class GetAttendee
      def self.default(visited=[])
        {
          attendee: Stubs::Attendee.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attendee'] = Stubs::Attendee.stub(stub[:attendee]) unless stub[:attendee].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBot
    class GetBot
      def self.default(visited=[])
        {
          bot: Stubs::Bot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Bot'] = Stubs::Bot.stub(stub[:bot]) unless stub[:bot].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        data
      end
    end

    # Operation Stubber for GetEventsConfiguration
    class GetEventsConfiguration
      def self.default(visited=[])
        {
          events_configuration: Stubs::EventsConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EventsConfiguration'] = Stubs::EventsConfiguration.stub(stub[:events_configuration]) unless stub[:events_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for EventsConfiguration
    class EventsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EventsConfiguration')
        visited = visited + ['EventsConfiguration']
        {
          bot_id: 'bot_id',
          outbound_events_https_endpoint: 'outbound_events_https_endpoint',
          lambda_function_arn: 'lambda_function_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventsConfiguration.new
        data = {}
        data['BotId'] = stub[:bot_id] unless stub[:bot_id].nil?
        data['OutboundEventsHTTPSEndpoint'] = stub[:outbound_events_https_endpoint] unless stub[:outbound_events_https_endpoint].nil?
        data['LambdaFunctionArn'] = stub[:lambda_function_arn] unless stub[:lambda_function_arn].nil?
        data
      end
    end

    # Operation Stubber for GetGlobalSettings
    class GetGlobalSettings
      def self.default(visited=[])
        {
          business_calling: Stubs::BusinessCallingSettings.default(visited),
          voice_connector: Stubs::VoiceConnectorSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['BusinessCalling'] = Stubs::BusinessCallingSettings.stub(stub[:business_calling]) unless stub[:business_calling].nil?
        data['VoiceConnector'] = Stubs::VoiceConnectorSettings.stub(stub[:voice_connector]) unless stub[:voice_connector].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for VoiceConnectorSettings
    class VoiceConnectorSettings
      def self.default(visited=[])
        return nil if visited.include?('VoiceConnectorSettings')
        visited = visited + ['VoiceConnectorSettings']
        {
          cdr_bucket: 'cdr_bucket',
        }
      end

      def self.stub(stub)
        stub ||= Types::VoiceConnectorSettings.new
        data = {}
        data['CdrBucket'] = stub[:cdr_bucket] unless stub[:cdr_bucket].nil?
        data
      end
    end

    # Structure Stubber for BusinessCallingSettings
    class BusinessCallingSettings
      def self.default(visited=[])
        return nil if visited.include?('BusinessCallingSettings')
        visited = visited + ['BusinessCallingSettings']
        {
          cdr_bucket: 'cdr_bucket',
        }
      end

      def self.stub(stub)
        stub ||= Types::BusinessCallingSettings.new
        data = {}
        data['CdrBucket'] = stub[:cdr_bucket] unless stub[:cdr_bucket].nil?
        data
      end
    end

    # Operation Stubber for GetMediaCapturePipeline
    class GetMediaCapturePipeline
      def self.default(visited=[])
        {
          media_capture_pipeline: Stubs::MediaCapturePipeline.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MediaCapturePipeline'] = Stubs::MediaCapturePipeline.stub(stub[:media_capture_pipeline]) unless stub[:media_capture_pipeline].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetMeeting
    class GetMeeting
      def self.default(visited=[])
        {
          meeting: Stubs::Meeting.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Meeting'] = Stubs::Meeting.stub(stub[:meeting]) unless stub[:meeting].nil?
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

    # Operation Stubber for GetPhoneNumber
    class GetPhoneNumber
      def self.default(visited=[])
        {
          phone_number: Stubs::PhoneNumber.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumber'] = Stubs::PhoneNumber.stub(stub[:phone_number]) unless stub[:phone_number].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for PhoneNumber
    class PhoneNumber
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumber')
        visited = visited + ['PhoneNumber']
        {
          phone_number_id: 'phone_number_id',
          e164_phone_number: 'e164_phone_number',
          country: 'country',
          type: 'type',
          product_type: 'product_type',
          status: 'status',
          capabilities: Stubs::PhoneNumberCapabilities.default(visited),
          associations: Stubs::PhoneNumberAssociationList.default(visited),
          calling_name: 'calling_name',
          calling_name_status: 'calling_name_status',
          created_timestamp: Time.now,
          updated_timestamp: Time.now,
          deletion_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PhoneNumber.new
        data = {}
        data['PhoneNumberId'] = stub[:phone_number_id] unless stub[:phone_number_id].nil?
        data['E164PhoneNumber'] = stub[:e164_phone_number] unless stub[:e164_phone_number].nil?
        data['Country'] = stub[:country] unless stub[:country].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ProductType'] = stub[:product_type] unless stub[:product_type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Capabilities'] = Stubs::PhoneNumberCapabilities.stub(stub[:capabilities]) unless stub[:capabilities].nil?
        data['Associations'] = Stubs::PhoneNumberAssociationList.stub(stub[:associations]) unless stub[:associations].nil?
        data['CallingName'] = stub[:calling_name] unless stub[:calling_name].nil?
        data['CallingNameStatus'] = stub[:calling_name_status] unless stub[:calling_name_status].nil?
        data['CreatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:created_timestamp]) unless stub[:created_timestamp].nil?
        data['UpdatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:updated_timestamp]) unless stub[:updated_timestamp].nil?
        data['DeletionTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:deletion_timestamp]) unless stub[:deletion_timestamp].nil?
        data
      end
    end

    # List Stubber for PhoneNumberAssociationList
    class PhoneNumberAssociationList
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberAssociationList')
        visited = visited + ['PhoneNumberAssociationList']
        [
          Stubs::PhoneNumberAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PhoneNumberAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PhoneNumberAssociation
    class PhoneNumberAssociation
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberAssociation')
        visited = visited + ['PhoneNumberAssociation']
        {
          value: 'value',
          name: 'name',
          associated_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PhoneNumberAssociation.new
        data = {}
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['AssociatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:associated_timestamp]) unless stub[:associated_timestamp].nil?
        data
      end
    end

    # Structure Stubber for PhoneNumberCapabilities
    class PhoneNumberCapabilities
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberCapabilities')
        visited = visited + ['PhoneNumberCapabilities']
        {
          inbound_call: false,
          outbound_call: false,
          inbound_sms: false,
          outbound_sms: false,
          inbound_mms: false,
          outbound_mms: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::PhoneNumberCapabilities.new
        data = {}
        data['InboundCall'] = stub[:inbound_call] unless stub[:inbound_call].nil?
        data['OutboundCall'] = stub[:outbound_call] unless stub[:outbound_call].nil?
        data['InboundSMS'] = stub[:inbound_sms] unless stub[:inbound_sms].nil?
        data['OutboundSMS'] = stub[:outbound_sms] unless stub[:outbound_sms].nil?
        data['InboundMMS'] = stub[:inbound_mms] unless stub[:inbound_mms].nil?
        data['OutboundMMS'] = stub[:outbound_mms] unless stub[:outbound_mms].nil?
        data
      end
    end

    # Operation Stubber for GetPhoneNumberOrder
    class GetPhoneNumberOrder
      def self.default(visited=[])
        {
          phone_number_order: Stubs::PhoneNumberOrder.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumberOrder'] = Stubs::PhoneNumberOrder.stub(stub[:phone_number_order]) unless stub[:phone_number_order].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetPhoneNumberSettings
    class GetPhoneNumberSettings
      def self.default(visited=[])
        {
          calling_name: 'calling_name',
          calling_name_updated_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CallingName'] = stub[:calling_name] unless stub[:calling_name].nil?
        data['CallingNameUpdatedTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:calling_name_updated_timestamp]) unless stub[:calling_name_updated_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetProxySession
    class GetProxySession
      def self.default(visited=[])
        {
          proxy_session: Stubs::ProxySession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProxySession'] = Stubs::ProxySession.stub(stub[:proxy_session]) unless stub[:proxy_session].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetRetentionSettings
    class GetRetentionSettings
      def self.default(visited=[])
        {
          retention_settings: Stubs::RetentionSettings.default(visited),
          initiate_deletion_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RetentionSettings'] = Stubs::RetentionSettings.stub(stub[:retention_settings]) unless stub[:retention_settings].nil?
        data['InitiateDeletionTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:initiate_deletion_timestamp]) unless stub[:initiate_deletion_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RetentionSettings
    class RetentionSettings
      def self.default(visited=[])
        return nil if visited.include?('RetentionSettings')
        visited = visited + ['RetentionSettings']
        {
          room_retention_settings: Stubs::RoomRetentionSettings.default(visited),
          conversation_retention_settings: Stubs::ConversationRetentionSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RetentionSettings.new
        data = {}
        data['RoomRetentionSettings'] = Stubs::RoomRetentionSettings.stub(stub[:room_retention_settings]) unless stub[:room_retention_settings].nil?
        data['ConversationRetentionSettings'] = Stubs::ConversationRetentionSettings.stub(stub[:conversation_retention_settings]) unless stub[:conversation_retention_settings].nil?
        data
      end
    end

    # Structure Stubber for ConversationRetentionSettings
    class ConversationRetentionSettings
      def self.default(visited=[])
        return nil if visited.include?('ConversationRetentionSettings')
        visited = visited + ['ConversationRetentionSettings']
        {
          retention_days: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConversationRetentionSettings.new
        data = {}
        data['RetentionDays'] = stub[:retention_days] unless stub[:retention_days].nil?
        data
      end
    end

    # Structure Stubber for RoomRetentionSettings
    class RoomRetentionSettings
      def self.default(visited=[])
        return nil if visited.include?('RoomRetentionSettings')
        visited = visited + ['RoomRetentionSettings']
        {
          retention_days: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RoomRetentionSettings.new
        data = {}
        data['RetentionDays'] = stub[:retention_days] unless stub[:retention_days].nil?
        data
      end
    end

    # Operation Stubber for GetRoom
    class GetRoom
      def self.default(visited=[])
        {
          room: Stubs::Room.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Room'] = Stubs::Room.stub(stub[:room]) unless stub[:room].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSipMediaApplication
    class GetSipMediaApplication
      def self.default(visited=[])
        {
          sip_media_application: Stubs::SipMediaApplication.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SipMediaApplication'] = Stubs::SipMediaApplication.stub(stub[:sip_media_application]) unless stub[:sip_media_application].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetSipMediaApplicationLoggingConfiguration
    class GetSipMediaApplicationLoggingConfiguration
      def self.default(visited=[])
        {
          sip_media_application_logging_configuration: Stubs::SipMediaApplicationLoggingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SipMediaApplicationLoggingConfiguration'] = Stubs::SipMediaApplicationLoggingConfiguration.stub(stub[:sip_media_application_logging_configuration]) unless stub[:sip_media_application_logging_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SipMediaApplicationLoggingConfiguration
    class SipMediaApplicationLoggingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SipMediaApplicationLoggingConfiguration')
        visited = visited + ['SipMediaApplicationLoggingConfiguration']
        {
          enable_sip_media_application_message_logs: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SipMediaApplicationLoggingConfiguration.new
        data = {}
        data['EnableSipMediaApplicationMessageLogs'] = stub[:enable_sip_media_application_message_logs] unless stub[:enable_sip_media_application_message_logs].nil?
        data
      end
    end

    # Operation Stubber for GetSipRule
    class GetSipRule
      def self.default(visited=[])
        {
          sip_rule: Stubs::SipRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SipRule'] = Stubs::SipRule.stub(stub[:sip_rule]) unless stub[:sip_rule].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetUser
    class GetUser
      def self.default(visited=[])
        {
          user: Stubs::User.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['User'] = Stubs::User.stub(stub[:user]) unless stub[:user].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetUserSettings
    class GetUserSettings
      def self.default(visited=[])
        {
          user_settings: Stubs::UserSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UserSettings'] = Stubs::UserSettings.stub(stub[:user_settings]) unless stub[:user_settings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for UserSettings
    class UserSettings
      def self.default(visited=[])
        return nil if visited.include?('UserSettings')
        visited = visited + ['UserSettings']
        {
          telephony: Stubs::TelephonySettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UserSettings.new
        data = {}
        data['Telephony'] = Stubs::TelephonySettings.stub(stub[:telephony]) unless stub[:telephony].nil?
        data
      end
    end

    # Structure Stubber for TelephonySettings
    class TelephonySettings
      def self.default(visited=[])
        return nil if visited.include?('TelephonySettings')
        visited = visited + ['TelephonySettings']
        {
          inbound_calling: false,
          outbound_calling: false,
          sms: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::TelephonySettings.new
        data = {}
        data['InboundCalling'] = stub[:inbound_calling] unless stub[:inbound_calling].nil?
        data['OutboundCalling'] = stub[:outbound_calling] unless stub[:outbound_calling].nil?
        data['SMS'] = stub[:sms] unless stub[:sms].nil?
        data
      end
    end

    # Operation Stubber for GetVoiceConnector
    class GetVoiceConnector
      def self.default(visited=[])
        {
          voice_connector: Stubs::VoiceConnector.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['VoiceConnector'] = Stubs::VoiceConnector.stub(stub[:voice_connector]) unless stub[:voice_connector].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetVoiceConnectorEmergencyCallingConfiguration
    class GetVoiceConnectorEmergencyCallingConfiguration
      def self.default(visited=[])
        {
          emergency_calling_configuration: Stubs::EmergencyCallingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EmergencyCallingConfiguration'] = Stubs::EmergencyCallingConfiguration.stub(stub[:emergency_calling_configuration]) unless stub[:emergency_calling_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for EmergencyCallingConfiguration
    class EmergencyCallingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EmergencyCallingConfiguration')
        visited = visited + ['EmergencyCallingConfiguration']
        {
          dnis: Stubs::DNISEmergencyCallingConfigurationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EmergencyCallingConfiguration.new
        data = {}
        data['DNIS'] = Stubs::DNISEmergencyCallingConfigurationList.stub(stub[:dnis]) unless stub[:dnis].nil?
        data
      end
    end

    # List Stubber for DNISEmergencyCallingConfigurationList
    class DNISEmergencyCallingConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('DNISEmergencyCallingConfigurationList')
        visited = visited + ['DNISEmergencyCallingConfigurationList']
        [
          Stubs::DNISEmergencyCallingConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DNISEmergencyCallingConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DNISEmergencyCallingConfiguration
    class DNISEmergencyCallingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DNISEmergencyCallingConfiguration')
        visited = visited + ['DNISEmergencyCallingConfiguration']
        {
          emergency_phone_number: 'emergency_phone_number',
          test_phone_number: 'test_phone_number',
          calling_country: 'calling_country',
        }
      end

      def self.stub(stub)
        stub ||= Types::DNISEmergencyCallingConfiguration.new
        data = {}
        data['EmergencyPhoneNumber'] = stub[:emergency_phone_number] unless stub[:emergency_phone_number].nil?
        data['TestPhoneNumber'] = stub[:test_phone_number] unless stub[:test_phone_number].nil?
        data['CallingCountry'] = stub[:calling_country] unless stub[:calling_country].nil?
        data
      end
    end

    # Operation Stubber for GetVoiceConnectorGroup
    class GetVoiceConnectorGroup
      def self.default(visited=[])
        {
          voice_connector_group: Stubs::VoiceConnectorGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['VoiceConnectorGroup'] = Stubs::VoiceConnectorGroup.stub(stub[:voice_connector_group]) unless stub[:voice_connector_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetVoiceConnectorLoggingConfiguration
    class GetVoiceConnectorLoggingConfiguration
      def self.default(visited=[])
        {
          logging_configuration: Stubs::LoggingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LoggingConfiguration'] = Stubs::LoggingConfiguration.stub(stub[:logging_configuration]) unless stub[:logging_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LoggingConfiguration
    class LoggingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LoggingConfiguration')
        visited = visited + ['LoggingConfiguration']
        {
          enable_sip_logs: false,
          enable_media_metric_logs: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::LoggingConfiguration.new
        data = {}
        data['EnableSIPLogs'] = stub[:enable_sip_logs] unless stub[:enable_sip_logs].nil?
        data['EnableMediaMetricLogs'] = stub[:enable_media_metric_logs] unless stub[:enable_media_metric_logs].nil?
        data
      end
    end

    # Operation Stubber for GetVoiceConnectorOrigination
    class GetVoiceConnectorOrigination
      def self.default(visited=[])
        {
          origination: Stubs::Origination.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Origination'] = Stubs::Origination.stub(stub[:origination]) unless stub[:origination].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Origination
    class Origination
      def self.default(visited=[])
        return nil if visited.include?('Origination')
        visited = visited + ['Origination']
        {
          routes: Stubs::OriginationRouteList.default(visited),
          disabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Origination.new
        data = {}
        data['Routes'] = Stubs::OriginationRouteList.stub(stub[:routes]) unless stub[:routes].nil?
        data['Disabled'] = stub[:disabled] unless stub[:disabled].nil?
        data
      end
    end

    # List Stubber for OriginationRouteList
    class OriginationRouteList
      def self.default(visited=[])
        return nil if visited.include?('OriginationRouteList')
        visited = visited + ['OriginationRouteList']
        [
          Stubs::OriginationRoute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::OriginationRoute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OriginationRoute
    class OriginationRoute
      def self.default(visited=[])
        return nil if visited.include?('OriginationRoute')
        visited = visited + ['OriginationRoute']
        {
          host: 'host',
          port: 1,
          protocol: 'protocol',
          priority: 1,
          weight: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::OriginationRoute.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['Weight'] = stub[:weight] unless stub[:weight].nil?
        data
      end
    end

    # Operation Stubber for GetVoiceConnectorProxy
    class GetVoiceConnectorProxy
      def self.default(visited=[])
        {
          proxy: Stubs::Proxy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Proxy'] = Stubs::Proxy.stub(stub[:proxy]) unless stub[:proxy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Proxy
    class Proxy
      def self.default(visited=[])
        return nil if visited.include?('Proxy')
        visited = visited + ['Proxy']
        {
          default_session_expiry_minutes: 1,
          disabled: false,
          fall_back_phone_number: 'fall_back_phone_number',
          phone_number_countries: Stubs::StringList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Proxy.new
        data = {}
        data['DefaultSessionExpiryMinutes'] = stub[:default_session_expiry_minutes] unless stub[:default_session_expiry_minutes].nil?
        data['Disabled'] = stub[:disabled] unless stub[:disabled].nil?
        data['FallBackPhoneNumber'] = stub[:fall_back_phone_number] unless stub[:fall_back_phone_number].nil?
        data['PhoneNumberCountries'] = Stubs::StringList.stub(stub[:phone_number_countries]) unless stub[:phone_number_countries].nil?
        data
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
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

    # Operation Stubber for GetVoiceConnectorStreamingConfiguration
    class GetVoiceConnectorStreamingConfiguration
      def self.default(visited=[])
        {
          streaming_configuration: Stubs::StreamingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StreamingConfiguration'] = Stubs::StreamingConfiguration.stub(stub[:streaming_configuration]) unless stub[:streaming_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for StreamingConfiguration
    class StreamingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('StreamingConfiguration')
        visited = visited + ['StreamingConfiguration']
        {
          data_retention_in_hours: 1,
          disabled: false,
          streaming_notification_targets: Stubs::StreamingNotificationTargetList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamingConfiguration.new
        data = {}
        data['DataRetentionInHours'] = stub[:data_retention_in_hours] unless stub[:data_retention_in_hours].nil?
        data['Disabled'] = stub[:disabled] unless stub[:disabled].nil?
        data['StreamingNotificationTargets'] = Stubs::StreamingNotificationTargetList.stub(stub[:streaming_notification_targets]) unless stub[:streaming_notification_targets].nil?
        data
      end
    end

    # List Stubber for StreamingNotificationTargetList
    class StreamingNotificationTargetList
      def self.default(visited=[])
        return nil if visited.include?('StreamingNotificationTargetList')
        visited = visited + ['StreamingNotificationTargetList']
        [
          Stubs::StreamingNotificationTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StreamingNotificationTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StreamingNotificationTarget
    class StreamingNotificationTarget
      def self.default(visited=[])
        return nil if visited.include?('StreamingNotificationTarget')
        visited = visited + ['StreamingNotificationTarget']
        {
          notification_target: 'notification_target',
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamingNotificationTarget.new
        data = {}
        data['NotificationTarget'] = stub[:notification_target] unless stub[:notification_target].nil?
        data
      end
    end

    # Operation Stubber for GetVoiceConnectorTermination
    class GetVoiceConnectorTermination
      def self.default(visited=[])
        {
          termination: Stubs::Termination.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Termination'] = Stubs::Termination.stub(stub[:termination]) unless stub[:termination].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Termination
    class Termination
      def self.default(visited=[])
        return nil if visited.include?('Termination')
        visited = visited + ['Termination']
        {
          cps_limit: 1,
          default_phone_number: 'default_phone_number',
          calling_regions: Stubs::CallingRegionList.default(visited),
          cidr_allowed_list: Stubs::StringList.default(visited),
          disabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Termination.new
        data = {}
        data['CpsLimit'] = stub[:cps_limit] unless stub[:cps_limit].nil?
        data['DefaultPhoneNumber'] = stub[:default_phone_number] unless stub[:default_phone_number].nil?
        data['CallingRegions'] = Stubs::CallingRegionList.stub(stub[:calling_regions]) unless stub[:calling_regions].nil?
        data['CidrAllowedList'] = Stubs::StringList.stub(stub[:cidr_allowed_list]) unless stub[:cidr_allowed_list].nil?
        data['Disabled'] = stub[:disabled] unless stub[:disabled].nil?
        data
      end
    end

    # List Stubber for CallingRegionList
    class CallingRegionList
      def self.default(visited=[])
        return nil if visited.include?('CallingRegionList')
        visited = visited + ['CallingRegionList']
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

    # Operation Stubber for GetVoiceConnectorTerminationHealth
    class GetVoiceConnectorTerminationHealth
      def self.default(visited=[])
        {
          termination_health: Stubs::TerminationHealth.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TerminationHealth'] = Stubs::TerminationHealth.stub(stub[:termination_health]) unless stub[:termination_health].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TerminationHealth
    class TerminationHealth
      def self.default(visited=[])
        return nil if visited.include?('TerminationHealth')
        visited = visited + ['TerminationHealth']
        {
          timestamp: Time.now,
          source: 'source',
        }
      end

      def self.stub(stub)
        stub ||= Types::TerminationHealth.new
        data = {}
        data['Timestamp'] = Hearth::TimeHelper.to_date_time(stub[:timestamp]) unless stub[:timestamp].nil?
        data['Source'] = stub[:source] unless stub[:source].nil?
        data
      end
    end

    # Operation Stubber for InviteUsers
    class InviteUsers
      def self.default(visited=[])
        {
          invites: Stubs::InviteList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Invites'] = Stubs::InviteList.stub(stub[:invites]) unless stub[:invites].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InviteList
    class InviteList
      def self.default(visited=[])
        return nil if visited.include?('InviteList')
        visited = visited + ['InviteList']
        [
          Stubs::Invite.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Invite.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Invite
    class Invite
      def self.default(visited=[])
        return nil if visited.include?('Invite')
        visited = visited + ['Invite']
        {
          invite_id: 'invite_id',
          status: 'status',
          email_address: 'email_address',
          email_status: 'email_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Invite.new
        data = {}
        data['InviteId'] = stub[:invite_id] unless stub[:invite_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['EmailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['EmailStatus'] = stub[:email_status] unless stub[:email_status].nil?
        data
      end
    end

    # Operation Stubber for ListAccounts
    class ListAccounts
      def self.default(visited=[])
        {
          accounts: Stubs::AccountList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Accounts'] = Stubs::AccountList.stub(stub[:accounts]) unless stub[:accounts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AccountList
    class AccountList
      def self.default(visited=[])
        return nil if visited.include?('AccountList')
        visited = visited + ['AccountList']
        [
          Stubs::Account.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Account.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListAppInstanceAdmins
    class ListAppInstanceAdmins
      def self.default(visited=[])
        {
          app_instance_arn: 'app_instance_arn',
          app_instance_admins: Stubs::AppInstanceAdminList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        data['AppInstanceAdmins'] = Stubs::AppInstanceAdminList.stub(stub[:app_instance_admins]) unless stub[:app_instance_admins].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AppInstanceAdminList
    class AppInstanceAdminList
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceAdminList')
        visited = visited + ['AppInstanceAdminList']
        [
          Stubs::AppInstanceAdminSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppInstanceAdminSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppInstanceAdminSummary
    class AppInstanceAdminSummary
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceAdminSummary')
        visited = visited + ['AppInstanceAdminSummary']
        {
          admin: Stubs::Identity.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceAdminSummary.new
        data = {}
        data['Admin'] = Stubs::Identity.stub(stub[:admin]) unless stub[:admin].nil?
        data
      end
    end

    # Operation Stubber for ListAppInstanceUsers
    class ListAppInstanceUsers
      def self.default(visited=[])
        {
          app_instance_arn: 'app_instance_arn',
          app_instance_users: Stubs::AppInstanceUserList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        data['AppInstanceUsers'] = Stubs::AppInstanceUserList.stub(stub[:app_instance_users]) unless stub[:app_instance_users].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AppInstanceUserList
    class AppInstanceUserList
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceUserList')
        visited = visited + ['AppInstanceUserList']
        [
          Stubs::AppInstanceUserSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppInstanceUserSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppInstanceUserSummary
    class AppInstanceUserSummary
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceUserSummary')
        visited = visited + ['AppInstanceUserSummary']
        {
          app_instance_user_arn: 'app_instance_user_arn',
          name: 'name',
          metadata: 'metadata',
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceUserSummary.new
        data = {}
        data['AppInstanceUserArn'] = stub[:app_instance_user_arn] unless stub[:app_instance_user_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data
      end
    end

    # Operation Stubber for ListAppInstances
    class ListAppInstances
      def self.default(visited=[])
        {
          app_instances: Stubs::AppInstanceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstances'] = Stubs::AppInstanceList.stub(stub[:app_instances]) unless stub[:app_instances].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AppInstanceList
    class AppInstanceList
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceList')
        visited = visited + ['AppInstanceList']
        [
          Stubs::AppInstanceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppInstanceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppInstanceSummary
    class AppInstanceSummary
      def self.default(visited=[])
        return nil if visited.include?('AppInstanceSummary')
        visited = visited + ['AppInstanceSummary']
        {
          app_instance_arn: 'app_instance_arn',
          name: 'name',
          metadata: 'metadata',
        }
      end

      def self.stub(stub)
        stub ||= Types::AppInstanceSummary.new
        data = {}
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Metadata'] = stub[:metadata] unless stub[:metadata].nil?
        data
      end
    end

    # Operation Stubber for ListAttendeeTags
    class ListAttendeeTags
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

    # Operation Stubber for ListAttendees
    class ListAttendees
      def self.default(visited=[])
        {
          attendees: Stubs::AttendeeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attendees'] = Stubs::AttendeeList.stub(stub[:attendees]) unless stub[:attendees].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListBots
    class ListBots
      def self.default(visited=[])
        {
          bots: Stubs::BotList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Bots'] = Stubs::BotList.stub(stub[:bots]) unless stub[:bots].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BotList
    class BotList
      def self.default(visited=[])
        return nil if visited.include?('BotList')
        visited = visited + ['BotList']
        [
          Stubs::Bot.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Bot.stub(element) unless element.nil?
        end
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

    # Operation Stubber for ListMediaCapturePipelines
    class ListMediaCapturePipelines
      def self.default(visited=[])
        {
          media_capture_pipelines: Stubs::MediaCapturePipelineList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MediaCapturePipelines'] = Stubs::MediaCapturePipelineList.stub(stub[:media_capture_pipelines]) unless stub[:media_capture_pipelines].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MediaCapturePipelineList
    class MediaCapturePipelineList
      def self.default(visited=[])
        return nil if visited.include?('MediaCapturePipelineList')
        visited = visited + ['MediaCapturePipelineList']
        [
          Stubs::MediaCapturePipeline.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MediaCapturePipeline.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListMeetingTags
    class ListMeetingTags
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

    # Operation Stubber for ListMeetings
    class ListMeetings
      def self.default(visited=[])
        {
          meetings: Stubs::MeetingList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Meetings'] = Stubs::MeetingList.stub(stub[:meetings]) unless stub[:meetings].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MeetingList
    class MeetingList
      def self.default(visited=[])
        return nil if visited.include?('MeetingList')
        visited = visited + ['MeetingList']
        [
          Stubs::Meeting.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Meeting.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListPhoneNumberOrders
    class ListPhoneNumberOrders
      def self.default(visited=[])
        {
          phone_number_orders: Stubs::PhoneNumberOrderList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumberOrders'] = Stubs::PhoneNumberOrderList.stub(stub[:phone_number_orders]) unless stub[:phone_number_orders].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PhoneNumberOrderList
    class PhoneNumberOrderList
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberOrderList')
        visited = visited + ['PhoneNumberOrderList']
        [
          Stubs::PhoneNumberOrder.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PhoneNumberOrder.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListPhoneNumbers
    class ListPhoneNumbers
      def self.default(visited=[])
        {
          phone_numbers: Stubs::PhoneNumberList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumbers'] = Stubs::PhoneNumberList.stub(stub[:phone_numbers]) unless stub[:phone_numbers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PhoneNumberList
    class PhoneNumberList
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberList')
        visited = visited + ['PhoneNumberList']
        [
          Stubs::PhoneNumber.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PhoneNumber.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListProxySessions
    class ListProxySessions
      def self.default(visited=[])
        {
          proxy_sessions: Stubs::ProxySessions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProxySessions'] = Stubs::ProxySessions.stub(stub[:proxy_sessions]) unless stub[:proxy_sessions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProxySessions
    class ProxySessions
      def self.default(visited=[])
        return nil if visited.include?('ProxySessions')
        visited = visited + ['ProxySessions']
        [
          Stubs::ProxySession.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProxySession.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListRoomMemberships
    class ListRoomMemberships
      def self.default(visited=[])
        {
          room_memberships: Stubs::RoomMembershipList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RoomMemberships'] = Stubs::RoomMembershipList.stub(stub[:room_memberships]) unless stub[:room_memberships].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RoomMembershipList
    class RoomMembershipList
      def self.default(visited=[])
        return nil if visited.include?('RoomMembershipList')
        visited = visited + ['RoomMembershipList']
        [
          Stubs::RoomMembership.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RoomMembership.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListRooms
    class ListRooms
      def self.default(visited=[])
        {
          rooms: Stubs::RoomList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Rooms'] = Stubs::RoomList.stub(stub[:rooms]) unless stub[:rooms].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RoomList
    class RoomList
      def self.default(visited=[])
        return nil if visited.include?('RoomList')
        visited = visited + ['RoomList']
        [
          Stubs::Room.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Room.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListSipMediaApplications
    class ListSipMediaApplications
      def self.default(visited=[])
        {
          sip_media_applications: Stubs::SipMediaApplicationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SipMediaApplications'] = Stubs::SipMediaApplicationList.stub(stub[:sip_media_applications]) unless stub[:sip_media_applications].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SipMediaApplicationList
    class SipMediaApplicationList
      def self.default(visited=[])
        return nil if visited.include?('SipMediaApplicationList')
        visited = visited + ['SipMediaApplicationList']
        [
          Stubs::SipMediaApplication.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SipMediaApplication.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListSipRules
    class ListSipRules
      def self.default(visited=[])
        {
          sip_rules: Stubs::SipRuleList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SipRules'] = Stubs::SipRuleList.stub(stub[:sip_rules]) unless stub[:sip_rules].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SipRuleList
    class SipRuleList
      def self.default(visited=[])
        return nil if visited.include?('SipRuleList')
        visited = visited + ['SipRuleList']
        [
          Stubs::SipRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SipRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListSupportedPhoneNumberCountries
    class ListSupportedPhoneNumberCountries
      def self.default(visited=[])
        {
          phone_number_countries: Stubs::PhoneNumberCountriesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumberCountries'] = Stubs::PhoneNumberCountriesList.stub(stub[:phone_number_countries]) unless stub[:phone_number_countries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PhoneNumberCountriesList
    class PhoneNumberCountriesList
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberCountriesList')
        visited = visited + ['PhoneNumberCountriesList']
        [
          Stubs::PhoneNumberCountry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PhoneNumberCountry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PhoneNumberCountry
    class PhoneNumberCountry
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberCountry')
        visited = visited + ['PhoneNumberCountry']
        {
          country_code: 'country_code',
          supported_phone_number_types: Stubs::PhoneNumberTypeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PhoneNumberCountry.new
        data = {}
        data['CountryCode'] = stub[:country_code] unless stub[:country_code].nil?
        data['SupportedPhoneNumberTypes'] = Stubs::PhoneNumberTypeList.stub(stub[:supported_phone_number_types]) unless stub[:supported_phone_number_types].nil?
        data
      end
    end

    # List Stubber for PhoneNumberTypeList
    class PhoneNumberTypeList
      def self.default(visited=[])
        return nil if visited.include?('PhoneNumberTypeList')
        visited = visited + ['PhoneNumberTypeList']
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

    # Operation Stubber for ListUsers
    class ListUsers
      def self.default(visited=[])
        {
          users: Stubs::UserList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Users'] = Stubs::UserList.stub(stub[:users]) unless stub[:users].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UserList
    class UserList
      def self.default(visited=[])
        return nil if visited.include?('UserList')
        visited = visited + ['UserList']
        [
          Stubs::User.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::User.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListVoiceConnectorGroups
    class ListVoiceConnectorGroups
      def self.default(visited=[])
        {
          voice_connector_groups: Stubs::VoiceConnectorGroupList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['VoiceConnectorGroups'] = Stubs::VoiceConnectorGroupList.stub(stub[:voice_connector_groups]) unless stub[:voice_connector_groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for VoiceConnectorGroupList
    class VoiceConnectorGroupList
      def self.default(visited=[])
        return nil if visited.include?('VoiceConnectorGroupList')
        visited = visited + ['VoiceConnectorGroupList']
        [
          Stubs::VoiceConnectorGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VoiceConnectorGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListVoiceConnectorTerminationCredentials
    class ListVoiceConnectorTerminationCredentials
      def self.default(visited=[])
        {
          usernames: Stubs::SensitiveStringList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Usernames'] = Stubs::SensitiveStringList.stub(stub[:usernames]) unless stub[:usernames].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SensitiveStringList
    class SensitiveStringList
      def self.default(visited=[])
        return nil if visited.include?('SensitiveStringList')
        visited = visited + ['SensitiveStringList']
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

    # Operation Stubber for ListVoiceConnectors
    class ListVoiceConnectors
      def self.default(visited=[])
        {
          voice_connectors: Stubs::VoiceConnectorList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['VoiceConnectors'] = Stubs::VoiceConnectorList.stub(stub[:voice_connectors]) unless stub[:voice_connectors].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for VoiceConnectorList
    class VoiceConnectorList
      def self.default(visited=[])
        return nil if visited.include?('VoiceConnectorList')
        visited = visited + ['VoiceConnectorList']
        [
          Stubs::VoiceConnector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VoiceConnector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for LogoutUser
    class LogoutUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for PutAppInstanceRetentionSettings
    class PutAppInstanceRetentionSettings
      def self.default(visited=[])
        {
          app_instance_retention_settings: Stubs::AppInstanceRetentionSettings.default(visited),
          initiate_deletion_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceRetentionSettings'] = Stubs::AppInstanceRetentionSettings.stub(stub[:app_instance_retention_settings]) unless stub[:app_instance_retention_settings].nil?
        data['InitiateDeletionTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:initiate_deletion_timestamp]).to_i unless stub[:initiate_deletion_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutAppInstanceStreamingConfigurations
    class PutAppInstanceStreamingConfigurations
      def self.default(visited=[])
        {
          app_instance_streaming_configurations: Stubs::AppInstanceStreamingConfigurationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceStreamingConfigurations'] = Stubs::AppInstanceStreamingConfigurationList.stub(stub[:app_instance_streaming_configurations]) unless stub[:app_instance_streaming_configurations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutEventsConfiguration
    class PutEventsConfiguration
      def self.default(visited=[])
        {
          events_configuration: Stubs::EventsConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['EventsConfiguration'] = Stubs::EventsConfiguration.stub(stub[:events_configuration]) unless stub[:events_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutRetentionSettings
    class PutRetentionSettings
      def self.default(visited=[])
        {
          retention_settings: Stubs::RetentionSettings.default(visited),
          initiate_deletion_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
        http_resp.headers['Content-Type'] = 'application/json'
        data['RetentionSettings'] = Stubs::RetentionSettings.stub(stub[:retention_settings]) unless stub[:retention_settings].nil?
        data['InitiateDeletionTimestamp'] = Hearth::TimeHelper.to_date_time(stub[:initiate_deletion_timestamp]) unless stub[:initiate_deletion_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutSipMediaApplicationLoggingConfiguration
    class PutSipMediaApplicationLoggingConfiguration
      def self.default(visited=[])
        {
          sip_media_application_logging_configuration: Stubs::SipMediaApplicationLoggingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SipMediaApplicationLoggingConfiguration'] = Stubs::SipMediaApplicationLoggingConfiguration.stub(stub[:sip_media_application_logging_configuration]) unless stub[:sip_media_application_logging_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutVoiceConnectorEmergencyCallingConfiguration
    class PutVoiceConnectorEmergencyCallingConfiguration
      def self.default(visited=[])
        {
          emergency_calling_configuration: Stubs::EmergencyCallingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EmergencyCallingConfiguration'] = Stubs::EmergencyCallingConfiguration.stub(stub[:emergency_calling_configuration]) unless stub[:emergency_calling_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutVoiceConnectorLoggingConfiguration
    class PutVoiceConnectorLoggingConfiguration
      def self.default(visited=[])
        {
          logging_configuration: Stubs::LoggingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LoggingConfiguration'] = Stubs::LoggingConfiguration.stub(stub[:logging_configuration]) unless stub[:logging_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutVoiceConnectorOrigination
    class PutVoiceConnectorOrigination
      def self.default(visited=[])
        {
          origination: Stubs::Origination.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Origination'] = Stubs::Origination.stub(stub[:origination]) unless stub[:origination].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutVoiceConnectorProxy
    class PutVoiceConnectorProxy
      def self.default(visited=[])
        {
          proxy: Stubs::Proxy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Proxy'] = Stubs::Proxy.stub(stub[:proxy]) unless stub[:proxy].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutVoiceConnectorStreamingConfiguration
    class PutVoiceConnectorStreamingConfiguration
      def self.default(visited=[])
        {
          streaming_configuration: Stubs::StreamingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StreamingConfiguration'] = Stubs::StreamingConfiguration.stub(stub[:streaming_configuration]) unless stub[:streaming_configuration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutVoiceConnectorTermination
    class PutVoiceConnectorTermination
      def self.default(visited=[])
        {
          termination: Stubs::Termination.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Termination'] = Stubs::Termination.stub(stub[:termination]) unless stub[:termination].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutVoiceConnectorTerminationCredentials
    class PutVoiceConnectorTerminationCredentials
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
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

    # Operation Stubber for RedactConversationMessage
    class RedactConversationMessage
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for RedactRoomMessage
    class RedactRoomMessage
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegenerateSecurityToken
    class RegenerateSecurityToken
      def self.default(visited=[])
        {
          bot: Stubs::Bot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Bot'] = Stubs::Bot.stub(stub[:bot]) unless stub[:bot].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ResetPersonalPIN
    class ResetPersonalPIN
      def self.default(visited=[])
        {
          user: Stubs::User.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['User'] = Stubs::User.stub(stub[:user]) unless stub[:user].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RestorePhoneNumber
    class RestorePhoneNumber
      def self.default(visited=[])
        {
          phone_number: Stubs::PhoneNumber.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumber'] = Stubs::PhoneNumber.stub(stub[:phone_number]) unless stub[:phone_number].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SearchAvailablePhoneNumbers
    class SearchAvailablePhoneNumbers
      def self.default(visited=[])
        {
          e164_phone_numbers: Stubs::E164PhoneNumberList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['E164PhoneNumbers'] = Stubs::E164PhoneNumberList.stub(stub[:e164_phone_numbers]) unless stub[:e164_phone_numbers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for E164PhoneNumberList
    class E164PhoneNumberList
      def self.default(visited=[])
        return nil if visited.include?('E164PhoneNumberList')
        visited = visited + ['E164PhoneNumberList']
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

    # Operation Stubber for SendChannelMessage
    class SendChannelMessage
      def self.default(visited=[])
        {
          channel_arn: 'channel_arn',
          message_id: 'message_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['ChannelArn'] = stub[:channel_arn] unless stub[:channel_arn].nil?
        data['MessageId'] = stub[:message_id] unless stub[:message_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartMeetingTranscription
    class StartMeetingTranscription
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopMeetingTranscription
    class StopMeetingTranscription
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagAttendee
    class TagAttendee
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for TagMeeting
    class TagMeeting
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
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

    # Operation Stubber for UntagAttendee
    class UntagAttendee
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UntagMeeting
    class UntagMeeting
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

    # Operation Stubber for UpdateAccount
    class UpdateAccount
      def self.default(visited=[])
        {
          account: Stubs::Account.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Account'] = Stubs::Account.stub(stub[:account]) unless stub[:account].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAccountSettings
    class UpdateAccountSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateAppInstance
    class UpdateAppInstance
      def self.default(visited=[])
        {
          app_instance_arn: 'app_instance_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceArn'] = stub[:app_instance_arn] unless stub[:app_instance_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAppInstanceUser
    class UpdateAppInstanceUser
      def self.default(visited=[])
        {
          app_instance_user_arn: 'app_instance_user_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AppInstanceUserArn'] = stub[:app_instance_user_arn] unless stub[:app_instance_user_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateBot
    class UpdateBot
      def self.default(visited=[])
        {
          bot: Stubs::Bot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Bot'] = Stubs::Bot.stub(stub[:bot]) unless stub[:bot].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for UpdateChannelMessage
    class UpdateChannelMessage
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

    # Operation Stubber for UpdateGlobalSettings
    class UpdateGlobalSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdatePhoneNumber
    class UpdatePhoneNumber
      def self.default(visited=[])
        {
          phone_number: Stubs::PhoneNumber.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PhoneNumber'] = Stubs::PhoneNumber.stub(stub[:phone_number]) unless stub[:phone_number].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdatePhoneNumberSettings
    class UpdatePhoneNumberSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateProxySession
    class UpdateProxySession
      def self.default(visited=[])
        {
          proxy_session: Stubs::ProxySession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProxySession'] = Stubs::ProxySession.stub(stub[:proxy_session]) unless stub[:proxy_session].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRoom
    class UpdateRoom
      def self.default(visited=[])
        {
          room: Stubs::Room.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Room'] = Stubs::Room.stub(stub[:room]) unless stub[:room].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRoomMembership
    class UpdateRoomMembership
      def self.default(visited=[])
        {
          room_membership: Stubs::RoomMembership.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RoomMembership'] = Stubs::RoomMembership.stub(stub[:room_membership]) unless stub[:room_membership].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSipMediaApplication
    class UpdateSipMediaApplication
      def self.default(visited=[])
        {
          sip_media_application: Stubs::SipMediaApplication.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['SipMediaApplication'] = Stubs::SipMediaApplication.stub(stub[:sip_media_application]) unless stub[:sip_media_application].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSipMediaApplicationCall
    class UpdateSipMediaApplicationCall
      def self.default(visited=[])
        {
          sip_media_application_call: Stubs::SipMediaApplicationCall.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['SipMediaApplicationCall'] = Stubs::SipMediaApplicationCall.stub(stub[:sip_media_application_call]) unless stub[:sip_media_application_call].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSipRule
    class UpdateSipRule
      def self.default(visited=[])
        {
          sip_rule: Stubs::SipRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['SipRule'] = Stubs::SipRule.stub(stub[:sip_rule]) unless stub[:sip_rule].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateUser
    class UpdateUser
      def self.default(visited=[])
        {
          user: Stubs::User.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['User'] = Stubs::User.stub(stub[:user]) unless stub[:user].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateUserSettings
    class UpdateUserSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateVoiceConnector
    class UpdateVoiceConnector
      def self.default(visited=[])
        {
          voice_connector: Stubs::VoiceConnector.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['VoiceConnector'] = Stubs::VoiceConnector.stub(stub[:voice_connector]) unless stub[:voice_connector].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateVoiceConnectorGroup
    class UpdateVoiceConnectorGroup
      def self.default(visited=[])
        {
          voice_connector_group: Stubs::VoiceConnectorGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['VoiceConnectorGroup'] = Stubs::VoiceConnectorGroup.stub(stub[:voice_connector_group]) unless stub[:voice_connector_group].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
