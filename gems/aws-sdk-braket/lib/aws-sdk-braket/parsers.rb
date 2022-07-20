# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Braket
  module Parsers

    # Operation Parser for CancelJob
    class CancelJob
      def self.parse(http_resp)
        data = Types::CancelJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_arn = map['jobArn']
        data.cancellation_status = map['cancellationStatus']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServiceException
    class InternalServiceException
      def self.parse(http_resp)
        data = Types::InternalServiceException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CancelQuantumTask
    class CancelQuantumTask
      def self.parse(http_resp)
        data = Types::CancelQuantumTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.quantum_task_arn = map['quantumTaskArn']
        data.cancellation_status = map['cancellationStatus']
        data
      end
    end

    # Operation Parser for CreateJob
    class CreateJob
      def self.parse(http_resp)
        data = Types::CreateJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_arn = map['jobArn']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for DeviceRetiredException
    class DeviceRetiredException
      def self.parse(http_resp)
        data = Types::DeviceRetiredException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateQuantumTask
    class CreateQuantumTask
      def self.parse(http_resp)
        data = Types::CreateQuantumTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.quantum_task_arn = map['quantumTaskArn']
        data
      end
    end

    # Error Parser for DeviceOfflineException
    class DeviceOfflineException
      def self.parse(http_resp)
        data = Types::DeviceOfflineException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetDevice
    class GetDevice
      def self.parse(http_resp)
        data = Types::GetDeviceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_arn = map['deviceArn']
        data.device_name = map['deviceName']
        data.provider_name = map['providerName']
        data.device_type = map['deviceType']
        data.device_status = map['deviceStatus']
        data.device_capabilities = map['deviceCapabilities']
        data
      end
    end

    # Operation Parser for GetJob
    class GetJob
      def self.parse(http_resp)
        data = Types::GetJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['status']
        data.job_arn = map['jobArn']
        data.role_arn = map['roleArn']
        data.failure_reason = map['failureReason']
        data.job_name = map['jobName']
        data.hyper_parameters = (HyperParameters.parse(map['hyperParameters']) unless map['hyperParameters'].nil?)
        data.input_data_config = (InputConfigList.parse(map['inputDataConfig']) unless map['inputDataConfig'].nil?)
        data.output_data_config = (JobOutputDataConfig.parse(map['outputDataConfig']) unless map['outputDataConfig'].nil?)
        data.stopping_condition = (JobStoppingCondition.parse(map['stoppingCondition']) unless map['stoppingCondition'].nil?)
        data.checkpoint_config = (JobCheckpointConfig.parse(map['checkpointConfig']) unless map['checkpointConfig'].nil?)
        data.algorithm_specification = (AlgorithmSpecification.parse(map['algorithmSpecification']) unless map['algorithmSpecification'].nil?)
        data.instance_config = (InstanceConfig.parse(map['instanceConfig']) unless map['instanceConfig'].nil?)
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.started_at = Time.parse(map['startedAt']) if map['startedAt']
        data.ended_at = Time.parse(map['endedAt']) if map['endedAt']
        data.billable_duration = map['billableDuration']
        data.device_config = (DeviceConfig.parse(map['deviceConfig']) unless map['deviceConfig'].nil?)
        data.events = (JobEvents.parse(map['events']) unless map['events'].nil?)
        data.tags = (TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class JobEvents
      def self.parse(list)
        data = []
        list.map do |value|
          data << JobEventDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobEventDetails
      def self.parse(map)
        data = Types::JobEventDetails.new
        data.event_type = map['eventType']
        data.time_of_event = Time.parse(map['timeOfEvent']) if map['timeOfEvent']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    class DeviceConfig
      def self.parse(map)
        data = Types::DeviceConfig.new
        data.device = map['device']
        return data
      end
    end

    class InstanceConfig
      def self.parse(map)
        data = Types::InstanceConfig.new
        data.instance_type = map['instanceType']
        data.volume_size_in_gb = map['volumeSizeInGb']
        data.instance_count = map['instanceCount']
        return data
      end
    end

    class AlgorithmSpecification
      def self.parse(map)
        data = Types::AlgorithmSpecification.new
        data.script_mode_config = (ScriptModeConfig.parse(map['scriptModeConfig']) unless map['scriptModeConfig'].nil?)
        data.container_image = (ContainerImage.parse(map['containerImage']) unless map['containerImage'].nil?)
        return data
      end
    end

    class ContainerImage
      def self.parse(map)
        data = Types::ContainerImage.new
        data.uri = map['uri']
        return data
      end
    end

    class ScriptModeConfig
      def self.parse(map)
        data = Types::ScriptModeConfig.new
        data.entry_point = map['entryPoint']
        data.s3_uri = map['s3Uri']
        data.compression_type = map['compressionType']
        return data
      end
    end

    class JobCheckpointConfig
      def self.parse(map)
        data = Types::JobCheckpointConfig.new
        data.local_path = map['localPath']
        data.s3_uri = map['s3Uri']
        return data
      end
    end

    class JobStoppingCondition
      def self.parse(map)
        data = Types::JobStoppingCondition.new
        data.max_runtime_in_seconds = map['maxRuntimeInSeconds']
        return data
      end
    end

    class JobOutputDataConfig
      def self.parse(map)
        data = Types::JobOutputDataConfig.new
        data.kms_key_id = map['kmsKeyId']
        data.s3_path = map['s3Path']
        return data
      end
    end

    class InputConfigList
      def self.parse(list)
        data = []
        list.map do |value|
          data << InputFileConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class InputFileConfig
      def self.parse(map)
        data = Types::InputFileConfig.new
        data.channel_name = map['channelName']
        data.content_type = map['contentType']
        data.data_source = (DataSource.parse(map['dataSource']) unless map['dataSource'].nil?)
        return data
      end
    end

    class DataSource
      def self.parse(map)
        data = Types::DataSource.new
        data.s3_data_source = (S3DataSource.parse(map['s3DataSource']) unless map['s3DataSource'].nil?)
        return data
      end
    end

    class S3DataSource
      def self.parse(map)
        data = Types::S3DataSource.new
        data.s3_uri = map['s3Uri']
        return data
      end
    end

    class HyperParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetQuantumTask
    class GetQuantumTask
      def self.parse(http_resp)
        data = Types::GetQuantumTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.quantum_task_arn = map['quantumTaskArn']
        data.status = map['status']
        data.failure_reason = map['failureReason']
        data.device_arn = map['deviceArn']
        data.device_parameters = map['deviceParameters']
        data.shots = map['shots']
        data.output_s3_bucket = map['outputS3Bucket']
        data.output_s3_directory = map['outputS3Directory']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.ended_at = Time.parse(map['endedAt']) if map['endedAt']
        data.tags = (TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data.job_arn = map['jobArn']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for SearchDevices
    class SearchDevices
      def self.parse(http_resp)
        data = Types::SearchDevicesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.devices = (DeviceSummaryList.parse(map['devices']) unless map['devices'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DeviceSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DeviceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DeviceSummary
      def self.parse(map)
        data = Types::DeviceSummary.new
        data.device_arn = map['deviceArn']
        data.device_name = map['deviceName']
        data.provider_name = map['providerName']
        data.device_type = map['deviceType']
        data.device_status = map['deviceStatus']
        return data
      end
    end

    # Operation Parser for SearchJobs
    class SearchJobs
      def self.parse(http_resp)
        data = Types::SearchJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.jobs = (JobSummaryList.parse(map['jobs']) unless map['jobs'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class JobSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << JobSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobSummary
      def self.parse(map)
        data = Types::JobSummary.new
        data.status = map['status']
        data.job_arn = map['jobArn']
        data.job_name = map['jobName']
        data.device = map['device']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.started_at = Time.parse(map['startedAt']) if map['startedAt']
        data.ended_at = Time.parse(map['endedAt']) if map['endedAt']
        data.tags = (TagsMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for SearchQuantumTasks
    class SearchQuantumTasks
      def self.parse(http_resp)
        data = Types::SearchQuantumTasksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.quantum_tasks = (QuantumTaskSummaryList.parse(map['quantumTasks']) unless map['quantumTasks'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class QuantumTaskSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << QuantumTaskSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class QuantumTaskSummary
      def self.parse(map)
        data = Types::QuantumTaskSummary.new
        data.quantum_task_arn = map['quantumTaskArn']
        data.status = map['status']
        data.device_arn = map['deviceArn']
        data.shots = map['shots']
        data.output_s3_bucket = map['outputS3Bucket']
        data.output_s3_directory = map['outputS3Directory']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.ended_at = Time.parse(map['endedAt']) if map['endedAt']
        data.tags = (TagsMap.parse(map['tags']) unless map['tags'].nil?)
        return data
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
  end
end
