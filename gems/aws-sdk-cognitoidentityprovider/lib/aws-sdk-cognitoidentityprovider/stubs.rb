# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CognitoIdentityProvider
  module Stubs

    # Operation Stubber for AddCustomAttributes
    class AddCustomAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminAddUserToGroup
    class AdminAddUserToGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminConfirmSignUp
    class AdminConfirmSignUp
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminCreateUser
    class AdminCreateUser
      def self.default(visited=[])
        {
          user: UserType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['User'] = UserType.stub(stub[:user]) unless stub[:user].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for UserType
    class UserType
      def self.default(visited=[])
        return nil if visited.include?('UserType')
        visited = visited + ['UserType']
        {
          username: 'username',
          attributes: AttributeListType.default(visited),
          user_create_date: Time.now,
          user_last_modified_date: Time.now,
          enabled: false,
          user_status: 'user_status',
          mfa_options: MFAOptionListType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UserType.new
        data = {}
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['Attributes'] = AttributeListType.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['UserCreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:user_create_date]).to_i unless stub[:user_create_date].nil?
        data['UserLastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:user_last_modified_date]).to_i unless stub[:user_last_modified_date].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['UserStatus'] = stub[:user_status] unless stub[:user_status].nil?
        data['MFAOptions'] = MFAOptionListType.stub(stub[:mfa_options]) unless stub[:mfa_options].nil?
        data
      end
    end

    # List Stubber for MFAOptionListType
    class MFAOptionListType
      def self.default(visited=[])
        return nil if visited.include?('MFAOptionListType')
        visited = visited + ['MFAOptionListType']
        [
          MFAOptionType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MFAOptionType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MFAOptionType
    class MFAOptionType
      def self.default(visited=[])
        return nil if visited.include?('MFAOptionType')
        visited = visited + ['MFAOptionType']
        {
          delivery_medium: 'delivery_medium',
          attribute_name: 'attribute_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MFAOptionType.new
        data = {}
        data['DeliveryMedium'] = stub[:delivery_medium] unless stub[:delivery_medium].nil?
        data['AttributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data
      end
    end

    # List Stubber for AttributeListType
    class AttributeListType
      def self.default(visited=[])
        return nil if visited.include?('AttributeListType')
        visited = visited + ['AttributeListType']
        [
          AttributeType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AttributeType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttributeType
    class AttributeType
      def self.default(visited=[])
        return nil if visited.include?('AttributeType')
        visited = visited + ['AttributeType']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::AttributeType.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for AdminDeleteUser
    class AdminDeleteUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminDeleteUserAttributes
    class AdminDeleteUserAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminDisableProviderForUser
    class AdminDisableProviderForUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminDisableUser
    class AdminDisableUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminEnableUser
    class AdminEnableUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminForgetDevice
    class AdminForgetDevice
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminGetDevice
    class AdminGetDevice
      def self.default(visited=[])
        {
          device: DeviceType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Device'] = DeviceType.stub(stub[:device]) unless stub[:device].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DeviceType
    class DeviceType
      def self.default(visited=[])
        return nil if visited.include?('DeviceType')
        visited = visited + ['DeviceType']
        {
          device_key: 'device_key',
          device_attributes: AttributeListType.default(visited),
          device_create_date: Time.now,
          device_last_modified_date: Time.now,
          device_last_authenticated_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceType.new
        data = {}
        data['DeviceKey'] = stub[:device_key] unless stub[:device_key].nil?
        data['DeviceAttributes'] = AttributeListType.stub(stub[:device_attributes]) unless stub[:device_attributes].nil?
        data['DeviceCreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:device_create_date]).to_i unless stub[:device_create_date].nil?
        data['DeviceLastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:device_last_modified_date]).to_i unless stub[:device_last_modified_date].nil?
        data['DeviceLastAuthenticatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:device_last_authenticated_date]).to_i unless stub[:device_last_authenticated_date].nil?
        data
      end
    end

    # Operation Stubber for AdminGetUser
    class AdminGetUser
      def self.default(visited=[])
        {
          username: 'username',
          user_attributes: AttributeListType.default(visited),
          user_create_date: Time.now,
          user_last_modified_date: Time.now,
          enabled: false,
          user_status: 'user_status',
          mfa_options: MFAOptionListType.default(visited),
          preferred_mfa_setting: 'preferred_mfa_setting',
          user_mfa_setting_list: UserMFASettingListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['UserAttributes'] = AttributeListType.stub(stub[:user_attributes]) unless stub[:user_attributes].nil?
        data['UserCreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:user_create_date]).to_i unless stub[:user_create_date].nil?
        data['UserLastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:user_last_modified_date]).to_i unless stub[:user_last_modified_date].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['UserStatus'] = stub[:user_status] unless stub[:user_status].nil?
        data['MFAOptions'] = MFAOptionListType.stub(stub[:mfa_options]) unless stub[:mfa_options].nil?
        data['PreferredMfaSetting'] = stub[:preferred_mfa_setting] unless stub[:preferred_mfa_setting].nil?
        data['UserMFASettingList'] = UserMFASettingListType.stub(stub[:user_mfa_setting_list]) unless stub[:user_mfa_setting_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UserMFASettingListType
    class UserMFASettingListType
      def self.default(visited=[])
        return nil if visited.include?('UserMFASettingListType')
        visited = visited + ['UserMFASettingListType']
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

    # Operation Stubber for AdminInitiateAuth
    class AdminInitiateAuth
      def self.default(visited=[])
        {
          challenge_name: 'challenge_name',
          session: 'session',
          challenge_parameters: ChallengeParametersType.default(visited),
          authentication_result: AuthenticationResultType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChallengeName'] = stub[:challenge_name] unless stub[:challenge_name].nil?
        data['Session'] = stub[:session] unless stub[:session].nil?
        data['ChallengeParameters'] = ChallengeParametersType.stub(stub[:challenge_parameters]) unless stub[:challenge_parameters].nil?
        data['AuthenticationResult'] = AuthenticationResultType.stub(stub[:authentication_result]) unless stub[:authentication_result].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AuthenticationResultType
    class AuthenticationResultType
      def self.default(visited=[])
        return nil if visited.include?('AuthenticationResultType')
        visited = visited + ['AuthenticationResultType']
        {
          access_token: 'access_token',
          expires_in: 1,
          token_type: 'token_type',
          refresh_token: 'refresh_token',
          id_token: 'id_token',
          new_device_metadata: NewDeviceMetadataType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthenticationResultType.new
        data = {}
        data['AccessToken'] = stub[:access_token] unless stub[:access_token].nil?
        data['ExpiresIn'] = stub[:expires_in] unless stub[:expires_in].nil?
        data['TokenType'] = stub[:token_type] unless stub[:token_type].nil?
        data['RefreshToken'] = stub[:refresh_token] unless stub[:refresh_token].nil?
        data['IdToken'] = stub[:id_token] unless stub[:id_token].nil?
        data['NewDeviceMetadata'] = NewDeviceMetadataType.stub(stub[:new_device_metadata]) unless stub[:new_device_metadata].nil?
        data
      end
    end

    # Structure Stubber for NewDeviceMetadataType
    class NewDeviceMetadataType
      def self.default(visited=[])
        return nil if visited.include?('NewDeviceMetadataType')
        visited = visited + ['NewDeviceMetadataType']
        {
          device_key: 'device_key',
          device_group_key: 'device_group_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::NewDeviceMetadataType.new
        data = {}
        data['DeviceKey'] = stub[:device_key] unless stub[:device_key].nil?
        data['DeviceGroupKey'] = stub[:device_group_key] unless stub[:device_group_key].nil?
        data
      end
    end

    # Map Stubber for ChallengeParametersType
    class ChallengeParametersType
      def self.default(visited=[])
        return nil if visited.include?('ChallengeParametersType')
        visited = visited + ['ChallengeParametersType']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for AdminLinkProviderForUser
    class AdminLinkProviderForUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminListDevices
    class AdminListDevices
      def self.default(visited=[])
        {
          devices: DeviceListType.default(visited),
          pagination_token: 'pagination_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Devices'] = DeviceListType.stub(stub[:devices]) unless stub[:devices].nil?
        data['PaginationToken'] = stub[:pagination_token] unless stub[:pagination_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DeviceListType
    class DeviceListType
      def self.default(visited=[])
        return nil if visited.include?('DeviceListType')
        visited = visited + ['DeviceListType']
        [
          DeviceType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DeviceType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for AdminListGroupsForUser
    class AdminListGroupsForUser
      def self.default(visited=[])
        {
          groups: GroupListType.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Groups'] = GroupListType.stub(stub[:groups]) unless stub[:groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GroupListType
    class GroupListType
      def self.default(visited=[])
        return nil if visited.include?('GroupListType')
        visited = visited + ['GroupListType']
        [
          GroupType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GroupType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroupType
    class GroupType
      def self.default(visited=[])
        return nil if visited.include?('GroupType')
        visited = visited + ['GroupType']
        {
          group_name: 'group_name',
          user_pool_id: 'user_pool_id',
          description: 'description',
          role_arn: 'role_arn',
          precedence: 1,
          last_modified_date: Time.now,
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupType.new
        data = {}
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['UserPoolId'] = stub[:user_pool_id] unless stub[:user_pool_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['Precedence'] = stub[:precedence] unless stub[:precedence].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # Operation Stubber for AdminListUserAuthEvents
    class AdminListUserAuthEvents
      def self.default(visited=[])
        {
          auth_events: AuthEventsType.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AuthEvents'] = AuthEventsType.stub(stub[:auth_events]) unless stub[:auth_events].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AuthEventsType
    class AuthEventsType
      def self.default(visited=[])
        return nil if visited.include?('AuthEventsType')
        visited = visited + ['AuthEventsType']
        [
          AuthEventType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AuthEventType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AuthEventType
    class AuthEventType
      def self.default(visited=[])
        return nil if visited.include?('AuthEventType')
        visited = visited + ['AuthEventType']
        {
          event_id: 'event_id',
          event_type: 'event_type',
          creation_date: Time.now,
          event_response: 'event_response',
          event_risk: EventRiskType.default(visited),
          challenge_responses: ChallengeResponseListType.default(visited),
          event_context_data: EventContextDataType.default(visited),
          event_feedback: EventFeedbackType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthEventType.new
        data = {}
        data['EventId'] = stub[:event_id] unless stub[:event_id].nil?
        data['EventType'] = stub[:event_type] unless stub[:event_type].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['EventResponse'] = stub[:event_response] unless stub[:event_response].nil?
        data['EventRisk'] = EventRiskType.stub(stub[:event_risk]) unless stub[:event_risk].nil?
        data['ChallengeResponses'] = ChallengeResponseListType.stub(stub[:challenge_responses]) unless stub[:challenge_responses].nil?
        data['EventContextData'] = EventContextDataType.stub(stub[:event_context_data]) unless stub[:event_context_data].nil?
        data['EventFeedback'] = EventFeedbackType.stub(stub[:event_feedback]) unless stub[:event_feedback].nil?
        data
      end
    end

    # Structure Stubber for EventFeedbackType
    class EventFeedbackType
      def self.default(visited=[])
        return nil if visited.include?('EventFeedbackType')
        visited = visited + ['EventFeedbackType']
        {
          feedback_value: 'feedback_value',
          provider: 'provider',
          feedback_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EventFeedbackType.new
        data = {}
        data['FeedbackValue'] = stub[:feedback_value] unless stub[:feedback_value].nil?
        data['Provider'] = stub[:provider] unless stub[:provider].nil?
        data['FeedbackDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:feedback_date]).to_i unless stub[:feedback_date].nil?
        data
      end
    end

    # Structure Stubber for EventContextDataType
    class EventContextDataType
      def self.default(visited=[])
        return nil if visited.include?('EventContextDataType')
        visited = visited + ['EventContextDataType']
        {
          ip_address: 'ip_address',
          device_name: 'device_name',
          timezone: 'timezone',
          city: 'city',
          country: 'country',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventContextDataType.new
        data = {}
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['DeviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['Timezone'] = stub[:timezone] unless stub[:timezone].nil?
        data['City'] = stub[:city] unless stub[:city].nil?
        data['Country'] = stub[:country] unless stub[:country].nil?
        data
      end
    end

    # List Stubber for ChallengeResponseListType
    class ChallengeResponseListType
      def self.default(visited=[])
        return nil if visited.include?('ChallengeResponseListType')
        visited = visited + ['ChallengeResponseListType']
        [
          ChallengeResponseType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ChallengeResponseType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChallengeResponseType
    class ChallengeResponseType
      def self.default(visited=[])
        return nil if visited.include?('ChallengeResponseType')
        visited = visited + ['ChallengeResponseType']
        {
          challenge_name: 'challenge_name',
          challenge_response: 'challenge_response',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChallengeResponseType.new
        data = {}
        data['ChallengeName'] = stub[:challenge_name] unless stub[:challenge_name].nil?
        data['ChallengeResponse'] = stub[:challenge_response] unless stub[:challenge_response].nil?
        data
      end
    end

    # Structure Stubber for EventRiskType
    class EventRiskType
      def self.default(visited=[])
        return nil if visited.include?('EventRiskType')
        visited = visited + ['EventRiskType']
        {
          risk_decision: 'risk_decision',
          risk_level: 'risk_level',
          compromised_credentials_detected: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::EventRiskType.new
        data = {}
        data['RiskDecision'] = stub[:risk_decision] unless stub[:risk_decision].nil?
        data['RiskLevel'] = stub[:risk_level] unless stub[:risk_level].nil?
        data['CompromisedCredentialsDetected'] = stub[:compromised_credentials_detected] unless stub[:compromised_credentials_detected].nil?
        data
      end
    end

    # Operation Stubber for AdminRemoveUserFromGroup
    class AdminRemoveUserFromGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminResetUserPassword
    class AdminResetUserPassword
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminRespondToAuthChallenge
    class AdminRespondToAuthChallenge
      def self.default(visited=[])
        {
          challenge_name: 'challenge_name',
          session: 'session',
          challenge_parameters: ChallengeParametersType.default(visited),
          authentication_result: AuthenticationResultType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChallengeName'] = stub[:challenge_name] unless stub[:challenge_name].nil?
        data['Session'] = stub[:session] unless stub[:session].nil?
        data['ChallengeParameters'] = ChallengeParametersType.stub(stub[:challenge_parameters]) unless stub[:challenge_parameters].nil?
        data['AuthenticationResult'] = AuthenticationResultType.stub(stub[:authentication_result]) unless stub[:authentication_result].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminSetUserMFAPreference
    class AdminSetUserMFAPreference
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminSetUserPassword
    class AdminSetUserPassword
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminSetUserSettings
    class AdminSetUserSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminUpdateAuthEventFeedback
    class AdminUpdateAuthEventFeedback
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminUpdateDeviceStatus
    class AdminUpdateDeviceStatus
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminUpdateUserAttributes
    class AdminUpdateUserAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AdminUserGlobalSignOut
    class AdminUserGlobalSignOut
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AssociateSoftwareToken
    class AssociateSoftwareToken
      def self.default(visited=[])
        {
          secret_code: 'secret_code',
          session: 'session',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SecretCode'] = stub[:secret_code] unless stub[:secret_code].nil?
        data['Session'] = stub[:session] unless stub[:session].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ChangePassword
    class ChangePassword
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ConfirmDevice
    class ConfirmDevice
      def self.default(visited=[])
        {
          user_confirmation_necessary: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserConfirmationNecessary'] = stub[:user_confirmation_necessary] unless stub[:user_confirmation_necessary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ConfirmForgotPassword
    class ConfirmForgotPassword
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ConfirmSignUp
    class ConfirmSignUp
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateGroup
    class CreateGroup
      def self.default(visited=[])
        {
          group: GroupType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Group'] = GroupType.stub(stub[:group]) unless stub[:group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateIdentityProvider
    class CreateIdentityProvider
      def self.default(visited=[])
        {
          identity_provider: IdentityProviderType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityProvider'] = IdentityProviderType.stub(stub[:identity_provider]) unless stub[:identity_provider].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for IdentityProviderType
    class IdentityProviderType
      def self.default(visited=[])
        return nil if visited.include?('IdentityProviderType')
        visited = visited + ['IdentityProviderType']
        {
          user_pool_id: 'user_pool_id',
          provider_name: 'provider_name',
          provider_type: 'provider_type',
          provider_details: ProviderDetailsType.default(visited),
          attribute_mapping: AttributeMappingType.default(visited),
          idp_identifiers: IdpIdentifiersListType.default(visited),
          last_modified_date: Time.now,
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentityProviderType.new
        data = {}
        data['UserPoolId'] = stub[:user_pool_id] unless stub[:user_pool_id].nil?
        data['ProviderName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['ProviderType'] = stub[:provider_type] unless stub[:provider_type].nil?
        data['ProviderDetails'] = ProviderDetailsType.stub(stub[:provider_details]) unless stub[:provider_details].nil?
        data['AttributeMapping'] = AttributeMappingType.stub(stub[:attribute_mapping]) unless stub[:attribute_mapping].nil?
        data['IdpIdentifiers'] = IdpIdentifiersListType.stub(stub[:idp_identifiers]) unless stub[:idp_identifiers].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # List Stubber for IdpIdentifiersListType
    class IdpIdentifiersListType
      def self.default(visited=[])
        return nil if visited.include?('IdpIdentifiersListType')
        visited = visited + ['IdpIdentifiersListType']
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

    # Map Stubber for AttributeMappingType
    class AttributeMappingType
      def self.default(visited=[])
        return nil if visited.include?('AttributeMappingType')
        visited = visited + ['AttributeMappingType']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Stubber for ProviderDetailsType
    class ProviderDetailsType
      def self.default(visited=[])
        return nil if visited.include?('ProviderDetailsType')
        visited = visited + ['ProviderDetailsType']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateResourceServer
    class CreateResourceServer
      def self.default(visited=[])
        {
          resource_server: ResourceServerType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceServer'] = ResourceServerType.stub(stub[:resource_server]) unless stub[:resource_server].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ResourceServerType
    class ResourceServerType
      def self.default(visited=[])
        return nil if visited.include?('ResourceServerType')
        visited = visited + ['ResourceServerType']
        {
          user_pool_id: 'user_pool_id',
          identifier: 'identifier',
          name: 'name',
          scopes: ResourceServerScopeListType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceServerType.new
        data = {}
        data['UserPoolId'] = stub[:user_pool_id] unless stub[:user_pool_id].nil?
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Scopes'] = ResourceServerScopeListType.stub(stub[:scopes]) unless stub[:scopes].nil?
        data
      end
    end

    # List Stubber for ResourceServerScopeListType
    class ResourceServerScopeListType
      def self.default(visited=[])
        return nil if visited.include?('ResourceServerScopeListType')
        visited = visited + ['ResourceServerScopeListType']
        [
          ResourceServerScopeType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceServerScopeType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceServerScopeType
    class ResourceServerScopeType
      def self.default(visited=[])
        return nil if visited.include?('ResourceServerScopeType')
        visited = visited + ['ResourceServerScopeType']
        {
          scope_name: 'scope_name',
          scope_description: 'scope_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceServerScopeType.new
        data = {}
        data['ScopeName'] = stub[:scope_name] unless stub[:scope_name].nil?
        data['ScopeDescription'] = stub[:scope_description] unless stub[:scope_description].nil?
        data
      end
    end

    # Operation Stubber for CreateUserImportJob
    class CreateUserImportJob
      def self.default(visited=[])
        {
          user_import_job: UserImportJobType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserImportJob'] = UserImportJobType.stub(stub[:user_import_job]) unless stub[:user_import_job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for UserImportJobType
    class UserImportJobType
      def self.default(visited=[])
        return nil if visited.include?('UserImportJobType')
        visited = visited + ['UserImportJobType']
        {
          job_name: 'job_name',
          job_id: 'job_id',
          user_pool_id: 'user_pool_id',
          pre_signed_url: 'pre_signed_url',
          creation_date: Time.now,
          start_date: Time.now,
          completion_date: Time.now,
          status: 'status',
          cloud_watch_logs_role_arn: 'cloud_watch_logs_role_arn',
          imported_users: 1,
          skipped_users: 1,
          failed_users: 1,
          completion_message: 'completion_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserImportJobType.new
        data = {}
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['UserPoolId'] = stub[:user_pool_id] unless stub[:user_pool_id].nil?
        data['PreSignedUrl'] = stub[:pre_signed_url] unless stub[:pre_signed_url].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['StartDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_date]).to_i unless stub[:start_date].nil?
        data['CompletionDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_date]).to_i unless stub[:completion_date].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CloudWatchLogsRoleArn'] = stub[:cloud_watch_logs_role_arn] unless stub[:cloud_watch_logs_role_arn].nil?
        data['ImportedUsers'] = stub[:imported_users] unless stub[:imported_users].nil?
        data['SkippedUsers'] = stub[:skipped_users] unless stub[:skipped_users].nil?
        data['FailedUsers'] = stub[:failed_users] unless stub[:failed_users].nil?
        data['CompletionMessage'] = stub[:completion_message] unless stub[:completion_message].nil?
        data
      end
    end

    # Operation Stubber for CreateUserPool
    class CreateUserPool
      def self.default(visited=[])
        {
          user_pool: UserPoolType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserPool'] = UserPoolType.stub(stub[:user_pool]) unless stub[:user_pool].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for UserPoolType
    class UserPoolType
      def self.default(visited=[])
        return nil if visited.include?('UserPoolType')
        visited = visited + ['UserPoolType']
        {
          id: 'id',
          name: 'name',
          policies: UserPoolPolicyType.default(visited),
          lambda_config: LambdaConfigType.default(visited),
          status: 'status',
          last_modified_date: Time.now,
          creation_date: Time.now,
          schema_attributes: SchemaAttributesListType.default(visited),
          auto_verified_attributes: VerifiedAttributesListType.default(visited),
          alias_attributes: AliasAttributesListType.default(visited),
          username_attributes: UsernameAttributesListType.default(visited),
          sms_verification_message: 'sms_verification_message',
          email_verification_message: 'email_verification_message',
          email_verification_subject: 'email_verification_subject',
          verification_message_template: VerificationMessageTemplateType.default(visited),
          sms_authentication_message: 'sms_authentication_message',
          user_attribute_update_settings: UserAttributeUpdateSettingsType.default(visited),
          mfa_configuration: 'mfa_configuration',
          device_configuration: DeviceConfigurationType.default(visited),
          estimated_number_of_users: 1,
          email_configuration: EmailConfigurationType.default(visited),
          sms_configuration: SmsConfigurationType.default(visited),
          user_pool_tags: UserPoolTagsType.default(visited),
          sms_configuration_failure: 'sms_configuration_failure',
          email_configuration_failure: 'email_configuration_failure',
          domain: 'domain',
          custom_domain: 'custom_domain',
          admin_create_user_config: AdminCreateUserConfigType.default(visited),
          user_pool_add_ons: UserPoolAddOnsType.default(visited),
          username_configuration: UsernameConfigurationType.default(visited),
          arn: 'arn',
          account_recovery_setting: AccountRecoverySettingType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UserPoolType.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Policies'] = UserPoolPolicyType.stub(stub[:policies]) unless stub[:policies].nil?
        data['LambdaConfig'] = LambdaConfigType.stub(stub[:lambda_config]) unless stub[:lambda_config].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['SchemaAttributes'] = SchemaAttributesListType.stub(stub[:schema_attributes]) unless stub[:schema_attributes].nil?
        data['AutoVerifiedAttributes'] = VerifiedAttributesListType.stub(stub[:auto_verified_attributes]) unless stub[:auto_verified_attributes].nil?
        data['AliasAttributes'] = AliasAttributesListType.stub(stub[:alias_attributes]) unless stub[:alias_attributes].nil?
        data['UsernameAttributes'] = UsernameAttributesListType.stub(stub[:username_attributes]) unless stub[:username_attributes].nil?
        data['SmsVerificationMessage'] = stub[:sms_verification_message] unless stub[:sms_verification_message].nil?
        data['EmailVerificationMessage'] = stub[:email_verification_message] unless stub[:email_verification_message].nil?
        data['EmailVerificationSubject'] = stub[:email_verification_subject] unless stub[:email_verification_subject].nil?
        data['VerificationMessageTemplate'] = VerificationMessageTemplateType.stub(stub[:verification_message_template]) unless stub[:verification_message_template].nil?
        data['SmsAuthenticationMessage'] = stub[:sms_authentication_message] unless stub[:sms_authentication_message].nil?
        data['UserAttributeUpdateSettings'] = UserAttributeUpdateSettingsType.stub(stub[:user_attribute_update_settings]) unless stub[:user_attribute_update_settings].nil?
        data['MfaConfiguration'] = stub[:mfa_configuration] unless stub[:mfa_configuration].nil?
        data['DeviceConfiguration'] = DeviceConfigurationType.stub(stub[:device_configuration]) unless stub[:device_configuration].nil?
        data['EstimatedNumberOfUsers'] = stub[:estimated_number_of_users] unless stub[:estimated_number_of_users].nil?
        data['EmailConfiguration'] = EmailConfigurationType.stub(stub[:email_configuration]) unless stub[:email_configuration].nil?
        data['SmsConfiguration'] = SmsConfigurationType.stub(stub[:sms_configuration]) unless stub[:sms_configuration].nil?
        data['UserPoolTags'] = UserPoolTagsType.stub(stub[:user_pool_tags]) unless stub[:user_pool_tags].nil?
        data['SmsConfigurationFailure'] = stub[:sms_configuration_failure] unless stub[:sms_configuration_failure].nil?
        data['EmailConfigurationFailure'] = stub[:email_configuration_failure] unless stub[:email_configuration_failure].nil?
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['CustomDomain'] = stub[:custom_domain] unless stub[:custom_domain].nil?
        data['AdminCreateUserConfig'] = AdminCreateUserConfigType.stub(stub[:admin_create_user_config]) unless stub[:admin_create_user_config].nil?
        data['UserPoolAddOns'] = UserPoolAddOnsType.stub(stub[:user_pool_add_ons]) unless stub[:user_pool_add_ons].nil?
        data['UsernameConfiguration'] = UsernameConfigurationType.stub(stub[:username_configuration]) unless stub[:username_configuration].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AccountRecoverySetting'] = AccountRecoverySettingType.stub(stub[:account_recovery_setting]) unless stub[:account_recovery_setting].nil?
        data
      end
    end

    # Structure Stubber for AccountRecoverySettingType
    class AccountRecoverySettingType
      def self.default(visited=[])
        return nil if visited.include?('AccountRecoverySettingType')
        visited = visited + ['AccountRecoverySettingType']
        {
          recovery_mechanisms: RecoveryMechanismsType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountRecoverySettingType.new
        data = {}
        data['RecoveryMechanisms'] = RecoveryMechanismsType.stub(stub[:recovery_mechanisms]) unless stub[:recovery_mechanisms].nil?
        data
      end
    end

    # List Stubber for RecoveryMechanismsType
    class RecoveryMechanismsType
      def self.default(visited=[])
        return nil if visited.include?('RecoveryMechanismsType')
        visited = visited + ['RecoveryMechanismsType']
        [
          RecoveryOptionType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RecoveryOptionType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecoveryOptionType
    class RecoveryOptionType
      def self.default(visited=[])
        return nil if visited.include?('RecoveryOptionType')
        visited = visited + ['RecoveryOptionType']
        {
          priority: 1,
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecoveryOptionType.new
        data = {}
        data['Priority'] = stub[:priority] unless stub[:priority].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for UsernameConfigurationType
    class UsernameConfigurationType
      def self.default(visited=[])
        return nil if visited.include?('UsernameConfigurationType')
        visited = visited + ['UsernameConfigurationType']
        {
          case_sensitive: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::UsernameConfigurationType.new
        data = {}
        data['CaseSensitive'] = stub[:case_sensitive] unless stub[:case_sensitive].nil?
        data
      end
    end

    # Structure Stubber for UserPoolAddOnsType
    class UserPoolAddOnsType
      def self.default(visited=[])
        return nil if visited.include?('UserPoolAddOnsType')
        visited = visited + ['UserPoolAddOnsType']
        {
          advanced_security_mode: 'advanced_security_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserPoolAddOnsType.new
        data = {}
        data['AdvancedSecurityMode'] = stub[:advanced_security_mode] unless stub[:advanced_security_mode].nil?
        data
      end
    end

    # Structure Stubber for AdminCreateUserConfigType
    class AdminCreateUserConfigType
      def self.default(visited=[])
        return nil if visited.include?('AdminCreateUserConfigType')
        visited = visited + ['AdminCreateUserConfigType']
        {
          allow_admin_create_user_only: false,
          unused_account_validity_days: 1,
          invite_message_template: MessageTemplateType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AdminCreateUserConfigType.new
        data = {}
        data['AllowAdminCreateUserOnly'] = stub[:allow_admin_create_user_only] unless stub[:allow_admin_create_user_only].nil?
        data['UnusedAccountValidityDays'] = stub[:unused_account_validity_days] unless stub[:unused_account_validity_days].nil?
        data['InviteMessageTemplate'] = MessageTemplateType.stub(stub[:invite_message_template]) unless stub[:invite_message_template].nil?
        data
      end
    end

    # Structure Stubber for MessageTemplateType
    class MessageTemplateType
      def self.default(visited=[])
        return nil if visited.include?('MessageTemplateType')
        visited = visited + ['MessageTemplateType']
        {
          sms_message: 'sms_message',
          email_message: 'email_message',
          email_subject: 'email_subject',
        }
      end

      def self.stub(stub)
        stub ||= Types::MessageTemplateType.new
        data = {}
        data['SMSMessage'] = stub[:sms_message] unless stub[:sms_message].nil?
        data['EmailMessage'] = stub[:email_message] unless stub[:email_message].nil?
        data['EmailSubject'] = stub[:email_subject] unless stub[:email_subject].nil?
        data
      end
    end

    # Map Stubber for UserPoolTagsType
    class UserPoolTagsType
      def self.default(visited=[])
        return nil if visited.include?('UserPoolTagsType')
        visited = visited + ['UserPoolTagsType']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for SmsConfigurationType
    class SmsConfigurationType
      def self.default(visited=[])
        return nil if visited.include?('SmsConfigurationType')
        visited = visited + ['SmsConfigurationType']
        {
          sns_caller_arn: 'sns_caller_arn',
          external_id: 'external_id',
          sns_region: 'sns_region',
        }
      end

      def self.stub(stub)
        stub ||= Types::SmsConfigurationType.new
        data = {}
        data['SnsCallerArn'] = stub[:sns_caller_arn] unless stub[:sns_caller_arn].nil?
        data['ExternalId'] = stub[:external_id] unless stub[:external_id].nil?
        data['SnsRegion'] = stub[:sns_region] unless stub[:sns_region].nil?
        data
      end
    end

    # Structure Stubber for EmailConfigurationType
    class EmailConfigurationType
      def self.default(visited=[])
        return nil if visited.include?('EmailConfigurationType')
        visited = visited + ['EmailConfigurationType']
        {
          source_arn: 'source_arn',
          reply_to_email_address: 'reply_to_email_address',
          email_sending_account: 'email_sending_account',
          from: 'from',
          configuration_set: 'configuration_set',
        }
      end

      def self.stub(stub)
        stub ||= Types::EmailConfigurationType.new
        data = {}
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['ReplyToEmailAddress'] = stub[:reply_to_email_address] unless stub[:reply_to_email_address].nil?
        data['EmailSendingAccount'] = stub[:email_sending_account] unless stub[:email_sending_account].nil?
        data['From'] = stub[:from] unless stub[:from].nil?
        data['ConfigurationSet'] = stub[:configuration_set] unless stub[:configuration_set].nil?
        data
      end
    end

    # Structure Stubber for DeviceConfigurationType
    class DeviceConfigurationType
      def self.default(visited=[])
        return nil if visited.include?('DeviceConfigurationType')
        visited = visited + ['DeviceConfigurationType']
        {
          challenge_required_on_new_device: false,
          device_only_remembered_on_user_prompt: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceConfigurationType.new
        data = {}
        data['ChallengeRequiredOnNewDevice'] = stub[:challenge_required_on_new_device] unless stub[:challenge_required_on_new_device].nil?
        data['DeviceOnlyRememberedOnUserPrompt'] = stub[:device_only_remembered_on_user_prompt] unless stub[:device_only_remembered_on_user_prompt].nil?
        data
      end
    end

    # Structure Stubber for UserAttributeUpdateSettingsType
    class UserAttributeUpdateSettingsType
      def self.default(visited=[])
        return nil if visited.include?('UserAttributeUpdateSettingsType')
        visited = visited + ['UserAttributeUpdateSettingsType']
        {
          attributes_require_verification_before_update: AttributesRequireVerificationBeforeUpdateType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UserAttributeUpdateSettingsType.new
        data = {}
        data['AttributesRequireVerificationBeforeUpdate'] = AttributesRequireVerificationBeforeUpdateType.stub(stub[:attributes_require_verification_before_update]) unless stub[:attributes_require_verification_before_update].nil?
        data
      end
    end

    # List Stubber for AttributesRequireVerificationBeforeUpdateType
    class AttributesRequireVerificationBeforeUpdateType
      def self.default(visited=[])
        return nil if visited.include?('AttributesRequireVerificationBeforeUpdateType')
        visited = visited + ['AttributesRequireVerificationBeforeUpdateType']
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

    # Structure Stubber for VerificationMessageTemplateType
    class VerificationMessageTemplateType
      def self.default(visited=[])
        return nil if visited.include?('VerificationMessageTemplateType')
        visited = visited + ['VerificationMessageTemplateType']
        {
          sms_message: 'sms_message',
          email_message: 'email_message',
          email_subject: 'email_subject',
          email_message_by_link: 'email_message_by_link',
          email_subject_by_link: 'email_subject_by_link',
          default_email_option: 'default_email_option',
        }
      end

      def self.stub(stub)
        stub ||= Types::VerificationMessageTemplateType.new
        data = {}
        data['SmsMessage'] = stub[:sms_message] unless stub[:sms_message].nil?
        data['EmailMessage'] = stub[:email_message] unless stub[:email_message].nil?
        data['EmailSubject'] = stub[:email_subject] unless stub[:email_subject].nil?
        data['EmailMessageByLink'] = stub[:email_message_by_link] unless stub[:email_message_by_link].nil?
        data['EmailSubjectByLink'] = stub[:email_subject_by_link] unless stub[:email_subject_by_link].nil?
        data['DefaultEmailOption'] = stub[:default_email_option] unless stub[:default_email_option].nil?
        data
      end
    end

    # List Stubber for UsernameAttributesListType
    class UsernameAttributesListType
      def self.default(visited=[])
        return nil if visited.include?('UsernameAttributesListType')
        visited = visited + ['UsernameAttributesListType']
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

    # List Stubber for AliasAttributesListType
    class AliasAttributesListType
      def self.default(visited=[])
        return nil if visited.include?('AliasAttributesListType')
        visited = visited + ['AliasAttributesListType']
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

    # List Stubber for VerifiedAttributesListType
    class VerifiedAttributesListType
      def self.default(visited=[])
        return nil if visited.include?('VerifiedAttributesListType')
        visited = visited + ['VerifiedAttributesListType']
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

    # List Stubber for SchemaAttributesListType
    class SchemaAttributesListType
      def self.default(visited=[])
        return nil if visited.include?('SchemaAttributesListType')
        visited = visited + ['SchemaAttributesListType']
        [
          SchemaAttributeType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SchemaAttributeType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SchemaAttributeType
    class SchemaAttributeType
      def self.default(visited=[])
        return nil if visited.include?('SchemaAttributeType')
        visited = visited + ['SchemaAttributeType']
        {
          name: 'name',
          attribute_data_type: 'attribute_data_type',
          developer_only_attribute: false,
          mutable: false,
          required: false,
          number_attribute_constraints: NumberAttributeConstraintsType.default(visited),
          string_attribute_constraints: StringAttributeConstraintsType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaAttributeType.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['AttributeDataType'] = stub[:attribute_data_type] unless stub[:attribute_data_type].nil?
        data['DeveloperOnlyAttribute'] = stub[:developer_only_attribute] unless stub[:developer_only_attribute].nil?
        data['Mutable'] = stub[:mutable] unless stub[:mutable].nil?
        data['Required'] = stub[:required] unless stub[:required].nil?
        data['NumberAttributeConstraints'] = NumberAttributeConstraintsType.stub(stub[:number_attribute_constraints]) unless stub[:number_attribute_constraints].nil?
        data['StringAttributeConstraints'] = StringAttributeConstraintsType.stub(stub[:string_attribute_constraints]) unless stub[:string_attribute_constraints].nil?
        data
      end
    end

    # Structure Stubber for StringAttributeConstraintsType
    class StringAttributeConstraintsType
      def self.default(visited=[])
        return nil if visited.include?('StringAttributeConstraintsType')
        visited = visited + ['StringAttributeConstraintsType']
        {
          min_length: 'min_length',
          max_length: 'max_length',
        }
      end

      def self.stub(stub)
        stub ||= Types::StringAttributeConstraintsType.new
        data = {}
        data['MinLength'] = stub[:min_length] unless stub[:min_length].nil?
        data['MaxLength'] = stub[:max_length] unless stub[:max_length].nil?
        data
      end
    end

    # Structure Stubber for NumberAttributeConstraintsType
    class NumberAttributeConstraintsType
      def self.default(visited=[])
        return nil if visited.include?('NumberAttributeConstraintsType')
        visited = visited + ['NumberAttributeConstraintsType']
        {
          min_value: 'min_value',
          max_value: 'max_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::NumberAttributeConstraintsType.new
        data = {}
        data['MinValue'] = stub[:min_value] unless stub[:min_value].nil?
        data['MaxValue'] = stub[:max_value] unless stub[:max_value].nil?
        data
      end
    end

    # Structure Stubber for LambdaConfigType
    class LambdaConfigType
      def self.default(visited=[])
        return nil if visited.include?('LambdaConfigType')
        visited = visited + ['LambdaConfigType']
        {
          pre_sign_up: 'pre_sign_up',
          custom_message: 'custom_message',
          post_confirmation: 'post_confirmation',
          pre_authentication: 'pre_authentication',
          post_authentication: 'post_authentication',
          define_auth_challenge: 'define_auth_challenge',
          create_auth_challenge: 'create_auth_challenge',
          verify_auth_challenge_response: 'verify_auth_challenge_response',
          pre_token_generation: 'pre_token_generation',
          user_migration: 'user_migration',
          custom_sms_sender: CustomSMSLambdaVersionConfigType.default(visited),
          custom_email_sender: CustomEmailLambdaVersionConfigType.default(visited),
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaConfigType.new
        data = {}
        data['PreSignUp'] = stub[:pre_sign_up] unless stub[:pre_sign_up].nil?
        data['CustomMessage'] = stub[:custom_message] unless stub[:custom_message].nil?
        data['PostConfirmation'] = stub[:post_confirmation] unless stub[:post_confirmation].nil?
        data['PreAuthentication'] = stub[:pre_authentication] unless stub[:pre_authentication].nil?
        data['PostAuthentication'] = stub[:post_authentication] unless stub[:post_authentication].nil?
        data['DefineAuthChallenge'] = stub[:define_auth_challenge] unless stub[:define_auth_challenge].nil?
        data['CreateAuthChallenge'] = stub[:create_auth_challenge] unless stub[:create_auth_challenge].nil?
        data['VerifyAuthChallengeResponse'] = stub[:verify_auth_challenge_response] unless stub[:verify_auth_challenge_response].nil?
        data['PreTokenGeneration'] = stub[:pre_token_generation] unless stub[:pre_token_generation].nil?
        data['UserMigration'] = stub[:user_migration] unless stub[:user_migration].nil?
        data['CustomSMSSender'] = CustomSMSLambdaVersionConfigType.stub(stub[:custom_sms_sender]) unless stub[:custom_sms_sender].nil?
        data['CustomEmailSender'] = CustomEmailLambdaVersionConfigType.stub(stub[:custom_email_sender]) unless stub[:custom_email_sender].nil?
        data['KMSKeyID'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Structure Stubber for CustomEmailLambdaVersionConfigType
    class CustomEmailLambdaVersionConfigType
      def self.default(visited=[])
        return nil if visited.include?('CustomEmailLambdaVersionConfigType')
        visited = visited + ['CustomEmailLambdaVersionConfigType']
        {
          lambda_version: 'lambda_version',
          lambda_arn: 'lambda_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomEmailLambdaVersionConfigType.new
        data = {}
        data['LambdaVersion'] = stub[:lambda_version] unless stub[:lambda_version].nil?
        data['LambdaArn'] = stub[:lambda_arn] unless stub[:lambda_arn].nil?
        data
      end
    end

    # Structure Stubber for CustomSMSLambdaVersionConfigType
    class CustomSMSLambdaVersionConfigType
      def self.default(visited=[])
        return nil if visited.include?('CustomSMSLambdaVersionConfigType')
        visited = visited + ['CustomSMSLambdaVersionConfigType']
        {
          lambda_version: 'lambda_version',
          lambda_arn: 'lambda_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomSMSLambdaVersionConfigType.new
        data = {}
        data['LambdaVersion'] = stub[:lambda_version] unless stub[:lambda_version].nil?
        data['LambdaArn'] = stub[:lambda_arn] unless stub[:lambda_arn].nil?
        data
      end
    end

    # Structure Stubber for UserPoolPolicyType
    class UserPoolPolicyType
      def self.default(visited=[])
        return nil if visited.include?('UserPoolPolicyType')
        visited = visited + ['UserPoolPolicyType']
        {
          password_policy: PasswordPolicyType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UserPoolPolicyType.new
        data = {}
        data['PasswordPolicy'] = PasswordPolicyType.stub(stub[:password_policy]) unless stub[:password_policy].nil?
        data
      end
    end

    # Structure Stubber for PasswordPolicyType
    class PasswordPolicyType
      def self.default(visited=[])
        return nil if visited.include?('PasswordPolicyType')
        visited = visited + ['PasswordPolicyType']
        {
          minimum_length: 1,
          require_uppercase: false,
          require_lowercase: false,
          require_numbers: false,
          require_symbols: false,
          temporary_password_validity_days: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PasswordPolicyType.new
        data = {}
        data['MinimumLength'] = stub[:minimum_length] unless stub[:minimum_length].nil?
        data['RequireUppercase'] = stub[:require_uppercase] unless stub[:require_uppercase].nil?
        data['RequireLowercase'] = stub[:require_lowercase] unless stub[:require_lowercase].nil?
        data['RequireNumbers'] = stub[:require_numbers] unless stub[:require_numbers].nil?
        data['RequireSymbols'] = stub[:require_symbols] unless stub[:require_symbols].nil?
        data['TemporaryPasswordValidityDays'] = stub[:temporary_password_validity_days] unless stub[:temporary_password_validity_days].nil?
        data
      end
    end

    # Operation Stubber for CreateUserPoolClient
    class CreateUserPoolClient
      def self.default(visited=[])
        {
          user_pool_client: UserPoolClientType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserPoolClient'] = UserPoolClientType.stub(stub[:user_pool_client]) unless stub[:user_pool_client].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for UserPoolClientType
    class UserPoolClientType
      def self.default(visited=[])
        return nil if visited.include?('UserPoolClientType')
        visited = visited + ['UserPoolClientType']
        {
          user_pool_id: 'user_pool_id',
          client_name: 'client_name',
          client_id: 'client_id',
          client_secret: 'client_secret',
          last_modified_date: Time.now,
          creation_date: Time.now,
          refresh_token_validity: 1,
          access_token_validity: 1,
          id_token_validity: 1,
          token_validity_units: TokenValidityUnitsType.default(visited),
          read_attributes: ClientPermissionListType.default(visited),
          write_attributes: ClientPermissionListType.default(visited),
          explicit_auth_flows: ExplicitAuthFlowsListType.default(visited),
          supported_identity_providers: SupportedIdentityProvidersListType.default(visited),
          callback_ur_ls: CallbackURLsListType.default(visited),
          logout_ur_ls: LogoutURLsListType.default(visited),
          default_redirect_uri: 'default_redirect_uri',
          allowed_o_auth_flows: OAuthFlowsType.default(visited),
          allowed_o_auth_scopes: ScopeListType.default(visited),
          allowed_o_auth_flows_user_pool_client: false,
          analytics_configuration: AnalyticsConfigurationType.default(visited),
          prevent_user_existence_errors: 'prevent_user_existence_errors',
          enable_token_revocation: false,
          enable_propagate_additional_user_context_data: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::UserPoolClientType.new
        data = {}
        data['UserPoolId'] = stub[:user_pool_id] unless stub[:user_pool_id].nil?
        data['ClientName'] = stub[:client_name] unless stub[:client_name].nil?
        data['ClientId'] = stub[:client_id] unless stub[:client_id].nil?
        data['ClientSecret'] = stub[:client_secret] unless stub[:client_secret].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['RefreshTokenValidity'] = stub[:refresh_token_validity] unless stub[:refresh_token_validity].nil?
        data['AccessTokenValidity'] = stub[:access_token_validity] unless stub[:access_token_validity].nil?
        data['IdTokenValidity'] = stub[:id_token_validity] unless stub[:id_token_validity].nil?
        data['TokenValidityUnits'] = TokenValidityUnitsType.stub(stub[:token_validity_units]) unless stub[:token_validity_units].nil?
        data['ReadAttributes'] = ClientPermissionListType.stub(stub[:read_attributes]) unless stub[:read_attributes].nil?
        data['WriteAttributes'] = ClientPermissionListType.stub(stub[:write_attributes]) unless stub[:write_attributes].nil?
        data['ExplicitAuthFlows'] = ExplicitAuthFlowsListType.stub(stub[:explicit_auth_flows]) unless stub[:explicit_auth_flows].nil?
        data['SupportedIdentityProviders'] = SupportedIdentityProvidersListType.stub(stub[:supported_identity_providers]) unless stub[:supported_identity_providers].nil?
        data['CallbackURLs'] = CallbackURLsListType.stub(stub[:callback_ur_ls]) unless stub[:callback_ur_ls].nil?
        data['LogoutURLs'] = LogoutURLsListType.stub(stub[:logout_ur_ls]) unless stub[:logout_ur_ls].nil?
        data['DefaultRedirectURI'] = stub[:default_redirect_uri] unless stub[:default_redirect_uri].nil?
        data['AllowedOAuthFlows'] = OAuthFlowsType.stub(stub[:allowed_o_auth_flows]) unless stub[:allowed_o_auth_flows].nil?
        data['AllowedOAuthScopes'] = ScopeListType.stub(stub[:allowed_o_auth_scopes]) unless stub[:allowed_o_auth_scopes].nil?
        data['AllowedOAuthFlowsUserPoolClient'] = stub[:allowed_o_auth_flows_user_pool_client] unless stub[:allowed_o_auth_flows_user_pool_client].nil?
        data['AnalyticsConfiguration'] = AnalyticsConfigurationType.stub(stub[:analytics_configuration]) unless stub[:analytics_configuration].nil?
        data['PreventUserExistenceErrors'] = stub[:prevent_user_existence_errors] unless stub[:prevent_user_existence_errors].nil?
        data['EnableTokenRevocation'] = stub[:enable_token_revocation] unless stub[:enable_token_revocation].nil?
        data['EnablePropagateAdditionalUserContextData'] = stub[:enable_propagate_additional_user_context_data] unless stub[:enable_propagate_additional_user_context_data].nil?
        data
      end
    end

    # Structure Stubber for AnalyticsConfigurationType
    class AnalyticsConfigurationType
      def self.default(visited=[])
        return nil if visited.include?('AnalyticsConfigurationType')
        visited = visited + ['AnalyticsConfigurationType']
        {
          application_id: 'application_id',
          application_arn: 'application_arn',
          role_arn: 'role_arn',
          external_id: 'external_id',
          user_data_shared: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::AnalyticsConfigurationType.new
        data = {}
        data['ApplicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['ApplicationArn'] = stub[:application_arn] unless stub[:application_arn].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ExternalId'] = stub[:external_id] unless stub[:external_id].nil?
        data['UserDataShared'] = stub[:user_data_shared] unless stub[:user_data_shared].nil?
        data
      end
    end

    # List Stubber for ScopeListType
    class ScopeListType
      def self.default(visited=[])
        return nil if visited.include?('ScopeListType')
        visited = visited + ['ScopeListType']
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

    # List Stubber for OAuthFlowsType
    class OAuthFlowsType
      def self.default(visited=[])
        return nil if visited.include?('OAuthFlowsType')
        visited = visited + ['OAuthFlowsType']
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

    # List Stubber for LogoutURLsListType
    class LogoutURLsListType
      def self.default(visited=[])
        return nil if visited.include?('LogoutURLsListType')
        visited = visited + ['LogoutURLsListType']
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

    # List Stubber for CallbackURLsListType
    class CallbackURLsListType
      def self.default(visited=[])
        return nil if visited.include?('CallbackURLsListType')
        visited = visited + ['CallbackURLsListType']
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

    # List Stubber for SupportedIdentityProvidersListType
    class SupportedIdentityProvidersListType
      def self.default(visited=[])
        return nil if visited.include?('SupportedIdentityProvidersListType')
        visited = visited + ['SupportedIdentityProvidersListType']
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

    # List Stubber for ExplicitAuthFlowsListType
    class ExplicitAuthFlowsListType
      def self.default(visited=[])
        return nil if visited.include?('ExplicitAuthFlowsListType')
        visited = visited + ['ExplicitAuthFlowsListType']
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

    # List Stubber for ClientPermissionListType
    class ClientPermissionListType
      def self.default(visited=[])
        return nil if visited.include?('ClientPermissionListType')
        visited = visited + ['ClientPermissionListType']
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

    # Structure Stubber for TokenValidityUnitsType
    class TokenValidityUnitsType
      def self.default(visited=[])
        return nil if visited.include?('TokenValidityUnitsType')
        visited = visited + ['TokenValidityUnitsType']
        {
          access_token: 'access_token',
          id_token: 'id_token',
          refresh_token: 'refresh_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::TokenValidityUnitsType.new
        data = {}
        data['AccessToken'] = stub[:access_token] unless stub[:access_token].nil?
        data['IdToken'] = stub[:id_token] unless stub[:id_token].nil?
        data['RefreshToken'] = stub[:refresh_token] unless stub[:refresh_token].nil?
        data
      end
    end

    # Operation Stubber for CreateUserPoolDomain
    class CreateUserPoolDomain
      def self.default(visited=[])
        {
          cloud_front_domain: 'cloud_front_domain',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CloudFrontDomain'] = stub[:cloud_front_domain] unless stub[:cloud_front_domain].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteGroup
    class DeleteGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteIdentityProvider
    class DeleteIdentityProvider
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResourceServer
    class DeleteResourceServer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUser
    class DeleteUser
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUserAttributes
    class DeleteUserAttributes
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUserPool
    class DeleteUserPool
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUserPoolClient
    class DeleteUserPoolClient
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUserPoolDomain
    class DeleteUserPoolDomain
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeIdentityProvider
    class DescribeIdentityProvider
      def self.default(visited=[])
        {
          identity_provider: IdentityProviderType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityProvider'] = IdentityProviderType.stub(stub[:identity_provider]) unless stub[:identity_provider].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeResourceServer
    class DescribeResourceServer
      def self.default(visited=[])
        {
          resource_server: ResourceServerType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceServer'] = ResourceServerType.stub(stub[:resource_server]) unless stub[:resource_server].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeRiskConfiguration
    class DescribeRiskConfiguration
      def self.default(visited=[])
        {
          risk_configuration: RiskConfigurationType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RiskConfiguration'] = RiskConfigurationType.stub(stub[:risk_configuration]) unless stub[:risk_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RiskConfigurationType
    class RiskConfigurationType
      def self.default(visited=[])
        return nil if visited.include?('RiskConfigurationType')
        visited = visited + ['RiskConfigurationType']
        {
          user_pool_id: 'user_pool_id',
          client_id: 'client_id',
          compromised_credentials_risk_configuration: CompromisedCredentialsRiskConfigurationType.default(visited),
          account_takeover_risk_configuration: AccountTakeoverRiskConfigurationType.default(visited),
          risk_exception_configuration: RiskExceptionConfigurationType.default(visited),
          last_modified_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RiskConfigurationType.new
        data = {}
        data['UserPoolId'] = stub[:user_pool_id] unless stub[:user_pool_id].nil?
        data['ClientId'] = stub[:client_id] unless stub[:client_id].nil?
        data['CompromisedCredentialsRiskConfiguration'] = CompromisedCredentialsRiskConfigurationType.stub(stub[:compromised_credentials_risk_configuration]) unless stub[:compromised_credentials_risk_configuration].nil?
        data['AccountTakeoverRiskConfiguration'] = AccountTakeoverRiskConfigurationType.stub(stub[:account_takeover_risk_configuration]) unless stub[:account_takeover_risk_configuration].nil?
        data['RiskExceptionConfiguration'] = RiskExceptionConfigurationType.stub(stub[:risk_exception_configuration]) unless stub[:risk_exception_configuration].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data
      end
    end

    # Structure Stubber for RiskExceptionConfigurationType
    class RiskExceptionConfigurationType
      def self.default(visited=[])
        return nil if visited.include?('RiskExceptionConfigurationType')
        visited = visited + ['RiskExceptionConfigurationType']
        {
          blocked_ip_range_list: BlockedIPRangeListType.default(visited),
          skipped_ip_range_list: SkippedIPRangeListType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RiskExceptionConfigurationType.new
        data = {}
        data['BlockedIPRangeList'] = BlockedIPRangeListType.stub(stub[:blocked_ip_range_list]) unless stub[:blocked_ip_range_list].nil?
        data['SkippedIPRangeList'] = SkippedIPRangeListType.stub(stub[:skipped_ip_range_list]) unless stub[:skipped_ip_range_list].nil?
        data
      end
    end

    # List Stubber for SkippedIPRangeListType
    class SkippedIPRangeListType
      def self.default(visited=[])
        return nil if visited.include?('SkippedIPRangeListType')
        visited = visited + ['SkippedIPRangeListType']
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

    # List Stubber for BlockedIPRangeListType
    class BlockedIPRangeListType
      def self.default(visited=[])
        return nil if visited.include?('BlockedIPRangeListType')
        visited = visited + ['BlockedIPRangeListType']
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

    # Structure Stubber for AccountTakeoverRiskConfigurationType
    class AccountTakeoverRiskConfigurationType
      def self.default(visited=[])
        return nil if visited.include?('AccountTakeoverRiskConfigurationType')
        visited = visited + ['AccountTakeoverRiskConfigurationType']
        {
          notify_configuration: NotifyConfigurationType.default(visited),
          actions: AccountTakeoverActionsType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountTakeoverRiskConfigurationType.new
        data = {}
        data['NotifyConfiguration'] = NotifyConfigurationType.stub(stub[:notify_configuration]) unless stub[:notify_configuration].nil?
        data['Actions'] = AccountTakeoverActionsType.stub(stub[:actions]) unless stub[:actions].nil?
        data
      end
    end

    # Structure Stubber for AccountTakeoverActionsType
    class AccountTakeoverActionsType
      def self.default(visited=[])
        return nil if visited.include?('AccountTakeoverActionsType')
        visited = visited + ['AccountTakeoverActionsType']
        {
          low_action: AccountTakeoverActionType.default(visited),
          medium_action: AccountTakeoverActionType.default(visited),
          high_action: AccountTakeoverActionType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountTakeoverActionsType.new
        data = {}
        data['LowAction'] = AccountTakeoverActionType.stub(stub[:low_action]) unless stub[:low_action].nil?
        data['MediumAction'] = AccountTakeoverActionType.stub(stub[:medium_action]) unless stub[:medium_action].nil?
        data['HighAction'] = AccountTakeoverActionType.stub(stub[:high_action]) unless stub[:high_action].nil?
        data
      end
    end

    # Structure Stubber for AccountTakeoverActionType
    class AccountTakeoverActionType
      def self.default(visited=[])
        return nil if visited.include?('AccountTakeoverActionType')
        visited = visited + ['AccountTakeoverActionType']
        {
          notify: false,
          event_action: 'event_action',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountTakeoverActionType.new
        data = {}
        data['Notify'] = stub[:notify] unless stub[:notify].nil?
        data['EventAction'] = stub[:event_action] unless stub[:event_action].nil?
        data
      end
    end

    # Structure Stubber for NotifyConfigurationType
    class NotifyConfigurationType
      def self.default(visited=[])
        return nil if visited.include?('NotifyConfigurationType')
        visited = visited + ['NotifyConfigurationType']
        {
          from: 'from',
          reply_to: 'reply_to',
          source_arn: 'source_arn',
          block_email: NotifyEmailType.default(visited),
          no_action_email: NotifyEmailType.default(visited),
          mfa_email: NotifyEmailType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NotifyConfigurationType.new
        data = {}
        data['From'] = stub[:from] unless stub[:from].nil?
        data['ReplyTo'] = stub[:reply_to] unless stub[:reply_to].nil?
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data['BlockEmail'] = NotifyEmailType.stub(stub[:block_email]) unless stub[:block_email].nil?
        data['NoActionEmail'] = NotifyEmailType.stub(stub[:no_action_email]) unless stub[:no_action_email].nil?
        data['MfaEmail'] = NotifyEmailType.stub(stub[:mfa_email]) unless stub[:mfa_email].nil?
        data
      end
    end

    # Structure Stubber for NotifyEmailType
    class NotifyEmailType
      def self.default(visited=[])
        return nil if visited.include?('NotifyEmailType')
        visited = visited + ['NotifyEmailType']
        {
          subject: 'subject',
          html_body: 'html_body',
          text_body: 'text_body',
        }
      end

      def self.stub(stub)
        stub ||= Types::NotifyEmailType.new
        data = {}
        data['Subject'] = stub[:subject] unless stub[:subject].nil?
        data['HtmlBody'] = stub[:html_body] unless stub[:html_body].nil?
        data['TextBody'] = stub[:text_body] unless stub[:text_body].nil?
        data
      end
    end

    # Structure Stubber for CompromisedCredentialsRiskConfigurationType
    class CompromisedCredentialsRiskConfigurationType
      def self.default(visited=[])
        return nil if visited.include?('CompromisedCredentialsRiskConfigurationType')
        visited = visited + ['CompromisedCredentialsRiskConfigurationType']
        {
          event_filter: EventFiltersType.default(visited),
          actions: CompromisedCredentialsActionsType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CompromisedCredentialsRiskConfigurationType.new
        data = {}
        data['EventFilter'] = EventFiltersType.stub(stub[:event_filter]) unless stub[:event_filter].nil?
        data['Actions'] = CompromisedCredentialsActionsType.stub(stub[:actions]) unless stub[:actions].nil?
        data
      end
    end

    # Structure Stubber for CompromisedCredentialsActionsType
    class CompromisedCredentialsActionsType
      def self.default(visited=[])
        return nil if visited.include?('CompromisedCredentialsActionsType')
        visited = visited + ['CompromisedCredentialsActionsType']
        {
          event_action: 'event_action',
        }
      end

      def self.stub(stub)
        stub ||= Types::CompromisedCredentialsActionsType.new
        data = {}
        data['EventAction'] = stub[:event_action] unless stub[:event_action].nil?
        data
      end
    end

    # List Stubber for EventFiltersType
    class EventFiltersType
      def self.default(visited=[])
        return nil if visited.include?('EventFiltersType')
        visited = visited + ['EventFiltersType']
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

    # Operation Stubber for DescribeUserImportJob
    class DescribeUserImportJob
      def self.default(visited=[])
        {
          user_import_job: UserImportJobType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserImportJob'] = UserImportJobType.stub(stub[:user_import_job]) unless stub[:user_import_job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeUserPool
    class DescribeUserPool
      def self.default(visited=[])
        {
          user_pool: UserPoolType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserPool'] = UserPoolType.stub(stub[:user_pool]) unless stub[:user_pool].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeUserPoolClient
    class DescribeUserPoolClient
      def self.default(visited=[])
        {
          user_pool_client: UserPoolClientType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserPoolClient'] = UserPoolClientType.stub(stub[:user_pool_client]) unless stub[:user_pool_client].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeUserPoolDomain
    class DescribeUserPoolDomain
      def self.default(visited=[])
        {
          domain_description: DomainDescriptionType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DomainDescription'] = DomainDescriptionType.stub(stub[:domain_description]) unless stub[:domain_description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DomainDescriptionType
    class DomainDescriptionType
      def self.default(visited=[])
        return nil if visited.include?('DomainDescriptionType')
        visited = visited + ['DomainDescriptionType']
        {
          user_pool_id: 'user_pool_id',
          aws_account_id: 'aws_account_id',
          domain: 'domain',
          s3_bucket: 's3_bucket',
          cloud_front_distribution: 'cloud_front_distribution',
          version: 'version',
          status: 'status',
          custom_domain_config: CustomDomainConfigType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainDescriptionType.new
        data = {}
        data['UserPoolId'] = stub[:user_pool_id] unless stub[:user_pool_id].nil?
        data['AWSAccountId'] = stub[:aws_account_id] unless stub[:aws_account_id].nil?
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['S3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['CloudFrontDistribution'] = stub[:cloud_front_distribution] unless stub[:cloud_front_distribution].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CustomDomainConfig'] = CustomDomainConfigType.stub(stub[:custom_domain_config]) unless stub[:custom_domain_config].nil?
        data
      end
    end

    # Structure Stubber for CustomDomainConfigType
    class CustomDomainConfigType
      def self.default(visited=[])
        return nil if visited.include?('CustomDomainConfigType')
        visited = visited + ['CustomDomainConfigType']
        {
          certificate_arn: 'certificate_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomDomainConfigType.new
        data = {}
        data['CertificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data
      end
    end

    # Operation Stubber for ForgetDevice
    class ForgetDevice
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ForgotPassword
    class ForgotPassword
      def self.default(visited=[])
        {
          code_delivery_details: CodeDeliveryDetailsType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CodeDeliveryDetails'] = CodeDeliveryDetailsType.stub(stub[:code_delivery_details]) unless stub[:code_delivery_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CodeDeliveryDetailsType
    class CodeDeliveryDetailsType
      def self.default(visited=[])
        return nil if visited.include?('CodeDeliveryDetailsType')
        visited = visited + ['CodeDeliveryDetailsType']
        {
          destination: 'destination',
          delivery_medium: 'delivery_medium',
          attribute_name: 'attribute_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeDeliveryDetailsType.new
        data = {}
        data['Destination'] = stub[:destination] unless stub[:destination].nil?
        data['DeliveryMedium'] = stub[:delivery_medium] unless stub[:delivery_medium].nil?
        data['AttributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data
      end
    end

    # Operation Stubber for GetCSVHeader
    class GetCSVHeader
      def self.default(visited=[])
        {
          user_pool_id: 'user_pool_id',
          csv_header: ListOfStringTypes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserPoolId'] = stub[:user_pool_id] unless stub[:user_pool_id].nil?
        data['CSVHeader'] = ListOfStringTypes.stub(stub[:csv_header]) unless stub[:csv_header].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListOfStringTypes
    class ListOfStringTypes
      def self.default(visited=[])
        return nil if visited.include?('ListOfStringTypes')
        visited = visited + ['ListOfStringTypes']
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

    # Operation Stubber for GetDevice
    class GetDevice
      def self.default(visited=[])
        {
          device: DeviceType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Device'] = DeviceType.stub(stub[:device]) unless stub[:device].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetGroup
    class GetGroup
      def self.default(visited=[])
        {
          group: GroupType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Group'] = GroupType.stub(stub[:group]) unless stub[:group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetIdentityProviderByIdentifier
    class GetIdentityProviderByIdentifier
      def self.default(visited=[])
        {
          identity_provider: IdentityProviderType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityProvider'] = IdentityProviderType.stub(stub[:identity_provider]) unless stub[:identity_provider].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSigningCertificate
    class GetSigningCertificate
      def self.default(visited=[])
        {
          certificate: 'certificate',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Certificate'] = stub[:certificate] unless stub[:certificate].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetUICustomization
    class GetUICustomization
      def self.default(visited=[])
        {
          ui_customization: UICustomizationType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UICustomization'] = UICustomizationType.stub(stub[:ui_customization]) unless stub[:ui_customization].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for UICustomizationType
    class UICustomizationType
      def self.default(visited=[])
        return nil if visited.include?('UICustomizationType')
        visited = visited + ['UICustomizationType']
        {
          user_pool_id: 'user_pool_id',
          client_id: 'client_id',
          image_url: 'image_url',
          css: 'css',
          css_version: 'css_version',
          last_modified_date: Time.now,
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::UICustomizationType.new
        data = {}
        data['UserPoolId'] = stub[:user_pool_id] unless stub[:user_pool_id].nil?
        data['ClientId'] = stub[:client_id] unless stub[:client_id].nil?
        data['ImageUrl'] = stub[:image_url] unless stub[:image_url].nil?
        data['CSS'] = stub[:css] unless stub[:css].nil?
        data['CSSVersion'] = stub[:css_version] unless stub[:css_version].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # Operation Stubber for GetUser
    class GetUser
      def self.default(visited=[])
        {
          username: 'username',
          user_attributes: AttributeListType.default(visited),
          mfa_options: MFAOptionListType.default(visited),
          preferred_mfa_setting: 'preferred_mfa_setting',
          user_mfa_setting_list: UserMFASettingListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['UserAttributes'] = AttributeListType.stub(stub[:user_attributes]) unless stub[:user_attributes].nil?
        data['MFAOptions'] = MFAOptionListType.stub(stub[:mfa_options]) unless stub[:mfa_options].nil?
        data['PreferredMfaSetting'] = stub[:preferred_mfa_setting] unless stub[:preferred_mfa_setting].nil?
        data['UserMFASettingList'] = UserMFASettingListType.stub(stub[:user_mfa_setting_list]) unless stub[:user_mfa_setting_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetUserAttributeVerificationCode
    class GetUserAttributeVerificationCode
      def self.default(visited=[])
        {
          code_delivery_details: CodeDeliveryDetailsType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CodeDeliveryDetails'] = CodeDeliveryDetailsType.stub(stub[:code_delivery_details]) unless stub[:code_delivery_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetUserPoolMfaConfig
    class GetUserPoolMfaConfig
      def self.default(visited=[])
        {
          sms_mfa_configuration: SmsMfaConfigType.default(visited),
          software_token_mfa_configuration: SoftwareTokenMfaConfigType.default(visited),
          mfa_configuration: 'mfa_configuration',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SmsMfaConfiguration'] = SmsMfaConfigType.stub(stub[:sms_mfa_configuration]) unless stub[:sms_mfa_configuration].nil?
        data['SoftwareTokenMfaConfiguration'] = SoftwareTokenMfaConfigType.stub(stub[:software_token_mfa_configuration]) unless stub[:software_token_mfa_configuration].nil?
        data['MfaConfiguration'] = stub[:mfa_configuration] unless stub[:mfa_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SoftwareTokenMfaConfigType
    class SoftwareTokenMfaConfigType
      def self.default(visited=[])
        return nil if visited.include?('SoftwareTokenMfaConfigType')
        visited = visited + ['SoftwareTokenMfaConfigType']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SoftwareTokenMfaConfigType.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for SmsMfaConfigType
    class SmsMfaConfigType
      def self.default(visited=[])
        return nil if visited.include?('SmsMfaConfigType')
        visited = visited + ['SmsMfaConfigType']
        {
          sms_authentication_message: 'sms_authentication_message',
          sms_configuration: SmsConfigurationType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SmsMfaConfigType.new
        data = {}
        data['SmsAuthenticationMessage'] = stub[:sms_authentication_message] unless stub[:sms_authentication_message].nil?
        data['SmsConfiguration'] = SmsConfigurationType.stub(stub[:sms_configuration]) unless stub[:sms_configuration].nil?
        data
      end
    end

    # Operation Stubber for GlobalSignOut
    class GlobalSignOut
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for InitiateAuth
    class InitiateAuth
      def self.default(visited=[])
        {
          challenge_name: 'challenge_name',
          session: 'session',
          challenge_parameters: ChallengeParametersType.default(visited),
          authentication_result: AuthenticationResultType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChallengeName'] = stub[:challenge_name] unless stub[:challenge_name].nil?
        data['Session'] = stub[:session] unless stub[:session].nil?
        data['ChallengeParameters'] = ChallengeParametersType.stub(stub[:challenge_parameters]) unless stub[:challenge_parameters].nil?
        data['AuthenticationResult'] = AuthenticationResultType.stub(stub[:authentication_result]) unless stub[:authentication_result].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListDevices
    class ListDevices
      def self.default(visited=[])
        {
          devices: DeviceListType.default(visited),
          pagination_token: 'pagination_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Devices'] = DeviceListType.stub(stub[:devices]) unless stub[:devices].nil?
        data['PaginationToken'] = stub[:pagination_token] unless stub[:pagination_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListGroups
    class ListGroups
      def self.default(visited=[])
        {
          groups: GroupListType.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Groups'] = GroupListType.stub(stub[:groups]) unless stub[:groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListIdentityProviders
    class ListIdentityProviders
      def self.default(visited=[])
        {
          providers: ProvidersListType.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Providers'] = ProvidersListType.stub(stub[:providers]) unless stub[:providers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProvidersListType
    class ProvidersListType
      def self.default(visited=[])
        return nil if visited.include?('ProvidersListType')
        visited = visited + ['ProvidersListType']
        [
          ProviderDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProviderDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProviderDescription
    class ProviderDescription
      def self.default(visited=[])
        return nil if visited.include?('ProviderDescription')
        visited = visited + ['ProviderDescription']
        {
          provider_name: 'provider_name',
          provider_type: 'provider_type',
          last_modified_date: Time.now,
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProviderDescription.new
        data = {}
        data['ProviderName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['ProviderType'] = stub[:provider_type] unless stub[:provider_type].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # Operation Stubber for ListResourceServers
    class ListResourceServers
      def self.default(visited=[])
        {
          resource_servers: ResourceServersListType.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceServers'] = ResourceServersListType.stub(stub[:resource_servers]) unless stub[:resource_servers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceServersListType
    class ResourceServersListType
      def self.default(visited=[])
        return nil if visited.include?('ResourceServersListType')
        visited = visited + ['ResourceServersListType']
        [
          ResourceServerType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResourceServerType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: UserPoolTagsType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = UserPoolTagsType.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListUserImportJobs
    class ListUserImportJobs
      def self.default(visited=[])
        {
          user_import_jobs: UserImportJobsListType.default(visited),
          pagination_token: 'pagination_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserImportJobs'] = UserImportJobsListType.stub(stub[:user_import_jobs]) unless stub[:user_import_jobs].nil?
        data['PaginationToken'] = stub[:pagination_token] unless stub[:pagination_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UserImportJobsListType
    class UserImportJobsListType
      def self.default(visited=[])
        return nil if visited.include?('UserImportJobsListType')
        visited = visited + ['UserImportJobsListType']
        [
          UserImportJobType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UserImportJobType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListUserPoolClients
    class ListUserPoolClients
      def self.default(visited=[])
        {
          user_pool_clients: UserPoolClientListType.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserPoolClients'] = UserPoolClientListType.stub(stub[:user_pool_clients]) unless stub[:user_pool_clients].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UserPoolClientListType
    class UserPoolClientListType
      def self.default(visited=[])
        return nil if visited.include?('UserPoolClientListType')
        visited = visited + ['UserPoolClientListType']
        [
          UserPoolClientDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UserPoolClientDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UserPoolClientDescription
    class UserPoolClientDescription
      def self.default(visited=[])
        return nil if visited.include?('UserPoolClientDescription')
        visited = visited + ['UserPoolClientDescription']
        {
          client_id: 'client_id',
          user_pool_id: 'user_pool_id',
          client_name: 'client_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserPoolClientDescription.new
        data = {}
        data['ClientId'] = stub[:client_id] unless stub[:client_id].nil?
        data['UserPoolId'] = stub[:user_pool_id] unless stub[:user_pool_id].nil?
        data['ClientName'] = stub[:client_name] unless stub[:client_name].nil?
        data
      end
    end

    # Operation Stubber for ListUserPools
    class ListUserPools
      def self.default(visited=[])
        {
          user_pools: UserPoolListType.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserPools'] = UserPoolListType.stub(stub[:user_pools]) unless stub[:user_pools].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UserPoolListType
    class UserPoolListType
      def self.default(visited=[])
        return nil if visited.include?('UserPoolListType')
        visited = visited + ['UserPoolListType']
        [
          UserPoolDescriptionType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UserPoolDescriptionType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UserPoolDescriptionType
    class UserPoolDescriptionType
      def self.default(visited=[])
        return nil if visited.include?('UserPoolDescriptionType')
        visited = visited + ['UserPoolDescriptionType']
        {
          id: 'id',
          name: 'name',
          lambda_config: LambdaConfigType.default(visited),
          status: 'status',
          last_modified_date: Time.now,
          creation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::UserPoolDescriptionType.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['LambdaConfig'] = LambdaConfigType.stub(stub[:lambda_config]) unless stub[:lambda_config].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data
      end
    end

    # Operation Stubber for ListUsers
    class ListUsers
      def self.default(visited=[])
        {
          users: UsersListType.default(visited),
          pagination_token: 'pagination_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Users'] = UsersListType.stub(stub[:users]) unless stub[:users].nil?
        data['PaginationToken'] = stub[:pagination_token] unless stub[:pagination_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UsersListType
    class UsersListType
      def self.default(visited=[])
        return nil if visited.include?('UsersListType')
        visited = visited + ['UsersListType']
        [
          UserType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UserType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListUsersInGroup
    class ListUsersInGroup
      def self.default(visited=[])
        {
          users: UsersListType.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Users'] = UsersListType.stub(stub[:users]) unless stub[:users].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResendConfirmationCode
    class ResendConfirmationCode
      def self.default(visited=[])
        {
          code_delivery_details: CodeDeliveryDetailsType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CodeDeliveryDetails'] = CodeDeliveryDetailsType.stub(stub[:code_delivery_details]) unless stub[:code_delivery_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RespondToAuthChallenge
    class RespondToAuthChallenge
      def self.default(visited=[])
        {
          challenge_name: 'challenge_name',
          session: 'session',
          challenge_parameters: ChallengeParametersType.default(visited),
          authentication_result: AuthenticationResultType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ChallengeName'] = stub[:challenge_name] unless stub[:challenge_name].nil?
        data['Session'] = stub[:session] unless stub[:session].nil?
        data['ChallengeParameters'] = ChallengeParametersType.stub(stub[:challenge_parameters]) unless stub[:challenge_parameters].nil?
        data['AuthenticationResult'] = AuthenticationResultType.stub(stub[:authentication_result]) unless stub[:authentication_result].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RevokeToken
    class RevokeToken
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetRiskConfiguration
    class SetRiskConfiguration
      def self.default(visited=[])
        {
          risk_configuration: RiskConfigurationType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RiskConfiguration'] = RiskConfigurationType.stub(stub[:risk_configuration]) unless stub[:risk_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetUICustomization
    class SetUICustomization
      def self.default(visited=[])
        {
          ui_customization: UICustomizationType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UICustomization'] = UICustomizationType.stub(stub[:ui_customization]) unless stub[:ui_customization].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetUserMFAPreference
    class SetUserMFAPreference
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetUserPoolMfaConfig
    class SetUserPoolMfaConfig
      def self.default(visited=[])
        {
          sms_mfa_configuration: SmsMfaConfigType.default(visited),
          software_token_mfa_configuration: SoftwareTokenMfaConfigType.default(visited),
          mfa_configuration: 'mfa_configuration',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SmsMfaConfiguration'] = SmsMfaConfigType.stub(stub[:sms_mfa_configuration]) unless stub[:sms_mfa_configuration].nil?
        data['SoftwareTokenMfaConfiguration'] = SoftwareTokenMfaConfigType.stub(stub[:software_token_mfa_configuration]) unless stub[:software_token_mfa_configuration].nil?
        data['MfaConfiguration'] = stub[:mfa_configuration] unless stub[:mfa_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetUserSettings
    class SetUserSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SignUp
    class SignUp
      def self.default(visited=[])
        {
          user_confirmed: false,
          code_delivery_details: CodeDeliveryDetailsType.default(visited),
          user_sub: 'user_sub',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserConfirmed'] = stub[:user_confirmed] unless stub[:user_confirmed].nil?
        data['CodeDeliveryDetails'] = CodeDeliveryDetailsType.stub(stub[:code_delivery_details]) unless stub[:code_delivery_details].nil?
        data['UserSub'] = stub[:user_sub] unless stub[:user_sub].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartUserImportJob
    class StartUserImportJob
      def self.default(visited=[])
        {
          user_import_job: UserImportJobType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserImportJob'] = UserImportJobType.stub(stub[:user_import_job]) unless stub[:user_import_job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopUserImportJob
    class StopUserImportJob
      def self.default(visited=[])
        {
          user_import_job: UserImportJobType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserImportJob'] = UserImportJobType.stub(stub[:user_import_job]) unless stub[:user_import_job].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAuthEventFeedback
    class UpdateAuthEventFeedback
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDeviceStatus
    class UpdateDeviceStatus
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGroup
    class UpdateGroup
      def self.default(visited=[])
        {
          group: GroupType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Group'] = GroupType.stub(stub[:group]) unless stub[:group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateIdentityProvider
    class UpdateIdentityProvider
      def self.default(visited=[])
        {
          identity_provider: IdentityProviderType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IdentityProvider'] = IdentityProviderType.stub(stub[:identity_provider]) unless stub[:identity_provider].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateResourceServer
    class UpdateResourceServer
      def self.default(visited=[])
        {
          resource_server: ResourceServerType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceServer'] = ResourceServerType.stub(stub[:resource_server]) unless stub[:resource_server].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUserAttributes
    class UpdateUserAttributes
      def self.default(visited=[])
        {
          code_delivery_details_list: CodeDeliveryDetailsListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CodeDeliveryDetailsList'] = CodeDeliveryDetailsListType.stub(stub[:code_delivery_details_list]) unless stub[:code_delivery_details_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CodeDeliveryDetailsListType
    class CodeDeliveryDetailsListType
      def self.default(visited=[])
        return nil if visited.include?('CodeDeliveryDetailsListType')
        visited = visited + ['CodeDeliveryDetailsListType']
        [
          CodeDeliveryDetailsType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CodeDeliveryDetailsType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for UpdateUserPool
    class UpdateUserPool
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUserPoolClient
    class UpdateUserPoolClient
      def self.default(visited=[])
        {
          user_pool_client: UserPoolClientType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserPoolClient'] = UserPoolClientType.stub(stub[:user_pool_client]) unless stub[:user_pool_client].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUserPoolDomain
    class UpdateUserPoolDomain
      def self.default(visited=[])
        {
          cloud_front_domain: 'cloud_front_domain',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CloudFrontDomain'] = stub[:cloud_front_domain] unless stub[:cloud_front_domain].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for VerifySoftwareToken
    class VerifySoftwareToken
      def self.default(visited=[])
        {
          status: 'status',
          session: 'session',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Session'] = stub[:session] unless stub[:session].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for VerifyUserAttribute
    class VerifyUserAttribute
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
