# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Lambda
  module Validators

    class AccountLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountLimit, context: context)
        Hearth::Validator.validate!(input[:total_code_size], ::Integer, context: "#{context}[:total_code_size]")
        Hearth::Validator.validate!(input[:code_size_unzipped], ::Integer, context: "#{context}[:code_size_unzipped]")
        Hearth::Validator.validate!(input[:code_size_zipped], ::Integer, context: "#{context}[:code_size_zipped]")
        Hearth::Validator.validate!(input[:concurrent_executions], ::Integer, context: "#{context}[:concurrent_executions]")
        Hearth::Validator.validate!(input[:unreserved_concurrent_executions], ::Integer, context: "#{context}[:unreserved_concurrent_executions]")
      end
    end

    class AccountUsage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountUsage, context: context)
        Hearth::Validator.validate!(input[:total_code_size], ::Integer, context: "#{context}[:total_code_size]")
        Hearth::Validator.validate!(input[:function_count], ::Integer, context: "#{context}[:function_count]")
      end
    end

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

    class AddLayerVersionPermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddLayerVersionPermissionOutput, context: context)
        Hearth::Validator.validate!(input[:statement], ::String, context: "#{context}[:statement]")
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
        Hearth::Validator.validate!(input[:principal_org_id], ::String, context: "#{context}[:principal_org_id]")
        Hearth::Validator.validate!(input[:function_url_auth_type], ::String, context: "#{context}[:function_url_auth_type]")
      end
    end

    class AddPermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddPermissionOutput, context: context)
        Hearth::Validator.validate!(input[:statement], ::String, context: "#{context}[:statement]")
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

    class AliasConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AliasConfiguration, context: context)
        Hearth::Validator.validate!(input[:alias_arn], ::String, context: "#{context}[:alias_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::AliasRoutingConfiguration.validate!(input[:routing_config], context: "#{context}[:routing_config]") unless input[:routing_config].nil?
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class AliasList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AliasConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AliasRoutingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AliasRoutingConfiguration, context: context)
        Validators::AdditionalVersionWeights.validate!(input[:additional_version_weights], context: "#{context}[:additional_version_weights]") unless input[:additional_version_weights].nil?
      end
    end

    class AllowMethodsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AllowOriginsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AllowedPublishers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllowedPublishers, context: context)
        Validators::SigningProfileVersionArns.validate!(input[:signing_profile_version_arns], context: "#{context}[:signing_profile_version_arns]") unless input[:signing_profile_version_arns].nil?
      end
    end

    class ArchitecturesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CodeSigningConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeSigningConfig, context: context)
        Hearth::Validator.validate!(input[:code_signing_config_id], ::String, context: "#{context}[:code_signing_config_id]")
        Hearth::Validator.validate!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::AllowedPublishers.validate!(input[:allowed_publishers], context: "#{context}[:allowed_publishers]") unless input[:allowed_publishers].nil?
        Validators::CodeSigningPolicies.validate!(input[:code_signing_policies], context: "#{context}[:code_signing_policies]") unless input[:code_signing_policies].nil?
        Hearth::Validator.validate!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
      end
    end

    class CodeSigningConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CodeSigningConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CodeSigningConfigNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeSigningConfigNotFoundException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CodeSigningPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeSigningPolicies, context: context)
        Hearth::Validator.validate!(input[:untrusted_artifact_on_deployment], ::String, context: "#{context}[:untrusted_artifact_on_deployment]")
      end
    end

    class CodeStorageExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeStorageExceededException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CodeVerificationFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeVerificationFailedException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CompatibleArchitectures
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class Concurrency
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Concurrency, context: context)
        Hearth::Validator.validate!(input[:reserved_concurrent_executions], ::Integer, context: "#{context}[:reserved_concurrent_executions]")
      end
    end

    class Cors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cors, context: context)
        Hearth::Validator.validate!(input[:allow_credentials], ::TrueClass, ::FalseClass, context: "#{context}[:allow_credentials]")
        Validators::HeadersList.validate!(input[:allow_headers], context: "#{context}[:allow_headers]") unless input[:allow_headers].nil?
        Validators::AllowMethodsList.validate!(input[:allow_methods], context: "#{context}[:allow_methods]") unless input[:allow_methods].nil?
        Validators::AllowOriginsList.validate!(input[:allow_origins], context: "#{context}[:allow_origins]") unless input[:allow_origins].nil?
        Validators::HeadersList.validate!(input[:expose_headers], context: "#{context}[:expose_headers]") unless input[:expose_headers].nil?
        Hearth::Validator.validate!(input[:max_age], ::Integer, context: "#{context}[:max_age]")
      end
    end

    class CreateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAliasInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::AliasRoutingConfiguration.validate!(input[:routing_config], context: "#{context}[:routing_config]") unless input[:routing_config].nil?
      end
    end

    class CreateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAliasOutput, context: context)
        Hearth::Validator.validate!(input[:alias_arn], ::String, context: "#{context}[:alias_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::AliasRoutingConfiguration.validate!(input[:routing_config], context: "#{context}[:routing_config]") unless input[:routing_config].nil?
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
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

    class CreateCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCodeSigningConfigOutput, context: context)
        Validators::CodeSigningConfig.validate!(input[:code_signing_config], context: "#{context}[:code_signing_config]") unless input[:code_signing_config].nil?
      end
    end

    class CreateEventSourceMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventSourceMappingInput, context: context)
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Validators::FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
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

    class CreateEventSourceMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventSourceMappingOutput, context: context)
        Hearth::Validator.validate!(input[:uuid], ::String, context: "#{context}[:uuid]")
        Hearth::Validator.validate!(input[:starting_position], ::String, context: "#{context}[:starting_position]")
        Hearth::Validator.validate!(input[:starting_position_timestamp], ::Time, context: "#{context}[:starting_position_timestamp]")
        Hearth::Validator.validate!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Hearth::Validator.validate!(input[:maximum_batching_window_in_seconds], ::Integer, context: "#{context}[:maximum_batching_window_in_seconds]")
        Hearth::Validator.validate!(input[:parallelization_factor], ::Integer, context: "#{context}[:parallelization_factor]")
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Validators::FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:last_processing_result], ::String, context: "#{context}[:last_processing_result]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_transition_reason], ::String, context: "#{context}[:state_transition_reason]")
        Validators::DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Validators::Topics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Validators::Queues.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
        Validators::SourceAccessConfigurations.validate!(input[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless input[:source_access_configurations].nil?
        Validators::SelfManagedEventSource.validate!(input[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless input[:self_managed_event_source].nil?
        Hearth::Validator.validate!(input[:maximum_record_age_in_seconds], ::Integer, context: "#{context}[:maximum_record_age_in_seconds]")
        Hearth::Validator.validate!(input[:bisect_batch_on_function_error], ::TrueClass, ::FalseClass, context: "#{context}[:bisect_batch_on_function_error]")
        Hearth::Validator.validate!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate!(input[:tumbling_window_in_seconds], ::Integer, context: "#{context}[:tumbling_window_in_seconds]")
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
        Validators::ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        Validators::EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
      end
    end

    class CreateFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFunctionOutput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Validators::VpcConfigResponse.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Validators::DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        Validators::EnvironmentResponse.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Validators::TracingConfigResponse.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Hearth::Validator.validate!(input[:master_arn], ::String, context: "#{context}[:master_arn]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Validators::LayersReferenceList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:state_reason_code], ::String, context: "#{context}[:state_reason_code]")
        Hearth::Validator.validate!(input[:last_update_status], ::String, context: "#{context}[:last_update_status]")
        Hearth::Validator.validate!(input[:last_update_status_reason], ::String, context: "#{context}[:last_update_status_reason]")
        Hearth::Validator.validate!(input[:last_update_status_reason_code], ::String, context: "#{context}[:last_update_status_reason_code]")
        Validators::FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        Hearth::Validator.validate!(input[:package_type], ::String, context: "#{context}[:package_type]")
        Validators::ImageConfigResponse.validate!(input[:image_config_response], context: "#{context}[:image_config_response]") unless input[:image_config_response].nil?
        Hearth::Validator.validate!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
        Validators::ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        Validators::EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
      end
    end

    class CreateFunctionUrlConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFunctionUrlConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Validators::Cors.validate!(input[:cors], context: "#{context}[:cors]") unless input[:cors].nil?
      end
    end

    class CreateFunctionUrlConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFunctionUrlConfigOutput, context: context)
        Hearth::Validator.validate!(input[:function_url], ::String, context: "#{context}[:function_url]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Validators::Cors.validate!(input[:cors], context: "#{context}[:cors]") unless input[:cors].nil?
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
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
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAliasOutput, context: context)
      end
    end

    class DeleteCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCodeSigningConfigInput, context: context)
        Hearth::Validator.validate!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
      end
    end

    class DeleteCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCodeSigningConfigOutput, context: context)
      end
    end

    class DeleteEventSourceMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventSourceMappingInput, context: context)
        Hearth::Validator.validate!(input[:uuid], ::String, context: "#{context}[:uuid]")
      end
    end

    class DeleteEventSourceMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventSourceMappingOutput, context: context)
        Hearth::Validator.validate!(input[:uuid], ::String, context: "#{context}[:uuid]")
        Hearth::Validator.validate!(input[:starting_position], ::String, context: "#{context}[:starting_position]")
        Hearth::Validator.validate!(input[:starting_position_timestamp], ::Time, context: "#{context}[:starting_position_timestamp]")
        Hearth::Validator.validate!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Hearth::Validator.validate!(input[:maximum_batching_window_in_seconds], ::Integer, context: "#{context}[:maximum_batching_window_in_seconds]")
        Hearth::Validator.validate!(input[:parallelization_factor], ::Integer, context: "#{context}[:parallelization_factor]")
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Validators::FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:last_processing_result], ::String, context: "#{context}[:last_processing_result]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_transition_reason], ::String, context: "#{context}[:state_transition_reason]")
        Validators::DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Validators::Topics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Validators::Queues.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
        Validators::SourceAccessConfigurations.validate!(input[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless input[:source_access_configurations].nil?
        Validators::SelfManagedEventSource.validate!(input[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless input[:self_managed_event_source].nil?
        Hearth::Validator.validate!(input[:maximum_record_age_in_seconds], ::Integer, context: "#{context}[:maximum_record_age_in_seconds]")
        Hearth::Validator.validate!(input[:bisect_batch_on_function_error], ::TrueClass, ::FalseClass, context: "#{context}[:bisect_batch_on_function_error]")
        Hearth::Validator.validate!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate!(input[:tumbling_window_in_seconds], ::Integer, context: "#{context}[:tumbling_window_in_seconds]")
        Validators::FunctionResponseTypeList.validate!(input[:function_response_types], context: "#{context}[:function_response_types]") unless input[:function_response_types].nil?
      end
    end

    class DeleteFunctionCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionCodeSigningConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class DeleteFunctionCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionCodeSigningConfigOutput, context: context)
      end
    end

    class DeleteFunctionConcurrencyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionConcurrencyInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class DeleteFunctionConcurrencyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionConcurrencyOutput, context: context)
      end
    end

    class DeleteFunctionEventInvokeConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionEventInvokeConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class DeleteFunctionEventInvokeConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionEventInvokeConfigOutput, context: context)
      end
    end

    class DeleteFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class DeleteFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionOutput, context: context)
      end
    end

    class DeleteFunctionUrlConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionUrlConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class DeleteFunctionUrlConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFunctionUrlConfigOutput, context: context)
      end
    end

    class DeleteLayerVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLayerVersionInput, context: context)
        Hearth::Validator.validate!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class DeleteLayerVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLayerVersionOutput, context: context)
      end
    end

    class DeleteProvisionedConcurrencyConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProvisionedConcurrencyConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class DeleteProvisionedConcurrencyConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProvisionedConcurrencyConfigOutput, context: context)
      end
    end

    class DestinationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationConfig, context: context)
        Validators::OnSuccess.validate!(input[:on_success], context: "#{context}[:on_success]") unless input[:on_success].nil?
        Validators::OnFailure.validate!(input[:on_failure], context: "#{context}[:on_failure]") unless input[:on_failure].nil?
      end
    end

    class EC2AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EC2ThrottledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2ThrottledException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EC2UnexpectedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2UnexpectedException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:ec2_error_code], ::String, context: "#{context}[:ec2_error_code]")
      end
    end

    class EFSIOException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EFSIOException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EFSMountConnectivityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EFSMountConnectivityException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EFSMountFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EFSMountFailureException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EFSMountTimeoutException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EFSMountTimeoutException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ENILimitReachedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ENILimitReachedException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class EnvironmentError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EnvironmentResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentResponse, context: context)
        Validators::EnvironmentVariables.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        Validators::EnvironmentError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
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

    class EphemeralStorage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EphemeralStorage, context: context)
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
      end
    end

    class EventSourceMappingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventSourceMappingConfiguration, context: context)
        Hearth::Validator.validate!(input[:uuid], ::String, context: "#{context}[:uuid]")
        Hearth::Validator.validate!(input[:starting_position], ::String, context: "#{context}[:starting_position]")
        Hearth::Validator.validate!(input[:starting_position_timestamp], ::Time, context: "#{context}[:starting_position_timestamp]")
        Hearth::Validator.validate!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Hearth::Validator.validate!(input[:maximum_batching_window_in_seconds], ::Integer, context: "#{context}[:maximum_batching_window_in_seconds]")
        Hearth::Validator.validate!(input[:parallelization_factor], ::Integer, context: "#{context}[:parallelization_factor]")
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Validators::FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:last_processing_result], ::String, context: "#{context}[:last_processing_result]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_transition_reason], ::String, context: "#{context}[:state_transition_reason]")
        Validators::DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Validators::Topics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Validators::Queues.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
        Validators::SourceAccessConfigurations.validate!(input[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless input[:source_access_configurations].nil?
        Validators::SelfManagedEventSource.validate!(input[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless input[:self_managed_event_source].nil?
        Hearth::Validator.validate!(input[:maximum_record_age_in_seconds], ::Integer, context: "#{context}[:maximum_record_age_in_seconds]")
        Hearth::Validator.validate!(input[:bisect_batch_on_function_error], ::TrueClass, ::FalseClass, context: "#{context}[:bisect_batch_on_function_error]")
        Hearth::Validator.validate!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate!(input[:tumbling_window_in_seconds], ::Integer, context: "#{context}[:tumbling_window_in_seconds]")
        Validators::FunctionResponseTypeList.validate!(input[:function_response_types], context: "#{context}[:function_response_types]") unless input[:function_response_types].nil?
      end
    end

    class EventSourceMappingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventSourceMappingConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:pattern], ::String, context: "#{context}[:pattern]")
      end
    end

    class FilterCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterCriteria, context: context)
        Validators::FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FunctionArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
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

    class FunctionCodeLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionCodeLocation, context: context)
        Hearth::Validator.validate!(input[:repository_type], ::String, context: "#{context}[:repository_type]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:image_uri], ::String, context: "#{context}[:image_uri]")
        Hearth::Validator.validate!(input[:resolved_image_uri], ::String, context: "#{context}[:resolved_image_uri]")
      end
    end

    class FunctionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionConfiguration, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Validators::VpcConfigResponse.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Validators::DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        Validators::EnvironmentResponse.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Validators::TracingConfigResponse.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Hearth::Validator.validate!(input[:master_arn], ::String, context: "#{context}[:master_arn]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Validators::LayersReferenceList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:state_reason_code], ::String, context: "#{context}[:state_reason_code]")
        Hearth::Validator.validate!(input[:last_update_status], ::String, context: "#{context}[:last_update_status]")
        Hearth::Validator.validate!(input[:last_update_status_reason], ::String, context: "#{context}[:last_update_status_reason]")
        Hearth::Validator.validate!(input[:last_update_status_reason_code], ::String, context: "#{context}[:last_update_status_reason_code]")
        Validators::FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        Hearth::Validator.validate!(input[:package_type], ::String, context: "#{context}[:package_type]")
        Validators::ImageConfigResponse.validate!(input[:image_config_response], context: "#{context}[:image_config_response]") unless input[:image_config_response].nil?
        Hearth::Validator.validate!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
        Validators::ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        Validators::EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
      end
    end

    class FunctionEventInvokeConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionEventInvokeConfig, context: context)
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate!(input[:maximum_event_age_in_seconds], ::Integer, context: "#{context}[:maximum_event_age_in_seconds]")
        Validators::DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
      end
    end

    class FunctionEventInvokeConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FunctionEventInvokeConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FunctionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FunctionConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class FunctionUrlConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionUrlConfig, context: context)
        Hearth::Validator.validate!(input[:function_url], ::String, context: "#{context}[:function_url]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::String, context: "#{context}[:last_modified_time]")
        Validators::Cors.validate!(input[:cors], context: "#{context}[:cors]") unless input[:cors].nil?
        Hearth::Validator.validate!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
      end
    end

    class FunctionUrlConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FunctionUrlConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetAccountSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountSettingsInput, context: context)
      end
    end

    class GetAccountSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountSettingsOutput, context: context)
        Validators::AccountLimit.validate!(input[:account_limit], context: "#{context}[:account_limit]") unless input[:account_limit].nil?
        Validators::AccountUsage.validate!(input[:account_usage], context: "#{context}[:account_usage]") unless input[:account_usage].nil?
      end
    end

    class GetAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAliasInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAliasOutput, context: context)
        Hearth::Validator.validate!(input[:alias_arn], ::String, context: "#{context}[:alias_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::AliasRoutingConfiguration.validate!(input[:routing_config], context: "#{context}[:routing_config]") unless input[:routing_config].nil?
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class GetCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCodeSigningConfigInput, context: context)
        Hearth::Validator.validate!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
      end
    end

    class GetCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCodeSigningConfigOutput, context: context)
        Validators::CodeSigningConfig.validate!(input[:code_signing_config], context: "#{context}[:code_signing_config]") unless input[:code_signing_config].nil?
      end
    end

    class GetEventSourceMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventSourceMappingInput, context: context)
        Hearth::Validator.validate!(input[:uuid], ::String, context: "#{context}[:uuid]")
      end
    end

    class GetEventSourceMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventSourceMappingOutput, context: context)
        Hearth::Validator.validate!(input[:uuid], ::String, context: "#{context}[:uuid]")
        Hearth::Validator.validate!(input[:starting_position], ::String, context: "#{context}[:starting_position]")
        Hearth::Validator.validate!(input[:starting_position_timestamp], ::Time, context: "#{context}[:starting_position_timestamp]")
        Hearth::Validator.validate!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Hearth::Validator.validate!(input[:maximum_batching_window_in_seconds], ::Integer, context: "#{context}[:maximum_batching_window_in_seconds]")
        Hearth::Validator.validate!(input[:parallelization_factor], ::Integer, context: "#{context}[:parallelization_factor]")
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Validators::FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:last_processing_result], ::String, context: "#{context}[:last_processing_result]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_transition_reason], ::String, context: "#{context}[:state_transition_reason]")
        Validators::DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Validators::Topics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Validators::Queues.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
        Validators::SourceAccessConfigurations.validate!(input[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless input[:source_access_configurations].nil?
        Validators::SelfManagedEventSource.validate!(input[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless input[:self_managed_event_source].nil?
        Hearth::Validator.validate!(input[:maximum_record_age_in_seconds], ::Integer, context: "#{context}[:maximum_record_age_in_seconds]")
        Hearth::Validator.validate!(input[:bisect_batch_on_function_error], ::TrueClass, ::FalseClass, context: "#{context}[:bisect_batch_on_function_error]")
        Hearth::Validator.validate!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate!(input[:tumbling_window_in_seconds], ::Integer, context: "#{context}[:tumbling_window_in_seconds]")
        Validators::FunctionResponseTypeList.validate!(input[:function_response_types], context: "#{context}[:function_response_types]") unless input[:function_response_types].nil?
      end
    end

    class GetFunctionCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionCodeSigningConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class GetFunctionCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionCodeSigningConfigOutput, context: context)
        Hearth::Validator.validate!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class GetFunctionConcurrencyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionConcurrencyInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class GetFunctionConcurrencyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionConcurrencyOutput, context: context)
        Hearth::Validator.validate!(input[:reserved_concurrent_executions], ::Integer, context: "#{context}[:reserved_concurrent_executions]")
      end
    end

    class GetFunctionConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetFunctionConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Validators::VpcConfigResponse.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Validators::DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        Validators::EnvironmentResponse.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Validators::TracingConfigResponse.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Hearth::Validator.validate!(input[:master_arn], ::String, context: "#{context}[:master_arn]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Validators::LayersReferenceList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:state_reason_code], ::String, context: "#{context}[:state_reason_code]")
        Hearth::Validator.validate!(input[:last_update_status], ::String, context: "#{context}[:last_update_status]")
        Hearth::Validator.validate!(input[:last_update_status_reason], ::String, context: "#{context}[:last_update_status_reason]")
        Hearth::Validator.validate!(input[:last_update_status_reason_code], ::String, context: "#{context}[:last_update_status_reason_code]")
        Validators::FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        Hearth::Validator.validate!(input[:package_type], ::String, context: "#{context}[:package_type]")
        Validators::ImageConfigResponse.validate!(input[:image_config_response], context: "#{context}[:image_config_response]") unless input[:image_config_response].nil?
        Hearth::Validator.validate!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
        Validators::ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        Validators::EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
      end
    end

    class GetFunctionEventInvokeConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionEventInvokeConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetFunctionEventInvokeConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionEventInvokeConfigOutput, context: context)
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate!(input[:maximum_event_age_in_seconds], ::Integer, context: "#{context}[:maximum_event_age_in_seconds]")
        Validators::DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
      end
    end

    class GetFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionOutput, context: context)
        Validators::FunctionConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Validators::FunctionCodeLocation.validate!(input[:code], context: "#{context}[:code]") unless input[:code].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::Concurrency.validate!(input[:concurrency], context: "#{context}[:concurrency]") unless input[:concurrency].nil?
      end
    end

    class GetFunctionUrlConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionUrlConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetFunctionUrlConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFunctionUrlConfigOutput, context: context)
        Hearth::Validator.validate!(input[:function_url], ::String, context: "#{context}[:function_url]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Validators::Cors.validate!(input[:cors], context: "#{context}[:cors]") unless input[:cors].nil?
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::String, context: "#{context}[:last_modified_time]")
      end
    end

    class GetLayerVersionByArnInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLayerVersionByArnInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetLayerVersionByArnOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLayerVersionByArnOutput, context: context)
        Validators::LayerVersionContentOutput.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Hearth::Validator.validate!(input[:layer_arn], ::String, context: "#{context}[:layer_arn]")
        Hearth::Validator.validate!(input[:layer_version_arn], ::String, context: "#{context}[:layer_version_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::String, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Validators::CompatibleRuntimes.validate!(input[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless input[:compatible_runtimes].nil?
        Hearth::Validator.validate!(input[:license_info], ::String, context: "#{context}[:license_info]")
        Validators::CompatibleArchitectures.validate!(input[:compatible_architectures], context: "#{context}[:compatible_architectures]") unless input[:compatible_architectures].nil?
      end
    end

    class GetLayerVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLayerVersionInput, context: context)
        Hearth::Validator.validate!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class GetLayerVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLayerVersionOutput, context: context)
        Validators::LayerVersionContentOutput.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Hearth::Validator.validate!(input[:layer_arn], ::String, context: "#{context}[:layer_arn]")
        Hearth::Validator.validate!(input[:layer_version_arn], ::String, context: "#{context}[:layer_version_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::String, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Validators::CompatibleRuntimes.validate!(input[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless input[:compatible_runtimes].nil?
        Hearth::Validator.validate!(input[:license_info], ::String, context: "#{context}[:license_info]")
        Validators::CompatibleArchitectures.validate!(input[:compatible_architectures], context: "#{context}[:compatible_architectures]") unless input[:compatible_architectures].nil?
      end
    end

    class GetLayerVersionPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLayerVersionPolicyInput, context: context)
        Hearth::Validator.validate!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class GetLayerVersionPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLayerVersionPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class GetPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class GetProvisionedConcurrencyConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProvisionedConcurrencyConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetProvisionedConcurrencyConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProvisionedConcurrencyConfigOutput, context: context)
        Hearth::Validator.validate!(input[:requested_provisioned_concurrent_executions], ::Integer, context: "#{context}[:requested_provisioned_concurrent_executions]")
        Hearth::Validator.validate!(input[:available_provisioned_concurrent_executions], ::Integer, context: "#{context}[:available_provisioned_concurrent_executions]")
        Hearth::Validator.validate!(input[:allocated_provisioned_concurrent_executions], ::Integer, context: "#{context}[:allocated_provisioned_concurrent_executions]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
      end
    end

    class HeadersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class ImageConfigError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageConfigError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ImageConfigResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageConfigResponse, context: context)
        Validators::ImageConfig.validate!(input[:image_config], context: "#{context}[:image_config]") unless input[:image_config].nil?
        Validators::ImageConfigError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class InvalidCodeSignatureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCodeSignatureException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestContentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestContentException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRuntimeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRuntimeException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSecurityGroupIDException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSecurityGroupIDException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSubnetIDException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSubnetIDException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidZipFileException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidZipFileException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvokeAsyncInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvokeAsyncInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        unless input[:invoke_args].respond_to?(:read) || input[:invoke_args].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:invoke_args].class}"
        end
      end
    end

    class InvokeAsyncOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvokeAsyncOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
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

    class InvokeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvokeOutput, context: context)
        Hearth::Validator.validate!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:function_error], ::String, context: "#{context}[:function_error]")
        Hearth::Validator.validate!(input[:log_result], ::String, context: "#{context}[:log_result]")
        Hearth::Validator.validate!(input[:payload], ::String, context: "#{context}[:payload]")
        Hearth::Validator.validate!(input[:executed_version], ::String, context: "#{context}[:executed_version]")
      end
    end

    class KMSAccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSAccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSDisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSDisabledException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSInvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSInvalidStateException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSNotFoundException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Layer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Layer, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
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

    class LayerVersionContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LayerVersionContentOutput, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
      end
    end

    class LayerVersionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LayerVersionsListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LayerVersionsListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LayerVersionsListItem, context: context)
        Hearth::Validator.validate!(input[:layer_version_arn], ::String, context: "#{context}[:layer_version_arn]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::String, context: "#{context}[:created_date]")
        Validators::CompatibleRuntimes.validate!(input[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless input[:compatible_runtimes].nil?
        Hearth::Validator.validate!(input[:license_info], ::String, context: "#{context}[:license_info]")
        Validators::CompatibleArchitectures.validate!(input[:compatible_architectures], context: "#{context}[:compatible_architectures]") unless input[:compatible_architectures].nil?
      end
    end

    class LayersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LayersListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LayersListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LayersListItem, context: context)
        Hearth::Validator.validate!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate!(input[:layer_arn], ::String, context: "#{context}[:layer_arn]")
        Validators::LayerVersionsListItem.validate!(input[:latest_matching_version], context: "#{context}[:latest_matching_version]") unless input[:latest_matching_version].nil?
      end
    end

    class LayersReferenceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Layer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class ListAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAliasesOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::AliasList.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
      end
    end

    class ListCodeSigningConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCodeSigningConfigsInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListCodeSigningConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCodeSigningConfigsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::CodeSigningConfigList.validate!(input[:code_signing_configs], context: "#{context}[:code_signing_configs]") unless input[:code_signing_configs].nil?
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

    class ListEventSourceMappingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventSourceMappingsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::EventSourceMappingsList.validate!(input[:event_source_mappings], context: "#{context}[:event_source_mappings]") unless input[:event_source_mappings].nil?
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

    class ListFunctionEventInvokeConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionEventInvokeConfigsOutput, context: context)
        Validators::FunctionEventInvokeConfigList.validate!(input[:function_event_invoke_configs], context: "#{context}[:function_event_invoke_configs]") unless input[:function_event_invoke_configs].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListFunctionUrlConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionUrlConfigsInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListFunctionUrlConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionUrlConfigsOutput, context: context)
        Validators::FunctionUrlConfigList.validate!(input[:function_url_configs], context: "#{context}[:function_url_configs]") unless input[:function_url_configs].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
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

    class ListFunctionsByCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionsByCodeSigningConfigOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::FunctionArnList.validate!(input[:function_arns], context: "#{context}[:function_arns]") unless input[:function_arns].nil?
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

    class ListFunctionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFunctionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::FunctionList.validate!(input[:functions], context: "#{context}[:functions]") unless input[:functions].nil?
      end
    end

    class ListLayerVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLayerVersionsInput, context: context)
        Hearth::Validator.validate!(input[:compatible_runtime], ::String, context: "#{context}[:compatible_runtime]")
        Hearth::Validator.validate!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:compatible_architecture], ::String, context: "#{context}[:compatible_architecture]")
      end
    end

    class ListLayerVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLayerVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::LayerVersionsList.validate!(input[:layer_versions], context: "#{context}[:layer_versions]") unless input[:layer_versions].nil?
      end
    end

    class ListLayersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLayersInput, context: context)
        Hearth::Validator.validate!(input[:compatible_runtime], ::String, context: "#{context}[:compatible_runtime]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:compatible_architecture], ::String, context: "#{context}[:compatible_architecture]")
      end
    end

    class ListLayersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLayersOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::LayersList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
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

    class ListProvisionedConcurrencyConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProvisionedConcurrencyConfigsOutput, context: context)
        Validators::ProvisionedConcurrencyConfigList.validate!(input[:provisioned_concurrency_configs], context: "#{context}[:provisioned_concurrency_configs]") unless input[:provisioned_concurrency_configs].nil?
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
      end
    end

    class ListTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsOutput, context: context)
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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

    class ListVersionsByFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVersionsByFunctionOutput, context: context)
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Validators::FunctionList.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
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

    class PolicyLengthExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyLengthExceededException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PreconditionFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreconditionFailedException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ProvisionedConcurrencyConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProvisionedConcurrencyConfigListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisionedConcurrencyConfigListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedConcurrencyConfigListItem, context: context)
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:requested_provisioned_concurrent_executions], ::Integer, context: "#{context}[:requested_provisioned_concurrent_executions]")
        Hearth::Validator.validate!(input[:available_provisioned_concurrent_executions], ::Integer, context: "#{context}[:available_provisioned_concurrent_executions]")
        Hearth::Validator.validate!(input[:allocated_provisioned_concurrent_executions], ::Integer, context: "#{context}[:allocated_provisioned_concurrent_executions]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
      end
    end

    class ProvisionedConcurrencyConfigNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisionedConcurrencyConfigNotFoundException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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
        Validators::CompatibleArchitectures.validate!(input[:compatible_architectures], context: "#{context}[:compatible_architectures]") unless input[:compatible_architectures].nil?
      end
    end

    class PublishLayerVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishLayerVersionOutput, context: context)
        Validators::LayerVersionContentOutput.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Hearth::Validator.validate!(input[:layer_arn], ::String, context: "#{context}[:layer_arn]")
        Hearth::Validator.validate!(input[:layer_version_arn], ::String, context: "#{context}[:layer_version_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::String, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Validators::CompatibleRuntimes.validate!(input[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless input[:compatible_runtimes].nil?
        Hearth::Validator.validate!(input[:license_info], ::String, context: "#{context}[:license_info]")
        Validators::CompatibleArchitectures.validate!(input[:compatible_architectures], context: "#{context}[:compatible_architectures]") unless input[:compatible_architectures].nil?
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

    class PublishVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishVersionOutput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Validators::VpcConfigResponse.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Validators::DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        Validators::EnvironmentResponse.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Validators::TracingConfigResponse.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Hearth::Validator.validate!(input[:master_arn], ::String, context: "#{context}[:master_arn]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Validators::LayersReferenceList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:state_reason_code], ::String, context: "#{context}[:state_reason_code]")
        Hearth::Validator.validate!(input[:last_update_status], ::String, context: "#{context}[:last_update_status]")
        Hearth::Validator.validate!(input[:last_update_status_reason], ::String, context: "#{context}[:last_update_status_reason]")
        Hearth::Validator.validate!(input[:last_update_status_reason_code], ::String, context: "#{context}[:last_update_status_reason_code]")
        Validators::FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        Hearth::Validator.validate!(input[:package_type], ::String, context: "#{context}[:package_type]")
        Validators::ImageConfigResponse.validate!(input[:image_config_response], context: "#{context}[:image_config_response]") unless input[:image_config_response].nil?
        Hearth::Validator.validate!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
        Validators::ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        Validators::EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
      end
    end

    class PutFunctionCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFunctionCodeSigningConfigInput, context: context)
        Hearth::Validator.validate!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class PutFunctionCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFunctionCodeSigningConfigOutput, context: context)
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

    class PutFunctionConcurrencyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFunctionConcurrencyOutput, context: context)
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

    class PutFunctionEventInvokeConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFunctionEventInvokeConfigOutput, context: context)
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
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

    class PutProvisionedConcurrencyConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutProvisionedConcurrencyConfigOutput, context: context)
        Hearth::Validator.validate!(input[:requested_provisioned_concurrent_executions], ::Integer, context: "#{context}[:requested_provisioned_concurrent_executions]")
        Hearth::Validator.validate!(input[:available_provisioned_concurrent_executions], ::Integer, context: "#{context}[:available_provisioned_concurrent_executions]")
        Hearth::Validator.validate!(input[:allocated_provisioned_concurrent_executions], ::Integer, context: "#{context}[:allocated_provisioned_concurrent_executions]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
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

    class RemoveLayerVersionPermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveLayerVersionPermissionOutput, context: context)
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

    class RemovePermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemovePermissionOutput, context: context)
      end
    end

    class RequestTooLargeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestTooLargeException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceConflictException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotReadyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotReadyException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class ServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class SubnetIPAddressLimitReachedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubnetIPAddressLimitReachedException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
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

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:retry_after_seconds], ::String, context: "#{context}[:retry_after_seconds]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
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

    class TracingConfigResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TracingConfigResponse, context: context)
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
      end
    end

    class UnsupportedMediaTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedMediaTypeException, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAliasInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::AliasRoutingConfiguration.validate!(input[:routing_config], context: "#{context}[:routing_config]") unless input[:routing_config].nil?
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class UpdateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAliasOutput, context: context)
        Hearth::Validator.validate!(input[:alias_arn], ::String, context: "#{context}[:alias_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
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

    class UpdateCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCodeSigningConfigOutput, context: context)
        Validators::CodeSigningConfig.validate!(input[:code_signing_config], context: "#{context}[:code_signing_config]") unless input[:code_signing_config].nil?
      end
    end

    class UpdateEventSourceMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventSourceMappingInput, context: context)
        Hearth::Validator.validate!(input[:uuid], ::String, context: "#{context}[:uuid]")
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Validators::FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
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

    class UpdateEventSourceMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventSourceMappingOutput, context: context)
        Hearth::Validator.validate!(input[:uuid], ::String, context: "#{context}[:uuid]")
        Hearth::Validator.validate!(input[:starting_position], ::String, context: "#{context}[:starting_position]")
        Hearth::Validator.validate!(input[:starting_position_timestamp], ::Time, context: "#{context}[:starting_position_timestamp]")
        Hearth::Validator.validate!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Hearth::Validator.validate!(input[:maximum_batching_window_in_seconds], ::Integer, context: "#{context}[:maximum_batching_window_in_seconds]")
        Hearth::Validator.validate!(input[:parallelization_factor], ::Integer, context: "#{context}[:parallelization_factor]")
        Hearth::Validator.validate!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Validators::FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:last_processing_result], ::String, context: "#{context}[:last_processing_result]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_transition_reason], ::String, context: "#{context}[:state_transition_reason]")
        Validators::DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Validators::Topics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Validators::Queues.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
        Validators::SourceAccessConfigurations.validate!(input[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless input[:source_access_configurations].nil?
        Validators::SelfManagedEventSource.validate!(input[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless input[:self_managed_event_source].nil?
        Hearth::Validator.validate!(input[:maximum_record_age_in_seconds], ::Integer, context: "#{context}[:maximum_record_age_in_seconds]")
        Hearth::Validator.validate!(input[:bisect_batch_on_function_error], ::TrueClass, ::FalseClass, context: "#{context}[:bisect_batch_on_function_error]")
        Hearth::Validator.validate!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
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
        Validators::ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
      end
    end

    class UpdateFunctionCodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFunctionCodeOutput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Validators::VpcConfigResponse.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Validators::DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        Validators::EnvironmentResponse.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Validators::TracingConfigResponse.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Hearth::Validator.validate!(input[:master_arn], ::String, context: "#{context}[:master_arn]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Validators::LayersReferenceList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:state_reason_code], ::String, context: "#{context}[:state_reason_code]")
        Hearth::Validator.validate!(input[:last_update_status], ::String, context: "#{context}[:last_update_status]")
        Hearth::Validator.validate!(input[:last_update_status_reason], ::String, context: "#{context}[:last_update_status_reason]")
        Hearth::Validator.validate!(input[:last_update_status_reason_code], ::String, context: "#{context}[:last_update_status_reason_code]")
        Validators::FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        Hearth::Validator.validate!(input[:package_type], ::String, context: "#{context}[:package_type]")
        Validators::ImageConfigResponse.validate!(input[:image_config_response], context: "#{context}[:image_config_response]") unless input[:image_config_response].nil?
        Hearth::Validator.validate!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
        Validators::ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        Validators::EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
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
        Validators::EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
      end
    end

    class UpdateFunctionConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFunctionConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Validators::VpcConfigResponse.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Validators::DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        Validators::EnvironmentResponse.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Validators::TracingConfigResponse.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Hearth::Validator.validate!(input[:master_arn], ::String, context: "#{context}[:master_arn]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Validators::LayersReferenceList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:state_reason_code], ::String, context: "#{context}[:state_reason_code]")
        Hearth::Validator.validate!(input[:last_update_status], ::String, context: "#{context}[:last_update_status]")
        Hearth::Validator.validate!(input[:last_update_status_reason], ::String, context: "#{context}[:last_update_status_reason]")
        Hearth::Validator.validate!(input[:last_update_status_reason_code], ::String, context: "#{context}[:last_update_status_reason_code]")
        Validators::FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        Hearth::Validator.validate!(input[:package_type], ::String, context: "#{context}[:package_type]")
        Validators::ImageConfigResponse.validate!(input[:image_config_response], context: "#{context}[:image_config_response]") unless input[:image_config_response].nil?
        Hearth::Validator.validate!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
        Validators::ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        Validators::EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
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

    class UpdateFunctionEventInvokeConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFunctionEventInvokeConfigOutput, context: context)
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate!(input[:maximum_event_age_in_seconds], ::Integer, context: "#{context}[:maximum_event_age_in_seconds]")
        Validators::DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
      end
    end

    class UpdateFunctionUrlConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFunctionUrlConfigInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Validators::Cors.validate!(input[:cors], context: "#{context}[:cors]") unless input[:cors].nil?
      end
    end

    class UpdateFunctionUrlConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFunctionUrlConfigOutput, context: context)
        Hearth::Validator.validate!(input[:function_url], ::String, context: "#{context}[:function_url]")
        Hearth::Validator.validate!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Validators::Cors.validate!(input[:cors], context: "#{context}[:cors]") unless input[:cors].nil?
        Hearth::Validator.validate!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::String, context: "#{context}[:last_modified_time]")
      end
    end

    class VpcConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfig, context: context)
        Validators::SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class VpcConfigResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfigResponse, context: context)
        Validators::SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

  end
end
