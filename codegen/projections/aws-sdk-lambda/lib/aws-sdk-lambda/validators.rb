# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Lambda
  module Validators

    class AddLayerVersionPermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddLayerVersionPermissionInput, context: context)
        Hearth::Validator.validate!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class AddPermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddPermissionInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:source_account], ::String, context: "#{context}[:source_account]")
        Hearth::Validator.validate!(input[:event_source_token], ::String, context: "#{context}[:event_source_token]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class AdditionalVersionWeights
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Float, context: "#{context}[:#{key}]")
        end
      end
    end

    class AliasRoutingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AliasRoutingConfiguration, context: context)
        Validators::AdditionalVersionWeights.validate!(input[:additional_version_weights], context: "#{context}[:additional_version_weights]") unless input[:additional_version_weights].nil?
      end
    end

    class AllowedPublishers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllowedPublishers, context: context)
        Validators::SigningProfileVersionArns.validate!(input[:signing_profile_version_arns], context: "#{context}[:signing_profile_version_arns]") unless input[:signing_profile_version_arns].nil?
      end
    end

    class CodeSigningPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeSigningPolicies, context: context)
        Hearth::Validator.validate!(input[:untrusted_artifact_on_deployment], ::String, context: "#{context}[:untrusted_artifact_on_deployment]")
      end
    end

    class CompatibleRuntimes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAliasInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::AliasRoutingConfiguration.validate!(input[:routing_config], context: "#{context}[:routing_config]") unless input[:routing_config].nil?
      end
    end

    class CreateCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCodeSigningConfigInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::AllowedPublishers.validate!(input[:allowed_publishers], context: "#{context}[:allowed_publishers]") unless input[:allowed_publishers].nil?
        Validators::CodeSigningPolicies.validate!(input[:code_signing_policies], context: "#{context}[:code_signing_policies]") unless input[:code_signing_policies].nil?
      end
    end

    class CreateEventSourceMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventSourceMappingInput, context: context)
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Hearth::Validator.validate!(input[:maximum_batching_window_in_seconds], ::Integer, context: "#{context}[:maximum_batching_window_in_seconds]")
        Hearth::Validator.validate!(input[:parallelization_factor], ::Integer, context: "#{context}[:parallelization_factor]")
        Hearth::Validator.validate!(input[:starting_position], ::String, context: "#{context}[:starting_position]")
        Hearth::Validator.validate!(input[:starting_position_timestamp], ::Time, context: "#{context}[:starting_position_timestamp]")
        Validators::DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Hearth::Validator.validate!(input[:maximum_record_age_in_seconds], ::Integer, context: "#{context}[:maximum_record_age_in_seconds]")
        Hearth::Validator.validate!(input[:bisect_batch_on_function_error], ::TrueClass, ::FalseClass, context: "#{context}[:bisect_batch_on_function_error]")
        Hearth::Validator.validate!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate!(input[:tumbling_window_in_seconds], ::Integer, context: "#{context}[:tumbling_window_in_seconds]")
        Validators::Topics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Validators::Queues.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
        Validators::SourceAccessConfigurations.validate!(input[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless input[:source_access_configurations].nil?
        Validators::SelfManagedEventSource.validate!(input[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless input[:self_managed_event_source].nil?
        Validators::FunctionResponseTypeList.validate!(input[:function_response_types], context: "#{context}[:function_response_types]") unless input[:function_response_types].nil?
      end
    end

    class CreateFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFunctionInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:handler], ::String, context: "#{context}[:handler]")
        Validators::FunctionCode.validate!(input[:code], context: "#{context}[:code]") unless input[:code].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate!(input[:publish], ::TrueClass, ::FalseClass, context: "#{context}[:publish]")
        Validators::VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:package_type], ::String, context: "#{context}[:package_type]")
        Validators::DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        Validators::Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Validators::TracingConfig.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::LayerList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Validators::FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        Validators::ImageConfig.validate!(input[:image_config], context: "#{context}[:image_config]") unless input[:image_config].nil?
        Hearth::Validator.validate!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
      end
    end

    class DeadLetterConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeadLetterConfig, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
      end
    end

    class DeleteAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAliasInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
      end
    end

    class DeleteCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCodeSigningConfigInput, context: context)
        Hearth::Validator.validate!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
      end
    end

    class DeleteEventSourceMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventSourceMappingInput, context: context)
        Hearth::Validator.validate!(input[:uuid], ::String, context: "#{context}[:uuid]")
      end
    end

    class DeleteFunctionCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionCodeSigningConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class DeleteFunctionConcurrencyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionConcurrencyInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class DeleteFunctionEventInvokeConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionEventInvokeConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class DeleteFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class DeleteLayerVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLayerVersionInput, context: context)
        Hearth::Validator.validate!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class DeleteProvisionedConcurrencyConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProvisionedConcurrencyConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class DestinationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationConfig, context: context)
        Validators::OnSuccess.validate!(input[:on_success], context: "#{context}[:on_success]") unless input[:on_success].nil?
        Validators::OnFailure.validate!(input[:on_failure], context: "#{context}[:on_failure]") unless input[:on_failure].nil?
      end
    end

    class EndpointLists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Endpoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::EndpointLists.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Environment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Environment, context: context)
        Validators::EnvironmentVariables.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
      end
    end

    class EnvironmentVariables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class FileSystemConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemConfig, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:local_mount_path], ::String, context: "#{context}[:local_mount_path]")
      end
    end

    class FileSystemConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FileSystemConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FunctionCode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionCode, context: context)
        Hearth::Validator.validate!(input[:zip_file], ::String, context: "#{context}[:zip_file]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
        Hearth::Validator.validate!(input[:s3_object_version], ::String, context: "#{context}[:s3_object_version]")
        Hearth::Validator.validate!(input[:image_uri], ::String, context: "#{context}[:image_uri]")
      end
    end

    class FunctionResponseTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetAccountSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountSettingsInput, context: context)
      end
    end

    class GetAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAliasInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
      end
    end

    class GetCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCodeSigningConfigInput, context: context)
        Hearth::Validator.validate!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
      end
    end

    class GetEventSourceMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventSourceMappingInput, context: context)
        Hearth::Validator.validate!(input[:uuid], ::String, context: "#{context}[:uuid]")
      end
    end

    class GetFunctionCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionCodeSigningConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class GetFunctionConcurrencyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionConcurrencyInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class GetFunctionConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetFunctionEventInvokeConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionEventInvokeConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetLayerVersionByArnInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLayerVersionByArnInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetLayerVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLayerVersionInput, context: context)
        Hearth::Validator.validate!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class GetLayerVersionPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLayerVersionPolicyInput, context: context)
        Hearth::Validator.validate!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class GetPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetProvisionedConcurrencyConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProvisionedConcurrencyConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class ImageConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageConfig, context: context)
        Validators::StringList.validate!(input[:entry_point], context: "#{context}[:entry_point]") unless input[:entry_point].nil?
        Validators::StringList.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        Hearth::Validator.validate!(input[:working_directory], ::String, context: "#{context}[:working_directory]")
      end
    end

    class InvokeAsyncInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvokeAsyncInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:invoke_args], ::String, context: "#{context}[:invoke_args]")
      end
    end

    class InvokeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvokeInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:invocation_type], ::String, context: "#{context}[:invocation_type]")
        Hearth::Validator.validate!(input[:log_type], ::String, context: "#{context}[:log_type]")
        Hearth::Validator.validate!(input[:client_context], ::String, context: "#{context}[:client_context]")
        Hearth::Validator.validate!(input[:payload], ::String, context: "#{context}[:payload]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class LayerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LayerVersionContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LayerVersionContentInput, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
        Hearth::Validator.validate!(input[:s3_object_version], ::String, context: "#{context}[:s3_object_version]")
        Hearth::Validator.validate!(input[:zip_file], ::String, context: "#{context}[:zip_file]")
      end
    end

    class ListAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAliasesInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListCodeSigningConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCodeSigningConfigsInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListEventSourceMappingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventSourceMappingsInput, context: context)
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListFunctionEventInvokeConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionEventInvokeConfigsInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListFunctionsByCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionsByCodeSigningConfigInput, context: context)
        Hearth::Validator.validate!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListFunctionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionsInput, context: context)
        Hearth::Validator.validate!(input[:master_region], ::String, context: "#{context}[:master_region]")
        Hearth::Validator.validate!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListLayerVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLayerVersionsInput, context: context)
        Hearth::Validator.validate!(input[:compatible_runtime], ::String, context: "#{context}[:compatible_runtime]")
        Hearth::Validator.validate!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListLayersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLayersInput, context: context)
        Hearth::Validator.validate!(input[:compatible_runtime], ::String, context: "#{context}[:compatible_runtime]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListProvisionedConcurrencyConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProvisionedConcurrencyConfigsInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
      end
    end

    class ListVersionsByFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVersionsByFunctionInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class OnFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnFailure, context: context)
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
      end
    end

    class OnSuccess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnSuccess, context: context)
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
      end
    end

    class PublishLayerVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishLayerVersionInput, context: context)
        Hearth::Validator.validate!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::LayerVersionContentInput.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Validators::CompatibleRuntimes.validate!(input[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless input[:compatible_runtimes].nil?
        Hearth::Validator.validate!(input[:license_info], ::String, context: "#{context}[:license_info]")
      end
    end

    class PublishVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishVersionInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class PutFunctionCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFunctionCodeSigningConfigInput, context: context)
        Hearth::Validator.validate!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class PutFunctionConcurrencyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFunctionConcurrencyInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:reserved_concurrent_executions], ::Integer, context: "#{context}[:reserved_concurrent_executions]")
      end
    end

    class PutFunctionEventInvokeConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFunctionEventInvokeConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate!(input[:maximum_event_age_in_seconds], ::Integer, context: "#{context}[:maximum_event_age_in_seconds]")
        Validators::DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
      end
    end

    class PutProvisionedConcurrencyConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutProvisionedConcurrencyConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate!(input[:provisioned_concurrent_executions], ::Integer, context: "#{context}[:provisioned_concurrent_executions]")
      end
    end

    class Queues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RemoveLayerVersionPermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveLayerVersionPermissionInput, context: context)
        Hearth::Validator.validate!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class RemovePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemovePermissionInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class SecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SelfManagedEventSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelfManagedEventSource, context: context)
        Validators::Endpoints.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
      end
    end

    class SigningProfileVersionArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SourceAccessConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceAccessConfiguration, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
      end
    end

    class SourceAccessConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SourceAccessConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubnetIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Topics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TracingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TracingConfig, context: context)
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UpdateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAliasInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::AliasRoutingConfiguration.validate!(input[:routing_config], context: "#{context}[:routing_config]") unless input[:routing_config].nil?
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class UpdateCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCodeSigningConfigInput, context: context)
        Hearth::Validator.validate!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::AllowedPublishers.validate!(input[:allowed_publishers], context: "#{context}[:allowed_publishers]") unless input[:allowed_publishers].nil?
        Validators::CodeSigningPolicies.validate!(input[:code_signing_policies], context: "#{context}[:code_signing_policies]") unless input[:code_signing_policies].nil?
      end
    end

    class UpdateEventSourceMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventSourceMappingInput, context: context)
        Hearth::Validator.validate!(input[:uuid], ::String, context: "#{context}[:uuid]")
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Hearth::Validator.validate!(input[:maximum_batching_window_in_seconds], ::Integer, context: "#{context}[:maximum_batching_window_in_seconds]")
        Validators::DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Hearth::Validator.validate!(input[:maximum_record_age_in_seconds], ::Integer, context: "#{context}[:maximum_record_age_in_seconds]")
        Hearth::Validator.validate!(input[:bisect_batch_on_function_error], ::TrueClass, ::FalseClass, context: "#{context}[:bisect_batch_on_function_error]")
        Hearth::Validator.validate!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate!(input[:parallelization_factor], ::Integer, context: "#{context}[:parallelization_factor]")
        Validators::SourceAccessConfigurations.validate!(input[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless input[:source_access_configurations].nil?
        Hearth::Validator.validate!(input[:tumbling_window_in_seconds], ::Integer, context: "#{context}[:tumbling_window_in_seconds]")
        Validators::FunctionResponseTypeList.validate!(input[:function_response_types], context: "#{context}[:function_response_types]") unless input[:function_response_types].nil?
      end
    end

    class UpdateFunctionCodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFunctionCodeInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:zip_file], ::String, context: "#{context}[:zip_file]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
        Hearth::Validator.validate!(input[:s3_object_version], ::String, context: "#{context}[:s3_object_version]")
        Hearth::Validator.validate!(input[:image_uri], ::String, context: "#{context}[:image_uri]")
        Hearth::Validator.validate!(input[:publish], ::TrueClass, ::FalseClass, context: "#{context}[:publish]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class UpdateFunctionConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFunctionConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Validators::VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Validators::Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Validators::DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Validators::TracingConfig.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Validators::LayerList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Validators::FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        Validators::ImageConfig.validate!(input[:image_config], context: "#{context}[:image_config]") unless input[:image_config].nil?
      end
    end

    class UpdateFunctionEventInvokeConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFunctionEventInvokeConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate!(input[:maximum_event_age_in_seconds], ::Integer, context: "#{context}[:maximum_event_age_in_seconds]")
        Validators::DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
      end
    end

    class VpcConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfig, context: context)
        Validators::SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

  end
end
