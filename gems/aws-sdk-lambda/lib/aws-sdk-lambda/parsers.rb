# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Lambda
  module Parsers

    # Operation Parser for AddLayerVersionPermission
    class AddLayerVersionPermission
      def self.parse(http_resp)
        data = Types::AddLayerVersionPermissionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.statement = map['Statement']
        data.revision_id = map['RevisionId']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for PreconditionFailedException
    class PreconditionFailedException
      def self.parse(http_resp)
        data = Types::PreconditionFailedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        data.retry_after_seconds = http_resp.headers['Retry-After']
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['message'] || map['Message']
        data.reason = map['Reason']
        data
      end
    end

    # Error Parser for ServiceException
    class ServiceException
      def self.parse(http_resp)
        data = Types::ServiceException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidParameterValueException
    class InvalidParameterValueException
      def self.parse(http_resp)
        data = Types::InvalidParameterValueException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for PolicyLengthExceededException
    class PolicyLengthExceededException
      def self.parse(http_resp)
        data = Types::PolicyLengthExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceConflictException
    class ResourceConflictException
      def self.parse(http_resp)
        data = Types::ResourceConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for AddPermission
    class AddPermission
      def self.parse(http_resp)
        data = Types::AddPermissionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.statement = map['Statement']
        data
      end
    end

    # Operation Parser for CreateAlias
    class CreateAlias
      def self.parse(http_resp)
        data = Types::CreateAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.alias_arn = map['AliasArn']
        data.name = map['Name']
        data.function_version = map['FunctionVersion']
        data.description = map['Description']
        data.routing_config = (Parsers::AliasRoutingConfiguration.parse(map['RoutingConfig']) unless map['RoutingConfig'].nil?)
        data.revision_id = map['RevisionId']
        data
      end
    end

    class AliasRoutingConfiguration
      def self.parse(map)
        data = Types::AliasRoutingConfiguration.new
        data.additional_version_weights = (Parsers::AdditionalVersionWeights.parse(map['AdditionalVersionWeights']) unless map['AdditionalVersionWeights'].nil?)
        return data
      end
    end

    class AdditionalVersionWeights
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateCodeSigningConfig
    class CreateCodeSigningConfig
      def self.parse(http_resp)
        data = Types::CreateCodeSigningConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.code_signing_config = (Parsers::CodeSigningConfig.parse(map['CodeSigningConfig']) unless map['CodeSigningConfig'].nil?)
        data
      end
    end

    class CodeSigningConfig
      def self.parse(map)
        data = Types::CodeSigningConfig.new
        data.code_signing_config_id = map['CodeSigningConfigId']
        data.code_signing_config_arn = map['CodeSigningConfigArn']
        data.description = map['Description']
        data.allowed_publishers = (Parsers::AllowedPublishers.parse(map['AllowedPublishers']) unless map['AllowedPublishers'].nil?)
        data.code_signing_policies = (Parsers::CodeSigningPolicies.parse(map['CodeSigningPolicies']) unless map['CodeSigningPolicies'].nil?)
        data.last_modified = map['LastModified']
        return data
      end
    end

    class CodeSigningPolicies
      def self.parse(map)
        data = Types::CodeSigningPolicies.new
        data.untrusted_artifact_on_deployment = map['UntrustedArtifactOnDeployment']
        return data
      end
    end

    class AllowedPublishers
      def self.parse(map)
        data = Types::AllowedPublishers.new
        data.signing_profile_version_arns = (Parsers::SigningProfileVersionArns.parse(map['SigningProfileVersionArns']) unless map['SigningProfileVersionArns'].nil?)
        return data
      end
    end

    class SigningProfileVersionArns
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateEventSourceMapping
    class CreateEventSourceMapping
      def self.parse(http_resp)
        data = Types::CreateEventSourceMappingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.uuid = map['UUID']
        data.starting_position = map['StartingPosition']
        data.starting_position_timestamp = Time.at(map['StartingPositionTimestamp'].to_i) if map['StartingPositionTimestamp']
        data.batch_size = map['BatchSize']
        data.maximum_batching_window_in_seconds = map['MaximumBatchingWindowInSeconds']
        data.parallelization_factor = map['ParallelizationFactor']
        data.event_source_arn = map['EventSourceArn']
        data.filter_criteria = (Parsers::FilterCriteria.parse(map['FilterCriteria']) unless map['FilterCriteria'].nil?)
        data.function_arn = map['FunctionArn']
        data.last_modified = Time.at(map['LastModified'].to_i) if map['LastModified']
        data.last_processing_result = map['LastProcessingResult']
        data.state = map['State']
        data.state_transition_reason = map['StateTransitionReason']
        data.destination_config = (Parsers::DestinationConfig.parse(map['DestinationConfig']) unless map['DestinationConfig'].nil?)
        data.topics = (Parsers::Topics.parse(map['Topics']) unless map['Topics'].nil?)
        data.queues = (Parsers::Queues.parse(map['Queues']) unless map['Queues'].nil?)
        data.source_access_configurations = (Parsers::SourceAccessConfigurations.parse(map['SourceAccessConfigurations']) unless map['SourceAccessConfigurations'].nil?)
        data.self_managed_event_source = (Parsers::SelfManagedEventSource.parse(map['SelfManagedEventSource']) unless map['SelfManagedEventSource'].nil?)
        data.maximum_record_age_in_seconds = map['MaximumRecordAgeInSeconds']
        data.bisect_batch_on_function_error = map['BisectBatchOnFunctionError']
        data.maximum_retry_attempts = map['MaximumRetryAttempts']
        data.tumbling_window_in_seconds = map['TumblingWindowInSeconds']
        data.function_response_types = (Parsers::FunctionResponseTypeList.parse(map['FunctionResponseTypes']) unless map['FunctionResponseTypes'].nil?)
        data
      end
    end

    class FunctionResponseTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SelfManagedEventSource
      def self.parse(map)
        data = Types::SelfManagedEventSource.new
        data.endpoints = (Parsers::Endpoints.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        return data
      end
    end

    class Endpoints
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::EndpointLists.parse(value) unless value.nil?
        end
        data
      end
    end

    class EndpointLists
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SourceAccessConfigurations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SourceAccessConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class SourceAccessConfiguration
      def self.parse(map)
        data = Types::SourceAccessConfiguration.new
        data.type = map['Type']
        data.uri = map['URI']
        return data
      end
    end

    class Queues
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Topics
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class DestinationConfig
      def self.parse(map)
        data = Types::DestinationConfig.new
        data.on_success = (Parsers::OnSuccess.parse(map['OnSuccess']) unless map['OnSuccess'].nil?)
        data.on_failure = (Parsers::OnFailure.parse(map['OnFailure']) unless map['OnFailure'].nil?)
        return data
      end
    end

    class OnFailure
      def self.parse(map)
        data = Types::OnFailure.new
        data.destination = map['Destination']
        return data
      end
    end

    class OnSuccess
      def self.parse(map)
        data = Types::OnSuccess.new
        data.destination = map['Destination']
        return data
      end
    end

    class FilterCriteria
      def self.parse(map)
        data = Types::FilterCriteria.new
        data.filters = (Parsers::FilterList.parse(map['Filters']) unless map['Filters'].nil?)
        return data
      end
    end

    class FilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Filter.parse(value) unless value.nil?
        end
        data
      end
    end

    class Filter
      def self.parse(map)
        data = Types::Filter.new
        data.pattern = map['Pattern']
        return data
      end
    end

    # Operation Parser for CreateFunction
    class CreateFunction
      def self.parse(http_resp)
        data = Types::CreateFunctionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.function_name = map['FunctionName']
        data.function_arn = map['FunctionArn']
        data.runtime = map['Runtime']
        data.role = map['Role']
        data.handler = map['Handler']
        data.code_size = map['CodeSize']
        data.description = map['Description']
        data.timeout = map['Timeout']
        data.memory_size = map['MemorySize']
        data.last_modified = map['LastModified']
        data.code_sha256 = map['CodeSha256']
        data.version = map['Version']
        data.vpc_config = (Parsers::VpcConfigResponse.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.dead_letter_config = (Parsers::DeadLetterConfig.parse(map['DeadLetterConfig']) unless map['DeadLetterConfig'].nil?)
        data.environment = (Parsers::EnvironmentResponse.parse(map['Environment']) unless map['Environment'].nil?)
        data.kms_key_arn = map['KMSKeyArn']
        data.tracing_config = (Parsers::TracingConfigResponse.parse(map['TracingConfig']) unless map['TracingConfig'].nil?)
        data.master_arn = map['MasterArn']
        data.revision_id = map['RevisionId']
        data.layers = (Parsers::LayersReferenceList.parse(map['Layers']) unless map['Layers'].nil?)
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.state_reason_code = map['StateReasonCode']
        data.last_update_status = map['LastUpdateStatus']
        data.last_update_status_reason = map['LastUpdateStatusReason']
        data.last_update_status_reason_code = map['LastUpdateStatusReasonCode']
        data.file_system_configs = (Parsers::FileSystemConfigList.parse(map['FileSystemConfigs']) unless map['FileSystemConfigs'].nil?)
        data.package_type = map['PackageType']
        data.image_config_response = (Parsers::ImageConfigResponse.parse(map['ImageConfigResponse']) unless map['ImageConfigResponse'].nil?)
        data.signing_profile_version_arn = map['SigningProfileVersionArn']
        data.signing_job_arn = map['SigningJobArn']
        data.architectures = (Parsers::ArchitecturesList.parse(map['Architectures']) unless map['Architectures'].nil?)
        data.ephemeral_storage = (Parsers::EphemeralStorage.parse(map['EphemeralStorage']) unless map['EphemeralStorage'].nil?)
        data
      end
    end

    class EphemeralStorage
      def self.parse(map)
        data = Types::EphemeralStorage.new
        data.size = map['Size']
        return data
      end
    end

    class ArchitecturesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ImageConfigResponse
      def self.parse(map)
        data = Types::ImageConfigResponse.new
        data.image_config = (Parsers::ImageConfig.parse(map['ImageConfig']) unless map['ImageConfig'].nil?)
        data.error = (Parsers::ImageConfigError.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    class ImageConfigError
      def self.parse(map)
        data = Types::ImageConfigError.new
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        return data
      end
    end

    class ImageConfig
      def self.parse(map)
        data = Types::ImageConfig.new
        data.entry_point = (Parsers::StringList.parse(map['EntryPoint']) unless map['EntryPoint'].nil?)
        data.command = (Parsers::StringList.parse(map['Command']) unless map['Command'].nil?)
        data.working_directory = map['WorkingDirectory']
        return data
      end
    end

    class StringList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class FileSystemConfigList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FileSystemConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class FileSystemConfig
      def self.parse(map)
        data = Types::FileSystemConfig.new
        data.arn = map['Arn']
        data.local_mount_path = map['LocalMountPath']
        return data
      end
    end

    class LayersReferenceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Layer.parse(value) unless value.nil?
        end
        data
      end
    end

    class Layer
      def self.parse(map)
        data = Types::Layer.new
        data.arn = map['Arn']
        data.code_size = map['CodeSize']
        data.signing_profile_version_arn = map['SigningProfileVersionArn']
        data.signing_job_arn = map['SigningJobArn']
        return data
      end
    end

    class TracingConfigResponse
      def self.parse(map)
        data = Types::TracingConfigResponse.new
        data.mode = map['Mode']
        return data
      end
    end

    class EnvironmentResponse
      def self.parse(map)
        data = Types::EnvironmentResponse.new
        data.variables = (Parsers::EnvironmentVariables.parse(map['Variables']) unless map['Variables'].nil?)
        data.error = (Parsers::EnvironmentError.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    class EnvironmentError
      def self.parse(map)
        data = Types::EnvironmentError.new
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        return data
      end
    end

    class EnvironmentVariables
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class DeadLetterConfig
      def self.parse(map)
        data = Types::DeadLetterConfig.new
        data.target_arn = map['TargetArn']
        return data
      end
    end

    class VpcConfigResponse
      def self.parse(map)
        data = Types::VpcConfigResponse.new
        data.subnet_ids = (Parsers::SubnetIds.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.security_group_ids = (Parsers::SecurityGroupIds.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.vpc_id = map['VpcId']
        return data
      end
    end

    class SecurityGroupIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SubnetIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for CodeVerificationFailedException
    class CodeVerificationFailedException
      def self.parse(http_resp)
        data = Types::CodeVerificationFailedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidCodeSignatureException
    class InvalidCodeSignatureException
      def self.parse(http_resp)
        data = Types::InvalidCodeSignatureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for CodeSigningConfigNotFoundException
    class CodeSigningConfigNotFoundException
      def self.parse(http_resp)
        data = Types::CodeSigningConfigNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for CodeStorageExceededException
    class CodeStorageExceededException
      def self.parse(http_resp)
        data = Types::CodeStorageExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateFunctionUrlConfig
    class CreateFunctionUrlConfig
      def self.parse(http_resp)
        data = Types::CreateFunctionUrlConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.function_url = map['FunctionUrl']
        data.function_arn = map['FunctionArn']
        data.auth_type = map['AuthType']
        data.cors = (Parsers::Cors.parse(map['Cors']) unless map['Cors'].nil?)
        data.creation_time = map['CreationTime']
        data
      end
    end

    class Cors
      def self.parse(map)
        data = Types::Cors.new
        data.allow_credentials = map['AllowCredentials']
        data.allow_headers = (Parsers::HeadersList.parse(map['AllowHeaders']) unless map['AllowHeaders'].nil?)
        data.allow_methods = (Parsers::AllowMethodsList.parse(map['AllowMethods']) unless map['AllowMethods'].nil?)
        data.allow_origins = (Parsers::AllowOriginsList.parse(map['AllowOrigins']) unless map['AllowOrigins'].nil?)
        data.expose_headers = (Parsers::HeadersList.parse(map['ExposeHeaders']) unless map['ExposeHeaders'].nil?)
        data.max_age = map['MaxAge']
        return data
      end
    end

    class HeadersList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AllowOriginsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AllowMethodsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DeleteAlias
    class DeleteAlias
      def self.parse(http_resp)
        data = Types::DeleteAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteCodeSigningConfig
    class DeleteCodeSigningConfig
      def self.parse(http_resp)
        data = Types::DeleteCodeSigningConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteEventSourceMapping
    class DeleteEventSourceMapping
      def self.parse(http_resp)
        data = Types::DeleteEventSourceMappingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.uuid = map['UUID']
        data.starting_position = map['StartingPosition']
        data.starting_position_timestamp = Time.at(map['StartingPositionTimestamp'].to_i) if map['StartingPositionTimestamp']
        data.batch_size = map['BatchSize']
        data.maximum_batching_window_in_seconds = map['MaximumBatchingWindowInSeconds']
        data.parallelization_factor = map['ParallelizationFactor']
        data.event_source_arn = map['EventSourceArn']
        data.filter_criteria = (Parsers::FilterCriteria.parse(map['FilterCriteria']) unless map['FilterCriteria'].nil?)
        data.function_arn = map['FunctionArn']
        data.last_modified = Time.at(map['LastModified'].to_i) if map['LastModified']
        data.last_processing_result = map['LastProcessingResult']
        data.state = map['State']
        data.state_transition_reason = map['StateTransitionReason']
        data.destination_config = (Parsers::DestinationConfig.parse(map['DestinationConfig']) unless map['DestinationConfig'].nil?)
        data.topics = (Parsers::Topics.parse(map['Topics']) unless map['Topics'].nil?)
        data.queues = (Parsers::Queues.parse(map['Queues']) unless map['Queues'].nil?)
        data.source_access_configurations = (Parsers::SourceAccessConfigurations.parse(map['SourceAccessConfigurations']) unless map['SourceAccessConfigurations'].nil?)
        data.self_managed_event_source = (Parsers::SelfManagedEventSource.parse(map['SelfManagedEventSource']) unless map['SelfManagedEventSource'].nil?)
        data.maximum_record_age_in_seconds = map['MaximumRecordAgeInSeconds']
        data.bisect_batch_on_function_error = map['BisectBatchOnFunctionError']
        data.maximum_retry_attempts = map['MaximumRetryAttempts']
        data.tumbling_window_in_seconds = map['TumblingWindowInSeconds']
        data.function_response_types = (Parsers::FunctionResponseTypeList.parse(map['FunctionResponseTypes']) unless map['FunctionResponseTypes'].nil?)
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteFunction
    class DeleteFunction
      def self.parse(http_resp)
        data = Types::DeleteFunctionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteFunctionCodeSigningConfig
    class DeleteFunctionCodeSigningConfig
      def self.parse(http_resp)
        data = Types::DeleteFunctionCodeSigningConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteFunctionConcurrency
    class DeleteFunctionConcurrency
      def self.parse(http_resp)
        data = Types::DeleteFunctionConcurrencyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteFunctionEventInvokeConfig
    class DeleteFunctionEventInvokeConfig
      def self.parse(http_resp)
        data = Types::DeleteFunctionEventInvokeConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteFunctionUrlConfig
    class DeleteFunctionUrlConfig
      def self.parse(http_resp)
        data = Types::DeleteFunctionUrlConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteLayerVersion
    class DeleteLayerVersion
      def self.parse(http_resp)
        data = Types::DeleteLayerVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteProvisionedConcurrencyConfig
    class DeleteProvisionedConcurrencyConfig
      def self.parse(http_resp)
        data = Types::DeleteProvisionedConcurrencyConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetAccountSettings
    class GetAccountSettings
      def self.parse(http_resp)
        data = Types::GetAccountSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.account_limit = (Parsers::AccountLimit.parse(map['AccountLimit']) unless map['AccountLimit'].nil?)
        data.account_usage = (Parsers::AccountUsage.parse(map['AccountUsage']) unless map['AccountUsage'].nil?)
        data
      end
    end

    class AccountUsage
      def self.parse(map)
        data = Types::AccountUsage.new
        data.total_code_size = map['TotalCodeSize']
        data.function_count = map['FunctionCount']
        return data
      end
    end

    class AccountLimit
      def self.parse(map)
        data = Types::AccountLimit.new
        data.total_code_size = map['TotalCodeSize']
        data.code_size_unzipped = map['CodeSizeUnzipped']
        data.code_size_zipped = map['CodeSizeZipped']
        data.concurrent_executions = map['ConcurrentExecutions']
        data.unreserved_concurrent_executions = map['UnreservedConcurrentExecutions']
        return data
      end
    end

    # Operation Parser for GetAlias
    class GetAlias
      def self.parse(http_resp)
        data = Types::GetAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.alias_arn = map['AliasArn']
        data.name = map['Name']
        data.function_version = map['FunctionVersion']
        data.description = map['Description']
        data.routing_config = (Parsers::AliasRoutingConfiguration.parse(map['RoutingConfig']) unless map['RoutingConfig'].nil?)
        data.revision_id = map['RevisionId']
        data
      end
    end

    # Operation Parser for GetCodeSigningConfig
    class GetCodeSigningConfig
      def self.parse(http_resp)
        data = Types::GetCodeSigningConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.code_signing_config = (Parsers::CodeSigningConfig.parse(map['CodeSigningConfig']) unless map['CodeSigningConfig'].nil?)
        data
      end
    end

    # Operation Parser for GetEventSourceMapping
    class GetEventSourceMapping
      def self.parse(http_resp)
        data = Types::GetEventSourceMappingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.uuid = map['UUID']
        data.starting_position = map['StartingPosition']
        data.starting_position_timestamp = Time.at(map['StartingPositionTimestamp'].to_i) if map['StartingPositionTimestamp']
        data.batch_size = map['BatchSize']
        data.maximum_batching_window_in_seconds = map['MaximumBatchingWindowInSeconds']
        data.parallelization_factor = map['ParallelizationFactor']
        data.event_source_arn = map['EventSourceArn']
        data.filter_criteria = (Parsers::FilterCriteria.parse(map['FilterCriteria']) unless map['FilterCriteria'].nil?)
        data.function_arn = map['FunctionArn']
        data.last_modified = Time.at(map['LastModified'].to_i) if map['LastModified']
        data.last_processing_result = map['LastProcessingResult']
        data.state = map['State']
        data.state_transition_reason = map['StateTransitionReason']
        data.destination_config = (Parsers::DestinationConfig.parse(map['DestinationConfig']) unless map['DestinationConfig'].nil?)
        data.topics = (Parsers::Topics.parse(map['Topics']) unless map['Topics'].nil?)
        data.queues = (Parsers::Queues.parse(map['Queues']) unless map['Queues'].nil?)
        data.source_access_configurations = (Parsers::SourceAccessConfigurations.parse(map['SourceAccessConfigurations']) unless map['SourceAccessConfigurations'].nil?)
        data.self_managed_event_source = (Parsers::SelfManagedEventSource.parse(map['SelfManagedEventSource']) unless map['SelfManagedEventSource'].nil?)
        data.maximum_record_age_in_seconds = map['MaximumRecordAgeInSeconds']
        data.bisect_batch_on_function_error = map['BisectBatchOnFunctionError']
        data.maximum_retry_attempts = map['MaximumRetryAttempts']
        data.tumbling_window_in_seconds = map['TumblingWindowInSeconds']
        data.function_response_types = (Parsers::FunctionResponseTypeList.parse(map['FunctionResponseTypes']) unless map['FunctionResponseTypes'].nil?)
        data
      end
    end

    # Operation Parser for GetFunction
    class GetFunction
      def self.parse(http_resp)
        data = Types::GetFunctionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.configuration = (Parsers::FunctionConfiguration.parse(map['Configuration']) unless map['Configuration'].nil?)
        data.code = (Parsers::FunctionCodeLocation.parse(map['Code']) unless map['Code'].nil?)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data.concurrency = (Parsers::Concurrency.parse(map['Concurrency']) unless map['Concurrency'].nil?)
        data
      end
    end

    class Concurrency
      def self.parse(map)
        data = Types::Concurrency.new
        data.reserved_concurrent_executions = map['ReservedConcurrentExecutions']
        return data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class FunctionCodeLocation
      def self.parse(map)
        data = Types::FunctionCodeLocation.new
        data.repository_type = map['RepositoryType']
        data.location = map['Location']
        data.image_uri = map['ImageUri']
        data.resolved_image_uri = map['ResolvedImageUri']
        return data
      end
    end

    class FunctionConfiguration
      def self.parse(map)
        data = Types::FunctionConfiguration.new
        data.function_name = map['FunctionName']
        data.function_arn = map['FunctionArn']
        data.runtime = map['Runtime']
        data.role = map['Role']
        data.handler = map['Handler']
        data.code_size = map['CodeSize']
        data.description = map['Description']
        data.timeout = map['Timeout']
        data.memory_size = map['MemorySize']
        data.last_modified = map['LastModified']
        data.code_sha256 = map['CodeSha256']
        data.version = map['Version']
        data.vpc_config = (Parsers::VpcConfigResponse.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.dead_letter_config = (Parsers::DeadLetterConfig.parse(map['DeadLetterConfig']) unless map['DeadLetterConfig'].nil?)
        data.environment = (Parsers::EnvironmentResponse.parse(map['Environment']) unless map['Environment'].nil?)
        data.kms_key_arn = map['KMSKeyArn']
        data.tracing_config = (Parsers::TracingConfigResponse.parse(map['TracingConfig']) unless map['TracingConfig'].nil?)
        data.master_arn = map['MasterArn']
        data.revision_id = map['RevisionId']
        data.layers = (Parsers::LayersReferenceList.parse(map['Layers']) unless map['Layers'].nil?)
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.state_reason_code = map['StateReasonCode']
        data.last_update_status = map['LastUpdateStatus']
        data.last_update_status_reason = map['LastUpdateStatusReason']
        data.last_update_status_reason_code = map['LastUpdateStatusReasonCode']
        data.file_system_configs = (Parsers::FileSystemConfigList.parse(map['FileSystemConfigs']) unless map['FileSystemConfigs'].nil?)
        data.package_type = map['PackageType']
        data.image_config_response = (Parsers::ImageConfigResponse.parse(map['ImageConfigResponse']) unless map['ImageConfigResponse'].nil?)
        data.signing_profile_version_arn = map['SigningProfileVersionArn']
        data.signing_job_arn = map['SigningJobArn']
        data.architectures = (Parsers::ArchitecturesList.parse(map['Architectures']) unless map['Architectures'].nil?)
        data.ephemeral_storage = (Parsers::EphemeralStorage.parse(map['EphemeralStorage']) unless map['EphemeralStorage'].nil?)
        return data
      end
    end

    # Operation Parser for GetFunctionCodeSigningConfig
    class GetFunctionCodeSigningConfig
      def self.parse(http_resp)
        data = Types::GetFunctionCodeSigningConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.code_signing_config_arn = map['CodeSigningConfigArn']
        data.function_name = map['FunctionName']
        data
      end
    end

    # Operation Parser for GetFunctionConcurrency
    class GetFunctionConcurrency
      def self.parse(http_resp)
        data = Types::GetFunctionConcurrencyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.reserved_concurrent_executions = map['ReservedConcurrentExecutions']
        data
      end
    end

    # Operation Parser for GetFunctionConfiguration
    class GetFunctionConfiguration
      def self.parse(http_resp)
        data = Types::GetFunctionConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.function_name = map['FunctionName']
        data.function_arn = map['FunctionArn']
        data.runtime = map['Runtime']
        data.role = map['Role']
        data.handler = map['Handler']
        data.code_size = map['CodeSize']
        data.description = map['Description']
        data.timeout = map['Timeout']
        data.memory_size = map['MemorySize']
        data.last_modified = map['LastModified']
        data.code_sha256 = map['CodeSha256']
        data.version = map['Version']
        data.vpc_config = (Parsers::VpcConfigResponse.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.dead_letter_config = (Parsers::DeadLetterConfig.parse(map['DeadLetterConfig']) unless map['DeadLetterConfig'].nil?)
        data.environment = (Parsers::EnvironmentResponse.parse(map['Environment']) unless map['Environment'].nil?)
        data.kms_key_arn = map['KMSKeyArn']
        data.tracing_config = (Parsers::TracingConfigResponse.parse(map['TracingConfig']) unless map['TracingConfig'].nil?)
        data.master_arn = map['MasterArn']
        data.revision_id = map['RevisionId']
        data.layers = (Parsers::LayersReferenceList.parse(map['Layers']) unless map['Layers'].nil?)
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.state_reason_code = map['StateReasonCode']
        data.last_update_status = map['LastUpdateStatus']
        data.last_update_status_reason = map['LastUpdateStatusReason']
        data.last_update_status_reason_code = map['LastUpdateStatusReasonCode']
        data.file_system_configs = (Parsers::FileSystemConfigList.parse(map['FileSystemConfigs']) unless map['FileSystemConfigs'].nil?)
        data.package_type = map['PackageType']
        data.image_config_response = (Parsers::ImageConfigResponse.parse(map['ImageConfigResponse']) unless map['ImageConfigResponse'].nil?)
        data.signing_profile_version_arn = map['SigningProfileVersionArn']
        data.signing_job_arn = map['SigningJobArn']
        data.architectures = (Parsers::ArchitecturesList.parse(map['Architectures']) unless map['Architectures'].nil?)
        data.ephemeral_storage = (Parsers::EphemeralStorage.parse(map['EphemeralStorage']) unless map['EphemeralStorage'].nil?)
        data
      end
    end

    # Operation Parser for GetFunctionEventInvokeConfig
    class GetFunctionEventInvokeConfig
      def self.parse(http_resp)
        data = Types::GetFunctionEventInvokeConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.last_modified = Time.at(map['LastModified'].to_i) if map['LastModified']
        data.function_arn = map['FunctionArn']
        data.maximum_retry_attempts = map['MaximumRetryAttempts']
        data.maximum_event_age_in_seconds = map['MaximumEventAgeInSeconds']
        data.destination_config = (Parsers::DestinationConfig.parse(map['DestinationConfig']) unless map['DestinationConfig'].nil?)
        data
      end
    end

    # Operation Parser for GetFunctionUrlConfig
    class GetFunctionUrlConfig
      def self.parse(http_resp)
        data = Types::GetFunctionUrlConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.function_url = map['FunctionUrl']
        data.function_arn = map['FunctionArn']
        data.auth_type = map['AuthType']
        data.cors = (Parsers::Cors.parse(map['Cors']) unless map['Cors'].nil?)
        data.creation_time = map['CreationTime']
        data.last_modified_time = map['LastModifiedTime']
        data
      end
    end

    # Operation Parser for GetLayerVersion
    class GetLayerVersion
      def self.parse(http_resp)
        data = Types::GetLayerVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content = (Parsers::LayerVersionContentOutput.parse(map['Content']) unless map['Content'].nil?)
        data.layer_arn = map['LayerArn']
        data.layer_version_arn = map['LayerVersionArn']
        data.description = map['Description']
        data.created_date = map['CreatedDate']
        data.version = map['Version']
        data.compatible_runtimes = (Parsers::CompatibleRuntimes.parse(map['CompatibleRuntimes']) unless map['CompatibleRuntimes'].nil?)
        data.license_info = map['LicenseInfo']
        data.compatible_architectures = (Parsers::CompatibleArchitectures.parse(map['CompatibleArchitectures']) unless map['CompatibleArchitectures'].nil?)
        data
      end
    end

    class CompatibleArchitectures
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class CompatibleRuntimes
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class LayerVersionContentOutput
      def self.parse(map)
        data = Types::LayerVersionContentOutput.new
        data.location = map['Location']
        data.code_sha256 = map['CodeSha256']
        data.code_size = map['CodeSize']
        data.signing_profile_version_arn = map['SigningProfileVersionArn']
        data.signing_job_arn = map['SigningJobArn']
        return data
      end
    end

    # Operation Parser for GetLayerVersionByArn
    class GetLayerVersionByArn
      def self.parse(http_resp)
        data = Types::GetLayerVersionByArnOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content = (Parsers::LayerVersionContentOutput.parse(map['Content']) unless map['Content'].nil?)
        data.layer_arn = map['LayerArn']
        data.layer_version_arn = map['LayerVersionArn']
        data.description = map['Description']
        data.created_date = map['CreatedDate']
        data.version = map['Version']
        data.compatible_runtimes = (Parsers::CompatibleRuntimes.parse(map['CompatibleRuntimes']) unless map['CompatibleRuntimes'].nil?)
        data.license_info = map['LicenseInfo']
        data.compatible_architectures = (Parsers::CompatibleArchitectures.parse(map['CompatibleArchitectures']) unless map['CompatibleArchitectures'].nil?)
        data
      end
    end

    # Operation Parser for GetLayerVersionPolicy
    class GetLayerVersionPolicy
      def self.parse(http_resp)
        data = Types::GetLayerVersionPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = map['Policy']
        data.revision_id = map['RevisionId']
        data
      end
    end

    # Operation Parser for GetPolicy
    class GetPolicy
      def self.parse(http_resp)
        data = Types::GetPolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = map['Policy']
        data.revision_id = map['RevisionId']
        data
      end
    end

    # Operation Parser for GetProvisionedConcurrencyConfig
    class GetProvisionedConcurrencyConfig
      def self.parse(http_resp)
        data = Types::GetProvisionedConcurrencyConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.requested_provisioned_concurrent_executions = map['RequestedProvisionedConcurrentExecutions']
        data.available_provisioned_concurrent_executions = map['AvailableProvisionedConcurrentExecutions']
        data.allocated_provisioned_concurrent_executions = map['AllocatedProvisionedConcurrentExecutions']
        data.status = map['Status']
        data.status_reason = map['StatusReason']
        data.last_modified = map['LastModified']
        data
      end
    end

    # Error Parser for ProvisionedConcurrencyConfigNotFoundException
    class ProvisionedConcurrencyConfigNotFoundException
      def self.parse(http_resp)
        data = Types::ProvisionedConcurrencyConfigNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for Invoke
    class Invoke
      def self.parse(http_resp)
        data = Types::InvokeOutput.new
        data.function_error = http_resp.headers['X-Amz-Function-Error']
        data.log_result = http_resp.headers['X-Amz-Log-Result']
        data.executed_version = http_resp.headers['X-Amz-Executed-Version']
        data.status_code = http_resp.status
        payload = http_resp.body.read
        data.payload = payload unless payload.empty?
        data
      end
    end

    # Error Parser for KMSNotFoundException
    class KMSNotFoundException
      def self.parse(http_resp)
        data = Types::KMSNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidSubnetIDException
    class InvalidSubnetIDException
      def self.parse(http_resp)
        data = Types::InvalidSubnetIDException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for KMSDisabledException
    class KMSDisabledException
      def self.parse(http_resp)
        data = Types::KMSDisabledException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EFSIOException
    class EFSIOException
      def self.parse(http_resp)
        data = Types::EFSIOException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EFSMountConnectivityException
    class EFSMountConnectivityException
      def self.parse(http_resp)
        data = Types::EFSMountConnectivityException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EFSMountFailureException
    class EFSMountFailureException
      def self.parse(http_resp)
        data = Types::EFSMountFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotReadyException
    class ResourceNotReadyException
      def self.parse(http_resp)
        data = Types::ResourceNotReadyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidZipFileException
    class InvalidZipFileException
      def self.parse(http_resp)
        data = Types::InvalidZipFileException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestContentException
    class InvalidRequestContentException
      def self.parse(http_resp)
        data = Types::InvalidRequestContentException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for EC2ThrottledException
    class EC2ThrottledException
      def self.parse(http_resp)
        data = Types::EC2ThrottledException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for SubnetIPAddressLimitReachedException
    class SubnetIPAddressLimitReachedException
      def self.parse(http_resp)
        data = Types::SubnetIPAddressLimitReachedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidSecurityGroupIDException
    class InvalidSecurityGroupIDException
      def self.parse(http_resp)
        data = Types::InvalidSecurityGroupIDException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for RequestTooLargeException
    class RequestTooLargeException
      def self.parse(http_resp)
        data = Types::RequestTooLargeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnsupportedMediaTypeException
    class UnsupportedMediaTypeException
      def self.parse(http_resp)
        data = Types::UnsupportedMediaTypeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for EFSMountTimeoutException
    class EFSMountTimeoutException
      def self.parse(http_resp)
        data = Types::EFSMountTimeoutException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ENILimitReachedException
    class ENILimitReachedException
      def self.parse(http_resp)
        data = Types::ENILimitReachedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EC2UnexpectedException
    class EC2UnexpectedException
      def self.parse(http_resp)
        data = Types::EC2UnexpectedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data.ec2_error_code = map['EC2ErrorCode']
        data
      end
    end

    # Error Parser for EC2AccessDeniedException
    class EC2AccessDeniedException
      def self.parse(http_resp)
        data = Types::EC2AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidRuntimeException
    class InvalidRuntimeException
      def self.parse(http_resp)
        data = Types::InvalidRuntimeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for KMSAccessDeniedException
    class KMSAccessDeniedException
      def self.parse(http_resp)
        data = Types::KMSAccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Error Parser for KMSInvalidStateException
    class KMSInvalidStateException
      def self.parse(http_resp)
        data = Types::KMSInvalidStateException.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['Type']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for InvokeAsync
    class InvokeAsync
      def self.parse(http_resp)
        data = Types::InvokeAsyncOutput.new
        data.status = http_resp.status
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ListAliases
    class ListAliases
      def self.parse(http_resp)
        data = Types::ListAliasesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_marker = map['NextMarker']
        data.aliases = (Parsers::AliasList.parse(map['Aliases']) unless map['Aliases'].nil?)
        data
      end
    end

    class AliasList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AliasConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class AliasConfiguration
      def self.parse(map)
        data = Types::AliasConfiguration.new
        data.alias_arn = map['AliasArn']
        data.name = map['Name']
        data.function_version = map['FunctionVersion']
        data.description = map['Description']
        data.routing_config = (Parsers::AliasRoutingConfiguration.parse(map['RoutingConfig']) unless map['RoutingConfig'].nil?)
        data.revision_id = map['RevisionId']
        return data
      end
    end

    # Operation Parser for ListCodeSigningConfigs
    class ListCodeSigningConfigs
      def self.parse(http_resp)
        data = Types::ListCodeSigningConfigsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_marker = map['NextMarker']
        data.code_signing_configs = (Parsers::CodeSigningConfigList.parse(map['CodeSigningConfigs']) unless map['CodeSigningConfigs'].nil?)
        data
      end
    end

    class CodeSigningConfigList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CodeSigningConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListEventSourceMappings
    class ListEventSourceMappings
      def self.parse(http_resp)
        data = Types::ListEventSourceMappingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_marker = map['NextMarker']
        data.event_source_mappings = (Parsers::EventSourceMappingsList.parse(map['EventSourceMappings']) unless map['EventSourceMappings'].nil?)
        data
      end
    end

    class EventSourceMappingsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EventSourceMappingConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class EventSourceMappingConfiguration
      def self.parse(map)
        data = Types::EventSourceMappingConfiguration.new
        data.uuid = map['UUID']
        data.starting_position = map['StartingPosition']
        data.starting_position_timestamp = Time.at(map['StartingPositionTimestamp'].to_i) if map['StartingPositionTimestamp']
        data.batch_size = map['BatchSize']
        data.maximum_batching_window_in_seconds = map['MaximumBatchingWindowInSeconds']
        data.parallelization_factor = map['ParallelizationFactor']
        data.event_source_arn = map['EventSourceArn']
        data.filter_criteria = (Parsers::FilterCriteria.parse(map['FilterCriteria']) unless map['FilterCriteria'].nil?)
        data.function_arn = map['FunctionArn']
        data.last_modified = Time.at(map['LastModified'].to_i) if map['LastModified']
        data.last_processing_result = map['LastProcessingResult']
        data.state = map['State']
        data.state_transition_reason = map['StateTransitionReason']
        data.destination_config = (Parsers::DestinationConfig.parse(map['DestinationConfig']) unless map['DestinationConfig'].nil?)
        data.topics = (Parsers::Topics.parse(map['Topics']) unless map['Topics'].nil?)
        data.queues = (Parsers::Queues.parse(map['Queues']) unless map['Queues'].nil?)
        data.source_access_configurations = (Parsers::SourceAccessConfigurations.parse(map['SourceAccessConfigurations']) unless map['SourceAccessConfigurations'].nil?)
        data.self_managed_event_source = (Parsers::SelfManagedEventSource.parse(map['SelfManagedEventSource']) unless map['SelfManagedEventSource'].nil?)
        data.maximum_record_age_in_seconds = map['MaximumRecordAgeInSeconds']
        data.bisect_batch_on_function_error = map['BisectBatchOnFunctionError']
        data.maximum_retry_attempts = map['MaximumRetryAttempts']
        data.tumbling_window_in_seconds = map['TumblingWindowInSeconds']
        data.function_response_types = (Parsers::FunctionResponseTypeList.parse(map['FunctionResponseTypes']) unless map['FunctionResponseTypes'].nil?)
        return data
      end
    end

    # Operation Parser for ListFunctionEventInvokeConfigs
    class ListFunctionEventInvokeConfigs
      def self.parse(http_resp)
        data = Types::ListFunctionEventInvokeConfigsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.function_event_invoke_configs = (Parsers::FunctionEventInvokeConfigList.parse(map['FunctionEventInvokeConfigs']) unless map['FunctionEventInvokeConfigs'].nil?)
        data.next_marker = map['NextMarker']
        data
      end
    end

    class FunctionEventInvokeConfigList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FunctionEventInvokeConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class FunctionEventInvokeConfig
      def self.parse(map)
        data = Types::FunctionEventInvokeConfig.new
        data.last_modified = Time.at(map['LastModified'].to_i) if map['LastModified']
        data.function_arn = map['FunctionArn']
        data.maximum_retry_attempts = map['MaximumRetryAttempts']
        data.maximum_event_age_in_seconds = map['MaximumEventAgeInSeconds']
        data.destination_config = (Parsers::DestinationConfig.parse(map['DestinationConfig']) unless map['DestinationConfig'].nil?)
        return data
      end
    end

    # Operation Parser for ListFunctionUrlConfigs
    class ListFunctionUrlConfigs
      def self.parse(http_resp)
        data = Types::ListFunctionUrlConfigsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.function_url_configs = (Parsers::FunctionUrlConfigList.parse(map['FunctionUrlConfigs']) unless map['FunctionUrlConfigs'].nil?)
        data.next_marker = map['NextMarker']
        data
      end
    end

    class FunctionUrlConfigList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FunctionUrlConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class FunctionUrlConfig
      def self.parse(map)
        data = Types::FunctionUrlConfig.new
        data.function_url = map['FunctionUrl']
        data.function_arn = map['FunctionArn']
        data.creation_time = map['CreationTime']
        data.last_modified_time = map['LastModifiedTime']
        data.cors = (Parsers::Cors.parse(map['Cors']) unless map['Cors'].nil?)
        data.auth_type = map['AuthType']
        return data
      end
    end

    # Operation Parser for ListFunctions
    class ListFunctions
      def self.parse(http_resp)
        data = Types::ListFunctionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_marker = map['NextMarker']
        data.functions = (Parsers::FunctionList.parse(map['Functions']) unless map['Functions'].nil?)
        data
      end
    end

    class FunctionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FunctionConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListFunctionsByCodeSigningConfig
    class ListFunctionsByCodeSigningConfig
      def self.parse(http_resp)
        data = Types::ListFunctionsByCodeSigningConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_marker = map['NextMarker']
        data.function_arns = (Parsers::FunctionArnList.parse(map['FunctionArns']) unless map['FunctionArns'].nil?)
        data
      end
    end

    class FunctionArnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListLayerVersions
    class ListLayerVersions
      def self.parse(http_resp)
        data = Types::ListLayerVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_marker = map['NextMarker']
        data.layer_versions = (Parsers::LayerVersionsList.parse(map['LayerVersions']) unless map['LayerVersions'].nil?)
        data
      end
    end

    class LayerVersionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::LayerVersionsListItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class LayerVersionsListItem
      def self.parse(map)
        data = Types::LayerVersionsListItem.new
        data.layer_version_arn = map['LayerVersionArn']
        data.version = map['Version']
        data.description = map['Description']
        data.created_date = map['CreatedDate']
        data.compatible_runtimes = (Parsers::CompatibleRuntimes.parse(map['CompatibleRuntimes']) unless map['CompatibleRuntimes'].nil?)
        data.license_info = map['LicenseInfo']
        data.compatible_architectures = (Parsers::CompatibleArchitectures.parse(map['CompatibleArchitectures']) unless map['CompatibleArchitectures'].nil?)
        return data
      end
    end

    # Operation Parser for ListLayers
    class ListLayers
      def self.parse(http_resp)
        data = Types::ListLayersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_marker = map['NextMarker']
        data.layers = (Parsers::LayersList.parse(map['Layers']) unless map['Layers'].nil?)
        data
      end
    end

    class LayersList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::LayersListItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class LayersListItem
      def self.parse(map)
        data = Types::LayersListItem.new
        data.layer_name = map['LayerName']
        data.layer_arn = map['LayerArn']
        data.latest_matching_version = (Parsers::LayerVersionsListItem.parse(map['LatestMatchingVersion']) unless map['LatestMatchingVersion'].nil?)
        return data
      end
    end

    # Operation Parser for ListProvisionedConcurrencyConfigs
    class ListProvisionedConcurrencyConfigs
      def self.parse(http_resp)
        data = Types::ListProvisionedConcurrencyConfigsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.provisioned_concurrency_configs = (Parsers::ProvisionedConcurrencyConfigList.parse(map['ProvisionedConcurrencyConfigs']) unless map['ProvisionedConcurrencyConfigs'].nil?)
        data.next_marker = map['NextMarker']
        data
      end
    end

    class ProvisionedConcurrencyConfigList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ProvisionedConcurrencyConfigListItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProvisionedConcurrencyConfigListItem
      def self.parse(map)
        data = Types::ProvisionedConcurrencyConfigListItem.new
        data.function_arn = map['FunctionArn']
        data.requested_provisioned_concurrent_executions = map['RequestedProvisionedConcurrentExecutions']
        data.available_provisioned_concurrent_executions = map['AvailableProvisionedConcurrentExecutions']
        data.allocated_provisioned_concurrent_executions = map['AllocatedProvisionedConcurrentExecutions']
        data.status = map['Status']
        data.status_reason = map['StatusReason']
        data.last_modified = map['LastModified']
        return data
      end
    end

    # Operation Parser for ListTags
    class ListTags
      def self.parse(http_resp)
        data = Types::ListTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for ListVersionsByFunction
    class ListVersionsByFunction
      def self.parse(http_resp)
        data = Types::ListVersionsByFunctionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_marker = map['NextMarker']
        data.versions = (Parsers::FunctionList.parse(map['Versions']) unless map['Versions'].nil?)
        data
      end
    end

    # Operation Parser for PublishLayerVersion
    class PublishLayerVersion
      def self.parse(http_resp)
        data = Types::PublishLayerVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content = (Parsers::LayerVersionContentOutput.parse(map['Content']) unless map['Content'].nil?)
        data.layer_arn = map['LayerArn']
        data.layer_version_arn = map['LayerVersionArn']
        data.description = map['Description']
        data.created_date = map['CreatedDate']
        data.version = map['Version']
        data.compatible_runtimes = (Parsers::CompatibleRuntimes.parse(map['CompatibleRuntimes']) unless map['CompatibleRuntimes'].nil?)
        data.license_info = map['LicenseInfo']
        data.compatible_architectures = (Parsers::CompatibleArchitectures.parse(map['CompatibleArchitectures']) unless map['CompatibleArchitectures'].nil?)
        data
      end
    end

    # Operation Parser for PublishVersion
    class PublishVersion
      def self.parse(http_resp)
        data = Types::PublishVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.function_name = map['FunctionName']
        data.function_arn = map['FunctionArn']
        data.runtime = map['Runtime']
        data.role = map['Role']
        data.handler = map['Handler']
        data.code_size = map['CodeSize']
        data.description = map['Description']
        data.timeout = map['Timeout']
        data.memory_size = map['MemorySize']
        data.last_modified = map['LastModified']
        data.code_sha256 = map['CodeSha256']
        data.version = map['Version']
        data.vpc_config = (Parsers::VpcConfigResponse.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.dead_letter_config = (Parsers::DeadLetterConfig.parse(map['DeadLetterConfig']) unless map['DeadLetterConfig'].nil?)
        data.environment = (Parsers::EnvironmentResponse.parse(map['Environment']) unless map['Environment'].nil?)
        data.kms_key_arn = map['KMSKeyArn']
        data.tracing_config = (Parsers::TracingConfigResponse.parse(map['TracingConfig']) unless map['TracingConfig'].nil?)
        data.master_arn = map['MasterArn']
        data.revision_id = map['RevisionId']
        data.layers = (Parsers::LayersReferenceList.parse(map['Layers']) unless map['Layers'].nil?)
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.state_reason_code = map['StateReasonCode']
        data.last_update_status = map['LastUpdateStatus']
        data.last_update_status_reason = map['LastUpdateStatusReason']
        data.last_update_status_reason_code = map['LastUpdateStatusReasonCode']
        data.file_system_configs = (Parsers::FileSystemConfigList.parse(map['FileSystemConfigs']) unless map['FileSystemConfigs'].nil?)
        data.package_type = map['PackageType']
        data.image_config_response = (Parsers::ImageConfigResponse.parse(map['ImageConfigResponse']) unless map['ImageConfigResponse'].nil?)
        data.signing_profile_version_arn = map['SigningProfileVersionArn']
        data.signing_job_arn = map['SigningJobArn']
        data.architectures = (Parsers::ArchitecturesList.parse(map['Architectures']) unless map['Architectures'].nil?)
        data.ephemeral_storage = (Parsers::EphemeralStorage.parse(map['EphemeralStorage']) unless map['EphemeralStorage'].nil?)
        data
      end
    end

    # Operation Parser for PutFunctionCodeSigningConfig
    class PutFunctionCodeSigningConfig
      def self.parse(http_resp)
        data = Types::PutFunctionCodeSigningConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.code_signing_config_arn = map['CodeSigningConfigArn']
        data.function_name = map['FunctionName']
        data
      end
    end

    # Operation Parser for PutFunctionConcurrency
    class PutFunctionConcurrency
      def self.parse(http_resp)
        data = Types::PutFunctionConcurrencyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.reserved_concurrent_executions = map['ReservedConcurrentExecutions']
        data
      end
    end

    # Operation Parser for PutFunctionEventInvokeConfig
    class PutFunctionEventInvokeConfig
      def self.parse(http_resp)
        data = Types::PutFunctionEventInvokeConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.last_modified = Time.at(map['LastModified'].to_i) if map['LastModified']
        data.function_arn = map['FunctionArn']
        data.maximum_retry_attempts = map['MaximumRetryAttempts']
        data.maximum_event_age_in_seconds = map['MaximumEventAgeInSeconds']
        data.destination_config = (Parsers::DestinationConfig.parse(map['DestinationConfig']) unless map['DestinationConfig'].nil?)
        data
      end
    end

    # Operation Parser for PutProvisionedConcurrencyConfig
    class PutProvisionedConcurrencyConfig
      def self.parse(http_resp)
        data = Types::PutProvisionedConcurrencyConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.requested_provisioned_concurrent_executions = map['RequestedProvisionedConcurrentExecutions']
        data.available_provisioned_concurrent_executions = map['AvailableProvisionedConcurrentExecutions']
        data.allocated_provisioned_concurrent_executions = map['AllocatedProvisionedConcurrentExecutions']
        data.status = map['Status']
        data.status_reason = map['StatusReason']
        data.last_modified = map['LastModified']
        data
      end
    end

    # Operation Parser for RemoveLayerVersionPermission
    class RemoveLayerVersionPermission
      def self.parse(http_resp)
        data = Types::RemoveLayerVersionPermissionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RemovePermission
    class RemovePermission
      def self.parse(http_resp)
        data = Types::RemovePermissionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateAlias
    class UpdateAlias
      def self.parse(http_resp)
        data = Types::UpdateAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.alias_arn = map['AliasArn']
        data.name = map['Name']
        data.function_version = map['FunctionVersion']
        data.description = map['Description']
        data.routing_config = (Parsers::AliasRoutingConfiguration.parse(map['RoutingConfig']) unless map['RoutingConfig'].nil?)
        data.revision_id = map['RevisionId']
        data
      end
    end

    # Operation Parser for UpdateCodeSigningConfig
    class UpdateCodeSigningConfig
      def self.parse(http_resp)
        data = Types::UpdateCodeSigningConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.code_signing_config = (Parsers::CodeSigningConfig.parse(map['CodeSigningConfig']) unless map['CodeSigningConfig'].nil?)
        data
      end
    end

    # Operation Parser for UpdateEventSourceMapping
    class UpdateEventSourceMapping
      def self.parse(http_resp)
        data = Types::UpdateEventSourceMappingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.uuid = map['UUID']
        data.starting_position = map['StartingPosition']
        data.starting_position_timestamp = Time.at(map['StartingPositionTimestamp'].to_i) if map['StartingPositionTimestamp']
        data.batch_size = map['BatchSize']
        data.maximum_batching_window_in_seconds = map['MaximumBatchingWindowInSeconds']
        data.parallelization_factor = map['ParallelizationFactor']
        data.event_source_arn = map['EventSourceArn']
        data.filter_criteria = (Parsers::FilterCriteria.parse(map['FilterCriteria']) unless map['FilterCriteria'].nil?)
        data.function_arn = map['FunctionArn']
        data.last_modified = Time.at(map['LastModified'].to_i) if map['LastModified']
        data.last_processing_result = map['LastProcessingResult']
        data.state = map['State']
        data.state_transition_reason = map['StateTransitionReason']
        data.destination_config = (Parsers::DestinationConfig.parse(map['DestinationConfig']) unless map['DestinationConfig'].nil?)
        data.topics = (Parsers::Topics.parse(map['Topics']) unless map['Topics'].nil?)
        data.queues = (Parsers::Queues.parse(map['Queues']) unless map['Queues'].nil?)
        data.source_access_configurations = (Parsers::SourceAccessConfigurations.parse(map['SourceAccessConfigurations']) unless map['SourceAccessConfigurations'].nil?)
        data.self_managed_event_source = (Parsers::SelfManagedEventSource.parse(map['SelfManagedEventSource']) unless map['SelfManagedEventSource'].nil?)
        data.maximum_record_age_in_seconds = map['MaximumRecordAgeInSeconds']
        data.bisect_batch_on_function_error = map['BisectBatchOnFunctionError']
        data.maximum_retry_attempts = map['MaximumRetryAttempts']
        data.tumbling_window_in_seconds = map['TumblingWindowInSeconds']
        data.function_response_types = (Parsers::FunctionResponseTypeList.parse(map['FunctionResponseTypes']) unless map['FunctionResponseTypes'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFunctionCode
    class UpdateFunctionCode
      def self.parse(http_resp)
        data = Types::UpdateFunctionCodeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.function_name = map['FunctionName']
        data.function_arn = map['FunctionArn']
        data.runtime = map['Runtime']
        data.role = map['Role']
        data.handler = map['Handler']
        data.code_size = map['CodeSize']
        data.description = map['Description']
        data.timeout = map['Timeout']
        data.memory_size = map['MemorySize']
        data.last_modified = map['LastModified']
        data.code_sha256 = map['CodeSha256']
        data.version = map['Version']
        data.vpc_config = (Parsers::VpcConfigResponse.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.dead_letter_config = (Parsers::DeadLetterConfig.parse(map['DeadLetterConfig']) unless map['DeadLetterConfig'].nil?)
        data.environment = (Parsers::EnvironmentResponse.parse(map['Environment']) unless map['Environment'].nil?)
        data.kms_key_arn = map['KMSKeyArn']
        data.tracing_config = (Parsers::TracingConfigResponse.parse(map['TracingConfig']) unless map['TracingConfig'].nil?)
        data.master_arn = map['MasterArn']
        data.revision_id = map['RevisionId']
        data.layers = (Parsers::LayersReferenceList.parse(map['Layers']) unless map['Layers'].nil?)
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.state_reason_code = map['StateReasonCode']
        data.last_update_status = map['LastUpdateStatus']
        data.last_update_status_reason = map['LastUpdateStatusReason']
        data.last_update_status_reason_code = map['LastUpdateStatusReasonCode']
        data.file_system_configs = (Parsers::FileSystemConfigList.parse(map['FileSystemConfigs']) unless map['FileSystemConfigs'].nil?)
        data.package_type = map['PackageType']
        data.image_config_response = (Parsers::ImageConfigResponse.parse(map['ImageConfigResponse']) unless map['ImageConfigResponse'].nil?)
        data.signing_profile_version_arn = map['SigningProfileVersionArn']
        data.signing_job_arn = map['SigningJobArn']
        data.architectures = (Parsers::ArchitecturesList.parse(map['Architectures']) unless map['Architectures'].nil?)
        data.ephemeral_storage = (Parsers::EphemeralStorage.parse(map['EphemeralStorage']) unless map['EphemeralStorage'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFunctionConfiguration
    class UpdateFunctionConfiguration
      def self.parse(http_resp)
        data = Types::UpdateFunctionConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.function_name = map['FunctionName']
        data.function_arn = map['FunctionArn']
        data.runtime = map['Runtime']
        data.role = map['Role']
        data.handler = map['Handler']
        data.code_size = map['CodeSize']
        data.description = map['Description']
        data.timeout = map['Timeout']
        data.memory_size = map['MemorySize']
        data.last_modified = map['LastModified']
        data.code_sha256 = map['CodeSha256']
        data.version = map['Version']
        data.vpc_config = (Parsers::VpcConfigResponse.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.dead_letter_config = (Parsers::DeadLetterConfig.parse(map['DeadLetterConfig']) unless map['DeadLetterConfig'].nil?)
        data.environment = (Parsers::EnvironmentResponse.parse(map['Environment']) unless map['Environment'].nil?)
        data.kms_key_arn = map['KMSKeyArn']
        data.tracing_config = (Parsers::TracingConfigResponse.parse(map['TracingConfig']) unless map['TracingConfig'].nil?)
        data.master_arn = map['MasterArn']
        data.revision_id = map['RevisionId']
        data.layers = (Parsers::LayersReferenceList.parse(map['Layers']) unless map['Layers'].nil?)
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.state_reason_code = map['StateReasonCode']
        data.last_update_status = map['LastUpdateStatus']
        data.last_update_status_reason = map['LastUpdateStatusReason']
        data.last_update_status_reason_code = map['LastUpdateStatusReasonCode']
        data.file_system_configs = (Parsers::FileSystemConfigList.parse(map['FileSystemConfigs']) unless map['FileSystemConfigs'].nil?)
        data.package_type = map['PackageType']
        data.image_config_response = (Parsers::ImageConfigResponse.parse(map['ImageConfigResponse']) unless map['ImageConfigResponse'].nil?)
        data.signing_profile_version_arn = map['SigningProfileVersionArn']
        data.signing_job_arn = map['SigningJobArn']
        data.architectures = (Parsers::ArchitecturesList.parse(map['Architectures']) unless map['Architectures'].nil?)
        data.ephemeral_storage = (Parsers::EphemeralStorage.parse(map['EphemeralStorage']) unless map['EphemeralStorage'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFunctionEventInvokeConfig
    class UpdateFunctionEventInvokeConfig
      def self.parse(http_resp)
        data = Types::UpdateFunctionEventInvokeConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.last_modified = Time.at(map['LastModified'].to_i) if map['LastModified']
        data.function_arn = map['FunctionArn']
        data.maximum_retry_attempts = map['MaximumRetryAttempts']
        data.maximum_event_age_in_seconds = map['MaximumEventAgeInSeconds']
        data.destination_config = (Parsers::DestinationConfig.parse(map['DestinationConfig']) unless map['DestinationConfig'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFunctionUrlConfig
    class UpdateFunctionUrlConfig
      def self.parse(http_resp)
        data = Types::UpdateFunctionUrlConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.function_url = map['FunctionUrl']
        data.function_arn = map['FunctionArn']
        data.auth_type = map['AuthType']
        data.cors = (Parsers::Cors.parse(map['Cors']) unless map['Cors'].nil?)
        data.creation_time = map['CreationTime']
        data.last_modified_time = map['LastModifiedTime']
        data
      end
    end
  end
end
