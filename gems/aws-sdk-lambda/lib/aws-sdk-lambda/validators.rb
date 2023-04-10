# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Lambda
  # @api private
  module Validators

    class AccountLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AccountLimit, context: context)
        Hearth::Validator.validate_types!(input[:total_code_size], ::Integer, context: "#{context}[:total_code_size]")
        Hearth::Validator.validate_types!(input[:code_size_unzipped], ::Integer, context: "#{context}[:code_size_unzipped]")
        Hearth::Validator.validate_types!(input[:code_size_zipped], ::Integer, context: "#{context}[:code_size_zipped]")
        Hearth::Validator.validate_types!(input[:concurrent_executions], ::Integer, context: "#{context}[:concurrent_executions]")
        Hearth::Validator.validate_types!(input[:unreserved_concurrent_executions], ::Integer, context: "#{context}[:unreserved_concurrent_executions]")
      end
    end

    class AccountUsage
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AccountUsage, context: context)
        Hearth::Validator.validate_types!(input[:total_code_size], ::Integer, context: "#{context}[:total_code_size]")
        Hearth::Validator.validate_types!(input[:function_count], ::Integer, context: "#{context}[:function_count]")
      end
    end

    class AddLayerVersionPermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AddLayerVersionPermissionInput, context: context)
        Hearth::Validator.validate_required!(input[:layer_name], context: "#{context}[:layer_name]")
        Hearth::Validator.validate_types!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate_required!(input[:version_number], context: "#{context}[:version_number]")
        Hearth::Validator.validate_types!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate_required!(input[:statement_id], context: "#{context}[:statement_id]")
        Hearth::Validator.validate_types!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
        Hearth::Validator.validate_required!(input[:action], context: "#{context}[:action]")
        Hearth::Validator.validate_types!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate_required!(input[:principal], context: "#{context}[:principal]")
        Hearth::Validator.validate_types!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate_types!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class AddLayerVersionPermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AddLayerVersionPermissionOutput, context: context)
        Hearth::Validator.validate_types!(input[:statement], ::String, context: "#{context}[:statement]")
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class AddPermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AddPermissionInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_required!(input[:statement_id], context: "#{context}[:statement_id]")
        Hearth::Validator.validate_types!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
        Hearth::Validator.validate_required!(input[:action], context: "#{context}[:action]")
        Hearth::Validator.validate_types!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate_required!(input[:principal], context: "#{context}[:principal]")
        Hearth::Validator.validate_types!(input[:principal], ::String, context: "#{context}[:principal]")
        Hearth::Validator.validate_types!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate_types!(input[:source_account], ::String, context: "#{context}[:source_account]")
        Hearth::Validator.validate_types!(input[:event_source_token], ::String, context: "#{context}[:event_source_token]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate_types!(input[:principal_org_id], ::String, context: "#{context}[:principal_org_id]")
        Hearth::Validator.validate_types!(input[:function_url_auth_type], ::String, context: "#{context}[:function_url_auth_type]")
      end
    end

    class AddPermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AddPermissionOutput, context: context)
        Hearth::Validator.validate_types!(input[:statement], ::String, context: "#{context}[:statement]")
      end
    end

    class AdditionalVersionWeights
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate_types!(value, ::Float, context: "#{context}[:#{key}]")
        end
      end
    end

    class AliasConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AliasConfiguration, context: context)
        Hearth::Validator.validate_types!(input[:alias_arn], ::String, context: "#{context}[:alias_arn]")
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        AliasRoutingConfiguration.validate!(input[:routing_config], context: "#{context}[:routing_config]") unless input[:routing_config].nil?
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class AliasList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AliasConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AliasRoutingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AliasRoutingConfiguration, context: context)
        AdditionalVersionWeights.validate!(input[:additional_version_weights], context: "#{context}[:additional_version_weights]") unless input[:additional_version_weights].nil?
      end
    end

    class AllowMethodsList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AllowOriginsList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AllowedPublishers
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AllowedPublishers, context: context)
        Hearth::Validator.validate_required!(input[:signing_profile_version_arns], context: "#{context}[:signing_profile_version_arns]")
        SigningProfileVersionArns.validate!(input[:signing_profile_version_arns], context: "#{context}[:signing_profile_version_arns]") unless input[:signing_profile_version_arns].nil?
      end
    end

    class AmazonManagedKafkaEventSourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AmazonManagedKafkaEventSourceConfig, context: context)
        Hearth::Validator.validate_types!(input[:consumer_group_id], ::String, context: "#{context}[:consumer_group_id]")
      end
    end

    class ArchitecturesList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CodeSigningConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CodeSigningConfig, context: context)
        Hearth::Validator.validate_required!(input[:code_signing_config_id], context: "#{context}[:code_signing_config_id]")
        Hearth::Validator.validate_types!(input[:code_signing_config_id], ::String, context: "#{context}[:code_signing_config_id]")
        Hearth::Validator.validate_required!(input[:code_signing_config_arn], context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate_types!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_required!(input[:allowed_publishers], context: "#{context}[:allowed_publishers]")
        AllowedPublishers.validate!(input[:allowed_publishers], context: "#{context}[:allowed_publishers]") unless input[:allowed_publishers].nil?
        Hearth::Validator.validate_required!(input[:code_signing_policies], context: "#{context}[:code_signing_policies]")
        CodeSigningPolicies.validate!(input[:code_signing_policies], context: "#{context}[:code_signing_policies]") unless input[:code_signing_policies].nil?
        Hearth::Validator.validate_required!(input[:last_modified], context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
      end
    end

    class CodeSigningConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CodeSigningConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CodeSigningConfigNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CodeSigningConfigNotFoundException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CodeSigningPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CodeSigningPolicies, context: context)
        Hearth::Validator.validate_types!(input[:untrusted_artifact_on_deployment], ::String, context: "#{context}[:untrusted_artifact_on_deployment]")
      end
    end

    class CodeStorageExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CodeStorageExceededException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CodeVerificationFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CodeVerificationFailedException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CompatibleArchitectures
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CompatibleRuntimes
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Concurrency
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Concurrency, context: context)
        Hearth::Validator.validate_types!(input[:reserved_concurrent_executions], ::Integer, context: "#{context}[:reserved_concurrent_executions]")
      end
    end

    class Cors
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Cors, context: context)
        Hearth::Validator.validate_types!(input[:allow_credentials], ::TrueClass, ::FalseClass, context: "#{context}[:allow_credentials]")
        HeadersList.validate!(input[:allow_headers], context: "#{context}[:allow_headers]") unless input[:allow_headers].nil?
        AllowMethodsList.validate!(input[:allow_methods], context: "#{context}[:allow_methods]") unless input[:allow_methods].nil?
        AllowOriginsList.validate!(input[:allow_origins], context: "#{context}[:allow_origins]") unless input[:allow_origins].nil?
        HeadersList.validate!(input[:expose_headers], context: "#{context}[:expose_headers]") unless input[:expose_headers].nil?
        Hearth::Validator.validate_types!(input[:max_age], ::Integer, context: "#{context}[:max_age]")
      end
    end

    class CreateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateAliasInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_required!(input[:name], context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_required!(input[:function_version], context: "#{context}[:function_version]")
        Hearth::Validator.validate_types!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        AliasRoutingConfiguration.validate!(input[:routing_config], context: "#{context}[:routing_config]") unless input[:routing_config].nil?
      end
    end

    class CreateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateAliasOutput, context: context)
        Hearth::Validator.validate_types!(input[:alias_arn], ::String, context: "#{context}[:alias_arn]")
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        AliasRoutingConfiguration.validate!(input[:routing_config], context: "#{context}[:routing_config]") unless input[:routing_config].nil?
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class CreateCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateCodeSigningConfigInput, context: context)
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_required!(input[:allowed_publishers], context: "#{context}[:allowed_publishers]")
        AllowedPublishers.validate!(input[:allowed_publishers], context: "#{context}[:allowed_publishers]") unless input[:allowed_publishers].nil?
        CodeSigningPolicies.validate!(input[:code_signing_policies], context: "#{context}[:code_signing_policies]") unless input[:code_signing_policies].nil?
      end
    end

    class CreateCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateCodeSigningConfigOutput, context: context)
        Hearth::Validator.validate_required!(input[:code_signing_config], context: "#{context}[:code_signing_config]")
        CodeSigningConfig.validate!(input[:code_signing_config], context: "#{context}[:code_signing_config]") unless input[:code_signing_config].nil?
      end
    end

    class CreateEventSourceMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateEventSourceMappingInput, context: context)
        Hearth::Validator.validate_types!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate_types!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate_types!(input[:maximum_batching_window_in_seconds], ::Integer, context: "#{context}[:maximum_batching_window_in_seconds]")
        Hearth::Validator.validate_types!(input[:parallelization_factor], ::Integer, context: "#{context}[:parallelization_factor]")
        Hearth::Validator.validate_types!(input[:starting_position], ::String, context: "#{context}[:starting_position]")
        Hearth::Validator.validate_types!(input[:starting_position_timestamp], ::Time, context: "#{context}[:starting_position_timestamp]")
        DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Hearth::Validator.validate_types!(input[:maximum_record_age_in_seconds], ::Integer, context: "#{context}[:maximum_record_age_in_seconds]")
        Hearth::Validator.validate_types!(input[:bisect_batch_on_function_error], ::TrueClass, ::FalseClass, context: "#{context}[:bisect_batch_on_function_error]")
        Hearth::Validator.validate_types!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate_types!(input[:tumbling_window_in_seconds], ::Integer, context: "#{context}[:tumbling_window_in_seconds]")
        Topics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Queues.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
        SourceAccessConfigurations.validate!(input[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless input[:source_access_configurations].nil?
        SelfManagedEventSource.validate!(input[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless input[:self_managed_event_source].nil?
        FunctionResponseTypeList.validate!(input[:function_response_types], context: "#{context}[:function_response_types]") unless input[:function_response_types].nil?
        AmazonManagedKafkaEventSourceConfig.validate!(input[:amazon_managed_kafka_event_source_config], context: "#{context}[:amazon_managed_kafka_event_source_config]") unless input[:amazon_managed_kafka_event_source_config].nil?
        SelfManagedKafkaEventSourceConfig.validate!(input[:self_managed_kafka_event_source_config], context: "#{context}[:self_managed_kafka_event_source_config]") unless input[:self_managed_kafka_event_source_config].nil?
        ScalingConfig.validate!(input[:scaling_config], context: "#{context}[:scaling_config]") unless input[:scaling_config].nil?
        DocumentDBEventSourceConfig.validate!(input[:document_db_event_source_config], context: "#{context}[:document_db_event_source_config]") unless input[:document_db_event_source_config].nil?
      end
    end

    class CreateEventSourceMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateEventSourceMappingOutput, context: context)
        Hearth::Validator.validate_types!(input[:uuid], ::String, context: "#{context}[:uuid]")
        Hearth::Validator.validate_types!(input[:starting_position], ::String, context: "#{context}[:starting_position]")
        Hearth::Validator.validate_types!(input[:starting_position_timestamp], ::Time, context: "#{context}[:starting_position_timestamp]")
        Hearth::Validator.validate_types!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Hearth::Validator.validate_types!(input[:maximum_batching_window_in_seconds], ::Integer, context: "#{context}[:maximum_batching_window_in_seconds]")
        Hearth::Validator.validate_types!(input[:parallelization_factor], ::Integer, context: "#{context}[:parallelization_factor]")
        Hearth::Validator.validate_types!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:last_processing_result], ::String, context: "#{context}[:last_processing_result]")
        Hearth::Validator.validate_types!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input[:state_transition_reason], ::String, context: "#{context}[:state_transition_reason]")
        DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Topics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Queues.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
        SourceAccessConfigurations.validate!(input[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless input[:source_access_configurations].nil?
        SelfManagedEventSource.validate!(input[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless input[:self_managed_event_source].nil?
        Hearth::Validator.validate_types!(input[:maximum_record_age_in_seconds], ::Integer, context: "#{context}[:maximum_record_age_in_seconds]")
        Hearth::Validator.validate_types!(input[:bisect_batch_on_function_error], ::TrueClass, ::FalseClass, context: "#{context}[:bisect_batch_on_function_error]")
        Hearth::Validator.validate_types!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate_types!(input[:tumbling_window_in_seconds], ::Integer, context: "#{context}[:tumbling_window_in_seconds]")
        FunctionResponseTypeList.validate!(input[:function_response_types], context: "#{context}[:function_response_types]") unless input[:function_response_types].nil?
        AmazonManagedKafkaEventSourceConfig.validate!(input[:amazon_managed_kafka_event_source_config], context: "#{context}[:amazon_managed_kafka_event_source_config]") unless input[:amazon_managed_kafka_event_source_config].nil?
        SelfManagedKafkaEventSourceConfig.validate!(input[:self_managed_kafka_event_source_config], context: "#{context}[:self_managed_kafka_event_source_config]") unless input[:self_managed_kafka_event_source_config].nil?
        ScalingConfig.validate!(input[:scaling_config], context: "#{context}[:scaling_config]") unless input[:scaling_config].nil?
        DocumentDBEventSourceConfig.validate!(input[:document_db_event_source_config], context: "#{context}[:document_db_event_source_config]") unless input[:document_db_event_source_config].nil?
      end
    end

    class CreateFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateFunctionInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate_required!(input[:role], context: "#{context}[:role]")
        Hearth::Validator.validate_types!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate_types!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate_required!(input[:code], context: "#{context}[:code]")
        FunctionCode.validate!(input[:code], context: "#{context}[:code]") unless input[:code].nil?
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate_types!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate_types!(input[:publish], ::TrueClass, ::FalseClass, context: "#{context}[:publish]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate_types!(input[:package_type], ::String, context: "#{context}[:package_type]")
        DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate_types!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        TracingConfig.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        LayerList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        ImageConfig.validate!(input[:image_config], context: "#{context}[:image_config]") unless input[:image_config].nil?
        Hearth::Validator.validate_types!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
        ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
        SnapStart.validate!(input[:snap_start], context: "#{context}[:snap_start]") unless input[:snap_start].nil?
      end
    end

    class CreateFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateFunctionOutput, context: context)
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate_types!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate_types!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate_types!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate_types!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate_types!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate_types!(input[:version], ::String, context: "#{context}[:version]")
        VpcConfigResponse.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        EnvironmentResponse.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate_types!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        TracingConfigResponse.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Hearth::Validator.validate_types!(input[:master_arn], ::String, context: "#{context}[:master_arn]")
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        LayersReferenceList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Hearth::Validator.validate_types!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate_types!(input[:state_reason_code], ::String, context: "#{context}[:state_reason_code]")
        Hearth::Validator.validate_types!(input[:last_update_status], ::String, context: "#{context}[:last_update_status]")
        Hearth::Validator.validate_types!(input[:last_update_status_reason], ::String, context: "#{context}[:last_update_status_reason]")
        Hearth::Validator.validate_types!(input[:last_update_status_reason_code], ::String, context: "#{context}[:last_update_status_reason_code]")
        FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        Hearth::Validator.validate_types!(input[:package_type], ::String, context: "#{context}[:package_type]")
        ImageConfigResponse.validate!(input[:image_config_response], context: "#{context}[:image_config_response]") unless input[:image_config_response].nil?
        Hearth::Validator.validate_types!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate_types!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
        ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
        SnapStartResponse.validate!(input[:snap_start], context: "#{context}[:snap_start]") unless input[:snap_start].nil?
        RuntimeVersionConfig.validate!(input[:runtime_version_config], context: "#{context}[:runtime_version_config]") unless input[:runtime_version_config].nil?
      end
    end

    class CreateFunctionUrlConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateFunctionUrlConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate_required!(input[:auth_type], context: "#{context}[:auth_type]")
        Hearth::Validator.validate_types!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Cors.validate!(input[:cors], context: "#{context}[:cors]") unless input[:cors].nil?
        Hearth::Validator.validate_types!(input[:invoke_mode], ::String, context: "#{context}[:invoke_mode]")
      end
    end

    class CreateFunctionUrlConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateFunctionUrlConfigOutput, context: context)
        Hearth::Validator.validate_required!(input[:function_url], context: "#{context}[:function_url]")
        Hearth::Validator.validate_types!(input[:function_url], ::String, context: "#{context}[:function_url]")
        Hearth::Validator.validate_required!(input[:function_arn], context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_required!(input[:auth_type], context: "#{context}[:auth_type]")
        Hearth::Validator.validate_types!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Cors.validate!(input[:cors], context: "#{context}[:cors]") unless input[:cors].nil?
        Hearth::Validator.validate_required!(input[:creation_time], context: "#{context}[:creation_time]")
        Hearth::Validator.validate_types!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate_types!(input[:invoke_mode], ::String, context: "#{context}[:invoke_mode]")
      end
    end

    class DeadLetterConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeadLetterConfig, context: context)
        Hearth::Validator.validate_types!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
      end
    end

    class DeleteAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteAliasInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_required!(input[:name], context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteAliasOutput, context: context)
      end
    end

    class DeleteCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteCodeSigningConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:code_signing_config_arn], context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate_types!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
      end
    end

    class DeleteCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteCodeSigningConfigOutput, context: context)
      end
    end

    class DeleteEventSourceMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteEventSourceMappingInput, context: context)
        Hearth::Validator.validate_required!(input[:uuid], context: "#{context}[:uuid]")
        Hearth::Validator.validate_types!(input[:uuid], ::String, context: "#{context}[:uuid]")
      end
    end

    class DeleteEventSourceMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteEventSourceMappingOutput, context: context)
        Hearth::Validator.validate_types!(input[:uuid], ::String, context: "#{context}[:uuid]")
        Hearth::Validator.validate_types!(input[:starting_position], ::String, context: "#{context}[:starting_position]")
        Hearth::Validator.validate_types!(input[:starting_position_timestamp], ::Time, context: "#{context}[:starting_position_timestamp]")
        Hearth::Validator.validate_types!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Hearth::Validator.validate_types!(input[:maximum_batching_window_in_seconds], ::Integer, context: "#{context}[:maximum_batching_window_in_seconds]")
        Hearth::Validator.validate_types!(input[:parallelization_factor], ::Integer, context: "#{context}[:parallelization_factor]")
        Hearth::Validator.validate_types!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:last_processing_result], ::String, context: "#{context}[:last_processing_result]")
        Hearth::Validator.validate_types!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input[:state_transition_reason], ::String, context: "#{context}[:state_transition_reason]")
        DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Topics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Queues.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
        SourceAccessConfigurations.validate!(input[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless input[:source_access_configurations].nil?
        SelfManagedEventSource.validate!(input[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless input[:self_managed_event_source].nil?
        Hearth::Validator.validate_types!(input[:maximum_record_age_in_seconds], ::Integer, context: "#{context}[:maximum_record_age_in_seconds]")
        Hearth::Validator.validate_types!(input[:bisect_batch_on_function_error], ::TrueClass, ::FalseClass, context: "#{context}[:bisect_batch_on_function_error]")
        Hearth::Validator.validate_types!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate_types!(input[:tumbling_window_in_seconds], ::Integer, context: "#{context}[:tumbling_window_in_seconds]")
        FunctionResponseTypeList.validate!(input[:function_response_types], context: "#{context}[:function_response_types]") unless input[:function_response_types].nil?
        AmazonManagedKafkaEventSourceConfig.validate!(input[:amazon_managed_kafka_event_source_config], context: "#{context}[:amazon_managed_kafka_event_source_config]") unless input[:amazon_managed_kafka_event_source_config].nil?
        SelfManagedKafkaEventSourceConfig.validate!(input[:self_managed_kafka_event_source_config], context: "#{context}[:self_managed_kafka_event_source_config]") unless input[:self_managed_kafka_event_source_config].nil?
        ScalingConfig.validate!(input[:scaling_config], context: "#{context}[:scaling_config]") unless input[:scaling_config].nil?
        DocumentDBEventSourceConfig.validate!(input[:document_db_event_source_config], context: "#{context}[:document_db_event_source_config]") unless input[:document_db_event_source_config].nil?
      end
    end

    class DeleteFunctionCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteFunctionCodeSigningConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class DeleteFunctionCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteFunctionCodeSigningConfigOutput, context: context)
      end
    end

    class DeleteFunctionConcurrencyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteFunctionConcurrencyInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class DeleteFunctionConcurrencyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteFunctionConcurrencyOutput, context: context)
      end
    end

    class DeleteFunctionEventInvokeConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteFunctionEventInvokeConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class DeleteFunctionEventInvokeConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteFunctionEventInvokeConfigOutput, context: context)
      end
    end

    class DeleteFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteFunctionInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class DeleteFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteFunctionOutput, context: context)
      end
    end

    class DeleteFunctionUrlConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteFunctionUrlConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class DeleteFunctionUrlConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteFunctionUrlConfigOutput, context: context)
      end
    end

    class DeleteLayerVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteLayerVersionInput, context: context)
        Hearth::Validator.validate_required!(input[:layer_name], context: "#{context}[:layer_name]")
        Hearth::Validator.validate_types!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate_required!(input[:version_number], context: "#{context}[:version_number]")
        Hearth::Validator.validate_types!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class DeleteLayerVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteLayerVersionOutput, context: context)
      end
    end

    class DeleteProvisionedConcurrencyConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteProvisionedConcurrencyConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_required!(input[:qualifier], context: "#{context}[:qualifier]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class DeleteProvisionedConcurrencyConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteProvisionedConcurrencyConfigOutput, context: context)
      end
    end

    class DestinationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DestinationConfig, context: context)
        OnSuccess.validate!(input[:on_success], context: "#{context}[:on_success]") unless input[:on_success].nil?
        OnFailure.validate!(input[:on_failure], context: "#{context}[:on_failure]") unless input[:on_failure].nil?
      end
    end

    class DocumentDBEventSourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DocumentDBEventSourceConfig, context: context)
        Hearth::Validator.validate_types!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate_types!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
        Hearth::Validator.validate_types!(input[:full_document], ::String, context: "#{context}[:full_document]")
      end
    end

    class EC2AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EC2AccessDeniedException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EC2ThrottledException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EC2ThrottledException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EC2UnexpectedException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EC2UnexpectedException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:ec2_error_code], ::String, context: "#{context}[:ec2_error_code]")
      end
    end

    class EFSIOException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EFSIOException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EFSMountConnectivityException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EFSMountConnectivityException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EFSMountFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EFSMountFailureException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EFSMountTimeoutException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EFSMountTimeoutException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ENILimitReachedException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ENILimitReachedException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EndpointLists
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Endpoints
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          EndpointLists.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Environment
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Environment, context: context)
        EnvironmentVariables.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
      end
    end

    class EnvironmentError
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EnvironmentError, context: context)
        Hearth::Validator.validate_types!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EnvironmentResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EnvironmentResponse, context: context)
        EnvironmentVariables.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        EnvironmentError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class EnvironmentVariables
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate_types!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class EphemeralStorage
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EphemeralStorage, context: context)
        Hearth::Validator.validate_required!(input[:size], context: "#{context}[:size]")
        Hearth::Validator.validate_types!(input[:size], ::Integer, context: "#{context}[:size]")
      end
    end

    class EventSourceMappingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EventSourceMappingConfiguration, context: context)
        Hearth::Validator.validate_types!(input[:uuid], ::String, context: "#{context}[:uuid]")
        Hearth::Validator.validate_types!(input[:starting_position], ::String, context: "#{context}[:starting_position]")
        Hearth::Validator.validate_types!(input[:starting_position_timestamp], ::Time, context: "#{context}[:starting_position_timestamp]")
        Hearth::Validator.validate_types!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Hearth::Validator.validate_types!(input[:maximum_batching_window_in_seconds], ::Integer, context: "#{context}[:maximum_batching_window_in_seconds]")
        Hearth::Validator.validate_types!(input[:parallelization_factor], ::Integer, context: "#{context}[:parallelization_factor]")
        Hearth::Validator.validate_types!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:last_processing_result], ::String, context: "#{context}[:last_processing_result]")
        Hearth::Validator.validate_types!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input[:state_transition_reason], ::String, context: "#{context}[:state_transition_reason]")
        DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Topics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Queues.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
        SourceAccessConfigurations.validate!(input[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless input[:source_access_configurations].nil?
        SelfManagedEventSource.validate!(input[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless input[:self_managed_event_source].nil?
        Hearth::Validator.validate_types!(input[:maximum_record_age_in_seconds], ::Integer, context: "#{context}[:maximum_record_age_in_seconds]")
        Hearth::Validator.validate_types!(input[:bisect_batch_on_function_error], ::TrueClass, ::FalseClass, context: "#{context}[:bisect_batch_on_function_error]")
        Hearth::Validator.validate_types!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate_types!(input[:tumbling_window_in_seconds], ::Integer, context: "#{context}[:tumbling_window_in_seconds]")
        FunctionResponseTypeList.validate!(input[:function_response_types], context: "#{context}[:function_response_types]") unless input[:function_response_types].nil?
        AmazonManagedKafkaEventSourceConfig.validate!(input[:amazon_managed_kafka_event_source_config], context: "#{context}[:amazon_managed_kafka_event_source_config]") unless input[:amazon_managed_kafka_event_source_config].nil?
        SelfManagedKafkaEventSourceConfig.validate!(input[:self_managed_kafka_event_source_config], context: "#{context}[:self_managed_kafka_event_source_config]") unless input[:self_managed_kafka_event_source_config].nil?
        ScalingConfig.validate!(input[:scaling_config], context: "#{context}[:scaling_config]") unless input[:scaling_config].nil?
        DocumentDBEventSourceConfig.validate!(input[:document_db_event_source_config], context: "#{context}[:document_db_event_source_config]") unless input[:document_db_event_source_config].nil?
      end
    end

    class EventSourceMappingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventSourceMappingConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FileSystemConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::FileSystemConfig, context: context)
        Hearth::Validator.validate_required!(input[:arn], context: "#{context}[:arn]")
        Hearth::Validator.validate_types!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate_required!(input[:local_mount_path], context: "#{context}[:local_mount_path]")
        Hearth::Validator.validate_types!(input[:local_mount_path], ::String, context: "#{context}[:local_mount_path]")
      end
    end

    class FileSystemConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FileSystemConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Filter, context: context)
        Hearth::Validator.validate_types!(input[:pattern], ::String, context: "#{context}[:pattern]")
      end
    end

    class FilterCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::FilterCriteria, context: context)
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FunctionArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FunctionCode
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::FunctionCode, context: context)
        Hearth::Validator.validate_types!(input[:zip_file], ::String, context: "#{context}[:zip_file]")
        Hearth::Validator.validate_types!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate_types!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
        Hearth::Validator.validate_types!(input[:s3_object_version], ::String, context: "#{context}[:s3_object_version]")
        Hearth::Validator.validate_types!(input[:image_uri], ::String, context: "#{context}[:image_uri]")
      end
    end

    class FunctionCodeLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::FunctionCodeLocation, context: context)
        Hearth::Validator.validate_types!(input[:repository_type], ::String, context: "#{context}[:repository_type]")
        Hearth::Validator.validate_types!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate_types!(input[:image_uri], ::String, context: "#{context}[:image_uri]")
        Hearth::Validator.validate_types!(input[:resolved_image_uri], ::String, context: "#{context}[:resolved_image_uri]")
      end
    end

    class FunctionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::FunctionConfiguration, context: context)
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate_types!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate_types!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate_types!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate_types!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate_types!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate_types!(input[:version], ::String, context: "#{context}[:version]")
        VpcConfigResponse.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        EnvironmentResponse.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate_types!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        TracingConfigResponse.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Hearth::Validator.validate_types!(input[:master_arn], ::String, context: "#{context}[:master_arn]")
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        LayersReferenceList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Hearth::Validator.validate_types!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate_types!(input[:state_reason_code], ::String, context: "#{context}[:state_reason_code]")
        Hearth::Validator.validate_types!(input[:last_update_status], ::String, context: "#{context}[:last_update_status]")
        Hearth::Validator.validate_types!(input[:last_update_status_reason], ::String, context: "#{context}[:last_update_status_reason]")
        Hearth::Validator.validate_types!(input[:last_update_status_reason_code], ::String, context: "#{context}[:last_update_status_reason_code]")
        FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        Hearth::Validator.validate_types!(input[:package_type], ::String, context: "#{context}[:package_type]")
        ImageConfigResponse.validate!(input[:image_config_response], context: "#{context}[:image_config_response]") unless input[:image_config_response].nil?
        Hearth::Validator.validate_types!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate_types!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
        ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
        SnapStartResponse.validate!(input[:snap_start], context: "#{context}[:snap_start]") unless input[:snap_start].nil?
        RuntimeVersionConfig.validate!(input[:runtime_version_config], context: "#{context}[:runtime_version_config]") unless input[:runtime_version_config].nil?
      end
    end

    class FunctionEventInvokeConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::FunctionEventInvokeConfig, context: context)
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate_types!(input[:maximum_event_age_in_seconds], ::Integer, context: "#{context}[:maximum_event_age_in_seconds]")
        DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
      end
    end

    class FunctionEventInvokeConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FunctionEventInvokeConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FunctionList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FunctionConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FunctionResponseTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FunctionUrlConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::FunctionUrlConfig, context: context)
        Hearth::Validator.validate_required!(input[:function_url], context: "#{context}[:function_url]")
        Hearth::Validator.validate_types!(input[:function_url], ::String, context: "#{context}[:function_url]")
        Hearth::Validator.validate_required!(input[:function_arn], context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_required!(input[:creation_time], context: "#{context}[:creation_time]")
        Hearth::Validator.validate_types!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate_required!(input[:last_modified_time], context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate_types!(input[:last_modified_time], ::String, context: "#{context}[:last_modified_time]")
        Cors.validate!(input[:cors], context: "#{context}[:cors]") unless input[:cors].nil?
        Hearth::Validator.validate_required!(input[:auth_type], context: "#{context}[:auth_type]")
        Hearth::Validator.validate_types!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Hearth::Validator.validate_types!(input[:invoke_mode], ::String, context: "#{context}[:invoke_mode]")
      end
    end

    class FunctionUrlConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FunctionUrlConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetAccountSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetAccountSettingsInput, context: context)
      end
    end

    class GetAccountSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetAccountSettingsOutput, context: context)
        AccountLimit.validate!(input[:account_limit], context: "#{context}[:account_limit]") unless input[:account_limit].nil?
        AccountUsage.validate!(input[:account_usage], context: "#{context}[:account_usage]") unless input[:account_usage].nil?
      end
    end

    class GetAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetAliasInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_required!(input[:name], context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetAliasOutput, context: context)
        Hearth::Validator.validate_types!(input[:alias_arn], ::String, context: "#{context}[:alias_arn]")
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        AliasRoutingConfiguration.validate!(input[:routing_config], context: "#{context}[:routing_config]") unless input[:routing_config].nil?
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class GetCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetCodeSigningConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:code_signing_config_arn], context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate_types!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
      end
    end

    class GetCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetCodeSigningConfigOutput, context: context)
        Hearth::Validator.validate_required!(input[:code_signing_config], context: "#{context}[:code_signing_config]")
        CodeSigningConfig.validate!(input[:code_signing_config], context: "#{context}[:code_signing_config]") unless input[:code_signing_config].nil?
      end
    end

    class GetEventSourceMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetEventSourceMappingInput, context: context)
        Hearth::Validator.validate_required!(input[:uuid], context: "#{context}[:uuid]")
        Hearth::Validator.validate_types!(input[:uuid], ::String, context: "#{context}[:uuid]")
      end
    end

    class GetEventSourceMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetEventSourceMappingOutput, context: context)
        Hearth::Validator.validate_types!(input[:uuid], ::String, context: "#{context}[:uuid]")
        Hearth::Validator.validate_types!(input[:starting_position], ::String, context: "#{context}[:starting_position]")
        Hearth::Validator.validate_types!(input[:starting_position_timestamp], ::Time, context: "#{context}[:starting_position_timestamp]")
        Hearth::Validator.validate_types!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Hearth::Validator.validate_types!(input[:maximum_batching_window_in_seconds], ::Integer, context: "#{context}[:maximum_batching_window_in_seconds]")
        Hearth::Validator.validate_types!(input[:parallelization_factor], ::Integer, context: "#{context}[:parallelization_factor]")
        Hearth::Validator.validate_types!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:last_processing_result], ::String, context: "#{context}[:last_processing_result]")
        Hearth::Validator.validate_types!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input[:state_transition_reason], ::String, context: "#{context}[:state_transition_reason]")
        DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Topics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Queues.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
        SourceAccessConfigurations.validate!(input[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless input[:source_access_configurations].nil?
        SelfManagedEventSource.validate!(input[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless input[:self_managed_event_source].nil?
        Hearth::Validator.validate_types!(input[:maximum_record_age_in_seconds], ::Integer, context: "#{context}[:maximum_record_age_in_seconds]")
        Hearth::Validator.validate_types!(input[:bisect_batch_on_function_error], ::TrueClass, ::FalseClass, context: "#{context}[:bisect_batch_on_function_error]")
        Hearth::Validator.validate_types!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate_types!(input[:tumbling_window_in_seconds], ::Integer, context: "#{context}[:tumbling_window_in_seconds]")
        FunctionResponseTypeList.validate!(input[:function_response_types], context: "#{context}[:function_response_types]") unless input[:function_response_types].nil?
        AmazonManagedKafkaEventSourceConfig.validate!(input[:amazon_managed_kafka_event_source_config], context: "#{context}[:amazon_managed_kafka_event_source_config]") unless input[:amazon_managed_kafka_event_source_config].nil?
        SelfManagedKafkaEventSourceConfig.validate!(input[:self_managed_kafka_event_source_config], context: "#{context}[:self_managed_kafka_event_source_config]") unless input[:self_managed_kafka_event_source_config].nil?
        ScalingConfig.validate!(input[:scaling_config], context: "#{context}[:scaling_config]") unless input[:scaling_config].nil?
        DocumentDBEventSourceConfig.validate!(input[:document_db_event_source_config], context: "#{context}[:document_db_event_source_config]") unless input[:document_db_event_source_config].nil?
      end
    end

    class GetFunctionCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetFunctionCodeSigningConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class GetFunctionCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetFunctionCodeSigningConfigOutput, context: context)
        Hearth::Validator.validate_required!(input[:code_signing_config_arn], context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate_types!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class GetFunctionConcurrencyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetFunctionConcurrencyInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class GetFunctionConcurrencyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetFunctionConcurrencyOutput, context: context)
        Hearth::Validator.validate_types!(input[:reserved_concurrent_executions], ::Integer, context: "#{context}[:reserved_concurrent_executions]")
      end
    end

    class GetFunctionConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetFunctionConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetFunctionConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetFunctionConfigurationOutput, context: context)
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate_types!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate_types!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate_types!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate_types!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate_types!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate_types!(input[:version], ::String, context: "#{context}[:version]")
        VpcConfigResponse.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        EnvironmentResponse.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate_types!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        TracingConfigResponse.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Hearth::Validator.validate_types!(input[:master_arn], ::String, context: "#{context}[:master_arn]")
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        LayersReferenceList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Hearth::Validator.validate_types!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate_types!(input[:state_reason_code], ::String, context: "#{context}[:state_reason_code]")
        Hearth::Validator.validate_types!(input[:last_update_status], ::String, context: "#{context}[:last_update_status]")
        Hearth::Validator.validate_types!(input[:last_update_status_reason], ::String, context: "#{context}[:last_update_status_reason]")
        Hearth::Validator.validate_types!(input[:last_update_status_reason_code], ::String, context: "#{context}[:last_update_status_reason_code]")
        FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        Hearth::Validator.validate_types!(input[:package_type], ::String, context: "#{context}[:package_type]")
        ImageConfigResponse.validate!(input[:image_config_response], context: "#{context}[:image_config_response]") unless input[:image_config_response].nil?
        Hearth::Validator.validate_types!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate_types!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
        ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
        SnapStartResponse.validate!(input[:snap_start], context: "#{context}[:snap_start]") unless input[:snap_start].nil?
        RuntimeVersionConfig.validate!(input[:runtime_version_config], context: "#{context}[:runtime_version_config]") unless input[:runtime_version_config].nil?
      end
    end

    class GetFunctionEventInvokeConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetFunctionEventInvokeConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetFunctionEventInvokeConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetFunctionEventInvokeConfigOutput, context: context)
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate_types!(input[:maximum_event_age_in_seconds], ::Integer, context: "#{context}[:maximum_event_age_in_seconds]")
        DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
      end
    end

    class GetFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetFunctionInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetFunctionOutput, context: context)
        FunctionConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        FunctionCodeLocation.validate!(input[:code], context: "#{context}[:code]") unless input[:code].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Concurrency.validate!(input[:concurrency], context: "#{context}[:concurrency]") unless input[:concurrency].nil?
      end
    end

    class GetFunctionUrlConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetFunctionUrlConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetFunctionUrlConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetFunctionUrlConfigOutput, context: context)
        Hearth::Validator.validate_required!(input[:function_url], context: "#{context}[:function_url]")
        Hearth::Validator.validate_types!(input[:function_url], ::String, context: "#{context}[:function_url]")
        Hearth::Validator.validate_required!(input[:function_arn], context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_required!(input[:auth_type], context: "#{context}[:auth_type]")
        Hearth::Validator.validate_types!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Cors.validate!(input[:cors], context: "#{context}[:cors]") unless input[:cors].nil?
        Hearth::Validator.validate_required!(input[:creation_time], context: "#{context}[:creation_time]")
        Hearth::Validator.validate_types!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate_required!(input[:last_modified_time], context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate_types!(input[:last_modified_time], ::String, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate_types!(input[:invoke_mode], ::String, context: "#{context}[:invoke_mode]")
      end
    end

    class GetLayerVersionByArnInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetLayerVersionByArnInput, context: context)
        Hearth::Validator.validate_required!(input[:arn], context: "#{context}[:arn]")
        Hearth::Validator.validate_types!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetLayerVersionByArnOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetLayerVersionByArnOutput, context: context)
        LayerVersionContentOutput.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Hearth::Validator.validate_types!(input[:layer_arn], ::String, context: "#{context}[:layer_arn]")
        Hearth::Validator.validate_types!(input[:layer_version_arn], ::String, context: "#{context}[:layer_version_arn]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:created_date], ::String, context: "#{context}[:created_date]")
        Hearth::Validator.validate_types!(input[:version], ::Integer, context: "#{context}[:version]")
        CompatibleRuntimes.validate!(input[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless input[:compatible_runtimes].nil?
        Hearth::Validator.validate_types!(input[:license_info], ::String, context: "#{context}[:license_info]")
        CompatibleArchitectures.validate!(input[:compatible_architectures], context: "#{context}[:compatible_architectures]") unless input[:compatible_architectures].nil?
      end
    end

    class GetLayerVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetLayerVersionInput, context: context)
        Hearth::Validator.validate_required!(input[:layer_name], context: "#{context}[:layer_name]")
        Hearth::Validator.validate_types!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate_required!(input[:version_number], context: "#{context}[:version_number]")
        Hearth::Validator.validate_types!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class GetLayerVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetLayerVersionOutput, context: context)
        LayerVersionContentOutput.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Hearth::Validator.validate_types!(input[:layer_arn], ::String, context: "#{context}[:layer_arn]")
        Hearth::Validator.validate_types!(input[:layer_version_arn], ::String, context: "#{context}[:layer_version_arn]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:created_date], ::String, context: "#{context}[:created_date]")
        Hearth::Validator.validate_types!(input[:version], ::Integer, context: "#{context}[:version]")
        CompatibleRuntimes.validate!(input[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless input[:compatible_runtimes].nil?
        Hearth::Validator.validate_types!(input[:license_info], ::String, context: "#{context}[:license_info]")
        CompatibleArchitectures.validate!(input[:compatible_architectures], context: "#{context}[:compatible_architectures]") unless input[:compatible_architectures].nil?
      end
    end

    class GetLayerVersionPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetLayerVersionPolicyInput, context: context)
        Hearth::Validator.validate_required!(input[:layer_name], context: "#{context}[:layer_name]")
        Hearth::Validator.validate_types!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate_required!(input[:version_number], context: "#{context}[:version_number]")
        Hearth::Validator.validate_types!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class GetLayerVersionPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetLayerVersionPolicyOutput, context: context)
        Hearth::Validator.validate_types!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class GetPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetPolicyInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetPolicyOutput, context: context)
        Hearth::Validator.validate_types!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class GetProvisionedConcurrencyConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetProvisionedConcurrencyConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_required!(input[:qualifier], context: "#{context}[:qualifier]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetProvisionedConcurrencyConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetProvisionedConcurrencyConfigOutput, context: context)
        Hearth::Validator.validate_types!(input[:requested_provisioned_concurrent_executions], ::Integer, context: "#{context}[:requested_provisioned_concurrent_executions]")
        Hearth::Validator.validate_types!(input[:available_provisioned_concurrent_executions], ::Integer, context: "#{context}[:available_provisioned_concurrent_executions]")
        Hearth::Validator.validate_types!(input[:allocated_provisioned_concurrent_executions], ::Integer, context: "#{context}[:allocated_provisioned_concurrent_executions]")
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate_types!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
      end
    end

    class GetRuntimeManagementConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetRuntimeManagementConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class GetRuntimeManagementConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetRuntimeManagementConfigOutput, context: context)
        Hearth::Validator.validate_types!(input[:update_runtime_on], ::String, context: "#{context}[:update_runtime_on]")
        Hearth::Validator.validate_types!(input[:runtime_version_arn], ::String, context: "#{context}[:runtime_version_arn]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
      end
    end

    class HeadersList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImageConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ImageConfig, context: context)
        StringList.validate!(input[:entry_point], context: "#{context}[:entry_point]") unless input[:entry_point].nil?
        StringList.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        Hearth::Validator.validate_types!(input[:working_directory], ::String, context: "#{context}[:working_directory]")
      end
    end

    class ImageConfigError
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ImageConfigError, context: context)
        Hearth::Validator.validate_types!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ImageConfigResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ImageConfigResponse, context: context)
        ImageConfig.validate!(input[:image_config], context: "#{context}[:image_config]") unless input[:image_config].nil?
        ImageConfigError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class InvalidCodeSignatureException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidCodeSignatureException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestContentException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidRequestContentException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRuntimeException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidRuntimeException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSecurityGroupIDException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidSecurityGroupIDException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSubnetIDException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidSubnetIDException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidZipFileException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvalidZipFileException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvokeAsyncInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvokeAsyncInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_required!(input[:invoke_args], context: "#{context}[:invoke_args]")
        unless input[:invoke_args].respond_to?(:read) || input[:invoke_args].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:invoke_args].class}"
        end
      end
    end

    class InvokeAsyncOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvokeAsyncOutput, context: context)
        Hearth::Validator.validate_types!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class InvokeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvokeInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:invocation_type], ::String, context: "#{context}[:invocation_type]")
        Hearth::Validator.validate_types!(input[:log_type], ::String, context: "#{context}[:log_type]")
        Hearth::Validator.validate_types!(input[:client_context], ::String, context: "#{context}[:client_context]")
        Hearth::Validator.validate_types!(input[:payload], ::String, context: "#{context}[:payload]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
      end
    end

    class InvokeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvokeOutput, context: context)
        Hearth::Validator.validate_types!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
        Hearth::Validator.validate_types!(input[:function_error], ::String, context: "#{context}[:function_error]")
        Hearth::Validator.validate_types!(input[:log_result], ::String, context: "#{context}[:log_result]")
        Hearth::Validator.validate_types!(input[:payload], ::String, context: "#{context}[:payload]")
        Hearth::Validator.validate_types!(input[:executed_version], ::String, context: "#{context}[:executed_version]")
      end
    end

    class InvokeResponseStreamUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvokeResponseStreamUpdate, context: context)
        Hearth::Validator.validate_types!(input[:payload], ::String, context: "#{context}[:payload]")
      end
    end

    class InvokeWithResponseStreamCompleteEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvokeWithResponseStreamCompleteEvent, context: context)
        Hearth::Validator.validate_types!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate_types!(input[:error_details], ::String, context: "#{context}[:error_details]")
        Hearth::Validator.validate_types!(input[:log_result], ::String, context: "#{context}[:log_result]")
      end
    end

    class InvokeWithResponseStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvokeWithResponseStreamInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:invocation_type], ::String, context: "#{context}[:invocation_type]")
        Hearth::Validator.validate_types!(input[:log_type], ::String, context: "#{context}[:log_type]")
        Hearth::Validator.validate_types!(input[:client_context], ::String, context: "#{context}[:client_context]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate_types!(input[:payload], ::String, context: "#{context}[:payload]")
      end
    end

    class InvokeWithResponseStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::InvokeWithResponseStreamOutput, context: context)
        Hearth::Validator.validate_types!(input[:status_code], ::Integer, context: "#{context}[:status_code]")
        Hearth::Validator.validate_types!(input[:executed_version], ::String, context: "#{context}[:executed_version]")
        InvokeWithResponseStreamResponseEvent.validate!(input[:event_stream], context: "#{context}[:event_stream]") unless input[:event_stream].nil?
        Hearth::Validator.validate_types!(input[:response_stream_content_type], ::String, context: "#{context}[:response_stream_content_type]")
      end
    end

    class InvokeWithResponseStreamResponseEvent
      def self.validate!(input, context:)
        case input
        when Types::InvokeWithResponseStreamResponseEvent::PayloadChunk
          InvokeResponseStreamUpdate.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::InvokeWithResponseStreamResponseEvent::InvokeComplete
          InvokeWithResponseStreamCompleteEvent.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::InvokeWithResponseStreamResponseEvent, got #{input.class}."
        end
      end

      class PayloadChunk
        def self.validate!(input, context:)
          Validators::InvokeResponseStreamUpdate.validate!(input, context: context) unless input.nil?
        end
      end

      class InvokeComplete
        def self.validate!(input, context:)
          Validators::InvokeWithResponseStreamCompleteEvent.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class KMSAccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KMSAccessDeniedException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSDisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KMSDisabledException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSInvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KMSInvalidStateException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KMSNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::KMSNotFoundException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Layer
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Layer, context: context)
        Hearth::Validator.validate_types!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate_types!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate_types!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate_types!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
      end
    end

    class LayerList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LayerVersionContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LayerVersionContentInput, context: context)
        Hearth::Validator.validate_types!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate_types!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
        Hearth::Validator.validate_types!(input[:s3_object_version], ::String, context: "#{context}[:s3_object_version]")
        Hearth::Validator.validate_types!(input[:zip_file], ::String, context: "#{context}[:zip_file]")
      end
    end

    class LayerVersionContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LayerVersionContentOutput, context: context)
        Hearth::Validator.validate_types!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate_types!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate_types!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate_types!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate_types!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
      end
    end

    class LayerVersionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LayerVersionsListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LayerVersionsListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LayerVersionsListItem, context: context)
        Hearth::Validator.validate_types!(input[:layer_version_arn], ::String, context: "#{context}[:layer_version_arn]")
        Hearth::Validator.validate_types!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:created_date], ::String, context: "#{context}[:created_date]")
        CompatibleRuntimes.validate!(input[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless input[:compatible_runtimes].nil?
        Hearth::Validator.validate_types!(input[:license_info], ::String, context: "#{context}[:license_info]")
        CompatibleArchitectures.validate!(input[:compatible_architectures], context: "#{context}[:compatible_architectures]") unless input[:compatible_architectures].nil?
      end
    end

    class LayersList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LayersListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LayersListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::LayersListItem, context: context)
        Hearth::Validator.validate_types!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate_types!(input[:layer_arn], ::String, context: "#{context}[:layer_arn]")
        LayerVersionsListItem.validate!(input[:latest_matching_version], context: "#{context}[:latest_matching_version]") unless input[:latest_matching_version].nil?
      end
    end

    class LayersReferenceList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Layer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListAliasesInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate_types!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListAliasesOutput, context: context)
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        AliasList.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
      end
    end

    class ListCodeSigningConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListCodeSigningConfigsInput, context: context)
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate_types!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListCodeSigningConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListCodeSigningConfigsOutput, context: context)
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        CodeSigningConfigList.validate!(input[:code_signing_configs], context: "#{context}[:code_signing_configs]") unless input[:code_signing_configs].nil?
      end
    end

    class ListEventSourceMappingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListEventSourceMappingsInput, context: context)
        Hearth::Validator.validate_types!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate_types!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListEventSourceMappingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListEventSourceMappingsOutput, context: context)
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        EventSourceMappingsList.validate!(input[:event_source_mappings], context: "#{context}[:event_source_mappings]") unless input[:event_source_mappings].nil?
      end
    end

    class ListFunctionEventInvokeConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListFunctionEventInvokeConfigsInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate_types!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListFunctionEventInvokeConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListFunctionEventInvokeConfigsOutput, context: context)
        FunctionEventInvokeConfigList.validate!(input[:function_event_invoke_configs], context: "#{context}[:function_event_invoke_configs]") unless input[:function_event_invoke_configs].nil?
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListFunctionUrlConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListFunctionUrlConfigsInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate_types!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListFunctionUrlConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListFunctionUrlConfigsOutput, context: context)
        Hearth::Validator.validate_required!(input[:function_url_configs], context: "#{context}[:function_url_configs]")
        FunctionUrlConfigList.validate!(input[:function_url_configs], context: "#{context}[:function_url_configs]") unless input[:function_url_configs].nil?
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListFunctionsByCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListFunctionsByCodeSigningConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:code_signing_config_arn], context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate_types!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate_types!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListFunctionsByCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListFunctionsByCodeSigningConfigOutput, context: context)
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        FunctionArnList.validate!(input[:function_arns], context: "#{context}[:function_arns]") unless input[:function_arns].nil?
      end
    end

    class ListFunctionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListFunctionsInput, context: context)
        Hearth::Validator.validate_types!(input[:master_region], ::String, context: "#{context}[:master_region]")
        Hearth::Validator.validate_types!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate_types!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListFunctionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListFunctionsOutput, context: context)
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        FunctionList.validate!(input[:functions], context: "#{context}[:functions]") unless input[:functions].nil?
      end
    end

    class ListLayerVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListLayerVersionsInput, context: context)
        Hearth::Validator.validate_types!(input[:compatible_runtime], ::String, context: "#{context}[:compatible_runtime]")
        Hearth::Validator.validate_required!(input[:layer_name], context: "#{context}[:layer_name]")
        Hearth::Validator.validate_types!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate_types!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate_types!(input[:compatible_architecture], ::String, context: "#{context}[:compatible_architecture]")
      end
    end

    class ListLayerVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListLayerVersionsOutput, context: context)
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        LayerVersionsList.validate!(input[:layer_versions], context: "#{context}[:layer_versions]") unless input[:layer_versions].nil?
      end
    end

    class ListLayersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListLayersInput, context: context)
        Hearth::Validator.validate_types!(input[:compatible_runtime], ::String, context: "#{context}[:compatible_runtime]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate_types!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate_types!(input[:compatible_architecture], ::String, context: "#{context}[:compatible_architecture]")
      end
    end

    class ListLayersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListLayersOutput, context: context)
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        LayersList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
      end
    end

    class ListProvisionedConcurrencyConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListProvisionedConcurrencyConfigsInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate_types!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListProvisionedConcurrencyConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListProvisionedConcurrencyConfigsOutput, context: context)
        ProvisionedConcurrencyConfigList.validate!(input[:provisioned_concurrency_configs], context: "#{context}[:provisioned_concurrency_configs]") unless input[:provisioned_concurrency_configs].nil?
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
      end
    end

    class ListTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListTagsInput, context: context)
        Hearth::Validator.validate_required!(input[:resource], context: "#{context}[:resource]")
        Hearth::Validator.validate_types!(input[:resource], ::String, context: "#{context}[:resource]")
      end
    end

    class ListTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListTagsOutput, context: context)
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListVersionsByFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListVersionsByFunctionInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate_types!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListVersionsByFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListVersionsByFunctionOutput, context: context)
        Hearth::Validator.validate_types!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        FunctionList.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
      end
    end

    class OnFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::OnFailure, context: context)
        Hearth::Validator.validate_types!(input[:destination], ::String, context: "#{context}[:destination]")
      end
    end

    class OnSuccess
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::OnSuccess, context: context)
        Hearth::Validator.validate_types!(input[:destination], ::String, context: "#{context}[:destination]")
      end
    end

    class PolicyLengthExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PolicyLengthExceededException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PreconditionFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PreconditionFailedException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ProvisionedConcurrencyConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProvisionedConcurrencyConfigListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisionedConcurrencyConfigListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ProvisionedConcurrencyConfigListItem, context: context)
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:requested_provisioned_concurrent_executions], ::Integer, context: "#{context}[:requested_provisioned_concurrent_executions]")
        Hearth::Validator.validate_types!(input[:available_provisioned_concurrent_executions], ::Integer, context: "#{context}[:available_provisioned_concurrent_executions]")
        Hearth::Validator.validate_types!(input[:allocated_provisioned_concurrent_executions], ::Integer, context: "#{context}[:allocated_provisioned_concurrent_executions]")
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate_types!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
      end
    end

    class ProvisionedConcurrencyConfigNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ProvisionedConcurrencyConfigNotFoundException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PublishLayerVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PublishLayerVersionInput, context: context)
        Hearth::Validator.validate_required!(input[:layer_name], context: "#{context}[:layer_name]")
        Hearth::Validator.validate_types!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_required!(input[:content], context: "#{context}[:content]")
        LayerVersionContentInput.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        CompatibleRuntimes.validate!(input[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless input[:compatible_runtimes].nil?
        Hearth::Validator.validate_types!(input[:license_info], ::String, context: "#{context}[:license_info]")
        CompatibleArchitectures.validate!(input[:compatible_architectures], context: "#{context}[:compatible_architectures]") unless input[:compatible_architectures].nil?
      end
    end

    class PublishLayerVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PublishLayerVersionOutput, context: context)
        LayerVersionContentOutput.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        Hearth::Validator.validate_types!(input[:layer_arn], ::String, context: "#{context}[:layer_arn]")
        Hearth::Validator.validate_types!(input[:layer_version_arn], ::String, context: "#{context}[:layer_version_arn]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:created_date], ::String, context: "#{context}[:created_date]")
        Hearth::Validator.validate_types!(input[:version], ::Integer, context: "#{context}[:version]")
        CompatibleRuntimes.validate!(input[:compatible_runtimes], context: "#{context}[:compatible_runtimes]") unless input[:compatible_runtimes].nil?
        Hearth::Validator.validate_types!(input[:license_info], ::String, context: "#{context}[:license_info]")
        CompatibleArchitectures.validate!(input[:compatible_architectures], context: "#{context}[:compatible_architectures]") unless input[:compatible_architectures].nil?
      end
    end

    class PublishVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PublishVersionInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class PublishVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PublishVersionOutput, context: context)
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate_types!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate_types!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate_types!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate_types!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate_types!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate_types!(input[:version], ::String, context: "#{context}[:version]")
        VpcConfigResponse.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        EnvironmentResponse.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate_types!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        TracingConfigResponse.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Hearth::Validator.validate_types!(input[:master_arn], ::String, context: "#{context}[:master_arn]")
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        LayersReferenceList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Hearth::Validator.validate_types!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate_types!(input[:state_reason_code], ::String, context: "#{context}[:state_reason_code]")
        Hearth::Validator.validate_types!(input[:last_update_status], ::String, context: "#{context}[:last_update_status]")
        Hearth::Validator.validate_types!(input[:last_update_status_reason], ::String, context: "#{context}[:last_update_status_reason]")
        Hearth::Validator.validate_types!(input[:last_update_status_reason_code], ::String, context: "#{context}[:last_update_status_reason_code]")
        FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        Hearth::Validator.validate_types!(input[:package_type], ::String, context: "#{context}[:package_type]")
        ImageConfigResponse.validate!(input[:image_config_response], context: "#{context}[:image_config_response]") unless input[:image_config_response].nil?
        Hearth::Validator.validate_types!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate_types!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
        ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
        SnapStartResponse.validate!(input[:snap_start], context: "#{context}[:snap_start]") unless input[:snap_start].nil?
        RuntimeVersionConfig.validate!(input[:runtime_version_config], context: "#{context}[:runtime_version_config]") unless input[:runtime_version_config].nil?
      end
    end

    class PutFunctionCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutFunctionCodeSigningConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:code_signing_config_arn], context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate_types!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class PutFunctionCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutFunctionCodeSigningConfigOutput, context: context)
        Hearth::Validator.validate_required!(input[:code_signing_config_arn], context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate_types!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class PutFunctionConcurrencyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutFunctionConcurrencyInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_required!(input[:reserved_concurrent_executions], context: "#{context}[:reserved_concurrent_executions]")
        Hearth::Validator.validate_types!(input[:reserved_concurrent_executions], ::Integer, context: "#{context}[:reserved_concurrent_executions]")
      end
    end

    class PutFunctionConcurrencyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutFunctionConcurrencyOutput, context: context)
        Hearth::Validator.validate_types!(input[:reserved_concurrent_executions], ::Integer, context: "#{context}[:reserved_concurrent_executions]")
      end
    end

    class PutFunctionEventInvokeConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutFunctionEventInvokeConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate_types!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate_types!(input[:maximum_event_age_in_seconds], ::Integer, context: "#{context}[:maximum_event_age_in_seconds]")
        DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
      end
    end

    class PutFunctionEventInvokeConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutFunctionEventInvokeConfigOutput, context: context)
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate_types!(input[:maximum_event_age_in_seconds], ::Integer, context: "#{context}[:maximum_event_age_in_seconds]")
        DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
      end
    end

    class PutProvisionedConcurrencyConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutProvisionedConcurrencyConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_required!(input[:qualifier], context: "#{context}[:qualifier]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate_required!(input[:provisioned_concurrent_executions], context: "#{context}[:provisioned_concurrent_executions]")
        Hearth::Validator.validate_types!(input[:provisioned_concurrent_executions], ::Integer, context: "#{context}[:provisioned_concurrent_executions]")
      end
    end

    class PutProvisionedConcurrencyConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutProvisionedConcurrencyConfigOutput, context: context)
        Hearth::Validator.validate_types!(input[:requested_provisioned_concurrent_executions], ::Integer, context: "#{context}[:requested_provisioned_concurrent_executions]")
        Hearth::Validator.validate_types!(input[:available_provisioned_concurrent_executions], ::Integer, context: "#{context}[:available_provisioned_concurrent_executions]")
        Hearth::Validator.validate_types!(input[:allocated_provisioned_concurrent_executions], ::Integer, context: "#{context}[:allocated_provisioned_concurrent_executions]")
        Hearth::Validator.validate_types!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate_types!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
      end
    end

    class PutRuntimeManagementConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutRuntimeManagementConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate_required!(input[:update_runtime_on], context: "#{context}[:update_runtime_on]")
        Hearth::Validator.validate_types!(input[:update_runtime_on], ::String, context: "#{context}[:update_runtime_on]")
        Hearth::Validator.validate_types!(input[:runtime_version_arn], ::String, context: "#{context}[:runtime_version_arn]")
      end
    end

    class PutRuntimeManagementConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PutRuntimeManagementConfigOutput, context: context)
        Hearth::Validator.validate_required!(input[:update_runtime_on], context: "#{context}[:update_runtime_on]")
        Hearth::Validator.validate_types!(input[:update_runtime_on], ::String, context: "#{context}[:update_runtime_on]")
        Hearth::Validator.validate_required!(input[:function_arn], context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:runtime_version_arn], ::String, context: "#{context}[:runtime_version_arn]")
      end
    end

    class Queues
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RemoveLayerVersionPermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RemoveLayerVersionPermissionInput, context: context)
        Hearth::Validator.validate_required!(input[:layer_name], context: "#{context}[:layer_name]")
        Hearth::Validator.validate_types!(input[:layer_name], ::String, context: "#{context}[:layer_name]")
        Hearth::Validator.validate_required!(input[:version_number], context: "#{context}[:version_number]")
        Hearth::Validator.validate_types!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate_required!(input[:statement_id], context: "#{context}[:statement_id]")
        Hearth::Validator.validate_types!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class RemoveLayerVersionPermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RemoveLayerVersionPermissionOutput, context: context)
      end
    end

    class RemovePermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RemovePermissionInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_required!(input[:statement_id], context: "#{context}[:statement_id]")
        Hearth::Validator.validate_types!(input[:statement_id], ::String, context: "#{context}[:statement_id]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class RemovePermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RemovePermissionOutput, context: context)
      end
    end

    class RequestTooLargeException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RequestTooLargeException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ResourceConflictException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotReadyException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ResourceNotReadyException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RuntimeVersionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RuntimeVersionConfig, context: context)
        Hearth::Validator.validate_types!(input[:runtime_version_arn], ::String, context: "#{context}[:runtime_version_arn]")
        RuntimeVersionError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class RuntimeVersionError
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RuntimeVersionError, context: context)
        Hearth::Validator.validate_types!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ScalingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ScalingConfig, context: context)
        Hearth::Validator.validate_types!(input[:maximum_concurrency], ::Integer, context: "#{context}[:maximum_concurrency]")
      end
    end

    class SecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SelfManagedEventSource
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SelfManagedEventSource, context: context)
        Endpoints.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
      end
    end

    class SelfManagedKafkaEventSourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SelfManagedKafkaEventSourceConfig, context: context)
        Hearth::Validator.validate_types!(input[:consumer_group_id], ::String, context: "#{context}[:consumer_group_id]")
      end
    end

    class ServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ServiceException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SigningProfileVersionArns
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SnapStart
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SnapStart, context: context)
        Hearth::Validator.validate_types!(input[:apply_on], ::String, context: "#{context}[:apply_on]")
      end
    end

    class SnapStartException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SnapStartException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapStartNotReadyException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SnapStartNotReadyException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SnapStartResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SnapStartResponse, context: context)
        Hearth::Validator.validate_types!(input[:apply_on], ::String, context: "#{context}[:apply_on]")
        Hearth::Validator.validate_types!(input[:optimization_status], ::String, context: "#{context}[:optimization_status]")
      end
    end

    class SnapStartTimeoutException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SnapStartTimeoutException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SourceAccessConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SourceAccessConfiguration, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:uri], ::String, context: "#{context}[:uri]")
      end
    end

    class SourceAccessConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SourceAccessConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubnetIPAddressLimitReachedException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SubnetIPAddressLimitReachedException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubnetIds
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate_required!(input[:resource], context: "#{context}[:resource]")
        Hearth::Validator.validate_types!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate_required!(input[:tags], context: "#{context}[:tags]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate_types!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate_types!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate_types!(input[:retry_after_seconds], ::String, context: "#{context}[:retry_after_seconds]")
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class Topics
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TracingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TracingConfig, context: context)
        Hearth::Validator.validate_types!(input[:mode], ::String, context: "#{context}[:mode]")
      end
    end

    class TracingConfigResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::TracingConfigResponse, context: context)
        Hearth::Validator.validate_types!(input[:mode], ::String, context: "#{context}[:mode]")
      end
    end

    class UnsupportedMediaTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UnsupportedMediaTypeException, context: context)
        Hearth::Validator.validate_types!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate_types!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate_required!(input[:resource], context: "#{context}[:resource]")
        Hearth::Validator.validate_types!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate_required!(input[:tag_keys], context: "#{context}[:tag_keys]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateAliasInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_required!(input[:name], context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        AliasRoutingConfiguration.validate!(input[:routing_config], context: "#{context}[:routing_config]") unless input[:routing_config].nil?
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class UpdateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateAliasOutput, context: context)
        Hearth::Validator.validate_types!(input[:alias_arn], ::String, context: "#{context}[:alias_arn]")
        Hearth::Validator.validate_types!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input[:function_version], ::String, context: "#{context}[:function_version]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        AliasRoutingConfiguration.validate!(input[:routing_config], context: "#{context}[:routing_config]") unless input[:routing_config].nil?
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class UpdateCodeSigningConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateCodeSigningConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:code_signing_config_arn], context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate_types!(input[:code_signing_config_arn], ::String, context: "#{context}[:code_signing_config_arn]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        AllowedPublishers.validate!(input[:allowed_publishers], context: "#{context}[:allowed_publishers]") unless input[:allowed_publishers].nil?
        CodeSigningPolicies.validate!(input[:code_signing_policies], context: "#{context}[:code_signing_policies]") unless input[:code_signing_policies].nil?
      end
    end

    class UpdateCodeSigningConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateCodeSigningConfigOutput, context: context)
        Hearth::Validator.validate_required!(input[:code_signing_config], context: "#{context}[:code_signing_config]")
        CodeSigningConfig.validate!(input[:code_signing_config], context: "#{context}[:code_signing_config]") unless input[:code_signing_config].nil?
      end
    end

    class UpdateEventSourceMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateEventSourceMappingInput, context: context)
        Hearth::Validator.validate_required!(input[:uuid], context: "#{context}[:uuid]")
        Hearth::Validator.validate_types!(input[:uuid], ::String, context: "#{context}[:uuid]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate_types!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate_types!(input[:maximum_batching_window_in_seconds], ::Integer, context: "#{context}[:maximum_batching_window_in_seconds]")
        DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Hearth::Validator.validate_types!(input[:maximum_record_age_in_seconds], ::Integer, context: "#{context}[:maximum_record_age_in_seconds]")
        Hearth::Validator.validate_types!(input[:bisect_batch_on_function_error], ::TrueClass, ::FalseClass, context: "#{context}[:bisect_batch_on_function_error]")
        Hearth::Validator.validate_types!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate_types!(input[:parallelization_factor], ::Integer, context: "#{context}[:parallelization_factor]")
        SourceAccessConfigurations.validate!(input[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless input[:source_access_configurations].nil?
        Hearth::Validator.validate_types!(input[:tumbling_window_in_seconds], ::Integer, context: "#{context}[:tumbling_window_in_seconds]")
        FunctionResponseTypeList.validate!(input[:function_response_types], context: "#{context}[:function_response_types]") unless input[:function_response_types].nil?
        ScalingConfig.validate!(input[:scaling_config], context: "#{context}[:scaling_config]") unless input[:scaling_config].nil?
        DocumentDBEventSourceConfig.validate!(input[:document_db_event_source_config], context: "#{context}[:document_db_event_source_config]") unless input[:document_db_event_source_config].nil?
      end
    end

    class UpdateEventSourceMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateEventSourceMappingOutput, context: context)
        Hearth::Validator.validate_types!(input[:uuid], ::String, context: "#{context}[:uuid]")
        Hearth::Validator.validate_types!(input[:starting_position], ::String, context: "#{context}[:starting_position]")
        Hearth::Validator.validate_types!(input[:starting_position_timestamp], ::Time, context: "#{context}[:starting_position_timestamp]")
        Hearth::Validator.validate_types!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Hearth::Validator.validate_types!(input[:maximum_batching_window_in_seconds], ::Integer, context: "#{context}[:maximum_batching_window_in_seconds]")
        Hearth::Validator.validate_types!(input[:parallelization_factor], ::Integer, context: "#{context}[:parallelization_factor]")
        Hearth::Validator.validate_types!(input[:event_source_arn], ::String, context: "#{context}[:event_source_arn]")
        FilterCriteria.validate!(input[:filter_criteria], context: "#{context}[:filter_criteria]") unless input[:filter_criteria].nil?
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:last_processing_result], ::String, context: "#{context}[:last_processing_result]")
        Hearth::Validator.validate_types!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input[:state_transition_reason], ::String, context: "#{context}[:state_transition_reason]")
        DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
        Topics.validate!(input[:topics], context: "#{context}[:topics]") unless input[:topics].nil?
        Queues.validate!(input[:queues], context: "#{context}[:queues]") unless input[:queues].nil?
        SourceAccessConfigurations.validate!(input[:source_access_configurations], context: "#{context}[:source_access_configurations]") unless input[:source_access_configurations].nil?
        SelfManagedEventSource.validate!(input[:self_managed_event_source], context: "#{context}[:self_managed_event_source]") unless input[:self_managed_event_source].nil?
        Hearth::Validator.validate_types!(input[:maximum_record_age_in_seconds], ::Integer, context: "#{context}[:maximum_record_age_in_seconds]")
        Hearth::Validator.validate_types!(input[:bisect_batch_on_function_error], ::TrueClass, ::FalseClass, context: "#{context}[:bisect_batch_on_function_error]")
        Hearth::Validator.validate_types!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate_types!(input[:tumbling_window_in_seconds], ::Integer, context: "#{context}[:tumbling_window_in_seconds]")
        FunctionResponseTypeList.validate!(input[:function_response_types], context: "#{context}[:function_response_types]") unless input[:function_response_types].nil?
        AmazonManagedKafkaEventSourceConfig.validate!(input[:amazon_managed_kafka_event_source_config], context: "#{context}[:amazon_managed_kafka_event_source_config]") unless input[:amazon_managed_kafka_event_source_config].nil?
        SelfManagedKafkaEventSourceConfig.validate!(input[:self_managed_kafka_event_source_config], context: "#{context}[:self_managed_kafka_event_source_config]") unless input[:self_managed_kafka_event_source_config].nil?
        ScalingConfig.validate!(input[:scaling_config], context: "#{context}[:scaling_config]") unless input[:scaling_config].nil?
        DocumentDBEventSourceConfig.validate!(input[:document_db_event_source_config], context: "#{context}[:document_db_event_source_config]") unless input[:document_db_event_source_config].nil?
      end
    end

    class UpdateFunctionCodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateFunctionCodeInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:zip_file], ::String, context: "#{context}[:zip_file]")
        Hearth::Validator.validate_types!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate_types!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
        Hearth::Validator.validate_types!(input[:s3_object_version], ::String, context: "#{context}[:s3_object_version]")
        Hearth::Validator.validate_types!(input[:image_uri], ::String, context: "#{context}[:image_uri]")
        Hearth::Validator.validate_types!(input[:publish], ::TrueClass, ::FalseClass, context: "#{context}[:publish]")
        Hearth::Validator.validate_types!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
      end
    end

    class UpdateFunctionCodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateFunctionCodeOutput, context: context)
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate_types!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate_types!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate_types!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate_types!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate_types!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate_types!(input[:version], ::String, context: "#{context}[:version]")
        VpcConfigResponse.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        EnvironmentResponse.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate_types!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        TracingConfigResponse.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Hearth::Validator.validate_types!(input[:master_arn], ::String, context: "#{context}[:master_arn]")
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        LayersReferenceList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Hearth::Validator.validate_types!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate_types!(input[:state_reason_code], ::String, context: "#{context}[:state_reason_code]")
        Hearth::Validator.validate_types!(input[:last_update_status], ::String, context: "#{context}[:last_update_status]")
        Hearth::Validator.validate_types!(input[:last_update_status_reason], ::String, context: "#{context}[:last_update_status_reason]")
        Hearth::Validator.validate_types!(input[:last_update_status_reason_code], ::String, context: "#{context}[:last_update_status_reason_code]")
        FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        Hearth::Validator.validate_types!(input[:package_type], ::String, context: "#{context}[:package_type]")
        ImageConfigResponse.validate!(input[:image_config_response], context: "#{context}[:image_config_response]") unless input[:image_config_response].nil?
        Hearth::Validator.validate_types!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate_types!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
        ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
        SnapStartResponse.validate!(input[:snap_start], context: "#{context}[:snap_start]") unless input[:snap_start].nil?
        RuntimeVersionConfig.validate!(input[:runtime_version_config], context: "#{context}[:runtime_version_config]") unless input[:runtime_version_config].nil?
      end
    end

    class UpdateFunctionConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateFunctionConfigurationInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate_types!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate_types!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate_types!(input[:runtime], ::String, context: "#{context}[:runtime]")
        DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        Hearth::Validator.validate_types!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        TracingConfig.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        LayerList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        ImageConfig.validate!(input[:image_config], context: "#{context}[:image_config]") unless input[:image_config].nil?
        EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
        SnapStart.validate!(input[:snap_start], context: "#{context}[:snap_start]") unless input[:snap_start].nil?
      end
    end

    class UpdateFunctionConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateFunctionConfigurationOutput, context: context)
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:runtime], ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate_types!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate_types!(input[:handler], ::String, context: "#{context}[:handler]")
        Hearth::Validator.validate_types!(input[:code_size], ::Integer, context: "#{context}[:code_size]")
        Hearth::Validator.validate_types!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_types!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate_types!(input[:memory_size], ::Integer, context: "#{context}[:memory_size]")
        Hearth::Validator.validate_types!(input[:last_modified], ::String, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:code_sha256], ::String, context: "#{context}[:code_sha256]")
        Hearth::Validator.validate_types!(input[:version], ::String, context: "#{context}[:version]")
        VpcConfigResponse.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        DeadLetterConfig.validate!(input[:dead_letter_config], context: "#{context}[:dead_letter_config]") unless input[:dead_letter_config].nil?
        EnvironmentResponse.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate_types!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        TracingConfigResponse.validate!(input[:tracing_config], context: "#{context}[:tracing_config]") unless input[:tracing_config].nil?
        Hearth::Validator.validate_types!(input[:master_arn], ::String, context: "#{context}[:master_arn]")
        Hearth::Validator.validate_types!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        LayersReferenceList.validate!(input[:layers], context: "#{context}[:layers]") unless input[:layers].nil?
        Hearth::Validator.validate_types!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate_types!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate_types!(input[:state_reason_code], ::String, context: "#{context}[:state_reason_code]")
        Hearth::Validator.validate_types!(input[:last_update_status], ::String, context: "#{context}[:last_update_status]")
        Hearth::Validator.validate_types!(input[:last_update_status_reason], ::String, context: "#{context}[:last_update_status_reason]")
        Hearth::Validator.validate_types!(input[:last_update_status_reason_code], ::String, context: "#{context}[:last_update_status_reason_code]")
        FileSystemConfigList.validate!(input[:file_system_configs], context: "#{context}[:file_system_configs]") unless input[:file_system_configs].nil?
        Hearth::Validator.validate_types!(input[:package_type], ::String, context: "#{context}[:package_type]")
        ImageConfigResponse.validate!(input[:image_config_response], context: "#{context}[:image_config_response]") unless input[:image_config_response].nil?
        Hearth::Validator.validate_types!(input[:signing_profile_version_arn], ::String, context: "#{context}[:signing_profile_version_arn]")
        Hearth::Validator.validate_types!(input[:signing_job_arn], ::String, context: "#{context}[:signing_job_arn]")
        ArchitecturesList.validate!(input[:architectures], context: "#{context}[:architectures]") unless input[:architectures].nil?
        EphemeralStorage.validate!(input[:ephemeral_storage], context: "#{context}[:ephemeral_storage]") unless input[:ephemeral_storage].nil?
        SnapStartResponse.validate!(input[:snap_start], context: "#{context}[:snap_start]") unless input[:snap_start].nil?
        RuntimeVersionConfig.validate!(input[:runtime_version_config], context: "#{context}[:runtime_version_config]") unless input[:runtime_version_config].nil?
      end
    end

    class UpdateFunctionEventInvokeConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateFunctionEventInvokeConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate_types!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate_types!(input[:maximum_event_age_in_seconds], ::Integer, context: "#{context}[:maximum_event_age_in_seconds]")
        DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
      end
    end

    class UpdateFunctionEventInvokeConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateFunctionEventInvokeConfigOutput, context: context)
        Hearth::Validator.validate_types!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
        Hearth::Validator.validate_types!(input[:maximum_event_age_in_seconds], ::Integer, context: "#{context}[:maximum_event_age_in_seconds]")
        DestinationConfig.validate!(input[:destination_config], context: "#{context}[:destination_config]") unless input[:destination_config].nil?
      end
    end

    class UpdateFunctionUrlConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateFunctionUrlConfigInput, context: context)
        Hearth::Validator.validate_required!(input[:function_name], context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate_types!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate_types!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Cors.validate!(input[:cors], context: "#{context}[:cors]") unless input[:cors].nil?
        Hearth::Validator.validate_types!(input[:invoke_mode], ::String, context: "#{context}[:invoke_mode]")
      end
    end

    class UpdateFunctionUrlConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateFunctionUrlConfigOutput, context: context)
        Hearth::Validator.validate_required!(input[:function_url], context: "#{context}[:function_url]")
        Hearth::Validator.validate_types!(input[:function_url], ::String, context: "#{context}[:function_url]")
        Hearth::Validator.validate_required!(input[:function_arn], context: "#{context}[:function_arn]")
        Hearth::Validator.validate_types!(input[:function_arn], ::String, context: "#{context}[:function_arn]")
        Hearth::Validator.validate_required!(input[:auth_type], context: "#{context}[:auth_type]")
        Hearth::Validator.validate_types!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Cors.validate!(input[:cors], context: "#{context}[:cors]") unless input[:cors].nil?
        Hearth::Validator.validate_required!(input[:creation_time], context: "#{context}[:creation_time]")
        Hearth::Validator.validate_types!(input[:creation_time], ::String, context: "#{context}[:creation_time]")
        Hearth::Validator.validate_required!(input[:last_modified_time], context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate_types!(input[:last_modified_time], ::String, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate_types!(input[:invoke_mode], ::String, context: "#{context}[:invoke_mode]")
      end
    end

    class VpcConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::VpcConfig, context: context)
        SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class VpcConfigResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::VpcConfigResponse, context: context)
        SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate_types!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

  end
end
