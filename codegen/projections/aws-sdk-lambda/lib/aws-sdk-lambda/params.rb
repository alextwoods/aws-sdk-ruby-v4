# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::Lambda
  module Params

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

    module CodeSigningPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeSigningPolicies, context: context)
        type = Types::CodeSigningPolicies.new
        type.untrusted_artifact_on_deployment = params[:untrusted_artifact_on_deployment]
        type
      end
    end

    module CompatibleRuntimes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module CreateAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAliasInput, context: context)
        type = Types::CreateAliasInput.new
        type.function_name = params[:function_name]
        type.member_name = params[:member_name]
        type.function_version = params[:function_version]
        type.description = params[:description]
        type.routing_config = AliasRoutingConfiguration.build(params[:routing_config], context: "#{context}[:routing_config]") unless params[:routing_config].nil?
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
        type.member_name = params[:member_name]
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

    module DeleteEventSourceMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventSourceMappingInput, context: context)
        type = Types::DeleteEventSourceMappingInput.new
        type.uuid = params[:uuid]
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

    module DeleteFunctionConcurrencyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFunctionConcurrencyInput, context: context)
        type = Types::DeleteFunctionConcurrencyInput.new
        type.function_name = params[:function_name]
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

    module DeleteFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFunctionInput, context: context)
        type = Types::DeleteFunctionInput.new
        type.function_name = params[:function_name]
        type.qualifier = params[:qualifier]
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

    module DeleteProvisionedConcurrencyConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProvisionedConcurrencyConfigInput, context: context)
        type = Types::DeleteProvisionedConcurrencyConfigInput.new
        type.function_name = params[:function_name]
        type.qualifier = params[:qualifier]
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

    module EndpointLists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
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

    module FunctionResponseTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
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

    module GetAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAliasInput, context: context)
        type = Types::GetAliasInput.new
        type.function_name = params[:function_name]
        type.member_name = params[:member_name]
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

    module GetEventSourceMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventSourceMappingInput, context: context)
        type = Types::GetEventSourceMappingInput.new
        type.uuid = params[:uuid]
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

    module GetFunctionConcurrencyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionConcurrencyInput, context: context)
        type = Types::GetFunctionConcurrencyInput.new
        type.function_name = params[:function_name]
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

    module GetFunctionEventInvokeConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFunctionEventInvokeConfigInput, context: context)
        type = Types::GetFunctionEventInvokeConfigInput.new
        type.function_name = params[:function_name]
        type.qualifier = params[:qualifier]
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

    module GetLayerVersionByArnInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLayerVersionByArnInput, context: context)
        type = Types::GetLayerVersionByArnInput.new
        type.arn = params[:arn]
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

    module GetLayerVersionPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLayerVersionPolicyInput, context: context)
        type = Types::GetLayerVersionPolicyInput.new
        type.layer_name = params[:layer_name]
        type.version_number = params[:version_number]
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

    module GetProvisionedConcurrencyConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProvisionedConcurrencyConfigInput, context: context)
        type = Types::GetProvisionedConcurrencyConfigInput.new
        type.function_name = params[:function_name]
        type.qualifier = params[:qualifier]
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

    module InvokeAsyncInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvokeAsyncInput, context: context)
        type = Types::InvokeAsyncInput.new
        type.function_name = params[:function_name]
        type.invoke_args = params[:invoke_args]
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

    module LayerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
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

    module ListCodeSigningConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCodeSigningConfigsInput, context: context)
        type = Types::ListCodeSigningConfigsInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
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

    module ListTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsInput, context: context)
        type = Types::ListTagsInput.new
        type.resource = params[:resource]
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

    module PutFunctionCodeSigningConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFunctionCodeSigningConfigInput, context: context)
        type = Types::PutFunctionCodeSigningConfigInput.new
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

    module Queues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
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

    module SecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
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

    module SigningProfileVersionArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
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
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module SubnetIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << element
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
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

    module Topics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
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

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource = params[:resource]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UpdateAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAliasInput, context: context)
        type = Types::UpdateAliasInput.new
        type.function_name = params[:function_name]
        type.member_name = params[:member_name]
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

    module VpcConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfig, context: context)
        type = Types::VpcConfig.new
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

  end
end
