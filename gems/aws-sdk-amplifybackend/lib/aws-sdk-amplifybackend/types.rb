# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AmplifyBackend
  module Types

    # Includes enum constants for AdditionalConstraintsElement
    #
    module AdditionalConstraintsElement
      # No documentation available.
      #
      REQUIRE_DIGIT = "REQUIRE_DIGIT"

      # No documentation available.
      #
      REQUIRE_LOWERCASE = "REQUIRE_LOWERCASE"

      # No documentation available.
      #
      REQUIRE_SYMBOL = "REQUIRE_SYMBOL"

      # No documentation available.
      #
      REQUIRE_UPPERCASE = "REQUIRE_UPPERCASE"
    end

    # Includes enum constants for AuthResources
    #
    module AuthResources
      # No documentation available.
      #
      USER_POOL_ONLY = "USER_POOL_ONLY"

      # No documentation available.
      #
      IDENTITY_POOL_AND_USER_POOL = "IDENTITY_POOL_AND_USER_POOL"
    end

    # Includes enum constants for AuthenticatedElement
    #
    module AuthenticatedElement
      # No documentation available.
      #
      READ = "READ"

      # No documentation available.
      #
      CREATE_AND_UPDATE = "CREATE_AND_UPDATE"

      # No documentation available.
      #
      DELETE = "DELETE"
    end

    # <p>The authentication settings for accessing provisioned data models in your Amplify project.</p>
    #
    # @!attribute cognito_user_pool_id
    #   <p>The Amazon Cognito user pool ID, if Amazon Cognito was used as an authentication setting to access your data models.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The API key description for API_KEY, if it was used as an authentication mechanism to access your data models.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration_time
    #   <p>The API key expiration time for API_KEY, if it was used as an authentication mechanism to access your data models.</p>
    #
    #   @return [Float]
    #
    # @!attribute open_id_auth_ttl
    #   <p>The expiry time for the OpenID authentication mechanism.</p>
    #
    #   @return [String]
    #
    # @!attribute open_id_client_id
    #   <p>The clientID for openID, if openID was used as an authentication setting to access your data models.</p>
    #
    #   @return [String]
    #
    # @!attribute open_id_iat_ttl
    #   <p>The expiry time for the OpenID authentication mechanism.</p>
    #
    #   @return [String]
    #
    # @!attribute open_id_issue_url
    #   <p>The openID issuer URL, if openID was used as an authentication setting to access your data models.</p>
    #
    #   @return [String]
    #
    # @!attribute open_id_provider_name
    #   <p>The OpenID provider name, if OpenID was used as an authentication mechanism to access your data models.</p>
    #
    #   @return [String]
    #
    BackendAPIAppSyncAuthSettings = ::Struct.new(
      :cognito_user_pool_id,
      :description,
      :expiration_time,
      :open_id_auth_ttl,
      :open_id_client_id,
      :open_id_iat_ttl,
      :open_id_issue_url,
      :open_id_provider_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.expiration_time ||= 0
      end

    end

    # <p>Describes the auth types for your configured data models.</p>
    #
    # @!attribute mode
    #   <p>Describes the authentication mode.</p>
    #
    #   Enum, one of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"]
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p>Describes settings for the authentication mode.</p>
    #
    #   @return [BackendAPIAppSyncAuthSettings]
    #
    BackendAPIAuthType = ::Struct.new(
      :mode,
      :settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the conflict resolution configuration for your data model configured in your Amplify project.</p>
    #
    # @!attribute resolution_strategy
    #   <p>The strategy for conflict resolution.</p>
    #
    #   Enum, one of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #
    #   @return [String]
    #
    BackendAPIConflictResolution = ::Struct.new(
      :resolution_strategy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource config for the data model, configured as a part of the Amplify project.</p>
    #
    # @!attribute additional_auth_types
    #   <p>Additional authentication methods used to interact with your data models.</p>
    #
    #   @return [Array<BackendAPIAuthType>]
    #
    # @!attribute api_name
    #   <p>The API name used to interact with the data model, configured as a part of your Amplify project.</p>
    #
    #   @return [String]
    #
    # @!attribute conflict_resolution
    #   <p>The conflict resolution strategy for your data stored in the data models.</p>
    #
    #   @return [BackendAPIConflictResolution]
    #
    # @!attribute default_auth_type
    #   <p>The default authentication type for interacting with the configured data models in your Amplify project.</p>
    #
    #   @return [BackendAPIAuthType]
    #
    # @!attribute service
    #   <p>The service used to provision and interact with the data model.</p>
    #
    #   @return [String]
    #
    # @!attribute transform_schema
    #   <p>The definition of the data model in the annotated transform of the GraphQL schema.</p>
    #
    #   @return [String]
    #
    BackendAPIResourceConfig = ::Struct.new(
      :additional_auth_types,
      :api_name,
      :conflict_resolution,
      :default_auth_type,
      :service,
      :transform_schema,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes Apple social federation configurations for allowing your app users to sign in using OAuth.</p>
    #
    # @!attribute client_id
    #   <p>Describes the client_id (also called Services ID) that comes from Apple.</p>
    #
    #   @return [String]
    #
    # @!attribute key_id
    #   <p>Describes the key_id that comes from Apple.</p>
    #
    #   @return [String]
    #
    # @!attribute private_key
    #   <p>Describes the private_key that comes from Apple.</p>
    #
    #   @return [String]
    #
    # @!attribute team_id
    #   <p>Describes the team_id that comes from Apple.</p>
    #
    #   @return [String]
    #
    BackendAuthAppleProviderConfig = ::Struct.new(
      :client_id,
      :key_id,
      :private_key,
      :team_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes third-party social federation configurations for allowing your app users to sign in using OAuth.</p>
    #
    # @!attribute client_id
    #   <p>Describes the client_id, which can be obtained from the third-party social federation provider.</p>
    #
    #   @return [String]
    #
    # @!attribute client_secret
    #   <p>Describes the client_secret, which can be obtained from third-party social federation providers.</p>
    #
    #   @return [String]
    #
    BackendAuthSocialProviderConfig = ::Struct.new(
      :client_id,
      :client_secret,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The response object for this operation.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The time when the job was created.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute update_time
    #   <p>The time when the job was last updated.</p>
    #
    #   @return [String]
    #
    BackendJobRespObj = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :create_time,
      :error,
      :job_id,
      :operation,
      :status,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the read, write, and delete permissions users have against your storage S3 bucket.</p>
    #
    # @!attribute authenticated
    #   <p>Lists all authenticated user read, write, and delete permissions for your S3 bucket.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute un_authenticated
    #   <p>Lists all unauthenticated user read, write, and delete permissions for your S3 bucket.</p>
    #
    #   @return [Array<String>]
    #
    BackendStoragePermissions = ::Struct.new(
      :authenticated,
      :un_authenticated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error returned if a request is not formed properly.</p>
    #
    # @!attribute message
    #   <p>An error message to inform that the request failed.</p>
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for CloneBackend.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute target_environment_name
    #   <p>The name of the destination backend environment to be created.</p>
    #
    #   @return [String]
    #
    CloneBackendInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :target_environment_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    CloneBackendOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for CreateBackendAPI.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_config
    #   <p>The resource configuration for this request.</p>
    #
    #   @return [BackendAPIResourceConfig]
    #
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #
    #   @return [String]
    #
    CreateBackendAPIInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    CreateBackendAPIOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p><b>(DEPRECATED)</b> Describes the forgot password policy for authenticating into the Amplify app.</p>
    #
    # @!attribute delivery_method
    #   <p><b>(DEPRECATED)</b> Describes which mode to use (either SMS or email) to deliver messages to app users who want to recover their password.</p>
    #
    #   Enum, one of: ["EMAIL", "SMS"]
    #
    #   @return [String]
    #
    # @!attribute email_settings
    #   <p><b>(DEPRECATED)</b> The configuration for the email sent when an app user forgets their password.</p>
    #
    #   @return [EmailSettings]
    #
    # @!attribute sms_settings
    #   <p><b>(DEPRECATED)</b> The configuration for the SMS message sent when an app user forgets their password.</p>
    #
    #   @return [SmsSettings]
    #
    CreateBackendAuthForgotPasswordConfig = ::Struct.new(
      :delivery_method,
      :email_settings,
      :sms_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes authorization configurations for the auth resources, configured as a part of your Amplify project.</p>
    #
    # @!attribute identity_pool_name
    #   <p>Name of the Amazon Cognito identity pool used for authorization.</p>
    #
    #   @return [String]
    #
    # @!attribute unauthenticated_login
    #   <p>Set to true or false based on whether you want to enable guest authorization to your Amplify app.</p>
    #
    #   @return [Boolean]
    #
    CreateBackendAuthIdentityPoolConfig = ::Struct.new(
      :identity_pool_name,
      :unauthenticated_login,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.unauthenticated_login ||= false
      end

    end

    # <p>The request body for CreateBackendAuth.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_config
    #   <p>The resource configuration for this request object.</p>
    #
    #   @return [CreateBackendAuthResourceConfig]
    #
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #
    #   @return [String]
    #
    CreateBackendAuthInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes whether to apply multi-factor authentication policies for your Amazon Cognito user pool configured as a part of your Amplify project.</p>
    #
    # @!attribute mfa_mode
    #   <p>Describes whether MFA should be [ON, OFF, or OPTIONAL] for authentication in your Amplify project.</p>
    #
    #   Enum, one of: ["ON", "OFF", "OPTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p>Describes the configuration settings and methods for your Amplify app users to use MFA.</p>
    #
    #   @return [Settings]
    #
    CreateBackendAuthMFAConfig = ::Struct.new(
      :mfa_mode,
      :settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Creates the OAuth configuration for your Amplify project.</p>
    #
    # @!attribute domain_prefix
    #   <p>The domain prefix for your Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute o_auth_grant_type
    #   <p>The OAuth grant type that you use to allow app users to authenticate from your Amplify app.</p>
    #
    #   Enum, one of: ["CODE", "IMPLICIT"]
    #
    #   @return [String]
    #
    # @!attribute o_auth_scopes
    #   <p>List of OAuth-related flows used to allow your app users to authenticate from your Amplify app.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute redirect_sign_in_ur_is
    #   <p>The redirected URI for signing in to your Amplify app.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute redirect_sign_out_ur_is
    #   <p>Redirect URLs that OAuth uses when a user signs out of an Amplify app.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute social_provider_settings
    #   <p>The settings for using social providers to access your Amplify app.</p>
    #
    #   @return [SocialProviderSettings]
    #
    CreateBackendAuthOAuthConfig = ::Struct.new(
      :domain_prefix,
      :o_auth_grant_type,
      :o_auth_scopes,
      :redirect_sign_in_ur_is,
      :redirect_sign_out_ur_is,
      :social_provider_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    CreateBackendAuthOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The password policy configuration for the backend to your Amplify project.</p>
    #
    # @!attribute additional_constraints
    #   <p>Additional constraints for the password used to access the backend of your Amplify project.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute minimum_length
    #   <p>The minimum length of the password used to access the backend of your Amplify project.</p>
    #
    #   @return [Float]
    #
    CreateBackendAuthPasswordPolicyConfig = ::Struct.new(
      :additional_constraints,
      :minimum_length,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.minimum_length ||= 0
      end

    end

    # <p>Defines the resource configuration when creating an auth resource in your Amplify project.</p>
    #
    # @!attribute auth_resources
    #   <p>Defines whether you want to configure only authentication or both authentication and authorization settings.</p>
    #
    #   Enum, one of: ["USER_POOL_ONLY", "IDENTITY_POOL_AND_USER_POOL"]
    #
    #   @return [String]
    #
    # @!attribute identity_pool_configs
    #   <p>Describes the authorization configuration for the Amazon Cognito identity pool, provisioned as a part of your auth resource in the Amplify project.</p>
    #
    #   @return [CreateBackendAuthIdentityPoolConfig]
    #
    # @!attribute service
    #   <p>Defines the service name to use when configuring an authentication resource in your Amplify project.</p>
    #
    #   Enum, one of: ["COGNITO"]
    #
    #   @return [String]
    #
    # @!attribute user_pool_configs
    #   <p>Describes authentication configuration for the Amazon Cognito user pool, provisioned as a part of your auth resource in the Amplify project.</p>
    #
    #   @return [CreateBackendAuthUserPoolConfig]
    #
    CreateBackendAuthResourceConfig = ::Struct.new(
      :auth_resources,
      :identity_pool_configs,
      :service,
      :user_pool_configs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the Amazon Cognito user pool configuration for the auth resource to be configured for your Amplify project.</p>
    #
    # @!attribute forgot_password
    #   <p><b>(DEPRECATED)</b> Describes the forgotten password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #
    #   @return [CreateBackendAuthForgotPasswordConfig]
    #
    # @!attribute mfa
    #   <p>Describes whether to apply multi-factor authentication policies for your Amazon Cognito user pool configured as a part of your Amplify project.</p>
    #
    #   @return [CreateBackendAuthMFAConfig]
    #
    # @!attribute o_auth
    #   <p>Describes the OAuth policy and rules for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #
    #   @return [CreateBackendAuthOAuthConfig]
    #
    # @!attribute password_policy
    #   <p>Describes the password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #
    #   @return [CreateBackendAuthPasswordPolicyConfig]
    #
    # @!attribute required_sign_up_attributes
    #   <p>The required attributes to sign up new users in the user pool.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sign_in_method
    #   <p>Describes the sign-in methods that your Amplify app users use to log in using the Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #
    #   Enum, one of: ["EMAIL", "EMAIL_AND_PHONE_NUMBER", "PHONE_NUMBER", "USERNAME"]
    #
    #   @return [String]
    #
    # @!attribute user_pool_name
    #   <p>The Amazon Cognito user pool name.</p>
    #
    #   @return [String]
    #
    # @!attribute verification_message
    #   <p>Describes the email or SMS verification message for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #
    #   @return [CreateBackendAuthVerificationMessageConfig]
    #
    CreateBackendAuthUserPoolConfig = ::Struct.new(
      :forgot_password,
      :mfa,
      :o_auth,
      :password_policy,
      :required_sign_up_attributes,
      :sign_in_method,
      :user_pool_name,
      :verification_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Creates an email or SMS verification message for the auth resource configured for your Amplify project.</p>
    #
    # @!attribute delivery_method
    #   <p>The type of verification message to send.</p>
    #
    #   Enum, one of: ["EMAIL", "SMS"]
    #
    #   @return [String]
    #
    # @!attribute email_settings
    #   <p>The settings for the email message.</p>
    #
    #   @return [EmailSettings]
    #
    # @!attribute sms_settings
    #   <p>The settings for the SMS message.</p>
    #
    #   @return [SmsSettings]
    #
    CreateBackendAuthVerificationMessageConfig = ::Struct.new(
      :delivery_method,
      :email_settings,
      :sms_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for CreateBackendConfig.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_manager_app_id
    #   <p>The app ID for the backend manager.</p>
    #
    #   @return [String]
    #
    CreateBackendConfigInput = ::Struct.new(
      :app_id,
      :backend_manager_app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    CreateBackendConfigOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for CreateBackend.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute app_name
    #   <p>The name of the app.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_config
    #   <p>The resource configuration for creating a backend.</p>
    #
    #   @return [ResourceConfig]
    #
    # @!attribute resource_name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    CreateBackendInput = ::Struct.new(
      :app_id,
      :app_name,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    CreateBackendOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for CreateBackendStorage.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_config
    #   <p>The resource configuration for creating backend storage.</p>
    #
    #   @return [CreateBackendStorageResourceConfig]
    #
    # @!attribute resource_name
    #   <p>The name of the storage resource.</p>
    #
    #   @return [String]
    #
    CreateBackendStorageInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    CreateBackendStorageOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource configuration for creating backend storage.</p>
    #
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>The authorization configuration for the storage S3 bucket.</p>
    #
    #   @return [BackendStoragePermissions]
    #
    # @!attribute service_name
    #   <p>The name of the storage service.</p>
    #
    #   Enum, one of: ["S3"]
    #
    #   @return [String]
    #
    CreateBackendStorageResourceConfig = ::Struct.new(
      :bucket_name,
      :permissions,
      :service_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    CreateTokenInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute challenge_code
    #   <p>One-time challenge code for authenticating into the Amplify Admin UI.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>A unique ID provided when creating a new challenge token.</p>
    #
    #   @return [String]
    #
    # @!attribute ttl
    #   <p>The expiry time for the one-time generated token code.</p>
    #
    #   @return [String]
    #
    CreateTokenOutput = ::Struct.new(
      :app_id,
      :challenge_code,
      :session_id,
      :ttl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for DeleteBackendAPI.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_config
    #   <p>Defines the resource configuration for the data model in your Amplify project.</p>
    #
    #   @return [BackendAPIResourceConfig]
    #
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #
    #   @return [String]
    #
    DeleteBackendAPIInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    DeleteBackendAPIOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for DeleteBackendAuth.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #
    #   @return [String]
    #
    DeleteBackendAuthInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    DeleteBackendAuthOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    DeleteBackendInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    DeleteBackendOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for DeleteBackendStorage.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The name of the storage resource.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the storage service.</p>
    #
    #   Enum, one of: ["S3"]
    #
    #   @return [String]
    #
    DeleteBackendStorageInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name,
      :service_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    DeleteBackendStorageOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The session ID.</p>
    #
    #   @return [String]
    #
    DeleteTokenInput = ::Struct.new(
      :app_id,
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute is_success
    #   <p>Indicates whether the request succeeded or failed.</p>
    #
    #   @return [Boolean]
    #
    DeleteTokenOutput = ::Struct.new(
      :is_success,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_success ||= false
      end

    end

    # Includes enum constants for DeliveryMethod
    #
    module DeliveryMethod
      # No documentation available.
      #
      EMAIL = "EMAIL"

      # No documentation available.
      #
      SMS = "SMS"
    end

    # <p>The configuration for the email sent when an app user forgets their password.</p>
    #
    # @!attribute email_message
    #   <p>The contents of the email message.</p>
    #
    #   @return [String]
    #
    # @!attribute email_subject
    #   <p>The contents of the subject line of the email message.</p>
    #
    #   @return [String]
    #
    EmailSettings = ::Struct.new(
      :email_message,
      :email_subject,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error returned if there's a temporary issue with the service.</p>
    #
    # @!attribute message
    #   <p>An error message to inform that the request failed.</p>
    #
    #   @return [String]
    #
    GatewayTimeoutException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for GenerateBackendAPIModels.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #
    #   @return [String]
    #
    GenerateBackendAPIModelsInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    GenerateBackendAPIModelsOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for GetBackendAPI.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_config
    #   <p>Defines the resource configuration for the data model in your Amplify project.</p>
    #
    #   @return [BackendAPIResourceConfig]
    #
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #
    #   @return [String]
    #
    GetBackendAPIInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for GetBackendAPIModels.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #
    #   @return [String]
    #
    GetBackendAPIModelsInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute models
    #   <p>Stringified JSON of the datastore model.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   Enum, one of: ["LATEST", "STALE"]
    #
    #   @return [String]
    #
    GetBackendAPIModelsOutput = ::Struct.new(
      :models,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_config
    #   <p>The resource configuration for this response object.</p>
    #
    #   @return [BackendAPIResourceConfig]
    #
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #
    #   @return [String]
    #
    GetBackendAPIOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :resource_config,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for GetBackendAuth.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #
    #   @return [String]
    #
    GetBackendAuthInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_config
    #   <p>The resource configuration for authorization requests to the backend of your Amplify project.</p>
    #
    #   @return [CreateBackendAuthResourceConfig]
    #
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #
    #   @return [String]
    #
    GetBackendAuthOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :resource_config,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for GetBackend.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    GetBackendInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    GetBackendJobInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The time when the job was created.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute update_time
    #   <p>The time when the job was last updated.</p>
    #
    #   @return [String]
    #
    GetBackendJobOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :create_time,
      :error,
      :job_id,
      :operation,
      :status,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amplify_feature_flags
    #   <p>A stringified version of the cli.json file for your Amplify project.</p>
    #
    #   @return [String]
    #
    # @!attribute amplify_meta_config
    #   <p>A stringified version of the current configs for your Amplify project.</p>
    #
    #   @return [String]
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute app_name
    #   <p>The name of the app.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_list
    #   <p>A list of backend environments in an array.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request failed, this is the returned error.</p>
    #
    #   @return [String]
    #
    GetBackendOutput = ::Struct.new(
      :amplify_feature_flags,
      :amplify_meta_config,
      :app_id,
      :app_name,
      :backend_environment_list,
      :backend_environment_name,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for GetBackendStorage.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The name of the storage resource.</p>
    #
    #   @return [String]
    #
    GetBackendStorageInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_config
    #   <p>The resource configuration for the backend storage resource.</p>
    #
    #   @return [GetBackendStorageResourceConfig]
    #
    # @!attribute resource_name
    #   <p>The name of the storage resource.</p>
    #
    #   @return [String]
    #
    GetBackendStorageOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details for a backend storage resource.</p>
    #
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute imported
    #   <p>Returns True if the storage resource has been imported.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute permissions
    #   <p>The authorization configuration for the storage S3 bucket.</p>
    #
    #   @return [BackendStoragePermissions]
    #
    # @!attribute service_name
    #   <p>The name of the storage service.</p>
    #
    #   Enum, one of: ["S3"]
    #
    #   @return [String]
    #
    GetBackendStorageResourceConfig = ::Struct.new(
      :bucket_name,
      :imported,
      :permissions,
      :service_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.imported ||= false
      end

    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The session ID.</p>
    #
    #   @return [String]
    #
    GetTokenInput = ::Struct.new(
      :app_id,
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute challenge_code
    #   <p>The one-time challenge code for authenticating into the Amplify Admin UI.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>A unique ID provided when creating a new challenge token.</p>
    #
    #   @return [String]
    #
    # @!attribute ttl
    #   <p>The expiry time for the one-time generated token code.</p>
    #
    #   @return [String]
    #
    GetTokenOutput = ::Struct.new(
      :app_id,
      :challenge_code,
      :session_id,
      :ttl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for ImportBackendAuth.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_pool_id
    #   <p>The ID of the Amazon Cognito identity pool.</p>
    #
    #   @return [String]
    #
    # @!attribute native_client_id
    #   <p>The ID of the Amazon Cognito native client.</p>
    #
    #   @return [String]
    #
    # @!attribute user_pool_id
    #   <p>The ID of the Amazon Cognito user pool.</p>
    #
    #   @return [String]
    #
    # @!attribute web_client_id
    #   <p>The ID of the Amazon Cognito web client.</p>
    #
    #   @return [String]
    #
    ImportBackendAuthInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :identity_pool_id,
      :native_client_id,
      :user_pool_id,
      :web_client_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    ImportBackendAuthOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for ImportBackendStorage.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the storage service.</p>
    #
    #   Enum, one of: ["S3"]
    #
    #   @return [String]
    #
    ImportBackendStorageInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :bucket_name,
      :service_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    ImportBackendStorageOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for ListBackendJobs.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that you want in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>Filters the list of response objects to include only those with the specified operation name.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Filters the list of response objects to include only those with the specified status.</p>
    #
    #   @return [String]
    #
    ListBackendJobsInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :max_results,
      :next_token,
      :operation,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute jobs
    #   <p>An array of jobs and their properties.</p>
    #
    #   @return [Array<BackendJobRespObj>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListBackendJobsOutput = ::Struct.new(
      :jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for S3Buckets.</p>
    #
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    ListS3BucketsInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute buckets
    #   <p>The list of S3 buckets.</p>
    #
    #   @return [Array<S3BucketInfo>]
    #
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    ListS3BucketsOutput = ::Struct.new(
      :buckets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request object for this operation.</p>
    #
    # @!attribute aws_cognito_identity_pool_id
    #   <p>The Amazon Cognito identity pool ID used for the Amplify Admin UI login authorization.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_cognito_region
    #   <p>The AWS Region for the Amplify Admin UI login.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_user_pools_id
    #   <p>The Amazon Cognito user pool ID used for Amplify Admin UI login authentication.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_user_pools_web_client_id
    #   <p>The web client ID for the Amazon Cognito user pools.</p>
    #
    #   @return [String]
    #
    LoginAuthConfigReqObj = ::Struct.new(
      :aws_cognito_identity_pool_id,
      :aws_cognito_region,
      :aws_user_pools_id,
      :aws_user_pools_web_client_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MFAMode
    #
    module MFAMode
      # No documentation available.
      #
      ON = "ON"

      # No documentation available.
      #
      OFF = "OFF"

      # No documentation available.
      #
      OPTIONAL = "OPTIONAL"
    end

    # Includes enum constants for MfaTypesElement
    #
    module MfaTypesElement
      # No documentation available.
      #
      SMS = "SMS"

      # No documentation available.
      #
      TOTP = "TOTP"
    end

    # Includes enum constants for Mode
    #
    module Mode
      # No documentation available.
      #
      API_KEY = "API_KEY"

      # No documentation available.
      #
      AWS_IAM = "AWS_IAM"

      # No documentation available.
      #
      AMAZON_COGNITO_USER_POOLS = "AMAZON_COGNITO_USER_POOLS"

      # No documentation available.
      #
      OPENID_CONNECT = "OPENID_CONNECT"
    end

    # <p>An error returned when a specific resource type is not found.</p>
    #
    # @!attribute message
    #   <p>An error message to inform that the request has failed.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource that is not found.</p>
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OAuthGrantType
    #
    module OAuthGrantType
      # No documentation available.
      #
      CODE = "CODE"

      # No documentation available.
      #
      IMPLICIT = "IMPLICIT"
    end

    # Includes enum constants for OAuthScopesElement
    #
    module OAuthScopesElement
      # No documentation available.
      #
      PHONE = "PHONE"

      # No documentation available.
      #
      EMAIL = "EMAIL"

      # No documentation available.
      #
      OPENID = "OPENID"

      # No documentation available.
      #
      PROFILE = "PROFILE"

      # No documentation available.
      #
      AWS_COGNITO_SIGNIN_USER_ADMIN = "AWS_COGNITO_SIGNIN_USER_ADMIN"
    end

    # <p>The request body for RemoveAllBackends.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute clean_amplify_app
    #   <p>Cleans up the Amplify Console app if this value is set to true.</p>
    #
    #   @return [Boolean]
    #
    RemoveAllBackendsInput = ::Struct.new(
      :app_id,
      :clean_amplify_app,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.clean_amplify_app ||= false
      end

    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    RemoveAllBackendsOutput = ::Struct.new(
      :app_id,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    RemoveBackendConfigInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    RemoveBackendConfigOutput = ::Struct.new(
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RequiredSignUpAttributesElement
    #
    module RequiredSignUpAttributesElement
      # No documentation available.
      #
      ADDRESS = "ADDRESS"

      # No documentation available.
      #
      BIRTHDATE = "BIRTHDATE"

      # No documentation available.
      #
      EMAIL = "EMAIL"

      # No documentation available.
      #
      FAMILY_NAME = "FAMILY_NAME"

      # No documentation available.
      #
      GENDER = "GENDER"

      # No documentation available.
      #
      GIVEN_NAME = "GIVEN_NAME"

      # No documentation available.
      #
      LOCALE = "LOCALE"

      # No documentation available.
      #
      MIDDLE_NAME = "MIDDLE_NAME"

      # No documentation available.
      #
      NAME = "NAME"

      # No documentation available.
      #
      NICKNAME = "NICKNAME"

      # No documentation available.
      #
      PHONE_NUMBER = "PHONE_NUMBER"

      # No documentation available.
      #
      PICTURE = "PICTURE"

      # No documentation available.
      #
      PREFERRED_USERNAME = "PREFERRED_USERNAME"

      # No documentation available.
      #
      PROFILE = "PROFILE"

      # No documentation available.
      #
      UPDATED_AT = "UPDATED_AT"

      # No documentation available.
      #
      WEBSITE = "WEBSITE"

      # No documentation available.
      #
      ZONE_INFO = "ZONE_INFO"
    end

    # Includes enum constants for ResolutionStrategy
    #
    module ResolutionStrategy
      # No documentation available.
      #
      OPTIMISTIC_CONCURRENCY = "OPTIMISTIC_CONCURRENCY"

      # No documentation available.
      #
      LAMBDA = "LAMBDA"

      # No documentation available.
      #
      AUTOMERGE = "AUTOMERGE"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>Defines the resource configuration for the data model in your Amplify project.</p>
    #
    ResourceConfig = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the metadata of the S3 bucket.</p>
    #
    # @!attribute creation_date
    #   <p>The creation date of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    S3BucketInfo = ::Struct.new(
      :creation_date,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Service
    #
    module Service
      # No documentation available.
      #
      COGNITO = "COGNITO"
    end

    # Includes enum constants for ServiceName
    #
    module ServiceName
      # No documentation available.
      #
      S3 = "S3"
    end

    # <p>The settings of your MFA configuration for the backend of your Amplify project.</p>
    #
    # @!attribute mfa_types
    #   <p>The supported MFA types.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute sms_message
    #   <p>The body of the SMS message.</p>
    #
    #   @return [String]
    #
    Settings = ::Struct.new(
      :mfa_types,
      :sms_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SignInMethod
    #
    module SignInMethod
      # No documentation available.
      #
      EMAIL = "EMAIL"

      # No documentation available.
      #
      EMAIL_AND_PHONE_NUMBER = "EMAIL_AND_PHONE_NUMBER"

      # No documentation available.
      #
      PHONE_NUMBER = "PHONE_NUMBER"

      # No documentation available.
      #
      USERNAME = "USERNAME"
    end

    # <p>SMS settings for authentication.</p>
    #
    # @!attribute sms_message
    #   <p>The contents of the SMS message.</p>
    #
    #   @return [String]
    #
    SmsSettings = ::Struct.new(
      :sms_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The settings for using the social identity providers for access to your Amplify app.</p>
    #
    # @!attribute facebook
    #   <p>Describes third-party social federation configurations for allowing your app users to sign in using OAuth.</p>
    #
    #   @return [BackendAuthSocialProviderConfig]
    #
    # @!attribute google
    #   <p>Describes third-party social federation configurations for allowing your app users to sign in using OAuth.</p>
    #
    #   @return [BackendAuthSocialProviderConfig]
    #
    # @!attribute login_with_amazon
    #   <p>Describes third-party social federation configurations for allowing your app users to sign in using OAuth.</p>
    #
    #   @return [BackendAuthSocialProviderConfig]
    #
    # @!attribute sign_in_with_apple
    #   <p>Describes Apple social federation configurations for allowing your app users to sign in using OAuth.</p>
    #
    #   @return [BackendAuthAppleProviderConfig]
    #
    SocialProviderSettings = ::Struct.new(
      :facebook,
      :google,
      :login_with_amazon,
      :sign_in_with_apple,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Status
    #
    module Status
      # No documentation available.
      #
      LATEST = "LATEST"

      # No documentation available.
      #
      STALE = "STALE"
    end

    # <p>An error that is returned when a limit of a specific type has been exceeded.</p>
    #
    # @!attribute limit_type
    #   <p>The type of limit that was exceeded.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>An error message to inform that the request has failed.</p>
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :limit_type,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UnAuthenticatedElement
    #
    module UnAuthenticatedElement
      # No documentation available.
      #
      READ = "READ"

      # No documentation available.
      #
      CREATE_AND_UPDATE = "CREATE_AND_UPDATE"

      # No documentation available.
      #
      DELETE = "DELETE"
    end

    # <p>The request body for UpdateBackendAPI.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_config
    #   <p>Defines the resource configuration for the data model in your Amplify project.</p>
    #
    #   @return [BackendAPIResourceConfig]
    #
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #
    #   @return [String]
    #
    UpdateBackendAPIInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    UpdateBackendAPIOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p><b>(DEPRECATED)</b> Describes the forgot password policy for authenticating into the Amplify app.</p>
    #
    # @!attribute delivery_method
    #   <p><b>(DEPRECATED)</b> Describes which mode to use (either SMS or email) to deliver messages to app users that want to recover their password.</p>
    #
    #   Enum, one of: ["EMAIL", "SMS"]
    #
    #   @return [String]
    #
    # @!attribute email_settings
    #   <p><b>(DEPRECATED)</b> The configuration for the email sent when an app user forgets their password.</p>
    #
    #   @return [EmailSettings]
    #
    # @!attribute sms_settings
    #   <p><b>(DEPRECATED)</b> The configuration for the SMS message sent when an Amplify app user forgets their password.</p>
    #
    #   @return [SmsSettings]
    #
    UpdateBackendAuthForgotPasswordConfig = ::Struct.new(
      :delivery_method,
      :email_settings,
      :sms_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the authorization configuration for the Amazon Cognito identity pool, provisioned as a part of your auth resource in the Amplify project.</p>
    #
    # @!attribute unauthenticated_login
    #   <p>A boolean value that can be set to allow or disallow guest-level authorization into your Amplify app.</p>
    #
    #   @return [Boolean]
    #
    UpdateBackendAuthIdentityPoolConfig = ::Struct.new(
      :unauthenticated_login,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.unauthenticated_login ||= false
      end

    end

    # <p>The request body for UpdateBackendAuth.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_config
    #   <p>The resource configuration for this request object.</p>
    #
    #   @return [UpdateBackendAuthResourceConfig]
    #
    # @!attribute resource_name
    #   <p>The name of this resource.</p>
    #
    #   @return [String]
    #
    UpdateBackendAuthInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updates the multi-factor authentication (MFA) configuration for the backend of your Amplify project.</p>
    #
    # @!attribute mfa_mode
    #   <p>The MFA mode for the backend of your Amplify project.</p>
    #
    #   Enum, one of: ["ON", "OFF", "OPTIONAL"]
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p>The settings of your MFA configuration for the backend of your Amplify project.</p>
    #
    #   @return [Settings]
    #
    UpdateBackendAuthMFAConfig = ::Struct.new(
      :mfa_mode,
      :settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The OAuth configurations for authenticating users into your Amplify app.</p>
    #
    # @!attribute domain_prefix
    #   <p>The Amazon Cognito domain prefix used to create a hosted UI for authentication.</p>
    #
    #   @return [String]
    #
    # @!attribute o_auth_grant_type
    #   <p>The OAuth grant type to allow app users to authenticate from your Amplify app.</p>
    #
    #   Enum, one of: ["CODE", "IMPLICIT"]
    #
    #   @return [String]
    #
    # @!attribute o_auth_scopes
    #   <p>The list of OAuth-related flows that can allow users to authenticate from your Amplify app.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute redirect_sign_in_ur_is
    #   <p>Redirect URLs that OAuth uses when a user signs in to an Amplify app.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute redirect_sign_out_ur_is
    #   <p>Redirect URLs that OAuth uses when a user signs out of an Amplify app.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute social_provider_settings
    #   <p>Describes third-party social federation configurations for allowing your users to sign in with OAuth.</p>
    #
    #   @return [SocialProviderSettings]
    #
    UpdateBackendAuthOAuthConfig = ::Struct.new(
      :domain_prefix,
      :o_auth_grant_type,
      :o_auth_scopes,
      :redirect_sign_in_ur_is,
      :redirect_sign_out_ur_is,
      :social_provider_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    UpdateBackendAuthOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :error,
      :job_id,
      :operation,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the password policy for your Amazon Cognito user pool configured as a part of your Amplify project.</p>
    #
    # @!attribute additional_constraints
    #   <p>Describes additional constraints on password requirements to sign in to the auth resource, configured as a part of your Amplify project.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute minimum_length
    #   <p>Describes the minimum length of the password required to sign in to the auth resource, configured as a part of your Amplify project.</p>
    #
    #   @return [Float]
    #
    UpdateBackendAuthPasswordPolicyConfig = ::Struct.new(
      :additional_constraints,
      :minimum_length,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.minimum_length ||= 0
      end

    end

    # <p>Defines the resource configuration when updating an authentication resource in your Amplify project.</p>
    #
    # @!attribute auth_resources
    #   <p>Defines the service name to use when configuring an authentication resource in your Amplify project.</p>
    #
    #   Enum, one of: ["USER_POOL_ONLY", "IDENTITY_POOL_AND_USER_POOL"]
    #
    #   @return [String]
    #
    # @!attribute identity_pool_configs
    #   <p>Describes the authorization configuration for the Amazon Cognito identity pool, provisioned as a part of your auth resource in the Amplify project.</p>
    #
    #   @return [UpdateBackendAuthIdentityPoolConfig]
    #
    # @!attribute service
    #   <p>Defines the service name to use when configuring an authentication resource in your Amplify project.</p>
    #
    #   Enum, one of: ["COGNITO"]
    #
    #   @return [String]
    #
    # @!attribute user_pool_configs
    #   <p>Describes the authentication configuration for the Amazon Cognito user pool, provisioned as a part of your auth resource in the Amplify project.</p>
    #
    #   @return [UpdateBackendAuthUserPoolConfig]
    #
    UpdateBackendAuthResourceConfig = ::Struct.new(
      :auth_resources,
      :identity_pool_configs,
      :service,
      :user_pool_configs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the Amazon Cognito user pool configuration for the authorization resource to be configured for your Amplify project on an update.</p>
    #
    # @!attribute forgot_password
    #   <p><b>(DEPRECATED)</b> Describes the forgot password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #
    #   @return [UpdateBackendAuthForgotPasswordConfig]
    #
    # @!attribute mfa
    #   <p>Describes whether to apply multi-factor authentication policies for your Amazon Cognito user pool configured as a part of your Amplify project.</p>
    #
    #   @return [UpdateBackendAuthMFAConfig]
    #
    # @!attribute o_auth
    #   <p>Describes the OAuth policy and rules for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #
    #   @return [UpdateBackendAuthOAuthConfig]
    #
    # @!attribute password_policy
    #   <p>Describes the password policy for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #
    #   @return [UpdateBackendAuthPasswordPolicyConfig]
    #
    # @!attribute verification_message
    #   <p>Describes the email or SMS verification message for your Amazon Cognito user pool, configured as a part of your Amplify project.</p>
    #
    #   @return [UpdateBackendAuthVerificationMessageConfig]
    #
    UpdateBackendAuthUserPoolConfig = ::Struct.new(
      :forgot_password,
      :mfa,
      :o_auth,
      :password_policy,
      :verification_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updates the configuration of the email or SMS message for the auth resource configured for your Amplify project.</p>
    #
    # @!attribute delivery_method
    #   <p>The type of verification message to send.</p>
    #
    #   Enum, one of: ["EMAIL", "SMS"]
    #
    #   @return [String]
    #
    # @!attribute email_settings
    #   <p>The settings for the email message.</p>
    #
    #   @return [EmailSettings]
    #
    # @!attribute sms_settings
    #   <p>The settings for the SMS message.</p>
    #
    #   @return [SmsSettings]
    #
    UpdateBackendAuthVerificationMessageConfig = ::Struct.new(
      :delivery_method,
      :email_settings,
      :sms_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for UpdateBackendConfig.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute login_auth_config
    #   <p>Describes the Amazon Cognito configuration for Admin UI access.</p>
    #
    #   @return [LoginAuthConfigReqObj]
    #
    UpdateBackendConfigInput = ::Struct.new(
      :app_id,
      :login_auth_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_manager_app_id
    #   <p>The app ID for the backend manager.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute login_auth_config
    #   <p>Describes the Amazon Cognito configurations for the Admin UI auth resource to log in with.</p>
    #
    #   @return [LoginAuthConfigReqObj]
    #
    UpdateBackendConfigOutput = ::Struct.new(
      :app_id,
      :backend_manager_app_id,
      :error,
      :login_auth_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for GetBackendJob.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>Filters the list of response objects to include only those with the specified operation name.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Filters the list of response objects to include only those with the specified status.</p>
    #
    #   @return [String]
    #
    UpdateBackendJobInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :operation,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p>The time when the job was created.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>If the request fails, this error is returned.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The name of the operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute update_time
    #   <p>The time when the job was last updated.</p>
    #
    #   @return [String]
    #
    UpdateBackendJobOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :create_time,
      :error,
      :job_id,
      :operation,
      :status,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request body for UpdateBackendStorage.</p>
    #
    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_config
    #   <p>The resource configuration for updating backend storage.</p>
    #
    #   @return [UpdateBackendStorageResourceConfig]
    #
    # @!attribute resource_name
    #   <p>The name of the storage resource.</p>
    #
    #   @return [String]
    #
    UpdateBackendStorageInput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :resource_config,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The app ID.</p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_name
    #   <p>The name of the backend environment.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID for the job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the request.</p>
    #
    #   @return [String]
    #
    UpdateBackendStorageOutput = ::Struct.new(
      :app_id,
      :backend_environment_name,
      :job_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource configuration for updating backend storage.</p>
    #
    # @!attribute permissions
    #   <p>The authorization configuration for the storage S3 bucket.</p>
    #
    #   @return [BackendStoragePermissions]
    #
    # @!attribute service_name
    #   <p>The name of the storage service.</p>
    #
    #   Enum, one of: ["S3"]
    #
    #   @return [String]
    #
    UpdateBackendStorageResourceConfig = ::Struct.new(
      :permissions,
      :service_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
