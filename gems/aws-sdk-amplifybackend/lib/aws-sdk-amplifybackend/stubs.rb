# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::AmplifyBackend
  module Stubs

    # Operation Stubber for CloneBackend
    class CloneBackend
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          error: 'error',
          job_id: 'job_id',
          operation: 'operation',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateBackend
    class CreateBackend
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          error: 'error',
          job_id: 'job_id',
          operation: 'operation',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateBackendAPI
    class CreateBackendAPI
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          error: 'error',
          job_id: 'job_id',
          operation: 'operation',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateBackendAuth
    class CreateBackendAuth
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          error: 'error',
          job_id: 'job_id',
          operation: 'operation',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateBackendConfig
    class CreateBackendConfig
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          job_id: 'job_id',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateBackendStorage
    class CreateBackendStorage
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          job_id: 'job_id',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateToken
    class CreateToken
      def self.default(visited=[])
        {
          app_id: 'app_id',
          challenge_code: 'challenge_code',
          session_id: 'session_id',
          ttl: 'ttl',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['challengeCode'] = stub[:challenge_code] unless stub[:challenge_code].nil?
        data['sessionId'] = stub[:session_id] unless stub[:session_id].nil?
        data['ttl'] = stub[:ttl] unless stub[:ttl].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteBackend
    class DeleteBackend
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          error: 'error',
          job_id: 'job_id',
          operation: 'operation',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteBackendAPI
    class DeleteBackendAPI
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          error: 'error',
          job_id: 'job_id',
          operation: 'operation',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteBackendAuth
    class DeleteBackendAuth
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          error: 'error',
          job_id: 'job_id',
          operation: 'operation',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteBackendStorage
    class DeleteBackendStorage
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          job_id: 'job_id',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteToken
    class DeleteToken
      def self.default(visited=[])
        {
          is_success: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['isSuccess'] = stub[:is_success] unless stub[:is_success].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GenerateBackendAPIModels
    class GenerateBackendAPIModels
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          error: 'error',
          job_id: 'job_id',
          operation: 'operation',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBackend
    class GetBackend
      def self.default(visited=[])
        {
          amplify_feature_flags: 'amplify_feature_flags',
          amplify_meta_config: 'amplify_meta_config',
          app_id: 'app_id',
          app_name: 'app_name',
          backend_environment_list: ListOf__string.default(visited),
          backend_environment_name: 'backend_environment_name',
          error: 'error',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['amplifyFeatureFlags'] = stub[:amplify_feature_flags] unless stub[:amplify_feature_flags].nil?
        data['amplifyMetaConfig'] = stub[:amplify_meta_config] unless stub[:amplify_meta_config].nil?
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['appName'] = stub[:app_name] unless stub[:app_name].nil?
        data['backendEnvironmentList'] = ListOf__string.stub(stub[:backend_environment_list]) unless stub[:backend_environment_list].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOf__string
    class ListOf__string
      def self.default(visited=[])
        return nil if visited.include?('ListOf__string')
        visited = visited + ['ListOf__string']
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

    # Operation Stubber for GetBackendAPI
    class GetBackendAPI
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          error: 'error',
          resource_config: BackendAPIResourceConfig.default(visited),
          resource_name: 'resource_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['resourceConfig'] = BackendAPIResourceConfig.stub(stub[:resource_config]) unless stub[:resource_config].nil?
        data['resourceName'] = stub[:resource_name] unless stub[:resource_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for BackendAPIResourceConfig
    class BackendAPIResourceConfig
      def self.default(visited=[])
        return nil if visited.include?('BackendAPIResourceConfig')
        visited = visited + ['BackendAPIResourceConfig']
        {
          additional_auth_types: ListOfBackendAPIAuthType.default(visited),
          api_name: 'api_name',
          conflict_resolution: BackendAPIConflictResolution.default(visited),
          default_auth_type: BackendAPIAuthType.default(visited),
          service: 'service',
          transform_schema: 'transform_schema',
        }
      end

      def self.stub(stub)
        stub ||= Types::BackendAPIResourceConfig.new
        data = {}
        data['additionalAuthTypes'] = ListOfBackendAPIAuthType.stub(stub[:additional_auth_types]) unless stub[:additional_auth_types].nil?
        data['apiName'] = stub[:api_name] unless stub[:api_name].nil?
        data['conflictResolution'] = BackendAPIConflictResolution.stub(stub[:conflict_resolution]) unless stub[:conflict_resolution].nil?
        data['defaultAuthType'] = BackendAPIAuthType.stub(stub[:default_auth_type]) unless stub[:default_auth_type].nil?
        data['service'] = stub[:service] unless stub[:service].nil?
        data['transformSchema'] = stub[:transform_schema] unless stub[:transform_schema].nil?
        data
      end
    end

    # Structure Stubber for BackendAPIAuthType
    class BackendAPIAuthType
      def self.default(visited=[])
        return nil if visited.include?('BackendAPIAuthType')
        visited = visited + ['BackendAPIAuthType']
        {
          mode: 'mode',
          settings: BackendAPIAppSyncAuthSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BackendAPIAuthType.new
        data = {}
        data['mode'] = stub[:mode] unless stub[:mode].nil?
        data['settings'] = BackendAPIAppSyncAuthSettings.stub(stub[:settings]) unless stub[:settings].nil?
        data
      end
    end

    # Structure Stubber for BackendAPIAppSyncAuthSettings
    class BackendAPIAppSyncAuthSettings
      def self.default(visited=[])
        return nil if visited.include?('BackendAPIAppSyncAuthSettings')
        visited = visited + ['BackendAPIAppSyncAuthSettings']
        {
          cognito_user_pool_id: 'cognito_user_pool_id',
          description: 'description',
          expiration_time: 1.0,
          open_id_auth_ttl: 'open_id_auth_ttl',
          open_id_client_id: 'open_id_client_id',
          open_id_iat_ttl: 'open_id_iat_ttl',
          open_id_issue_url: 'open_id_issue_url',
          open_id_provider_name: 'open_id_provider_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::BackendAPIAppSyncAuthSettings.new
        data = {}
        data['cognitoUserPoolId'] = stub[:cognito_user_pool_id] unless stub[:cognito_user_pool_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['expirationTime'] = Hearth::NumberHelper.serialize(stub[:expiration_time])
        data['openIDAuthTTL'] = stub[:open_id_auth_ttl] unless stub[:open_id_auth_ttl].nil?
        data['openIDClientId'] = stub[:open_id_client_id] unless stub[:open_id_client_id].nil?
        data['openIDIatTTL'] = stub[:open_id_iat_ttl] unless stub[:open_id_iat_ttl].nil?
        data['openIDIssueURL'] = stub[:open_id_issue_url] unless stub[:open_id_issue_url].nil?
        data['openIDProviderName'] = stub[:open_id_provider_name] unless stub[:open_id_provider_name].nil?
        data
      end
    end

    # Structure Stubber for BackendAPIConflictResolution
    class BackendAPIConflictResolution
      def self.default(visited=[])
        return nil if visited.include?('BackendAPIConflictResolution')
        visited = visited + ['BackendAPIConflictResolution']
        {
          resolution_strategy: 'resolution_strategy',
        }
      end

      def self.stub(stub)
        stub ||= Types::BackendAPIConflictResolution.new
        data = {}
        data['resolutionStrategy'] = stub[:resolution_strategy] unless stub[:resolution_strategy].nil?
        data
      end
    end

    # List Stubber for ListOfBackendAPIAuthType
    class ListOfBackendAPIAuthType
      def self.default(visited=[])
        return nil if visited.include?('ListOfBackendAPIAuthType')
        visited = visited + ['ListOfBackendAPIAuthType']
        [
          BackendAPIAuthType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BackendAPIAuthType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetBackendAPIModels
    class GetBackendAPIModels
      def self.default(visited=[])
        {
          models: 'models',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['models'] = stub[:models] unless stub[:models].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBackendAuth
    class GetBackendAuth
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          error: 'error',
          resource_config: CreateBackendAuthResourceConfig.default(visited),
          resource_name: 'resource_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['resourceConfig'] = CreateBackendAuthResourceConfig.stub(stub[:resource_config]) unless stub[:resource_config].nil?
        data['resourceName'] = stub[:resource_name] unless stub[:resource_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CreateBackendAuthResourceConfig
    class CreateBackendAuthResourceConfig
      def self.default(visited=[])
        return nil if visited.include?('CreateBackendAuthResourceConfig')
        visited = visited + ['CreateBackendAuthResourceConfig']
        {
          auth_resources: 'auth_resources',
          identity_pool_configs: CreateBackendAuthIdentityPoolConfig.default(visited),
          service: 'service',
          user_pool_configs: CreateBackendAuthUserPoolConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateBackendAuthResourceConfig.new
        data = {}
        data['authResources'] = stub[:auth_resources] unless stub[:auth_resources].nil?
        data['identityPoolConfigs'] = CreateBackendAuthIdentityPoolConfig.stub(stub[:identity_pool_configs]) unless stub[:identity_pool_configs].nil?
        data['service'] = stub[:service] unless stub[:service].nil?
        data['userPoolConfigs'] = CreateBackendAuthUserPoolConfig.stub(stub[:user_pool_configs]) unless stub[:user_pool_configs].nil?
        data
      end
    end

    # Structure Stubber for CreateBackendAuthUserPoolConfig
    class CreateBackendAuthUserPoolConfig
      def self.default(visited=[])
        return nil if visited.include?('CreateBackendAuthUserPoolConfig')
        visited = visited + ['CreateBackendAuthUserPoolConfig']
        {
          forgot_password: CreateBackendAuthForgotPasswordConfig.default(visited),
          mfa: CreateBackendAuthMFAConfig.default(visited),
          o_auth: CreateBackendAuthOAuthConfig.default(visited),
          password_policy: CreateBackendAuthPasswordPolicyConfig.default(visited),
          required_sign_up_attributes: ListOfRequiredSignUpAttributesElement.default(visited),
          sign_in_method: 'sign_in_method',
          user_pool_name: 'user_pool_name',
          verification_message: CreateBackendAuthVerificationMessageConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateBackendAuthUserPoolConfig.new
        data = {}
        data['forgotPassword'] = CreateBackendAuthForgotPasswordConfig.stub(stub[:forgot_password]) unless stub[:forgot_password].nil?
        data['mfa'] = CreateBackendAuthMFAConfig.stub(stub[:mfa]) unless stub[:mfa].nil?
        data['oAuth'] = CreateBackendAuthOAuthConfig.stub(stub[:o_auth]) unless stub[:o_auth].nil?
        data['passwordPolicy'] = CreateBackendAuthPasswordPolicyConfig.stub(stub[:password_policy]) unless stub[:password_policy].nil?
        data['requiredSignUpAttributes'] = ListOfRequiredSignUpAttributesElement.stub(stub[:required_sign_up_attributes]) unless stub[:required_sign_up_attributes].nil?
        data['signInMethod'] = stub[:sign_in_method] unless stub[:sign_in_method].nil?
        data['userPoolName'] = stub[:user_pool_name] unless stub[:user_pool_name].nil?
        data['verificationMessage'] = CreateBackendAuthVerificationMessageConfig.stub(stub[:verification_message]) unless stub[:verification_message].nil?
        data
      end
    end

    # Structure Stubber for CreateBackendAuthVerificationMessageConfig
    class CreateBackendAuthVerificationMessageConfig
      def self.default(visited=[])
        return nil if visited.include?('CreateBackendAuthVerificationMessageConfig')
        visited = visited + ['CreateBackendAuthVerificationMessageConfig']
        {
          delivery_method: 'delivery_method',
          email_settings: EmailSettings.default(visited),
          sms_settings: SmsSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateBackendAuthVerificationMessageConfig.new
        data = {}
        data['deliveryMethod'] = stub[:delivery_method] unless stub[:delivery_method].nil?
        data['emailSettings'] = EmailSettings.stub(stub[:email_settings]) unless stub[:email_settings].nil?
        data['smsSettings'] = SmsSettings.stub(stub[:sms_settings]) unless stub[:sms_settings].nil?
        data
      end
    end

    # Structure Stubber for SmsSettings
    class SmsSettings
      def self.default(visited=[])
        return nil if visited.include?('SmsSettings')
        visited = visited + ['SmsSettings']
        {
          sms_message: 'sms_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::SmsSettings.new
        data = {}
        data['smsMessage'] = stub[:sms_message] unless stub[:sms_message].nil?
        data
      end
    end

    # Structure Stubber for EmailSettings
    class EmailSettings
      def self.default(visited=[])
        return nil if visited.include?('EmailSettings')
        visited = visited + ['EmailSettings']
        {
          email_message: 'email_message',
          email_subject: 'email_subject',
        }
      end

      def self.stub(stub)
        stub ||= Types::EmailSettings.new
        data = {}
        data['emailMessage'] = stub[:email_message] unless stub[:email_message].nil?
        data['emailSubject'] = stub[:email_subject] unless stub[:email_subject].nil?
        data
      end
    end

    # List Stubber for ListOfRequiredSignUpAttributesElement
    class ListOfRequiredSignUpAttributesElement
      def self.default(visited=[])
        return nil if visited.include?('ListOfRequiredSignUpAttributesElement')
        visited = visited + ['ListOfRequiredSignUpAttributesElement']
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

    # Structure Stubber for CreateBackendAuthPasswordPolicyConfig
    class CreateBackendAuthPasswordPolicyConfig
      def self.default(visited=[])
        return nil if visited.include?('CreateBackendAuthPasswordPolicyConfig')
        visited = visited + ['CreateBackendAuthPasswordPolicyConfig']
        {
          additional_constraints: ListOfAdditionalConstraintsElement.default(visited),
          minimum_length: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateBackendAuthPasswordPolicyConfig.new
        data = {}
        data['additionalConstraints'] = ListOfAdditionalConstraintsElement.stub(stub[:additional_constraints]) unless stub[:additional_constraints].nil?
        data['minimumLength'] = Hearth::NumberHelper.serialize(stub[:minimum_length])
        data
      end
    end

    # List Stubber for ListOfAdditionalConstraintsElement
    class ListOfAdditionalConstraintsElement
      def self.default(visited=[])
        return nil if visited.include?('ListOfAdditionalConstraintsElement')
        visited = visited + ['ListOfAdditionalConstraintsElement']
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

    # Structure Stubber for CreateBackendAuthOAuthConfig
    class CreateBackendAuthOAuthConfig
      def self.default(visited=[])
        return nil if visited.include?('CreateBackendAuthOAuthConfig')
        visited = visited + ['CreateBackendAuthOAuthConfig']
        {
          domain_prefix: 'domain_prefix',
          o_auth_grant_type: 'o_auth_grant_type',
          o_auth_scopes: ListOfOAuthScopesElement.default(visited),
          redirect_sign_in_ur_is: ListOf__string.default(visited),
          redirect_sign_out_ur_is: ListOf__string.default(visited),
          social_provider_settings: SocialProviderSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateBackendAuthOAuthConfig.new
        data = {}
        data['domainPrefix'] = stub[:domain_prefix] unless stub[:domain_prefix].nil?
        data['oAuthGrantType'] = stub[:o_auth_grant_type] unless stub[:o_auth_grant_type].nil?
        data['oAuthScopes'] = ListOfOAuthScopesElement.stub(stub[:o_auth_scopes]) unless stub[:o_auth_scopes].nil?
        data['redirectSignInURIs'] = ListOf__string.stub(stub[:redirect_sign_in_ur_is]) unless stub[:redirect_sign_in_ur_is].nil?
        data['redirectSignOutURIs'] = ListOf__string.stub(stub[:redirect_sign_out_ur_is]) unless stub[:redirect_sign_out_ur_is].nil?
        data['socialProviderSettings'] = SocialProviderSettings.stub(stub[:social_provider_settings]) unless stub[:social_provider_settings].nil?
        data
      end
    end

    # Structure Stubber for SocialProviderSettings
    class SocialProviderSettings
      def self.default(visited=[])
        return nil if visited.include?('SocialProviderSettings')
        visited = visited + ['SocialProviderSettings']
        {
          facebook: BackendAuthSocialProviderConfig.default(visited),
          google: BackendAuthSocialProviderConfig.default(visited),
          login_with_amazon: BackendAuthSocialProviderConfig.default(visited),
          sign_in_with_apple: BackendAuthAppleProviderConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SocialProviderSettings.new
        data = {}
        data['Facebook'] = BackendAuthSocialProviderConfig.stub(stub[:facebook]) unless stub[:facebook].nil?
        data['Google'] = BackendAuthSocialProviderConfig.stub(stub[:google]) unless stub[:google].nil?
        data['LoginWithAmazon'] = BackendAuthSocialProviderConfig.stub(stub[:login_with_amazon]) unless stub[:login_with_amazon].nil?
        data['SignInWithApple'] = BackendAuthAppleProviderConfig.stub(stub[:sign_in_with_apple]) unless stub[:sign_in_with_apple].nil?
        data
      end
    end

    # Structure Stubber for BackendAuthAppleProviderConfig
    class BackendAuthAppleProviderConfig
      def self.default(visited=[])
        return nil if visited.include?('BackendAuthAppleProviderConfig')
        visited = visited + ['BackendAuthAppleProviderConfig']
        {
          client_id: 'client_id',
          key_id: 'key_id',
          private_key: 'private_key',
          team_id: 'team_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::BackendAuthAppleProviderConfig.new
        data = {}
        data['client_id'] = stub[:client_id] unless stub[:client_id].nil?
        data['key_id'] = stub[:key_id] unless stub[:key_id].nil?
        data['private_key'] = stub[:private_key] unless stub[:private_key].nil?
        data['team_id'] = stub[:team_id] unless stub[:team_id].nil?
        data
      end
    end

    # Structure Stubber for BackendAuthSocialProviderConfig
    class BackendAuthSocialProviderConfig
      def self.default(visited=[])
        return nil if visited.include?('BackendAuthSocialProviderConfig')
        visited = visited + ['BackendAuthSocialProviderConfig']
        {
          client_id: 'client_id',
          client_secret: 'client_secret',
        }
      end

      def self.stub(stub)
        stub ||= Types::BackendAuthSocialProviderConfig.new
        data = {}
        data['client_id'] = stub[:client_id] unless stub[:client_id].nil?
        data['client_secret'] = stub[:client_secret] unless stub[:client_secret].nil?
        data
      end
    end

    # List Stubber for ListOfOAuthScopesElement
    class ListOfOAuthScopesElement
      def self.default(visited=[])
        return nil if visited.include?('ListOfOAuthScopesElement')
        visited = visited + ['ListOfOAuthScopesElement']
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

    # Structure Stubber for CreateBackendAuthMFAConfig
    class CreateBackendAuthMFAConfig
      def self.default(visited=[])
        return nil if visited.include?('CreateBackendAuthMFAConfig')
        visited = visited + ['CreateBackendAuthMFAConfig']
        {
          mfa_mode: 'mfa_mode',
          settings: Settings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateBackendAuthMFAConfig.new
        data = {}
        data['MFAMode'] = stub[:mfa_mode] unless stub[:mfa_mode].nil?
        data['settings'] = Settings.stub(stub[:settings]) unless stub[:settings].nil?
        data
      end
    end

    # Structure Stubber for Settings
    class Settings
      def self.default(visited=[])
        return nil if visited.include?('Settings')
        visited = visited + ['Settings']
        {
          mfa_types: ListOfMfaTypesElement.default(visited),
          sms_message: 'sms_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::Settings.new
        data = {}
        data['mfaTypes'] = ListOfMfaTypesElement.stub(stub[:mfa_types]) unless stub[:mfa_types].nil?
        data['smsMessage'] = stub[:sms_message] unless stub[:sms_message].nil?
        data
      end
    end

    # List Stubber for ListOfMfaTypesElement
    class ListOfMfaTypesElement
      def self.default(visited=[])
        return nil if visited.include?('ListOfMfaTypesElement')
        visited = visited + ['ListOfMfaTypesElement']
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

    # Structure Stubber for CreateBackendAuthForgotPasswordConfig
    class CreateBackendAuthForgotPasswordConfig
      def self.default(visited=[])
        return nil if visited.include?('CreateBackendAuthForgotPasswordConfig')
        visited = visited + ['CreateBackendAuthForgotPasswordConfig']
        {
          delivery_method: 'delivery_method',
          email_settings: EmailSettings.default(visited),
          sms_settings: SmsSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateBackendAuthForgotPasswordConfig.new
        data = {}
        data['deliveryMethod'] = stub[:delivery_method] unless stub[:delivery_method].nil?
        data['emailSettings'] = EmailSettings.stub(stub[:email_settings]) unless stub[:email_settings].nil?
        data['smsSettings'] = SmsSettings.stub(stub[:sms_settings]) unless stub[:sms_settings].nil?
        data
      end
    end

    # Structure Stubber for CreateBackendAuthIdentityPoolConfig
    class CreateBackendAuthIdentityPoolConfig
      def self.default(visited=[])
        return nil if visited.include?('CreateBackendAuthIdentityPoolConfig')
        visited = visited + ['CreateBackendAuthIdentityPoolConfig']
        {
          identity_pool_name: 'identity_pool_name',
          unauthenticated_login: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateBackendAuthIdentityPoolConfig.new
        data = {}
        data['identityPoolName'] = stub[:identity_pool_name] unless stub[:identity_pool_name].nil?
        data['unauthenticatedLogin'] = stub[:unauthenticated_login] unless stub[:unauthenticated_login].nil?
        data
      end
    end

    # Operation Stubber for GetBackendJob
    class GetBackendJob
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          create_time: 'create_time',
          error: 'error',
          job_id: 'job_id',
          operation: 'operation',
          status: 'status',
          update_time: 'update_time',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['createTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['updateTime'] = stub[:update_time] unless stub[:update_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBackendStorage
    class GetBackendStorage
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          resource_config: GetBackendStorageResourceConfig.default(visited),
          resource_name: 'resource_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['resourceConfig'] = GetBackendStorageResourceConfig.stub(stub[:resource_config]) unless stub[:resource_config].nil?
        data['resourceName'] = stub[:resource_name] unless stub[:resource_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GetBackendStorageResourceConfig
    class GetBackendStorageResourceConfig
      def self.default(visited=[])
        return nil if visited.include?('GetBackendStorageResourceConfig')
        visited = visited + ['GetBackendStorageResourceConfig']
        {
          bucket_name: 'bucket_name',
          imported: false,
          permissions: BackendStoragePermissions.default(visited),
          service_name: 'service_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::GetBackendStorageResourceConfig.new
        data = {}
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['imported'] = stub[:imported] unless stub[:imported].nil?
        data['permissions'] = BackendStoragePermissions.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data
      end
    end

    # Structure Stubber for BackendStoragePermissions
    class BackendStoragePermissions
      def self.default(visited=[])
        return nil if visited.include?('BackendStoragePermissions')
        visited = visited + ['BackendStoragePermissions']
        {
          authenticated: ListOfAuthenticatedElement.default(visited),
          un_authenticated: ListOfUnAuthenticatedElement.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BackendStoragePermissions.new
        data = {}
        data['authenticated'] = ListOfAuthenticatedElement.stub(stub[:authenticated]) unless stub[:authenticated].nil?
        data['unAuthenticated'] = ListOfUnAuthenticatedElement.stub(stub[:un_authenticated]) unless stub[:un_authenticated].nil?
        data
      end
    end

    # List Stubber for ListOfUnAuthenticatedElement
    class ListOfUnAuthenticatedElement
      def self.default(visited=[])
        return nil if visited.include?('ListOfUnAuthenticatedElement')
        visited = visited + ['ListOfUnAuthenticatedElement']
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

    # List Stubber for ListOfAuthenticatedElement
    class ListOfAuthenticatedElement
      def self.default(visited=[])
        return nil if visited.include?('ListOfAuthenticatedElement')
        visited = visited + ['ListOfAuthenticatedElement']
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

    # Operation Stubber for GetToken
    class GetToken
      def self.default(visited=[])
        {
          app_id: 'app_id',
          challenge_code: 'challenge_code',
          session_id: 'session_id',
          ttl: 'ttl',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['challengeCode'] = stub[:challenge_code] unless stub[:challenge_code].nil?
        data['sessionId'] = stub[:session_id] unless stub[:session_id].nil?
        data['ttl'] = stub[:ttl] unless stub[:ttl].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ImportBackendAuth
    class ImportBackendAuth
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          error: 'error',
          job_id: 'job_id',
          operation: 'operation',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ImportBackendStorage
    class ImportBackendStorage
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          job_id: 'job_id',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListBackendJobs
    class ListBackendJobs
      def self.default(visited=[])
        {
          jobs: ListOfBackendJobRespObj.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobs'] = ListOfBackendJobRespObj.stub(stub[:jobs]) unless stub[:jobs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfBackendJobRespObj
    class ListOfBackendJobRespObj
      def self.default(visited=[])
        return nil if visited.include?('ListOfBackendJobRespObj')
        visited = visited + ['ListOfBackendJobRespObj']
        [
          BackendJobRespObj.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BackendJobRespObj.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BackendJobRespObj
    class BackendJobRespObj
      def self.default(visited=[])
        return nil if visited.include?('BackendJobRespObj')
        visited = visited + ['BackendJobRespObj']
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          create_time: 'create_time',
          error: 'error',
          job_id: 'job_id',
          operation: 'operation',
          status: 'status',
          update_time: 'update_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::BackendJobRespObj.new
        data = {}
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['createTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['updateTime'] = stub[:update_time] unless stub[:update_time].nil?
        data
      end
    end

    # Operation Stubber for ListS3Buckets
    class ListS3Buckets
      def self.default(visited=[])
        {
          buckets: ListOfS3BucketInfo.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['buckets'] = ListOfS3BucketInfo.stub(stub[:buckets]) unless stub[:buckets].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfS3BucketInfo
    class ListOfS3BucketInfo
      def self.default(visited=[])
        return nil if visited.include?('ListOfS3BucketInfo')
        visited = visited + ['ListOfS3BucketInfo']
        [
          S3BucketInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << S3BucketInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for S3BucketInfo
    class S3BucketInfo
      def self.default(visited=[])
        return nil if visited.include?('S3BucketInfo')
        visited = visited + ['S3BucketInfo']
        {
          creation_date: 'creation_date',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3BucketInfo.new
        data = {}
        data['creationDate'] = stub[:creation_date] unless stub[:creation_date].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for RemoveAllBackends
    class RemoveAllBackends
      def self.default(visited=[])
        {
          app_id: 'app_id',
          error: 'error',
          job_id: 'job_id',
          operation: 'operation',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RemoveBackendConfig
    class RemoveBackendConfig
      def self.default(visited=[])
        {
          error: 'error',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['error'] = stub[:error] unless stub[:error].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateBackendAPI
    class UpdateBackendAPI
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          error: 'error',
          job_id: 'job_id',
          operation: 'operation',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateBackendAuth
    class UpdateBackendAuth
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          error: 'error',
          job_id: 'job_id',
          operation: 'operation',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateBackendConfig
    class UpdateBackendConfig
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_manager_app_id: 'backend_manager_app_id',
          error: 'error',
          login_auth_config: LoginAuthConfigReqObj.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendManagerAppId'] = stub[:backend_manager_app_id] unless stub[:backend_manager_app_id].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['loginAuthConfig'] = LoginAuthConfigReqObj.stub(stub[:login_auth_config]) unless stub[:login_auth_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LoginAuthConfigReqObj
    class LoginAuthConfigReqObj
      def self.default(visited=[])
        return nil if visited.include?('LoginAuthConfigReqObj')
        visited = visited + ['LoginAuthConfigReqObj']
        {
          aws_cognito_identity_pool_id: 'aws_cognito_identity_pool_id',
          aws_cognito_region: 'aws_cognito_region',
          aws_user_pools_id: 'aws_user_pools_id',
          aws_user_pools_web_client_id: 'aws_user_pools_web_client_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::LoginAuthConfigReqObj.new
        data = {}
        data['aws_cognito_identity_pool_id'] = stub[:aws_cognito_identity_pool_id] unless stub[:aws_cognito_identity_pool_id].nil?
        data['aws_cognito_region'] = stub[:aws_cognito_region] unless stub[:aws_cognito_region].nil?
        data['aws_user_pools_id'] = stub[:aws_user_pools_id] unless stub[:aws_user_pools_id].nil?
        data['aws_user_pools_web_client_id'] = stub[:aws_user_pools_web_client_id] unless stub[:aws_user_pools_web_client_id].nil?
        data
      end
    end

    # Operation Stubber for UpdateBackendJob
    class UpdateBackendJob
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          create_time: 'create_time',
          error: 'error',
          job_id: 'job_id',
          operation: 'operation',
          status: 'status',
          update_time: 'update_time',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['createTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['error'] = stub[:error] unless stub[:error].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['operation'] = stub[:operation] unless stub[:operation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['updateTime'] = stub[:update_time] unless stub[:update_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateBackendStorage
    class UpdateBackendStorage
      def self.default(visited=[])
        {
          app_id: 'app_id',
          backend_environment_name: 'backend_environment_name',
          job_id: 'job_id',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['backendEnvironmentName'] = stub[:backend_environment_name] unless stub[:backend_environment_name].nil?
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
