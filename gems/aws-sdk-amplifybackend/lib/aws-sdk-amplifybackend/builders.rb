# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::AmplifyBackend
  module Builders

    # Operation Builder for CloneBackend
    class CloneBackend
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/environments/%<BackendEnvironmentName>s/clone',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['targetEnvironmentName'] = input[:target_environment_name] unless input[:target_environment_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateBackend
    class CreateBackend
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/backend')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['appId'] = input[:app_id] unless input[:app_id].nil?
        data['appName'] = input[:app_name] unless input[:app_name].nil?
        data['backendEnvironmentName'] = input[:backend_environment_name] unless input[:backend_environment_name].nil?
        data['resourceConfig'] = ResourceConfig.build(input[:resource_config]) unless input[:resource_config].nil?
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ResourceConfig
    class ResourceConfig
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for CreateBackendAPI
    class CreateBackendAPI
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/api',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['backendEnvironmentName'] = input[:backend_environment_name] unless input[:backend_environment_name].nil?
        data['resourceConfig'] = BackendAPIResourceConfig.build(input[:resource_config]) unless input[:resource_config].nil?
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BackendAPIResourceConfig
    class BackendAPIResourceConfig
      def self.build(input)
        data = {}
        data['additionalAuthTypes'] = ListOfBackendAPIAuthType.build(input[:additional_auth_types]) unless input[:additional_auth_types].nil?
        data['apiName'] = input[:api_name] unless input[:api_name].nil?
        data['conflictResolution'] = BackendAPIConflictResolution.build(input[:conflict_resolution]) unless input[:conflict_resolution].nil?
        data['defaultAuthType'] = BackendAPIAuthType.build(input[:default_auth_type]) unless input[:default_auth_type].nil?
        data['service'] = input[:service] unless input[:service].nil?
        data['transformSchema'] = input[:transform_schema] unless input[:transform_schema].nil?
        data
      end
    end

    # Structure Builder for BackendAPIAuthType
    class BackendAPIAuthType
      def self.build(input)
        data = {}
        data['mode'] = input[:mode] unless input[:mode].nil?
        data['settings'] = BackendAPIAppSyncAuthSettings.build(input[:settings]) unless input[:settings].nil?
        data
      end
    end

    # Structure Builder for BackendAPIAppSyncAuthSettings
    class BackendAPIAppSyncAuthSettings
      def self.build(input)
        data = {}
        data['cognitoUserPoolId'] = input[:cognito_user_pool_id] unless input[:cognito_user_pool_id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['expirationTime'] = Hearth::NumberHelper.serialize(input[:expiration_time]) unless input[:expiration_time].nil?
        data['openIDAuthTTL'] = input[:open_id_auth_ttl] unless input[:open_id_auth_ttl].nil?
        data['openIDClientId'] = input[:open_id_client_id] unless input[:open_id_client_id].nil?
        data['openIDIatTTL'] = input[:open_id_iat_ttl] unless input[:open_id_iat_ttl].nil?
        data['openIDIssueURL'] = input[:open_id_issue_url] unless input[:open_id_issue_url].nil?
        data['openIDProviderName'] = input[:open_id_provider_name] unless input[:open_id_provider_name].nil?
        data
      end
    end

    # Structure Builder for BackendAPIConflictResolution
    class BackendAPIConflictResolution
      def self.build(input)
        data = {}
        data['resolutionStrategy'] = input[:resolution_strategy] unless input[:resolution_strategy].nil?
        data
      end
    end

    # List Builder for ListOfBackendAPIAuthType
    class ListOfBackendAPIAuthType
      def self.build(input)
        data = []
        input.each do |element|
          data << BackendAPIAuthType.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateBackendAuth
    class CreateBackendAuth
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/auth',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['backendEnvironmentName'] = input[:backend_environment_name] unless input[:backend_environment_name].nil?
        data['resourceConfig'] = CreateBackendAuthResourceConfig.build(input[:resource_config]) unless input[:resource_config].nil?
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CreateBackendAuthResourceConfig
    class CreateBackendAuthResourceConfig
      def self.build(input)
        data = {}
        data['authResources'] = input[:auth_resources] unless input[:auth_resources].nil?
        data['identityPoolConfigs'] = CreateBackendAuthIdentityPoolConfig.build(input[:identity_pool_configs]) unless input[:identity_pool_configs].nil?
        data['service'] = input[:service] unless input[:service].nil?
        data['userPoolConfigs'] = CreateBackendAuthUserPoolConfig.build(input[:user_pool_configs]) unless input[:user_pool_configs].nil?
        data
      end
    end

    # Structure Builder for CreateBackendAuthUserPoolConfig
    class CreateBackendAuthUserPoolConfig
      def self.build(input)
        data = {}
        data['forgotPassword'] = CreateBackendAuthForgotPasswordConfig.build(input[:forgot_password]) unless input[:forgot_password].nil?
        data['mfa'] = CreateBackendAuthMFAConfig.build(input[:mfa]) unless input[:mfa].nil?
        data['oAuth'] = CreateBackendAuthOAuthConfig.build(input[:o_auth]) unless input[:o_auth].nil?
        data['passwordPolicy'] = CreateBackendAuthPasswordPolicyConfig.build(input[:password_policy]) unless input[:password_policy].nil?
        data['requiredSignUpAttributes'] = ListOfRequiredSignUpAttributesElement.build(input[:required_sign_up_attributes]) unless input[:required_sign_up_attributes].nil?
        data['signInMethod'] = input[:sign_in_method] unless input[:sign_in_method].nil?
        data['userPoolName'] = input[:user_pool_name] unless input[:user_pool_name].nil?
        data['verificationMessage'] = CreateBackendAuthVerificationMessageConfig.build(input[:verification_message]) unless input[:verification_message].nil?
        data
      end
    end

    # Structure Builder for CreateBackendAuthVerificationMessageConfig
    class CreateBackendAuthVerificationMessageConfig
      def self.build(input)
        data = {}
        data['deliveryMethod'] = input[:delivery_method] unless input[:delivery_method].nil?
        data['emailSettings'] = EmailSettings.build(input[:email_settings]) unless input[:email_settings].nil?
        data['smsSettings'] = SmsSettings.build(input[:sms_settings]) unless input[:sms_settings].nil?
        data
      end
    end

    # Structure Builder for SmsSettings
    class SmsSettings
      def self.build(input)
        data = {}
        data['smsMessage'] = input[:sms_message] unless input[:sms_message].nil?
        data
      end
    end

    # Structure Builder for EmailSettings
    class EmailSettings
      def self.build(input)
        data = {}
        data['emailMessage'] = input[:email_message] unless input[:email_message].nil?
        data['emailSubject'] = input[:email_subject] unless input[:email_subject].nil?
        data
      end
    end

    # List Builder for ListOfRequiredSignUpAttributesElement
    class ListOfRequiredSignUpAttributesElement
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateBackendAuthPasswordPolicyConfig
    class CreateBackendAuthPasswordPolicyConfig
      def self.build(input)
        data = {}
        data['additionalConstraints'] = ListOfAdditionalConstraintsElement.build(input[:additional_constraints]) unless input[:additional_constraints].nil?
        data['minimumLength'] = Hearth::NumberHelper.serialize(input[:minimum_length]) unless input[:minimum_length].nil?
        data
      end
    end

    # List Builder for ListOfAdditionalConstraintsElement
    class ListOfAdditionalConstraintsElement
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateBackendAuthOAuthConfig
    class CreateBackendAuthOAuthConfig
      def self.build(input)
        data = {}
        data['domainPrefix'] = input[:domain_prefix] unless input[:domain_prefix].nil?
        data['oAuthGrantType'] = input[:o_auth_grant_type] unless input[:o_auth_grant_type].nil?
        data['oAuthScopes'] = ListOfOAuthScopesElement.build(input[:o_auth_scopes]) unless input[:o_auth_scopes].nil?
        data['redirectSignInURIs'] = ListOf__string.build(input[:redirect_sign_in_ur_is]) unless input[:redirect_sign_in_ur_is].nil?
        data['redirectSignOutURIs'] = ListOf__string.build(input[:redirect_sign_out_ur_is]) unless input[:redirect_sign_out_ur_is].nil?
        data['socialProviderSettings'] = SocialProviderSettings.build(input[:social_provider_settings]) unless input[:social_provider_settings].nil?
        data
      end
    end

    # Structure Builder for SocialProviderSettings
    class SocialProviderSettings
      def self.build(input)
        data = {}
        data['Facebook'] = BackendAuthSocialProviderConfig.build(input[:facebook]) unless input[:facebook].nil?
        data['Google'] = BackendAuthSocialProviderConfig.build(input[:google]) unless input[:google].nil?
        data['LoginWithAmazon'] = BackendAuthSocialProviderConfig.build(input[:login_with_amazon]) unless input[:login_with_amazon].nil?
        data['SignInWithApple'] = BackendAuthAppleProviderConfig.build(input[:sign_in_with_apple]) unless input[:sign_in_with_apple].nil?
        data
      end
    end

    # Structure Builder for BackendAuthAppleProviderConfig
    class BackendAuthAppleProviderConfig
      def self.build(input)
        data = {}
        data['client_id'] = input[:client_id] unless input[:client_id].nil?
        data['key_id'] = input[:key_id] unless input[:key_id].nil?
        data['private_key'] = input[:private_key] unless input[:private_key].nil?
        data['team_id'] = input[:team_id] unless input[:team_id].nil?
        data
      end
    end

    # Structure Builder for BackendAuthSocialProviderConfig
    class BackendAuthSocialProviderConfig
      def self.build(input)
        data = {}
        data['client_id'] = input[:client_id] unless input[:client_id].nil?
        data['client_secret'] = input[:client_secret] unless input[:client_secret].nil?
        data
      end
    end

    # List Builder for ListOf__string
    class ListOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ListOfOAuthScopesElement
    class ListOfOAuthScopesElement
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateBackendAuthMFAConfig
    class CreateBackendAuthMFAConfig
      def self.build(input)
        data = {}
        data['MFAMode'] = input[:mfa_mode] unless input[:mfa_mode].nil?
        data['settings'] = Settings.build(input[:settings]) unless input[:settings].nil?
        data
      end
    end

    # Structure Builder for Settings
    class Settings
      def self.build(input)
        data = {}
        data['mfaTypes'] = ListOfMfaTypesElement.build(input[:mfa_types]) unless input[:mfa_types].nil?
        data['smsMessage'] = input[:sms_message] unless input[:sms_message].nil?
        data
      end
    end

    # List Builder for ListOfMfaTypesElement
    class ListOfMfaTypesElement
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CreateBackendAuthForgotPasswordConfig
    class CreateBackendAuthForgotPasswordConfig
      def self.build(input)
        data = {}
        data['deliveryMethod'] = input[:delivery_method] unless input[:delivery_method].nil?
        data['emailSettings'] = EmailSettings.build(input[:email_settings]) unless input[:email_settings].nil?
        data['smsSettings'] = SmsSettings.build(input[:sms_settings]) unless input[:sms_settings].nil?
        data
      end
    end

    # Structure Builder for CreateBackendAuthIdentityPoolConfig
    class CreateBackendAuthIdentityPoolConfig
      def self.build(input)
        data = {}
        data['identityPoolName'] = input[:identity_pool_name] unless input[:identity_pool_name].nil?
        data['unauthenticatedLogin'] = input[:unauthenticated_login] unless input[:unauthenticated_login].nil?
        data
      end
    end

    # Operation Builder for CreateBackendConfig
    class CreateBackendConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/config',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['backendManagerAppId'] = input[:backend_manager_app_id] unless input[:backend_manager_app_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateBackendStorage
    class CreateBackendStorage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/storage',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['backendEnvironmentName'] = input[:backend_environment_name] unless input[:backend_environment_name].nil?
        data['resourceConfig'] = CreateBackendStorageResourceConfig.build(input[:resource_config]) unless input[:resource_config].nil?
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CreateBackendStorageResourceConfig
    class CreateBackendStorageResourceConfig
      def self.build(input)
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['permissions'] = BackendStoragePermissions.build(input[:permissions]) unless input[:permissions].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data
      end
    end

    # Structure Builder for BackendStoragePermissions
    class BackendStoragePermissions
      def self.build(input)
        data = {}
        data['authenticated'] = ListOfAuthenticatedElement.build(input[:authenticated]) unless input[:authenticated].nil?
        data['unAuthenticated'] = ListOfUnAuthenticatedElement.build(input[:un_authenticated]) unless input[:un_authenticated].nil?
        data
      end
    end

    # List Builder for ListOfUnAuthenticatedElement
    class ListOfUnAuthenticatedElement
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ListOfAuthenticatedElement
    class ListOfAuthenticatedElement
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateToken
    class CreateToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/challenge',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBackend
    class DeleteBackend
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/environments/%<BackendEnvironmentName>s/remove',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBackendAPI
    class DeleteBackendAPI
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/api/%<BackendEnvironmentName>s/remove',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceConfig'] = BackendAPIResourceConfig.build(input[:resource_config]) unless input[:resource_config].nil?
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBackendAuth
    class DeleteBackendAuth
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/auth/%<BackendEnvironmentName>s/remove',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBackendStorage
    class DeleteBackendStorage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/storage/%<BackendEnvironmentName>s/remove',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteToken
    class DeleteToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/challenge/%<SessionId>s/remove',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            SessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GenerateBackendAPIModels
    class GenerateBackendAPIModels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/api/%<BackendEnvironmentName>s/generateModels',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBackend
    class GetBackend
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/details',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['backendEnvironmentName'] = input[:backend_environment_name] unless input[:backend_environment_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBackendAPI
    class GetBackendAPI
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/api/%<BackendEnvironmentName>s/details',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceConfig'] = BackendAPIResourceConfig.build(input[:resource_config]) unless input[:resource_config].nil?
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBackendAPIModels
    class GetBackendAPIModels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/api/%<BackendEnvironmentName>s/getModels',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBackendAuth
    class GetBackendAuth
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/auth/%<BackendEnvironmentName>s/details',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBackendJob
    class GetBackendJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/job/%<BackendEnvironmentName>s/%<JobId>s',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s),
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBackendStorage
    class GetBackendStorage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/storage/%<BackendEnvironmentName>s/details',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetToken
    class GetToken
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/challenge/%<SessionId>s',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            SessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ImportBackendAuth
    class ImportBackendAuth
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/auth/%<BackendEnvironmentName>s/import',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['identityPoolId'] = input[:identity_pool_id] unless input[:identity_pool_id].nil?
        data['nativeClientId'] = input[:native_client_id] unless input[:native_client_id].nil?
        data['userPoolId'] = input[:user_pool_id] unless input[:user_pool_id].nil?
        data['webClientId'] = input[:web_client_id] unless input[:web_client_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportBackendStorage
    class ImportBackendStorage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/storage/%<BackendEnvironmentName>s/import',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListBackendJobs
    class ListBackendJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/job/%<BackendEnvironmentName>s',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['operation'] = input[:operation] unless input[:operation].nil?
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListS3Buckets
    class ListS3Buckets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/s3Buckets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveAllBackends
    class RemoveAllBackends
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/remove',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['cleanAmplifyApp'] = input[:clean_amplify_app] unless input[:clean_amplify_app].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveBackendConfig
    class RemoveBackendConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/config/remove',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UpdateBackendAPI
    class UpdateBackendAPI
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/api/%<BackendEnvironmentName>s',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceConfig'] = BackendAPIResourceConfig.build(input[:resource_config]) unless input[:resource_config].nil?
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateBackendAuth
    class UpdateBackendAuth
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/auth/%<BackendEnvironmentName>s',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceConfig'] = UpdateBackendAuthResourceConfig.build(input[:resource_config]) unless input[:resource_config].nil?
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateBackendAuthResourceConfig
    class UpdateBackendAuthResourceConfig
      def self.build(input)
        data = {}
        data['authResources'] = input[:auth_resources] unless input[:auth_resources].nil?
        data['identityPoolConfigs'] = UpdateBackendAuthIdentityPoolConfig.build(input[:identity_pool_configs]) unless input[:identity_pool_configs].nil?
        data['service'] = input[:service] unless input[:service].nil?
        data['userPoolConfigs'] = UpdateBackendAuthUserPoolConfig.build(input[:user_pool_configs]) unless input[:user_pool_configs].nil?
        data
      end
    end

    # Structure Builder for UpdateBackendAuthUserPoolConfig
    class UpdateBackendAuthUserPoolConfig
      def self.build(input)
        data = {}
        data['forgotPassword'] = UpdateBackendAuthForgotPasswordConfig.build(input[:forgot_password]) unless input[:forgot_password].nil?
        data['mfa'] = UpdateBackendAuthMFAConfig.build(input[:mfa]) unless input[:mfa].nil?
        data['oAuth'] = UpdateBackendAuthOAuthConfig.build(input[:o_auth]) unless input[:o_auth].nil?
        data['passwordPolicy'] = UpdateBackendAuthPasswordPolicyConfig.build(input[:password_policy]) unless input[:password_policy].nil?
        data['verificationMessage'] = UpdateBackendAuthVerificationMessageConfig.build(input[:verification_message]) unless input[:verification_message].nil?
        data
      end
    end

    # Structure Builder for UpdateBackendAuthVerificationMessageConfig
    class UpdateBackendAuthVerificationMessageConfig
      def self.build(input)
        data = {}
        data['deliveryMethod'] = input[:delivery_method] unless input[:delivery_method].nil?
        data['emailSettings'] = EmailSettings.build(input[:email_settings]) unless input[:email_settings].nil?
        data['smsSettings'] = SmsSettings.build(input[:sms_settings]) unless input[:sms_settings].nil?
        data
      end
    end

    # Structure Builder for UpdateBackendAuthPasswordPolicyConfig
    class UpdateBackendAuthPasswordPolicyConfig
      def self.build(input)
        data = {}
        data['additionalConstraints'] = ListOfAdditionalConstraintsElement.build(input[:additional_constraints]) unless input[:additional_constraints].nil?
        data['minimumLength'] = Hearth::NumberHelper.serialize(input[:minimum_length]) unless input[:minimum_length].nil?
        data
      end
    end

    # Structure Builder for UpdateBackendAuthOAuthConfig
    class UpdateBackendAuthOAuthConfig
      def self.build(input)
        data = {}
        data['domainPrefix'] = input[:domain_prefix] unless input[:domain_prefix].nil?
        data['oAuthGrantType'] = input[:o_auth_grant_type] unless input[:o_auth_grant_type].nil?
        data['oAuthScopes'] = ListOfOAuthScopesElement.build(input[:o_auth_scopes]) unless input[:o_auth_scopes].nil?
        data['redirectSignInURIs'] = ListOf__string.build(input[:redirect_sign_in_ur_is]) unless input[:redirect_sign_in_ur_is].nil?
        data['redirectSignOutURIs'] = ListOf__string.build(input[:redirect_sign_out_ur_is]) unless input[:redirect_sign_out_ur_is].nil?
        data['socialProviderSettings'] = SocialProviderSettings.build(input[:social_provider_settings]) unless input[:social_provider_settings].nil?
        data
      end
    end

    # Structure Builder for UpdateBackendAuthMFAConfig
    class UpdateBackendAuthMFAConfig
      def self.build(input)
        data = {}
        data['MFAMode'] = input[:mfa_mode] unless input[:mfa_mode].nil?
        data['settings'] = Settings.build(input[:settings]) unless input[:settings].nil?
        data
      end
    end

    # Structure Builder for UpdateBackendAuthForgotPasswordConfig
    class UpdateBackendAuthForgotPasswordConfig
      def self.build(input)
        data = {}
        data['deliveryMethod'] = input[:delivery_method] unless input[:delivery_method].nil?
        data['emailSettings'] = EmailSettings.build(input[:email_settings]) unless input[:email_settings].nil?
        data['smsSettings'] = SmsSettings.build(input[:sms_settings]) unless input[:sms_settings].nil?
        data
      end
    end

    # Structure Builder for UpdateBackendAuthIdentityPoolConfig
    class UpdateBackendAuthIdentityPoolConfig
      def self.build(input)
        data = {}
        data['unauthenticatedLogin'] = input[:unauthenticated_login] unless input[:unauthenticated_login].nil?
        data
      end
    end

    # Operation Builder for UpdateBackendConfig
    class UpdateBackendConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/config/update',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['loginAuthConfig'] = LoginAuthConfigReqObj.build(input[:login_auth_config]) unless input[:login_auth_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for LoginAuthConfigReqObj
    class LoginAuthConfigReqObj
      def self.build(input)
        data = {}
        data['aws_cognito_identity_pool_id'] = input[:aws_cognito_identity_pool_id] unless input[:aws_cognito_identity_pool_id].nil?
        data['aws_cognito_region'] = input[:aws_cognito_region] unless input[:aws_cognito_region].nil?
        data['aws_user_pools_id'] = input[:aws_user_pools_id] unless input[:aws_user_pools_id].nil?
        data['aws_user_pools_web_client_id'] = input[:aws_user_pools_web_client_id] unless input[:aws_user_pools_web_client_id].nil?
        data
      end
    end

    # Operation Builder for UpdateBackendJob
    class UpdateBackendJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        if input[:job_id].to_s.empty?
          raise ArgumentError, "HTTP label :job_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/job/%<BackendEnvironmentName>s/%<JobId>s',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s),
            JobId: Hearth::HTTP.uri_escape(input[:job_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['operation'] = input[:operation] unless input[:operation].nil?
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateBackendStorage
    class UpdateBackendStorage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:backend_environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :backend_environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/backend/%<AppId>s/storage/%<BackendEnvironmentName>s',
            AppId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            BackendEnvironmentName: Hearth::HTTP.uri_escape(input[:backend_environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceConfig'] = UpdateBackendStorageResourceConfig.build(input[:resource_config]) unless input[:resource_config].nil?
        data['resourceName'] = input[:resource_name] unless input[:resource_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateBackendStorageResourceConfig
    class UpdateBackendStorageResourceConfig
      def self.build(input)
        data = {}
        data['permissions'] = BackendStoragePermissions.build(input[:permissions]) unless input[:permissions].nil?
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data
      end
    end
  end
end
