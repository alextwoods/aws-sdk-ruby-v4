# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Synthetics
  module Validators

    class ArtifactConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArtifactConfigInput, context: context)
        S3EncryptionConfig.validate!(input[:s3_encryption], context: "#{context}[:s3_encryption]") unless input[:s3_encryption].nil?
      end
    end

    class ArtifactConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArtifactConfigOutput, context: context)
        S3EncryptionConfig.validate!(input[:s3_encryption], context: "#{context}[:s3_encryption]") unless input[:s3_encryption].nil?
      end
    end

    class BaseScreenshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BaseScreenshot, context: context)
        Hearth::Validator.validate!(input[:screenshot_name], ::String, context: "#{context}[:screenshot_name]")
        BaseScreenshotIgnoreCoordinates.validate!(input[:ignore_coordinates], context: "#{context}[:ignore_coordinates]") unless input[:ignore_coordinates].nil?
      end
    end

    class BaseScreenshotIgnoreCoordinates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BaseScreenshots
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BaseScreenshot.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Canaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Canary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CanariesLastRun
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CanaryLastRun.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Canary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Canary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        CanaryCodeOutput.validate!(input[:code], context: "#{context}[:code]") unless input[:code].nil?
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        CanaryScheduleOutput.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        CanaryRunConfigOutput.validate!(input[:run_config], context: "#{context}[:run_config]") unless input[:run_config].nil?
        Hearth::Validator.validate!(input[:success_retention_period_in_days], ::Integer, context: "#{context}[:success_retention_period_in_days]")
        Hearth::Validator.validate!(input[:failure_retention_period_in_days], ::Integer, context: "#{context}[:failure_retention_period_in_days]")
        CanaryStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        CanaryTimeline.validate!(input[:timeline], context: "#{context}[:timeline]") unless input[:timeline].nil?
        Hearth::Validator.validate!(input[:artifact_s3_location], ::String, context: "#{context}[:artifact_s3_location]")
        Hearth::Validator.validate!(input[:engine_arn], ::String, context: "#{context}[:engine_arn]")
        Hearth::Validator.validate!(input[:runtime_version], ::String, context: "#{context}[:runtime_version]")
        VpcConfigOutput.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        VisualReferenceOutput.validate!(input[:visual_reference], context: "#{context}[:visual_reference]") unless input[:visual_reference].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ArtifactConfigOutput.validate!(input[:artifact_config], context: "#{context}[:artifact_config]") unless input[:artifact_config].nil?
      end
    end

    class CanaryCodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CanaryCodeInput, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
        Hearth::Validator.validate!(input[:s3_version], ::String, context: "#{context}[:s3_version]")
        Hearth::Validator.validate!(input[:zip_file], ::String, context: "#{context}[:zip_file]")
        Hearth::Validator.validate!(input[:handler], ::String, context: "#{context}[:handler]")
      end
    end

    class CanaryCodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CanaryCodeOutput, context: context)
        Hearth::Validator.validate!(input[:source_location_arn], ::String, context: "#{context}[:source_location_arn]")
        Hearth::Validator.validate!(input[:handler], ::String, context: "#{context}[:handler]")
      end
    end

    class CanaryLastRun
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CanaryLastRun, context: context)
        Hearth::Validator.validate!(input[:canary_name], ::String, context: "#{context}[:canary_name]")
        CanaryRun.validate!(input[:last_run], context: "#{context}[:last_run]") unless input[:last_run].nil?
      end
    end

    class CanaryRun
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CanaryRun, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        CanaryRunStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        CanaryRunTimeline.validate!(input[:timeline], context: "#{context}[:timeline]") unless input[:timeline].nil?
        Hearth::Validator.validate!(input[:artifact_s3_location], ::String, context: "#{context}[:artifact_s3_location]")
      end
    end

    class CanaryRunConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CanaryRunConfigInput, context: context)
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
        Hearth::Validator.validate!(input[:memory_in_mb], ::Integer, context: "#{context}[:memory_in_mb]")
        Hearth::Validator.validate!(input[:active_tracing], ::TrueClass, ::FalseClass, context: "#{context}[:active_tracing]")
        EnvironmentVariablesMap.validate!(input[:environment_variables], context: "#{context}[:environment_variables]") unless input[:environment_variables].nil?
      end
    end

    class CanaryRunConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CanaryRunConfigOutput, context: context)
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
        Hearth::Validator.validate!(input[:memory_in_mb], ::Integer, context: "#{context}[:memory_in_mb]")
        Hearth::Validator.validate!(input[:active_tracing], ::TrueClass, ::FalseClass, context: "#{context}[:active_tracing]")
      end
    end

    class CanaryRunStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CanaryRunStatus, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:state_reason_code], ::String, context: "#{context}[:state_reason_code]")
      end
    end

    class CanaryRunTimeline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CanaryRunTimeline, context: context)
        Hearth::Validator.validate!(input[:started], ::Time, context: "#{context}[:started]")
        Hearth::Validator.validate!(input[:completed], ::Time, context: "#{context}[:completed]")
      end
    end

    class CanaryRuns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CanaryRun.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CanaryScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CanaryScheduleInput, context: context)
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:duration_in_seconds], ::Integer, context: "#{context}[:duration_in_seconds]")
      end
    end

    class CanaryScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CanaryScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:duration_in_seconds], ::Integer, context: "#{context}[:duration_in_seconds]")
      end
    end

    class CanaryStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CanaryStatus, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:state_reason_code], ::String, context: "#{context}[:state_reason_code]")
      end
    end

    class CanaryTimeline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CanaryTimeline, context: context)
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Hearth::Validator.validate!(input[:last_started], ::Time, context: "#{context}[:last_started]")
        Hearth::Validator.validate!(input[:last_stopped], ::Time, context: "#{context}[:last_stopped]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateCanaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCanaryInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        CanaryCodeInput.validate!(input[:code], context: "#{context}[:code]") unless input[:code].nil?
        Hearth::Validator.validate!(input[:artifact_s3_location], ::String, context: "#{context}[:artifact_s3_location]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        CanaryScheduleInput.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        CanaryRunConfigInput.validate!(input[:run_config], context: "#{context}[:run_config]") unless input[:run_config].nil?
        Hearth::Validator.validate!(input[:success_retention_period_in_days], ::Integer, context: "#{context}[:success_retention_period_in_days]")
        Hearth::Validator.validate!(input[:failure_retention_period_in_days], ::Integer, context: "#{context}[:failure_retention_period_in_days]")
        Hearth::Validator.validate!(input[:runtime_version], ::String, context: "#{context}[:runtime_version]")
        VpcConfigInput.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ArtifactConfigInput.validate!(input[:artifact_config], context: "#{context}[:artifact_config]") unless input[:artifact_config].nil?
      end
    end

    class CreateCanaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCanaryOutput, context: context)
        Canary.validate!(input[:canary], context: "#{context}[:canary]") unless input[:canary].nil?
      end
    end

    class DeleteCanaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCanaryInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:delete_lambda], ::TrueClass, ::FalseClass, context: "#{context}[:delete_lambda]")
      end
    end

    class DeleteCanaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCanaryOutput, context: context)
      end
    end

    class DescribeCanariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCanariesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        DescribeCanariesNameFilter.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
      end
    end

    class DescribeCanariesLastRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCanariesLastRunInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        DescribeCanariesLastRunNameFilter.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
      end
    end

    class DescribeCanariesLastRunNameFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DescribeCanariesLastRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCanariesLastRunOutput, context: context)
        CanariesLastRun.validate!(input[:canaries_last_run], context: "#{context}[:canaries_last_run]") unless input[:canaries_last_run].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeCanariesNameFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DescribeCanariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCanariesOutput, context: context)
        Canaries.validate!(input[:canaries], context: "#{context}[:canaries]") unless input[:canaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRuntimeVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRuntimeVersionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeRuntimeVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRuntimeVersionsOutput, context: context)
        RuntimeVersionList.validate!(input[:runtime_versions], context: "#{context}[:runtime_versions]") unless input[:runtime_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class EnvironmentVariablesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class GetCanaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCanaryInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetCanaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCanaryOutput, context: context)
        Canary.validate!(input[:canary], context: "#{context}[:canary]") unless input[:canary].nil?
      end
    end

    class GetCanaryRunsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCanaryRunsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetCanaryRunsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCanaryRunsOutput, context: context)
        CanaryRuns.validate!(input[:canary_runs], context: "#{context}[:canary_runs]") unless input[:canary_runs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RequestEntityTooLargeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestEntityTooLargeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RuntimeVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuntimeVersion, context: context)
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:release_date], ::Time, context: "#{context}[:release_date]")
        Hearth::Validator.validate!(input[:deprecation_date], ::Time, context: "#{context}[:deprecation_date]")
      end
    end

    class RuntimeVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RuntimeVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3EncryptionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3EncryptionConfig, context: context)
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
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

    class StartCanaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCanaryInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StartCanaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCanaryOutput, context: context)
      end
    end

    class StopCanaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopCanaryInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StopCanaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopCanaryOutput, context: context)
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

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateCanaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCanaryInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        CanaryCodeInput.validate!(input[:code], context: "#{context}[:code]") unless input[:code].nil?
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:runtime_version], ::String, context: "#{context}[:runtime_version]")
        CanaryScheduleInput.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        CanaryRunConfigInput.validate!(input[:run_config], context: "#{context}[:run_config]") unless input[:run_config].nil?
        Hearth::Validator.validate!(input[:success_retention_period_in_days], ::Integer, context: "#{context}[:success_retention_period_in_days]")
        Hearth::Validator.validate!(input[:failure_retention_period_in_days], ::Integer, context: "#{context}[:failure_retention_period_in_days]")
        VpcConfigInput.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        VisualReferenceInput.validate!(input[:visual_reference], context: "#{context}[:visual_reference]") unless input[:visual_reference].nil?
        Hearth::Validator.validate!(input[:artifact_s3_location], ::String, context: "#{context}[:artifact_s3_location]")
        ArtifactConfigInput.validate!(input[:artifact_config], context: "#{context}[:artifact_config]") unless input[:artifact_config].nil?
      end
    end

    class UpdateCanaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCanaryOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class VisualReferenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VisualReferenceInput, context: context)
        BaseScreenshots.validate!(input[:base_screenshots], context: "#{context}[:base_screenshots]") unless input[:base_screenshots].nil?
        Hearth::Validator.validate!(input[:base_canary_run_id], ::String, context: "#{context}[:base_canary_run_id]")
      end
    end

    class VisualReferenceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VisualReferenceOutput, context: context)
        BaseScreenshots.validate!(input[:base_screenshots], context: "#{context}[:base_screenshots]") unless input[:base_screenshots].nil?
        Hearth::Validator.validate!(input[:base_canary_run_id], ::String, context: "#{context}[:base_canary_run_id]")
      end
    end

    class VpcConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfigInput, context: context)
        SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class VpcConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfigOutput, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

  end
end
