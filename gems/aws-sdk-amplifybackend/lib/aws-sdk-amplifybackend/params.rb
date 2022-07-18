# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AmplifyBackend
  module Params

    module BackendAPIAppSyncAuthSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackendAPIAppSyncAuthSettings, context: context)
        type = Types::BackendAPIAppSyncAuthSettings.new
        type.cognito_user_pool_id = params[:cognito_user_pool_id]
        type.description = params[:description]
        type.expiration_time = params[:expiration_time]
        type.open_id_auth_ttl = params[:open_id_auth_ttl]
        type.open_id_client_id = params[:open_id_client_id]
        type.open_id_iat_ttl = params[:open_id_iat_ttl]
        type.open_id_issue_url = params[:open_id_issue_url]
        type.open_id_provider_name = params[:open_id_provider_name]
        type
      end
    end

    module BackendAPIAuthType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackendAPIAuthType, context: context)
        type = Types::BackendAPIAuthType.new
        type.mode = params[:mode]
        type.settings = BackendAPIAppSyncAuthSettings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type
      end
    end

    module BackendAPIConflictResolution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackendAPIConflictResolution, context: context)
        type = Types::BackendAPIConflictResolution.new
        type.resolution_strategy = params[:resolution_strategy]
        type
      end
    end

    module BackendAPIResourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackendAPIResourceConfig, context: context)
        type = Types::BackendAPIResourceConfig.new
        type.additional_auth_types = ListOfBackendAPIAuthType.build(params[:additional_auth_types], context: "#{context}[:additional_auth_types]") unless params[:additional_auth_types].nil?
        type.api_name = params[:api_name]
        type.conflict_resolution = BackendAPIConflictResolution.build(params[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless params[:conflict_resolution].nil?
        type.default_auth_type = BackendAPIAuthType.build(params[:default_auth_type], context: "#{context}[:default_auth_type]") unless params[:default_auth_type].nil?
        type.service = params[:service]
        type.transform_schema = params[:transform_schema]
        type
      end
    end

    module BackendAuthAppleProviderConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackendAuthAppleProviderConfig, context: context)
        type = Types::BackendAuthAppleProviderConfig.new
        type.client_id = params[:client_id]
        type.key_id = params[:key_id]
        type.private_key = params[:private_key]
        type.team_id = params[:team_id]
        type
      end
    end

    module BackendAuthSocialProviderConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackendAuthSocialProviderConfig, context: context)
        type = Types::BackendAuthSocialProviderConfig.new
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type
      end
    end

    module BackendJobRespObj
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackendJobRespObj, context: context)
        type = Types::BackendJobRespObj.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.create_time = params[:create_time]
        type.error = params[:error]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type.update_time = params[:update_time]
        type
      end
    end

    module BackendStoragePermissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackendStoragePermissions, context: context)
        type = Types::BackendStoragePermissions.new
        type.authenticated = ListOfAuthenticatedElement.build(params[:authenticated], context: "#{context}[:authenticated]") unless params[:authenticated].nil?
        type.un_authenticated = ListOfUnAuthenticatedElement.build(params[:un_authenticated], context: "#{context}[:un_authenticated]") unless params[:un_authenticated].nil?
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module CloneBackendInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloneBackendInput, context: context)
        type = Types::CloneBackendInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.target_environment_name = params[:target_environment_name]
        type
      end
    end

    module CloneBackendOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloneBackendOutput, context: context)
        type = Types::CloneBackendOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.error = params[:error]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type
      end
    end

    module CreateBackendAPIInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendAPIInput, context: context)
        type = Types::CreateBackendAPIInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_config = BackendAPIResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.resource_name = params[:resource_name]
        type
      end
    end

    module CreateBackendAPIOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendAPIOutput, context: context)
        type = Types::CreateBackendAPIOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.error = params[:error]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type
      end
    end

    module CreateBackendAuthForgotPasswordConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendAuthForgotPasswordConfig, context: context)
        type = Types::CreateBackendAuthForgotPasswordConfig.new
        type.delivery_method = params[:delivery_method]
        type.email_settings = EmailSettings.build(params[:email_settings], context: "#{context}[:email_settings]") unless params[:email_settings].nil?
        type.sms_settings = SmsSettings.build(params[:sms_settings], context: "#{context}[:sms_settings]") unless params[:sms_settings].nil?
        type
      end
    end

    module CreateBackendAuthIdentityPoolConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendAuthIdentityPoolConfig, context: context)
        type = Types::CreateBackendAuthIdentityPoolConfig.new
        type.identity_pool_name = params[:identity_pool_name]
        type.unauthenticated_login = params[:unauthenticated_login]
        type
      end
    end

    module CreateBackendAuthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendAuthInput, context: context)
        type = Types::CreateBackendAuthInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_config = CreateBackendAuthResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.resource_name = params[:resource_name]
        type
      end
    end

    module CreateBackendAuthMFAConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendAuthMFAConfig, context: context)
        type = Types::CreateBackendAuthMFAConfig.new
        type.mfa_mode = params[:mfa_mode]
        type.settings = Settings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type
      end
    end

    module CreateBackendAuthOAuthConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendAuthOAuthConfig, context: context)
        type = Types::CreateBackendAuthOAuthConfig.new
        type.domain_prefix = params[:domain_prefix]
        type.o_auth_grant_type = params[:o_auth_grant_type]
        type.o_auth_scopes = ListOfOAuthScopesElement.build(params[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless params[:o_auth_scopes].nil?
        type.redirect_sign_in_ur_is = ListOf__string.build(params[:redirect_sign_in_ur_is], context: "#{context}[:redirect_sign_in_ur_is]") unless params[:redirect_sign_in_ur_is].nil?
        type.redirect_sign_out_ur_is = ListOf__string.build(params[:redirect_sign_out_ur_is], context: "#{context}[:redirect_sign_out_ur_is]") unless params[:redirect_sign_out_ur_is].nil?
        type.social_provider_settings = SocialProviderSettings.build(params[:social_provider_settings], context: "#{context}[:social_provider_settings]") unless params[:social_provider_settings].nil?
        type
      end
    end

    module CreateBackendAuthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendAuthOutput, context: context)
        type = Types::CreateBackendAuthOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.error = params[:error]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type
      end
    end

    module CreateBackendAuthPasswordPolicyConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendAuthPasswordPolicyConfig, context: context)
        type = Types::CreateBackendAuthPasswordPolicyConfig.new
        type.additional_constraints = ListOfAdditionalConstraintsElement.build(params[:additional_constraints], context: "#{context}[:additional_constraints]") unless params[:additional_constraints].nil?
        type.minimum_length = params[:minimum_length]
        type
      end
    end

    module CreateBackendAuthResourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendAuthResourceConfig, context: context)
        type = Types::CreateBackendAuthResourceConfig.new
        type.auth_resources = params[:auth_resources]
        type.identity_pool_configs = CreateBackendAuthIdentityPoolConfig.build(params[:identity_pool_configs], context: "#{context}[:identity_pool_configs]") unless params[:identity_pool_configs].nil?
        type.service = params[:service]
        type.user_pool_configs = CreateBackendAuthUserPoolConfig.build(params[:user_pool_configs], context: "#{context}[:user_pool_configs]") unless params[:user_pool_configs].nil?
        type
      end
    end

    module CreateBackendAuthUserPoolConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendAuthUserPoolConfig, context: context)
        type = Types::CreateBackendAuthUserPoolConfig.new
        type.forgot_password = CreateBackendAuthForgotPasswordConfig.build(params[:forgot_password], context: "#{context}[:forgot_password]") unless params[:forgot_password].nil?
        type.mfa = CreateBackendAuthMFAConfig.build(params[:mfa], context: "#{context}[:mfa]") unless params[:mfa].nil?
        type.o_auth = CreateBackendAuthOAuthConfig.build(params[:o_auth], context: "#{context}[:o_auth]") unless params[:o_auth].nil?
        type.password_policy = CreateBackendAuthPasswordPolicyConfig.build(params[:password_policy], context: "#{context}[:password_policy]") unless params[:password_policy].nil?
        type.required_sign_up_attributes = ListOfRequiredSignUpAttributesElement.build(params[:required_sign_up_attributes], context: "#{context}[:required_sign_up_attributes]") unless params[:required_sign_up_attributes].nil?
        type.sign_in_method = params[:sign_in_method]
        type.user_pool_name = params[:user_pool_name]
        type.verification_message = CreateBackendAuthVerificationMessageConfig.build(params[:verification_message], context: "#{context}[:verification_message]") unless params[:verification_message].nil?
        type
      end
    end

    module CreateBackendAuthVerificationMessageConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendAuthVerificationMessageConfig, context: context)
        type = Types::CreateBackendAuthVerificationMessageConfig.new
        type.delivery_method = params[:delivery_method]
        type.email_settings = EmailSettings.build(params[:email_settings], context: "#{context}[:email_settings]") unless params[:email_settings].nil?
        type.sms_settings = SmsSettings.build(params[:sms_settings], context: "#{context}[:sms_settings]") unless params[:sms_settings].nil?
        type
      end
    end

    module CreateBackendConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendConfigInput, context: context)
        type = Types::CreateBackendConfigInput.new
        type.app_id = params[:app_id]
        type.backend_manager_app_id = params[:backend_manager_app_id]
        type
      end
    end

    module CreateBackendConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendConfigOutput, context: context)
        type = Types::CreateBackendConfigOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.job_id = params[:job_id]
        type.status = params[:status]
        type
      end
    end

    module CreateBackendInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendInput, context: context)
        type = Types::CreateBackendInput.new
        type.app_id = params[:app_id]
        type.app_name = params[:app_name]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_config = ResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.resource_name = params[:resource_name]
        type
      end
    end

    module CreateBackendOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendOutput, context: context)
        type = Types::CreateBackendOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.error = params[:error]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type
      end
    end

    module CreateBackendStorageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendStorageInput, context: context)
        type = Types::CreateBackendStorageInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_config = CreateBackendStorageResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.resource_name = params[:resource_name]
        type
      end
    end

    module CreateBackendStorageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendStorageOutput, context: context)
        type = Types::CreateBackendStorageOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.job_id = params[:job_id]
        type.status = params[:status]
        type
      end
    end

    module CreateBackendStorageResourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBackendStorageResourceConfig, context: context)
        type = Types::CreateBackendStorageResourceConfig.new
        type.bucket_name = params[:bucket_name]
        type.permissions = BackendStoragePermissions.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.service_name = params[:service_name]
        type
      end
    end

    module CreateTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTokenInput, context: context)
        type = Types::CreateTokenInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module CreateTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTokenOutput, context: context)
        type = Types::CreateTokenOutput.new
        type.app_id = params[:app_id]
        type.challenge_code = params[:challenge_code]
        type.session_id = params[:session_id]
        type.ttl = params[:ttl]
        type
      end
    end

    module DeleteBackendAPIInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackendAPIInput, context: context)
        type = Types::DeleteBackendAPIInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_config = BackendAPIResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.resource_name = params[:resource_name]
        type
      end
    end

    module DeleteBackendAPIOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackendAPIOutput, context: context)
        type = Types::DeleteBackendAPIOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.error = params[:error]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type
      end
    end

    module DeleteBackendAuthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackendAuthInput, context: context)
        type = Types::DeleteBackendAuthInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module DeleteBackendAuthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackendAuthOutput, context: context)
        type = Types::DeleteBackendAuthOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.error = params[:error]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type
      end
    end

    module DeleteBackendInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackendInput, context: context)
        type = Types::DeleteBackendInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type
      end
    end

    module DeleteBackendOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackendOutput, context: context)
        type = Types::DeleteBackendOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.error = params[:error]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type
      end
    end

    module DeleteBackendStorageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackendStorageInput, context: context)
        type = Types::DeleteBackendStorageInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_name = params[:resource_name]
        type.service_name = params[:service_name]
        type
      end
    end

    module DeleteBackendStorageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackendStorageOutput, context: context)
        type = Types::DeleteBackendStorageOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.job_id = params[:job_id]
        type.status = params[:status]
        type
      end
    end

    module DeleteTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTokenInput, context: context)
        type = Types::DeleteTokenInput.new
        type.app_id = params[:app_id]
        type.session_id = params[:session_id]
        type
      end
    end

    module DeleteTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTokenOutput, context: context)
        type = Types::DeleteTokenOutput.new
        type.is_success = params[:is_success]
        type
      end
    end

    module EmailSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmailSettings, context: context)
        type = Types::EmailSettings.new
        type.email_message = params[:email_message]
        type.email_subject = params[:email_subject]
        type
      end
    end

    module GatewayTimeoutException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayTimeoutException, context: context)
        type = Types::GatewayTimeoutException.new
        type.message = params[:message]
        type
      end
    end

    module GenerateBackendAPIModelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateBackendAPIModelsInput, context: context)
        type = Types::GenerateBackendAPIModelsInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module GenerateBackendAPIModelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateBackendAPIModelsOutput, context: context)
        type = Types::GenerateBackendAPIModelsOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.error = params[:error]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type
      end
    end

    module GetBackendAPIInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackendAPIInput, context: context)
        type = Types::GetBackendAPIInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_config = BackendAPIResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.resource_name = params[:resource_name]
        type
      end
    end

    module GetBackendAPIModelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackendAPIModelsInput, context: context)
        type = Types::GetBackendAPIModelsInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module GetBackendAPIModelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackendAPIModelsOutput, context: context)
        type = Types::GetBackendAPIModelsOutput.new
        type.models = params[:models]
        type.status = params[:status]
        type
      end
    end

    module GetBackendAPIOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackendAPIOutput, context: context)
        type = Types::GetBackendAPIOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.error = params[:error]
        type.resource_config = BackendAPIResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.resource_name = params[:resource_name]
        type
      end
    end

    module GetBackendAuthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackendAuthInput, context: context)
        type = Types::GetBackendAuthInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module GetBackendAuthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackendAuthOutput, context: context)
        type = Types::GetBackendAuthOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.error = params[:error]
        type.resource_config = CreateBackendAuthResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.resource_name = params[:resource_name]
        type
      end
    end

    module GetBackendInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackendInput, context: context)
        type = Types::GetBackendInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type
      end
    end

    module GetBackendJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackendJobInput, context: context)
        type = Types::GetBackendJobInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.job_id = params[:job_id]
        type
      end
    end

    module GetBackendJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackendJobOutput, context: context)
        type = Types::GetBackendJobOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.create_time = params[:create_time]
        type.error = params[:error]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type.update_time = params[:update_time]
        type
      end
    end

    module GetBackendOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackendOutput, context: context)
        type = Types::GetBackendOutput.new
        type.amplify_feature_flags = params[:amplify_feature_flags]
        type.amplify_meta_config = params[:amplify_meta_config]
        type.app_id = params[:app_id]
        type.app_name = params[:app_name]
        type.backend_environment_list = ListOf__string.build(params[:backend_environment_list], context: "#{context}[:backend_environment_list]") unless params[:backend_environment_list].nil?
        type.backend_environment_name = params[:backend_environment_name]
        type.error = params[:error]
        type
      end
    end

    module GetBackendStorageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackendStorageInput, context: context)
        type = Types::GetBackendStorageInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module GetBackendStorageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackendStorageOutput, context: context)
        type = Types::GetBackendStorageOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_config = GetBackendStorageResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.resource_name = params[:resource_name]
        type
      end
    end

    module GetBackendStorageResourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBackendStorageResourceConfig, context: context)
        type = Types::GetBackendStorageResourceConfig.new
        type.bucket_name = params[:bucket_name]
        type.imported = params[:imported]
        type.permissions = BackendStoragePermissions.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.service_name = params[:service_name]
        type
      end
    end

    module GetTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTokenInput, context: context)
        type = Types::GetTokenInput.new
        type.app_id = params[:app_id]
        type.session_id = params[:session_id]
        type
      end
    end

    module GetTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTokenOutput, context: context)
        type = Types::GetTokenOutput.new
        type.app_id = params[:app_id]
        type.challenge_code = params[:challenge_code]
        type.session_id = params[:session_id]
        type.ttl = params[:ttl]
        type
      end
    end

    module ImportBackendAuthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportBackendAuthInput, context: context)
        type = Types::ImportBackendAuthInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.identity_pool_id = params[:identity_pool_id]
        type.native_client_id = params[:native_client_id]
        type.user_pool_id = params[:user_pool_id]
        type.web_client_id = params[:web_client_id]
        type
      end
    end

    module ImportBackendAuthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportBackendAuthOutput, context: context)
        type = Types::ImportBackendAuthOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.error = params[:error]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type
      end
    end

    module ImportBackendStorageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportBackendStorageInput, context: context)
        type = Types::ImportBackendStorageInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.bucket_name = params[:bucket_name]
        type.service_name = params[:service_name]
        type
      end
    end

    module ImportBackendStorageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportBackendStorageOutput, context: context)
        type = Types::ImportBackendStorageOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.job_id = params[:job_id]
        type.status = params[:status]
        type
      end
    end

    module ListBackendJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackendJobsInput, context: context)
        type = Types::ListBackendJobsInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.operation = params[:operation]
        type.status = params[:status]
        type
      end
    end

    module ListBackendJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBackendJobsOutput, context: context)
        type = Types::ListBackendJobsOutput.new
        type.jobs = ListOfBackendJobRespObj.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfAdditionalConstraintsElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListOfAuthenticatedElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListOfBackendAPIAuthType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BackendAPIAuthType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfBackendJobRespObj
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BackendJobRespObj.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfMfaTypesElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListOfOAuthScopesElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListOfRequiredSignUpAttributesElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListOfS3BucketInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3BucketInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfUnAuthenticatedElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListS3BucketsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListS3BucketsInput, context: context)
        type = Types::ListS3BucketsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListS3BucketsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListS3BucketsOutput, context: context)
        type = Types::ListS3BucketsOutput.new
        type.buckets = ListOfS3BucketInfo.build(params[:buckets], context: "#{context}[:buckets]") unless params[:buckets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LoginAuthConfigReqObj
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoginAuthConfigReqObj, context: context)
        type = Types::LoginAuthConfigReqObj.new
        type.aws_cognito_identity_pool_id = params[:aws_cognito_identity_pool_id]
        type.aws_cognito_region = params[:aws_cognito_region]
        type.aws_user_pools_id = params[:aws_user_pools_id]
        type.aws_user_pools_web_client_id = params[:aws_user_pools_web_client_id]
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module RemoveAllBackendsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAllBackendsInput, context: context)
        type = Types::RemoveAllBackendsInput.new
        type.app_id = params[:app_id]
        type.clean_amplify_app = params[:clean_amplify_app]
        type
      end
    end

    module RemoveAllBackendsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAllBackendsOutput, context: context)
        type = Types::RemoveAllBackendsOutput.new
        type.app_id = params[:app_id]
        type.error = params[:error]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type
      end
    end

    module RemoveBackendConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveBackendConfigInput, context: context)
        type = Types::RemoveBackendConfigInput.new
        type.app_id = params[:app_id]
        type
      end
    end

    module RemoveBackendConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveBackendConfigOutput, context: context)
        type = Types::RemoveBackendConfigOutput.new
        type.error = params[:error]
        type
      end
    end

    module ResourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceConfig, context: context)
        type = Types::ResourceConfig.new
        type
      end
    end

    module S3BucketInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3BucketInfo, context: context)
        type = Types::S3BucketInfo.new
        type.creation_date = params[:creation_date]
        type.name = params[:name]
        type
      end
    end

    module Settings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Settings, context: context)
        type = Types::Settings.new
        type.mfa_types = ListOfMfaTypesElement.build(params[:mfa_types], context: "#{context}[:mfa_types]") unless params[:mfa_types].nil?
        type.sms_message = params[:sms_message]
        type
      end
    end

    module SmsSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SmsSettings, context: context)
        type = Types::SmsSettings.new
        type.sms_message = params[:sms_message]
        type
      end
    end

    module SocialProviderSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SocialProviderSettings, context: context)
        type = Types::SocialProviderSettings.new
        type.facebook = BackendAuthSocialProviderConfig.build(params[:facebook], context: "#{context}[:facebook]") unless params[:facebook].nil?
        type.google = BackendAuthSocialProviderConfig.build(params[:google], context: "#{context}[:google]") unless params[:google].nil?
        type.login_with_amazon = BackendAuthSocialProviderConfig.build(params[:login_with_amazon], context: "#{context}[:login_with_amazon]") unless params[:login_with_amazon].nil?
        type.sign_in_with_apple = BackendAuthAppleProviderConfig.build(params[:sign_in_with_apple], context: "#{context}[:sign_in_with_apple]") unless params[:sign_in_with_apple].nil?
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.limit_type = params[:limit_type]
        type.message = params[:message]
        type
      end
    end

    module UpdateBackendAPIInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendAPIInput, context: context)
        type = Types::UpdateBackendAPIInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_config = BackendAPIResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.resource_name = params[:resource_name]
        type
      end
    end

    module UpdateBackendAPIOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendAPIOutput, context: context)
        type = Types::UpdateBackendAPIOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.error = params[:error]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type
      end
    end

    module UpdateBackendAuthForgotPasswordConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendAuthForgotPasswordConfig, context: context)
        type = Types::UpdateBackendAuthForgotPasswordConfig.new
        type.delivery_method = params[:delivery_method]
        type.email_settings = EmailSettings.build(params[:email_settings], context: "#{context}[:email_settings]") unless params[:email_settings].nil?
        type.sms_settings = SmsSettings.build(params[:sms_settings], context: "#{context}[:sms_settings]") unless params[:sms_settings].nil?
        type
      end
    end

    module UpdateBackendAuthIdentityPoolConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendAuthIdentityPoolConfig, context: context)
        type = Types::UpdateBackendAuthIdentityPoolConfig.new
        type.unauthenticated_login = params[:unauthenticated_login]
        type
      end
    end

    module UpdateBackendAuthInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendAuthInput, context: context)
        type = Types::UpdateBackendAuthInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_config = UpdateBackendAuthResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.resource_name = params[:resource_name]
        type
      end
    end

    module UpdateBackendAuthMFAConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendAuthMFAConfig, context: context)
        type = Types::UpdateBackendAuthMFAConfig.new
        type.mfa_mode = params[:mfa_mode]
        type.settings = Settings.build(params[:settings], context: "#{context}[:settings]") unless params[:settings].nil?
        type
      end
    end

    module UpdateBackendAuthOAuthConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendAuthOAuthConfig, context: context)
        type = Types::UpdateBackendAuthOAuthConfig.new
        type.domain_prefix = params[:domain_prefix]
        type.o_auth_grant_type = params[:o_auth_grant_type]
        type.o_auth_scopes = ListOfOAuthScopesElement.build(params[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless params[:o_auth_scopes].nil?
        type.redirect_sign_in_ur_is = ListOf__string.build(params[:redirect_sign_in_ur_is], context: "#{context}[:redirect_sign_in_ur_is]") unless params[:redirect_sign_in_ur_is].nil?
        type.redirect_sign_out_ur_is = ListOf__string.build(params[:redirect_sign_out_ur_is], context: "#{context}[:redirect_sign_out_ur_is]") unless params[:redirect_sign_out_ur_is].nil?
        type.social_provider_settings = SocialProviderSettings.build(params[:social_provider_settings], context: "#{context}[:social_provider_settings]") unless params[:social_provider_settings].nil?
        type
      end
    end

    module UpdateBackendAuthOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendAuthOutput, context: context)
        type = Types::UpdateBackendAuthOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.error = params[:error]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type
      end
    end

    module UpdateBackendAuthPasswordPolicyConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendAuthPasswordPolicyConfig, context: context)
        type = Types::UpdateBackendAuthPasswordPolicyConfig.new
        type.additional_constraints = ListOfAdditionalConstraintsElement.build(params[:additional_constraints], context: "#{context}[:additional_constraints]") unless params[:additional_constraints].nil?
        type.minimum_length = params[:minimum_length]
        type
      end
    end

    module UpdateBackendAuthResourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendAuthResourceConfig, context: context)
        type = Types::UpdateBackendAuthResourceConfig.new
        type.auth_resources = params[:auth_resources]
        type.identity_pool_configs = UpdateBackendAuthIdentityPoolConfig.build(params[:identity_pool_configs], context: "#{context}[:identity_pool_configs]") unless params[:identity_pool_configs].nil?
        type.service = params[:service]
        type.user_pool_configs = UpdateBackendAuthUserPoolConfig.build(params[:user_pool_configs], context: "#{context}[:user_pool_configs]") unless params[:user_pool_configs].nil?
        type
      end
    end

    module UpdateBackendAuthUserPoolConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendAuthUserPoolConfig, context: context)
        type = Types::UpdateBackendAuthUserPoolConfig.new
        type.forgot_password = UpdateBackendAuthForgotPasswordConfig.build(params[:forgot_password], context: "#{context}[:forgot_password]") unless params[:forgot_password].nil?
        type.mfa = UpdateBackendAuthMFAConfig.build(params[:mfa], context: "#{context}[:mfa]") unless params[:mfa].nil?
        type.o_auth = UpdateBackendAuthOAuthConfig.build(params[:o_auth], context: "#{context}[:o_auth]") unless params[:o_auth].nil?
        type.password_policy = UpdateBackendAuthPasswordPolicyConfig.build(params[:password_policy], context: "#{context}[:password_policy]") unless params[:password_policy].nil?
        type.verification_message = UpdateBackendAuthVerificationMessageConfig.build(params[:verification_message], context: "#{context}[:verification_message]") unless params[:verification_message].nil?
        type
      end
    end

    module UpdateBackendAuthVerificationMessageConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendAuthVerificationMessageConfig, context: context)
        type = Types::UpdateBackendAuthVerificationMessageConfig.new
        type.delivery_method = params[:delivery_method]
        type.email_settings = EmailSettings.build(params[:email_settings], context: "#{context}[:email_settings]") unless params[:email_settings].nil?
        type.sms_settings = SmsSettings.build(params[:sms_settings], context: "#{context}[:sms_settings]") unless params[:sms_settings].nil?
        type
      end
    end

    module UpdateBackendConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendConfigInput, context: context)
        type = Types::UpdateBackendConfigInput.new
        type.app_id = params[:app_id]
        type.login_auth_config = LoginAuthConfigReqObj.build(params[:login_auth_config], context: "#{context}[:login_auth_config]") unless params[:login_auth_config].nil?
        type
      end
    end

    module UpdateBackendConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendConfigOutput, context: context)
        type = Types::UpdateBackendConfigOutput.new
        type.app_id = params[:app_id]
        type.backend_manager_app_id = params[:backend_manager_app_id]
        type.error = params[:error]
        type.login_auth_config = LoginAuthConfigReqObj.build(params[:login_auth_config], context: "#{context}[:login_auth_config]") unless params[:login_auth_config].nil?
        type
      end
    end

    module UpdateBackendJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendJobInput, context: context)
        type = Types::UpdateBackendJobInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type
      end
    end

    module UpdateBackendJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendJobOutput, context: context)
        type = Types::UpdateBackendJobOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.create_time = params[:create_time]
        type.error = params[:error]
        type.job_id = params[:job_id]
        type.operation = params[:operation]
        type.status = params[:status]
        type.update_time = params[:update_time]
        type
      end
    end

    module UpdateBackendStorageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendStorageInput, context: context)
        type = Types::UpdateBackendStorageInput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.resource_config = UpdateBackendStorageResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.resource_name = params[:resource_name]
        type
      end
    end

    module UpdateBackendStorageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendStorageOutput, context: context)
        type = Types::UpdateBackendStorageOutput.new
        type.app_id = params[:app_id]
        type.backend_environment_name = params[:backend_environment_name]
        type.job_id = params[:job_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateBackendStorageResourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBackendStorageResourceConfig, context: context)
        type = Types::UpdateBackendStorageResourceConfig.new
        type.permissions = BackendStoragePermissions.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.service_name = params[:service_name]
        type
      end
    end

  end
end
