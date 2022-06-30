# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CognitoIdentityProvider
  module Builders

    # Operation Builder for AddCustomAttributes
    class AddCustomAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AddCustomAttributes'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['CustomAttributes'] = Builders::CustomAttributesListType.build(input[:custom_attributes]) unless input[:custom_attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CustomAttributesListType
    class CustomAttributesListType
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SchemaAttributeType.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SchemaAttributeType
    class SchemaAttributeType
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['AttributeDataType'] = input[:attribute_data_type] unless input[:attribute_data_type].nil?
        data['DeveloperOnlyAttribute'] = input[:developer_only_attribute] unless input[:developer_only_attribute].nil?
        data['Mutable'] = input[:mutable] unless input[:mutable].nil?
        data['Required'] = input[:required] unless input[:required].nil?
        data['NumberAttributeConstraints'] = Builders::NumberAttributeConstraintsType.build(input[:number_attribute_constraints]) unless input[:number_attribute_constraints].nil?
        data['StringAttributeConstraints'] = Builders::StringAttributeConstraintsType.build(input[:string_attribute_constraints]) unless input[:string_attribute_constraints].nil?
        data
      end
    end

    # Structure Builder for StringAttributeConstraintsType
    class StringAttributeConstraintsType
      def self.build(input)
        data = {}
        data['MinLength'] = input[:min_length] unless input[:min_length].nil?
        data['MaxLength'] = input[:max_length] unless input[:max_length].nil?
        data
      end
    end

    # Structure Builder for NumberAttributeConstraintsType
    class NumberAttributeConstraintsType
      def self.build(input)
        data = {}
        data['MinValue'] = input[:min_value] unless input[:min_value].nil?
        data['MaxValue'] = input[:max_value] unless input[:max_value].nil?
        data
      end
    end

    # Operation Builder for AdminAddUserToGroup
    class AdminAddUserToGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminAddUserToGroup'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminConfirmSignUp
    class AdminConfirmSignUp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminConfirmSignUp'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['ClientMetadata'] = Builders::ClientMetadataType.build(input[:client_metadata]) unless input[:client_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ClientMetadataType
    class ClientMetadataType
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for AdminCreateUser
    class AdminCreateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminCreateUser'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['UserAttributes'] = Builders::AttributeListType.build(input[:user_attributes]) unless input[:user_attributes].nil?
        data['ValidationData'] = Builders::AttributeListType.build(input[:validation_data]) unless input[:validation_data].nil?
        data['TemporaryPassword'] = input[:temporary_password] unless input[:temporary_password].nil?
        data['ForceAliasCreation'] = input[:force_alias_creation] unless input[:force_alias_creation].nil?
        data['MessageAction'] = input[:message_action] unless input[:message_action].nil?
        data['DesiredDeliveryMediums'] = Builders::DeliveryMediumListType.build(input[:desired_delivery_mediums]) unless input[:desired_delivery_mediums].nil?
        data['ClientMetadata'] = Builders::ClientMetadataType.build(input[:client_metadata]) unless input[:client_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DeliveryMediumListType
    class DeliveryMediumListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AttributeListType
    class AttributeListType
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AttributeType.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AttributeType
    class AttributeType
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for AdminDeleteUser
    class AdminDeleteUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminDeleteUser'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminDeleteUserAttributes
    class AdminDeleteUserAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminDeleteUserAttributes'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['UserAttributeNames'] = Builders::AttributeNameListType.build(input[:user_attribute_names]) unless input[:user_attribute_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AttributeNameListType
    class AttributeNameListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for AdminDisableProviderForUser
    class AdminDisableProviderForUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminDisableProviderForUser'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['User'] = Builders::ProviderUserIdentifierType.build(input[:user]) unless input[:user].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ProviderUserIdentifierType
    class ProviderUserIdentifierType
      def self.build(input)
        data = {}
        data['ProviderName'] = input[:provider_name] unless input[:provider_name].nil?
        data['ProviderAttributeName'] = input[:provider_attribute_name] unless input[:provider_attribute_name].nil?
        data['ProviderAttributeValue'] = input[:provider_attribute_value] unless input[:provider_attribute_value].nil?
        data
      end
    end

    # Operation Builder for AdminDisableUser
    class AdminDisableUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminDisableUser'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminEnableUser
    class AdminEnableUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminEnableUser'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminForgetDevice
    class AdminForgetDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminForgetDevice'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['DeviceKey'] = input[:device_key] unless input[:device_key].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminGetDevice
    class AdminGetDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminGetDevice'
        data = {}
        data['DeviceKey'] = input[:device_key] unless input[:device_key].nil?
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminGetUser
    class AdminGetUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminGetUser'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminInitiateAuth
    class AdminInitiateAuth
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminInitiateAuth'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['AuthFlow'] = input[:auth_flow] unless input[:auth_flow].nil?
        data['AuthParameters'] = Builders::AuthParametersType.build(input[:auth_parameters]) unless input[:auth_parameters].nil?
        data['ClientMetadata'] = Builders::ClientMetadataType.build(input[:client_metadata]) unless input[:client_metadata].nil?
        data['AnalyticsMetadata'] = Builders::AnalyticsMetadataType.build(input[:analytics_metadata]) unless input[:analytics_metadata].nil?
        data['ContextData'] = Builders::ContextDataType.build(input[:context_data]) unless input[:context_data].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ContextDataType
    class ContextDataType
      def self.build(input)
        data = {}
        data['IpAddress'] = input[:ip_address] unless input[:ip_address].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['ServerPath'] = input[:server_path] unless input[:server_path].nil?
        data['HttpHeaders'] = Builders::HttpHeaderList.build(input[:http_headers]) unless input[:http_headers].nil?
        data['EncodedData'] = input[:encoded_data] unless input[:encoded_data].nil?
        data
      end
    end

    # List Builder for HttpHeaderList
    class HttpHeaderList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HttpHeader.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HttpHeader
    class HttpHeader
      def self.build(input)
        data = {}
        data['headerName'] = input[:header_name] unless input[:header_name].nil?
        data['headerValue'] = input[:header_value] unless input[:header_value].nil?
        data
      end
    end

    # Structure Builder for AnalyticsMetadataType
    class AnalyticsMetadataType
      def self.build(input)
        data = {}
        data['AnalyticsEndpointId'] = input[:analytics_endpoint_id] unless input[:analytics_endpoint_id].nil?
        data
      end
    end

    # Map Builder for AuthParametersType
    class AuthParametersType
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for AdminLinkProviderForUser
    class AdminLinkProviderForUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminLinkProviderForUser'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['DestinationUser'] = Builders::ProviderUserIdentifierType.build(input[:destination_user]) unless input[:destination_user].nil?
        data['SourceUser'] = Builders::ProviderUserIdentifierType.build(input[:source_user]) unless input[:source_user].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminListDevices
    class AdminListDevices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminListDevices'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['PaginationToken'] = input[:pagination_token] unless input[:pagination_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminListGroupsForUser
    class AdminListGroupsForUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminListGroupsForUser'
        data = {}
        data['Username'] = input[:username] unless input[:username].nil?
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminListUserAuthEvents
    class AdminListUserAuthEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminListUserAuthEvents'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminRemoveUserFromGroup
    class AdminRemoveUserFromGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminRemoveUserFromGroup'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminResetUserPassword
    class AdminResetUserPassword
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminResetUserPassword'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['ClientMetadata'] = Builders::ClientMetadataType.build(input[:client_metadata]) unless input[:client_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminRespondToAuthChallenge
    class AdminRespondToAuthChallenge
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminRespondToAuthChallenge'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['ChallengeName'] = input[:challenge_name] unless input[:challenge_name].nil?
        data['ChallengeResponses'] = Builders::ChallengeResponsesType.build(input[:challenge_responses]) unless input[:challenge_responses].nil?
        data['Session'] = input[:session] unless input[:session].nil?
        data['AnalyticsMetadata'] = Builders::AnalyticsMetadataType.build(input[:analytics_metadata]) unless input[:analytics_metadata].nil?
        data['ContextData'] = Builders::ContextDataType.build(input[:context_data]) unless input[:context_data].nil?
        data['ClientMetadata'] = Builders::ClientMetadataType.build(input[:client_metadata]) unless input[:client_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ChallengeResponsesType
    class ChallengeResponsesType
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for AdminSetUserMFAPreference
    class AdminSetUserMFAPreference
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminSetUserMFAPreference'
        data = {}
        data['SMSMfaSettings'] = Builders::SMSMfaSettingsType.build(input[:sms_mfa_settings]) unless input[:sms_mfa_settings].nil?
        data['SoftwareTokenMfaSettings'] = Builders::SoftwareTokenMfaSettingsType.build(input[:software_token_mfa_settings]) unless input[:software_token_mfa_settings].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SoftwareTokenMfaSettingsType
    class SoftwareTokenMfaSettingsType
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['PreferredMfa'] = input[:preferred_mfa] unless input[:preferred_mfa].nil?
        data
      end
    end

    # Structure Builder for SMSMfaSettingsType
    class SMSMfaSettingsType
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['PreferredMfa'] = input[:preferred_mfa] unless input[:preferred_mfa].nil?
        data
      end
    end

    # Operation Builder for AdminSetUserPassword
    class AdminSetUserPassword
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminSetUserPassword'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['Permanent'] = input[:permanent] unless input[:permanent].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminSetUserSettings
    class AdminSetUserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminSetUserSettings'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['MFAOptions'] = Builders::MFAOptionListType.build(input[:mfa_options]) unless input[:mfa_options].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MFAOptionListType
    class MFAOptionListType
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MFAOptionType.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MFAOptionType
    class MFAOptionType
      def self.build(input)
        data = {}
        data['DeliveryMedium'] = input[:delivery_medium] unless input[:delivery_medium].nil?
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data
      end
    end

    # Operation Builder for AdminUpdateAuthEventFeedback
    class AdminUpdateAuthEventFeedback
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminUpdateAuthEventFeedback'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['EventId'] = input[:event_id] unless input[:event_id].nil?
        data['FeedbackValue'] = input[:feedback_value] unless input[:feedback_value].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminUpdateDeviceStatus
    class AdminUpdateDeviceStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminUpdateDeviceStatus'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['DeviceKey'] = input[:device_key] unless input[:device_key].nil?
        data['DeviceRememberedStatus'] = input[:device_remembered_status] unless input[:device_remembered_status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminUpdateUserAttributes
    class AdminUpdateUserAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminUpdateUserAttributes'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['UserAttributes'] = Builders::AttributeListType.build(input[:user_attributes]) unless input[:user_attributes].nil?
        data['ClientMetadata'] = Builders::ClientMetadataType.build(input[:client_metadata]) unless input[:client_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AdminUserGlobalSignOut
    class AdminUserGlobalSignOut
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AdminUserGlobalSignOut'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateSoftwareToken
    class AssociateSoftwareToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.AssociateSoftwareToken'
        data = {}
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        data['Session'] = input[:session] unless input[:session].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ChangePassword
    class ChangePassword
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ChangePassword'
        data = {}
        data['PreviousPassword'] = input[:previous_password] unless input[:previous_password].nil?
        data['ProposedPassword'] = input[:proposed_password] unless input[:proposed_password].nil?
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ConfirmDevice
    class ConfirmDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ConfirmDevice'
        data = {}
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        data['DeviceKey'] = input[:device_key] unless input[:device_key].nil?
        data['DeviceSecretVerifierConfig'] = Builders::DeviceSecretVerifierConfigType.build(input[:device_secret_verifier_config]) unless input[:device_secret_verifier_config].nil?
        data['DeviceName'] = input[:device_name] unless input[:device_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DeviceSecretVerifierConfigType
    class DeviceSecretVerifierConfigType
      def self.build(input)
        data = {}
        data['PasswordVerifier'] = input[:password_verifier] unless input[:password_verifier].nil?
        data['Salt'] = input[:salt] unless input[:salt].nil?
        data
      end
    end

    # Operation Builder for ConfirmForgotPassword
    class ConfirmForgotPassword
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ConfirmForgotPassword'
        data = {}
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['SecretHash'] = input[:secret_hash] unless input[:secret_hash].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['ConfirmationCode'] = input[:confirmation_code] unless input[:confirmation_code].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['AnalyticsMetadata'] = Builders::AnalyticsMetadataType.build(input[:analytics_metadata]) unless input[:analytics_metadata].nil?
        data['UserContextData'] = Builders::UserContextDataType.build(input[:user_context_data]) unless input[:user_context_data].nil?
        data['ClientMetadata'] = Builders::ClientMetadataType.build(input[:client_metadata]) unless input[:client_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UserContextDataType
    class UserContextDataType
      def self.build(input)
        data = {}
        data['IpAddress'] = input[:ip_address] unless input[:ip_address].nil?
        data['EncodedData'] = input[:encoded_data] unless input[:encoded_data].nil?
        data
      end
    end

    # Operation Builder for ConfirmSignUp
    class ConfirmSignUp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ConfirmSignUp'
        data = {}
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['SecretHash'] = input[:secret_hash] unless input[:secret_hash].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['ConfirmationCode'] = input[:confirmation_code] unless input[:confirmation_code].nil?
        data['ForceAliasCreation'] = input[:force_alias_creation] unless input[:force_alias_creation].nil?
        data['AnalyticsMetadata'] = Builders::AnalyticsMetadataType.build(input[:analytics_metadata]) unless input[:analytics_metadata].nil?
        data['UserContextData'] = Builders::UserContextDataType.build(input[:user_context_data]) unless input[:user_context_data].nil?
        data['ClientMetadata'] = Builders::ClientMetadataType.build(input[:client_metadata]) unless input[:client_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateGroup
    class CreateGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.CreateGroup'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Precedence'] = input[:precedence] unless input[:precedence].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateIdentityProvider
    class CreateIdentityProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.CreateIdentityProvider'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['ProviderName'] = input[:provider_name] unless input[:provider_name].nil?
        data['ProviderType'] = input[:provider_type] unless input[:provider_type].nil?
        data['ProviderDetails'] = Builders::ProviderDetailsType.build(input[:provider_details]) unless input[:provider_details].nil?
        data['AttributeMapping'] = Builders::AttributeMappingType.build(input[:attribute_mapping]) unless input[:attribute_mapping].nil?
        data['IdpIdentifiers'] = Builders::IdpIdentifiersListType.build(input[:idp_identifiers]) unless input[:idp_identifiers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for IdpIdentifiersListType
    class IdpIdentifiersListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for AttributeMappingType
    class AttributeMappingType
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for ProviderDetailsType
    class ProviderDetailsType
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateResourceServer
    class CreateResourceServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.CreateResourceServer'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scopes'] = Builders::ResourceServerScopeListType.build(input[:scopes]) unless input[:scopes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ResourceServerScopeListType
    class ResourceServerScopeListType
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResourceServerScopeType.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceServerScopeType
    class ResourceServerScopeType
      def self.build(input)
        data = {}
        data['ScopeName'] = input[:scope_name] unless input[:scope_name].nil?
        data['ScopeDescription'] = input[:scope_description] unless input[:scope_description].nil?
        data
      end
    end

    # Operation Builder for CreateUserImportJob
    class CreateUserImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.CreateUserImportJob'
        data = {}
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['CloudWatchLogsRoleArn'] = input[:cloud_watch_logs_role_arn] unless input[:cloud_watch_logs_role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateUserPool
    class CreateUserPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.CreateUserPool'
        data = {}
        data['PoolName'] = input[:pool_name] unless input[:pool_name].nil?
        data['Policies'] = Builders::UserPoolPolicyType.build(input[:policies]) unless input[:policies].nil?
        data['LambdaConfig'] = Builders::LambdaConfigType.build(input[:lambda_config]) unless input[:lambda_config].nil?
        data['AutoVerifiedAttributes'] = Builders::VerifiedAttributesListType.build(input[:auto_verified_attributes]) unless input[:auto_verified_attributes].nil?
        data['AliasAttributes'] = Builders::AliasAttributesListType.build(input[:alias_attributes]) unless input[:alias_attributes].nil?
        data['UsernameAttributes'] = Builders::UsernameAttributesListType.build(input[:username_attributes]) unless input[:username_attributes].nil?
        data['SmsVerificationMessage'] = input[:sms_verification_message] unless input[:sms_verification_message].nil?
        data['EmailVerificationMessage'] = input[:email_verification_message] unless input[:email_verification_message].nil?
        data['EmailVerificationSubject'] = input[:email_verification_subject] unless input[:email_verification_subject].nil?
        data['VerificationMessageTemplate'] = Builders::VerificationMessageTemplateType.build(input[:verification_message_template]) unless input[:verification_message_template].nil?
        data['SmsAuthenticationMessage'] = input[:sms_authentication_message] unless input[:sms_authentication_message].nil?
        data['MfaConfiguration'] = input[:mfa_configuration] unless input[:mfa_configuration].nil?
        data['UserAttributeUpdateSettings'] = Builders::UserAttributeUpdateSettingsType.build(input[:user_attribute_update_settings]) unless input[:user_attribute_update_settings].nil?
        data['DeviceConfiguration'] = Builders::DeviceConfigurationType.build(input[:device_configuration]) unless input[:device_configuration].nil?
        data['EmailConfiguration'] = Builders::EmailConfigurationType.build(input[:email_configuration]) unless input[:email_configuration].nil?
        data['SmsConfiguration'] = Builders::SmsConfigurationType.build(input[:sms_configuration]) unless input[:sms_configuration].nil?
        data['UserPoolTags'] = Builders::UserPoolTagsType.build(input[:user_pool_tags]) unless input[:user_pool_tags].nil?
        data['AdminCreateUserConfig'] = Builders::AdminCreateUserConfigType.build(input[:admin_create_user_config]) unless input[:admin_create_user_config].nil?
        data['Schema'] = Builders::SchemaAttributesListType.build(input[:schema]) unless input[:schema].nil?
        data['UserPoolAddOns'] = Builders::UserPoolAddOnsType.build(input[:user_pool_add_ons]) unless input[:user_pool_add_ons].nil?
        data['UsernameConfiguration'] = Builders::UsernameConfigurationType.build(input[:username_configuration]) unless input[:username_configuration].nil?
        data['AccountRecoverySetting'] = Builders::AccountRecoverySettingType.build(input[:account_recovery_setting]) unless input[:account_recovery_setting].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AccountRecoverySettingType
    class AccountRecoverySettingType
      def self.build(input)
        data = {}
        data['RecoveryMechanisms'] = Builders::RecoveryMechanismsType.build(input[:recovery_mechanisms]) unless input[:recovery_mechanisms].nil?
        data
      end
    end

    # List Builder for RecoveryMechanismsType
    class RecoveryMechanismsType
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RecoveryOptionType.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RecoveryOptionType
    class RecoveryOptionType
      def self.build(input)
        data = {}
        data['Priority'] = input[:priority] unless input[:priority].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for UsernameConfigurationType
    class UsernameConfigurationType
      def self.build(input)
        data = {}
        data['CaseSensitive'] = input[:case_sensitive] unless input[:case_sensitive].nil?
        data
      end
    end

    # Structure Builder for UserPoolAddOnsType
    class UserPoolAddOnsType
      def self.build(input)
        data = {}
        data['AdvancedSecurityMode'] = input[:advanced_security_mode] unless input[:advanced_security_mode].nil?
        data
      end
    end

    # List Builder for SchemaAttributesListType
    class SchemaAttributesListType
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SchemaAttributeType.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AdminCreateUserConfigType
    class AdminCreateUserConfigType
      def self.build(input)
        data = {}
        data['AllowAdminCreateUserOnly'] = input[:allow_admin_create_user_only] unless input[:allow_admin_create_user_only].nil?
        data['UnusedAccountValidityDays'] = input[:unused_account_validity_days] unless input[:unused_account_validity_days].nil?
        data['InviteMessageTemplate'] = Builders::MessageTemplateType.build(input[:invite_message_template]) unless input[:invite_message_template].nil?
        data
      end
    end

    # Structure Builder for MessageTemplateType
    class MessageTemplateType
      def self.build(input)
        data = {}
        data['SMSMessage'] = input[:sms_message] unless input[:sms_message].nil?
        data['EmailMessage'] = input[:email_message] unless input[:email_message].nil?
        data['EmailSubject'] = input[:email_subject] unless input[:email_subject].nil?
        data
      end
    end

    # Map Builder for UserPoolTagsType
    class UserPoolTagsType
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for SmsConfigurationType
    class SmsConfigurationType
      def self.build(input)
        data = {}
        data['SnsCallerArn'] = input[:sns_caller_arn] unless input[:sns_caller_arn].nil?
        data['ExternalId'] = input[:external_id] unless input[:external_id].nil?
        data['SnsRegion'] = input[:sns_region] unless input[:sns_region].nil?
        data
      end
    end

    # Structure Builder for EmailConfigurationType
    class EmailConfigurationType
      def self.build(input)
        data = {}
        data['SourceArn'] = input[:source_arn] unless input[:source_arn].nil?
        data['ReplyToEmailAddress'] = input[:reply_to_email_address] unless input[:reply_to_email_address].nil?
        data['EmailSendingAccount'] = input[:email_sending_account] unless input[:email_sending_account].nil?
        data['From'] = input[:from] unless input[:from].nil?
        data['ConfigurationSet'] = input[:configuration_set] unless input[:configuration_set].nil?
        data
      end
    end

    # Structure Builder for DeviceConfigurationType
    class DeviceConfigurationType
      def self.build(input)
        data = {}
        data['ChallengeRequiredOnNewDevice'] = input[:challenge_required_on_new_device] unless input[:challenge_required_on_new_device].nil?
        data['DeviceOnlyRememberedOnUserPrompt'] = input[:device_only_remembered_on_user_prompt] unless input[:device_only_remembered_on_user_prompt].nil?
        data
      end
    end

    # Structure Builder for UserAttributeUpdateSettingsType
    class UserAttributeUpdateSettingsType
      def self.build(input)
        data = {}
        data['AttributesRequireVerificationBeforeUpdate'] = Builders::AttributesRequireVerificationBeforeUpdateType.build(input[:attributes_require_verification_before_update]) unless input[:attributes_require_verification_before_update].nil?
        data
      end
    end

    # List Builder for AttributesRequireVerificationBeforeUpdateType
    class AttributesRequireVerificationBeforeUpdateType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VerificationMessageTemplateType
    class VerificationMessageTemplateType
      def self.build(input)
        data = {}
        data['SmsMessage'] = input[:sms_message] unless input[:sms_message].nil?
        data['EmailMessage'] = input[:email_message] unless input[:email_message].nil?
        data['EmailSubject'] = input[:email_subject] unless input[:email_subject].nil?
        data['EmailMessageByLink'] = input[:email_message_by_link] unless input[:email_message_by_link].nil?
        data['EmailSubjectByLink'] = input[:email_subject_by_link] unless input[:email_subject_by_link].nil?
        data['DefaultEmailOption'] = input[:default_email_option] unless input[:default_email_option].nil?
        data
      end
    end

    # List Builder for UsernameAttributesListType
    class UsernameAttributesListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AliasAttributesListType
    class AliasAttributesListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for VerifiedAttributesListType
    class VerifiedAttributesListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LambdaConfigType
    class LambdaConfigType
      def self.build(input)
        data = {}
        data['PreSignUp'] = input[:pre_sign_up] unless input[:pre_sign_up].nil?
        data['CustomMessage'] = input[:custom_message] unless input[:custom_message].nil?
        data['PostConfirmation'] = input[:post_confirmation] unless input[:post_confirmation].nil?
        data['PreAuthentication'] = input[:pre_authentication] unless input[:pre_authentication].nil?
        data['PostAuthentication'] = input[:post_authentication] unless input[:post_authentication].nil?
        data['DefineAuthChallenge'] = input[:define_auth_challenge] unless input[:define_auth_challenge].nil?
        data['CreateAuthChallenge'] = input[:create_auth_challenge] unless input[:create_auth_challenge].nil?
        data['VerifyAuthChallengeResponse'] = input[:verify_auth_challenge_response] unless input[:verify_auth_challenge_response].nil?
        data['PreTokenGeneration'] = input[:pre_token_generation] unless input[:pre_token_generation].nil?
        data['UserMigration'] = input[:user_migration] unless input[:user_migration].nil?
        data['CustomSMSSender'] = Builders::CustomSMSLambdaVersionConfigType.build(input[:custom_sms_sender]) unless input[:custom_sms_sender].nil?
        data['CustomEmailSender'] = Builders::CustomEmailLambdaVersionConfigType.build(input[:custom_email_sender]) unless input[:custom_email_sender].nil?
        data['KMSKeyID'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Structure Builder for CustomEmailLambdaVersionConfigType
    class CustomEmailLambdaVersionConfigType
      def self.build(input)
        data = {}
        data['LambdaVersion'] = input[:lambda_version] unless input[:lambda_version].nil?
        data['LambdaArn'] = input[:lambda_arn] unless input[:lambda_arn].nil?
        data
      end
    end

    # Structure Builder for CustomSMSLambdaVersionConfigType
    class CustomSMSLambdaVersionConfigType
      def self.build(input)
        data = {}
        data['LambdaVersion'] = input[:lambda_version] unless input[:lambda_version].nil?
        data['LambdaArn'] = input[:lambda_arn] unless input[:lambda_arn].nil?
        data
      end
    end

    # Structure Builder for UserPoolPolicyType
    class UserPoolPolicyType
      def self.build(input)
        data = {}
        data['PasswordPolicy'] = Builders::PasswordPolicyType.build(input[:password_policy]) unless input[:password_policy].nil?
        data
      end
    end

    # Structure Builder for PasswordPolicyType
    class PasswordPolicyType
      def self.build(input)
        data = {}
        data['MinimumLength'] = input[:minimum_length] unless input[:minimum_length].nil?
        data['RequireUppercase'] = input[:require_uppercase] unless input[:require_uppercase].nil?
        data['RequireLowercase'] = input[:require_lowercase] unless input[:require_lowercase].nil?
        data['RequireNumbers'] = input[:require_numbers] unless input[:require_numbers].nil?
        data['RequireSymbols'] = input[:require_symbols] unless input[:require_symbols].nil?
        data['TemporaryPasswordValidityDays'] = input[:temporary_password_validity_days] unless input[:temporary_password_validity_days].nil?
        data
      end
    end

    # Operation Builder for CreateUserPoolClient
    class CreateUserPoolClient
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.CreateUserPoolClient'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['ClientName'] = input[:client_name] unless input[:client_name].nil?
        data['GenerateSecret'] = input[:generate_secret] unless input[:generate_secret].nil?
        data['RefreshTokenValidity'] = input[:refresh_token_validity] unless input[:refresh_token_validity].nil?
        data['AccessTokenValidity'] = input[:access_token_validity] unless input[:access_token_validity].nil?
        data['IdTokenValidity'] = input[:id_token_validity] unless input[:id_token_validity].nil?
        data['TokenValidityUnits'] = Builders::TokenValidityUnitsType.build(input[:token_validity_units]) unless input[:token_validity_units].nil?
        data['ReadAttributes'] = Builders::ClientPermissionListType.build(input[:read_attributes]) unless input[:read_attributes].nil?
        data['WriteAttributes'] = Builders::ClientPermissionListType.build(input[:write_attributes]) unless input[:write_attributes].nil?
        data['ExplicitAuthFlows'] = Builders::ExplicitAuthFlowsListType.build(input[:explicit_auth_flows]) unless input[:explicit_auth_flows].nil?
        data['SupportedIdentityProviders'] = Builders::SupportedIdentityProvidersListType.build(input[:supported_identity_providers]) unless input[:supported_identity_providers].nil?
        data['CallbackURLs'] = Builders::CallbackURLsListType.build(input[:callback_ur_ls]) unless input[:callback_ur_ls].nil?
        data['LogoutURLs'] = Builders::LogoutURLsListType.build(input[:logout_ur_ls]) unless input[:logout_ur_ls].nil?
        data['DefaultRedirectURI'] = input[:default_redirect_uri] unless input[:default_redirect_uri].nil?
        data['AllowedOAuthFlows'] = Builders::OAuthFlowsType.build(input[:allowed_o_auth_flows]) unless input[:allowed_o_auth_flows].nil?
        data['AllowedOAuthScopes'] = Builders::ScopeListType.build(input[:allowed_o_auth_scopes]) unless input[:allowed_o_auth_scopes].nil?
        data['AllowedOAuthFlowsUserPoolClient'] = input[:allowed_o_auth_flows_user_pool_client] unless input[:allowed_o_auth_flows_user_pool_client].nil?
        data['AnalyticsConfiguration'] = Builders::AnalyticsConfigurationType.build(input[:analytics_configuration]) unless input[:analytics_configuration].nil?
        data['PreventUserExistenceErrors'] = input[:prevent_user_existence_errors] unless input[:prevent_user_existence_errors].nil?
        data['EnableTokenRevocation'] = input[:enable_token_revocation] unless input[:enable_token_revocation].nil?
        data['EnablePropagateAdditionalUserContextData'] = input[:enable_propagate_additional_user_context_data] unless input[:enable_propagate_additional_user_context_data].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AnalyticsConfigurationType
    class AnalyticsConfigurationType
      def self.build(input)
        data = {}
        data['ApplicationId'] = input[:application_id] unless input[:application_id].nil?
        data['ApplicationArn'] = input[:application_arn] unless input[:application_arn].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['ExternalId'] = input[:external_id] unless input[:external_id].nil?
        data['UserDataShared'] = input[:user_data_shared] unless input[:user_data_shared].nil?
        data
      end
    end

    # List Builder for ScopeListType
    class ScopeListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for OAuthFlowsType
    class OAuthFlowsType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for LogoutURLsListType
    class LogoutURLsListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CallbackURLsListType
    class CallbackURLsListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SupportedIdentityProvidersListType
    class SupportedIdentityProvidersListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ExplicitAuthFlowsListType
    class ExplicitAuthFlowsListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ClientPermissionListType
    class ClientPermissionListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TokenValidityUnitsType
    class TokenValidityUnitsType
      def self.build(input)
        data = {}
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        data['IdToken'] = input[:id_token] unless input[:id_token].nil?
        data['RefreshToken'] = input[:refresh_token] unless input[:refresh_token].nil?
        data
      end
    end

    # Operation Builder for CreateUserPoolDomain
    class CreateUserPoolDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.CreateUserPoolDomain'
        data = {}
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['CustomDomainConfig'] = Builders::CustomDomainConfigType.build(input[:custom_domain_config]) unless input[:custom_domain_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CustomDomainConfigType
    class CustomDomainConfigType
      def self.build(input)
        data = {}
        data['CertificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data
      end
    end

    # Operation Builder for DeleteGroup
    class DeleteGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.DeleteGroup'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteIdentityProvider
    class DeleteIdentityProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.DeleteIdentityProvider'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['ProviderName'] = input[:provider_name] unless input[:provider_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResourceServer
    class DeleteResourceServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.DeleteResourceServer'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUser
    class DeleteUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.DeleteUser'
        data = {}
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUserAttributes
    class DeleteUserAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.DeleteUserAttributes'
        data = {}
        data['UserAttributeNames'] = Builders::AttributeNameListType.build(input[:user_attribute_names]) unless input[:user_attribute_names].nil?
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUserPool
    class DeleteUserPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.DeleteUserPool'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUserPoolClient
    class DeleteUserPoolClient
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.DeleteUserPoolClient'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUserPoolDomain
    class DeleteUserPoolDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.DeleteUserPoolDomain'
        data = {}
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeIdentityProvider
    class DescribeIdentityProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.DescribeIdentityProvider'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['ProviderName'] = input[:provider_name] unless input[:provider_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeResourceServer
    class DescribeResourceServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.DescribeResourceServer'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRiskConfiguration
    class DescribeRiskConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.DescribeRiskConfiguration'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeUserImportJob
    class DescribeUserImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.DescribeUserImportJob'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeUserPool
    class DescribeUserPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.DescribeUserPool'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeUserPoolClient
    class DescribeUserPoolClient
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.DescribeUserPoolClient'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeUserPoolDomain
    class DescribeUserPoolDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.DescribeUserPoolDomain'
        data = {}
        data['Domain'] = input[:domain] unless input[:domain].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ForgetDevice
    class ForgetDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ForgetDevice'
        data = {}
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        data['DeviceKey'] = input[:device_key] unless input[:device_key].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ForgotPassword
    class ForgotPassword
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ForgotPassword'
        data = {}
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['SecretHash'] = input[:secret_hash] unless input[:secret_hash].nil?
        data['UserContextData'] = Builders::UserContextDataType.build(input[:user_context_data]) unless input[:user_context_data].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['AnalyticsMetadata'] = Builders::AnalyticsMetadataType.build(input[:analytics_metadata]) unless input[:analytics_metadata].nil?
        data['ClientMetadata'] = Builders::ClientMetadataType.build(input[:client_metadata]) unless input[:client_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCSVHeader
    class GetCSVHeader
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.GetCSVHeader'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDevice
    class GetDevice
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.GetDevice'
        data = {}
        data['DeviceKey'] = input[:device_key] unless input[:device_key].nil?
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetGroup
    class GetGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.GetGroup'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetIdentityProviderByIdentifier
    class GetIdentityProviderByIdentifier
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.GetIdentityProviderByIdentifier'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['IdpIdentifier'] = input[:idp_identifier] unless input[:idp_identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSigningCertificate
    class GetSigningCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.GetSigningCertificate'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetUICustomization
    class GetUICustomization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.GetUICustomization'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetUser
    class GetUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.GetUser'
        data = {}
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetUserAttributeVerificationCode
    class GetUserAttributeVerificationCode
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.GetUserAttributeVerificationCode'
        data = {}
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['ClientMetadata'] = Builders::ClientMetadataType.build(input[:client_metadata]) unless input[:client_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetUserPoolMfaConfig
    class GetUserPoolMfaConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.GetUserPoolMfaConfig'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GlobalSignOut
    class GlobalSignOut
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.GlobalSignOut'
        data = {}
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for InitiateAuth
    class InitiateAuth
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.InitiateAuth'
        data = {}
        data['AuthFlow'] = input[:auth_flow] unless input[:auth_flow].nil?
        data['AuthParameters'] = Builders::AuthParametersType.build(input[:auth_parameters]) unless input[:auth_parameters].nil?
        data['ClientMetadata'] = Builders::ClientMetadataType.build(input[:client_metadata]) unless input[:client_metadata].nil?
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['AnalyticsMetadata'] = Builders::AnalyticsMetadataType.build(input[:analytics_metadata]) unless input[:analytics_metadata].nil?
        data['UserContextData'] = Builders::UserContextDataType.build(input[:user_context_data]) unless input[:user_context_data].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDevices
    class ListDevices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ListDevices'
        data = {}
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['PaginationToken'] = input[:pagination_token] unless input[:pagination_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListGroups
    class ListGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ListGroups'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListIdentityProviders
    class ListIdentityProviders
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ListIdentityProviders'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResourceServers
    class ListResourceServers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ListResourceServers'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListUserImportJobs
    class ListUserImportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ListUserImportJobs'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['PaginationToken'] = input[:pagination_token] unless input[:pagination_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListUserPoolClients
    class ListUserPoolClients
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ListUserPoolClients'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListUserPools
    class ListUserPools
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ListUserPools'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListUsers
    class ListUsers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ListUsers'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['AttributesToGet'] = Builders::SearchedAttributeNamesListType.build(input[:attributes_to_get]) unless input[:attributes_to_get].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['PaginationToken'] = input[:pagination_token] unless input[:pagination_token].nil?
        data['Filter'] = input[:filter] unless input[:filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SearchedAttributeNamesListType
    class SearchedAttributeNamesListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListUsersInGroup
    class ListUsersInGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ListUsersInGroup'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResendConfirmationCode
    class ResendConfirmationCode
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.ResendConfirmationCode'
        data = {}
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['SecretHash'] = input[:secret_hash] unless input[:secret_hash].nil?
        data['UserContextData'] = Builders::UserContextDataType.build(input[:user_context_data]) unless input[:user_context_data].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['AnalyticsMetadata'] = Builders::AnalyticsMetadataType.build(input[:analytics_metadata]) unless input[:analytics_metadata].nil?
        data['ClientMetadata'] = Builders::ClientMetadataType.build(input[:client_metadata]) unless input[:client_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RespondToAuthChallenge
    class RespondToAuthChallenge
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.RespondToAuthChallenge'
        data = {}
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['ChallengeName'] = input[:challenge_name] unless input[:challenge_name].nil?
        data['Session'] = input[:session] unless input[:session].nil?
        data['ChallengeResponses'] = Builders::ChallengeResponsesType.build(input[:challenge_responses]) unless input[:challenge_responses].nil?
        data['AnalyticsMetadata'] = Builders::AnalyticsMetadataType.build(input[:analytics_metadata]) unless input[:analytics_metadata].nil?
        data['UserContextData'] = Builders::UserContextDataType.build(input[:user_context_data]) unless input[:user_context_data].nil?
        data['ClientMetadata'] = Builders::ClientMetadataType.build(input[:client_metadata]) unless input[:client_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RevokeToken
    class RevokeToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.RevokeToken'
        data = {}
        data['Token'] = input[:token] unless input[:token].nil?
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['ClientSecret'] = input[:client_secret] unless input[:client_secret].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetRiskConfiguration
    class SetRiskConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.SetRiskConfiguration'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['CompromisedCredentialsRiskConfiguration'] = Builders::CompromisedCredentialsRiskConfigurationType.build(input[:compromised_credentials_risk_configuration]) unless input[:compromised_credentials_risk_configuration].nil?
        data['AccountTakeoverRiskConfiguration'] = Builders::AccountTakeoverRiskConfigurationType.build(input[:account_takeover_risk_configuration]) unless input[:account_takeover_risk_configuration].nil?
        data['RiskExceptionConfiguration'] = Builders::RiskExceptionConfigurationType.build(input[:risk_exception_configuration]) unless input[:risk_exception_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RiskExceptionConfigurationType
    class RiskExceptionConfigurationType
      def self.build(input)
        data = {}
        data['BlockedIPRangeList'] = Builders::BlockedIPRangeListType.build(input[:blocked_ip_range_list]) unless input[:blocked_ip_range_list].nil?
        data['SkippedIPRangeList'] = Builders::SkippedIPRangeListType.build(input[:skipped_ip_range_list]) unless input[:skipped_ip_range_list].nil?
        data
      end
    end

    # List Builder for SkippedIPRangeListType
    class SkippedIPRangeListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for BlockedIPRangeListType
    class BlockedIPRangeListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AccountTakeoverRiskConfigurationType
    class AccountTakeoverRiskConfigurationType
      def self.build(input)
        data = {}
        data['NotifyConfiguration'] = Builders::NotifyConfigurationType.build(input[:notify_configuration]) unless input[:notify_configuration].nil?
        data['Actions'] = Builders::AccountTakeoverActionsType.build(input[:actions]) unless input[:actions].nil?
        data
      end
    end

    # Structure Builder for AccountTakeoverActionsType
    class AccountTakeoverActionsType
      def self.build(input)
        data = {}
        data['LowAction'] = Builders::AccountTakeoverActionType.build(input[:low_action]) unless input[:low_action].nil?
        data['MediumAction'] = Builders::AccountTakeoverActionType.build(input[:medium_action]) unless input[:medium_action].nil?
        data['HighAction'] = Builders::AccountTakeoverActionType.build(input[:high_action]) unless input[:high_action].nil?
        data
      end
    end

    # Structure Builder for AccountTakeoverActionType
    class AccountTakeoverActionType
      def self.build(input)
        data = {}
        data['Notify'] = input[:notify] unless input[:notify].nil?
        data['EventAction'] = input[:event_action] unless input[:event_action].nil?
        data
      end
    end

    # Structure Builder for NotifyConfigurationType
    class NotifyConfigurationType
      def self.build(input)
        data = {}
        data['From'] = input[:from] unless input[:from].nil?
        data['ReplyTo'] = input[:reply_to] unless input[:reply_to].nil?
        data['SourceArn'] = input[:source_arn] unless input[:source_arn].nil?
        data['BlockEmail'] = Builders::NotifyEmailType.build(input[:block_email]) unless input[:block_email].nil?
        data['NoActionEmail'] = Builders::NotifyEmailType.build(input[:no_action_email]) unless input[:no_action_email].nil?
        data['MfaEmail'] = Builders::NotifyEmailType.build(input[:mfa_email]) unless input[:mfa_email].nil?
        data
      end
    end

    # Structure Builder for NotifyEmailType
    class NotifyEmailType
      def self.build(input)
        data = {}
        data['Subject'] = input[:subject] unless input[:subject].nil?
        data['HtmlBody'] = input[:html_body] unless input[:html_body].nil?
        data['TextBody'] = input[:text_body] unless input[:text_body].nil?
        data
      end
    end

    # Structure Builder for CompromisedCredentialsRiskConfigurationType
    class CompromisedCredentialsRiskConfigurationType
      def self.build(input)
        data = {}
        data['EventFilter'] = Builders::EventFiltersType.build(input[:event_filter]) unless input[:event_filter].nil?
        data['Actions'] = Builders::CompromisedCredentialsActionsType.build(input[:actions]) unless input[:actions].nil?
        data
      end
    end

    # Structure Builder for CompromisedCredentialsActionsType
    class CompromisedCredentialsActionsType
      def self.build(input)
        data = {}
        data['EventAction'] = input[:event_action] unless input[:event_action].nil?
        data
      end
    end

    # List Builder for EventFiltersType
    class EventFiltersType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SetUICustomization
    class SetUICustomization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.SetUICustomization'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['CSS'] = input[:css] unless input[:css].nil?
        data['ImageFile'] = Base64::encode64(input[:image_file]).strip unless input[:image_file].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetUserMFAPreference
    class SetUserMFAPreference
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.SetUserMFAPreference'
        data = {}
        data['SMSMfaSettings'] = Builders::SMSMfaSettingsType.build(input[:sms_mfa_settings]) unless input[:sms_mfa_settings].nil?
        data['SoftwareTokenMfaSettings'] = Builders::SoftwareTokenMfaSettingsType.build(input[:software_token_mfa_settings]) unless input[:software_token_mfa_settings].nil?
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetUserPoolMfaConfig
    class SetUserPoolMfaConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.SetUserPoolMfaConfig'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['SmsMfaConfiguration'] = Builders::SmsMfaConfigType.build(input[:sms_mfa_configuration]) unless input[:sms_mfa_configuration].nil?
        data['SoftwareTokenMfaConfiguration'] = Builders::SoftwareTokenMfaConfigType.build(input[:software_token_mfa_configuration]) unless input[:software_token_mfa_configuration].nil?
        data['MfaConfiguration'] = input[:mfa_configuration] unless input[:mfa_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SoftwareTokenMfaConfigType
    class SoftwareTokenMfaConfigType
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for SmsMfaConfigType
    class SmsMfaConfigType
      def self.build(input)
        data = {}
        data['SmsAuthenticationMessage'] = input[:sms_authentication_message] unless input[:sms_authentication_message].nil?
        data['SmsConfiguration'] = Builders::SmsConfigurationType.build(input[:sms_configuration]) unless input[:sms_configuration].nil?
        data
      end
    end

    # Operation Builder for SetUserSettings
    class SetUserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.SetUserSettings'
        data = {}
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        data['MFAOptions'] = Builders::MFAOptionListType.build(input[:mfa_options]) unless input[:mfa_options].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SignUp
    class SignUp
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.SignUp'
        data = {}
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['SecretHash'] = input[:secret_hash] unless input[:secret_hash].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['UserAttributes'] = Builders::AttributeListType.build(input[:user_attributes]) unless input[:user_attributes].nil?
        data['ValidationData'] = Builders::AttributeListType.build(input[:validation_data]) unless input[:validation_data].nil?
        data['AnalyticsMetadata'] = Builders::AnalyticsMetadataType.build(input[:analytics_metadata]) unless input[:analytics_metadata].nil?
        data['UserContextData'] = Builders::UserContextDataType.build(input[:user_context_data]) unless input[:user_context_data].nil?
        data['ClientMetadata'] = Builders::ClientMetadataType.build(input[:client_metadata]) unless input[:client_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartUserImportJob
    class StartUserImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.StartUserImportJob'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopUserImportJob
    class StopUserImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.StopUserImportJob'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::UserPoolTagsType.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::UserPoolTagsListType.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UserPoolTagsListType
    class UserPoolTagsListType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateAuthEventFeedback
    class UpdateAuthEventFeedback
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.UpdateAuthEventFeedback'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Username'] = input[:username] unless input[:username].nil?
        data['EventId'] = input[:event_id] unless input[:event_id].nil?
        data['FeedbackToken'] = input[:feedback_token] unless input[:feedback_token].nil?
        data['FeedbackValue'] = input[:feedback_value] unless input[:feedback_value].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDeviceStatus
    class UpdateDeviceStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.UpdateDeviceStatus'
        data = {}
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        data['DeviceKey'] = input[:device_key] unless input[:device_key].nil?
        data['DeviceRememberedStatus'] = input[:device_remembered_status] unless input[:device_remembered_status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGroup
    class UpdateGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.UpdateGroup'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Precedence'] = input[:precedence] unless input[:precedence].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateIdentityProvider
    class UpdateIdentityProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.UpdateIdentityProvider'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['ProviderName'] = input[:provider_name] unless input[:provider_name].nil?
        data['ProviderDetails'] = Builders::ProviderDetailsType.build(input[:provider_details]) unless input[:provider_details].nil?
        data['AttributeMapping'] = Builders::AttributeMappingType.build(input[:attribute_mapping]) unless input[:attribute_mapping].nil?
        data['IdpIdentifiers'] = Builders::IdpIdentifiersListType.build(input[:idp_identifiers]) unless input[:idp_identifiers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateResourceServer
    class UpdateResourceServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.UpdateResourceServer'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Identifier'] = input[:identifier] unless input[:identifier].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Scopes'] = Builders::ResourceServerScopeListType.build(input[:scopes]) unless input[:scopes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUserAttributes
    class UpdateUserAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.UpdateUserAttributes'
        data = {}
        data['UserAttributes'] = Builders::AttributeListType.build(input[:user_attributes]) unless input[:user_attributes].nil?
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        data['ClientMetadata'] = Builders::ClientMetadataType.build(input[:client_metadata]) unless input[:client_metadata].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUserPool
    class UpdateUserPool
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.UpdateUserPool'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['Policies'] = Builders::UserPoolPolicyType.build(input[:policies]) unless input[:policies].nil?
        data['LambdaConfig'] = Builders::LambdaConfigType.build(input[:lambda_config]) unless input[:lambda_config].nil?
        data['AutoVerifiedAttributes'] = Builders::VerifiedAttributesListType.build(input[:auto_verified_attributes]) unless input[:auto_verified_attributes].nil?
        data['SmsVerificationMessage'] = input[:sms_verification_message] unless input[:sms_verification_message].nil?
        data['EmailVerificationMessage'] = input[:email_verification_message] unless input[:email_verification_message].nil?
        data['EmailVerificationSubject'] = input[:email_verification_subject] unless input[:email_verification_subject].nil?
        data['VerificationMessageTemplate'] = Builders::VerificationMessageTemplateType.build(input[:verification_message_template]) unless input[:verification_message_template].nil?
        data['SmsAuthenticationMessage'] = input[:sms_authentication_message] unless input[:sms_authentication_message].nil?
        data['UserAttributeUpdateSettings'] = Builders::UserAttributeUpdateSettingsType.build(input[:user_attribute_update_settings]) unless input[:user_attribute_update_settings].nil?
        data['MfaConfiguration'] = input[:mfa_configuration] unless input[:mfa_configuration].nil?
        data['DeviceConfiguration'] = Builders::DeviceConfigurationType.build(input[:device_configuration]) unless input[:device_configuration].nil?
        data['EmailConfiguration'] = Builders::EmailConfigurationType.build(input[:email_configuration]) unless input[:email_configuration].nil?
        data['SmsConfiguration'] = Builders::SmsConfigurationType.build(input[:sms_configuration]) unless input[:sms_configuration].nil?
        data['UserPoolTags'] = Builders::UserPoolTagsType.build(input[:user_pool_tags]) unless input[:user_pool_tags].nil?
        data['AdminCreateUserConfig'] = Builders::AdminCreateUserConfigType.build(input[:admin_create_user_config]) unless input[:admin_create_user_config].nil?
        data['UserPoolAddOns'] = Builders::UserPoolAddOnsType.build(input[:user_pool_add_ons]) unless input[:user_pool_add_ons].nil?
        data['AccountRecoverySetting'] = Builders::AccountRecoverySettingType.build(input[:account_recovery_setting]) unless input[:account_recovery_setting].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUserPoolClient
    class UpdateUserPoolClient
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.UpdateUserPoolClient'
        data = {}
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['ClientId'] = input[:client_id] unless input[:client_id].nil?
        data['ClientName'] = input[:client_name] unless input[:client_name].nil?
        data['RefreshTokenValidity'] = input[:refresh_token_validity] unless input[:refresh_token_validity].nil?
        data['AccessTokenValidity'] = input[:access_token_validity] unless input[:access_token_validity].nil?
        data['IdTokenValidity'] = input[:id_token_validity] unless input[:id_token_validity].nil?
        data['TokenValidityUnits'] = Builders::TokenValidityUnitsType.build(input[:token_validity_units]) unless input[:token_validity_units].nil?
        data['ReadAttributes'] = Builders::ClientPermissionListType.build(input[:read_attributes]) unless input[:read_attributes].nil?
        data['WriteAttributes'] = Builders::ClientPermissionListType.build(input[:write_attributes]) unless input[:write_attributes].nil?
        data['ExplicitAuthFlows'] = Builders::ExplicitAuthFlowsListType.build(input[:explicit_auth_flows]) unless input[:explicit_auth_flows].nil?
        data['SupportedIdentityProviders'] = Builders::SupportedIdentityProvidersListType.build(input[:supported_identity_providers]) unless input[:supported_identity_providers].nil?
        data['CallbackURLs'] = Builders::CallbackURLsListType.build(input[:callback_ur_ls]) unless input[:callback_ur_ls].nil?
        data['LogoutURLs'] = Builders::LogoutURLsListType.build(input[:logout_ur_ls]) unless input[:logout_ur_ls].nil?
        data['DefaultRedirectURI'] = input[:default_redirect_uri] unless input[:default_redirect_uri].nil?
        data['AllowedOAuthFlows'] = Builders::OAuthFlowsType.build(input[:allowed_o_auth_flows]) unless input[:allowed_o_auth_flows].nil?
        data['AllowedOAuthScopes'] = Builders::ScopeListType.build(input[:allowed_o_auth_scopes]) unless input[:allowed_o_auth_scopes].nil?
        data['AllowedOAuthFlowsUserPoolClient'] = input[:allowed_o_auth_flows_user_pool_client] unless input[:allowed_o_auth_flows_user_pool_client].nil?
        data['AnalyticsConfiguration'] = Builders::AnalyticsConfigurationType.build(input[:analytics_configuration]) unless input[:analytics_configuration].nil?
        data['PreventUserExistenceErrors'] = input[:prevent_user_existence_errors] unless input[:prevent_user_existence_errors].nil?
        data['EnableTokenRevocation'] = input[:enable_token_revocation] unless input[:enable_token_revocation].nil?
        data['EnablePropagateAdditionalUserContextData'] = input[:enable_propagate_additional_user_context_data] unless input[:enable_propagate_additional_user_context_data].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUserPoolDomain
    class UpdateUserPoolDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.UpdateUserPoolDomain'
        data = {}
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['UserPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['CustomDomainConfig'] = Builders::CustomDomainConfigType.build(input[:custom_domain_config]) unless input[:custom_domain_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for VerifySoftwareToken
    class VerifySoftwareToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.VerifySoftwareToken'
        data = {}
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        data['Session'] = input[:session] unless input[:session].nil?
        data['UserCode'] = input[:user_code] unless input[:user_code].nil?
        data['FriendlyDeviceName'] = input[:friendly_device_name] unless input[:friendly_device_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for VerifyUserAttribute
    class VerifyUserAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSCognitoIdentityProviderService.VerifyUserAttribute'
        data = {}
        data['AccessToken'] = input[:access_token] unless input[:access_token].nil?
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['Code'] = input[:code] unless input[:code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
