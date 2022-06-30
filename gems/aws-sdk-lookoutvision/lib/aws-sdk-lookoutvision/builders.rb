# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::LookoutVision
  module Builders

    # Operation Builder for CreateDataset
    class CreateDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s/datasets',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DatasetType'] = input[:dataset_type] unless input[:dataset_type].nil?
        data['DatasetSource'] = Builders::DatasetSource.build(input[:dataset_source]) unless input[:dataset_source].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Structure Builder for DatasetSource
    class DatasetSource
      def self.build(input)
        data = {}
        data['GroundTruthManifest'] = Builders::DatasetGroundTruthManifest.build(input[:ground_truth_manifest]) unless input[:ground_truth_manifest].nil?
        data
      end
    end

    # Structure Builder for DatasetGroundTruthManifest
    class DatasetGroundTruthManifest
      def self.build(input)
        data = {}
        data['S3Object'] = Builders::InputS3Object.build(input[:s3_object]) unless input[:s3_object].nil?
        data
      end
    end

    # Structure Builder for InputS3Object
    class InputS3Object
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        data['VersionId'] = input[:version_id] unless input[:version_id].nil?
        data
      end
    end

    # Operation Builder for CreateModel
    class CreateModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s/models',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['OutputConfig'] = Builders::OutputConfig.build(input[:output_config]) unless input[:output_config].nil?
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for OutputConfig
    class OutputConfig
      def self.build(input)
        data = {}
        data['S3Location'] = Builders::S3Location.build(input[:s3_location]) unless input[:s3_location].nil?
        data
      end
    end

    # Structure Builder for S3Location
    class S3Location
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Operation Builder for CreateProject
    class CreateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-11-20/projects')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ProjectName'] = input[:project_name] unless input[:project_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for DeleteDataset
    class DeleteDataset
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        if input[:dataset_type].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s/datasets/%<DatasetType>s',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s),
            DatasetType: Hearth::HTTP.uri_escape(input[:dataset_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amzn-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for DeleteModel
    class DeleteModel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        if input[:model_version].to_s.empty?
          raise ArgumentError, "HTTP label :model_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s/models/%<ModelVersion>s',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s),
            ModelVersion: Hearth::HTTP.uri_escape(input[:model_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amzn-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for DeleteProject
    class DeleteProject
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amzn-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for DescribeDataset
    class DescribeDataset
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        if input[:dataset_type].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s/datasets/%<DatasetType>s',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s),
            DatasetType: Hearth::HTTP.uri_escape(input[:dataset_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeModel
    class DescribeModel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        if input[:model_version].to_s.empty?
          raise ArgumentError, "HTTP label :model_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s/models/%<ModelVersion>s',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s),
            ModelVersion: Hearth::HTTP.uri_escape(input[:model_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeModelPackagingJob
    class DescribeModelPackagingJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        if input[:job_name].to_s.empty?
          raise ArgumentError, "HTTP label :job_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s/modelpackagingjobs/%<JobName>s',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s),
            JobName: Hearth::HTTP.uri_escape(input[:job_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeProject
    class DescribeProject
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DetectAnomalies
    class DetectAnomalies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        if input[:model_version].to_s.empty?
          raise ArgumentError, "HTTP label :model_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s/models/%<ModelVersion>s/detect',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s),
            ModelVersion: Hearth::HTTP.uri_escape(input[:model_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.body = input[:body]
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.headers['Content-Type'] = input[:content_type] unless input[:content_type].nil? || input[:content_type].empty?
      end
    end

    # Operation Builder for ListDatasetEntries
    class ListDatasetEntries
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        if input[:dataset_type].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s/datasets/%<DatasetType>s/entries',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s),
            DatasetType: Hearth::HTTP.uri_escape(input[:dataset_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['labeled'] = input[:labeled].to_s unless input[:labeled].nil?
        params['anomalyClass'] = input[:anomaly_class].to_s unless input[:anomaly_class].nil?
        params['createdBefore'] = Hearth::TimeHelper.to_date_time(input[:before_creation_date]) unless input[:before_creation_date].nil?
        params['createdAfter'] = Hearth::TimeHelper.to_date_time(input[:after_creation_date]) unless input[:after_creation_date].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['sourceRefContains'] = input[:source_ref_contains].to_s unless input[:source_ref_contains].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListModelPackagingJobs
    class ListModelPackagingJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s/modelpackagingjobs',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListModels
    class ListModels
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s/models',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProjects
    class ListProjects
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-11-20/projects')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
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
            '/2020-11-20/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartModel
    class StartModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        if input[:model_version].to_s.empty?
          raise ArgumentError, "HTTP label :model_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s/models/%<ModelVersion>s/start',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s),
            ModelVersion: Hearth::HTTP.uri_escape(input[:model_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MinInferenceUnits'] = input[:min_inference_units] unless input[:min_inference_units].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for StartModelPackagingJob
    class StartModelPackagingJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s/modelpackagingjobs',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ModelVersion'] = input[:model_version] unless input[:model_version].nil?
        data['JobName'] = input[:job_name] unless input[:job_name].nil?
        data['Configuration'] = Builders::ModelPackagingConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Structure Builder for ModelPackagingConfiguration
    class ModelPackagingConfiguration
      def self.build(input)
        data = {}
        data['Greengrass'] = Builders::GreengrassConfiguration.build(input[:greengrass]) unless input[:greengrass].nil?
        data
      end
    end

    # Structure Builder for GreengrassConfiguration
    class GreengrassConfiguration
      def self.build(input)
        data = {}
        data['CompilerOptions'] = input[:compiler_options] unless input[:compiler_options].nil?
        data['TargetDevice'] = input[:target_device] unless input[:target_device].nil?
        data['TargetPlatform'] = Builders::TargetPlatform.build(input[:target_platform]) unless input[:target_platform].nil?
        data['S3OutputLocation'] = Builders::S3Location.build(input[:s3_output_location]) unless input[:s3_output_location].nil?
        data['ComponentName'] = input[:component_name] unless input[:component_name].nil?
        data['ComponentVersion'] = input[:component_version] unless input[:component_version].nil?
        data['ComponentDescription'] = input[:component_description] unless input[:component_description].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # Structure Builder for TargetPlatform
    class TargetPlatform
      def self.build(input)
        data = {}
        data['Os'] = input[:os] unless input[:os].nil?
        data['Arch'] = input[:arch] unless input[:arch].nil?
        data['Accelerator'] = input[:accelerator] unless input[:accelerator].nil?
        data
      end
    end

    # Operation Builder for StopModel
    class StopModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        if input[:model_version].to_s.empty?
          raise ArgumentError, "HTTP label :model_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s/models/%<ModelVersion>s/stop',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s),
            ModelVersion: Hearth::HTTP.uri_escape(input[:model_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amzn-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
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
            '/2020-11-20/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
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
            '/2020-11-20/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
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

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDatasetEntries
    class UpdateDatasetEntries
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:project_name].to_s.empty?
          raise ArgumentError, "HTTP label :project_name cannot be nil or empty."
        end
        if input[:dataset_type].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-11-20/projects/%<ProjectName>s/datasets/%<DatasetType>s/entries',
            ProjectName: Hearth::HTTP.uri_escape(input[:project_name].to_s),
            DatasetType: Hearth::HTTP.uri_escape(input[:dataset_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Changes'] = Base64::encode64(input[:changes]).strip unless input[:changes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amzn-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end
  end
end
