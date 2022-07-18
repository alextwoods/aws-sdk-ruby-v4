# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Synthetics
  module Params

    module ArtifactConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArtifactConfigInput, context: context)
        type = Types::ArtifactConfigInput.new
        type.s3_encryption = S3EncryptionConfig.build(params[:s3_encryption], context: "#{context}[:s3_encryption]") unless params[:s3_encryption].nil?
        type
      end
    end

    module ArtifactConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArtifactConfigOutput, context: context)
        type = Types::ArtifactConfigOutput.new
        type.s3_encryption = S3EncryptionConfig.build(params[:s3_encryption], context: "#{context}[:s3_encryption]") unless params[:s3_encryption].nil?
        type
      end
    end

    module BaseScreenshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BaseScreenshot, context: context)
        type = Types::BaseScreenshot.new
        type.screenshot_name = params[:screenshot_name]
        type.ignore_coordinates = BaseScreenshotIgnoreCoordinates.build(params[:ignore_coordinates], context: "#{context}[:ignore_coordinates]") unless params[:ignore_coordinates].nil?
        type
      end
    end

    module BaseScreenshotIgnoreCoordinates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BaseScreenshots
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BaseScreenshot.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Canaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Canary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CanariesLastRun
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CanaryLastRun.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Canary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Canary, context: context)
        type = Types::Canary.new
        type.id = params[:id]
        type.name = params[:name]
        type.code = CanaryCodeOutput.build(params[:code], context: "#{context}[:code]") unless params[:code].nil?
        type.execution_role_arn = params[:execution_role_arn]
        type.schedule = CanaryScheduleOutput.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.run_config = CanaryRunConfigOutput.build(params[:run_config], context: "#{context}[:run_config]") unless params[:run_config].nil?
        type.success_retention_period_in_days = params[:success_retention_period_in_days]
        type.failure_retention_period_in_days = params[:failure_retention_period_in_days]
        type.status = CanaryStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.timeline = CanaryTimeline.build(params[:timeline], context: "#{context}[:timeline]") unless params[:timeline].nil?
        type.artifact_s3_location = params[:artifact_s3_location]
        type.engine_arn = params[:engine_arn]
        type.runtime_version = params[:runtime_version]
        type.vpc_config = VpcConfigOutput.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.visual_reference = VisualReferenceOutput.build(params[:visual_reference], context: "#{context}[:visual_reference]") unless params[:visual_reference].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.artifact_config = ArtifactConfigOutput.build(params[:artifact_config], context: "#{context}[:artifact_config]") unless params[:artifact_config].nil?
        type
      end
    end

    module CanaryCodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CanaryCodeInput, context: context)
        type = Types::CanaryCodeInput.new
        type.s3_bucket = params[:s3_bucket]
        type.s3_key = params[:s3_key]
        type.s3_version = params[:s3_version]
        type.zip_file = params[:zip_file]
        type.handler = params[:handler]
        type
      end
    end

    module CanaryCodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CanaryCodeOutput, context: context)
        type = Types::CanaryCodeOutput.new
        type.source_location_arn = params[:source_location_arn]
        type.handler = params[:handler]
        type
      end
    end

    module CanaryLastRun
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CanaryLastRun, context: context)
        type = Types::CanaryLastRun.new
        type.canary_name = params[:canary_name]
        type.last_run = CanaryRun.build(params[:last_run], context: "#{context}[:last_run]") unless params[:last_run].nil?
        type
      end
    end

    module CanaryRun
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CanaryRun, context: context)
        type = Types::CanaryRun.new
        type.id = params[:id]
        type.name = params[:name]
        type.status = CanaryRunStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.timeline = CanaryRunTimeline.build(params[:timeline], context: "#{context}[:timeline]") unless params[:timeline].nil?
        type.artifact_s3_location = params[:artifact_s3_location]
        type
      end
    end

    module CanaryRunConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CanaryRunConfigInput, context: context)
        type = Types::CanaryRunConfigInput.new
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type.memory_in_mb = params[:memory_in_mb]
        type.active_tracing = params[:active_tracing]
        type.environment_variables = EnvironmentVariablesMap.build(params[:environment_variables], context: "#{context}[:environment_variables]") unless params[:environment_variables].nil?
        type
      end
    end

    module CanaryRunConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CanaryRunConfigOutput, context: context)
        type = Types::CanaryRunConfigOutput.new
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type.memory_in_mb = params[:memory_in_mb]
        type.active_tracing = params[:active_tracing]
        type
      end
    end

    module CanaryRunStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CanaryRunStatus, context: context)
        type = Types::CanaryRunStatus.new
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.state_reason_code = params[:state_reason_code]
        type
      end
    end

    module CanaryRunTimeline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CanaryRunTimeline, context: context)
        type = Types::CanaryRunTimeline.new
        type.started = params[:started]
        type.completed = params[:completed]
        type
      end
    end

    module CanaryRuns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CanaryRun.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CanaryScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CanaryScheduleInput, context: context)
        type = Types::CanaryScheduleInput.new
        type.expression = params[:expression]
        type.duration_in_seconds = params[:duration_in_seconds]
        type
      end
    end

    module CanaryScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CanaryScheduleOutput, context: context)
        type = Types::CanaryScheduleOutput.new
        type.expression = params[:expression]
        type.duration_in_seconds = params[:duration_in_seconds]
        type
      end
    end

    module CanaryStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CanaryStatus, context: context)
        type = Types::CanaryStatus.new
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.state_reason_code = params[:state_reason_code]
        type
      end
    end

    module CanaryTimeline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CanaryTimeline, context: context)
        type = Types::CanaryTimeline.new
        type.created = params[:created]
        type.last_modified = params[:last_modified]
        type.last_started = params[:last_started]
        type.last_stopped = params[:last_stopped]
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

    module CreateCanaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCanaryInput, context: context)
        type = Types::CreateCanaryInput.new
        type.name = params[:name]
        type.code = CanaryCodeInput.build(params[:code], context: "#{context}[:code]") unless params[:code].nil?
        type.artifact_s3_location = params[:artifact_s3_location]
        type.execution_role_arn = params[:execution_role_arn]
        type.schedule = CanaryScheduleInput.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.run_config = CanaryRunConfigInput.build(params[:run_config], context: "#{context}[:run_config]") unless params[:run_config].nil?
        type.success_retention_period_in_days = params[:success_retention_period_in_days]
        type.failure_retention_period_in_days = params[:failure_retention_period_in_days]
        type.runtime_version = params[:runtime_version]
        type.vpc_config = VpcConfigInput.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.artifact_config = ArtifactConfigInput.build(params[:artifact_config], context: "#{context}[:artifact_config]") unless params[:artifact_config].nil?
        type
      end
    end

    module CreateCanaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCanaryOutput, context: context)
        type = Types::CreateCanaryOutput.new
        type.canary = Canary.build(params[:canary], context: "#{context}[:canary]") unless params[:canary].nil?
        type
      end
    end

    module DeleteCanaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCanaryInput, context: context)
        type = Types::DeleteCanaryInput.new
        type.name = params[:name]
        type.delete_lambda = params[:delete_lambda]
        type
      end
    end

    module DeleteCanaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCanaryOutput, context: context)
        type = Types::DeleteCanaryOutput.new
        type
      end
    end

    module DescribeCanariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCanariesInput, context: context)
        type = Types::DescribeCanariesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.names = DescribeCanariesNameFilter.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type
      end
    end

    module DescribeCanariesLastRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCanariesLastRunInput, context: context)
        type = Types::DescribeCanariesLastRunInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.names = DescribeCanariesLastRunNameFilter.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type
      end
    end

    module DescribeCanariesLastRunNameFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DescribeCanariesLastRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCanariesLastRunOutput, context: context)
        type = Types::DescribeCanariesLastRunOutput.new
        type.canaries_last_run = CanariesLastRun.build(params[:canaries_last_run], context: "#{context}[:canaries_last_run]") unless params[:canaries_last_run].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeCanariesNameFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DescribeCanariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCanariesOutput, context: context)
        type = Types::DescribeCanariesOutput.new
        type.canaries = Canaries.build(params[:canaries], context: "#{context}[:canaries]") unless params[:canaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeRuntimeVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRuntimeVersionsInput, context: context)
        type = Types::DescribeRuntimeVersionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeRuntimeVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRuntimeVersionsOutput, context: context)
        type = Types::DescribeRuntimeVersionsOutput.new
        type.runtime_versions = RuntimeVersionList.build(params[:runtime_versions], context: "#{context}[:runtime_versions]") unless params[:runtime_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module EnvironmentVariablesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GetCanaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCanaryInput, context: context)
        type = Types::GetCanaryInput.new
        type.name = params[:name]
        type
      end
    end

    module GetCanaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCanaryOutput, context: context)
        type = Types::GetCanaryOutput.new
        type.canary = Canary.build(params[:canary], context: "#{context}[:canary]") unless params[:canary].nil?
        type
      end
    end

    module GetCanaryRunsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCanaryRunsInput, context: context)
        type = Types::GetCanaryRunsInput.new
        type.name = params[:name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetCanaryRunsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCanaryRunsOutput, context: context)
        type = Types::GetCanaryRunsOutput.new
        type.canary_runs = CanaryRuns.build(params[:canary_runs], context: "#{context}[:canary_runs]") unless params[:canary_runs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
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
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RequestEntityTooLargeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestEntityTooLargeException, context: context)
        type = Types::RequestEntityTooLargeException.new
        type.message = params[:message]
        type
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

    module RuntimeVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuntimeVersion, context: context)
        type = Types::RuntimeVersion.new
        type.version_name = params[:version_name]
        type.description = params[:description]
        type.release_date = params[:release_date]
        type.deprecation_date = params[:deprecation_date]
        type
      end
    end

    module RuntimeVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuntimeVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3EncryptionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3EncryptionConfig, context: context)
        type = Types::S3EncryptionConfig.new
        type.encryption_mode = params[:encryption_mode]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module SecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StartCanaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartCanaryInput, context: context)
        type = Types::StartCanaryInput.new
        type.name = params[:name]
        type
      end
    end

    module StartCanaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartCanaryOutput, context: context)
        type = Types::StartCanaryOutput.new
        type
      end
    end

    module StopCanaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopCanaryInput, context: context)
        type = Types::StopCanaryInput.new
        type.name = params[:name]
        type
      end
    end

    module StopCanaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopCanaryOutput, context: context)
        type = Types::StopCanaryOutput.new
        type
      end
    end

    module SubnetIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateCanaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCanaryInput, context: context)
        type = Types::UpdateCanaryInput.new
        type.name = params[:name]
        type.code = CanaryCodeInput.build(params[:code], context: "#{context}[:code]") unless params[:code].nil?
        type.execution_role_arn = params[:execution_role_arn]
        type.runtime_version = params[:runtime_version]
        type.schedule = CanaryScheduleInput.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.run_config = CanaryRunConfigInput.build(params[:run_config], context: "#{context}[:run_config]") unless params[:run_config].nil?
        type.success_retention_period_in_days = params[:success_retention_period_in_days]
        type.failure_retention_period_in_days = params[:failure_retention_period_in_days]
        type.vpc_config = VpcConfigInput.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.visual_reference = VisualReferenceInput.build(params[:visual_reference], context: "#{context}[:visual_reference]") unless params[:visual_reference].nil?
        type.artifact_s3_location = params[:artifact_s3_location]
        type.artifact_config = ArtifactConfigInput.build(params[:artifact_config], context: "#{context}[:artifact_config]") unless params[:artifact_config].nil?
        type
      end
    end

    module UpdateCanaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCanaryOutput, context: context)
        type = Types::UpdateCanaryOutput.new
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

    module VisualReferenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VisualReferenceInput, context: context)
        type = Types::VisualReferenceInput.new
        type.base_screenshots = BaseScreenshots.build(params[:base_screenshots], context: "#{context}[:base_screenshots]") unless params[:base_screenshots].nil?
        type.base_canary_run_id = params[:base_canary_run_id]
        type
      end
    end

    module VisualReferenceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VisualReferenceOutput, context: context)
        type = Types::VisualReferenceOutput.new
        type.base_screenshots = BaseScreenshots.build(params[:base_screenshots], context: "#{context}[:base_screenshots]") unless params[:base_screenshots].nil?
        type.base_canary_run_id = params[:base_canary_run_id]
        type
      end
    end

    module VpcConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfigInput, context: context)
        type = Types::VpcConfigInput.new
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module VpcConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfigOutput, context: context)
        type = Types::VpcConfigOutput.new
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

  end
end
