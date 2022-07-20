# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AmplifyBackend
  module Parsers

    # Operation Parser for CloneBackend
    class CloneBackend
      def self.parse(http_resp)
        data = Types::CloneBackendOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.error = map['error']
        data.job_id = map['jobId']
        data.operation = map['operation']
        data.status = map['status']
        data
      end
    end

    # Error Parser for GatewayTimeoutException
    class GatewayTimeoutException
      def self.parse(http_resp)
        data = Types::GatewayTimeoutException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.limit_type = map['limitType']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateBackend
    class CreateBackend
      def self.parse(http_resp)
        data = Types::CreateBackendOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.error = map['error']
        data.job_id = map['jobId']
        data.operation = map['operation']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for CreateBackendAPI
    class CreateBackendAPI
      def self.parse(http_resp)
        data = Types::CreateBackendAPIOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.error = map['error']
        data.job_id = map['jobId']
        data.operation = map['operation']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for CreateBackendAuth
    class CreateBackendAuth
      def self.parse(http_resp)
        data = Types::CreateBackendAuthOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.error = map['error']
        data.job_id = map['jobId']
        data.operation = map['operation']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for CreateBackendConfig
    class CreateBackendConfig
      def self.parse(http_resp)
        data = Types::CreateBackendConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.job_id = map['jobId']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for CreateBackendStorage
    class CreateBackendStorage
      def self.parse(http_resp)
        data = Types::CreateBackendStorageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.job_id = map['jobId']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for CreateToken
    class CreateToken
      def self.parse(http_resp)
        data = Types::CreateTokenOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.challenge_code = map['challengeCode']
        data.session_id = map['sessionId']
        data.ttl = map['ttl']
        data
      end
    end

    # Operation Parser for DeleteBackend
    class DeleteBackend
      def self.parse(http_resp)
        data = Types::DeleteBackendOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.error = map['error']
        data.job_id = map['jobId']
        data.operation = map['operation']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for DeleteBackendAPI
    class DeleteBackendAPI
      def self.parse(http_resp)
        data = Types::DeleteBackendAPIOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.error = map['error']
        data.job_id = map['jobId']
        data.operation = map['operation']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for DeleteBackendAuth
    class DeleteBackendAuth
      def self.parse(http_resp)
        data = Types::DeleteBackendAuthOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.error = map['error']
        data.job_id = map['jobId']
        data.operation = map['operation']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for DeleteBackendStorage
    class DeleteBackendStorage
      def self.parse(http_resp)
        data = Types::DeleteBackendStorageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.job_id = map['jobId']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for DeleteToken
    class DeleteToken
      def self.parse(http_resp)
        data = Types::DeleteTokenOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.is_success = map['isSuccess']
        data
      end
    end

    # Operation Parser for GenerateBackendAPIModels
    class GenerateBackendAPIModels
      def self.parse(http_resp)
        data = Types::GenerateBackendAPIModelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.error = map['error']
        data.job_id = map['jobId']
        data.operation = map['operation']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for GetBackend
    class GetBackend
      def self.parse(http_resp)
        data = Types::GetBackendOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.amplify_feature_flags = map['amplifyFeatureFlags']
        data.amplify_meta_config = map['amplifyMetaConfig']
        data.app_id = map['appId']
        data.app_name = map['appName']
        data.backend_environment_list = (ListOf__string.parse(map['backendEnvironmentList']) unless map['backendEnvironmentList'].nil?)
        data.backend_environment_name = map['backendEnvironmentName']
        data.error = map['error']
        data
      end
    end

    class ListOf__string
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetBackendAPI
    class GetBackendAPI
      def self.parse(http_resp)
        data = Types::GetBackendAPIOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.error = map['error']
        data.resource_config = (BackendAPIResourceConfig.parse(map['resourceConfig']) unless map['resourceConfig'].nil?)
        data.resource_name = map['resourceName']
        data
      end
    end

    class BackendAPIResourceConfig
      def self.parse(map)
        data = Types::BackendAPIResourceConfig.new
        data.additional_auth_types = (ListOfBackendAPIAuthType.parse(map['additionalAuthTypes']) unless map['additionalAuthTypes'].nil?)
        data.api_name = map['apiName']
        data.conflict_resolution = (BackendAPIConflictResolution.parse(map['conflictResolution']) unless map['conflictResolution'].nil?)
        data.default_auth_type = (BackendAPIAuthType.parse(map['defaultAuthType']) unless map['defaultAuthType'].nil?)
        data.service = map['service']
        data.transform_schema = map['transformSchema']
        return data
      end
    end

    class BackendAPIAuthType
      def self.parse(map)
        data = Types::BackendAPIAuthType.new
        data.mode = map['mode']
        data.settings = (BackendAPIAppSyncAuthSettings.parse(map['settings']) unless map['settings'].nil?)
        return data
      end
    end

    class BackendAPIAppSyncAuthSettings
      def self.parse(map)
        data = Types::BackendAPIAppSyncAuthSettings.new
        data.cognito_user_pool_id = map['cognitoUserPoolId']
        data.description = map['description']
        data.expiration_time = Hearth::NumberHelper.deserialize(map['expirationTime'])
        data.open_id_auth_ttl = map['openIDAuthTTL']
        data.open_id_client_id = map['openIDClientId']
        data.open_id_iat_ttl = map['openIDIatTTL']
        data.open_id_issue_url = map['openIDIssueURL']
        data.open_id_provider_name = map['openIDProviderName']
        return data
      end
    end

    class BackendAPIConflictResolution
      def self.parse(map)
        data = Types::BackendAPIConflictResolution.new
        data.resolution_strategy = map['resolutionStrategy']
        return data
      end
    end

    class ListOfBackendAPIAuthType
      def self.parse(list)
        data = []
        list.map do |value|
          data << BackendAPIAuthType.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetBackendAPIModels
    class GetBackendAPIModels
      def self.parse(http_resp)
        data = Types::GetBackendAPIModelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.models = map['models']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for GetBackendAuth
    class GetBackendAuth
      def self.parse(http_resp)
        data = Types::GetBackendAuthOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.error = map['error']
        data.resource_config = (CreateBackendAuthResourceConfig.parse(map['resourceConfig']) unless map['resourceConfig'].nil?)
        data.resource_name = map['resourceName']
        data
      end
    end

    class CreateBackendAuthResourceConfig
      def self.parse(map)
        data = Types::CreateBackendAuthResourceConfig.new
        data.auth_resources = map['authResources']
        data.identity_pool_configs = (CreateBackendAuthIdentityPoolConfig.parse(map['identityPoolConfigs']) unless map['identityPoolConfigs'].nil?)
        data.service = map['service']
        data.user_pool_configs = (CreateBackendAuthUserPoolConfig.parse(map['userPoolConfigs']) unless map['userPoolConfigs'].nil?)
        return data
      end
    end

    class CreateBackendAuthUserPoolConfig
      def self.parse(map)
        data = Types::CreateBackendAuthUserPoolConfig.new
        data.forgot_password = (CreateBackendAuthForgotPasswordConfig.parse(map['forgotPassword']) unless map['forgotPassword'].nil?)
        data.mfa = (CreateBackendAuthMFAConfig.parse(map['mfa']) unless map['mfa'].nil?)
        data.o_auth = (CreateBackendAuthOAuthConfig.parse(map['oAuth']) unless map['oAuth'].nil?)
        data.password_policy = (CreateBackendAuthPasswordPolicyConfig.parse(map['passwordPolicy']) unless map['passwordPolicy'].nil?)
        data.required_sign_up_attributes = (ListOfRequiredSignUpAttributesElement.parse(map['requiredSignUpAttributes']) unless map['requiredSignUpAttributes'].nil?)
        data.sign_in_method = map['signInMethod']
        data.user_pool_name = map['userPoolName']
        data.verification_message = (CreateBackendAuthVerificationMessageConfig.parse(map['verificationMessage']) unless map['verificationMessage'].nil?)
        return data
      end
    end

    class CreateBackendAuthVerificationMessageConfig
      def self.parse(map)
        data = Types::CreateBackendAuthVerificationMessageConfig.new
        data.delivery_method = map['deliveryMethod']
        data.email_settings = (EmailSettings.parse(map['emailSettings']) unless map['emailSettings'].nil?)
        data.sms_settings = (SmsSettings.parse(map['smsSettings']) unless map['smsSettings'].nil?)
        return data
      end
    end

    class SmsSettings
      def self.parse(map)
        data = Types::SmsSettings.new
        data.sms_message = map['smsMessage']
        return data
      end
    end

    class EmailSettings
      def self.parse(map)
        data = Types::EmailSettings.new
        data.email_message = map['emailMessage']
        data.email_subject = map['emailSubject']
        return data
      end
    end

    class ListOfRequiredSignUpAttributesElement
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class CreateBackendAuthPasswordPolicyConfig
      def self.parse(map)
        data = Types::CreateBackendAuthPasswordPolicyConfig.new
        data.additional_constraints = (ListOfAdditionalConstraintsElement.parse(map['additionalConstraints']) unless map['additionalConstraints'].nil?)
        data.minimum_length = Hearth::NumberHelper.deserialize(map['minimumLength'])
        return data
      end
    end

    class ListOfAdditionalConstraintsElement
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class CreateBackendAuthOAuthConfig
      def self.parse(map)
        data = Types::CreateBackendAuthOAuthConfig.new
        data.domain_prefix = map['domainPrefix']
        data.o_auth_grant_type = map['oAuthGrantType']
        data.o_auth_scopes = (ListOfOAuthScopesElement.parse(map['oAuthScopes']) unless map['oAuthScopes'].nil?)
        data.redirect_sign_in_ur_is = (ListOf__string.parse(map['redirectSignInURIs']) unless map['redirectSignInURIs'].nil?)
        data.redirect_sign_out_ur_is = (ListOf__string.parse(map['redirectSignOutURIs']) unless map['redirectSignOutURIs'].nil?)
        data.social_provider_settings = (SocialProviderSettings.parse(map['socialProviderSettings']) unless map['socialProviderSettings'].nil?)
        return data
      end
    end

    class SocialProviderSettings
      def self.parse(map)
        data = Types::SocialProviderSettings.new
        data.facebook = (BackendAuthSocialProviderConfig.parse(map['Facebook']) unless map['Facebook'].nil?)
        data.google = (BackendAuthSocialProviderConfig.parse(map['Google']) unless map['Google'].nil?)
        data.login_with_amazon = (BackendAuthSocialProviderConfig.parse(map['LoginWithAmazon']) unless map['LoginWithAmazon'].nil?)
        data.sign_in_with_apple = (BackendAuthAppleProviderConfig.parse(map['SignInWithApple']) unless map['SignInWithApple'].nil?)
        return data
      end
    end

    class BackendAuthAppleProviderConfig
      def self.parse(map)
        data = Types::BackendAuthAppleProviderConfig.new
        data.client_id = map['client_id']
        data.key_id = map['key_id']
        data.private_key = map['private_key']
        data.team_id = map['team_id']
        return data
      end
    end

    class BackendAuthSocialProviderConfig
      def self.parse(map)
        data = Types::BackendAuthSocialProviderConfig.new
        data.client_id = map['client_id']
        data.client_secret = map['client_secret']
        return data
      end
    end

    class ListOfOAuthScopesElement
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class CreateBackendAuthMFAConfig
      def self.parse(map)
        data = Types::CreateBackendAuthMFAConfig.new
        data.mfa_mode = map['MFAMode']
        data.settings = (Settings.parse(map['settings']) unless map['settings'].nil?)
        return data
      end
    end

    class Settings
      def self.parse(map)
        data = Types::Settings.new
        data.mfa_types = (ListOfMfaTypesElement.parse(map['mfaTypes']) unless map['mfaTypes'].nil?)
        data.sms_message = map['smsMessage']
        return data
      end
    end

    class ListOfMfaTypesElement
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class CreateBackendAuthForgotPasswordConfig
      def self.parse(map)
        data = Types::CreateBackendAuthForgotPasswordConfig.new
        data.delivery_method = map['deliveryMethod']
        data.email_settings = (EmailSettings.parse(map['emailSettings']) unless map['emailSettings'].nil?)
        data.sms_settings = (SmsSettings.parse(map['smsSettings']) unless map['smsSettings'].nil?)
        return data
      end
    end

    class CreateBackendAuthIdentityPoolConfig
      def self.parse(map)
        data = Types::CreateBackendAuthIdentityPoolConfig.new
        data.identity_pool_name = map['identityPoolName']
        data.unauthenticated_login = map['unauthenticatedLogin']
        return data
      end
    end

    # Operation Parser for GetBackendJob
    class GetBackendJob
      def self.parse(http_resp)
        data = Types::GetBackendJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.create_time = map['createTime']
        data.error = map['error']
        data.job_id = map['jobId']
        data.operation = map['operation']
        data.status = map['status']
        data.update_time = map['updateTime']
        data
      end
    end

    # Operation Parser for GetBackendStorage
    class GetBackendStorage
      def self.parse(http_resp)
        data = Types::GetBackendStorageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.resource_config = (GetBackendStorageResourceConfig.parse(map['resourceConfig']) unless map['resourceConfig'].nil?)
        data.resource_name = map['resourceName']
        data
      end
    end

    class GetBackendStorageResourceConfig
      def self.parse(map)
        data = Types::GetBackendStorageResourceConfig.new
        data.bucket_name = map['bucketName']
        data.imported = map['imported']
        data.permissions = (BackendStoragePermissions.parse(map['permissions']) unless map['permissions'].nil?)
        data.service_name = map['serviceName']
        return data
      end
    end

    class BackendStoragePermissions
      def self.parse(map)
        data = Types::BackendStoragePermissions.new
        data.authenticated = (ListOfAuthenticatedElement.parse(map['authenticated']) unless map['authenticated'].nil?)
        data.un_authenticated = (ListOfUnAuthenticatedElement.parse(map['unAuthenticated']) unless map['unAuthenticated'].nil?)
        return data
      end
    end

    class ListOfUnAuthenticatedElement
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ListOfAuthenticatedElement
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetToken
    class GetToken
      def self.parse(http_resp)
        data = Types::GetTokenOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.challenge_code = map['challengeCode']
        data.session_id = map['sessionId']
        data.ttl = map['ttl']
        data
      end
    end

    # Operation Parser for ImportBackendAuth
    class ImportBackendAuth
      def self.parse(http_resp)
        data = Types::ImportBackendAuthOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.error = map['error']
        data.job_id = map['jobId']
        data.operation = map['operation']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for ImportBackendStorage
    class ImportBackendStorage
      def self.parse(http_resp)
        data = Types::ImportBackendStorageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.job_id = map['jobId']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for ListBackendJobs
    class ListBackendJobs
      def self.parse(http_resp)
        data = Types::ListBackendJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.jobs = (ListOfBackendJobRespObj.parse(map['jobs']) unless map['jobs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ListOfBackendJobRespObj
      def self.parse(list)
        data = []
        list.map do |value|
          data << BackendJobRespObj.parse(value) unless value.nil?
        end
        data
      end
    end

    class BackendJobRespObj
      def self.parse(map)
        data = Types::BackendJobRespObj.new
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.create_time = map['createTime']
        data.error = map['error']
        data.job_id = map['jobId']
        data.operation = map['operation']
        data.status = map['status']
        data.update_time = map['updateTime']
        return data
      end
    end

    # Operation Parser for ListS3Buckets
    class ListS3Buckets
      def self.parse(http_resp)
        data = Types::ListS3BucketsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.buckets = (ListOfS3BucketInfo.parse(map['buckets']) unless map['buckets'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ListOfS3BucketInfo
      def self.parse(list)
        data = []
        list.map do |value|
          data << S3BucketInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class S3BucketInfo
      def self.parse(map)
        data = Types::S3BucketInfo.new
        data.creation_date = map['creationDate']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for RemoveAllBackends
    class RemoveAllBackends
      def self.parse(http_resp)
        data = Types::RemoveAllBackendsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.error = map['error']
        data.job_id = map['jobId']
        data.operation = map['operation']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for RemoveBackendConfig
    class RemoveBackendConfig
      def self.parse(http_resp)
        data = Types::RemoveBackendConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.error = map['error']
        data
      end
    end

    # Operation Parser for UpdateBackendAPI
    class UpdateBackendAPI
      def self.parse(http_resp)
        data = Types::UpdateBackendAPIOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.error = map['error']
        data.job_id = map['jobId']
        data.operation = map['operation']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for UpdateBackendAuth
    class UpdateBackendAuth
      def self.parse(http_resp)
        data = Types::UpdateBackendAuthOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.error = map['error']
        data.job_id = map['jobId']
        data.operation = map['operation']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for UpdateBackendConfig
    class UpdateBackendConfig
      def self.parse(http_resp)
        data = Types::UpdateBackendConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_manager_app_id = map['backendManagerAppId']
        data.error = map['error']
        data.login_auth_config = (LoginAuthConfigReqObj.parse(map['loginAuthConfig']) unless map['loginAuthConfig'].nil?)
        data
      end
    end

    class LoginAuthConfigReqObj
      def self.parse(map)
        data = Types::LoginAuthConfigReqObj.new
        data.aws_cognito_identity_pool_id = map['aws_cognito_identity_pool_id']
        data.aws_cognito_region = map['aws_cognito_region']
        data.aws_user_pools_id = map['aws_user_pools_id']
        data.aws_user_pools_web_client_id = map['aws_user_pools_web_client_id']
        return data
      end
    end

    # Operation Parser for UpdateBackendJob
    class UpdateBackendJob
      def self.parse(http_resp)
        data = Types::UpdateBackendJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.create_time = map['createTime']
        data.error = map['error']
        data.job_id = map['jobId']
        data.operation = map['operation']
        data.status = map['status']
        data.update_time = map['updateTime']
        data
      end
    end

    # Operation Parser for UpdateBackendStorage
    class UpdateBackendStorage
      def self.parse(http_resp)
        data = Types::UpdateBackendStorageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.app_id = map['appId']
        data.backend_environment_name = map['backendEnvironmentName']
        data.job_id = map['jobId']
        data.status = map['status']
        data
      end
    end
  end
end
