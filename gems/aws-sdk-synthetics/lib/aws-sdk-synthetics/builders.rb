# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Synthetics
  module Builders

    # Operation Builder for CreateCanary
    class CreateCanary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/canary')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Code'] = Builders::CanaryCodeInput.build(input[:code]) unless input[:code].nil?
        data['ArtifactS3Location'] = input[:artifact_s3_location] unless input[:artifact_s3_location].nil?
        data['ExecutionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['Schedule'] = Builders::CanaryScheduleInput.build(input[:schedule]) unless input[:schedule].nil?
        data['RunConfig'] = Builders::CanaryRunConfigInput.build(input[:run_config]) unless input[:run_config].nil?
        data['SuccessRetentionPeriodInDays'] = input[:success_retention_period_in_days] unless input[:success_retention_period_in_days].nil?
        data['FailureRetentionPeriodInDays'] = input[:failure_retention_period_in_days] unless input[:failure_retention_period_in_days].nil?
        data['RuntimeVersion'] = input[:runtime_version] unless input[:runtime_version].nil?
        data['VpcConfig'] = Builders::VpcConfigInput.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['ArtifactConfig'] = Builders::ArtifactConfigInput.build(input[:artifact_config]) unless input[:artifact_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ArtifactConfigInput
    class ArtifactConfigInput
      def self.build(input)
        data = {}
        data['S3Encryption'] = Builders::S3EncryptionConfig.build(input[:s3_encryption]) unless input[:s3_encryption].nil?
        data
      end
    end

    # Structure Builder for S3EncryptionConfig
    class S3EncryptionConfig
      def self.build(input)
        data = {}
        data['EncryptionMode'] = input[:encryption_mode] unless input[:encryption_mode].nil?
        data['KmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for VpcConfigInput
    class VpcConfigInput
      def self.build(input)
        data = {}
        data['SubnetIds'] = Builders::SubnetIds.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['SecurityGroupIds'] = Builders::SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data
      end
    end

    # List Builder for SecurityGroupIds
    class SecurityGroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SubnetIds
    class SubnetIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CanaryRunConfigInput
    class CanaryRunConfigInput
      def self.build(input)
        data = {}
        data['TimeoutInSeconds'] = input[:timeout_in_seconds] unless input[:timeout_in_seconds].nil?
        data['MemoryInMB'] = input[:memory_in_mb] unless input[:memory_in_mb].nil?
        data['ActiveTracing'] = input[:active_tracing] unless input[:active_tracing].nil?
        data['EnvironmentVariables'] = Builders::EnvironmentVariablesMap.build(input[:environment_variables]) unless input[:environment_variables].nil?
        data
      end
    end

    # Map Builder for EnvironmentVariablesMap
    class EnvironmentVariablesMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for CanaryScheduleInput
    class CanaryScheduleInput
      def self.build(input)
        data = {}
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data['DurationInSeconds'] = input[:duration_in_seconds] unless input[:duration_in_seconds].nil?
        data
      end
    end

    # Structure Builder for CanaryCodeInput
    class CanaryCodeInput
      def self.build(input)
        data = {}
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3Key'] = input[:s3_key] unless input[:s3_key].nil?
        data['S3Version'] = input[:s3_version] unless input[:s3_version].nil?
        data['ZipFile'] = Base64::encode64(input[:zip_file]).strip unless input[:zip_file].nil?
        data['Handler'] = input[:handler] unless input[:handler].nil?
        data
      end
    end

    # Operation Builder for DeleteCanary
    class DeleteCanary
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/canary/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['deleteLambda'] = input[:delete_lambda].to_s unless input[:delete_lambda].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeCanaries
    class DescribeCanaries
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/canaries')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Names'] = Builders::DescribeCanariesNameFilter.build(input[:names]) unless input[:names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DescribeCanariesNameFilter
    class DescribeCanariesNameFilter
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeCanariesLastRun
    class DescribeCanariesLastRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/canaries/last-run')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['Names'] = Builders::DescribeCanariesLastRunNameFilter.build(input[:names]) unless input[:names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DescribeCanariesLastRunNameFilter
    class DescribeCanariesLastRunNameFilter
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeRuntimeVersions
    class DescribeRuntimeVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/runtime-versions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCanary
    class GetCanary
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/canary/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetCanaryRuns
    class GetCanaryRuns
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/canary/%<Name>s/runs',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartCanary
    class StartCanary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/canary/%<Name>s/start',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StopCanary
    class StopCanary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/canary/%<Name>s/stop',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
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
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
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
            '/tags/%<ResourceArn>s',
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

    # Operation Builder for UpdateCanary
    class UpdateCanary
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/canary/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Code'] = Builders::CanaryCodeInput.build(input[:code]) unless input[:code].nil?
        data['ExecutionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['RuntimeVersion'] = input[:runtime_version] unless input[:runtime_version].nil?
        data['Schedule'] = Builders::CanaryScheduleInput.build(input[:schedule]) unless input[:schedule].nil?
        data['RunConfig'] = Builders::CanaryRunConfigInput.build(input[:run_config]) unless input[:run_config].nil?
        data['SuccessRetentionPeriodInDays'] = input[:success_retention_period_in_days] unless input[:success_retention_period_in_days].nil?
        data['FailureRetentionPeriodInDays'] = input[:failure_retention_period_in_days] unless input[:failure_retention_period_in_days].nil?
        data['VpcConfig'] = Builders::VpcConfigInput.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['VisualReference'] = Builders::VisualReferenceInput.build(input[:visual_reference]) unless input[:visual_reference].nil?
        data['ArtifactS3Location'] = input[:artifact_s3_location] unless input[:artifact_s3_location].nil?
        data['ArtifactConfig'] = Builders::ArtifactConfigInput.build(input[:artifact_config]) unless input[:artifact_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VisualReferenceInput
    class VisualReferenceInput
      def self.build(input)
        data = {}
        data['BaseScreenshots'] = Builders::BaseScreenshots.build(input[:base_screenshots]) unless input[:base_screenshots].nil?
        data['BaseCanaryRunId'] = input[:base_canary_run_id] unless input[:base_canary_run_id].nil?
        data
      end
    end

    # List Builder for BaseScreenshots
    class BaseScreenshots
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::BaseScreenshot.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BaseScreenshot
    class BaseScreenshot
      def self.build(input)
        data = {}
        data['ScreenshotName'] = input[:screenshot_name] unless input[:screenshot_name].nil?
        data['IgnoreCoordinates'] = Builders::BaseScreenshotIgnoreCoordinates.build(input[:ignore_coordinates]) unless input[:ignore_coordinates].nil?
        data
      end
    end

    # List Builder for BaseScreenshotIgnoreCoordinates
    class BaseScreenshotIgnoreCoordinates
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
