# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CognitoIdentityProvider
  module Parsers

    # Operation Parser for AddCustomAttributes
    class AddCustomAttributes
      def self.parse(http_resp)
        data = Types::AddCustomAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UserImportInProgressException
    class UserImportInProgressException
      def self.parse(http_resp)
        data = Types::UserImportInProgressException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InternalErrorException
    class InternalErrorException
      def self.parse(http_resp)
        data = Types::InternalErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NotAuthorizedException
    class NotAuthorizedException
      def self.parse(http_resp)
        data = Types::NotAuthorizedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AdminAddUserToGroup
    class AdminAddUserToGroup
      def self.parse(http_resp)
        data = Types::AdminAddUserToGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for UserNotFoundException
    class UserNotFoundException
      def self.parse(http_resp)
        data = Types::UserNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AdminConfirmSignUp
    class AdminConfirmSignUp
      def self.parse(http_resp)
        data = Types::AdminConfirmSignUpOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for UnexpectedLambdaException
    class UnexpectedLambdaException
      def self.parse(http_resp)
        data = Types::UnexpectedLambdaException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TooManyFailedAttemptsException
    class TooManyFailedAttemptsException
      def self.parse(http_resp)
        data = Types::TooManyFailedAttemptsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UserLambdaValidationException
    class UserLambdaValidationException
      def self.parse(http_resp)
        data = Types::UserLambdaValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidLambdaResponseException
    class InvalidLambdaResponseException
      def self.parse(http_resp)
        data = Types::InvalidLambdaResponseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AdminCreateUser
    class AdminCreateUser
      def self.parse(http_resp)
        data = Types::AdminCreateUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user = (Parsers::UserType.parse(map['User']) unless map['User'].nil?)
        data
      end
    end

    class UserType
      def self.parse(map)
        data = Types::UserType.new
        data.username = map['Username']
        data.attributes = (Parsers::AttributeListType.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.user_create_date = Time.at(map['UserCreateDate'].to_i) if map['UserCreateDate']
        data.user_last_modified_date = Time.at(map['UserLastModifiedDate'].to_i) if map['UserLastModifiedDate']
        data.enabled = map['Enabled']
        data.user_status = map['UserStatus']
        data.mfa_options = (Parsers::MFAOptionListType.parse(map['MFAOptions']) unless map['MFAOptions'].nil?)
        return data
      end
    end

    class MFAOptionListType
      def self.parse(list)
        list.map do |value|
          Parsers::MFAOptionType.parse(value) unless value.nil?
        end
      end
    end

    class MFAOptionType
      def self.parse(map)
        data = Types::MFAOptionType.new
        data.delivery_medium = map['DeliveryMedium']
        data.attribute_name = map['AttributeName']
        return data
      end
    end

    class AttributeListType
      def self.parse(list)
        list.map do |value|
          Parsers::AttributeType.parse(value) unless value.nil?
        end
      end
    end

    class AttributeType
      def self.parse(map)
        data = Types::AttributeType.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    # Error Parser for CodeDeliveryFailureException
    class CodeDeliveryFailureException
      def self.parse(http_resp)
        data = Types::CodeDeliveryFailureException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidSmsRoleTrustRelationshipException
    class InvalidSmsRoleTrustRelationshipException
      def self.parse(http_resp)
        data = Types::InvalidSmsRoleTrustRelationshipException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidSmsRoleAccessPolicyException
    class InvalidSmsRoleAccessPolicyException
      def self.parse(http_resp)
        data = Types::InvalidSmsRoleAccessPolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for PreconditionNotMetException
    class PreconditionNotMetException
      def self.parse(http_resp)
        data = Types::PreconditionNotMetException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidPasswordException
    class InvalidPasswordException
      def self.parse(http_resp)
        data = Types::InvalidPasswordException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UsernameExistsException
    class UsernameExistsException
      def self.parse(http_resp)
        data = Types::UsernameExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UnsupportedUserStateException
    class UnsupportedUserStateException
      def self.parse(http_resp)
        data = Types::UnsupportedUserStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AdminDeleteUser
    class AdminDeleteUser
      def self.parse(http_resp)
        data = Types::AdminDeleteUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AdminDeleteUserAttributes
    class AdminDeleteUserAttributes
      def self.parse(http_resp)
        data = Types::AdminDeleteUserAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AdminDisableProviderForUser
    class AdminDisableProviderForUser
      def self.parse(http_resp)
        data = Types::AdminDisableProviderForUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for AliasExistsException
    class AliasExistsException
      def self.parse(http_resp)
        data = Types::AliasExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AdminDisableUser
    class AdminDisableUser
      def self.parse(http_resp)
        data = Types::AdminDisableUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AdminEnableUser
    class AdminEnableUser
      def self.parse(http_resp)
        data = Types::AdminEnableUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AdminForgetDevice
    class AdminForgetDevice
      def self.parse(http_resp)
        data = Types::AdminForgetDeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidUserPoolConfigurationException
    class InvalidUserPoolConfigurationException
      def self.parse(http_resp)
        data = Types::InvalidUserPoolConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AdminGetDevice
    class AdminGetDevice
      def self.parse(http_resp)
        data = Types::AdminGetDeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device = (Parsers::DeviceType.parse(map['Device']) unless map['Device'].nil?)
        data
      end
    end

    class DeviceType
      def self.parse(map)
        data = Types::DeviceType.new
        data.device_key = map['DeviceKey']
        data.device_attributes = (Parsers::AttributeListType.parse(map['DeviceAttributes']) unless map['DeviceAttributes'].nil?)
        data.device_create_date = Time.at(map['DeviceCreateDate'].to_i) if map['DeviceCreateDate']
        data.device_last_modified_date = Time.at(map['DeviceLastModifiedDate'].to_i) if map['DeviceLastModifiedDate']
        data.device_last_authenticated_date = Time.at(map['DeviceLastAuthenticatedDate'].to_i) if map['DeviceLastAuthenticatedDate']
        return data
      end
    end

    # Operation Parser for AdminGetUser
    class AdminGetUser
      def self.parse(http_resp)
        data = Types::AdminGetUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.username = map['Username']
        data.user_attributes = (Parsers::AttributeListType.parse(map['UserAttributes']) unless map['UserAttributes'].nil?)
        data.user_create_date = Time.at(map['UserCreateDate'].to_i) if map['UserCreateDate']
        data.user_last_modified_date = Time.at(map['UserLastModifiedDate'].to_i) if map['UserLastModifiedDate']
        data.enabled = map['Enabled']
        data.user_status = map['UserStatus']
        data.mfa_options = (Parsers::MFAOptionListType.parse(map['MFAOptions']) unless map['MFAOptions'].nil?)
        data.preferred_mfa_setting = map['PreferredMfaSetting']
        data.user_mfa_setting_list = (Parsers::UserMFASettingListType.parse(map['UserMFASettingList']) unless map['UserMFASettingList'].nil?)
        data
      end
    end

    class UserMFASettingListType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for AdminInitiateAuth
    class AdminInitiateAuth
      def self.parse(http_resp)
        data = Types::AdminInitiateAuthOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.challenge_name = map['ChallengeName']
        data.session = map['Session']
        data.challenge_parameters = (Parsers::ChallengeParametersType.parse(map['ChallengeParameters']) unless map['ChallengeParameters'].nil?)
        data.authentication_result = (Parsers::AuthenticationResultType.parse(map['AuthenticationResult']) unless map['AuthenticationResult'].nil?)
        data
      end
    end

    class AuthenticationResultType
      def self.parse(map)
        data = Types::AuthenticationResultType.new
        data.access_token = map['AccessToken']
        data.expires_in = map['ExpiresIn']
        data.token_type = map['TokenType']
        data.refresh_token = map['RefreshToken']
        data.id_token = map['IdToken']
        data.new_device_metadata = (Parsers::NewDeviceMetadataType.parse(map['NewDeviceMetadata']) unless map['NewDeviceMetadata'].nil?)
        return data
      end
    end

    class NewDeviceMetadataType
      def self.parse(map)
        data = Types::NewDeviceMetadataType.new
        data.device_key = map['DeviceKey']
        data.device_group_key = map['DeviceGroupKey']
        return data
      end
    end

    class ChallengeParametersType
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for UserNotConfirmedException
    class UserNotConfirmedException
      def self.parse(http_resp)
        data = Types::UserNotConfirmedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MFAMethodNotFoundException
    class MFAMethodNotFoundException
      def self.parse(http_resp)
        data = Types::MFAMethodNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for PasswordResetRequiredException
    class PasswordResetRequiredException
      def self.parse(http_resp)
        data = Types::PasswordResetRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AdminLinkProviderForUser
    class AdminLinkProviderForUser
      def self.parse(http_resp)
        data = Types::AdminLinkProviderForUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AdminListDevices
    class AdminListDevices
      def self.parse(http_resp)
        data = Types::AdminListDevicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.devices = (Parsers::DeviceListType.parse(map['Devices']) unless map['Devices'].nil?)
        data.pagination_token = map['PaginationToken']
        data
      end
    end

    class DeviceListType
      def self.parse(list)
        list.map do |value|
          Parsers::DeviceType.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for AdminListGroupsForUser
    class AdminListGroupsForUser
      def self.parse(http_resp)
        data = Types::AdminListGroupsForUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.groups = (Parsers::GroupListType.parse(map['Groups']) unless map['Groups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GroupListType
      def self.parse(list)
        list.map do |value|
          Parsers::GroupType.parse(value) unless value.nil?
        end
      end
    end

    class GroupType
      def self.parse(map)
        data = Types::GroupType.new
        data.group_name = map['GroupName']
        data.user_pool_id = map['UserPoolId']
        data.description = map['Description']
        data.role_arn = map['RoleArn']
        data.precedence = map['Precedence']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        return data
      end
    end

    # Operation Parser for AdminListUserAuthEvents
    class AdminListUserAuthEvents
      def self.parse(http_resp)
        data = Types::AdminListUserAuthEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.auth_events = (Parsers::AuthEventsType.parse(map['AuthEvents']) unless map['AuthEvents'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AuthEventsType
      def self.parse(list)
        list.map do |value|
          Parsers::AuthEventType.parse(value) unless value.nil?
        end
      end
    end

    class AuthEventType
      def self.parse(map)
        data = Types::AuthEventType.new
        data.event_id = map['EventId']
        data.event_type = map['EventType']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.event_response = map['EventResponse']
        data.event_risk = (Parsers::EventRiskType.parse(map['EventRisk']) unless map['EventRisk'].nil?)
        data.challenge_responses = (Parsers::ChallengeResponseListType.parse(map['ChallengeResponses']) unless map['ChallengeResponses'].nil?)
        data.event_context_data = (Parsers::EventContextDataType.parse(map['EventContextData']) unless map['EventContextData'].nil?)
        data.event_feedback = (Parsers::EventFeedbackType.parse(map['EventFeedback']) unless map['EventFeedback'].nil?)
        return data
      end
    end

    class EventFeedbackType
      def self.parse(map)
        data = Types::EventFeedbackType.new
        data.feedback_value = map['FeedbackValue']
        data.provider = map['Provider']
        data.feedback_date = Time.at(map['FeedbackDate'].to_i) if map['FeedbackDate']
        return data
      end
    end

    class EventContextDataType
      def self.parse(map)
        data = Types::EventContextDataType.new
        data.ip_address = map['IpAddress']
        data.device_name = map['DeviceName']
        data.timezone = map['Timezone']
        data.city = map['City']
        data.country = map['Country']
        return data
      end
    end

    class ChallengeResponseListType
      def self.parse(list)
        list.map do |value|
          Parsers::ChallengeResponseType.parse(value) unless value.nil?
        end
      end
    end

    class ChallengeResponseType
      def self.parse(map)
        data = Types::ChallengeResponseType.new
        data.challenge_name = map['ChallengeName']
        data.challenge_response = map['ChallengeResponse']
        return data
      end
    end

    class EventRiskType
      def self.parse(map)
        data = Types::EventRiskType.new
        data.risk_decision = map['RiskDecision']
        data.risk_level = map['RiskLevel']
        data.compromised_credentials_detected = map['CompromisedCredentialsDetected']
        return data
      end
    end

    # Error Parser for UserPoolAddOnNotEnabledException
    class UserPoolAddOnNotEnabledException
      def self.parse(http_resp)
        data = Types::UserPoolAddOnNotEnabledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AdminRemoveUserFromGroup
    class AdminRemoveUserFromGroup
      def self.parse(http_resp)
        data = Types::AdminRemoveUserFromGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AdminResetUserPassword
    class AdminResetUserPassword
      def self.parse(http_resp)
        data = Types::AdminResetUserPasswordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidEmailRoleAccessPolicyException
    class InvalidEmailRoleAccessPolicyException
      def self.parse(http_resp)
        data = Types::InvalidEmailRoleAccessPolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AdminRespondToAuthChallenge
    class AdminRespondToAuthChallenge
      def self.parse(http_resp)
        data = Types::AdminRespondToAuthChallengeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.challenge_name = map['ChallengeName']
        data.session = map['Session']
        data.challenge_parameters = (Parsers::ChallengeParametersType.parse(map['ChallengeParameters']) unless map['ChallengeParameters'].nil?)
        data.authentication_result = (Parsers::AuthenticationResultType.parse(map['AuthenticationResult']) unless map['AuthenticationResult'].nil?)
        data
      end
    end

    # Error Parser for ExpiredCodeException
    class ExpiredCodeException
      def self.parse(http_resp)
        data = Types::ExpiredCodeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CodeMismatchException
    class CodeMismatchException
      def self.parse(http_resp)
        data = Types::CodeMismatchException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SoftwareTokenMFANotFoundException
    class SoftwareTokenMFANotFoundException
      def self.parse(http_resp)
        data = Types::SoftwareTokenMFANotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AdminSetUserMFAPreference
    class AdminSetUserMFAPreference
      def self.parse(http_resp)
        data = Types::AdminSetUserMFAPreferenceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AdminSetUserPassword
    class AdminSetUserPassword
      def self.parse(http_resp)
        data = Types::AdminSetUserPasswordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AdminSetUserSettings
    class AdminSetUserSettings
      def self.parse(http_resp)
        data = Types::AdminSetUserSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AdminUpdateAuthEventFeedback
    class AdminUpdateAuthEventFeedback
      def self.parse(http_resp)
        data = Types::AdminUpdateAuthEventFeedbackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AdminUpdateDeviceStatus
    class AdminUpdateDeviceStatus
      def self.parse(http_resp)
        data = Types::AdminUpdateDeviceStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AdminUpdateUserAttributes
    class AdminUpdateUserAttributes
      def self.parse(http_resp)
        data = Types::AdminUpdateUserAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AdminUserGlobalSignOut
    class AdminUserGlobalSignOut
      def self.parse(http_resp)
        data = Types::AdminUserGlobalSignOutOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AssociateSoftwareToken
    class AssociateSoftwareToken
      def self.parse(http_resp)
        data = Types::AssociateSoftwareTokenOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.secret_code = map['SecretCode']
        data.session = map['Session']
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ChangePassword
    class ChangePassword
      def self.parse(http_resp)
        data = Types::ChangePasswordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ConfirmDevice
    class ConfirmDevice
      def self.parse(http_resp)
        data = Types::ConfirmDeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_confirmation_necessary = map['UserConfirmationNecessary']
        data
      end
    end

    # Operation Parser for ConfirmForgotPassword
    class ConfirmForgotPassword
      def self.parse(http_resp)
        data = Types::ConfirmForgotPasswordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ConfirmSignUp
    class ConfirmSignUp
      def self.parse(http_resp)
        data = Types::ConfirmSignUpOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateGroup
    class CreateGroup
      def self.parse(http_resp)
        data = Types::CreateGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.group = (Parsers::GroupType.parse(map['Group']) unless map['Group'].nil?)
        data
      end
    end

    # Error Parser for GroupExistsException
    class GroupExistsException
      def self.parse(http_resp)
        data = Types::GroupExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateIdentityProvider
    class CreateIdentityProvider
      def self.parse(http_resp)
        data = Types::CreateIdentityProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_provider = (Parsers::IdentityProviderType.parse(map['IdentityProvider']) unless map['IdentityProvider'].nil?)
        data
      end
    end

    class IdentityProviderType
      def self.parse(map)
        data = Types::IdentityProviderType.new
        data.user_pool_id = map['UserPoolId']
        data.provider_name = map['ProviderName']
        data.provider_type = map['ProviderType']
        data.provider_details = (Parsers::ProviderDetailsType.parse(map['ProviderDetails']) unless map['ProviderDetails'].nil?)
        data.attribute_mapping = (Parsers::AttributeMappingType.parse(map['AttributeMapping']) unless map['AttributeMapping'].nil?)
        data.idp_identifiers = (Parsers::IdpIdentifiersListType.parse(map['IdpIdentifiers']) unless map['IdpIdentifiers'].nil?)
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        return data
      end
    end

    class IdpIdentifiersListType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AttributeMappingType
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ProviderDetailsType
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for DuplicateProviderException
    class DuplicateProviderException
      def self.parse(http_resp)
        data = Types::DuplicateProviderException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateResourceServer
    class CreateResourceServer
      def self.parse(http_resp)
        data = Types::CreateResourceServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_server = (Parsers::ResourceServerType.parse(map['ResourceServer']) unless map['ResourceServer'].nil?)
        data
      end
    end

    class ResourceServerType
      def self.parse(map)
        data = Types::ResourceServerType.new
        data.user_pool_id = map['UserPoolId']
        data.identifier = map['Identifier']
        data.name = map['Name']
        data.scopes = (Parsers::ResourceServerScopeListType.parse(map['Scopes']) unless map['Scopes'].nil?)
        return data
      end
    end

    class ResourceServerScopeListType
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceServerScopeType.parse(value) unless value.nil?
        end
      end
    end

    class ResourceServerScopeType
      def self.parse(map)
        data = Types::ResourceServerScopeType.new
        data.scope_name = map['ScopeName']
        data.scope_description = map['ScopeDescription']
        return data
      end
    end

    # Operation Parser for CreateUserImportJob
    class CreateUserImportJob
      def self.parse(http_resp)
        data = Types::CreateUserImportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_import_job = (Parsers::UserImportJobType.parse(map['UserImportJob']) unless map['UserImportJob'].nil?)
        data
      end
    end

    class UserImportJobType
      def self.parse(map)
        data = Types::UserImportJobType.new
        data.job_name = map['JobName']
        data.job_id = map['JobId']
        data.user_pool_id = map['UserPoolId']
        data.pre_signed_url = map['PreSignedUrl']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.start_date = Time.at(map['StartDate'].to_i) if map['StartDate']
        data.completion_date = Time.at(map['CompletionDate'].to_i) if map['CompletionDate']
        data.status = map['Status']
        data.cloud_watch_logs_role_arn = map['CloudWatchLogsRoleArn']
        data.imported_users = map['ImportedUsers']
        data.skipped_users = map['SkippedUsers']
        data.failed_users = map['FailedUsers']
        data.completion_message = map['CompletionMessage']
        return data
      end
    end

    # Operation Parser for CreateUserPool
    class CreateUserPool
      def self.parse(http_resp)
        data = Types::CreateUserPoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_pool = (Parsers::UserPoolType.parse(map['UserPool']) unless map['UserPool'].nil?)
        data
      end
    end

    class UserPoolType
      def self.parse(map)
        data = Types::UserPoolType.new
        data.id = map['Id']
        data.name = map['Name']
        data.policies = (Parsers::UserPoolPolicyType.parse(map['Policies']) unless map['Policies'].nil?)
        data.lambda_config = (Parsers::LambdaConfigType.parse(map['LambdaConfig']) unless map['LambdaConfig'].nil?)
        data.status = map['Status']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.schema_attributes = (Parsers::SchemaAttributesListType.parse(map['SchemaAttributes']) unless map['SchemaAttributes'].nil?)
        data.auto_verified_attributes = (Parsers::VerifiedAttributesListType.parse(map['AutoVerifiedAttributes']) unless map['AutoVerifiedAttributes'].nil?)
        data.alias_attributes = (Parsers::AliasAttributesListType.parse(map['AliasAttributes']) unless map['AliasAttributes'].nil?)
        data.username_attributes = (Parsers::UsernameAttributesListType.parse(map['UsernameAttributes']) unless map['UsernameAttributes'].nil?)
        data.sms_verification_message = map['SmsVerificationMessage']
        data.email_verification_message = map['EmailVerificationMessage']
        data.email_verification_subject = map['EmailVerificationSubject']
        data.verification_message_template = (Parsers::VerificationMessageTemplateType.parse(map['VerificationMessageTemplate']) unless map['VerificationMessageTemplate'].nil?)
        data.sms_authentication_message = map['SmsAuthenticationMessage']
        data.user_attribute_update_settings = (Parsers::UserAttributeUpdateSettingsType.parse(map['UserAttributeUpdateSettings']) unless map['UserAttributeUpdateSettings'].nil?)
        data.mfa_configuration = map['MfaConfiguration']
        data.device_configuration = (Parsers::DeviceConfigurationType.parse(map['DeviceConfiguration']) unless map['DeviceConfiguration'].nil?)
        data.estimated_number_of_users = map['EstimatedNumberOfUsers']
        data.email_configuration = (Parsers::EmailConfigurationType.parse(map['EmailConfiguration']) unless map['EmailConfiguration'].nil?)
        data.sms_configuration = (Parsers::SmsConfigurationType.parse(map['SmsConfiguration']) unless map['SmsConfiguration'].nil?)
        data.user_pool_tags = (Parsers::UserPoolTagsType.parse(map['UserPoolTags']) unless map['UserPoolTags'].nil?)
        data.sms_configuration_failure = map['SmsConfigurationFailure']
        data.email_configuration_failure = map['EmailConfigurationFailure']
        data.domain = map['Domain']
        data.custom_domain = map['CustomDomain']
        data.admin_create_user_config = (Parsers::AdminCreateUserConfigType.parse(map['AdminCreateUserConfig']) unless map['AdminCreateUserConfig'].nil?)
        data.user_pool_add_ons = (Parsers::UserPoolAddOnsType.parse(map['UserPoolAddOns']) unless map['UserPoolAddOns'].nil?)
        data.username_configuration = (Parsers::UsernameConfigurationType.parse(map['UsernameConfiguration']) unless map['UsernameConfiguration'].nil?)
        data.arn = map['Arn']
        data.account_recovery_setting = (Parsers::AccountRecoverySettingType.parse(map['AccountRecoverySetting']) unless map['AccountRecoverySetting'].nil?)
        return data
      end
    end

    class AccountRecoverySettingType
      def self.parse(map)
        data = Types::AccountRecoverySettingType.new
        data.recovery_mechanisms = (Parsers::RecoveryMechanismsType.parse(map['RecoveryMechanisms']) unless map['RecoveryMechanisms'].nil?)
        return data
      end
    end

    class RecoveryMechanismsType
      def self.parse(list)
        list.map do |value|
          Parsers::RecoveryOptionType.parse(value) unless value.nil?
        end
      end
    end

    class RecoveryOptionType
      def self.parse(map)
        data = Types::RecoveryOptionType.new
        data.priority = map['Priority']
        data.name = map['Name']
        return data
      end
    end

    class UsernameConfigurationType
      def self.parse(map)
        data = Types::UsernameConfigurationType.new
        data.case_sensitive = map['CaseSensitive']
        return data
      end
    end

    class UserPoolAddOnsType
      def self.parse(map)
        data = Types::UserPoolAddOnsType.new
        data.advanced_security_mode = map['AdvancedSecurityMode']
        return data
      end
    end

    class AdminCreateUserConfigType
      def self.parse(map)
        data = Types::AdminCreateUserConfigType.new
        data.allow_admin_create_user_only = map['AllowAdminCreateUserOnly']
        data.unused_account_validity_days = map['UnusedAccountValidityDays']
        data.invite_message_template = (Parsers::MessageTemplateType.parse(map['InviteMessageTemplate']) unless map['InviteMessageTemplate'].nil?)
        return data
      end
    end

    class MessageTemplateType
      def self.parse(map)
        data = Types::MessageTemplateType.new
        data.sms_message = map['SMSMessage']
        data.email_message = map['EmailMessage']
        data.email_subject = map['EmailSubject']
        return data
      end
    end

    class UserPoolTagsType
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class SmsConfigurationType
      def self.parse(map)
        data = Types::SmsConfigurationType.new
        data.sns_caller_arn = map['SnsCallerArn']
        data.external_id = map['ExternalId']
        data.sns_region = map['SnsRegion']
        return data
      end
    end

    class EmailConfigurationType
      def self.parse(map)
        data = Types::EmailConfigurationType.new
        data.source_arn = map['SourceArn']
        data.reply_to_email_address = map['ReplyToEmailAddress']
        data.email_sending_account = map['EmailSendingAccount']
        data.from = map['From']
        data.configuration_set = map['ConfigurationSet']
        return data
      end
    end

    class DeviceConfigurationType
      def self.parse(map)
        data = Types::DeviceConfigurationType.new
        data.challenge_required_on_new_device = map['ChallengeRequiredOnNewDevice']
        data.device_only_remembered_on_user_prompt = map['DeviceOnlyRememberedOnUserPrompt']
        return data
      end
    end

    class UserAttributeUpdateSettingsType
      def self.parse(map)
        data = Types::UserAttributeUpdateSettingsType.new
        data.attributes_require_verification_before_update = (Parsers::AttributesRequireVerificationBeforeUpdateType.parse(map['AttributesRequireVerificationBeforeUpdate']) unless map['AttributesRequireVerificationBeforeUpdate'].nil?)
        return data
      end
    end

    class AttributesRequireVerificationBeforeUpdateType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class VerificationMessageTemplateType
      def self.parse(map)
        data = Types::VerificationMessageTemplateType.new
        data.sms_message = map['SmsMessage']
        data.email_message = map['EmailMessage']
        data.email_subject = map['EmailSubject']
        data.email_message_by_link = map['EmailMessageByLink']
        data.email_subject_by_link = map['EmailSubjectByLink']
        data.default_email_option = map['DefaultEmailOption']
        return data
      end
    end

    class UsernameAttributesListType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AliasAttributesListType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class VerifiedAttributesListType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SchemaAttributesListType
      def self.parse(list)
        list.map do |value|
          Parsers::SchemaAttributeType.parse(value) unless value.nil?
        end
      end
    end

    class SchemaAttributeType
      def self.parse(map)
        data = Types::SchemaAttributeType.new
        data.name = map['Name']
        data.attribute_data_type = map['AttributeDataType']
        data.developer_only_attribute = map['DeveloperOnlyAttribute']
        data.mutable = map['Mutable']
        data.required = map['Required']
        data.number_attribute_constraints = (Parsers::NumberAttributeConstraintsType.parse(map['NumberAttributeConstraints']) unless map['NumberAttributeConstraints'].nil?)
        data.string_attribute_constraints = (Parsers::StringAttributeConstraintsType.parse(map['StringAttributeConstraints']) unless map['StringAttributeConstraints'].nil?)
        return data
      end
    end

    class StringAttributeConstraintsType
      def self.parse(map)
        data = Types::StringAttributeConstraintsType.new
        data.min_length = map['MinLength']
        data.max_length = map['MaxLength']
        return data
      end
    end

    class NumberAttributeConstraintsType
      def self.parse(map)
        data = Types::NumberAttributeConstraintsType.new
        data.min_value = map['MinValue']
        data.max_value = map['MaxValue']
        return data
      end
    end

    class LambdaConfigType
      def self.parse(map)
        data = Types::LambdaConfigType.new
        data.pre_sign_up = map['PreSignUp']
        data.custom_message = map['CustomMessage']
        data.post_confirmation = map['PostConfirmation']
        data.pre_authentication = map['PreAuthentication']
        data.post_authentication = map['PostAuthentication']
        data.define_auth_challenge = map['DefineAuthChallenge']
        data.create_auth_challenge = map['CreateAuthChallenge']
        data.verify_auth_challenge_response = map['VerifyAuthChallengeResponse']
        data.pre_token_generation = map['PreTokenGeneration']
        data.user_migration = map['UserMigration']
        data.custom_sms_sender = (Parsers::CustomSMSLambdaVersionConfigType.parse(map['CustomSMSSender']) unless map['CustomSMSSender'].nil?)
        data.custom_email_sender = (Parsers::CustomEmailLambdaVersionConfigType.parse(map['CustomEmailSender']) unless map['CustomEmailSender'].nil?)
        data.kms_key_id = map['KMSKeyID']
        return data
      end
    end

    class CustomEmailLambdaVersionConfigType
      def self.parse(map)
        data = Types::CustomEmailLambdaVersionConfigType.new
        data.lambda_version = map['LambdaVersion']
        data.lambda_arn = map['LambdaArn']
        return data
      end
    end

    class CustomSMSLambdaVersionConfigType
      def self.parse(map)
        data = Types::CustomSMSLambdaVersionConfigType.new
        data.lambda_version = map['LambdaVersion']
        data.lambda_arn = map['LambdaArn']
        return data
      end
    end

    class UserPoolPolicyType
      def self.parse(map)
        data = Types::UserPoolPolicyType.new
        data.password_policy = (Parsers::PasswordPolicyType.parse(map['PasswordPolicy']) unless map['PasswordPolicy'].nil?)
        return data
      end
    end

    class PasswordPolicyType
      def self.parse(map)
        data = Types::PasswordPolicyType.new
        data.minimum_length = map['MinimumLength']
        data.require_uppercase = map['RequireUppercase']
        data.require_lowercase = map['RequireLowercase']
        data.require_numbers = map['RequireNumbers']
        data.require_symbols = map['RequireSymbols']
        data.temporary_password_validity_days = map['TemporaryPasswordValidityDays']
        return data
      end
    end

    # Error Parser for UserPoolTaggingException
    class UserPoolTaggingException
      def self.parse(http_resp)
        data = Types::UserPoolTaggingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateUserPoolClient
    class CreateUserPoolClient
      def self.parse(http_resp)
        data = Types::CreateUserPoolClientOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_pool_client = (Parsers::UserPoolClientType.parse(map['UserPoolClient']) unless map['UserPoolClient'].nil?)
        data
      end
    end

    class UserPoolClientType
      def self.parse(map)
        data = Types::UserPoolClientType.new
        data.user_pool_id = map['UserPoolId']
        data.client_name = map['ClientName']
        data.client_id = map['ClientId']
        data.client_secret = map['ClientSecret']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        data.refresh_token_validity = map['RefreshTokenValidity']
        data.access_token_validity = map['AccessTokenValidity']
        data.id_token_validity = map['IdTokenValidity']
        data.token_validity_units = (Parsers::TokenValidityUnitsType.parse(map['TokenValidityUnits']) unless map['TokenValidityUnits'].nil?)
        data.read_attributes = (Parsers::ClientPermissionListType.parse(map['ReadAttributes']) unless map['ReadAttributes'].nil?)
        data.write_attributes = (Parsers::ClientPermissionListType.parse(map['WriteAttributes']) unless map['WriteAttributes'].nil?)
        data.explicit_auth_flows = (Parsers::ExplicitAuthFlowsListType.parse(map['ExplicitAuthFlows']) unless map['ExplicitAuthFlows'].nil?)
        data.supported_identity_providers = (Parsers::SupportedIdentityProvidersListType.parse(map['SupportedIdentityProviders']) unless map['SupportedIdentityProviders'].nil?)
        data.callback_ur_ls = (Parsers::CallbackURLsListType.parse(map['CallbackURLs']) unless map['CallbackURLs'].nil?)
        data.logout_ur_ls = (Parsers::LogoutURLsListType.parse(map['LogoutURLs']) unless map['LogoutURLs'].nil?)
        data.default_redirect_uri = map['DefaultRedirectURI']
        data.allowed_o_auth_flows = (Parsers::OAuthFlowsType.parse(map['AllowedOAuthFlows']) unless map['AllowedOAuthFlows'].nil?)
        data.allowed_o_auth_scopes = (Parsers::ScopeListType.parse(map['AllowedOAuthScopes']) unless map['AllowedOAuthScopes'].nil?)
        data.allowed_o_auth_flows_user_pool_client = map['AllowedOAuthFlowsUserPoolClient']
        data.analytics_configuration = (Parsers::AnalyticsConfigurationType.parse(map['AnalyticsConfiguration']) unless map['AnalyticsConfiguration'].nil?)
        data.prevent_user_existence_errors = map['PreventUserExistenceErrors']
        data.enable_token_revocation = map['EnableTokenRevocation']
        data.enable_propagate_additional_user_context_data = map['EnablePropagateAdditionalUserContextData']
        return data
      end
    end

    class AnalyticsConfigurationType
      def self.parse(map)
        data = Types::AnalyticsConfigurationType.new
        data.application_id = map['ApplicationId']
        data.application_arn = map['ApplicationArn']
        data.role_arn = map['RoleArn']
        data.external_id = map['ExternalId']
        data.user_data_shared = map['UserDataShared']
        return data
      end
    end

    class ScopeListType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class OAuthFlowsType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class LogoutURLsListType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class CallbackURLsListType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SupportedIdentityProvidersListType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ExplicitAuthFlowsListType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ClientPermissionListType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TokenValidityUnitsType
      def self.parse(map)
        data = Types::TokenValidityUnitsType.new
        data.access_token = map['AccessToken']
        data.id_token = map['IdToken']
        data.refresh_token = map['RefreshToken']
        return data
      end
    end

    # Error Parser for ScopeDoesNotExistException
    class ScopeDoesNotExistException
      def self.parse(http_resp)
        data = Types::ScopeDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidOAuthFlowException
    class InvalidOAuthFlowException
      def self.parse(http_resp)
        data = Types::InvalidOAuthFlowException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateUserPoolDomain
    class CreateUserPoolDomain
      def self.parse(http_resp)
        data = Types::CreateUserPoolDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cloud_front_domain = map['CloudFrontDomain']
        data
      end
    end

    # Operation Parser for DeleteGroup
    class DeleteGroup
      def self.parse(http_resp)
        data = Types::DeleteGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteIdentityProvider
    class DeleteIdentityProvider
      def self.parse(http_resp)
        data = Types::DeleteIdentityProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for UnsupportedIdentityProviderException
    class UnsupportedIdentityProviderException
      def self.parse(http_resp)
        data = Types::UnsupportedIdentityProviderException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteResourceServer
    class DeleteResourceServer
      def self.parse(http_resp)
        data = Types::DeleteResourceServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteUser
    class DeleteUser
      def self.parse(http_resp)
        data = Types::DeleteUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteUserAttributes
    class DeleteUserAttributes
      def self.parse(http_resp)
        data = Types::DeleteUserAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteUserPool
    class DeleteUserPool
      def self.parse(http_resp)
        data = Types::DeleteUserPoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteUserPoolClient
    class DeleteUserPoolClient
      def self.parse(http_resp)
        data = Types::DeleteUserPoolClientOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteUserPoolDomain
    class DeleteUserPoolDomain
      def self.parse(http_resp)
        data = Types::DeleteUserPoolDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeIdentityProvider
    class DescribeIdentityProvider
      def self.parse(http_resp)
        data = Types::DescribeIdentityProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_provider = (Parsers::IdentityProviderType.parse(map['IdentityProvider']) unless map['IdentityProvider'].nil?)
        data
      end
    end

    # Operation Parser for DescribeResourceServer
    class DescribeResourceServer
      def self.parse(http_resp)
        data = Types::DescribeResourceServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_server = (Parsers::ResourceServerType.parse(map['ResourceServer']) unless map['ResourceServer'].nil?)
        data
      end
    end

    # Operation Parser for DescribeRiskConfiguration
    class DescribeRiskConfiguration
      def self.parse(http_resp)
        data = Types::DescribeRiskConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.risk_configuration = (Parsers::RiskConfigurationType.parse(map['RiskConfiguration']) unless map['RiskConfiguration'].nil?)
        data
      end
    end

    class RiskConfigurationType
      def self.parse(map)
        data = Types::RiskConfigurationType.new
        data.user_pool_id = map['UserPoolId']
        data.client_id = map['ClientId']
        data.compromised_credentials_risk_configuration = (Parsers::CompromisedCredentialsRiskConfigurationType.parse(map['CompromisedCredentialsRiskConfiguration']) unless map['CompromisedCredentialsRiskConfiguration'].nil?)
        data.account_takeover_risk_configuration = (Parsers::AccountTakeoverRiskConfigurationType.parse(map['AccountTakeoverRiskConfiguration']) unless map['AccountTakeoverRiskConfiguration'].nil?)
        data.risk_exception_configuration = (Parsers::RiskExceptionConfigurationType.parse(map['RiskExceptionConfiguration']) unless map['RiskExceptionConfiguration'].nil?)
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        return data
      end
    end

    class RiskExceptionConfigurationType
      def self.parse(map)
        data = Types::RiskExceptionConfigurationType.new
        data.blocked_ip_range_list = (Parsers::BlockedIPRangeListType.parse(map['BlockedIPRangeList']) unless map['BlockedIPRangeList'].nil?)
        data.skipped_ip_range_list = (Parsers::SkippedIPRangeListType.parse(map['SkippedIPRangeList']) unless map['SkippedIPRangeList'].nil?)
        return data
      end
    end

    class SkippedIPRangeListType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class BlockedIPRangeListType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AccountTakeoverRiskConfigurationType
      def self.parse(map)
        data = Types::AccountTakeoverRiskConfigurationType.new
        data.notify_configuration = (Parsers::NotifyConfigurationType.parse(map['NotifyConfiguration']) unless map['NotifyConfiguration'].nil?)
        data.actions = (Parsers::AccountTakeoverActionsType.parse(map['Actions']) unless map['Actions'].nil?)
        return data
      end
    end

    class AccountTakeoverActionsType
      def self.parse(map)
        data = Types::AccountTakeoverActionsType.new
        data.low_action = (Parsers::AccountTakeoverActionType.parse(map['LowAction']) unless map['LowAction'].nil?)
        data.medium_action = (Parsers::AccountTakeoverActionType.parse(map['MediumAction']) unless map['MediumAction'].nil?)
        data.high_action = (Parsers::AccountTakeoverActionType.parse(map['HighAction']) unless map['HighAction'].nil?)
        return data
      end
    end

    class AccountTakeoverActionType
      def self.parse(map)
        data = Types::AccountTakeoverActionType.new
        data.notify = map['Notify']
        data.event_action = map['EventAction']
        return data
      end
    end

    class NotifyConfigurationType
      def self.parse(map)
        data = Types::NotifyConfigurationType.new
        data.from = map['From']
        data.reply_to = map['ReplyTo']
        data.source_arn = map['SourceArn']
        data.block_email = (Parsers::NotifyEmailType.parse(map['BlockEmail']) unless map['BlockEmail'].nil?)
        data.no_action_email = (Parsers::NotifyEmailType.parse(map['NoActionEmail']) unless map['NoActionEmail'].nil?)
        data.mfa_email = (Parsers::NotifyEmailType.parse(map['MfaEmail']) unless map['MfaEmail'].nil?)
        return data
      end
    end

    class NotifyEmailType
      def self.parse(map)
        data = Types::NotifyEmailType.new
        data.subject = map['Subject']
        data.html_body = map['HtmlBody']
        data.text_body = map['TextBody']
        return data
      end
    end

    class CompromisedCredentialsRiskConfigurationType
      def self.parse(map)
        data = Types::CompromisedCredentialsRiskConfigurationType.new
        data.event_filter = (Parsers::EventFiltersType.parse(map['EventFilter']) unless map['EventFilter'].nil?)
        data.actions = (Parsers::CompromisedCredentialsActionsType.parse(map['Actions']) unless map['Actions'].nil?)
        return data
      end
    end

    class CompromisedCredentialsActionsType
      def self.parse(map)
        data = Types::CompromisedCredentialsActionsType.new
        data.event_action = map['EventAction']
        return data
      end
    end

    class EventFiltersType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeUserImportJob
    class DescribeUserImportJob
      def self.parse(http_resp)
        data = Types::DescribeUserImportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_import_job = (Parsers::UserImportJobType.parse(map['UserImportJob']) unless map['UserImportJob'].nil?)
        data
      end
    end

    # Operation Parser for DescribeUserPool
    class DescribeUserPool
      def self.parse(http_resp)
        data = Types::DescribeUserPoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_pool = (Parsers::UserPoolType.parse(map['UserPool']) unless map['UserPool'].nil?)
        data
      end
    end

    # Operation Parser for DescribeUserPoolClient
    class DescribeUserPoolClient
      def self.parse(http_resp)
        data = Types::DescribeUserPoolClientOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_pool_client = (Parsers::UserPoolClientType.parse(map['UserPoolClient']) unless map['UserPoolClient'].nil?)
        data
      end
    end

    # Operation Parser for DescribeUserPoolDomain
    class DescribeUserPoolDomain
      def self.parse(http_resp)
        data = Types::DescribeUserPoolDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.domain_description = (Parsers::DomainDescriptionType.parse(map['DomainDescription']) unless map['DomainDescription'].nil?)
        data
      end
    end

    class DomainDescriptionType
      def self.parse(map)
        data = Types::DomainDescriptionType.new
        data.user_pool_id = map['UserPoolId']
        data.aws_account_id = map['AWSAccountId']
        data.domain = map['Domain']
        data.s3_bucket = map['S3Bucket']
        data.cloud_front_distribution = map['CloudFrontDistribution']
        data.version = map['Version']
        data.status = map['Status']
        data.custom_domain_config = (Parsers::CustomDomainConfigType.parse(map['CustomDomainConfig']) unless map['CustomDomainConfig'].nil?)
        return data
      end
    end

    class CustomDomainConfigType
      def self.parse(map)
        data = Types::CustomDomainConfigType.new
        data.certificate_arn = map['CertificateArn']
        return data
      end
    end

    # Operation Parser for ForgetDevice
    class ForgetDevice
      def self.parse(http_resp)
        data = Types::ForgetDeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ForgotPassword
    class ForgotPassword
      def self.parse(http_resp)
        data = Types::ForgotPasswordOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code_delivery_details = (Parsers::CodeDeliveryDetailsType.parse(map['CodeDeliveryDetails']) unless map['CodeDeliveryDetails'].nil?)
        data
      end
    end

    class CodeDeliveryDetailsType
      def self.parse(map)
        data = Types::CodeDeliveryDetailsType.new
        data.destination = map['Destination']
        data.delivery_medium = map['DeliveryMedium']
        data.attribute_name = map['AttributeName']
        return data
      end
    end

    # Operation Parser for GetCSVHeader
    class GetCSVHeader
      def self.parse(http_resp)
        data = Types::GetCSVHeaderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_pool_id = map['UserPoolId']
        data.csv_header = (Parsers::ListOfStringTypes.parse(map['CSVHeader']) unless map['CSVHeader'].nil?)
        data
      end
    end

    class ListOfStringTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetDevice
    class GetDevice
      def self.parse(http_resp)
        data = Types::GetDeviceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.device = (Parsers::DeviceType.parse(map['Device']) unless map['Device'].nil?)
        data
      end
    end

    # Operation Parser for GetGroup
    class GetGroup
      def self.parse(http_resp)
        data = Types::GetGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.group = (Parsers::GroupType.parse(map['Group']) unless map['Group'].nil?)
        data
      end
    end

    # Operation Parser for GetIdentityProviderByIdentifier
    class GetIdentityProviderByIdentifier
      def self.parse(http_resp)
        data = Types::GetIdentityProviderByIdentifierOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_provider = (Parsers::IdentityProviderType.parse(map['IdentityProvider']) unless map['IdentityProvider'].nil?)
        data
      end
    end

    # Operation Parser for GetSigningCertificate
    class GetSigningCertificate
      def self.parse(http_resp)
        data = Types::GetSigningCertificateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.certificate = map['Certificate']
        data
      end
    end

    # Operation Parser for GetUICustomization
    class GetUICustomization
      def self.parse(http_resp)
        data = Types::GetUICustomizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ui_customization = (Parsers::UICustomizationType.parse(map['UICustomization']) unless map['UICustomization'].nil?)
        data
      end
    end

    class UICustomizationType
      def self.parse(map)
        data = Types::UICustomizationType.new
        data.user_pool_id = map['UserPoolId']
        data.client_id = map['ClientId']
        data.image_url = map['ImageUrl']
        data.css = map['CSS']
        data.css_version = map['CSSVersion']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        return data
      end
    end

    # Operation Parser for GetUser
    class GetUser
      def self.parse(http_resp)
        data = Types::GetUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.username = map['Username']
        data.user_attributes = (Parsers::AttributeListType.parse(map['UserAttributes']) unless map['UserAttributes'].nil?)
        data.mfa_options = (Parsers::MFAOptionListType.parse(map['MFAOptions']) unless map['MFAOptions'].nil?)
        data.preferred_mfa_setting = map['PreferredMfaSetting']
        data.user_mfa_setting_list = (Parsers::UserMFASettingListType.parse(map['UserMFASettingList']) unless map['UserMFASettingList'].nil?)
        data
      end
    end

    # Operation Parser for GetUserAttributeVerificationCode
    class GetUserAttributeVerificationCode
      def self.parse(http_resp)
        data = Types::GetUserAttributeVerificationCodeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code_delivery_details = (Parsers::CodeDeliveryDetailsType.parse(map['CodeDeliveryDetails']) unless map['CodeDeliveryDetails'].nil?)
        data
      end
    end

    # Operation Parser for GetUserPoolMfaConfig
    class GetUserPoolMfaConfig
      def self.parse(http_resp)
        data = Types::GetUserPoolMfaConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sms_mfa_configuration = (Parsers::SmsMfaConfigType.parse(map['SmsMfaConfiguration']) unless map['SmsMfaConfiguration'].nil?)
        data.software_token_mfa_configuration = (Parsers::SoftwareTokenMfaConfigType.parse(map['SoftwareTokenMfaConfiguration']) unless map['SoftwareTokenMfaConfiguration'].nil?)
        data.mfa_configuration = map['MfaConfiguration']
        data
      end
    end

    class SoftwareTokenMfaConfigType
      def self.parse(map)
        data = Types::SoftwareTokenMfaConfigType.new
        data.enabled = map['Enabled']
        return data
      end
    end

    class SmsMfaConfigType
      def self.parse(map)
        data = Types::SmsMfaConfigType.new
        data.sms_authentication_message = map['SmsAuthenticationMessage']
        data.sms_configuration = (Parsers::SmsConfigurationType.parse(map['SmsConfiguration']) unless map['SmsConfiguration'].nil?)
        return data
      end
    end

    # Operation Parser for GlobalSignOut
    class GlobalSignOut
      def self.parse(http_resp)
        data = Types::GlobalSignOutOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for InitiateAuth
    class InitiateAuth
      def self.parse(http_resp)
        data = Types::InitiateAuthOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.challenge_name = map['ChallengeName']
        data.session = map['Session']
        data.challenge_parameters = (Parsers::ChallengeParametersType.parse(map['ChallengeParameters']) unless map['ChallengeParameters'].nil?)
        data.authentication_result = (Parsers::AuthenticationResultType.parse(map['AuthenticationResult']) unless map['AuthenticationResult'].nil?)
        data
      end
    end

    # Operation Parser for ListDevices
    class ListDevices
      def self.parse(http_resp)
        data = Types::ListDevicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.devices = (Parsers::DeviceListType.parse(map['Devices']) unless map['Devices'].nil?)
        data.pagination_token = map['PaginationToken']
        data
      end
    end

    # Operation Parser for ListGroups
    class ListGroups
      def self.parse(http_resp)
        data = Types::ListGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.groups = (Parsers::GroupListType.parse(map['Groups']) unless map['Groups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListIdentityProviders
    class ListIdentityProviders
      def self.parse(http_resp)
        data = Types::ListIdentityProvidersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.providers = (Parsers::ProvidersListType.parse(map['Providers']) unless map['Providers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProvidersListType
      def self.parse(list)
        list.map do |value|
          Parsers::ProviderDescription.parse(value) unless value.nil?
        end
      end
    end

    class ProviderDescription
      def self.parse(map)
        data = Types::ProviderDescription.new
        data.provider_name = map['ProviderName']
        data.provider_type = map['ProviderType']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        return data
      end
    end

    # Operation Parser for ListResourceServers
    class ListResourceServers
      def self.parse(http_resp)
        data = Types::ListResourceServersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_servers = (Parsers::ResourceServersListType.parse(map['ResourceServers']) unless map['ResourceServers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ResourceServersListType
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceServerType.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::UserPoolTagsType.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for ListUserImportJobs
    class ListUserImportJobs
      def self.parse(http_resp)
        data = Types::ListUserImportJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_import_jobs = (Parsers::UserImportJobsListType.parse(map['UserImportJobs']) unless map['UserImportJobs'].nil?)
        data.pagination_token = map['PaginationToken']
        data
      end
    end

    class UserImportJobsListType
      def self.parse(list)
        list.map do |value|
          Parsers::UserImportJobType.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListUserPoolClients
    class ListUserPoolClients
      def self.parse(http_resp)
        data = Types::ListUserPoolClientsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_pool_clients = (Parsers::UserPoolClientListType.parse(map['UserPoolClients']) unless map['UserPoolClients'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class UserPoolClientListType
      def self.parse(list)
        list.map do |value|
          Parsers::UserPoolClientDescription.parse(value) unless value.nil?
        end
      end
    end

    class UserPoolClientDescription
      def self.parse(map)
        data = Types::UserPoolClientDescription.new
        data.client_id = map['ClientId']
        data.user_pool_id = map['UserPoolId']
        data.client_name = map['ClientName']
        return data
      end
    end

    # Operation Parser for ListUserPools
    class ListUserPools
      def self.parse(http_resp)
        data = Types::ListUserPoolsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_pools = (Parsers::UserPoolListType.parse(map['UserPools']) unless map['UserPools'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class UserPoolListType
      def self.parse(list)
        list.map do |value|
          Parsers::UserPoolDescriptionType.parse(value) unless value.nil?
        end
      end
    end

    class UserPoolDescriptionType
      def self.parse(map)
        data = Types::UserPoolDescriptionType.new
        data.id = map['Id']
        data.name = map['Name']
        data.lambda_config = (Parsers::LambdaConfigType.parse(map['LambdaConfig']) unless map['LambdaConfig'].nil?)
        data.status = map['Status']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.creation_date = Time.at(map['CreationDate'].to_i) if map['CreationDate']
        return data
      end
    end

    # Operation Parser for ListUsers
    class ListUsers
      def self.parse(http_resp)
        data = Types::ListUsersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.users = (Parsers::UsersListType.parse(map['Users']) unless map['Users'].nil?)
        data.pagination_token = map['PaginationToken']
        data
      end
    end

    class UsersListType
      def self.parse(list)
        list.map do |value|
          Parsers::UserType.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListUsersInGroup
    class ListUsersInGroup
      def self.parse(http_resp)
        data = Types::ListUsersInGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.users = (Parsers::UsersListType.parse(map['Users']) unless map['Users'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ResendConfirmationCode
    class ResendConfirmationCode
      def self.parse(http_resp)
        data = Types::ResendConfirmationCodeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code_delivery_details = (Parsers::CodeDeliveryDetailsType.parse(map['CodeDeliveryDetails']) unless map['CodeDeliveryDetails'].nil?)
        data
      end
    end

    # Operation Parser for RespondToAuthChallenge
    class RespondToAuthChallenge
      def self.parse(http_resp)
        data = Types::RespondToAuthChallengeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.challenge_name = map['ChallengeName']
        data.session = map['Session']
        data.challenge_parameters = (Parsers::ChallengeParametersType.parse(map['ChallengeParameters']) unless map['ChallengeParameters'].nil?)
        data.authentication_result = (Parsers::AuthenticationResultType.parse(map['AuthenticationResult']) unless map['AuthenticationResult'].nil?)
        data
      end
    end

    # Operation Parser for RevokeToken
    class RevokeToken
      def self.parse(http_resp)
        data = Types::RevokeTokenOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for UnsupportedTokenTypeException
    class UnsupportedTokenTypeException
      def self.parse(http_resp)
        data = Types::UnsupportedTokenTypeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UnsupportedOperationException
    class UnsupportedOperationException
      def self.parse(http_resp)
        data = Types::UnsupportedOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for SetRiskConfiguration
    class SetRiskConfiguration
      def self.parse(http_resp)
        data = Types::SetRiskConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.risk_configuration = (Parsers::RiskConfigurationType.parse(map['RiskConfiguration']) unless map['RiskConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for SetUICustomization
    class SetUICustomization
      def self.parse(http_resp)
        data = Types::SetUICustomizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ui_customization = (Parsers::UICustomizationType.parse(map['UICustomization']) unless map['UICustomization'].nil?)
        data
      end
    end

    # Operation Parser for SetUserMFAPreference
    class SetUserMFAPreference
      def self.parse(http_resp)
        data = Types::SetUserMFAPreferenceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SetUserPoolMfaConfig
    class SetUserPoolMfaConfig
      def self.parse(http_resp)
        data = Types::SetUserPoolMfaConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sms_mfa_configuration = (Parsers::SmsMfaConfigType.parse(map['SmsMfaConfiguration']) unless map['SmsMfaConfiguration'].nil?)
        data.software_token_mfa_configuration = (Parsers::SoftwareTokenMfaConfigType.parse(map['SoftwareTokenMfaConfiguration']) unless map['SoftwareTokenMfaConfiguration'].nil?)
        data.mfa_configuration = map['MfaConfiguration']
        data
      end
    end

    # Operation Parser for SetUserSettings
    class SetUserSettings
      def self.parse(http_resp)
        data = Types::SetUserSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SignUp
    class SignUp
      def self.parse(http_resp)
        data = Types::SignUpOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_confirmed = map['UserConfirmed']
        data.code_delivery_details = (Parsers::CodeDeliveryDetailsType.parse(map['CodeDeliveryDetails']) unless map['CodeDeliveryDetails'].nil?)
        data.user_sub = map['UserSub']
        data
      end
    end

    # Operation Parser for StartUserImportJob
    class StartUserImportJob
      def self.parse(http_resp)
        data = Types::StartUserImportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_import_job = (Parsers::UserImportJobType.parse(map['UserImportJob']) unless map['UserImportJob'].nil?)
        data
      end
    end

    # Operation Parser for StopUserImportJob
    class StopUserImportJob
      def self.parse(http_resp)
        data = Types::StopUserImportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_import_job = (Parsers::UserImportJobType.parse(map['UserImportJob']) unless map['UserImportJob'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateAuthEventFeedback
    class UpdateAuthEventFeedback
      def self.parse(http_resp)
        data = Types::UpdateAuthEventFeedbackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDeviceStatus
    class UpdateDeviceStatus
      def self.parse(http_resp)
        data = Types::UpdateDeviceStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateGroup
    class UpdateGroup
      def self.parse(http_resp)
        data = Types::UpdateGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.group = (Parsers::GroupType.parse(map['Group']) unless map['Group'].nil?)
        data
      end
    end

    # Operation Parser for UpdateIdentityProvider
    class UpdateIdentityProvider
      def self.parse(http_resp)
        data = Types::UpdateIdentityProviderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.identity_provider = (Parsers::IdentityProviderType.parse(map['IdentityProvider']) unless map['IdentityProvider'].nil?)
        data
      end
    end

    # Operation Parser for UpdateResourceServer
    class UpdateResourceServer
      def self.parse(http_resp)
        data = Types::UpdateResourceServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_server = (Parsers::ResourceServerType.parse(map['ResourceServer']) unless map['ResourceServer'].nil?)
        data
      end
    end

    # Operation Parser for UpdateUserAttributes
    class UpdateUserAttributes
      def self.parse(http_resp)
        data = Types::UpdateUserAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.code_delivery_details_list = (Parsers::CodeDeliveryDetailsListType.parse(map['CodeDeliveryDetailsList']) unless map['CodeDeliveryDetailsList'].nil?)
        data
      end
    end

    class CodeDeliveryDetailsListType
      def self.parse(list)
        list.map do |value|
          Parsers::CodeDeliveryDetailsType.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for UpdateUserPool
    class UpdateUserPool
      def self.parse(http_resp)
        data = Types::UpdateUserPoolOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateUserPoolClient
    class UpdateUserPoolClient
      def self.parse(http_resp)
        data = Types::UpdateUserPoolClientOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_pool_client = (Parsers::UserPoolClientType.parse(map['UserPoolClient']) unless map['UserPoolClient'].nil?)
        data
      end
    end

    # Operation Parser for UpdateUserPoolDomain
    class UpdateUserPoolDomain
      def self.parse(http_resp)
        data = Types::UpdateUserPoolDomainOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cloud_front_domain = map['CloudFrontDomain']
        data
      end
    end

    # Operation Parser for VerifySoftwareToken
    class VerifySoftwareToken
      def self.parse(http_resp)
        data = Types::VerifySoftwareTokenOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data.session = map['Session']
        data
      end
    end

    # Error Parser for EnableSoftwareTokenMFAException
    class EnableSoftwareTokenMFAException
      def self.parse(http_resp)
        data = Types::EnableSoftwareTokenMFAException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for VerifyUserAttribute
    class VerifyUserAttribute
      def self.parse(http_resp)
        data = Types::VerifyUserAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
