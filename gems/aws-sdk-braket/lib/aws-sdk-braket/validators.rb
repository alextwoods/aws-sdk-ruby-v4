# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Braket
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AlgorithmSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlgorithmSpecification, context: context)
        Validators::ScriptModeConfig.validate!(input[:script_mode_config], context: "#{context}[:script_mode_config]") unless input[:script_mode_config].nil?
        Validators::ContainerImage.validate!(input[:container_image], context: "#{context}[:container_image]") unless input[:container_image].nil?
      end
    end

    class CancelJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobInput, context: context)
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
      end
    end

    class CancelJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:cancellation_status], ::String, context: "#{context}[:cancellation_status]")
      end
    end

    class CancelQuantumTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelQuantumTaskInput, context: context)
        Hearth::Validator.validate!(input[:quantum_task_arn], ::String, context: "#{context}[:quantum_task_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CancelQuantumTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelQuantumTaskOutput, context: context)
        Hearth::Validator.validate!(input[:quantum_task_arn], ::String, context: "#{context}[:quantum_task_arn]")
        Hearth::Validator.validate!(input[:cancellation_status], ::String, context: "#{context}[:cancellation_status]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ContainerImage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerImage, context: context)
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
      end
    end

    class CreateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::AlgorithmSpecification.validate!(input[:algorithm_specification], context: "#{context}[:algorithm_specification]") unless input[:algorithm_specification].nil?
        Validators::InputConfigList.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        Validators::JobOutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Validators::JobCheckpointConfig.validate!(input[:checkpoint_config], context: "#{context}[:checkpoint_config]") unless input[:checkpoint_config].nil?
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::JobStoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        Validators::InstanceConfig.validate!(input[:instance_config], context: "#{context}[:instance_config]") unless input[:instance_config].nil?
        Validators::HyperParameters.validate!(input[:hyper_parameters], context: "#{context}[:hyper_parameters]") unless input[:hyper_parameters].nil?
        Validators::DeviceConfig.validate!(input[:device_config], context: "#{context}[:device_config]") unless input[:device_config].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
      end
    end

    class CreateQuantumTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateQuantumTaskInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:device_parameters], ::String, context: "#{context}[:device_parameters]")
        Hearth::Validator.validate!(input[:shots], ::Integer, context: "#{context}[:shots]")
        Hearth::Validator.validate!(input[:output_s3_bucket], ::String, context: "#{context}[:output_s3_bucket]")
        Hearth::Validator.validate!(input[:output_s3_key_prefix], ::String, context: "#{context}[:output_s3_key_prefix]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:job_token], ::String, context: "#{context}[:job_token]")
      end
    end

    class CreateQuantumTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateQuantumTaskOutput, context: context)
        Hearth::Validator.validate!(input[:quantum_task_arn], ::String, context: "#{context}[:quantum_task_arn]")
      end
    end

    class DataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSource, context: context)
        Validators::S3DataSource.validate!(input[:s3_data_source], context: "#{context}[:s3_data_source]") unless input[:s3_data_source].nil?
      end
    end

    class DeviceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceConfig, context: context)
        Hearth::Validator.validate!(input[:device], ::String, context: "#{context}[:device]")
      end
    end

    class DeviceOfflineException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceOfflineException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeviceRetiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceRetiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeviceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceSummary, context: context)
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:device_type], ::String, context: "#{context}[:device_type]")
        Hearth::Validator.validate!(input[:device_status], ::String, context: "#{context}[:device_status]")
      end
    end

    class DeviceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DeviceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceInput, context: context)
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
      end
    end

    class GetDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:provider_name], ::String, context: "#{context}[:provider_name]")
        Hearth::Validator.validate!(input[:device_type], ::String, context: "#{context}[:device_type]")
        Hearth::Validator.validate!(input[:device_status], ::String, context: "#{context}[:device_status]")
        Hearth::Validator.validate!(input[:device_capabilities], ::String, context: "#{context}[:device_capabilities]")
      end
    end

    class GetJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobInput, context: context)
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
      end
    end

    class GetJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Validators::HyperParameters.validate!(input[:hyper_parameters], context: "#{context}[:hyper_parameters]") unless input[:hyper_parameters].nil?
        Validators::InputConfigList.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        Validators::JobOutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Validators::JobStoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        Validators::JobCheckpointConfig.validate!(input[:checkpoint_config], context: "#{context}[:checkpoint_config]") unless input[:checkpoint_config].nil?
        Validators::AlgorithmSpecification.validate!(input[:algorithm_specification], context: "#{context}[:algorithm_specification]") unless input[:algorithm_specification].nil?
        Validators::InstanceConfig.validate!(input[:instance_config], context: "#{context}[:instance_config]") unless input[:instance_config].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:ended_at], ::Time, context: "#{context}[:ended_at]")
        Hearth::Validator.validate!(input[:billable_duration], ::Integer, context: "#{context}[:billable_duration]")
        Validators::DeviceConfig.validate!(input[:device_config], context: "#{context}[:device_config]") unless input[:device_config].nil?
        Validators::JobEvents.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetQuantumTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQuantumTaskInput, context: context)
        Hearth::Validator.validate!(input[:quantum_task_arn], ::String, context: "#{context}[:quantum_task_arn]")
      end
    end

    class GetQuantumTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQuantumTaskOutput, context: context)
        Hearth::Validator.validate!(input[:quantum_task_arn], ::String, context: "#{context}[:quantum_task_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:device_parameters], ::String, context: "#{context}[:device_parameters]")
        Hearth::Validator.validate!(input[:shots], ::Integer, context: "#{context}[:shots]")
        Hearth::Validator.validate!(input[:output_s3_bucket], ::String, context: "#{context}[:output_s3_bucket]")
        Hearth::Validator.validate!(input[:output_s3_directory], ::String, context: "#{context}[:output_s3_directory]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:ended_at], ::Time, context: "#{context}[:ended_at]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
      end
    end

    class HyperParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class InputConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InputFileConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InputFileConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputFileConfig, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Validators::DataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
      end
    end

    class InstanceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceConfig, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:volume_size_in_gb], ::Integer, context: "#{context}[:volume_size_in_gb]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
      end
    end

    class InternalServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobCheckpointConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobCheckpointConfig, context: context)
        Hearth::Validator.validate!(input[:local_path], ::String, context: "#{context}[:local_path]")
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
      end
    end

    class JobEventDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobEventDetails, context: context)
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        Hearth::Validator.validate!(input[:time_of_event], ::Time, context: "#{context}[:time_of_event]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobEventDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobOutputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobOutputDataConfig, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:s3_path], ::String, context: "#{context}[:s3_path]")
      end
    end

    class JobStoppingCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobStoppingCondition, context: context)
        Hearth::Validator.validate!(input[:max_runtime_in_seconds], ::Integer, context: "#{context}[:max_runtime_in_seconds]")
      end
    end

    class JobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobSummary, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:device], ::String, context: "#{context}[:device]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:ended_at], ::Time, context: "#{context}[:ended_at]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class JobSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class QuantumTaskSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QuantumTaskSummary, context: context)
        Hearth::Validator.validate!(input[:quantum_task_arn], ::String, context: "#{context}[:quantum_task_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:shots], ::Integer, context: "#{context}[:shots]")
        Hearth::Validator.validate!(input[:output_s3_bucket], ::String, context: "#{context}[:output_s3_bucket]")
        Hearth::Validator.validate!(input[:output_s3_directory], ::String, context: "#{context}[:output_s3_directory]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:ended_at], ::Time, context: "#{context}[:ended_at]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class QuantumTaskSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::QuantumTaskSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3DataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DataSource, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
      end
    end

    class ScriptModeConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScriptModeConfig, context: context)
        Hearth::Validator.validate!(input[:entry_point], ::String, context: "#{context}[:entry_point]")
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:compression_type], ::String, context: "#{context}[:compression_type]")
      end
    end

    class SearchDevicesFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchDevicesFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::String256List.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class SearchDevicesFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SearchDevicesFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SearchDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchDevicesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::SearchDevicesFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class SearchDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchDevicesOutput, context: context)
        Validators::DeviceSummaryList.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchJobsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchJobsFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::String256List.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class SearchJobsFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SearchJobsFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SearchJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::SearchJobsFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class SearchJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchJobsOutput, context: context)
        Validators::JobSummaryList.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchQuantumTasksFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchQuantumTasksFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::String256List.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class SearchQuantumTasksFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SearchQuantumTasksFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SearchQuantumTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchQuantumTasksInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::SearchQuantumTasksFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class SearchQuantumTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchQuantumTasksOutput, context: context)
        Validators::QuantumTaskSummaryList.validate!(input[:quantum_tasks], context: "#{context}[:quantum_tasks]") unless input[:quantum_tasks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class String256List
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeys
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
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
