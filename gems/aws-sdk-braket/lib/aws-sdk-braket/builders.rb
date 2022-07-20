# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Braket
  module Builders

    # Operation Builder for CancelJob
    class CancelJob
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:job_arn].to_s.empty?
          raise ArgumentError, "HTTP label :job_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/job/%<jobArn>s/cancel',
            jobArn: Hearth::HTTP.uri_escape(input[:job_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CancelQuantumTask
    class CancelQuantumTask
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:quantum_task_arn].to_s.empty?
          raise ArgumentError, "HTTP label :quantum_task_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/quantum-task/%<quantumTaskArn>s/cancel',
            quantumTaskArn: Hearth::HTTP.uri_escape(input[:quantum_task_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateJob
    class CreateJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/job')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['algorithmSpecification'] = Builders::AlgorithmSpecification.build(input[:algorithm_specification]) unless input[:algorithm_specification].nil?
        data['inputDataConfig'] = Builders::InputConfigList.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['outputDataConfig'] = Builders::JobOutputDataConfig.build(input[:output_data_config]) unless input[:output_data_config].nil?
        data['checkpointConfig'] = Builders::JobCheckpointConfig.build(input[:checkpoint_config]) unless input[:checkpoint_config].nil?
        data['jobName'] = input[:job_name] unless input[:job_name].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['stoppingCondition'] = Builders::JobStoppingCondition.build(input[:stopping_condition]) unless input[:stopping_condition].nil?
        data['instanceConfig'] = Builders::InstanceConfig.build(input[:instance_config]) unless input[:instance_config].nil?
        data['hyperParameters'] = Builders::HyperParameters.build(input[:hyper_parameters]) unless input[:hyper_parameters].nil?
        data['deviceConfig'] = Builders::DeviceConfig.build(input[:device_config]) unless input[:device_config].nil?
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagsMap
    class TagsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for DeviceConfig
    class DeviceConfig
      def self.build(input)
        data = {}
        data['device'] = input[:device] unless input[:device].nil?
        data
      end
    end

    # Map Builder for HyperParameters
    class HyperParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for InstanceConfig
    class InstanceConfig
      def self.build(input)
        data = {}
        data['instanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['volumeSizeInGb'] = input[:volume_size_in_gb] unless input[:volume_size_in_gb].nil?
        data['instanceCount'] = input[:instance_count] unless input[:instance_count].nil?
        data
      end
    end

    # Structure Builder for JobStoppingCondition
    class JobStoppingCondition
      def self.build(input)
        data = {}
        data['maxRuntimeInSeconds'] = input[:max_runtime_in_seconds] unless input[:max_runtime_in_seconds].nil?
        data
      end
    end

    # Structure Builder for JobCheckpointConfig
    class JobCheckpointConfig
      def self.build(input)
        data = {}
        data['localPath'] = input[:local_path] unless input[:local_path].nil?
        data['s3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data
      end
    end

    # Structure Builder for JobOutputDataConfig
    class JobOutputDataConfig
      def self.build(input)
        data = {}
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['s3Path'] = input[:s3_path] unless input[:s3_path].nil?
        data
      end
    end

    # List Builder for InputConfigList
    class InputConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputFileConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputFileConfig
    class InputFileConfig
      def self.build(input)
        data = {}
        data['channelName'] = input[:channel_name] unless input[:channel_name].nil?
        data['contentType'] = input[:content_type] unless input[:content_type].nil?
        data['dataSource'] = Builders::DataSource.build(input[:data_source]) unless input[:data_source].nil?
        data
      end
    end

    # Structure Builder for DataSource
    class DataSource
      def self.build(input)
        data = {}
        data['s3DataSource'] = Builders::S3DataSource.build(input[:s3_data_source]) unless input[:s3_data_source].nil?
        data
      end
    end

    # Structure Builder for S3DataSource
    class S3DataSource
      def self.build(input)
        data = {}
        data['s3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data
      end
    end

    # Structure Builder for AlgorithmSpecification
    class AlgorithmSpecification
      def self.build(input)
        data = {}
        data['scriptModeConfig'] = Builders::ScriptModeConfig.build(input[:script_mode_config]) unless input[:script_mode_config].nil?
        data['containerImage'] = Builders::ContainerImage.build(input[:container_image]) unless input[:container_image].nil?
        data
      end
    end

    # Structure Builder for ContainerImage
    class ContainerImage
      def self.build(input)
        data = {}
        data['uri'] = input[:uri] unless input[:uri].nil?
        data
      end
    end

    # Structure Builder for ScriptModeConfig
    class ScriptModeConfig
      def self.build(input)
        data = {}
        data['entryPoint'] = input[:entry_point] unless input[:entry_point].nil?
        data['s3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['compressionType'] = input[:compression_type] unless input[:compression_type].nil?
        data
      end
    end

    # Operation Builder for CreateQuantumTask
    class CreateQuantumTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/quantum-task')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['deviceArn'] = input[:device_arn] unless input[:device_arn].nil?
        data['deviceParameters'] = input[:device_parameters] unless input[:device_parameters].nil?
        data['shots'] = input[:shots] unless input[:shots].nil?
        data['outputS3Bucket'] = input[:output_s3_bucket] unless input[:output_s3_bucket].nil?
        data['outputS3KeyPrefix'] = input[:output_s3_key_prefix] unless input[:output_s3_key_prefix].nil?
        data['action'] = input[:action] unless input[:action].nil?
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        data['jobToken'] = input[:job_token] unless input[:job_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDevice
    class GetDevice
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:device_arn].to_s.empty?
          raise ArgumentError, "HTTP label :device_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/device/%<deviceArn>s',
            deviceArn: Hearth::HTTP.uri_escape(input[:device_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetJob
    class GetJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:job_arn].to_s.empty?
          raise ArgumentError, "HTTP label :job_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/job/%<jobArn>s',
            jobArn: Hearth::HTTP.uri_escape(input[:job_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetQuantumTask
    class GetQuantumTask
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:quantum_task_arn].to_s.empty?
          raise ArgumentError, "HTTP label :quantum_task_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/quantum-task/%<quantumTaskArn>s',
            quantumTaskArn: Hearth::HTTP.uri_escape(input[:quantum_task_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for SearchDevices
    class SearchDevices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/devices')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filters'] = Builders::SearchDevicesFilterList.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SearchDevicesFilterList
    class SearchDevicesFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SearchDevicesFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SearchDevicesFilter
    class SearchDevicesFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = Builders::String256List.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for String256List
    class String256List
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SearchJobs
    class SearchJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/jobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filters'] = Builders::SearchJobsFilterList.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SearchJobsFilterList
    class SearchJobsFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SearchJobsFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SearchJobsFilter
    class SearchJobsFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = Builders::String256List.build(input[:values]) unless input[:values].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # Operation Builder for SearchQuantumTasks
    class SearchQuantumTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/quantum-tasks')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filters'] = Builders::SearchQuantumTasksFilterList.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SearchQuantumTasksFilterList
    class SearchQuantumTasksFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SearchQuantumTasksFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SearchQuantumTasksFilter
    class SearchQuantumTasksFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = Builders::String256List.build(input[:values]) unless input[:values].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end
  end
end
