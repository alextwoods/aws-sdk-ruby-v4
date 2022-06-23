# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Lambda
  module Params

    module AccountLimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountLimit, context: context)
        type = Types::AccountLimit.new
        type.total_code_size = params[:total_code_size]
        type.code_size_unzipped = params[:code_size_unzipped]
        type.code_size_zipped = params[:code_size_zipped]
        type.concurrent_executions = params[:concurrent_executions]
        type.unreserved_concurrent_executions = params[:unreserved_concurrent_executions]
        type
      end
    end

    module AccountUsage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountUsage, context: context)
        type = Types::AccountUsage.new
        type.total_code_size = params[:total_code_size]
        type.function_count = params[:function_count]
        type
      end
    end

    module AddLayerVersionPermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddLayerVersionPermissionInput, context: context)
        type = Types::AddLayerVersionPermissionInput.new
        type.layer_name = params[:layer_name]
        type.version_number = params[:version_number]
        type.statement_id = params[:statement_id]
        type.action = params[:action]
        type.principal = params[:principal]
        type.organization_id = params[:organization_id]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module AddLayerVersionPermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddLayerVersionPermissionOutput, context: context)
        type = Types::AddLayerVersionPermissionOutput.new
        type.statement = params[:statement]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module AddPermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddPermissionInput, context: context)
        type = Types::AddPermissionInput.new
        type.function_name = params[:function_name]
        type.statement_id = params[:statement_id]
        type.action = params[:action]
        type.principal = params[:principal]
        type.source_arn = params[:source_arn]
        type.source_account = params[:source_account]
        type.event_source_token = params[:event_source_token]
        type.qualifier = params[:qualifier]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module AddPermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddPermissionOutput, context: context)
        type = Types::AddPermissionOutput.new
        type.statement = params[:statement]
        type
      end
    end

    module AdditionalVersionWeights
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AliasConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AliasConfiguration, context: context)
        type = Types::AliasConfiguration.new
        type.alias_arn = params[:alias_arn]
        type.name = params[:name]
        type.function_version = params[:function_version]
        type.description = params[:description]
        type.routing_config = AliasRoutingConfiguration.build(params[:routing_config], context: "#{context}[:routing_config]") unless params[:routing_config].nil?
        type.revision_id = params[:revision_id]
        type
      end
    end

    module AliasList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AliasConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AliasRoutingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AliasRoutingConfiguration, context: context)
        type = Types::AliasRoutingConfiguration.new
        type.additional_version_weights = AdditionalVersionWeights.build(params[:additional_version_weights], context: "#{context}[:additional_version_weights]") unless params[:additional_version_weights].nil?
        type
      end
    end

    module AllowedPublishers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllowedPublishers, context: context)
        type = Types::AllowedPublishers.new
        type.signing_profile_version_arns = SigningProfileVersionArns.build(params[:signing_profile_version_arns], context: "#{context}[:signing_profile_version_arns]") unless params[:signing_profile_version_arns].nil?
        type
      end
    end

    module CodeSigningConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeSigningConfig, context: context)
        type = Types::CodeSigningConfig.new
        type.code_signing_config_id = params[:code_signing_config_id]
        type.code_signing_config_arn = params[:code_signing_config_arn]
        type.description = params[:description]
        type.allowed_publishers = AllowedPublishers.build(params[:allowed_publishers], context: "#{context}[:allowed_publishers]") unless params[:allowed_publishers].nil?
        type.code_signing_policies = CodeSigningPolicies.build(params[:code_signing_policies], context: "#{context}[:code_signing_policies]") unless params[:code_signing_policies].nil?
        type.last_modified = params[:last_modified]
        type
      end
    end

    module CodeSigningConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CodeSigningConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CodeSigningConfigNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeSigningConfigNotFoundException, context: context)
        type = Types::CodeSigningConfigNotFoundException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module CodeSigningPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeSigningPolicies, context: context)
        type = Types::CodeSigningPolicies.new
        type.untrusted_artifact_on_deployment = params[:untrusted_artifact_on_deployment]
        type
      end
    end

    module CodeStorageExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeStorageExceededException, context: context)
        type = Types::CodeStorageExceededException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module CodeVerificationFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeVerificationFailedException, context: context)
        type = Types::CodeVerificationFailedException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module CompatibleRuntimes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Concurrency
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Concurrency, context: context)
        type = Types::Concurrency.new
        type.reserved_concurrent_executions = params[:reserved_concurrent_executions]
        type
      end
    end

    module CreateAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAliasInput, context: context)
        type = Types::CreateAliasInput.new
        type.function_name = params[:function_name]
        type.name = params[:name]
        type.function_version = params[:function_version]
        type.description = params[:description]
        type.routing_config = AliasRoutingConfiguration.build(params[:routing_config], context: "#{context}[:routing_config]") unless params[:routing_config].nil?
        type
      end
    end

    module CreateAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAliasOutput, context: context)
        type = Types::CreateAliasOutput.new
        type.alias_arn = params[:alias_arn]
        type.name = params[:name]
        type.function_version = params[:function_version]
        type.description = params[:description]
        type.routing_config = AliasRoutingConfiguration.build(params[:routing_config], context: "#{context}[:routing_config]") unless params[:routing_config].nil?
        type.revision_id = params[:revision_id]
        type
      end
    end

    module CreateCodeSigningConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCodeSigningConfigInput, context: context)
        type = Types::CreateCodeSigningConfigInput.new
        type.description = params[:description]
        type.allowed_publishers = AllowedPublishers.build(params[:allowed_publishers], context: "#{context}[:allowed_publishers]") unless params[:allowed_publishers].nil?
        type.code_signing_policies = CodeSigningPolicies.build(params[:code_signing_policies], context: "#{context}[:code_signing_policies]") unless params[:code_signing_policies].nil?
        type
      end
    end

    module CreateCodeSigningConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCodeSigningConfigOutput, context: context)
        type = Types::CreateCodeSigningConfigOutput.new
        type.code_signing_config = CodeSigningConfig.build(params[:code_signing_config], context: "#{context}[:code_signing_config]") unless params[:code_signing_config].nil?
        type
      end
    end

    module CreateEventSourceMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventSourceMappingInput, context: context)
        type = Types::CreateEventSourceMappingInput.new
        type.event_source_arn = params[:event_source_arn]
        type.function_name = params[:function_name]
        type.enabled = params[:enabled]
        type.batch_size = params[:batch_size]
        type.maximum_batching_window_in_seconds = params[:maximum_batching_window_in_seconds]
        type.parallelization_factor = params[:parallelization_factor]
        type.starting_position = params[:starting_position]
        type.starting_position_timestamp = params[:starting_position_timestamp]
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type.maximum_record_age_in_seconds = params[:maximum_record_age_in_seconds]
        type.bisect_batch_on_function_error = params[:bisect_batch_on_function_error]
        type.maximum_retry_attempts = params[:maximum_retry_attempts]
        type.tumbling_window_in_seconds = params[:tumbling_window_in_seconds]
        type.topics = Topics.build(params[:topics], context: "#{context}[:topics]") unless params[:topics].nil?
        type.queues = Queues.build(params[:queues], context: "#{context}[:queues]") unless params[:queues].nil?
        type.source_access_configurations = SourceAccessConfigurations.build(params[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless params[:source_access_configurations].nil?
        type.self_managed_event_source = SelfManagedEventSource.build(params[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless params[:self_managed_event_source].nil?
        type.function_response_types = FunctionResponseTypeList.build(params[:function_response_types], context: "#{context}[:function_response_types]") unless params[:function_response_types].nil?
        type
      end
    end

    module CreateEventSourceMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventSourceMappingOutput, context: context)
        type = Types::CreateEventSourceMappingOutput.new
        type.uuid = params[:uuid]
        type.starting_position = params[:starting_position]
        type.starting_position_timestamp = params[:starting_position_timestamp]
        type.batch_size = params[:batch_size]
        type.maximum_batching_window_in_seconds = params[:maximum_batching_window_in_seconds]
        type.parallelization_factor = params[:parallelization_factor]
        type.event_source_arn = params[:event_source_arn]
        type.function_arn = params[:function_arn]
        type.last_modified = params[:last_modified]
        type.last_processing_result = params[:last_processing_result]
        type.state = params[:state]
        type.state_transition_reason = params[:state_transition_reason]
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type.topics = Topics.build(params[:topics], context: "#{context}[:topics]") unless params[:topics].nil?
        type.queues = Queues.build(params[:queues], context: "#{context}[:queues]") unless params[:queues].nil?
        type.source_access_configurations = SourceAccessConfigurations.build(params[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless params[:source_access_configurations].nil?
        type.self_managed_event_source = SelfManagedEventSource.build(params[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless params[:self_managed_event_source].nil?
        type.maximum_record_age_in_seconds = params[:maximum_record_age_in_seconds]
        type.bisect_batch_on_function_error = params[:bisect_batch_on_function_error]
        type.maximum_retry_attempts = params[:maximum_retry_attempts]
        type.tumbling_window_in_seconds = params[:tumbling_window_in_seconds]
        type.function_response_types = FunctionResponseTypeList.build(params[:function_response_types], context: "#{context}[:function_response_types]") unless params[:function_response_types].nil?
        type
      end
    end

    module CreateFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFunctionInput, context: context)
        type = Types::CreateFunctionInput.new
        type.function_name = params[:function_name]
        type.runtime = params[:runtime]
        type.role = params[:role]
        type.handler = params[:handler]
        type.code = FunctionCode.build(params[:code], context: "#{context}[:code]") unless params[:code].nil?
        type.description = params[:description]
        type.timeout = params[:timeout]
        type.memory_size = params[:memory_size]
        type.publish = params[:publish]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.package_type = params[:package_type]
        type.dead_letter_config = DeadLetterConfig.build(params[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless params[:dead_letter_config].nil?
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.kms_key_arn = params[:kms_key_arn]
        type.tracing_config = TracingConfig.build(params[:tracing_config], context: "#{context}[:tracing_config]") unless params[:tracing_config].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.layers = LayerList.build(params[:layers], context: "#{context}[:layers]") unless params[:layers].nil?
        type.file_system_configs = FileSystemConfigList.build(params[:file_system_configs], context: "#{context}[:file_system_configs]") unless params[:file_system_configs].nil?
        type.image_config = ImageConfig.build(params[:image_config], context: "#{context}[:image_config]") unless params[:image_config].nil?
        type.code_signing_config_arn = params[:code_signing_config_arn]
        type
      end
    end

    module CreateFunctionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFunctionOutput, context: context)
        type = Types::CreateFunctionOutput.new
        type.function_name = params[:function_name]
        type.function_arn = params[:function_arn]
        type.runtime = params[:runtime]
        type.role = params[:role]
        type.handler = params[:handler]
        type.code_size = params[:code_size]
        type.description = params[:description]
        type.timeout = params[:timeout]
        type.memory_size = params[:memory_size]
        type.last_modified = params[:last_modified]
        type.code_sha256 = params[:code_sha256]
        type.version = params[:version]
        type.vpc_config = VpcConfigResponse.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.dead_letter_config = DeadLetterConfig.build(params[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless params[:dead_letter_config].nil?
        type.environment = EnvironmentResponse.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.kms_key_arn = params[:kms_key_arn]
        type.tracing_config = TracingConfigResponse.build(params[:tracing_config], context: "#{context}[:tracing_config]") unless params[:tracing_config].nil?
        type.master_arn = params[:master_arn]
        type.revision_id = params[:revision_id]
        type.layers = LayersReferenceList.build(params[:layers], context: "#{context}[:layers]") unless params[:layers].nil?
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.state_reason_code = params[:state_reason_code]
        type.last_update_status = params[:last_update_status]
        type.last_update_status_reason = params[:last_update_status_reason]
        type.last_update_status_reason_code = params[:last_update_status_reason_code]
        type.file_system_configs = FileSystemConfigList.build(params[:file_system_configs], context: "#{context}[:file_system_configs]") unless params[:file_system_configs].nil?
        type.package_type = params[:package_type]
        type.image_config_response = ImageConfigResponse.build(params[:image_config_response], context: "#{context}[:image_config_response]") unless params[:image_config_response].nil?
        type.signing_profile_version_arn = params[:signing_profile_version_arn]
        type.signing_job_arn = params[:signing_job_arn]
        type
      end
    end

    module DeadLetterConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeadLetterConfig, context: context)
        type = Types::DeadLetterConfig.new
        type.target_arn = params[:target_arn]
        type
      end
    end

    module DeleteAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAliasInput, context: context)
        type = Types::DeleteAliasInput.new
        type.function_name = params[:function_name]
        type.name = params[:name]
        type
      end
    end

    module DeleteAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAliasOutput, context: context)
        type = Types::DeleteAliasOutput.new
        type
      end
    end

    module DeleteCodeSigningConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCodeSigningConfigInput, context: context)
        type = Types::DeleteCodeSigningConfigInput.new
        type.code_signing_config_arn = params[:code_signing_config_arn]
        type
      end
    end

    module DeleteCodeSigningConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCodeSigningConfigOutput, context: context)
        type = Types::DeleteCodeSigningConfigOutput.new
        type
      end
    end

    module DeleteEventSourceMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventSourceMappingInput, context: context)
        type = Types::DeleteEventSourceMappingInput.new
        type.uuid = params[:uuid]
        type
      end
    end

    module DeleteEventSourceMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventSourceMappingOutput, context: context)
        type = Types::DeleteEventSourceMappingOutput.new
        type.uuid = params[:uuid]
        type.starting_position = params[:starting_position]
        type.starting_position_timestamp = params[:starting_position_timestamp]
        type.batch_size = params[:batch_size]
        type.maximum_batching_window_in_seconds = params[:maximum_batching_window_in_seconds]
        type.parallelization_factor = params[:parallelization_factor]
        type.event_source_arn = params[:event_source_arn]
        type.function_arn = params[:function_arn]
        type.last_modified = params[:last_modified]
        type.last_processing_result = params[:last_processing_result]
        type.state = params[:state]
        type.state_transition_reason = params[:state_transition_reason]
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type.topics = Topics.build(params[:topics], context: "#{context}[:topics]") unless params[:topics].nil?
        type.queues = Queues.build(params[:queues], context: "#{context}[:queues]") unless params[:queues].nil?
        type.source_access_configurations = SourceAccessConfigurations.build(params[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless params[:source_access_configurations].nil?
        type.self_managed_event_source = SelfManagedEventSource.build(params[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless params[:self_managed_event_source].nil?
        type.maximum_record_age_in_seconds = params[:maximum_record_age_in_seconds]
        type.bisect_batch_on_function_error = params[:bisect_batch_on_function_error]
        type.maximum_retry_attempts = params[:maximum_retry_attempts]
        type.tumbling_window_in_seconds = params[:tumbling_window_in_seconds]
        type.function_response_types = FunctionResponseTypeList.build(params[:function_response_types], context: "#{context}[:function_response_types]") unless params[:function_response_types].nil?
        type
      end
    end

    module DeleteFunctionCodeSigningConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFunctionCodeSigningConfigInput, context: context)
        type = Types::DeleteFunctionCodeSigningConfigInput.new
        type.function_name = params[:function_name]
        type
      end
    end

    module DeleteFunctionCodeSigningConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFunctionCodeSigningConfigOutput, context: context)
        type = Types::DeleteFunctionCodeSigningConfigOutput.new
        type
      end
    end

    module DeleteFunctionConcurrencyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFunctionConcurrencyInput, context: context)
        type = Types::DeleteFunctionConcurrencyInput.new
        type.function_name = params[:function_name]
        type
      end
    end

    module DeleteFunctionConcurrencyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFunctionConcurrencyOutput, context: context)
        type = Types::DeleteFunctionConcurrencyOutput.new
        type
      end
    end

    module DeleteFunctionEventInvokeConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFunctionEventInvokeConfigInput, context: context)
        type = Types::DeleteFunctionEventInvokeConfigInput.new
        type.function_name = params[:function_name]
        type.qualifier = params[:qualifier]
        type
      end
    end

    module DeleteFunctionEventInvokeConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFunctionEventInvokeConfigOutput, context: context)
        type = Types::DeleteFunctionEventInvokeConfigOutput.new
        type
      end
    end

    module DeleteFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFunctionInput, context: context)
        type = Types::DeleteFunctionInput.new
        type.function_name = params[:function_name]
        type.qualifier = params[:qualifier]
        type
      end
    end

    module DeleteFunctionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFunctionOutput, context: context)
        type = Types::DeleteFunctionOutput.new
        type
      end
    end

    module DeleteLayerVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLayerVersionInput, context: context)
        type = Types::DeleteLayerVersionInput.new
        type.layer_name = params[:layer_name]
        type.version_number = params[:version_number]
        type
      end
    end

    module DeleteLayerVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLayerVersionOutput, context: context)
        type = Types::DeleteLayerVersionOutput.new
        type
      end
    end

    module DeleteProvisionedConcurrencyConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProvisionedConcurrencyConfigInput, context: context)
        type = Types::DeleteProvisionedConcurrencyConfigInput.new
        type.function_name = params[:function_name]
        type.qualifier = params[:qualifier]
        type
      end
    end

    module DeleteProvisionedConcurrencyConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProvisionedConcurrencyConfigOutput, context: context)
        type = Types::DeleteProvisionedConcurrencyConfigOutput.new
        type
      end
    end

    module DestinationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationConfig, context: context)
        type = Types::DestinationConfig.new
        type.on_success = OnSuccess.build(params[:on_success], context: "#{context}[:on_success]") unless params[:on_success].nil?
        type.on_failure = OnFailure.build(params[:on_failure], context: "#{context}[:on_failure]") unless params[:on_failure].nil?
        type
      end
    end

    module EC2AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2AccessDeniedException, context: context)
        type = Types::EC2AccessDeniedException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module EC2ThrottledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2ThrottledException, context: context)
        type = Types::EC2ThrottledException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module EC2UnexpectedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2UnexpectedException, context: context)
        type = Types::EC2UnexpectedException.new
        type.type = params[:type]
        type.message = params[:message]
        type.ec2_error_code = params[:ec2_error_code]
        type
      end
    end

    module EFSIOException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EFSIOException, context: context)
        type = Types::EFSIOException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module EFSMountConnectivityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EFSMountConnectivityException, context: context)
        type = Types::EFSMountConnectivityException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module EFSMountFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EFSMountFailureException, context: context)
        type = Types::EFSMountFailureException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module EFSMountTimeoutException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EFSMountTimeoutException, context: context)
        type = Types::EFSMountTimeoutException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module ENILimitReachedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ENILimitReachedException, context: context)
        type = Types::ENILimitReachedException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module EndpointLists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Endpoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = EndpointLists.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Environment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Environment, context: context)
        type = Types::Environment.new
        type.variables = EnvironmentVariables.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type
      end
    end

    module EnvironmentError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentError, context: context)
        type = Types::EnvironmentError.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module EnvironmentResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentResponse, context: context)
        type = Types::EnvironmentResponse.new
        type.variables = EnvironmentVariables.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.error = EnvironmentError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module EnvironmentVariables
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module EventSourceMappingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventSourceMappingConfiguration, context: context)
        type = Types::EventSourceMappingConfiguration.new
        type.uuid = params[:uuid]
        type.starting_position = params[:starting_position]
        type.starting_position_timestamp = params[:starting_position_timestamp]
        type.batch_size = params[:batch_size]
        type.maximum_batching_window_in_seconds = params[:maximum_batching_window_in_seconds]
        type.parallelization_factor = params[:parallelization_factor]
        type.event_source_arn = params[:event_source_arn]
        type.function_arn = params[:function_arn]
        type.last_modified = params[:last_modified]
        type.last_processing_result = params[:last_processing_result]
        type.state = params[:state]
        type.state_transition_reason = params[:state_transition_reason]
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type.topics = Topics.build(params[:topics], context: "#{context}[:topics]") unless params[:topics].nil?
        type.queues = Queues.build(params[:queues], context: "#{context}[:queues]") unless params[:queues].nil?
        type.source_access_configurations = SourceAccessConfigurations.build(params[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless params[:source_access_configurations].nil?
        type.self_managed_event_source = SelfManagedEventSource.build(params[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless params[:self_managed_event_source].nil?
        type.maximum_record_age_in_seconds = params[:maximum_record_age_in_seconds]
        type.bisect_batch_on_function_error = params[:bisect_batch_on_function_error]
        type.maximum_retry_attempts = params[:maximum_retry_attempts]
        type.tumbling_window_in_seconds = params[:tumbling_window_in_seconds]
        type.function_response_types = FunctionResponseTypeList.build(params[:function_response_types], context: "#{context}[:function_response_types]") unless params[:function_response_types].nil?
        type
      end
    end

    module EventSourceMappingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventSourceMappingConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FileSystemConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemConfig, context: context)
        type = Types::FileSystemConfig.new
        type.arn = params[:arn]
        type.local_mount_path = params[:local_mount_path]
        type
      end
    end

    module FileSystemConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FileSystemConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FunctionArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FunctionCode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FunctionCode, context: context)
        type = Types::FunctionCode.new
        type.zip_file = params[:zip_file]
        type.s3_bucket = params[:s3_bucket]
        type.s3_key = params[:s3_key]
        type.s3_object_version = params[:s3_object_version]
        type.image_uri = params[:image_uri]
        type
      end
    end

    module FunctionCodeLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FunctionCodeLocation, context: context)
        type = Types::FunctionCodeLocation.new
        type.repository_type = params[:repository_type]
        type.location = params[:location]
        type.image_uri = params[:image_uri]
        type.resolved_image_uri = params[:resolved_image_uri]
        type
      end
    end

    module FunctionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FunctionConfiguration, context: context)
        type = Types::FunctionConfiguration.new
        type.function_name = params[:function_name]
        type.function_arn = params[:function_arn]
        type.runtime = params[:runtime]
        type.role = params[:role]
        type.handler = params[:handler]
        type.code_size = params[:code_size]
        type.description = params[:description]
        type.timeout = params[:timeout]
        type.memory_size = params[:memory_size]
        type.last_modified = params[:last_modified]
        type.code_sha256 = params[:code_sha256]
        type.version = params[:version]
        type.vpc_config = VpcConfigResponse.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.dead_letter_config = DeadLetterConfig.build(params[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless params[:dead_letter_config].nil?
        type.environment = EnvironmentResponse.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.kms_key_arn = params[:kms_key_arn]
        type.tracing_config = TracingConfigResponse.build(params[:tracing_config], context: "#{context}[:tracing_config]") unless params[:tracing_config].nil?
        type.master_arn = params[:master_arn]
        type.revision_id = params[:revision_id]
        type.layers = LayersReferenceList.build(params[:layers], context: "#{context}[:layers]") unless params[:layers].nil?
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.state_reason_code = params[:state_reason_code]
        type.last_update_status = params[:last_update_status]
        type.last_update_status_reason = params[:last_update_status_reason]
        type.last_update_status_reason_code = params[:last_update_status_reason_code]
        type.file_system_configs = FileSystemConfigList.build(params[:file_system_configs], context: "#{context}[:file_system_configs]") unless params[:file_system_configs].nil?
        type.package_type = params[:package_type]
        type.image_config_response = ImageConfigResponse.build(params[:image_config_response], context: "#{context}[:image_config_response]") unless params[:image_config_response].nil?
        type.signing_profile_version_arn = params[:signing_profile_version_arn]
        type.signing_job_arn = params[:signing_job_arn]
        type
      end
    end

    module FunctionEventInvokeConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FunctionEventInvokeConfig, context: context)
        type = Types::FunctionEventInvokeConfig.new
        type.last_modified = params[:last_modified]
        type.function_arn = params[:function_arn]
        type.maximum_retry_attempts = params[:maximum_retry_attempts]
        type.maximum_event_age_in_seconds = params[:maximum_event_age_in_seconds]
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type
      end
    end

    module FunctionEventInvokeConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FunctionEventInvokeConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FunctionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FunctionConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FunctionResponseTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetAccountSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountSettingsInput, context: context)
        type = Types::GetAccountSettingsInput.new
        type
      end
    end

    module GetAccountSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountSettingsOutput, context: context)
        type = Types::GetAccountSettingsOutput.new
        type.account_limit = AccountLimit.build(params[:account_limit], context: "#{context}[:account_limit]") unless params[:account_limit].nil?
        type.account_usage = AccountUsage.build(params[:account_usage], context: "#{context}[:account_usage]") unless params[:account_usage].nil?
        type
      end
    end

    module GetAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAliasInput, context: context)
        type = Types::GetAliasInput.new
        type.function_name = params[:function_name]
        type.name = params[:name]
        type
      end
    end

    module GetAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAliasOutput, context: context)
        type = Types::GetAliasOutput.new
        type.alias_arn = params[:alias_arn]
        type.name = params[:name]
        type.function_version = params[:function_version]
        type.description = params[:description]
        type.routing_config = AliasRoutingConfiguration.build(params[:routing_config], context: "#{context}[:routing_config]") unless params[:routing_config].nil?
        type.revision_id = params[:revision_id]
        type
      end
    end

    module GetCodeSigningConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCodeSigningConfigInput, context: context)
        type = Types::GetCodeSigningConfigInput.new
        type.code_signing_config_arn = params[:code_signing_config_arn]
        type
      end
    end

    module GetCodeSigningConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCodeSigningConfigOutput, context: context)
        type = Types::GetCodeSigningConfigOutput.new
        type.code_signing_config = CodeSigningConfig.build(params[:code_signing_config], context: "#{context}[:code_signing_config]") unless params[:code_signing_config].nil?
        type
      end
    end

    module GetEventSourceMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventSourceMappingInput, context: context)
        type = Types::GetEventSourceMappingInput.new
        type.uuid = params[:uuid]
        type
      end
    end

    module GetEventSourceMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventSourceMappingOutput, context: context)
        type = Types::GetEventSourceMappingOutput.new
        type.uuid = params[:uuid]
        type.starting_position = params[:starting_position]
        type.starting_position_timestamp = params[:starting_position_timestamp]
        type.batch_size = params[:batch_size]
        type.maximum_batching_window_in_seconds = params[:maximum_batching_window_in_seconds]
        type.parallelization_factor = params[:parallelization_factor]
        type.event_source_arn = params[:event_source_arn]
        type.function_arn = params[:function_arn]
        type.last_modified = params[:last_modified]
        type.last_processing_result = params[:last_processing_result]
        type.state = params[:state]
        type.state_transition_reason = params[:state_transition_reason]
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type.topics = Topics.build(params[:topics], context: "#{context}[:topics]") unless params[:topics].nil?
        type.queues = Queues.build(params[:queues], context: "#{context}[:queues]") unless params[:queues].nil?
        type.source_access_configurations = SourceAccessConfigurations.build(params[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless params[:source_access_configurations].nil?
        type.self_managed_event_source = SelfManagedEventSource.build(params[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless params[:self_managed_event_source].nil?
        type.maximum_record_age_in_seconds = params[:maximum_record_age_in_seconds]
        type.bisect_batch_on_function_error = params[:bisect_batch_on_function_error]
        type.maximum_retry_attempts = params[:maximum_retry_attempts]
        type.tumbling_window_in_seconds = params[:tumbling_window_in_seconds]
        type.function_response_types = FunctionResponseTypeList.build(params[:function_response_types], context: "#{context}[:function_response_types]") unless params[:function_response_types].nil?
        type
      end
    end

    module GetFunctionCodeSigningConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionCodeSigningConfigInput, context: context)
        type = Types::GetFunctionCodeSigningConfigInput.new
        type.function_name = params[:function_name]
        type
      end
    end

    module GetFunctionCodeSigningConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionCodeSigningConfigOutput, context: context)
        type = Types::GetFunctionCodeSigningConfigOutput.new
        type.code_signing_config_arn = params[:code_signing_config_arn]
        type.function_name = params[:function_name]
        type
      end
    end

    module GetFunctionConcurrencyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionConcurrencyInput, context: context)
        type = Types::GetFunctionConcurrencyInput.new
        type.function_name = params[:function_name]
        type
      end
    end

    module GetFunctionConcurrencyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionConcurrencyOutput, context: context)
        type = Types::GetFunctionConcurrencyOutput.new
        type.reserved_concurrent_executions = params[:reserved_concurrent_executions]
        type
      end
    end

    module GetFunctionConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionConfigurationInput, context: context)
        type = Types::GetFunctionConfigurationInput.new
        type.function_name = params[:function_name]
        type.qualifier = params[:qualifier]
        type
      end
    end

    module GetFunctionConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionConfigurationOutput, context: context)
        type = Types::GetFunctionConfigurationOutput.new
        type.function_name = params[:function_name]
        type.function_arn = params[:function_arn]
        type.runtime = params[:runtime]
        type.role = params[:role]
        type.handler = params[:handler]
        type.code_size = params[:code_size]
        type.description = params[:description]
        type.timeout = params[:timeout]
        type.memory_size = params[:memory_size]
        type.last_modified = params[:last_modified]
        type.code_sha256 = params[:code_sha256]
        type.version = params[:version]
        type.vpc_config = VpcConfigResponse.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.dead_letter_config = DeadLetterConfig.build(params[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless params[:dead_letter_config].nil?
        type.environment = EnvironmentResponse.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.kms_key_arn = params[:kms_key_arn]
        type.tracing_config = TracingConfigResponse.build(params[:tracing_config], context: "#{context}[:tracing_config]") unless params[:tracing_config].nil?
        type.master_arn = params[:master_arn]
        type.revision_id = params[:revision_id]
        type.layers = LayersReferenceList.build(params[:layers], context: "#{context}[:layers]") unless params[:layers].nil?
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.state_reason_code = params[:state_reason_code]
        type.last_update_status = params[:last_update_status]
        type.last_update_status_reason = params[:last_update_status_reason]
        type.last_update_status_reason_code = params[:last_update_status_reason_code]
        type.file_system_configs = FileSystemConfigList.build(params[:file_system_configs], context: "#{context}[:file_system_configs]") unless params[:file_system_configs].nil?
        type.package_type = params[:package_type]
        type.image_config_response = ImageConfigResponse.build(params[:image_config_response], context: "#{context}[:image_config_response]") unless params[:image_config_response].nil?
        type.signing_profile_version_arn = params[:signing_profile_version_arn]
        type.signing_job_arn = params[:signing_job_arn]
        type
      end
    end

    module GetFunctionEventInvokeConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionEventInvokeConfigInput, context: context)
        type = Types::GetFunctionEventInvokeConfigInput.new
        type.function_name = params[:function_name]
        type.qualifier = params[:qualifier]
        type
      end
    end

    module GetFunctionEventInvokeConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionEventInvokeConfigOutput, context: context)
        type = Types::GetFunctionEventInvokeConfigOutput.new
        type.last_modified = params[:last_modified]
        type.function_arn = params[:function_arn]
        type.maximum_retry_attempts = params[:maximum_retry_attempts]
        type.maximum_event_age_in_seconds = params[:maximum_event_age_in_seconds]
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type
      end
    end

    module GetFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionInput, context: context)
        type = Types::GetFunctionInput.new
        type.function_name = params[:function_name]
        type.qualifier = params[:qualifier]
        type
      end
    end

    module GetFunctionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionOutput, context: context)
        type = Types::GetFunctionOutput.new
        type.configuration = FunctionConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.code = FunctionCodeLocation.build(params[:code], context: "#{context}[:code]") unless params[:code].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.concurrency = Concurrency.build(params[:concurrency], context: "#{context}[:concurrency]") unless params[:concurrency].nil?
        type
      end
    end

    module GetLayerVersionByArnInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLayerVersionByArnInput, context: context)
        type = Types::GetLayerVersionByArnInput.new
        type.arn = params[:arn]
        type
      end
    end

    module GetLayerVersionByArnOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLayerVersionByArnOutput, context: context)
        type = Types::GetLayerVersionByArnOutput.new
        type.content = LayerVersionContentOutput.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.layer_arn = params[:layer_arn]
        type.layer_version_arn = params[:layer_version_arn]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.compatible_runtimes = CompatibleRuntimes.build(params[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless params[:compatible_runtimes].nil?
        type.license_info = params[:license_info]
        type
      end
    end

    module GetLayerVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLayerVersionInput, context: context)
        type = Types::GetLayerVersionInput.new
        type.layer_name = params[:layer_name]
        type.version_number = params[:version_number]
        type
      end
    end

    module GetLayerVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLayerVersionOutput, context: context)
        type = Types::GetLayerVersionOutput.new
        type.content = LayerVersionContentOutput.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.layer_arn = params[:layer_arn]
        type.layer_version_arn = params[:layer_version_arn]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.compatible_runtimes = CompatibleRuntimes.build(params[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless params[:compatible_runtimes].nil?
        type.license_info = params[:license_info]
        type
      end
    end

    module GetLayerVersionPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLayerVersionPolicyInput, context: context)
        type = Types::GetLayerVersionPolicyInput.new
        type.layer_name = params[:layer_name]
        type.version_number = params[:version_number]
        type
      end
    end

    module GetLayerVersionPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLayerVersionPolicyOutput, context: context)
        type = Types::GetLayerVersionPolicyOutput.new
        type.policy = params[:policy]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module GetPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyInput, context: context)
        type = Types::GetPolicyInput.new
        type.function_name = params[:function_name]
        type.qualifier = params[:qualifier]
        type
      end
    end

    module GetPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPolicyOutput, context: context)
        type = Types::GetPolicyOutput.new
        type.policy = params[:policy]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module GetProvisionedConcurrencyConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProvisionedConcurrencyConfigInput, context: context)
        type = Types::GetProvisionedConcurrencyConfigInput.new
        type.function_name = params[:function_name]
        type.qualifier = params[:qualifier]
        type
      end
    end

    module GetProvisionedConcurrencyConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProvisionedConcurrencyConfigOutput, context: context)
        type = Types::GetProvisionedConcurrencyConfigOutput.new
        type.requested_provisioned_concurrent_executions = params[:requested_provisioned_concurrent_executions]
        type.available_provisioned_concurrent_executions = params[:available_provisioned_concurrent_executions]
        type.allocated_provisioned_concurrent_executions = params[:allocated_provisioned_concurrent_executions]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.last_modified = params[:last_modified]
        type
      end
    end

    module ImageConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageConfig, context: context)
        type = Types::ImageConfig.new
        type.entry_point = StringList.build(params[:entry_point], context: "#{context}[:entry_point]") unless params[:entry_point].nil?
        type.command = StringList.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.working_directory = params[:working_directory]
        type
      end
    end

    module ImageConfigError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageConfigError, context: context)
        type = Types::ImageConfigError.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module ImageConfigResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageConfigResponse, context: context)
        type = Types::ImageConfigResponse.new
        type.image_config = ImageConfig.build(params[:image_config], context: "#{context}[:image_config]") unless params[:image_config].nil?
        type.error = ImageConfigError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module InvalidCodeSignatureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCodeSignatureException, context: context)
        type = Types::InvalidCodeSignatureException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestContentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestContentException, context: context)
        type = Types::InvalidRequestContentException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module InvalidRuntimeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRuntimeException, context: context)
        type = Types::InvalidRuntimeException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module InvalidSecurityGroupIDException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSecurityGroupIDException, context: context)
        type = Types::InvalidSecurityGroupIDException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module InvalidSubnetIDException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSubnetIDException, context: context)
        type = Types::InvalidSubnetIDException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module InvalidZipFileException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidZipFileException, context: context)
        type = Types::InvalidZipFileException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module InvokeAsyncInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvokeAsyncInput, context: context)
        type = Types::InvokeAsyncInput.new
        type.function_name = params[:function_name]
        io = params[:invoke_args] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.invoke_args = io
        type
      end
    end

    module InvokeAsyncOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvokeAsyncOutput, context: context)
        type = Types::InvokeAsyncOutput.new
        type.status = params[:status]
        type
      end
    end

    module InvokeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvokeInput, context: context)
        type = Types::InvokeInput.new
        type.function_name = params[:function_name]
        type.invocation_type = params[:invocation_type]
        type.log_type = params[:log_type]
        type.client_context = params[:client_context]
        type.payload = params[:payload]
        type.qualifier = params[:qualifier]
        type
      end
    end

    module InvokeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvokeOutput, context: context)
        type = Types::InvokeOutput.new
        type.status_code = params[:status_code]
        type.function_error = params[:function_error]
        type.log_result = params[:log_result]
        type.payload = params[:payload]
        type.executed_version = params[:executed_version]
        type
      end
    end

    module KMSAccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSAccessDeniedException, context: context)
        type = Types::KMSAccessDeniedException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module KMSDisabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSDisabledException, context: context)
        type = Types::KMSDisabledException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module KMSInvalidStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSInvalidStateException, context: context)
        type = Types::KMSInvalidStateException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module KMSNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSNotFoundException, context: context)
        type = Types::KMSNotFoundException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module Layer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Layer, context: context)
        type = Types::Layer.new
        type.arn = params[:arn]
        type.code_size = params[:code_size]
        type.signing_profile_version_arn = params[:signing_profile_version_arn]
        type.signing_job_arn = params[:signing_job_arn]
        type
      end
    end

    module LayerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LayerVersionContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LayerVersionContentInput, context: context)
        type = Types::LayerVersionContentInput.new
        type.s3_bucket = params[:s3_bucket]
        type.s3_key = params[:s3_key]
        type.s3_object_version = params[:s3_object_version]
        type.zip_file = params[:zip_file]
        type
      end
    end

    module LayerVersionContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LayerVersionContentOutput, context: context)
        type = Types::LayerVersionContentOutput.new
        type.location = params[:location]
        type.code_sha256 = params[:code_sha256]
        type.code_size = params[:code_size]
        type.signing_profile_version_arn = params[:signing_profile_version_arn]
        type.signing_job_arn = params[:signing_job_arn]
        type
      end
    end

    module LayerVersionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LayerVersionsListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LayerVersionsListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LayerVersionsListItem, context: context)
        type = Types::LayerVersionsListItem.new
        type.layer_version_arn = params[:layer_version_arn]
        type.version = params[:version]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.compatible_runtimes = CompatibleRuntimes.build(params[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless params[:compatible_runtimes].nil?
        type.license_info = params[:license_info]
        type
      end
    end

    module LayersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LayersListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LayersListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LayersListItem, context: context)
        type = Types::LayersListItem.new
        type.layer_name = params[:layer_name]
        type.layer_arn = params[:layer_arn]
        type.latest_matching_version = LayerVersionsListItem.build(params[:latest_matching_version], context: "#{context}[:latest_matching_version]") unless params[:latest_matching_version].nil?
        type
      end
    end

    module LayersReferenceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Layer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListAliasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAliasesInput, context: context)
        type = Types::ListAliasesInput.new
        type.function_name = params[:function_name]
        type.function_version = params[:function_version]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListAliasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAliasesOutput, context: context)
        type = Types::ListAliasesOutput.new
        type.next_marker = params[:next_marker]
        type.aliases = AliasList.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type
      end
    end

    module ListCodeSigningConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCodeSigningConfigsInput, context: context)
        type = Types::ListCodeSigningConfigsInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListCodeSigningConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCodeSigningConfigsOutput, context: context)
        type = Types::ListCodeSigningConfigsOutput.new
        type.next_marker = params[:next_marker]
        type.code_signing_configs = CodeSigningConfigList.build(params[:code_signing_configs], context: "#{context}[:code_signing_configs]") unless params[:code_signing_configs].nil?
        type
      end
    end

    module ListEventSourceMappingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventSourceMappingsInput, context: context)
        type = Types::ListEventSourceMappingsInput.new
        type.event_source_arn = params[:event_source_arn]
        type.function_name = params[:function_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListEventSourceMappingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventSourceMappingsOutput, context: context)
        type = Types::ListEventSourceMappingsOutput.new
        type.next_marker = params[:next_marker]
        type.event_source_mappings = EventSourceMappingsList.build(params[:event_source_mappings], context: "#{context}[:event_source_mappings]") unless params[:event_source_mappings].nil?
        type
      end
    end

    module ListFunctionEventInvokeConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFunctionEventInvokeConfigsInput, context: context)
        type = Types::ListFunctionEventInvokeConfigsInput.new
        type.function_name = params[:function_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListFunctionEventInvokeConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFunctionEventInvokeConfigsOutput, context: context)
        type = Types::ListFunctionEventInvokeConfigsOutput.new
        type.function_event_invoke_configs = FunctionEventInvokeConfigList.build(params[:function_event_invoke_configs], context: "#{context}[:function_event_invoke_configs]") unless params[:function_event_invoke_configs].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListFunctionsByCodeSigningConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFunctionsByCodeSigningConfigInput, context: context)
        type = Types::ListFunctionsByCodeSigningConfigInput.new
        type.code_signing_config_arn = params[:code_signing_config_arn]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListFunctionsByCodeSigningConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFunctionsByCodeSigningConfigOutput, context: context)
        type = Types::ListFunctionsByCodeSigningConfigOutput.new
        type.next_marker = params[:next_marker]
        type.function_arns = FunctionArnList.build(params[:function_arns], context: "#{context}[:function_arns]") unless params[:function_arns].nil?
        type
      end
    end

    module ListFunctionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFunctionsInput, context: context)
        type = Types::ListFunctionsInput.new
        type.master_region = params[:master_region]
        type.function_version = params[:function_version]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListFunctionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFunctionsOutput, context: context)
        type = Types::ListFunctionsOutput.new
        type.next_marker = params[:next_marker]
        type.functions = FunctionList.build(params[:functions], context: "#{context}[:functions]") unless params[:functions].nil?
        type
      end
    end

    module ListLayerVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLayerVersionsInput, context: context)
        type = Types::ListLayerVersionsInput.new
        type.compatible_runtime = params[:compatible_runtime]
        type.layer_name = params[:layer_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListLayerVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLayerVersionsOutput, context: context)
        type = Types::ListLayerVersionsOutput.new
        type.next_marker = params[:next_marker]
        type.layer_versions = LayerVersionsList.build(params[:layer_versions], context: "#{context}[:layer_versions]") unless params[:layer_versions].nil?
        type
      end
    end

    module ListLayersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLayersInput, context: context)
        type = Types::ListLayersInput.new
        type.compatible_runtime = params[:compatible_runtime]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListLayersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLayersOutput, context: context)
        type = Types::ListLayersOutput.new
        type.next_marker = params[:next_marker]
        type.layers = LayersList.build(params[:layers], context: "#{context}[:layers]") unless params[:layers].nil?
        type
      end
    end

    module ListProvisionedConcurrencyConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProvisionedConcurrencyConfigsInput, context: context)
        type = Types::ListProvisionedConcurrencyConfigsInput.new
        type.function_name = params[:function_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListProvisionedConcurrencyConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProvisionedConcurrencyConfigsOutput, context: context)
        type = Types::ListProvisionedConcurrencyConfigsOutput.new
        type.provisioned_concurrency_configs = ProvisionedConcurrencyConfigList.build(params[:provisioned_concurrency_configs], context: "#{context}[:provisioned_concurrency_configs]") unless params[:provisioned_concurrency_configs].nil?
        type.next_marker = params[:next_marker]
        type
      end
    end

    module ListTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsInput, context: context)
        type = Types::ListTagsInput.new
        type.resource = params[:resource]
        type
      end
    end

    module ListTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsOutput, context: context)
        type = Types::ListTagsOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListVersionsByFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVersionsByFunctionInput, context: context)
        type = Types::ListVersionsByFunctionInput.new
        type.function_name = params[:function_name]
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListVersionsByFunctionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVersionsByFunctionOutput, context: context)
        type = Types::ListVersionsByFunctionOutput.new
        type.next_marker = params[:next_marker]
        type.versions = FunctionList.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type
      end
    end

    module OnFailure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnFailure, context: context)
        type = Types::OnFailure.new
        type.destination = params[:destination]
        type
      end
    end

    module OnSuccess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnSuccess, context: context)
        type = Types::OnSuccess.new
        type.destination = params[:destination]
        type
      end
    end

    module PolicyLengthExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyLengthExceededException, context: context)
        type = Types::PolicyLengthExceededException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module PreconditionFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PreconditionFailedException, context: context)
        type = Types::PreconditionFailedException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module ProvisionedConcurrencyConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisionedConcurrencyConfigListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisionedConcurrencyConfigListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedConcurrencyConfigListItem, context: context)
        type = Types::ProvisionedConcurrencyConfigListItem.new
        type.function_arn = params[:function_arn]
        type.requested_provisioned_concurrent_executions = params[:requested_provisioned_concurrent_executions]
        type.available_provisioned_concurrent_executions = params[:available_provisioned_concurrent_executions]
        type.allocated_provisioned_concurrent_executions = params[:allocated_provisioned_concurrent_executions]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.last_modified = params[:last_modified]
        type
      end
    end

    module ProvisionedConcurrencyConfigNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisionedConcurrencyConfigNotFoundException, context: context)
        type = Types::ProvisionedConcurrencyConfigNotFoundException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module PublishLayerVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishLayerVersionInput, context: context)
        type = Types::PublishLayerVersionInput.new
        type.layer_name = params[:layer_name]
        type.description = params[:description]
        type.content = LayerVersionContentInput.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.compatible_runtimes = CompatibleRuntimes.build(params[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless params[:compatible_runtimes].nil?
        type.license_info = params[:license_info]
        type
      end
    end

    module PublishLayerVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishLayerVersionOutput, context: context)
        type = Types::PublishLayerVersionOutput.new
        type.content = LayerVersionContentOutput.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.layer_arn = params[:layer_arn]
        type.layer_version_arn = params[:layer_version_arn]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.compatible_runtimes = CompatibleRuntimes.build(params[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless params[:compatible_runtimes].nil?
        type.license_info = params[:license_info]
        type
      end
    end

    module PublishVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishVersionInput, context: context)
        type = Types::PublishVersionInput.new
        type.function_name = params[:function_name]
        type.code_sha256 = params[:code_sha256]
        type.description = params[:description]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module PublishVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishVersionOutput, context: context)
        type = Types::PublishVersionOutput.new
        type.function_name = params[:function_name]
        type.function_arn = params[:function_arn]
        type.runtime = params[:runtime]
        type.role = params[:role]
        type.handler = params[:handler]
        type.code_size = params[:code_size]
        type.description = params[:description]
        type.timeout = params[:timeout]
        type.memory_size = params[:memory_size]
        type.last_modified = params[:last_modified]
        type.code_sha256 = params[:code_sha256]
        type.version = params[:version]
        type.vpc_config = VpcConfigResponse.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.dead_letter_config = DeadLetterConfig.build(params[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless params[:dead_letter_config].nil?
        type.environment = EnvironmentResponse.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.kms_key_arn = params[:kms_key_arn]
        type.tracing_config = TracingConfigResponse.build(params[:tracing_config], context: "#{context}[:tracing_config]") unless params[:tracing_config].nil?
        type.master_arn = params[:master_arn]
        type.revision_id = params[:revision_id]
        type.layers = LayersReferenceList.build(params[:layers], context: "#{context}[:layers]") unless params[:layers].nil?
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.state_reason_code = params[:state_reason_code]
        type.last_update_status = params[:last_update_status]
        type.last_update_status_reason = params[:last_update_status_reason]
        type.last_update_status_reason_code = params[:last_update_status_reason_code]
        type.file_system_configs = FileSystemConfigList.build(params[:file_system_configs], context: "#{context}[:file_system_configs]") unless params[:file_system_configs].nil?
        type.package_type = params[:package_type]
        type.image_config_response = ImageConfigResponse.build(params[:image_config_response], context: "#{context}[:image_config_response]") unless params[:image_config_response].nil?
        type.signing_profile_version_arn = params[:signing_profile_version_arn]
        type.signing_job_arn = params[:signing_job_arn]
        type
      end
    end

    module PutFunctionCodeSigningConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFunctionCodeSigningConfigInput, context: context)
        type = Types::PutFunctionCodeSigningConfigInput.new
        type.code_signing_config_arn = params[:code_signing_config_arn]
        type.function_name = params[:function_name]
        type
      end
    end

    module PutFunctionCodeSigningConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFunctionCodeSigningConfigOutput, context: context)
        type = Types::PutFunctionCodeSigningConfigOutput.new
        type.code_signing_config_arn = params[:code_signing_config_arn]
        type.function_name = params[:function_name]
        type
      end
    end

    module PutFunctionConcurrencyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFunctionConcurrencyInput, context: context)
        type = Types::PutFunctionConcurrencyInput.new
        type.function_name = params[:function_name]
        type.reserved_concurrent_executions = params[:reserved_concurrent_executions]
        type
      end
    end

    module PutFunctionConcurrencyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFunctionConcurrencyOutput, context: context)
        type = Types::PutFunctionConcurrencyOutput.new
        type.reserved_concurrent_executions = params[:reserved_concurrent_executions]
        type
      end
    end

    module PutFunctionEventInvokeConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFunctionEventInvokeConfigInput, context: context)
        type = Types::PutFunctionEventInvokeConfigInput.new
        type.function_name = params[:function_name]
        type.qualifier = params[:qualifier]
        type.maximum_retry_attempts = params[:maximum_retry_attempts]
        type.maximum_event_age_in_seconds = params[:maximum_event_age_in_seconds]
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type
      end
    end

    module PutFunctionEventInvokeConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFunctionEventInvokeConfigOutput, context: context)
        type = Types::PutFunctionEventInvokeConfigOutput.new
        type.last_modified = params[:last_modified]
        type.function_arn = params[:function_arn]
        type.maximum_retry_attempts = params[:maximum_retry_attempts]
        type.maximum_event_age_in_seconds = params[:maximum_event_age_in_seconds]
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type
      end
    end

    module PutProvisionedConcurrencyConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutProvisionedConcurrencyConfigInput, context: context)
        type = Types::PutProvisionedConcurrencyConfigInput.new
        type.function_name = params[:function_name]
        type.qualifier = params[:qualifier]
        type.provisioned_concurrent_executions = params[:provisioned_concurrent_executions]
        type
      end
    end

    module PutProvisionedConcurrencyConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutProvisionedConcurrencyConfigOutput, context: context)
        type = Types::PutProvisionedConcurrencyConfigOutput.new
        type.requested_provisioned_concurrent_executions = params[:requested_provisioned_concurrent_executions]
        type.available_provisioned_concurrent_executions = params[:available_provisioned_concurrent_executions]
        type.allocated_provisioned_concurrent_executions = params[:allocated_provisioned_concurrent_executions]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.last_modified = params[:last_modified]
        type
      end
    end

    module Queues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RemoveLayerVersionPermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveLayerVersionPermissionInput, context: context)
        type = Types::RemoveLayerVersionPermissionInput.new
        type.layer_name = params[:layer_name]
        type.version_number = params[:version_number]
        type.statement_id = params[:statement_id]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module RemoveLayerVersionPermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveLayerVersionPermissionOutput, context: context)
        type = Types::RemoveLayerVersionPermissionOutput.new
        type
      end
    end

    module RemovePermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemovePermissionInput, context: context)
        type = Types::RemovePermissionInput.new
        type.function_name = params[:function_name]
        type.statement_id = params[:statement_id]
        type.qualifier = params[:qualifier]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module RemovePermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemovePermissionOutput, context: context)
        type = Types::RemovePermissionOutput.new
        type
      end
    end

    module RequestTooLargeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestTooLargeException, context: context)
        type = Types::RequestTooLargeException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module ResourceConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceConflictException, context: context)
        type = Types::ResourceConflictException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module ResourceNotReadyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotReadyException, context: context)
        type = Types::ResourceNotReadyException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module SecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SelfManagedEventSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelfManagedEventSource, context: context)
        type = Types::SelfManagedEventSource.new
        type.endpoints = Endpoints.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type
      end
    end

    module ServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceException, context: context)
        type = Types::ServiceException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module SigningProfileVersionArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SourceAccessConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceAccessConfiguration, context: context)
        type = Types::SourceAccessConfiguration.new
        type.type = params[:type]
        type.uri = params[:uri]
        type
      end
    end

    module SourceAccessConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SourceAccessConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubnetIPAddressLimitReachedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubnetIPAddressLimitReachedException, context: context)
        type = Types::SubnetIPAddressLimitReachedException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module SubnetIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource = params[:resource]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.retry_after_seconds = params[:retry_after_seconds]
        type.type = params[:type]
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module Topics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TracingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TracingConfig, context: context)
        type = Types::TracingConfig.new
        type.mode = params[:mode]
        type
      end
    end

    module TracingConfigResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TracingConfigResponse, context: context)
        type = Types::TracingConfigResponse.new
        type.mode = params[:mode]
        type
      end
    end

    module UnsupportedMediaTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedMediaTypeException, context: context)
        type = Types::UnsupportedMediaTypeException.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource = params[:resource]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAliasInput, context: context)
        type = Types::UpdateAliasInput.new
        type.function_name = params[:function_name]
        type.name = params[:name]
        type.function_version = params[:function_version]
        type.description = params[:description]
        type.routing_config = AliasRoutingConfiguration.build(params[:routing_config], context: "#{context}[:routing_config]") unless params[:routing_config].nil?
        type.revision_id = params[:revision_id]
        type
      end
    end

    module UpdateAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAliasOutput, context: context)
        type = Types::UpdateAliasOutput.new
        type.alias_arn = params[:alias_arn]
        type.name = params[:name]
        type.function_version = params[:function_version]
        type.description = params[:description]
        type.routing_config = AliasRoutingConfiguration.build(params[:routing_config], context: "#{context}[:routing_config]") unless params[:routing_config].nil?
        type.revision_id = params[:revision_id]
        type
      end
    end

    module UpdateCodeSigningConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCodeSigningConfigInput, context: context)
        type = Types::UpdateCodeSigningConfigInput.new
        type.code_signing_config_arn = params[:code_signing_config_arn]
        type.description = params[:description]
        type.allowed_publishers = AllowedPublishers.build(params[:allowed_publishers], context: "#{context}[:allowed_publishers]") unless params[:allowed_publishers].nil?
        type.code_signing_policies = CodeSigningPolicies.build(params[:code_signing_policies], context: "#{context}[:code_signing_policies]") unless params[:code_signing_policies].nil?
        type
      end
    end

    module UpdateCodeSigningConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCodeSigningConfigOutput, context: context)
        type = Types::UpdateCodeSigningConfigOutput.new
        type.code_signing_config = CodeSigningConfig.build(params[:code_signing_config], context: "#{context}[:code_signing_config]") unless params[:code_signing_config].nil?
        type
      end
    end

    module UpdateEventSourceMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventSourceMappingInput, context: context)
        type = Types::UpdateEventSourceMappingInput.new
        type.uuid = params[:uuid]
        type.function_name = params[:function_name]
        type.enabled = params[:enabled]
        type.batch_size = params[:batch_size]
        type.maximum_batching_window_in_seconds = params[:maximum_batching_window_in_seconds]
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type.maximum_record_age_in_seconds = params[:maximum_record_age_in_seconds]
        type.bisect_batch_on_function_error = params[:bisect_batch_on_function_error]
        type.maximum_retry_attempts = params[:maximum_retry_attempts]
        type.parallelization_factor = params[:parallelization_factor]
        type.source_access_configurations = SourceAccessConfigurations.build(params[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless params[:source_access_configurations].nil?
        type.tumbling_window_in_seconds = params[:tumbling_window_in_seconds]
        type.function_response_types = FunctionResponseTypeList.build(params[:function_response_types], context: "#{context}[:function_response_types]") unless params[:function_response_types].nil?
        type
      end
    end

    module UpdateEventSourceMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventSourceMappingOutput, context: context)
        type = Types::UpdateEventSourceMappingOutput.new
        type.uuid = params[:uuid]
        type.starting_position = params[:starting_position]
        type.starting_position_timestamp = params[:starting_position_timestamp]
        type.batch_size = params[:batch_size]
        type.maximum_batching_window_in_seconds = params[:maximum_batching_window_in_seconds]
        type.parallelization_factor = params[:parallelization_factor]
        type.event_source_arn = params[:event_source_arn]
        type.function_arn = params[:function_arn]
        type.last_modified = params[:last_modified]
        type.last_processing_result = params[:last_processing_result]
        type.state = params[:state]
        type.state_transition_reason = params[:state_transition_reason]
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type.topics = Topics.build(params[:topics], context: "#{context}[:topics]") unless params[:topics].nil?
        type.queues = Queues.build(params[:queues], context: "#{context}[:queues]") unless params[:queues].nil?
        type.source_access_configurations = SourceAccessConfigurations.build(params[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless params[:source_access_configurations].nil?
        type.self_managed_event_source = SelfManagedEventSource.build(params[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless params[:self_managed_event_source].nil?
        type.maximum_record_age_in_seconds = params[:maximum_record_age_in_seconds]
        type.bisect_batch_on_function_error = params[:bisect_batch_on_function_error]
        type.maximum_retry_attempts = params[:maximum_retry_attempts]
        type.tumbling_window_in_seconds = params[:tumbling_window_in_seconds]
        type.function_response_types = FunctionResponseTypeList.build(params[:function_response_types], context: "#{context}[:function_response_types]") unless params[:function_response_types].nil?
        type
      end
    end

    module UpdateFunctionCodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFunctionCodeInput, context: context)
        type = Types::UpdateFunctionCodeInput.new
        type.function_name = params[:function_name]
        type.zip_file = params[:zip_file]
        type.s3_bucket = params[:s3_bucket]
        type.s3_key = params[:s3_key]
        type.s3_object_version = params[:s3_object_version]
        type.image_uri = params[:image_uri]
        type.publish = params[:publish]
        type.dry_run = params[:dry_run]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module UpdateFunctionCodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFunctionCodeOutput, context: context)
        type = Types::UpdateFunctionCodeOutput.new
        type.function_name = params[:function_name]
        type.function_arn = params[:function_arn]
        type.runtime = params[:runtime]
        type.role = params[:role]
        type.handler = params[:handler]
        type.code_size = params[:code_size]
        type.description = params[:description]
        type.timeout = params[:timeout]
        type.memory_size = params[:memory_size]
        type.last_modified = params[:last_modified]
        type.code_sha256 = params[:code_sha256]
        type.version = params[:version]
        type.vpc_config = VpcConfigResponse.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.dead_letter_config = DeadLetterConfig.build(params[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless params[:dead_letter_config].nil?
        type.environment = EnvironmentResponse.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.kms_key_arn = params[:kms_key_arn]
        type.tracing_config = TracingConfigResponse.build(params[:tracing_config], context: "#{context}[:tracing_config]") unless params[:tracing_config].nil?
        type.master_arn = params[:master_arn]
        type.revision_id = params[:revision_id]
        type.layers = LayersReferenceList.build(params[:layers], context: "#{context}[:layers]") unless params[:layers].nil?
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.state_reason_code = params[:state_reason_code]
        type.last_update_status = params[:last_update_status]
        type.last_update_status_reason = params[:last_update_status_reason]
        type.last_update_status_reason_code = params[:last_update_status_reason_code]
        type.file_system_configs = FileSystemConfigList.build(params[:file_system_configs], context: "#{context}[:file_system_configs]") unless params[:file_system_configs].nil?
        type.package_type = params[:package_type]
        type.image_config_response = ImageConfigResponse.build(params[:image_config_response], context: "#{context}[:image_config_response]") unless params[:image_config_response].nil?
        type.signing_profile_version_arn = params[:signing_profile_version_arn]
        type.signing_job_arn = params[:signing_job_arn]
        type
      end
    end

    module UpdateFunctionConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFunctionConfigurationInput, context: context)
        type = Types::UpdateFunctionConfigurationInput.new
        type.function_name = params[:function_name]
        type.role = params[:role]
        type.handler = params[:handler]
        type.description = params[:description]
        type.timeout = params[:timeout]
        type.memory_size = params[:memory_size]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.runtime = params[:runtime]
        type.dead_letter_config = DeadLetterConfig.build(params[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless params[:dead_letter_config].nil?
        type.kms_key_arn = params[:kms_key_arn]
        type.tracing_config = TracingConfig.build(params[:tracing_config], context: "#{context}[:tracing_config]") unless params[:tracing_config].nil?
        type.revision_id = params[:revision_id]
        type.layers = LayerList.build(params[:layers], context: "#{context}[:layers]") unless params[:layers].nil?
        type.file_system_configs = FileSystemConfigList.build(params[:file_system_configs], context: "#{context}[:file_system_configs]") unless params[:file_system_configs].nil?
        type.image_config = ImageConfig.build(params[:image_config], context: "#{context}[:image_config]") unless params[:image_config].nil?
        type
      end
    end

    module UpdateFunctionConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFunctionConfigurationOutput, context: context)
        type = Types::UpdateFunctionConfigurationOutput.new
        type.function_name = params[:function_name]
        type.function_arn = params[:function_arn]
        type.runtime = params[:runtime]
        type.role = params[:role]
        type.handler = params[:handler]
        type.code_size = params[:code_size]
        type.description = params[:description]
        type.timeout = params[:timeout]
        type.memory_size = params[:memory_size]
        type.last_modified = params[:last_modified]
        type.code_sha256 = params[:code_sha256]
        type.version = params[:version]
        type.vpc_config = VpcConfigResponse.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.dead_letter_config = DeadLetterConfig.build(params[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless params[:dead_letter_config].nil?
        type.environment = EnvironmentResponse.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.kms_key_arn = params[:kms_key_arn]
        type.tracing_config = TracingConfigResponse.build(params[:tracing_config], context: "#{context}[:tracing_config]") unless params[:tracing_config].nil?
        type.master_arn = params[:master_arn]
        type.revision_id = params[:revision_id]
        type.layers = LayersReferenceList.build(params[:layers], context: "#{context}[:layers]") unless params[:layers].nil?
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.state_reason_code = params[:state_reason_code]
        type.last_update_status = params[:last_update_status]
        type.last_update_status_reason = params[:last_update_status_reason]
        type.last_update_status_reason_code = params[:last_update_status_reason_code]
        type.file_system_configs = FileSystemConfigList.build(params[:file_system_configs], context: "#{context}[:file_system_configs]") unless params[:file_system_configs].nil?
        type.package_type = params[:package_type]
        type.image_config_response = ImageConfigResponse.build(params[:image_config_response], context: "#{context}[:image_config_response]") unless params[:image_config_response].nil?
        type.signing_profile_version_arn = params[:signing_profile_version_arn]
        type.signing_job_arn = params[:signing_job_arn]
        type
      end
    end

    module UpdateFunctionEventInvokeConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFunctionEventInvokeConfigInput, context: context)
        type = Types::UpdateFunctionEventInvokeConfigInput.new
        type.function_name = params[:function_name]
        type.qualifier = params[:qualifier]
        type.maximum_retry_attempts = params[:maximum_retry_attempts]
        type.maximum_event_age_in_seconds = params[:maximum_event_age_in_seconds]
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type
      end
    end

    module UpdateFunctionEventInvokeConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFunctionEventInvokeConfigOutput, context: context)
        type = Types::UpdateFunctionEventInvokeConfigOutput.new
        type.last_modified = params[:last_modified]
        type.function_arn = params[:function_arn]
        type.maximum_retry_attempts = params[:maximum_retry_attempts]
        type.maximum_event_age_in_seconds = params[:maximum_event_age_in_seconds]
        type.destination_config = DestinationConfig.build(params[:destination_config], context: "#{context}[:destination_config]") unless params[:destination_config].nil?
        type
      end
    end

    module VpcConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfig, context: context)
        type = Types::VpcConfig.new
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module VpcConfigResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfigResponse, context: context)
        type = Types::VpcConfigResponse.new
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.vpc_id = params[:vpc_id]
        type
      end
    end

  end
end
