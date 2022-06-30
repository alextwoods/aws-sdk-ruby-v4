# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AmplifyBackend
  module Validators

    class BackendAPIAppSyncAuthSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackendAPIAppSyncAuthSettings, context: context)
        Hearth::Validator.validate!(input[:cognito_user_pool_id], ::String, context: "#{context}[:cognito_user_pool_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:expiration_time], ::Float, context: "#{context}[:expiration_time]")
        Hearth::Validator.validate!(input[:open_id_auth_ttl], ::String, context: "#{context}[:open_id_auth_ttl]")
        Hearth::Validator.validate!(input[:open_id_client_id], ::String, context: "#{context}[:open_id_client_id]")
        Hearth::Validator.validate!(input[:open_id_iat_ttl], ::String, context: "#{context}[:open_id_iat_ttl]")
        Hearth::Validator.validate!(input[:open_id_issue_url], ::String, context: "#{context}[:open_id_issue_url]")
        Hearth::Validator.validate!(input[:open_id_provider_name], ::String, context: "#{context}[:open_id_provider_name]")
      end
    end

    class BackendAPIAuthType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackendAPIAuthType, context: context)
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Validators::BackendAPIAppSyncAuthSettings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
      end
    end

    class BackendAPIConflictResolution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackendAPIConflictResolution, context: context)
        Hearth::Validator.validate!(input[:resolution_strategy], ::String, context: "#{context}[:resolution_strategy]")
      end
    end

    class BackendAPIResourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackendAPIResourceConfig, context: context)
        Validators::ListOfBackendAPIAuthType.validate!(input[:additional_auth_types], context: "#{context}[:additional_auth_types]") unless input[:additional_auth_types].nil?
        Hearth::Validator.validate!(input[:api_name], ::String, context: "#{context}[:api_name]")
        Validators::BackendAPIConflictResolution.validate!(input[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless input[:conflict_resolution].nil?
        Validators::BackendAPIAuthType.validate!(input[:default_auth_type], context: "#{context}[:default_auth_type]") unless input[:default_auth_type].nil?
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Hearth::Validator.validate!(input[:transform_schema], ::String, context: "#{context}[:transform_schema]")
      end
    end

    class BackendAuthAppleProviderConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackendAuthAppleProviderConfig, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:private_key], ::String, context: "#{context}[:private_key]")
        Hearth::Validator.validate!(input[:team_id], ::String, context: "#{context}[:team_id]")
      end
    end

    class BackendAuthSocialProviderConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackendAuthSocialProviderConfig, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
      end
    end

    class BackendJobRespObj
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackendJobRespObj, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:create_time], ::String, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:update_time], ::String, context: "#{context}[:update_time]")
      end
    end

    class BackendStoragePermissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackendStoragePermissions, context: context)
        Validators::ListOfAuthenticatedElement.validate!(input[:authenticated], context: "#{context}[:authenticated]") unless input[:authenticated].nil?
        Validators::ListOfUnAuthenticatedElement.validate!(input[:un_authenticated], context: "#{context}[:un_authenticated]") unless input[:un_authenticated].nil?
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloneBackendInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloneBackendInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:target_environment_name], ::String, context: "#{context}[:target_environment_name]")
      end
    end

    class CloneBackendOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloneBackendOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateBackendAPIInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendAPIInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Validators::BackendAPIResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class CreateBackendAPIOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendAPIOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateBackendAuthForgotPasswordConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendAuthForgotPasswordConfig, context: context)
        Hearth::Validator.validate!(input[:delivery_method], ::String, context: "#{context}[:delivery_method]")
        Validators::EmailSettings.validate!(input[:email_settings], context: "#{context}[:email_settings]") unless input[:email_settings].nil?
        Validators::SmsSettings.validate!(input[:sms_settings], context: "#{context}[:sms_settings]") unless input[:sms_settings].nil?
      end
    end

    class CreateBackendAuthIdentityPoolConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendAuthIdentityPoolConfig, context: context)
        Hearth::Validator.validate!(input[:identity_pool_name], ::String, context: "#{context}[:identity_pool_name]")
        Hearth::Validator.validate!(input[:unauthenticated_login], ::TrueClass, ::FalseClass, context: "#{context}[:unauthenticated_login]")
      end
    end

    class CreateBackendAuthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendAuthInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Validators::CreateBackendAuthResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class CreateBackendAuthMFAConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendAuthMFAConfig, context: context)
        Hearth::Validator.validate!(input[:mfa_mode], ::String, context: "#{context}[:mfa_mode]")
        Validators::Settings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
      end
    end

    class CreateBackendAuthOAuthConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendAuthOAuthConfig, context: context)
        Hearth::Validator.validate!(input[:domain_prefix], ::String, context: "#{context}[:domain_prefix]")
        Hearth::Validator.validate!(input[:o_auth_grant_type], ::String, context: "#{context}[:o_auth_grant_type]")
        Validators::ListOfOAuthScopesElement.validate!(input[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless input[:o_auth_scopes].nil?
        Validators::ListOf__string.validate!(input[:redirect_sign_in_ur_is], context: "#{context}[:redirect_sign_in_ur_is]") unless input[:redirect_sign_in_ur_is].nil?
        Validators::ListOf__string.validate!(input[:redirect_sign_out_ur_is], context: "#{context}[:redirect_sign_out_ur_is]") unless input[:redirect_sign_out_ur_is].nil?
        Validators::SocialProviderSettings.validate!(input[:social_provider_settings], context: "#{context}[:social_provider_settings]") unless input[:social_provider_settings].nil?
      end
    end

    class CreateBackendAuthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendAuthOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateBackendAuthPasswordPolicyConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendAuthPasswordPolicyConfig, context: context)
        Validators::ListOfAdditionalConstraintsElement.validate!(input[:additional_constraints], context: "#{context}[:additional_constraints]") unless input[:additional_constraints].nil?
        Hearth::Validator.validate!(input[:minimum_length], ::Float, context: "#{context}[:minimum_length]")
      end
    end

    class CreateBackendAuthResourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendAuthResourceConfig, context: context)
        Hearth::Validator.validate!(input[:auth_resources], ::String, context: "#{context}[:auth_resources]")
        Validators::CreateBackendAuthIdentityPoolConfig.validate!(input[:identity_pool_configs], context: "#{context}[:identity_pool_configs]") unless input[:identity_pool_configs].nil?
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Validators::CreateBackendAuthUserPoolConfig.validate!(input[:user_pool_configs], context: "#{context}[:user_pool_configs]") unless input[:user_pool_configs].nil?
      end
    end

    class CreateBackendAuthUserPoolConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendAuthUserPoolConfig, context: context)
        Validators::CreateBackendAuthForgotPasswordConfig.validate!(input[:forgot_password], context: "#{context}[:forgot_password]") unless input[:forgot_password].nil?
        Validators::CreateBackendAuthMFAConfig.validate!(input[:mfa], context: "#{context}[:mfa]") unless input[:mfa].nil?
        Validators::CreateBackendAuthOAuthConfig.validate!(input[:o_auth], context: "#{context}[:o_auth]") unless input[:o_auth].nil?
        Validators::CreateBackendAuthPasswordPolicyConfig.validate!(input[:password_policy], context: "#{context}[:password_policy]") unless input[:password_policy].nil?
        Validators::ListOfRequiredSignUpAttributesElement.validate!(input[:required_sign_up_attributes], context: "#{context}[:required_sign_up_attributes]") unless input[:required_sign_up_attributes].nil?
        Hearth::Validator.validate!(input[:sign_in_method], ::String, context: "#{context}[:sign_in_method]")
        Hearth::Validator.validate!(input[:user_pool_name], ::String, context: "#{context}[:user_pool_name]")
        Validators::CreateBackendAuthVerificationMessageConfig.validate!(input[:verification_message], context: "#{context}[:verification_message]") unless input[:verification_message].nil?
      end
    end

    class CreateBackendAuthVerificationMessageConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendAuthVerificationMessageConfig, context: context)
        Hearth::Validator.validate!(input[:delivery_method], ::String, context: "#{context}[:delivery_method]")
        Validators::EmailSettings.validate!(input[:email_settings], context: "#{context}[:email_settings]") unless input[:email_settings].nil?
        Validators::SmsSettings.validate!(input[:sms_settings], context: "#{context}[:sms_settings]") unless input[:sms_settings].nil?
      end
    end

    class CreateBackendConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendConfigInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_manager_app_id], ::String, context: "#{context}[:backend_manager_app_id]")
      end
    end

    class CreateBackendConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendConfigOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateBackendInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:app_name], ::String, context: "#{context}[:app_name]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Validators::ResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class CreateBackendOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateBackendStorageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendStorageInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Validators::CreateBackendStorageResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class CreateBackendStorageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendStorageOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateBackendStorageResourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBackendStorageResourceConfig, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Validators::BackendStoragePermissions.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class CreateTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTokenInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class CreateTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTokenOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:challenge_code], ::String, context: "#{context}[:challenge_code]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:ttl], ::String, context: "#{context}[:ttl]")
      end
    end

    class DeleteBackendAPIInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackendAPIInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Validators::BackendAPIResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class DeleteBackendAPIOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackendAPIOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteBackendAuthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackendAuthInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class DeleteBackendAuthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackendAuthOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteBackendInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackendInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
      end
    end

    class DeleteBackendOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackendOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteBackendStorageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackendStorageInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class DeleteBackendStorageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackendStorageOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTokenInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
      end
    end

    class DeleteTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTokenOutput, context: context)
        Hearth::Validator.validate!(input[:is_success], ::TrueClass, ::FalseClass, context: "#{context}[:is_success]")
      end
    end

    class EmailSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmailSettings, context: context)
        Hearth::Validator.validate!(input[:email_message], ::String, context: "#{context}[:email_message]")
        Hearth::Validator.validate!(input[:email_subject], ::String, context: "#{context}[:email_subject]")
      end
    end

    class GatewayTimeoutException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayTimeoutException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GenerateBackendAPIModelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateBackendAPIModelsInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class GenerateBackendAPIModelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateBackendAPIModelsOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class GetBackendAPIInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackendAPIInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Validators::BackendAPIResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class GetBackendAPIModelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackendAPIModelsInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class GetBackendAPIModelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackendAPIModelsOutput, context: context)
        Hearth::Validator.validate!(input[:models], ::String, context: "#{context}[:models]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class GetBackendAPIOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackendAPIOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Validators::BackendAPIResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class GetBackendAuthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackendAuthInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class GetBackendAuthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackendAuthOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Validators::CreateBackendAuthResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class GetBackendInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackendInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
      end
    end

    class GetBackendJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackendJobInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GetBackendJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackendJobOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:create_time], ::String, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:update_time], ::String, context: "#{context}[:update_time]")
      end
    end

    class GetBackendOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackendOutput, context: context)
        Hearth::Validator.validate!(input[:amplify_feature_flags], ::String, context: "#{context}[:amplify_feature_flags]")
        Hearth::Validator.validate!(input[:amplify_meta_config], ::String, context: "#{context}[:amplify_meta_config]")
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:app_name], ::String, context: "#{context}[:app_name]")
        Validators::ListOf__string.validate!(input[:backend_environment_list], context: "#{context}[:backend_environment_list]") unless input[:backend_environment_list].nil?
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
      end
    end

    class GetBackendStorageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackendStorageInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class GetBackendStorageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackendStorageOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Validators::GetBackendStorageResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class GetBackendStorageResourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBackendStorageResourceConfig, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:imported], ::TrueClass, ::FalseClass, context: "#{context}[:imported]")
        Validators::BackendStoragePermissions.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class GetTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTokenInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
      end
    end

    class GetTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTokenOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:challenge_code], ::String, context: "#{context}[:challenge_code]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:ttl], ::String, context: "#{context}[:ttl]")
      end
    end

    class ImportBackendAuthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportBackendAuthInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:identity_pool_id], ::String, context: "#{context}[:identity_pool_id]")
        Hearth::Validator.validate!(input[:native_client_id], ::String, context: "#{context}[:native_client_id]")
        Hearth::Validator.validate!(input[:user_pool_id], ::String, context: "#{context}[:user_pool_id]")
        Hearth::Validator.validate!(input[:web_client_id], ::String, context: "#{context}[:web_client_id]")
      end
    end

    class ImportBackendAuthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportBackendAuthOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ImportBackendStorageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportBackendStorageInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

    class ImportBackendStorageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportBackendStorageOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ListBackendJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackendJobsInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ListBackendJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBackendJobsOutput, context: context)
        Validators::ListOfBackendJobRespObj.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfAdditionalConstraintsElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListOfAuthenticatedElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListOfBackendAPIAuthType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BackendAPIAuthType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfBackendJobRespObj
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BackendJobRespObj.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfMfaTypesElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListOfOAuthScopesElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListOfRequiredSignUpAttributesElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListOfS3BucketInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::S3BucketInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfUnAuthenticatedElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListS3BucketsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListS3BucketsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListS3BucketsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListS3BucketsOutput, context: context)
        Validators::ListOfS3BucketInfo.validate!(input[:buckets], context: "#{context}[:buckets]") unless input[:buckets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LoginAuthConfigReqObj
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoginAuthConfigReqObj, context: context)
        Hearth::Validator.validate!(input[:aws_cognito_identity_pool_id], ::String, context: "#{context}[:aws_cognito_identity_pool_id]")
        Hearth::Validator.validate!(input[:aws_cognito_region], ::String, context: "#{context}[:aws_cognito_region]")
        Hearth::Validator.validate!(input[:aws_user_pools_id], ::String, context: "#{context}[:aws_user_pools_id]")
        Hearth::Validator.validate!(input[:aws_user_pools_web_client_id], ::String, context: "#{context}[:aws_user_pools_web_client_id]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class RemoveAllBackendsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAllBackendsInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:clean_amplify_app], ::TrueClass, ::FalseClass, context: "#{context}[:clean_amplify_app]")
      end
    end

    class RemoveAllBackendsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAllBackendsOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class RemoveBackendConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveBackendConfigInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
      end
    end

    class RemoveBackendConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveBackendConfigOutput, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
      end
    end

    class ResourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceConfig, context: context)
      end
    end

    class S3BucketInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3BucketInfo, context: context)
        Hearth::Validator.validate!(input[:creation_date], ::String, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class Settings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Settings, context: context)
        Validators::ListOfMfaTypesElement.validate!(input[:mfa_types], context: "#{context}[:mfa_types]") unless input[:mfa_types].nil?
        Hearth::Validator.validate!(input[:sms_message], ::String, context: "#{context}[:sms_message]")
      end
    end

    class SmsSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SmsSettings, context: context)
        Hearth::Validator.validate!(input[:sms_message], ::String, context: "#{context}[:sms_message]")
      end
    end

    class SocialProviderSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SocialProviderSettings, context: context)
        Validators::BackendAuthSocialProviderConfig.validate!(input[:facebook], context: "#{context}[:facebook]") unless input[:facebook].nil?
        Validators::BackendAuthSocialProviderConfig.validate!(input[:google], context: "#{context}[:google]") unless input[:google].nil?
        Validators::BackendAuthSocialProviderConfig.validate!(input[:login_with_amazon], context: "#{context}[:login_with_amazon]") unless input[:login_with_amazon].nil?
        Validators::BackendAuthAppleProviderConfig.validate!(input[:sign_in_with_apple], context: "#{context}[:sign_in_with_apple]") unless input[:sign_in_with_apple].nil?
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:limit_type], ::String, context: "#{context}[:limit_type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateBackendAPIInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendAPIInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Validators::BackendAPIResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class UpdateBackendAPIOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendAPIOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateBackendAuthForgotPasswordConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendAuthForgotPasswordConfig, context: context)
        Hearth::Validator.validate!(input[:delivery_method], ::String, context: "#{context}[:delivery_method]")
        Validators::EmailSettings.validate!(input[:email_settings], context: "#{context}[:email_settings]") unless input[:email_settings].nil?
        Validators::SmsSettings.validate!(input[:sms_settings], context: "#{context}[:sms_settings]") unless input[:sms_settings].nil?
      end
    end

    class UpdateBackendAuthIdentityPoolConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendAuthIdentityPoolConfig, context: context)
        Hearth::Validator.validate!(input[:unauthenticated_login], ::TrueClass, ::FalseClass, context: "#{context}[:unauthenticated_login]")
      end
    end

    class UpdateBackendAuthInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendAuthInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Validators::UpdateBackendAuthResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class UpdateBackendAuthMFAConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendAuthMFAConfig, context: context)
        Hearth::Validator.validate!(input[:mfa_mode], ::String, context: "#{context}[:mfa_mode]")
        Validators::Settings.validate!(input[:settings], context: "#{context}[:settings]") unless input[:settings].nil?
      end
    end

    class UpdateBackendAuthOAuthConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendAuthOAuthConfig, context: context)
        Hearth::Validator.validate!(input[:domain_prefix], ::String, context: "#{context}[:domain_prefix]")
        Hearth::Validator.validate!(input[:o_auth_grant_type], ::String, context: "#{context}[:o_auth_grant_type]")
        Validators::ListOfOAuthScopesElement.validate!(input[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless input[:o_auth_scopes].nil?
        Validators::ListOf__string.validate!(input[:redirect_sign_in_ur_is], context: "#{context}[:redirect_sign_in_ur_is]") unless input[:redirect_sign_in_ur_is].nil?
        Validators::ListOf__string.validate!(input[:redirect_sign_out_ur_is], context: "#{context}[:redirect_sign_out_ur_is]") unless input[:redirect_sign_out_ur_is].nil?
        Validators::SocialProviderSettings.validate!(input[:social_provider_settings], context: "#{context}[:social_provider_settings]") unless input[:social_provider_settings].nil?
      end
    end

    class UpdateBackendAuthOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendAuthOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateBackendAuthPasswordPolicyConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendAuthPasswordPolicyConfig, context: context)
        Validators::ListOfAdditionalConstraintsElement.validate!(input[:additional_constraints], context: "#{context}[:additional_constraints]") unless input[:additional_constraints].nil?
        Hearth::Validator.validate!(input[:minimum_length], ::Float, context: "#{context}[:minimum_length]")
      end
    end

    class UpdateBackendAuthResourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendAuthResourceConfig, context: context)
        Hearth::Validator.validate!(input[:auth_resources], ::String, context: "#{context}[:auth_resources]")
        Validators::UpdateBackendAuthIdentityPoolConfig.validate!(input[:identity_pool_configs], context: "#{context}[:identity_pool_configs]") unless input[:identity_pool_configs].nil?
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        Validators::UpdateBackendAuthUserPoolConfig.validate!(input[:user_pool_configs], context: "#{context}[:user_pool_configs]") unless input[:user_pool_configs].nil?
      end
    end

    class UpdateBackendAuthUserPoolConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendAuthUserPoolConfig, context: context)
        Validators::UpdateBackendAuthForgotPasswordConfig.validate!(input[:forgot_password], context: "#{context}[:forgot_password]") unless input[:forgot_password].nil?
        Validators::UpdateBackendAuthMFAConfig.validate!(input[:mfa], context: "#{context}[:mfa]") unless input[:mfa].nil?
        Validators::UpdateBackendAuthOAuthConfig.validate!(input[:o_auth], context: "#{context}[:o_auth]") unless input[:o_auth].nil?
        Validators::UpdateBackendAuthPasswordPolicyConfig.validate!(input[:password_policy], context: "#{context}[:password_policy]") unless input[:password_policy].nil?
        Validators::UpdateBackendAuthVerificationMessageConfig.validate!(input[:verification_message], context: "#{context}[:verification_message]") unless input[:verification_message].nil?
      end
    end

    class UpdateBackendAuthVerificationMessageConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendAuthVerificationMessageConfig, context: context)
        Hearth::Validator.validate!(input[:delivery_method], ::String, context: "#{context}[:delivery_method]")
        Validators::EmailSettings.validate!(input[:email_settings], context: "#{context}[:email_settings]") unless input[:email_settings].nil?
        Validators::SmsSettings.validate!(input[:sms_settings], context: "#{context}[:sms_settings]") unless input[:sms_settings].nil?
      end
    end

    class UpdateBackendConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendConfigInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Validators::LoginAuthConfigReqObj.validate!(input[:login_auth_config], context: "#{context}[:login_auth_config]") unless input[:login_auth_config].nil?
      end
    end

    class UpdateBackendConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendConfigOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_manager_app_id], ::String, context: "#{context}[:backend_manager_app_id]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Validators::LoginAuthConfigReqObj.validate!(input[:login_auth_config], context: "#{context}[:login_auth_config]") unless input[:login_auth_config].nil?
      end
    end

    class UpdateBackendJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendJobInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateBackendJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendJobOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:create_time], ::String, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:update_time], ::String, context: "#{context}[:update_time]")
      end
    end

    class UpdateBackendStorageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendStorageInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Validators::UpdateBackendStorageResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class UpdateBackendStorageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendStorageOutput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:backend_environment_name], ::String, context: "#{context}[:backend_environment_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateBackendStorageResourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBackendStorageResourceConfig, context: context)
        Validators::BackendStoragePermissions.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
      end
    end

  end
end
