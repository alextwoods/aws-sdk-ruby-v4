# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Braket
  module Stubs

    # Operation Stubber for CancelJob
    class CancelJob
      def self.default(visited=[])
        {
          job_arn: 'job_arn',
          cancellation_status: 'cancellation_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['cancellationStatus'] = stub[:cancellation_status] unless stub[:cancellation_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CancelQuantumTask
    class CancelQuantumTask
      def self.default(visited=[])
        {
          quantum_task_arn: 'quantum_task_arn',
          cancellation_status: 'cancellation_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['quantumTaskArn'] = stub[:quantum_task_arn] unless stub[:quantum_task_arn].nil?
        data['cancellationStatus'] = stub[:cancellation_status] unless stub[:cancellation_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateJob
    class CreateJob
      def self.default(visited=[])
        {
          job_arn: 'job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateQuantumTask
    class CreateQuantumTask
      def self.default(visited=[])
        {
          quantum_task_arn: 'quantum_task_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['quantumTaskArn'] = stub[:quantum_task_arn] unless stub[:quantum_task_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDevice
    class GetDevice
      def self.default(visited=[])
        {
          device_arn: 'device_arn',
          device_name: 'device_name',
          provider_name: 'provider_name',
          device_type: 'device_type',
          device_status: 'device_status',
          device_capabilities: 'device_capabilities',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['deviceArn'] = stub[:device_arn] unless stub[:device_arn].nil?
        data['deviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['deviceType'] = stub[:device_type] unless stub[:device_type].nil?
        data['deviceStatus'] = stub[:device_status] unless stub[:device_status].nil?
        data['deviceCapabilities'] = stub[:device_capabilities] unless stub[:device_capabilities].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetJob
    class GetJob
      def self.default(visited=[])
        {
          status: 'status',
          job_arn: 'job_arn',
          role_arn: 'role_arn',
          failure_reason: 'failure_reason',
          job_name: 'job_name',
          hyper_parameters: HyperParameters.default(visited),
          input_data_config: InputConfigList.default(visited),
          output_data_config: JobOutputDataConfig.default(visited),
          stopping_condition: JobStoppingCondition.default(visited),
          checkpoint_config: JobCheckpointConfig.default(visited),
          algorithm_specification: AlgorithmSpecification.default(visited),
          instance_config: InstanceConfig.default(visited),
          created_at: Time.now,
          started_at: Time.now,
          ended_at: Time.now,
          billable_duration: 1,
          device_config: DeviceConfig.default(visited),
          events: JobEvents.default(visited),
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['status'] = stub[:status] unless stub[:status].nil?
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['jobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['hyperParameters'] = HyperParameters.stub(stub[:hyper_parameters]) unless stub[:hyper_parameters].nil?
        data['inputDataConfig'] = InputConfigList.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['outputDataConfig'] = JobOutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['stoppingCondition'] = JobStoppingCondition.stub(stub[:stopping_condition]) unless stub[:stopping_condition].nil?
        data['checkpointConfig'] = JobCheckpointConfig.stub(stub[:checkpoint_config]) unless stub[:checkpoint_config].nil?
        data['algorithmSpecification'] = AlgorithmSpecification.stub(stub[:algorithm_specification]) unless stub[:algorithm_specification].nil?
        data['instanceConfig'] = InstanceConfig.stub(stub[:instance_config]) unless stub[:instance_config].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['startedAt'] = Hearth::TimeHelper.to_date_time(stub[:started_at]) unless stub[:started_at].nil?
        data['endedAt'] = Hearth::TimeHelper.to_date_time(stub[:ended_at]) unless stub[:ended_at].nil?
        data['billableDuration'] = stub[:billable_duration] unless stub[:billable_duration].nil?
        data['deviceConfig'] = DeviceConfig.stub(stub[:device_config]) unless stub[:device_config].nil?
        data['events'] = JobEvents.stub(stub[:events]) unless stub[:events].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagsMap
    class TagsMap
      def self.default(visited=[])
        return nil if visited.include?('TagsMap')
        visited = visited + ['TagsMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for JobEvents
    class JobEvents
      def self.default(visited=[])
        return nil if visited.include?('JobEvents')
        visited = visited + ['JobEvents']
        [
          JobEventDetails.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JobEventDetails.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobEventDetails
    class JobEventDetails
      def self.default(visited=[])
        return nil if visited.include?('JobEventDetails')
        visited = visited + ['JobEventDetails']
        {
          event_type: 'event_type',
          time_of_event: Time.now,
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobEventDetails.new
        data = {}
        data['eventType'] = stub[:event_type] unless stub[:event_type].nil?
        data['timeOfEvent'] = Hearth::TimeHelper.to_date_time(stub[:time_of_event]) unless stub[:time_of_event].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for DeviceConfig
    class DeviceConfig
      def self.default(visited=[])
        return nil if visited.include?('DeviceConfig')
        visited = visited + ['DeviceConfig']
        {
          device: 'device',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceConfig.new
        data = {}
        data['device'] = stub[:device] unless stub[:device].nil?
        data
      end
    end

    # Structure Stubber for InstanceConfig
    class InstanceConfig
      def self.default(visited=[])
        return nil if visited.include?('InstanceConfig')
        visited = visited + ['InstanceConfig']
        {
          instance_type: 'instance_type',
          volume_size_in_gb: 1,
          instance_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceConfig.new
        data = {}
        data['instanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['volumeSizeInGb'] = stub[:volume_size_in_gb] unless stub[:volume_size_in_gb].nil?
        data['instanceCount'] = stub[:instance_count] unless stub[:instance_count].nil?
        data
      end
    end

    # Structure Stubber for AlgorithmSpecification
    class AlgorithmSpecification
      def self.default(visited=[])
        return nil if visited.include?('AlgorithmSpecification')
        visited = visited + ['AlgorithmSpecification']
        {
          script_mode_config: ScriptModeConfig.default(visited),
          container_image: ContainerImage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AlgorithmSpecification.new
        data = {}
        data['scriptModeConfig'] = ScriptModeConfig.stub(stub[:script_mode_config]) unless stub[:script_mode_config].nil?
        data['containerImage'] = ContainerImage.stub(stub[:container_image]) unless stub[:container_image].nil?
        data
      end
    end

    # Structure Stubber for ContainerImage
    class ContainerImage
      def self.default(visited=[])
        return nil if visited.include?('ContainerImage')
        visited = visited + ['ContainerImage']
        {
          uri: 'uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContainerImage.new
        data = {}
        data['uri'] = stub[:uri] unless stub[:uri].nil?
        data
      end
    end

    # Structure Stubber for ScriptModeConfig
    class ScriptModeConfig
      def self.default(visited=[])
        return nil if visited.include?('ScriptModeConfig')
        visited = visited + ['ScriptModeConfig']
        {
          entry_point: 'entry_point',
          s3_uri: 's3_uri',
          compression_type: 'compression_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScriptModeConfig.new
        data = {}
        data['entryPoint'] = stub[:entry_point] unless stub[:entry_point].nil?
        data['s3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['compressionType'] = stub[:compression_type] unless stub[:compression_type].nil?
        data
      end
    end

    # Structure Stubber for JobCheckpointConfig
    class JobCheckpointConfig
      def self.default(visited=[])
        return nil if visited.include?('JobCheckpointConfig')
        visited = visited + ['JobCheckpointConfig']
        {
          local_path: 'local_path',
          s3_uri: 's3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobCheckpointConfig.new
        data = {}
        data['localPath'] = stub[:local_path] unless stub[:local_path].nil?
        data['s3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data
      end
    end

    # Structure Stubber for JobStoppingCondition
    class JobStoppingCondition
      def self.default(visited=[])
        return nil if visited.include?('JobStoppingCondition')
        visited = visited + ['JobStoppingCondition']
        {
          max_runtime_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobStoppingCondition.new
        data = {}
        data['maxRuntimeInSeconds'] = stub[:max_runtime_in_seconds] unless stub[:max_runtime_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for JobOutputDataConfig
    class JobOutputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('JobOutputDataConfig')
        visited = visited + ['JobOutputDataConfig']
        {
          kms_key_id: 'kms_key_id',
          s3_path: 's3_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobOutputDataConfig.new
        data = {}
        data['kmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['s3Path'] = stub[:s3_path] unless stub[:s3_path].nil?
        data
      end
    end

    # List Stubber for InputConfigList
    class InputConfigList
      def self.default(visited=[])
        return nil if visited.include?('InputConfigList')
        visited = visited + ['InputConfigList']
        [
          InputFileConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InputFileConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InputFileConfig
    class InputFileConfig
      def self.default(visited=[])
        return nil if visited.include?('InputFileConfig')
        visited = visited + ['InputFileConfig']
        {
          channel_name: 'channel_name',
          content_type: 'content_type',
          data_source: DataSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputFileConfig.new
        data = {}
        data['channelName'] = stub[:channel_name] unless stub[:channel_name].nil?
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['dataSource'] = DataSource.stub(stub[:data_source]) unless stub[:data_source].nil?
        data
      end
    end

    # Structure Stubber for DataSource
    class DataSource
      def self.default(visited=[])
        return nil if visited.include?('DataSource')
        visited = visited + ['DataSource']
        {
          s3_data_source: S3DataSource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSource.new
        data = {}
        data['s3DataSource'] = S3DataSource.stub(stub[:s3_data_source]) unless stub[:s3_data_source].nil?
        data
      end
    end

    # Structure Stubber for S3DataSource
    class S3DataSource
      def self.default(visited=[])
        return nil if visited.include?('S3DataSource')
        visited = visited + ['S3DataSource']
        {
          s3_uri: 's3_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3DataSource.new
        data = {}
        data['s3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data
      end
    end

    # Map Stubber for HyperParameters
    class HyperParameters
      def self.default(visited=[])
        return nil if visited.include?('HyperParameters')
        visited = visited + ['HyperParameters']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetQuantumTask
    class GetQuantumTask
      def self.default(visited=[])
        {
          quantum_task_arn: 'quantum_task_arn',
          status: 'status',
          failure_reason: 'failure_reason',
          device_arn: 'device_arn',
          device_parameters: 'device_parameters',
          shots: 1,
          output_s3_bucket: 'output_s3_bucket',
          output_s3_directory: 'output_s3_directory',
          created_at: Time.now,
          ended_at: Time.now,
          tags: TagsMap.default(visited),
          job_arn: 'job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['quantumTaskArn'] = stub[:quantum_task_arn] unless stub[:quantum_task_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['deviceArn'] = stub[:device_arn] unless stub[:device_arn].nil?
        data['deviceParameters'] = stub[:device_parameters] unless stub[:device_parameters].nil?
        data['shots'] = stub[:shots] unless stub[:shots].nil?
        data['outputS3Bucket'] = stub[:output_s3_bucket] unless stub[:output_s3_bucket].nil?
        data['outputS3Directory'] = stub[:output_s3_directory] unless stub[:output_s3_directory].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['endedAt'] = Hearth::TimeHelper.to_date_time(stub[:ended_at]) unless stub[:ended_at].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SearchDevices
    class SearchDevices
      def self.default(visited=[])
        {
          devices: DeviceSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['devices'] = DeviceSummaryList.stub(stub[:devices]) unless stub[:devices].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DeviceSummaryList
    class DeviceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DeviceSummaryList')
        visited = visited + ['DeviceSummaryList']
        [
          DeviceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DeviceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeviceSummary
    class DeviceSummary
      def self.default(visited=[])
        return nil if visited.include?('DeviceSummary')
        visited = visited + ['DeviceSummary']
        {
          device_arn: 'device_arn',
          device_name: 'device_name',
          provider_name: 'provider_name',
          device_type: 'device_type',
          device_status: 'device_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeviceSummary.new
        data = {}
        data['deviceArn'] = stub[:device_arn] unless stub[:device_arn].nil?
        data['deviceName'] = stub[:device_name] unless stub[:device_name].nil?
        data['providerName'] = stub[:provider_name] unless stub[:provider_name].nil?
        data['deviceType'] = stub[:device_type] unless stub[:device_type].nil?
        data['deviceStatus'] = stub[:device_status] unless stub[:device_status].nil?
        data
      end
    end

    # Operation Stubber for SearchJobs
    class SearchJobs
      def self.default(visited=[])
        {
          jobs: JobSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['jobs'] = JobSummaryList.stub(stub[:jobs]) unless stub[:jobs].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobSummaryList
    class JobSummaryList
      def self.default(visited=[])
        return nil if visited.include?('JobSummaryList')
        visited = visited + ['JobSummaryList']
        [
          JobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << JobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobSummary
    class JobSummary
      def self.default(visited=[])
        return nil if visited.include?('JobSummary')
        visited = visited + ['JobSummary']
        {
          status: 'status',
          job_arn: 'job_arn',
          job_name: 'job_name',
          device: 'device',
          created_at: Time.now,
          started_at: Time.now,
          ended_at: Time.now,
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobSummary.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['jobArn'] = stub[:job_arn] unless stub[:job_arn].nil?
        data['jobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['device'] = stub[:device] unless stub[:device].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['startedAt'] = Hearth::TimeHelper.to_date_time(stub[:started_at]) unless stub[:started_at].nil?
        data['endedAt'] = Hearth::TimeHelper.to_date_time(stub[:ended_at]) unless stub[:ended_at].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for SearchQuantumTasks
    class SearchQuantumTasks
      def self.default(visited=[])
        {
          quantum_tasks: QuantumTaskSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['quantumTasks'] = QuantumTaskSummaryList.stub(stub[:quantum_tasks]) unless stub[:quantum_tasks].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for QuantumTaskSummaryList
    class QuantumTaskSummaryList
      def self.default(visited=[])
        return nil if visited.include?('QuantumTaskSummaryList')
        visited = visited + ['QuantumTaskSummaryList']
        [
          QuantumTaskSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << QuantumTaskSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for QuantumTaskSummary
    class QuantumTaskSummary
      def self.default(visited=[])
        return nil if visited.include?('QuantumTaskSummary')
        visited = visited + ['QuantumTaskSummary']
        {
          quantum_task_arn: 'quantum_task_arn',
          status: 'status',
          device_arn: 'device_arn',
          shots: 1,
          output_s3_bucket: 'output_s3_bucket',
          output_s3_directory: 'output_s3_directory',
          created_at: Time.now,
          ended_at: Time.now,
          tags: TagsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::QuantumTaskSummary.new
        data = {}
        data['quantumTaskArn'] = stub[:quantum_task_arn] unless stub[:quantum_task_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['deviceArn'] = stub[:device_arn] unless stub[:device_arn].nil?
        data['shots'] = stub[:shots] unless stub[:shots].nil?
        data['outputS3Bucket'] = stub[:output_s3_bucket] unless stub[:output_s3_bucket].nil?
        data['outputS3Directory'] = stub[:output_s3_directory] unless stub[:output_s3_directory].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['endedAt'] = Hearth::TimeHelper.to_date_time(stub[:ended_at]) unless stub[:ended_at].nil?
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
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
        http_resp.status = 200
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
        http_resp.status = 200
      end
    end
  end
end
