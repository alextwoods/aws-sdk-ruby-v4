# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Braket
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AlgorithmSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlgorithmSpecification, context: context)
        type = Types::AlgorithmSpecification.new
        type.script_mode_config = ScriptModeConfig.build(params[:script_mode_config], context: "#{context}[:script_mode_config]") unless params[:script_mode_config].nil?
        type.container_image = ContainerImage.build(params[:container_image], context: "#{context}[:container_image]") unless params[:container_image].nil?
        type
      end
    end

    module CancelJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobInput, context: context)
        type = Types::CancelJobInput.new
        type.job_arn = params[:job_arn]
        type
      end
    end

    module CancelJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobOutput, context: context)
        type = Types::CancelJobOutput.new
        type.job_arn = params[:job_arn]
        type.cancellation_status = params[:cancellation_status]
        type
      end
    end

    module CancelQuantumTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelQuantumTaskInput, context: context)
        type = Types::CancelQuantumTaskInput.new
        type.quantum_task_arn = params[:quantum_task_arn]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CancelQuantumTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelQuantumTaskOutput, context: context)
        type = Types::CancelQuantumTaskOutput.new
        type.quantum_task_arn = params[:quantum_task_arn]
        type.cancellation_status = params[:cancellation_status]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ContainerImage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerImage, context: context)
        type = Types::ContainerImage.new
        type.uri = params[:uri]
        type
      end
    end

    module CreateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobInput, context: context)
        type = Types::CreateJobInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.algorithm_specification = AlgorithmSpecification.build(params[:algorithm_specification], context: "#{context}[:algorithm_specification]") unless params[:algorithm_specification].nil?
        type.input_data_config = InputConfigList.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = JobOutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.checkpoint_config = JobCheckpointConfig.build(params[:checkpoint_config], context: "#{context}[:checkpoint_config]") unless params[:checkpoint_config].nil?
        type.job_name = params[:job_name]
        type.role_arn = params[:role_arn]
        type.stopping_condition = JobStoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.instance_config = InstanceConfig.build(params[:instance_config], context: "#{context}[:instance_config]") unless params[:instance_config].nil?
        type.hyper_parameters = HyperParameters.build(params[:hyper_parameters], context: "#{context}[:hyper_parameters]") unless params[:hyper_parameters].nil?
        type.device_config = DeviceConfig.build(params[:device_config], context: "#{context}[:device_config]") unless params[:device_config].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobOutput, context: context)
        type = Types::CreateJobOutput.new
        type.job_arn = params[:job_arn]
        type
      end
    end

    module CreateQuantumTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateQuantumTaskInput, context: context)
        type = Types::CreateQuantumTaskInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.device_arn = params[:device_arn]
        type.device_parameters = params[:device_parameters]
        type.shots = params[:shots]
        type.output_s3_bucket = params[:output_s3_bucket]
        type.output_s3_key_prefix = params[:output_s3_key_prefix]
        type.action = params[:action]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.job_token = params[:job_token]
        type
      end
    end

    module CreateQuantumTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateQuantumTaskOutput, context: context)
        type = Types::CreateQuantumTaskOutput.new
        type.quantum_task_arn = params[:quantum_task_arn]
        type
      end
    end

    module DataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSource, context: context)
        type = Types::DataSource.new
        type.s3_data_source = S3DataSource.build(params[:s3_data_source], context: "#{context}[:s3_data_source]") unless params[:s3_data_source].nil?
        type
      end
    end

    module DeviceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceConfig, context: context)
        type = Types::DeviceConfig.new
        type.device = params[:device]
        type
      end
    end

    module DeviceOfflineException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceOfflineException, context: context)
        type = Types::DeviceOfflineException.new
        type.message = params[:message]
        type
      end
    end

    module DeviceRetiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceRetiredException, context: context)
        type = Types::DeviceRetiredException.new
        type.message = params[:message]
        type
      end
    end

    module DeviceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceSummary, context: context)
        type = Types::DeviceSummary.new
        type.device_arn = params[:device_arn]
        type.device_name = params[:device_name]
        type.provider_name = params[:provider_name]
        type.device_type = params[:device_type]
        type.device_status = params[:device_status]
        type
      end
    end

    module DeviceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceInput, context: context)
        type = Types::GetDeviceInput.new
        type.device_arn = params[:device_arn]
        type
      end
    end

    module GetDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceOutput, context: context)
        type = Types::GetDeviceOutput.new
        type.device_arn = params[:device_arn]
        type.device_name = params[:device_name]
        type.provider_name = params[:provider_name]
        type.device_type = params[:device_type]
        type.device_status = params[:device_status]
        type.device_capabilities = params[:device_capabilities]
        type
      end
    end

    module GetJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobInput, context: context)
        type = Types::GetJobInput.new
        type.job_arn = params[:job_arn]
        type
      end
    end

    module GetJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobOutput, context: context)
        type = Types::GetJobOutput.new
        type.status = params[:status]
        type.job_arn = params[:job_arn]
        type.role_arn = params[:role_arn]
        type.failure_reason = params[:failure_reason]
        type.job_name = params[:job_name]
        type.hyper_parameters = HyperParameters.build(params[:hyper_parameters], context: "#{context}[:hyper_parameters]") unless params[:hyper_parameters].nil?
        type.input_data_config = InputConfigList.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = JobOutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.stopping_condition = JobStoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.checkpoint_config = JobCheckpointConfig.build(params[:checkpoint_config], context: "#{context}[:checkpoint_config]") unless params[:checkpoint_config].nil?
        type.algorithm_specification = AlgorithmSpecification.build(params[:algorithm_specification], context: "#{context}[:algorithm_specification]") unless params[:algorithm_specification].nil?
        type.instance_config = InstanceConfig.build(params[:instance_config], context: "#{context}[:instance_config]") unless params[:instance_config].nil?
        type.created_at = params[:created_at]
        type.started_at = params[:started_at]
        type.ended_at = params[:ended_at]
        type.billable_duration = params[:billable_duration]
        type.device_config = DeviceConfig.build(params[:device_config], context: "#{context}[:device_config]") unless params[:device_config].nil?
        type.events = JobEvents.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetQuantumTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQuantumTaskInput, context: context)
        type = Types::GetQuantumTaskInput.new
        type.quantum_task_arn = params[:quantum_task_arn]
        type
      end
    end

    module GetQuantumTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQuantumTaskOutput, context: context)
        type = Types::GetQuantumTaskOutput.new
        type.quantum_task_arn = params[:quantum_task_arn]
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type.device_arn = params[:device_arn]
        type.device_parameters = params[:device_parameters]
        type.shots = params[:shots]
        type.output_s3_bucket = params[:output_s3_bucket]
        type.output_s3_directory = params[:output_s3_directory]
        type.created_at = params[:created_at]
        type.ended_at = params[:ended_at]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.job_arn = params[:job_arn]
        type
      end
    end

    module HyperParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module InputConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputFileConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InputFileConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputFileConfig, context: context)
        type = Types::InputFileConfig.new
        type.channel_name = params[:channel_name]
        type.content_type = params[:content_type]
        type.data_source = DataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type
      end
    end

    module InstanceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceConfig, context: context)
        type = Types::InstanceConfig.new
        type.instance_type = params[:instance_type]
        type.volume_size_in_gb = params[:volume_size_in_gb]
        type.instance_count = params[:instance_count]
        type
      end
    end

    module InternalServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceException, context: context)
        type = Types::InternalServiceException.new
        type.message = params[:message]
        type
      end
    end

    module JobCheckpointConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobCheckpointConfig, context: context)
        type = Types::JobCheckpointConfig.new
        type.local_path = params[:local_path]
        type.s3_uri = params[:s3_uri]
        type
      end
    end

    module JobEventDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobEventDetails, context: context)
        type = Types::JobEventDetails.new
        type.event_type = params[:event_type]
        type.time_of_event = params[:time_of_event]
        type.message = params[:message]
        type
      end
    end

    module JobEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobEventDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobOutputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobOutputDataConfig, context: context)
        type = Types::JobOutputDataConfig.new
        type.kms_key_id = params[:kms_key_id]
        type.s3_path = params[:s3_path]
        type
      end
    end

    module JobStoppingCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobStoppingCondition, context: context)
        type = Types::JobStoppingCondition.new
        type.max_runtime_in_seconds = params[:max_runtime_in_seconds]
        type
      end
    end

    module JobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobSummary, context: context)
        type = Types::JobSummary.new
        type.status = params[:status]
        type.job_arn = params[:job_arn]
        type.job_name = params[:job_name]
        type.device = params[:device]
        type.created_at = params[:created_at]
        type.started_at = params[:started_at]
        type.ended_at = params[:ended_at]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module JobSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module QuantumTaskSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QuantumTaskSummary, context: context)
        type = Types::QuantumTaskSummary.new
        type.quantum_task_arn = params[:quantum_task_arn]
        type.status = params[:status]
        type.device_arn = params[:device_arn]
        type.shots = params[:shots]
        type.output_s3_bucket = params[:output_s3_bucket]
        type.output_s3_directory = params[:output_s3_directory]
        type.created_at = params[:created_at]
        type.ended_at = params[:ended_at]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module QuantumTaskSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QuantumTaskSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module S3DataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DataSource, context: context)
        type = Types::S3DataSource.new
        type.s3_uri = params[:s3_uri]
        type
      end
    end

    module ScriptModeConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScriptModeConfig, context: context)
        type = Types::ScriptModeConfig.new
        type.entry_point = params[:entry_point]
        type.s3_uri = params[:s3_uri]
        type.compression_type = params[:compression_type]
        type
      end
    end

    module SearchDevicesFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchDevicesFilter, context: context)
        type = Types::SearchDevicesFilter.new
        type.name = params[:name]
        type.values = String256List.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module SearchDevicesFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SearchDevicesFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SearchDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchDevicesInput, context: context)
        type = Types::SearchDevicesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = SearchDevicesFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module SearchDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchDevicesOutput, context: context)
        type = Types::SearchDevicesOutput.new
        type.devices = DeviceSummaryList.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchJobsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchJobsFilter, context: context)
        type = Types::SearchJobsFilter.new
        type.name = params[:name]
        type.values = String256List.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module SearchJobsFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SearchJobsFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SearchJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchJobsInput, context: context)
        type = Types::SearchJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = SearchJobsFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module SearchJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchJobsOutput, context: context)
        type = Types::SearchJobsOutput.new
        type.jobs = JobSummaryList.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchQuantumTasksFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchQuantumTasksFilter, context: context)
        type = Types::SearchQuantumTasksFilter.new
        type.name = params[:name]
        type.values = String256List.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module SearchQuantumTasksFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SearchQuantumTasksFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SearchQuantumTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchQuantumTasksInput, context: context)
        type = Types::SearchQuantumTasksInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = SearchQuantumTasksFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module SearchQuantumTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchQuantumTasksOutput, context: context)
        type = Types::SearchQuantumTasksOutput.new
        type.quantum_tasks = QuantumTaskSummaryList.build(params[:quantum_tasks], context: "#{context}[:quantum_tasks]") unless params[:quantum_tasks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module String256List
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagKeys
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
        type.resource_arn = params[:resource_arn]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TagsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
