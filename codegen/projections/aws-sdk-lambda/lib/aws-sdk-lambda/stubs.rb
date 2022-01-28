# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Lambda
  module Stubs

    # Operation Stubber for AddLayerVersionPermission
    class AddLayerVersionPermission

      def self.default(visited=[])
        {
          statement: 'statement',
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Statement'] = stub[:statement] unless stub[:statement].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for AddPermission
    class AddPermission

      def self.default(visited=[])
        {
          statement: 'statement',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Statement'] = stub[:statement] unless stub[:statement].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateAlias
    class CreateAlias

      def self.default(visited=[])
        {
          alias_arn: 'alias_arn',
          member_name: 'member_name',
          function_version: 'function_version',
          description: 'description',
          routing_config: Stubs::AliasRoutingConfiguration.default(visited),
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['AliasArn'] = stub[:alias_arn] unless stub[:alias_arn].nil?
        data['Name'] = stub[:member_name] unless stub[:member_name].nil?
        data['FunctionVersion'] = stub[:function_version] unless stub[:function_version].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RoutingConfig'] = Stubs::AliasRoutingConfiguration.stub(stub[:routing_config]) unless stub[:routing_config].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Structure Stubber for AliasRoutingConfiguration
    class AliasRoutingConfiguration

      def self.default(visited=[])
        return nil if visited.include?('AliasRoutingConfiguration')
        visited = visited + ['AliasRoutingConfiguration']
        {
          additional_version_weights: Stubs::AdditionalVersionWeights.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['AdditionalVersionWeights'] = Stubs::AdditionalVersionWeights.stub(stub[:additional_version_weights]) unless stub[:additional_version_weights].nil?
        data
      end
    end

    # Map Stubber for AdditionalVersionWeights
    class AdditionalVersionWeights
      def self.default(visited=[])
        return nil if visited.include?('AdditionalVersionWeights')
        visited = visited + ['AdditionalVersionWeights']
        {
          test_key: 1.0
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Seahorse::NumberHelper.serialize(value)
        end
        data
      end
    end

    # Operation Stubber for CreateCodeSigningConfig
    class CreateCodeSigningConfig

      def self.default(visited=[])
        {
          code_signing_config: Stubs::CodeSigningConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['CodeSigningConfig'] = Stubs::CodeSigningConfig.stub(stub[:code_signing_config]) unless stub[:code_signing_config].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Structure Stubber for CodeSigningConfig
    class CodeSigningConfig

      def self.default(visited=[])
        return nil if visited.include?('CodeSigningConfig')
        visited = visited + ['CodeSigningConfig']
        {
          code_signing_config_id: 'code_signing_config_id',
          code_signing_config_arn: 'code_signing_config_arn',
          description: 'description',
          allowed_publishers: Stubs::AllowedPublishers.default(visited),
          code_signing_policies: Stubs::CodeSigningPolicies.default(visited),
          last_modified: 'last_modified',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['CodeSigningConfigId'] = stub[:code_signing_config_id] unless stub[:code_signing_config_id].nil?
        data['CodeSigningConfigArn'] = stub[:code_signing_config_arn] unless stub[:code_signing_config_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['AllowedPublishers'] = Stubs::AllowedPublishers.stub(stub[:allowed_publishers]) unless stub[:allowed_publishers].nil?
        data['CodeSigningPolicies'] = Stubs::CodeSigningPolicies.stub(stub[:code_signing_policies]) unless stub[:code_signing_policies].nil?
        data['LastModified'] = stub[:last_modified] unless stub[:last_modified].nil?
        data
      end
    end

    # Structure Stubber for CodeSigningPolicies
    class CodeSigningPolicies

      def self.default(visited=[])
        return nil if visited.include?('CodeSigningPolicies')
        visited = visited + ['CodeSigningPolicies']
        {
          untrusted_artifact_on_deployment: 'untrusted_artifact_on_deployment',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['UntrustedArtifactOnDeployment'] = stub[:untrusted_artifact_on_deployment] unless stub[:untrusted_artifact_on_deployment].nil?
        data
      end
    end

    # Structure Stubber for AllowedPublishers
    class AllowedPublishers

      def self.default(visited=[])
        return nil if visited.include?('AllowedPublishers')
        visited = visited + ['AllowedPublishers']
        {
          signing_profile_version_arns: Stubs::SigningProfileVersionArns.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['SigningProfileVersionArns'] = Stubs::SigningProfileVersionArns.stub(stub[:signing_profile_version_arns]) unless stub[:signing_profile_version_arns].nil?
        data
      end
    end

    # List Stubber for SigningProfileVersionArns
    class SigningProfileVersionArns
      def self.default(visited=[])
        return nil if visited.include?('SigningProfileVersionArns')
        visited = visited + ['SigningProfileVersionArns']
        [
          'member'
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateEventSourceMapping
    class CreateEventSourceMapping

      def self.default(visited=[])
        {
          uuid: 'uuid',
          starting_position: 'starting_position',
          starting_position_timestamp: Time.now,
          batch_size: 1,
          maximum_batching_window_in_seconds: 1,
          parallelization_factor: 1,
          event_source_arn: 'event_source_arn',
          function_arn: 'function_arn',
          last_modified: Time.now,
          last_processing_result: 'last_processing_result',
          state: 'state',
          state_transition_reason: 'state_transition_reason',
          destination_config: Stubs::DestinationConfig.default(visited),
          topics: Stubs::Topics.default(visited),
          queues: Stubs::Queues.default(visited),
          source_access_configurations: Stubs::SourceAccessConfigurations.default(visited),
          self_managed_event_source: Stubs::SelfManagedEventSource.default(visited),
          maximum_record_age_in_seconds: 1,
          bisect_batch_on_function_error: false,
          maximum_retry_attempts: 1,
          tumbling_window_in_seconds: 1,
          function_response_types: Stubs::FunctionResponseTypeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['UUID'] = stub[:uuid] unless stub[:uuid].nil?
        data['StartingPosition'] = stub[:starting_position] unless stub[:starting_position].nil?
        data['StartingPositionTimestamp'] = Seahorse::TimeHelper.to_epoch_seconds(stub[:starting_position_timestamp]) unless stub[:starting_position_timestamp].nil?
        data['BatchSize'] = stub[:batch_size] unless stub[:batch_size].nil?
        data['MaximumBatchingWindowInSeconds'] = stub[:maximum_batching_window_in_seconds] unless stub[:maximum_batching_window_in_seconds].nil?
        data['ParallelizationFactor'] = stub[:parallelization_factor] unless stub[:parallelization_factor].nil?
        data['EventSourceArn'] = stub[:event_source_arn] unless stub[:event_source_arn].nil?
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['LastModified'] = Seahorse::TimeHelper.to_epoch_seconds(stub[:last_modified]) unless stub[:last_modified].nil?
        data['LastProcessingResult'] = stub[:last_processing_result] unless stub[:last_processing_result].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateTransitionReason'] = stub[:state_transition_reason] unless stub[:state_transition_reason].nil?
        data['DestinationConfig'] = Stubs::DestinationConfig.stub(stub[:destination_config]) unless stub[:destination_config].nil?
        data['Topics'] = Stubs::Topics.stub(stub[:topics]) unless stub[:topics].nil?
        data['Queues'] = Stubs::Queues.stub(stub[:queues]) unless stub[:queues].nil?
        data['SourceAccessConfigurations'] = Stubs::SourceAccessConfigurations.stub(stub[:source_access_configurations]) unless stub[:source_access_configurations].nil?
        data['SelfManagedEventSource'] = Stubs::SelfManagedEventSource.stub(stub[:self_managed_event_source]) unless stub[:self_managed_event_source].nil?
        data['MaximumRecordAgeInSeconds'] = stub[:maximum_record_age_in_seconds] unless stub[:maximum_record_age_in_seconds].nil?
        data['BisectBatchOnFunctionError'] = stub[:bisect_batch_on_function_error] unless stub[:bisect_batch_on_function_error].nil?
        data['MaximumRetryAttempts'] = stub[:maximum_retry_attempts] unless stub[:maximum_retry_attempts].nil?
        data['TumblingWindowInSeconds'] = stub[:tumbling_window_in_seconds] unless stub[:tumbling_window_in_seconds].nil?
        data['FunctionResponseTypes'] = Stubs::FunctionResponseTypeList.stub(stub[:function_response_types]) unless stub[:function_response_types].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # List Stubber for FunctionResponseTypeList
    class FunctionResponseTypeList
      def self.default(visited=[])
        return nil if visited.include?('FunctionResponseTypeList')
        visited = visited + ['FunctionResponseTypeList']
        [
          'member'
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SelfManagedEventSource
    class SelfManagedEventSource

      def self.default(visited=[])
        return nil if visited.include?('SelfManagedEventSource')
        visited = visited + ['SelfManagedEventSource']
        {
          endpoints: Stubs::Endpoints.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['Endpoints'] = Stubs::Endpoints.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data
      end
    end

    # Map Stubber for Endpoints
    class Endpoints
      def self.default(visited=[])
        return nil if visited.include?('Endpoints')
        visited = visited + ['Endpoints']
        {
          test_key: Stubs::EndpointLists.default(visited)
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::EndpointLists.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for EndpointLists
    class EndpointLists
      def self.default(visited=[])
        return nil if visited.include?('EndpointLists')
        visited = visited + ['EndpointLists']
        [
          'member'
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for SourceAccessConfigurations
    class SourceAccessConfigurations
      def self.default(visited=[])
        return nil if visited.include?('SourceAccessConfigurations')
        visited = visited + ['SourceAccessConfigurations']
        [
          Stubs::SourceAccessConfiguration.default(visited)
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SourceAccessConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SourceAccessConfiguration
    class SourceAccessConfiguration

      def self.default(visited=[])
        return nil if visited.include?('SourceAccessConfiguration')
        visited = visited + ['SourceAccessConfiguration']
        {
          type: 'type',
          uri: 'uri',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['URI'] = stub[:uri] unless stub[:uri].nil?
        data
      end
    end

    # List Stubber for Queues
    class Queues
      def self.default(visited=[])
        return nil if visited.include?('Queues')
        visited = visited + ['Queues']
        [
          'member'
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for Topics
    class Topics
      def self.default(visited=[])
        return nil if visited.include?('Topics')
        visited = visited + ['Topics']
        [
          'member'
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DestinationConfig
    class DestinationConfig

      def self.default(visited=[])
        return nil if visited.include?('DestinationConfig')
        visited = visited + ['DestinationConfig']
        {
          on_success: Stubs::OnSuccess.default(visited),
          on_failure: Stubs::OnFailure.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['OnSuccess'] = Stubs::OnSuccess.stub(stub[:on_success]) unless stub[:on_success].nil?
        data['OnFailure'] = Stubs::OnFailure.stub(stub[:on_failure]) unless stub[:on_failure].nil?
        data
      end
    end

    # Structure Stubber for OnFailure
    class OnFailure

      def self.default(visited=[])
        return nil if visited.include?('OnFailure')
        visited = visited + ['OnFailure']
        {
          destination: 'destination',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['Destination'] = stub[:destination] unless stub[:destination].nil?
        data
      end
    end

    # Structure Stubber for OnSuccess
    class OnSuccess

      def self.default(visited=[])
        return nil if visited.include?('OnSuccess')
        visited = visited + ['OnSuccess']
        {
          destination: 'destination',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['Destination'] = stub[:destination] unless stub[:destination].nil?
        data
      end
    end

    # Operation Stubber for CreateFunction
    class CreateFunction

      def self.default(visited=[])
        {
          function_name: 'function_name',
          function_arn: 'function_arn',
          runtime: 'runtime',
          role: 'role',
          handler: 'handler',
          code_size: 1,
          description: 'description',
          timeout: 1,
          memory_size: 1,
          last_modified: 'last_modified',
          code_sha256: 'code_sha256',
          version: 'version',
          vpc_config: Stubs::VpcConfigResponse.default(visited),
          dead_letter_config: Stubs::DeadLetterConfig.default(visited),
          environment: Stubs::EnvironmentResponse.default(visited),
          kms_key_arn: 'kms_key_arn',
          tracing_config: Stubs::TracingConfigResponse.default(visited),
          master_arn: 'master_arn',
          revision_id: 'revision_id',
          layers: Stubs::LayersReferenceList.default(visited),
          state: 'state',
          state_reason: 'state_reason',
          state_reason_code: 'state_reason_code',
          last_update_status: 'last_update_status',
          last_update_status_reason: 'last_update_status_reason',
          last_update_status_reason_code: 'last_update_status_reason_code',
          file_system_configs: Stubs::FileSystemConfigList.default(visited),
          package_type: 'package_type',
          image_config_response: Stubs::ImageConfigResponse.default(visited),
          signing_profile_version_arn: 'signing_profile_version_arn',
          signing_job_arn: 'signing_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['FunctionName'] = stub[:function_name] unless stub[:function_name].nil?
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['Runtime'] = stub[:runtime] unless stub[:runtime].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['Handler'] = stub[:handler] unless stub[:handler].nil?
        data['CodeSize'] = stub[:code_size] unless stub[:code_size].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['MemorySize'] = stub[:memory_size] unless stub[:memory_size].nil?
        data['LastModified'] = stub[:last_modified] unless stub[:last_modified].nil?
        data['CodeSha256'] = stub[:code_sha256] unless stub[:code_sha256].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['VpcConfig'] = Stubs::VpcConfigResponse.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['DeadLetterConfig'] = Stubs::DeadLetterConfig.stub(stub[:dead_letter_config]) unless stub[:dead_letter_config].nil?
        data['Environment'] = Stubs::EnvironmentResponse.stub(stub[:environment]) unless stub[:environment].nil?
        data['KMSKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['TracingConfig'] = Stubs::TracingConfigResponse.stub(stub[:tracing_config]) unless stub[:tracing_config].nil?
        data['MasterArn'] = stub[:master_arn] unless stub[:master_arn].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['Layers'] = Stubs::LayersReferenceList.stub(stub[:layers]) unless stub[:layers].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['StateReasonCode'] = stub[:state_reason_code] unless stub[:state_reason_code].nil?
        data['LastUpdateStatus'] = stub[:last_update_status] unless stub[:last_update_status].nil?
        data['LastUpdateStatusReason'] = stub[:last_update_status_reason] unless stub[:last_update_status_reason].nil?
        data['LastUpdateStatusReasonCode'] = stub[:last_update_status_reason_code] unless stub[:last_update_status_reason_code].nil?
        data['FileSystemConfigs'] = Stubs::FileSystemConfigList.stub(stub[:file_system_configs]) unless stub[:file_system_configs].nil?
        data['PackageType'] = stub[:package_type] unless stub[:package_type].nil?
        data['ImageConfigResponse'] = Stubs::ImageConfigResponse.stub(stub[:image_config_response]) unless stub[:image_config_response].nil?
        data['SigningProfileVersionArn'] = stub[:signing_profile_version_arn] unless stub[:signing_profile_version_arn].nil?
        data['SigningJobArn'] = stub[:signing_job_arn] unless stub[:signing_job_arn].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Structure Stubber for ImageConfigResponse
    class ImageConfigResponse

      def self.default(visited=[])
        return nil if visited.include?('ImageConfigResponse')
        visited = visited + ['ImageConfigResponse']
        {
          image_config: Stubs::ImageConfig.default(visited),
          error: Stubs::ImageConfigError.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['ImageConfig'] = Stubs::ImageConfig.stub(stub[:image_config]) unless stub[:image_config].nil?
        data['Error'] = Stubs::ImageConfigError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Structure Stubber for ImageConfigError
    class ImageConfigError

      def self.default(visited=[])
        return nil if visited.include?('ImageConfigError')
        visited = visited + ['ImageConfigError']
        {
          error_code: 'error_code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for ImageConfig
    class ImageConfig

      def self.default(visited=[])
        return nil if visited.include?('ImageConfig')
        visited = visited + ['ImageConfig']
        {
          entry_point: Stubs::StringList.default(visited),
          command: Stubs::StringList.default(visited),
          working_directory: 'working_directory',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['EntryPoint'] = Stubs::StringList.stub(stub[:entry_point]) unless stub[:entry_point].nil?
        data['Command'] = Stubs::StringList.stub(stub[:command]) unless stub[:command].nil?
        data['WorkingDirectory'] = stub[:working_directory] unless stub[:working_directory].nil?
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

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for FileSystemConfigList
    class FileSystemConfigList
      def self.default(visited=[])
        return nil if visited.include?('FileSystemConfigList')
        visited = visited + ['FileSystemConfigList']
        [
          Stubs::FileSystemConfig.default(visited)
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FileSystemConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FileSystemConfig
    class FileSystemConfig

      def self.default(visited=[])
        return nil if visited.include?('FileSystemConfig')
        visited = visited + ['FileSystemConfig']
        {
          arn: 'arn',
          local_mount_path: 'local_mount_path',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['LocalMountPath'] = stub[:local_mount_path] unless stub[:local_mount_path].nil?
        data
      end
    end

    # List Stubber for LayersReferenceList
    class LayersReferenceList
      def self.default(visited=[])
        return nil if visited.include?('LayersReferenceList')
        visited = visited + ['LayersReferenceList']
        [
          Stubs::Layer.default(visited)
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Layer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Layer
    class Layer

      def self.default(visited=[])
        return nil if visited.include?('Layer')
        visited = visited + ['Layer']
        {
          arn: 'arn',
          code_size: 1,
          signing_profile_version_arn: 'signing_profile_version_arn',
          signing_job_arn: 'signing_job_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CodeSize'] = stub[:code_size] unless stub[:code_size].nil?
        data['SigningProfileVersionArn'] = stub[:signing_profile_version_arn] unless stub[:signing_profile_version_arn].nil?
        data['SigningJobArn'] = stub[:signing_job_arn] unless stub[:signing_job_arn].nil?
        data
      end
    end

    # Structure Stubber for TracingConfigResponse
    class TracingConfigResponse

      def self.default(visited=[])
        return nil if visited.include?('TracingConfigResponse')
        visited = visited + ['TracingConfigResponse']
        {
          mode: 'mode',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data
      end
    end

    # Structure Stubber for EnvironmentResponse
    class EnvironmentResponse

      def self.default(visited=[])
        return nil if visited.include?('EnvironmentResponse')
        visited = visited + ['EnvironmentResponse']
        {
          variables: Stubs::EnvironmentVariables.default(visited),
          error: Stubs::EnvironmentError.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['Variables'] = Stubs::EnvironmentVariables.stub(stub[:variables]) unless stub[:variables].nil?
        data['Error'] = Stubs::EnvironmentError.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Structure Stubber for EnvironmentError
    class EnvironmentError

      def self.default(visited=[])
        return nil if visited.include?('EnvironmentError')
        visited = visited + ['EnvironmentError']
        {
          error_code: 'error_code',
          message: 'message',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Map Stubber for EnvironmentVariables
    class EnvironmentVariables
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentVariables')
        visited = visited + ['EnvironmentVariables']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for DeadLetterConfig
    class DeadLetterConfig

      def self.default(visited=[])
        return nil if visited.include?('DeadLetterConfig')
        visited = visited + ['DeadLetterConfig']
        {
          target_arn: 'target_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['TargetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data
      end
    end

    # Structure Stubber for VpcConfigResponse
    class VpcConfigResponse

      def self.default(visited=[])
        return nil if visited.include?('VpcConfigResponse')
        visited = visited + ['VpcConfigResponse']
        {
          subnet_ids: Stubs::SubnetIds.default(visited),
          security_group_ids: Stubs::SecurityGroupIds.default(visited),
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['SubnetIds'] = Stubs::SubnetIds.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['SecurityGroupIds'] = Stubs::SecurityGroupIds.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # List Stubber for SecurityGroupIds
    class SecurityGroupIds
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIds')
        visited = visited + ['SecurityGroupIds']
        [
          'member'
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for SubnetIds
    class SubnetIds
      def self.default(visited=[])
        return nil if visited.include?('SubnetIds')
        visited = visited + ['SubnetIds']
        [
          'member'
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DeleteAlias
    class DeleteAlias

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteCodeSigningConfig
    class DeleteCodeSigningConfig

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteEventSourceMapping
    class DeleteEventSourceMapping

      def self.default(visited=[])
        {
          uuid: 'uuid',
          starting_position: 'starting_position',
          starting_position_timestamp: Time.now,
          batch_size: 1,
          maximum_batching_window_in_seconds: 1,
          parallelization_factor: 1,
          event_source_arn: 'event_source_arn',
          function_arn: 'function_arn',
          last_modified: Time.now,
          last_processing_result: 'last_processing_result',
          state: 'state',
          state_transition_reason: 'state_transition_reason',
          destination_config: Stubs::DestinationConfig.default(visited),
          topics: Stubs::Topics.default(visited),
          queues: Stubs::Queues.default(visited),
          source_access_configurations: Stubs::SourceAccessConfigurations.default(visited),
          self_managed_event_source: Stubs::SelfManagedEventSource.default(visited),
          maximum_record_age_in_seconds: 1,
          bisect_batch_on_function_error: false,
          maximum_retry_attempts: 1,
          tumbling_window_in_seconds: 1,
          function_response_types: Stubs::FunctionResponseTypeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['UUID'] = stub[:uuid] unless stub[:uuid].nil?
        data['StartingPosition'] = stub[:starting_position] unless stub[:starting_position].nil?
        data['StartingPositionTimestamp'] = Seahorse::TimeHelper.to_epoch_seconds(stub[:starting_position_timestamp]) unless stub[:starting_position_timestamp].nil?
        data['BatchSize'] = stub[:batch_size] unless stub[:batch_size].nil?
        data['MaximumBatchingWindowInSeconds'] = stub[:maximum_batching_window_in_seconds] unless stub[:maximum_batching_window_in_seconds].nil?
        data['ParallelizationFactor'] = stub[:parallelization_factor] unless stub[:parallelization_factor].nil?
        data['EventSourceArn'] = stub[:event_source_arn] unless stub[:event_source_arn].nil?
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['LastModified'] = Seahorse::TimeHelper.to_epoch_seconds(stub[:last_modified]) unless stub[:last_modified].nil?
        data['LastProcessingResult'] = stub[:last_processing_result] unless stub[:last_processing_result].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateTransitionReason'] = stub[:state_transition_reason] unless stub[:state_transition_reason].nil?
        data['DestinationConfig'] = Stubs::DestinationConfig.stub(stub[:destination_config]) unless stub[:destination_config].nil?
        data['Topics'] = Stubs::Topics.stub(stub[:topics]) unless stub[:topics].nil?
        data['Queues'] = Stubs::Queues.stub(stub[:queues]) unless stub[:queues].nil?
        data['SourceAccessConfigurations'] = Stubs::SourceAccessConfigurations.stub(stub[:source_access_configurations]) unless stub[:source_access_configurations].nil?
        data['SelfManagedEventSource'] = Stubs::SelfManagedEventSource.stub(stub[:self_managed_event_source]) unless stub[:self_managed_event_source].nil?
        data['MaximumRecordAgeInSeconds'] = stub[:maximum_record_age_in_seconds] unless stub[:maximum_record_age_in_seconds].nil?
        data['BisectBatchOnFunctionError'] = stub[:bisect_batch_on_function_error] unless stub[:bisect_batch_on_function_error].nil?
        data['MaximumRetryAttempts'] = stub[:maximum_retry_attempts] unless stub[:maximum_retry_attempts].nil?
        data['TumblingWindowInSeconds'] = stub[:tumbling_window_in_seconds] unless stub[:tumbling_window_in_seconds].nil?
        data['FunctionResponseTypes'] = Stubs::FunctionResponseTypeList.stub(stub[:function_response_types]) unless stub[:function_response_types].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteFunction
    class DeleteFunction

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteFunctionCodeSigningConfig
    class DeleteFunctionCodeSigningConfig

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteFunctionConcurrency
    class DeleteFunctionConcurrency

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteFunctionEventInvokeConfig
    class DeleteFunctionEventInvokeConfig

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteLayerVersion
    class DeleteLayerVersion

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteProvisionedConcurrencyConfig
    class DeleteProvisionedConcurrencyConfig

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetAccountSettings
    class GetAccountSettings

      def self.default(visited=[])
        {
          account_limit: Stubs::AccountLimit.default(visited),
          account_usage: Stubs::AccountUsage.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AccountLimit'] = Stubs::AccountLimit.stub(stub[:account_limit]) unless stub[:account_limit].nil?
        data['AccountUsage'] = Stubs::AccountUsage.stub(stub[:account_usage]) unless stub[:account_usage].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Structure Stubber for AccountUsage
    class AccountUsage

      def self.default(visited=[])
        return nil if visited.include?('AccountUsage')
        visited = visited + ['AccountUsage']
        {
          total_code_size: 1,
          function_count: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['TotalCodeSize'] = stub[:total_code_size] unless stub[:total_code_size].nil?
        data['FunctionCount'] = stub[:function_count] unless stub[:function_count].nil?
        data
      end
    end

    # Structure Stubber for AccountLimit
    class AccountLimit

      def self.default(visited=[])
        return nil if visited.include?('AccountLimit')
        visited = visited + ['AccountLimit']
        {
          total_code_size: 1,
          code_size_unzipped: 1,
          code_size_zipped: 1,
          concurrent_executions: 1,
          unreserved_concurrent_executions: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['TotalCodeSize'] = stub[:total_code_size] unless stub[:total_code_size].nil?
        data['CodeSizeUnzipped'] = stub[:code_size_unzipped] unless stub[:code_size_unzipped].nil?
        data['CodeSizeZipped'] = stub[:code_size_zipped] unless stub[:code_size_zipped].nil?
        data['ConcurrentExecutions'] = stub[:concurrent_executions] unless stub[:concurrent_executions].nil?
        data['UnreservedConcurrentExecutions'] = stub[:unreserved_concurrent_executions] unless stub[:unreserved_concurrent_executions].nil?
        data
      end
    end

    # Operation Stubber for GetAlias
    class GetAlias

      def self.default(visited=[])
        {
          alias_arn: 'alias_arn',
          member_name: 'member_name',
          function_version: 'function_version',
          description: 'description',
          routing_config: Stubs::AliasRoutingConfiguration.default(visited),
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AliasArn'] = stub[:alias_arn] unless stub[:alias_arn].nil?
        data['Name'] = stub[:member_name] unless stub[:member_name].nil?
        data['FunctionVersion'] = stub[:function_version] unless stub[:function_version].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RoutingConfig'] = Stubs::AliasRoutingConfiguration.stub(stub[:routing_config]) unless stub[:routing_config].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for GetCodeSigningConfig
    class GetCodeSigningConfig

      def self.default(visited=[])
        {
          code_signing_config: Stubs::CodeSigningConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CodeSigningConfig'] = Stubs::CodeSigningConfig.stub(stub[:code_signing_config]) unless stub[:code_signing_config].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for GetEventSourceMapping
    class GetEventSourceMapping

      def self.default(visited=[])
        {
          uuid: 'uuid',
          starting_position: 'starting_position',
          starting_position_timestamp: Time.now,
          batch_size: 1,
          maximum_batching_window_in_seconds: 1,
          parallelization_factor: 1,
          event_source_arn: 'event_source_arn',
          function_arn: 'function_arn',
          last_modified: Time.now,
          last_processing_result: 'last_processing_result',
          state: 'state',
          state_transition_reason: 'state_transition_reason',
          destination_config: Stubs::DestinationConfig.default(visited),
          topics: Stubs::Topics.default(visited),
          queues: Stubs::Queues.default(visited),
          source_access_configurations: Stubs::SourceAccessConfigurations.default(visited),
          self_managed_event_source: Stubs::SelfManagedEventSource.default(visited),
          maximum_record_age_in_seconds: 1,
          bisect_batch_on_function_error: false,
          maximum_retry_attempts: 1,
          tumbling_window_in_seconds: 1,
          function_response_types: Stubs::FunctionResponseTypeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['UUID'] = stub[:uuid] unless stub[:uuid].nil?
        data['StartingPosition'] = stub[:starting_position] unless stub[:starting_position].nil?
        data['StartingPositionTimestamp'] = Seahorse::TimeHelper.to_epoch_seconds(stub[:starting_position_timestamp]) unless stub[:starting_position_timestamp].nil?
        data['BatchSize'] = stub[:batch_size] unless stub[:batch_size].nil?
        data['MaximumBatchingWindowInSeconds'] = stub[:maximum_batching_window_in_seconds] unless stub[:maximum_batching_window_in_seconds].nil?
        data['ParallelizationFactor'] = stub[:parallelization_factor] unless stub[:parallelization_factor].nil?
        data['EventSourceArn'] = stub[:event_source_arn] unless stub[:event_source_arn].nil?
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['LastModified'] = Seahorse::TimeHelper.to_epoch_seconds(stub[:last_modified]) unless stub[:last_modified].nil?
        data['LastProcessingResult'] = stub[:last_processing_result] unless stub[:last_processing_result].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateTransitionReason'] = stub[:state_transition_reason] unless stub[:state_transition_reason].nil?
        data['DestinationConfig'] = Stubs::DestinationConfig.stub(stub[:destination_config]) unless stub[:destination_config].nil?
        data['Topics'] = Stubs::Topics.stub(stub[:topics]) unless stub[:topics].nil?
        data['Queues'] = Stubs::Queues.stub(stub[:queues]) unless stub[:queues].nil?
        data['SourceAccessConfigurations'] = Stubs::SourceAccessConfigurations.stub(stub[:source_access_configurations]) unless stub[:source_access_configurations].nil?
        data['SelfManagedEventSource'] = Stubs::SelfManagedEventSource.stub(stub[:self_managed_event_source]) unless stub[:self_managed_event_source].nil?
        data['MaximumRecordAgeInSeconds'] = stub[:maximum_record_age_in_seconds] unless stub[:maximum_record_age_in_seconds].nil?
        data['BisectBatchOnFunctionError'] = stub[:bisect_batch_on_function_error] unless stub[:bisect_batch_on_function_error].nil?
        data['MaximumRetryAttempts'] = stub[:maximum_retry_attempts] unless stub[:maximum_retry_attempts].nil?
        data['TumblingWindowInSeconds'] = stub[:tumbling_window_in_seconds] unless stub[:tumbling_window_in_seconds].nil?
        data['FunctionResponseTypes'] = Stubs::FunctionResponseTypeList.stub(stub[:function_response_types]) unless stub[:function_response_types].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for GetFunction
    class GetFunction

      def self.default(visited=[])
        {
          configuration: Stubs::FunctionConfiguration.default(visited),
          code: Stubs::FunctionCodeLocation.default(visited),
          tags: Stubs::Tags.default(visited),
          concurrency: Stubs::Concurrency.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Configuration'] = Stubs::FunctionConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['Code'] = Stubs::FunctionCodeLocation.stub(stub[:code]) unless stub[:code].nil?
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['Concurrency'] = Stubs::Concurrency.stub(stub[:concurrency]) unless stub[:concurrency].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Structure Stubber for Concurrency
    class Concurrency

      def self.default(visited=[])
        return nil if visited.include?('Concurrency')
        visited = visited + ['Concurrency']
        {
          reserved_concurrent_executions: 1,
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['ReservedConcurrentExecutions'] = stub[:reserved_concurrent_executions] unless stub[:reserved_concurrent_executions].nil?
        data
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for FunctionCodeLocation
    class FunctionCodeLocation

      def self.default(visited=[])
        return nil if visited.include?('FunctionCodeLocation')
        visited = visited + ['FunctionCodeLocation']
        {
          repository_type: 'repository_type',
          location: 'location',
          image_uri: 'image_uri',
          resolved_image_uri: 'resolved_image_uri',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['RepositoryType'] = stub[:repository_type] unless stub[:repository_type].nil?
        data['Location'] = stub[:location] unless stub[:location].nil?
        data['ImageUri'] = stub[:image_uri] unless stub[:image_uri].nil?
        data['ResolvedImageUri'] = stub[:resolved_image_uri] unless stub[:resolved_image_uri].nil?
        data
      end
    end

    # Structure Stubber for FunctionConfiguration
    class FunctionConfiguration

      def self.default(visited=[])
        return nil if visited.include?('FunctionConfiguration')
        visited = visited + ['FunctionConfiguration']
        {
          function_name: 'function_name',
          function_arn: 'function_arn',
          runtime: 'runtime',
          role: 'role',
          handler: 'handler',
          code_size: 1,
          description: 'description',
          timeout: 1,
          memory_size: 1,
          last_modified: 'last_modified',
          code_sha256: 'code_sha256',
          version: 'version',
          vpc_config: Stubs::VpcConfigResponse.default(visited),
          dead_letter_config: Stubs::DeadLetterConfig.default(visited),
          environment: Stubs::EnvironmentResponse.default(visited),
          kms_key_arn: 'kms_key_arn',
          tracing_config: Stubs::TracingConfigResponse.default(visited),
          master_arn: 'master_arn',
          revision_id: 'revision_id',
          layers: Stubs::LayersReferenceList.default(visited),
          state: 'state',
          state_reason: 'state_reason',
          state_reason_code: 'state_reason_code',
          last_update_status: 'last_update_status',
          last_update_status_reason: 'last_update_status_reason',
          last_update_status_reason_code: 'last_update_status_reason_code',
          file_system_configs: Stubs::FileSystemConfigList.default(visited),
          package_type: 'package_type',
          image_config_response: Stubs::ImageConfigResponse.default(visited),
          signing_profile_version_arn: 'signing_profile_version_arn',
          signing_job_arn: 'signing_job_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['FunctionName'] = stub[:function_name] unless stub[:function_name].nil?
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['Runtime'] = stub[:runtime] unless stub[:runtime].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['Handler'] = stub[:handler] unless stub[:handler].nil?
        data['CodeSize'] = stub[:code_size] unless stub[:code_size].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['MemorySize'] = stub[:memory_size] unless stub[:memory_size].nil?
        data['LastModified'] = stub[:last_modified] unless stub[:last_modified].nil?
        data['CodeSha256'] = stub[:code_sha256] unless stub[:code_sha256].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['VpcConfig'] = Stubs::VpcConfigResponse.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['DeadLetterConfig'] = Stubs::DeadLetterConfig.stub(stub[:dead_letter_config]) unless stub[:dead_letter_config].nil?
        data['Environment'] = Stubs::EnvironmentResponse.stub(stub[:environment]) unless stub[:environment].nil?
        data['KMSKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['TracingConfig'] = Stubs::TracingConfigResponse.stub(stub[:tracing_config]) unless stub[:tracing_config].nil?
        data['MasterArn'] = stub[:master_arn] unless stub[:master_arn].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['Layers'] = Stubs::LayersReferenceList.stub(stub[:layers]) unless stub[:layers].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['StateReasonCode'] = stub[:state_reason_code] unless stub[:state_reason_code].nil?
        data['LastUpdateStatus'] = stub[:last_update_status] unless stub[:last_update_status].nil?
        data['LastUpdateStatusReason'] = stub[:last_update_status_reason] unless stub[:last_update_status_reason].nil?
        data['LastUpdateStatusReasonCode'] = stub[:last_update_status_reason_code] unless stub[:last_update_status_reason_code].nil?
        data['FileSystemConfigs'] = Stubs::FileSystemConfigList.stub(stub[:file_system_configs]) unless stub[:file_system_configs].nil?
        data['PackageType'] = stub[:package_type] unless stub[:package_type].nil?
        data['ImageConfigResponse'] = Stubs::ImageConfigResponse.stub(stub[:image_config_response]) unless stub[:image_config_response].nil?
        data['SigningProfileVersionArn'] = stub[:signing_profile_version_arn] unless stub[:signing_profile_version_arn].nil?
        data['SigningJobArn'] = stub[:signing_job_arn] unless stub[:signing_job_arn].nil?
        data
      end
    end

    # Operation Stubber for GetFunctionCodeSigningConfig
    class GetFunctionCodeSigningConfig

      def self.default(visited=[])
        {
          code_signing_config_arn: 'code_signing_config_arn',
          function_name: 'function_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CodeSigningConfigArn'] = stub[:code_signing_config_arn] unless stub[:code_signing_config_arn].nil?
        data['FunctionName'] = stub[:function_name] unless stub[:function_name].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for GetFunctionConcurrency
    class GetFunctionConcurrency

      def self.default(visited=[])
        {
          reserved_concurrent_executions: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ReservedConcurrentExecutions'] = stub[:reserved_concurrent_executions] unless stub[:reserved_concurrent_executions].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for GetFunctionConfiguration
    class GetFunctionConfiguration

      def self.default(visited=[])
        {
          function_name: 'function_name',
          function_arn: 'function_arn',
          runtime: 'runtime',
          role: 'role',
          handler: 'handler',
          code_size: 1,
          description: 'description',
          timeout: 1,
          memory_size: 1,
          last_modified: 'last_modified',
          code_sha256: 'code_sha256',
          version: 'version',
          vpc_config: Stubs::VpcConfigResponse.default(visited),
          dead_letter_config: Stubs::DeadLetterConfig.default(visited),
          environment: Stubs::EnvironmentResponse.default(visited),
          kms_key_arn: 'kms_key_arn',
          tracing_config: Stubs::TracingConfigResponse.default(visited),
          master_arn: 'master_arn',
          revision_id: 'revision_id',
          layers: Stubs::LayersReferenceList.default(visited),
          state: 'state',
          state_reason: 'state_reason',
          state_reason_code: 'state_reason_code',
          last_update_status: 'last_update_status',
          last_update_status_reason: 'last_update_status_reason',
          last_update_status_reason_code: 'last_update_status_reason_code',
          file_system_configs: Stubs::FileSystemConfigList.default(visited),
          package_type: 'package_type',
          image_config_response: Stubs::ImageConfigResponse.default(visited),
          signing_profile_version_arn: 'signing_profile_version_arn',
          signing_job_arn: 'signing_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FunctionName'] = stub[:function_name] unless stub[:function_name].nil?
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['Runtime'] = stub[:runtime] unless stub[:runtime].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['Handler'] = stub[:handler] unless stub[:handler].nil?
        data['CodeSize'] = stub[:code_size] unless stub[:code_size].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['MemorySize'] = stub[:memory_size] unless stub[:memory_size].nil?
        data['LastModified'] = stub[:last_modified] unless stub[:last_modified].nil?
        data['CodeSha256'] = stub[:code_sha256] unless stub[:code_sha256].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['VpcConfig'] = Stubs::VpcConfigResponse.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['DeadLetterConfig'] = Stubs::DeadLetterConfig.stub(stub[:dead_letter_config]) unless stub[:dead_letter_config].nil?
        data['Environment'] = Stubs::EnvironmentResponse.stub(stub[:environment]) unless stub[:environment].nil?
        data['KMSKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['TracingConfig'] = Stubs::TracingConfigResponse.stub(stub[:tracing_config]) unless stub[:tracing_config].nil?
        data['MasterArn'] = stub[:master_arn] unless stub[:master_arn].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['Layers'] = Stubs::LayersReferenceList.stub(stub[:layers]) unless stub[:layers].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['StateReasonCode'] = stub[:state_reason_code] unless stub[:state_reason_code].nil?
        data['LastUpdateStatus'] = stub[:last_update_status] unless stub[:last_update_status].nil?
        data['LastUpdateStatusReason'] = stub[:last_update_status_reason] unless stub[:last_update_status_reason].nil?
        data['LastUpdateStatusReasonCode'] = stub[:last_update_status_reason_code] unless stub[:last_update_status_reason_code].nil?
        data['FileSystemConfigs'] = Stubs::FileSystemConfigList.stub(stub[:file_system_configs]) unless stub[:file_system_configs].nil?
        data['PackageType'] = stub[:package_type] unless stub[:package_type].nil?
        data['ImageConfigResponse'] = Stubs::ImageConfigResponse.stub(stub[:image_config_response]) unless stub[:image_config_response].nil?
        data['SigningProfileVersionArn'] = stub[:signing_profile_version_arn] unless stub[:signing_profile_version_arn].nil?
        data['SigningJobArn'] = stub[:signing_job_arn] unless stub[:signing_job_arn].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for GetFunctionEventInvokeConfig
    class GetFunctionEventInvokeConfig

      def self.default(visited=[])
        {
          last_modified: Time.now,
          function_arn: 'function_arn',
          maximum_retry_attempts: 1,
          maximum_event_age_in_seconds: 1,
          destination_config: Stubs::DestinationConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LastModified'] = Seahorse::TimeHelper.to_epoch_seconds(stub[:last_modified]) unless stub[:last_modified].nil?
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['MaximumRetryAttempts'] = stub[:maximum_retry_attempts] unless stub[:maximum_retry_attempts].nil?
        data['MaximumEventAgeInSeconds'] = stub[:maximum_event_age_in_seconds] unless stub[:maximum_event_age_in_seconds].nil?
        data['DestinationConfig'] = Stubs::DestinationConfig.stub(stub[:destination_config]) unless stub[:destination_config].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for GetLayerVersion
    class GetLayerVersion

      def self.default(visited=[])
        {
          content: Stubs::LayerVersionContentOutput.default(visited),
          layer_arn: 'layer_arn',
          layer_version_arn: 'layer_version_arn',
          description: 'description',
          created_date: 'created_date',
          version: 1,
          compatible_runtimes: Stubs::CompatibleRuntimes.default(visited),
          license_info: 'license_info',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Content'] = Stubs::LayerVersionContentOutput.stub(stub[:content]) unless stub[:content].nil?
        data['LayerArn'] = stub[:layer_arn] unless stub[:layer_arn].nil?
        data['LayerVersionArn'] = stub[:layer_version_arn] unless stub[:layer_version_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedDate'] = stub[:created_date] unless stub[:created_date].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['CompatibleRuntimes'] = Stubs::CompatibleRuntimes.stub(stub[:compatible_runtimes]) unless stub[:compatible_runtimes].nil?
        data['LicenseInfo'] = stub[:license_info] unless stub[:license_info].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # List Stubber for CompatibleRuntimes
    class CompatibleRuntimes
      def self.default(visited=[])
        return nil if visited.include?('CompatibleRuntimes')
        visited = visited + ['CompatibleRuntimes']
        [
          'member'
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LayerVersionContentOutput
    class LayerVersionContentOutput

      def self.default(visited=[])
        return nil if visited.include?('LayerVersionContentOutput')
        visited = visited + ['LayerVersionContentOutput']
        {
          location: 'location',
          code_sha256: 'code_sha256',
          code_size: 1,
          signing_profile_version_arn: 'signing_profile_version_arn',
          signing_job_arn: 'signing_job_arn',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['Location'] = stub[:location] unless stub[:location].nil?
        data['CodeSha256'] = stub[:code_sha256] unless stub[:code_sha256].nil?
        data['CodeSize'] = stub[:code_size] unless stub[:code_size].nil?
        data['SigningProfileVersionArn'] = stub[:signing_profile_version_arn] unless stub[:signing_profile_version_arn].nil?
        data['SigningJobArn'] = stub[:signing_job_arn] unless stub[:signing_job_arn].nil?
        data
      end
    end

    # Operation Stubber for GetLayerVersionByArn
    class GetLayerVersionByArn

      def self.default(visited=[])
        {
          content: Stubs::LayerVersionContentOutput.default(visited),
          layer_arn: 'layer_arn',
          layer_version_arn: 'layer_version_arn',
          description: 'description',
          created_date: 'created_date',
          version: 1,
          compatible_runtimes: Stubs::CompatibleRuntimes.default(visited),
          license_info: 'license_info',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Content'] = Stubs::LayerVersionContentOutput.stub(stub[:content]) unless stub[:content].nil?
        data['LayerArn'] = stub[:layer_arn] unless stub[:layer_arn].nil?
        data['LayerVersionArn'] = stub[:layer_version_arn] unless stub[:layer_version_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedDate'] = stub[:created_date] unless stub[:created_date].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['CompatibleRuntimes'] = Stubs::CompatibleRuntimes.stub(stub[:compatible_runtimes]) unless stub[:compatible_runtimes].nil?
        data['LicenseInfo'] = stub[:license_info] unless stub[:license_info].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for GetLayerVersionPolicy
    class GetLayerVersionPolicy

      def self.default(visited=[])
        {
          policy: 'policy',
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for GetPolicy
    class GetPolicy

      def self.default(visited=[])
        {
          policy: 'policy',
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Policy'] = stub[:policy] unless stub[:policy].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for GetProvisionedConcurrencyConfig
    class GetProvisionedConcurrencyConfig

      def self.default(visited=[])
        {
          requested_provisioned_concurrent_executions: 1,
          available_provisioned_concurrent_executions: 1,
          allocated_provisioned_concurrent_executions: 1,
          status: 'status',
          status_reason: 'status_reason',
          last_modified: 'last_modified',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RequestedProvisionedConcurrentExecutions'] = stub[:requested_provisioned_concurrent_executions] unless stub[:requested_provisioned_concurrent_executions].nil?
        data['AvailableProvisionedConcurrentExecutions'] = stub[:available_provisioned_concurrent_executions] unless stub[:available_provisioned_concurrent_executions].nil?
        data['AllocatedProvisionedConcurrentExecutions'] = stub[:allocated_provisioned_concurrent_executions] unless stub[:allocated_provisioned_concurrent_executions].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['LastModified'] = stub[:last_modified] unless stub[:last_modified].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for Invoke
    class Invoke

      def self.default(visited=[])
        {
          status_code: 1,
          function_error: 'function_error',
          log_result: 'log_result',
          payload: 'payload',
          executed_version: 'executed_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['X-Amz-Function-Error'] = stub[:function_error] unless stub[:function_error].nil? || stub[:function_error].empty?
        http_resp.headers['X-Amz-Log-Result'] = stub[:log_result] unless stub[:log_result].nil? || stub[:log_result].empty?
        http_resp.headers['X-Amz-Executed-Version'] = stub[:executed_version] unless stub[:executed_version].nil? || stub[:executed_version].empty?
        http_resp.status = stub[:status_code]
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = StringIO.new(stub[:payload] || '')
      end
    end

    # Operation Stubber for InvokeAsync
    class InvokeAsync

      def self.default(visited=[])
        {
          status: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.status = stub[:status]
      end
    end

    # Operation Stubber for ListAliases
    class ListAliases

      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          aliases: Stubs::AliasList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Aliases'] = Stubs::AliasList.stub(stub[:aliases]) unless stub[:aliases].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # List Stubber for AliasList
    class AliasList
      def self.default(visited=[])
        return nil if visited.include?('AliasList')
        visited = visited + ['AliasList']
        [
          Stubs::AliasConfiguration.default(visited)
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AliasConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AliasConfiguration
    class AliasConfiguration

      def self.default(visited=[])
        return nil if visited.include?('AliasConfiguration')
        visited = visited + ['AliasConfiguration']
        {
          alias_arn: 'alias_arn',
          member_name: 'member_name',
          function_version: 'function_version',
          description: 'description',
          routing_config: Stubs::AliasRoutingConfiguration.default(visited),
          revision_id: 'revision_id',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['AliasArn'] = stub[:alias_arn] unless stub[:alias_arn].nil?
        data['Name'] = stub[:member_name] unless stub[:member_name].nil?
        data['FunctionVersion'] = stub[:function_version] unless stub[:function_version].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RoutingConfig'] = Stubs::AliasRoutingConfiguration.stub(stub[:routing_config]) unless stub[:routing_config].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data
      end
    end

    # Operation Stubber for ListCodeSigningConfigs
    class ListCodeSigningConfigs

      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          code_signing_configs: Stubs::CodeSigningConfigList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['CodeSigningConfigs'] = Stubs::CodeSigningConfigList.stub(stub[:code_signing_configs]) unless stub[:code_signing_configs].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # List Stubber for CodeSigningConfigList
    class CodeSigningConfigList
      def self.default(visited=[])
        return nil if visited.include?('CodeSigningConfigList')
        visited = visited + ['CodeSigningConfigList']
        [
          Stubs::CodeSigningConfig.default(visited)
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CodeSigningConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListEventSourceMappings
    class ListEventSourceMappings

      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          event_source_mappings: Stubs::EventSourceMappingsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['EventSourceMappings'] = Stubs::EventSourceMappingsList.stub(stub[:event_source_mappings]) unless stub[:event_source_mappings].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # List Stubber for EventSourceMappingsList
    class EventSourceMappingsList
      def self.default(visited=[])
        return nil if visited.include?('EventSourceMappingsList')
        visited = visited + ['EventSourceMappingsList']
        [
          Stubs::EventSourceMappingConfiguration.default(visited)
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EventSourceMappingConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventSourceMappingConfiguration
    class EventSourceMappingConfiguration

      def self.default(visited=[])
        return nil if visited.include?('EventSourceMappingConfiguration')
        visited = visited + ['EventSourceMappingConfiguration']
        {
          uuid: 'uuid',
          starting_position: 'starting_position',
          starting_position_timestamp: Time.now,
          batch_size: 1,
          maximum_batching_window_in_seconds: 1,
          parallelization_factor: 1,
          event_source_arn: 'event_source_arn',
          function_arn: 'function_arn',
          last_modified: Time.now,
          last_processing_result: 'last_processing_result',
          state: 'state',
          state_transition_reason: 'state_transition_reason',
          destination_config: Stubs::DestinationConfig.default(visited),
          topics: Stubs::Topics.default(visited),
          queues: Stubs::Queues.default(visited),
          source_access_configurations: Stubs::SourceAccessConfigurations.default(visited),
          self_managed_event_source: Stubs::SelfManagedEventSource.default(visited),
          maximum_record_age_in_seconds: 1,
          bisect_batch_on_function_error: false,
          maximum_retry_attempts: 1,
          tumbling_window_in_seconds: 1,
          function_response_types: Stubs::FunctionResponseTypeList.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['UUID'] = stub[:uuid] unless stub[:uuid].nil?
        data['StartingPosition'] = stub[:starting_position] unless stub[:starting_position].nil?
        data['StartingPositionTimestamp'] = Seahorse::TimeHelper.to_epoch_seconds(stub[:starting_position_timestamp]) unless stub[:starting_position_timestamp].nil?
        data['BatchSize'] = stub[:batch_size] unless stub[:batch_size].nil?
        data['MaximumBatchingWindowInSeconds'] = stub[:maximum_batching_window_in_seconds] unless stub[:maximum_batching_window_in_seconds].nil?
        data['ParallelizationFactor'] = stub[:parallelization_factor] unless stub[:parallelization_factor].nil?
        data['EventSourceArn'] = stub[:event_source_arn] unless stub[:event_source_arn].nil?
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['LastModified'] = Seahorse::TimeHelper.to_epoch_seconds(stub[:last_modified]) unless stub[:last_modified].nil?
        data['LastProcessingResult'] = stub[:last_processing_result] unless stub[:last_processing_result].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateTransitionReason'] = stub[:state_transition_reason] unless stub[:state_transition_reason].nil?
        data['DestinationConfig'] = Stubs::DestinationConfig.stub(stub[:destination_config]) unless stub[:destination_config].nil?
        data['Topics'] = Stubs::Topics.stub(stub[:topics]) unless stub[:topics].nil?
        data['Queues'] = Stubs::Queues.stub(stub[:queues]) unless stub[:queues].nil?
        data['SourceAccessConfigurations'] = Stubs::SourceAccessConfigurations.stub(stub[:source_access_configurations]) unless stub[:source_access_configurations].nil?
        data['SelfManagedEventSource'] = Stubs::SelfManagedEventSource.stub(stub[:self_managed_event_source]) unless stub[:self_managed_event_source].nil?
        data['MaximumRecordAgeInSeconds'] = stub[:maximum_record_age_in_seconds] unless stub[:maximum_record_age_in_seconds].nil?
        data['BisectBatchOnFunctionError'] = stub[:bisect_batch_on_function_error] unless stub[:bisect_batch_on_function_error].nil?
        data['MaximumRetryAttempts'] = stub[:maximum_retry_attempts] unless stub[:maximum_retry_attempts].nil?
        data['TumblingWindowInSeconds'] = stub[:tumbling_window_in_seconds] unless stub[:tumbling_window_in_seconds].nil?
        data['FunctionResponseTypes'] = Stubs::FunctionResponseTypeList.stub(stub[:function_response_types]) unless stub[:function_response_types].nil?
        data
      end
    end

    # Operation Stubber for ListFunctionEventInvokeConfigs
    class ListFunctionEventInvokeConfigs

      def self.default(visited=[])
        {
          function_event_invoke_configs: Stubs::FunctionEventInvokeConfigList.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FunctionEventInvokeConfigs'] = Stubs::FunctionEventInvokeConfigList.stub(stub[:function_event_invoke_configs]) unless stub[:function_event_invoke_configs].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # List Stubber for FunctionEventInvokeConfigList
    class FunctionEventInvokeConfigList
      def self.default(visited=[])
        return nil if visited.include?('FunctionEventInvokeConfigList')
        visited = visited + ['FunctionEventInvokeConfigList']
        [
          Stubs::FunctionEventInvokeConfig.default(visited)
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FunctionEventInvokeConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FunctionEventInvokeConfig
    class FunctionEventInvokeConfig

      def self.default(visited=[])
        return nil if visited.include?('FunctionEventInvokeConfig')
        visited = visited + ['FunctionEventInvokeConfig']
        {
          last_modified: Time.now,
          function_arn: 'function_arn',
          maximum_retry_attempts: 1,
          maximum_event_age_in_seconds: 1,
          destination_config: Stubs::DestinationConfig.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['LastModified'] = Seahorse::TimeHelper.to_epoch_seconds(stub[:last_modified]) unless stub[:last_modified].nil?
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['MaximumRetryAttempts'] = stub[:maximum_retry_attempts] unless stub[:maximum_retry_attempts].nil?
        data['MaximumEventAgeInSeconds'] = stub[:maximum_event_age_in_seconds] unless stub[:maximum_event_age_in_seconds].nil?
        data['DestinationConfig'] = Stubs::DestinationConfig.stub(stub[:destination_config]) unless stub[:destination_config].nil?
        data
      end
    end

    # Operation Stubber for ListFunctions
    class ListFunctions

      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          functions: Stubs::FunctionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Functions'] = Stubs::FunctionList.stub(stub[:functions]) unless stub[:functions].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # List Stubber for FunctionList
    class FunctionList
      def self.default(visited=[])
        return nil if visited.include?('FunctionList')
        visited = visited + ['FunctionList']
        [
          Stubs::FunctionConfiguration.default(visited)
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FunctionConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListFunctionsByCodeSigningConfig
    class ListFunctionsByCodeSigningConfig

      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          function_arns: Stubs::FunctionArnList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['FunctionArns'] = Stubs::FunctionArnList.stub(stub[:function_arns]) unless stub[:function_arns].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # List Stubber for FunctionArnList
    class FunctionArnList
      def self.default(visited=[])
        return nil if visited.include?('FunctionArnList')
        visited = visited + ['FunctionArnList']
        [
          'member'
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListLayerVersions
    class ListLayerVersions

      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          layer_versions: Stubs::LayerVersionsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['LayerVersions'] = Stubs::LayerVersionsList.stub(stub[:layer_versions]) unless stub[:layer_versions].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # List Stubber for LayerVersionsList
    class LayerVersionsList
      def self.default(visited=[])
        return nil if visited.include?('LayerVersionsList')
        visited = visited + ['LayerVersionsList']
        [
          Stubs::LayerVersionsListItem.default(visited)
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LayerVersionsListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LayerVersionsListItem
    class LayerVersionsListItem

      def self.default(visited=[])
        return nil if visited.include?('LayerVersionsListItem')
        visited = visited + ['LayerVersionsListItem']
        {
          layer_version_arn: 'layer_version_arn',
          version: 1,
          description: 'description',
          created_date: 'created_date',
          compatible_runtimes: Stubs::CompatibleRuntimes.default(visited),
          license_info: 'license_info',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['LayerVersionArn'] = stub[:layer_version_arn] unless stub[:layer_version_arn].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedDate'] = stub[:created_date] unless stub[:created_date].nil?
        data['CompatibleRuntimes'] = Stubs::CompatibleRuntimes.stub(stub[:compatible_runtimes]) unless stub[:compatible_runtimes].nil?
        data['LicenseInfo'] = stub[:license_info] unless stub[:license_info].nil?
        data
      end
    end

    # Operation Stubber for ListLayers
    class ListLayers

      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          layers: Stubs::LayersList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Layers'] = Stubs::LayersList.stub(stub[:layers]) unless stub[:layers].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # List Stubber for LayersList
    class LayersList
      def self.default(visited=[])
        return nil if visited.include?('LayersList')
        visited = visited + ['LayersList']
        [
          Stubs::LayersListItem.default(visited)
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LayersListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LayersListItem
    class LayersListItem

      def self.default(visited=[])
        return nil if visited.include?('LayersListItem')
        visited = visited + ['LayersListItem']
        {
          layer_name: 'layer_name',
          layer_arn: 'layer_arn',
          latest_matching_version: Stubs::LayerVersionsListItem.default(visited),
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['LayerName'] = stub[:layer_name] unless stub[:layer_name].nil?
        data['LayerArn'] = stub[:layer_arn] unless stub[:layer_arn].nil?
        data['LatestMatchingVersion'] = Stubs::LayerVersionsListItem.stub(stub[:latest_matching_version]) unless stub[:latest_matching_version].nil?
        data
      end
    end

    # Operation Stubber for ListProvisionedConcurrencyConfigs
    class ListProvisionedConcurrencyConfigs

      def self.default(visited=[])
        {
          provisioned_concurrency_configs: Stubs::ProvisionedConcurrencyConfigList.default(visited),
          next_marker: 'next_marker',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProvisionedConcurrencyConfigs'] = Stubs::ProvisionedConcurrencyConfigList.stub(stub[:provisioned_concurrency_configs]) unless stub[:provisioned_concurrency_configs].nil?
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # List Stubber for ProvisionedConcurrencyConfigList
    class ProvisionedConcurrencyConfigList
      def self.default(visited=[])
        return nil if visited.include?('ProvisionedConcurrencyConfigList')
        visited = visited + ['ProvisionedConcurrencyConfigList']
        [
          Stubs::ProvisionedConcurrencyConfigListItem.default(visited)
        ]
      end

      def self.stub(stub = [])
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProvisionedConcurrencyConfigListItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProvisionedConcurrencyConfigListItem
    class ProvisionedConcurrencyConfigListItem

      def self.default(visited=[])
        return nil if visited.include?('ProvisionedConcurrencyConfigListItem')
        visited = visited + ['ProvisionedConcurrencyConfigListItem']
        {
          function_arn: 'function_arn',
          requested_provisioned_concurrent_executions: 1,
          available_provisioned_concurrent_executions: 1,
          allocated_provisioned_concurrent_executions: 1,
          status: 'status',
          status_reason: 'status_reason',
          last_modified: 'last_modified',
        }
      end

      def self.stub(stub = {})
        stub ||= {}
        data = {}
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['RequestedProvisionedConcurrentExecutions'] = stub[:requested_provisioned_concurrent_executions] unless stub[:requested_provisioned_concurrent_executions].nil?
        data['AvailableProvisionedConcurrentExecutions'] = stub[:available_provisioned_concurrent_executions] unless stub[:available_provisioned_concurrent_executions].nil?
        data['AllocatedProvisionedConcurrentExecutions'] = stub[:allocated_provisioned_concurrent_executions] unless stub[:allocated_provisioned_concurrent_executions].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['LastModified'] = stub[:last_modified] unless stub[:last_modified].nil?
        data
      end
    end

    # Operation Stubber for ListTags
    class ListTags

      def self.default(visited=[])
        {
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for ListVersionsByFunction
    class ListVersionsByFunction

      def self.default(visited=[])
        {
          next_marker: 'next_marker',
          versions: Stubs::FunctionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextMarker'] = stub[:next_marker] unless stub[:next_marker].nil?
        data['Versions'] = Stubs::FunctionList.stub(stub[:versions]) unless stub[:versions].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for PublishLayerVersion
    class PublishLayerVersion

      def self.default(visited=[])
        {
          content: Stubs::LayerVersionContentOutput.default(visited),
          layer_arn: 'layer_arn',
          layer_version_arn: 'layer_version_arn',
          description: 'description',
          created_date: 'created_date',
          version: 1,
          compatible_runtimes: Stubs::CompatibleRuntimes.default(visited),
          license_info: 'license_info',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['Content'] = Stubs::LayerVersionContentOutput.stub(stub[:content]) unless stub[:content].nil?
        data['LayerArn'] = stub[:layer_arn] unless stub[:layer_arn].nil?
        data['LayerVersionArn'] = stub[:layer_version_arn] unless stub[:layer_version_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedDate'] = stub[:created_date] unless stub[:created_date].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['CompatibleRuntimes'] = Stubs::CompatibleRuntimes.stub(stub[:compatible_runtimes]) unless stub[:compatible_runtimes].nil?
        data['LicenseInfo'] = stub[:license_info] unless stub[:license_info].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for PublishVersion
    class PublishVersion

      def self.default(visited=[])
        {
          function_name: 'function_name',
          function_arn: 'function_arn',
          runtime: 'runtime',
          role: 'role',
          handler: 'handler',
          code_size: 1,
          description: 'description',
          timeout: 1,
          memory_size: 1,
          last_modified: 'last_modified',
          code_sha256: 'code_sha256',
          version: 'version',
          vpc_config: Stubs::VpcConfigResponse.default(visited),
          dead_letter_config: Stubs::DeadLetterConfig.default(visited),
          environment: Stubs::EnvironmentResponse.default(visited),
          kms_key_arn: 'kms_key_arn',
          tracing_config: Stubs::TracingConfigResponse.default(visited),
          master_arn: 'master_arn',
          revision_id: 'revision_id',
          layers: Stubs::LayersReferenceList.default(visited),
          state: 'state',
          state_reason: 'state_reason',
          state_reason_code: 'state_reason_code',
          last_update_status: 'last_update_status',
          last_update_status_reason: 'last_update_status_reason',
          last_update_status_reason_code: 'last_update_status_reason_code',
          file_system_configs: Stubs::FileSystemConfigList.default(visited),
          package_type: 'package_type',
          image_config_response: Stubs::ImageConfigResponse.default(visited),
          signing_profile_version_arn: 'signing_profile_version_arn',
          signing_job_arn: 'signing_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['FunctionName'] = stub[:function_name] unless stub[:function_name].nil?
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['Runtime'] = stub[:runtime] unless stub[:runtime].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['Handler'] = stub[:handler] unless stub[:handler].nil?
        data['CodeSize'] = stub[:code_size] unless stub[:code_size].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['MemorySize'] = stub[:memory_size] unless stub[:memory_size].nil?
        data['LastModified'] = stub[:last_modified] unless stub[:last_modified].nil?
        data['CodeSha256'] = stub[:code_sha256] unless stub[:code_sha256].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['VpcConfig'] = Stubs::VpcConfigResponse.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['DeadLetterConfig'] = Stubs::DeadLetterConfig.stub(stub[:dead_letter_config]) unless stub[:dead_letter_config].nil?
        data['Environment'] = Stubs::EnvironmentResponse.stub(stub[:environment]) unless stub[:environment].nil?
        data['KMSKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['TracingConfig'] = Stubs::TracingConfigResponse.stub(stub[:tracing_config]) unless stub[:tracing_config].nil?
        data['MasterArn'] = stub[:master_arn] unless stub[:master_arn].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['Layers'] = Stubs::LayersReferenceList.stub(stub[:layers]) unless stub[:layers].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['StateReasonCode'] = stub[:state_reason_code] unless stub[:state_reason_code].nil?
        data['LastUpdateStatus'] = stub[:last_update_status] unless stub[:last_update_status].nil?
        data['LastUpdateStatusReason'] = stub[:last_update_status_reason] unless stub[:last_update_status_reason].nil?
        data['LastUpdateStatusReasonCode'] = stub[:last_update_status_reason_code] unless stub[:last_update_status_reason_code].nil?
        data['FileSystemConfigs'] = Stubs::FileSystemConfigList.stub(stub[:file_system_configs]) unless stub[:file_system_configs].nil?
        data['PackageType'] = stub[:package_type] unless stub[:package_type].nil?
        data['ImageConfigResponse'] = Stubs::ImageConfigResponse.stub(stub[:image_config_response]) unless stub[:image_config_response].nil?
        data['SigningProfileVersionArn'] = stub[:signing_profile_version_arn] unless stub[:signing_profile_version_arn].nil?
        data['SigningJobArn'] = stub[:signing_job_arn] unless stub[:signing_job_arn].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for PutFunctionCodeSigningConfig
    class PutFunctionCodeSigningConfig

      def self.default(visited=[])
        {
          code_signing_config_arn: 'code_signing_config_arn',
          function_name: 'function_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CodeSigningConfigArn'] = stub[:code_signing_config_arn] unless stub[:code_signing_config_arn].nil?
        data['FunctionName'] = stub[:function_name] unless stub[:function_name].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for PutFunctionConcurrency
    class PutFunctionConcurrency

      def self.default(visited=[])
        {
          reserved_concurrent_executions: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ReservedConcurrentExecutions'] = stub[:reserved_concurrent_executions] unless stub[:reserved_concurrent_executions].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for PutFunctionEventInvokeConfig
    class PutFunctionEventInvokeConfig

      def self.default(visited=[])
        {
          last_modified: Time.now,
          function_arn: 'function_arn',
          maximum_retry_attempts: 1,
          maximum_event_age_in_seconds: 1,
          destination_config: Stubs::DestinationConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LastModified'] = Seahorse::TimeHelper.to_epoch_seconds(stub[:last_modified]) unless stub[:last_modified].nil?
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['MaximumRetryAttempts'] = stub[:maximum_retry_attempts] unless stub[:maximum_retry_attempts].nil?
        data['MaximumEventAgeInSeconds'] = stub[:maximum_event_age_in_seconds] unless stub[:maximum_event_age_in_seconds].nil?
        data['DestinationConfig'] = Stubs::DestinationConfig.stub(stub[:destination_config]) unless stub[:destination_config].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for PutProvisionedConcurrencyConfig
    class PutProvisionedConcurrencyConfig

      def self.default(visited=[])
        {
          requested_provisioned_concurrent_executions: 1,
          available_provisioned_concurrent_executions: 1,
          allocated_provisioned_concurrent_executions: 1,
          status: 'status',
          status_reason: 'status_reason',
          last_modified: 'last_modified',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['RequestedProvisionedConcurrentExecutions'] = stub[:requested_provisioned_concurrent_executions] unless stub[:requested_provisioned_concurrent_executions].nil?
        data['AvailableProvisionedConcurrentExecutions'] = stub[:available_provisioned_concurrent_executions] unless stub[:available_provisioned_concurrent_executions].nil?
        data['AllocatedProvisionedConcurrentExecutions'] = stub[:allocated_provisioned_concurrent_executions] unless stub[:allocated_provisioned_concurrent_executions].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['LastModified'] = stub[:last_modified] unless stub[:last_modified].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for RemoveLayerVersionPermission
    class RemoveLayerVersionPermission

      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for RemovePermission
    class RemovePermission

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

    # Operation Stubber for UpdateAlias
    class UpdateAlias

      def self.default(visited=[])
        {
          alias_arn: 'alias_arn',
          member_name: 'member_name',
          function_version: 'function_version',
          description: 'description',
          routing_config: Stubs::AliasRoutingConfiguration.default(visited),
          revision_id: 'revision_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AliasArn'] = stub[:alias_arn] unless stub[:alias_arn].nil?
        data['Name'] = stub[:member_name] unless stub[:member_name].nil?
        data['FunctionVersion'] = stub[:function_version] unless stub[:function_version].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RoutingConfig'] = Stubs::AliasRoutingConfiguration.stub(stub[:routing_config]) unless stub[:routing_config].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateCodeSigningConfig
    class UpdateCodeSigningConfig

      def self.default(visited=[])
        {
          code_signing_config: Stubs::CodeSigningConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CodeSigningConfig'] = Stubs::CodeSigningConfig.stub(stub[:code_signing_config]) unless stub[:code_signing_config].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateEventSourceMapping
    class UpdateEventSourceMapping

      def self.default(visited=[])
        {
          uuid: 'uuid',
          starting_position: 'starting_position',
          starting_position_timestamp: Time.now,
          batch_size: 1,
          maximum_batching_window_in_seconds: 1,
          parallelization_factor: 1,
          event_source_arn: 'event_source_arn',
          function_arn: 'function_arn',
          last_modified: Time.now,
          last_processing_result: 'last_processing_result',
          state: 'state',
          state_transition_reason: 'state_transition_reason',
          destination_config: Stubs::DestinationConfig.default(visited),
          topics: Stubs::Topics.default(visited),
          queues: Stubs::Queues.default(visited),
          source_access_configurations: Stubs::SourceAccessConfigurations.default(visited),
          self_managed_event_source: Stubs::SelfManagedEventSource.default(visited),
          maximum_record_age_in_seconds: 1,
          bisect_batch_on_function_error: false,
          maximum_retry_attempts: 1,
          tumbling_window_in_seconds: 1,
          function_response_types: Stubs::FunctionResponseTypeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['UUID'] = stub[:uuid] unless stub[:uuid].nil?
        data['StartingPosition'] = stub[:starting_position] unless stub[:starting_position].nil?
        data['StartingPositionTimestamp'] = Seahorse::TimeHelper.to_epoch_seconds(stub[:starting_position_timestamp]) unless stub[:starting_position_timestamp].nil?
        data['BatchSize'] = stub[:batch_size] unless stub[:batch_size].nil?
        data['MaximumBatchingWindowInSeconds'] = stub[:maximum_batching_window_in_seconds] unless stub[:maximum_batching_window_in_seconds].nil?
        data['ParallelizationFactor'] = stub[:parallelization_factor] unless stub[:parallelization_factor].nil?
        data['EventSourceArn'] = stub[:event_source_arn] unless stub[:event_source_arn].nil?
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['LastModified'] = Seahorse::TimeHelper.to_epoch_seconds(stub[:last_modified]) unless stub[:last_modified].nil?
        data['LastProcessingResult'] = stub[:last_processing_result] unless stub[:last_processing_result].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateTransitionReason'] = stub[:state_transition_reason] unless stub[:state_transition_reason].nil?
        data['DestinationConfig'] = Stubs::DestinationConfig.stub(stub[:destination_config]) unless stub[:destination_config].nil?
        data['Topics'] = Stubs::Topics.stub(stub[:topics]) unless stub[:topics].nil?
        data['Queues'] = Stubs::Queues.stub(stub[:queues]) unless stub[:queues].nil?
        data['SourceAccessConfigurations'] = Stubs::SourceAccessConfigurations.stub(stub[:source_access_configurations]) unless stub[:source_access_configurations].nil?
        data['SelfManagedEventSource'] = Stubs::SelfManagedEventSource.stub(stub[:self_managed_event_source]) unless stub[:self_managed_event_source].nil?
        data['MaximumRecordAgeInSeconds'] = stub[:maximum_record_age_in_seconds] unless stub[:maximum_record_age_in_seconds].nil?
        data['BisectBatchOnFunctionError'] = stub[:bisect_batch_on_function_error] unless stub[:bisect_batch_on_function_error].nil?
        data['MaximumRetryAttempts'] = stub[:maximum_retry_attempts] unless stub[:maximum_retry_attempts].nil?
        data['TumblingWindowInSeconds'] = stub[:tumbling_window_in_seconds] unless stub[:tumbling_window_in_seconds].nil?
        data['FunctionResponseTypes'] = Stubs::FunctionResponseTypeList.stub(stub[:function_response_types]) unless stub[:function_response_types].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateFunctionCode
    class UpdateFunctionCode

      def self.default(visited=[])
        {
          function_name: 'function_name',
          function_arn: 'function_arn',
          runtime: 'runtime',
          role: 'role',
          handler: 'handler',
          code_size: 1,
          description: 'description',
          timeout: 1,
          memory_size: 1,
          last_modified: 'last_modified',
          code_sha256: 'code_sha256',
          version: 'version',
          vpc_config: Stubs::VpcConfigResponse.default(visited),
          dead_letter_config: Stubs::DeadLetterConfig.default(visited),
          environment: Stubs::EnvironmentResponse.default(visited),
          kms_key_arn: 'kms_key_arn',
          tracing_config: Stubs::TracingConfigResponse.default(visited),
          master_arn: 'master_arn',
          revision_id: 'revision_id',
          layers: Stubs::LayersReferenceList.default(visited),
          state: 'state',
          state_reason: 'state_reason',
          state_reason_code: 'state_reason_code',
          last_update_status: 'last_update_status',
          last_update_status_reason: 'last_update_status_reason',
          last_update_status_reason_code: 'last_update_status_reason_code',
          file_system_configs: Stubs::FileSystemConfigList.default(visited),
          package_type: 'package_type',
          image_config_response: Stubs::ImageConfigResponse.default(visited),
          signing_profile_version_arn: 'signing_profile_version_arn',
          signing_job_arn: 'signing_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FunctionName'] = stub[:function_name] unless stub[:function_name].nil?
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['Runtime'] = stub[:runtime] unless stub[:runtime].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['Handler'] = stub[:handler] unless stub[:handler].nil?
        data['CodeSize'] = stub[:code_size] unless stub[:code_size].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['MemorySize'] = stub[:memory_size] unless stub[:memory_size].nil?
        data['LastModified'] = stub[:last_modified] unless stub[:last_modified].nil?
        data['CodeSha256'] = stub[:code_sha256] unless stub[:code_sha256].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['VpcConfig'] = Stubs::VpcConfigResponse.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['DeadLetterConfig'] = Stubs::DeadLetterConfig.stub(stub[:dead_letter_config]) unless stub[:dead_letter_config].nil?
        data['Environment'] = Stubs::EnvironmentResponse.stub(stub[:environment]) unless stub[:environment].nil?
        data['KMSKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['TracingConfig'] = Stubs::TracingConfigResponse.stub(stub[:tracing_config]) unless stub[:tracing_config].nil?
        data['MasterArn'] = stub[:master_arn] unless stub[:master_arn].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['Layers'] = Stubs::LayersReferenceList.stub(stub[:layers]) unless stub[:layers].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['StateReasonCode'] = stub[:state_reason_code] unless stub[:state_reason_code].nil?
        data['LastUpdateStatus'] = stub[:last_update_status] unless stub[:last_update_status].nil?
        data['LastUpdateStatusReason'] = stub[:last_update_status_reason] unless stub[:last_update_status_reason].nil?
        data['LastUpdateStatusReasonCode'] = stub[:last_update_status_reason_code] unless stub[:last_update_status_reason_code].nil?
        data['FileSystemConfigs'] = Stubs::FileSystemConfigList.stub(stub[:file_system_configs]) unless stub[:file_system_configs].nil?
        data['PackageType'] = stub[:package_type] unless stub[:package_type].nil?
        data['ImageConfigResponse'] = Stubs::ImageConfigResponse.stub(stub[:image_config_response]) unless stub[:image_config_response].nil?
        data['SigningProfileVersionArn'] = stub[:signing_profile_version_arn] unless stub[:signing_profile_version_arn].nil?
        data['SigningJobArn'] = stub[:signing_job_arn] unless stub[:signing_job_arn].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateFunctionConfiguration
    class UpdateFunctionConfiguration

      def self.default(visited=[])
        {
          function_name: 'function_name',
          function_arn: 'function_arn',
          runtime: 'runtime',
          role: 'role',
          handler: 'handler',
          code_size: 1,
          description: 'description',
          timeout: 1,
          memory_size: 1,
          last_modified: 'last_modified',
          code_sha256: 'code_sha256',
          version: 'version',
          vpc_config: Stubs::VpcConfigResponse.default(visited),
          dead_letter_config: Stubs::DeadLetterConfig.default(visited),
          environment: Stubs::EnvironmentResponse.default(visited),
          kms_key_arn: 'kms_key_arn',
          tracing_config: Stubs::TracingConfigResponse.default(visited),
          master_arn: 'master_arn',
          revision_id: 'revision_id',
          layers: Stubs::LayersReferenceList.default(visited),
          state: 'state',
          state_reason: 'state_reason',
          state_reason_code: 'state_reason_code',
          last_update_status: 'last_update_status',
          last_update_status_reason: 'last_update_status_reason',
          last_update_status_reason_code: 'last_update_status_reason_code',
          file_system_configs: Stubs::FileSystemConfigList.default(visited),
          package_type: 'package_type',
          image_config_response: Stubs::ImageConfigResponse.default(visited),
          signing_profile_version_arn: 'signing_profile_version_arn',
          signing_job_arn: 'signing_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['FunctionName'] = stub[:function_name] unless stub[:function_name].nil?
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['Runtime'] = stub[:runtime] unless stub[:runtime].nil?
        data['Role'] = stub[:role] unless stub[:role].nil?
        data['Handler'] = stub[:handler] unless stub[:handler].nil?
        data['CodeSize'] = stub[:code_size] unless stub[:code_size].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['MemorySize'] = stub[:memory_size] unless stub[:memory_size].nil?
        data['LastModified'] = stub[:last_modified] unless stub[:last_modified].nil?
        data['CodeSha256'] = stub[:code_sha256] unless stub[:code_sha256].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['VpcConfig'] = Stubs::VpcConfigResponse.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['DeadLetterConfig'] = Stubs::DeadLetterConfig.stub(stub[:dead_letter_config]) unless stub[:dead_letter_config].nil?
        data['Environment'] = Stubs::EnvironmentResponse.stub(stub[:environment]) unless stub[:environment].nil?
        data['KMSKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data['TracingConfig'] = Stubs::TracingConfigResponse.stub(stub[:tracing_config]) unless stub[:tracing_config].nil?
        data['MasterArn'] = stub[:master_arn] unless stub[:master_arn].nil?
        data['RevisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['Layers'] = Stubs::LayersReferenceList.stub(stub[:layers]) unless stub[:layers].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['StateReasonCode'] = stub[:state_reason_code] unless stub[:state_reason_code].nil?
        data['LastUpdateStatus'] = stub[:last_update_status] unless stub[:last_update_status].nil?
        data['LastUpdateStatusReason'] = stub[:last_update_status_reason] unless stub[:last_update_status_reason].nil?
        data['LastUpdateStatusReasonCode'] = stub[:last_update_status_reason_code] unless stub[:last_update_status_reason_code].nil?
        data['FileSystemConfigs'] = Stubs::FileSystemConfigList.stub(stub[:file_system_configs]) unless stub[:file_system_configs].nil?
        data['PackageType'] = stub[:package_type] unless stub[:package_type].nil?
        data['ImageConfigResponse'] = Stubs::ImageConfigResponse.stub(stub[:image_config_response]) unless stub[:image_config_response].nil?
        data['SigningProfileVersionArn'] = stub[:signing_profile_version_arn] unless stub[:signing_profile_version_arn].nil?
        data['SigningJobArn'] = stub[:signing_job_arn] unless stub[:signing_job_arn].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateFunctionEventInvokeConfig
    class UpdateFunctionEventInvokeConfig

      def self.default(visited=[])
        {
          last_modified: Time.now,
          function_arn: 'function_arn',
          maximum_retry_attempts: 1,
          maximum_event_age_in_seconds: 1,
          destination_config: Stubs::DestinationConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LastModified'] = Seahorse::TimeHelper.to_epoch_seconds(stub[:last_modified]) unless stub[:last_modified].nil?
        data['FunctionArn'] = stub[:function_arn] unless stub[:function_arn].nil?
        data['MaximumRetryAttempts'] = stub[:maximum_retry_attempts] unless stub[:maximum_retry_attempts].nil?
        data['MaximumEventAgeInSeconds'] = stub[:maximum_event_age_in_seconds] unless stub[:maximum_event_age_in_seconds].nil?
        data['DestinationConfig'] = Stubs::DestinationConfig.stub(stub[:destination_config]) unless stub[:destination_config].nil?
        http_resp.body = StringIO.new(Seahorse::JSON.dump(data))
      end
    end
  end
end
