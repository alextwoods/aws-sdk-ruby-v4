# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Synthetics
  module Parsers

    # Operation Parser for CreateCanary
    class CreateCanary
      def self.parse(http_resp)
        data = Types::CreateCanaryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.canary = (Parsers::Canary.parse(map['Canary']) unless map['Canary'].nil?)
        data
      end
    end

    class Canary
      def self.parse(map)
        data = Types::Canary.new
        data.id = map['Id']
        data.name = map['Name']
        data.code = (Parsers::CanaryCodeOutput.parse(map['Code']) unless map['Code'].nil?)
        data.execution_role_arn = map['ExecutionRoleArn']
        data.schedule = (Parsers::CanaryScheduleOutput.parse(map['Schedule']) unless map['Schedule'].nil?)
        data.run_config = (Parsers::CanaryRunConfigOutput.parse(map['RunConfig']) unless map['RunConfig'].nil?)
        data.success_retention_period_in_days = map['SuccessRetentionPeriodInDays']
        data.failure_retention_period_in_days = map['FailureRetentionPeriodInDays']
        data.status = (Parsers::CanaryStatus.parse(map['Status']) unless map['Status'].nil?)
        data.timeline = (Parsers::CanaryTimeline.parse(map['Timeline']) unless map['Timeline'].nil?)
        data.artifact_s3_location = map['ArtifactS3Location']
        data.engine_arn = map['EngineArn']
        data.runtime_version = map['RuntimeVersion']
        data.vpc_config = (Parsers::VpcConfigOutput.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.visual_reference = (Parsers::VisualReferenceOutput.parse(map['VisualReference']) unless map['VisualReference'].nil?)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.artifact_config = (Parsers::ArtifactConfigOutput.parse(map['ArtifactConfig']) unless map['ArtifactConfig'].nil?)
        return data
      end
    end

    class ArtifactConfigOutput
      def self.parse(map)
        data = Types::ArtifactConfigOutput.new
        data.s3_encryption = (Parsers::S3EncryptionConfig.parse(map['S3Encryption']) unless map['S3Encryption'].nil?)
        return data
      end
    end

    class S3EncryptionConfig
      def self.parse(map)
        data = Types::S3EncryptionConfig.new
        data.encryption_mode = map['EncryptionMode']
        data.kms_key_arn = map['KmsKeyArn']
        return data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class VisualReferenceOutput
      def self.parse(map)
        data = Types::VisualReferenceOutput.new
        data.base_screenshots = (Parsers::BaseScreenshots.parse(map['BaseScreenshots']) unless map['BaseScreenshots'].nil?)
        data.base_canary_run_id = map['BaseCanaryRunId']
        return data
      end
    end

    class BaseScreenshots
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BaseScreenshot.parse(value) unless value.nil?
        end
        data
      end
    end

    class BaseScreenshot
      def self.parse(map)
        data = Types::BaseScreenshot.new
        data.screenshot_name = map['ScreenshotName']
        data.ignore_coordinates = (Parsers::BaseScreenshotIgnoreCoordinates.parse(map['IgnoreCoordinates']) unless map['IgnoreCoordinates'].nil?)
        return data
      end
    end

    class BaseScreenshotIgnoreCoordinates
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class VpcConfigOutput
      def self.parse(map)
        data = Types::VpcConfigOutput.new
        data.vpc_id = map['VpcId']
        data.subnet_ids = (Parsers::SubnetIds.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.security_group_ids = (Parsers::SecurityGroupIds.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        return data
      end
    end

    class SecurityGroupIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SubnetIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class CanaryTimeline
      def self.parse(map)
        data = Types::CanaryTimeline.new
        data.created = Time.at(map['Created'].to_i) if map['Created']
        data.last_modified = Time.at(map['LastModified'].to_i) if map['LastModified']
        data.last_started = Time.at(map['LastStarted'].to_i) if map['LastStarted']
        data.last_stopped = Time.at(map['LastStopped'].to_i) if map['LastStopped']
        return data
      end
    end

    class CanaryStatus
      def self.parse(map)
        data = Types::CanaryStatus.new
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.state_reason_code = map['StateReasonCode']
        return data
      end
    end

    class CanaryRunConfigOutput
      def self.parse(map)
        data = Types::CanaryRunConfigOutput.new
        data.timeout_in_seconds = map['TimeoutInSeconds']
        data.memory_in_mb = map['MemoryInMB']
        data.active_tracing = map['ActiveTracing']
        return data
      end
    end

    class CanaryScheduleOutput
      def self.parse(map)
        data = Types::CanaryScheduleOutput.new
        data.expression = map['Expression']
        data.duration_in_seconds = map['DurationInSeconds']
        return data
      end
    end

    class CanaryCodeOutput
      def self.parse(map)
        data = Types::CanaryCodeOutput.new
        data.source_location_arn = map['SourceLocationArn']
        data.handler = map['Handler']
        return data
      end
    end

    # Error Parser for RequestEntityTooLargeException
    class RequestEntityTooLargeException
      def self.parse(http_resp)
        data = Types::RequestEntityTooLargeException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteCanary
    class DeleteCanary
      def self.parse(http_resp)
        data = Types::DeleteCanaryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeCanaries
    class DescribeCanaries
      def self.parse(http_resp)
        data = Types::DescribeCanariesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.canaries = (Parsers::Canaries.parse(map['Canaries']) unless map['Canaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Canaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Canary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeCanariesLastRun
    class DescribeCanariesLastRun
      def self.parse(http_resp)
        data = Types::DescribeCanariesLastRunOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.canaries_last_run = (Parsers::CanariesLastRun.parse(map['CanariesLastRun']) unless map['CanariesLastRun'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CanariesLastRun
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CanaryLastRun.parse(value) unless value.nil?
        end
        data
      end
    end

    class CanaryLastRun
      def self.parse(map)
        data = Types::CanaryLastRun.new
        data.canary_name = map['CanaryName']
        data.last_run = (Parsers::CanaryRun.parse(map['LastRun']) unless map['LastRun'].nil?)
        return data
      end
    end

    class CanaryRun
      def self.parse(map)
        data = Types::CanaryRun.new
        data.id = map['Id']
        data.name = map['Name']
        data.status = (Parsers::CanaryRunStatus.parse(map['Status']) unless map['Status'].nil?)
        data.timeline = (Parsers::CanaryRunTimeline.parse(map['Timeline']) unless map['Timeline'].nil?)
        data.artifact_s3_location = map['ArtifactS3Location']
        return data
      end
    end

    class CanaryRunTimeline
      def self.parse(map)
        data = Types::CanaryRunTimeline.new
        data.started = Time.at(map['Started'].to_i) if map['Started']
        data.completed = Time.at(map['Completed'].to_i) if map['Completed']
        return data
      end
    end

    class CanaryRunStatus
      def self.parse(map)
        data = Types::CanaryRunStatus.new
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.state_reason_code = map['StateReasonCode']
        return data
      end
    end

    # Operation Parser for DescribeRuntimeVersions
    class DescribeRuntimeVersions
      def self.parse(http_resp)
        data = Types::DescribeRuntimeVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.runtime_versions = (Parsers::RuntimeVersionList.parse(map['RuntimeVersions']) unless map['RuntimeVersions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RuntimeVersionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RuntimeVersion.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuntimeVersion
      def self.parse(map)
        data = Types::RuntimeVersion.new
        data.version_name = map['VersionName']
        data.description = map['Description']
        data.release_date = Time.at(map['ReleaseDate'].to_i) if map['ReleaseDate']
        data.deprecation_date = Time.at(map['DeprecationDate'].to_i) if map['DeprecationDate']
        return data
      end
    end

    # Operation Parser for GetCanary
    class GetCanary
      def self.parse(http_resp)
        data = Types::GetCanaryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.canary = (Parsers::Canary.parse(map['Canary']) unless map['Canary'].nil?)
        data
      end
    end

    # Operation Parser for GetCanaryRuns
    class GetCanaryRuns
      def self.parse(http_resp)
        data = Types::GetCanaryRunsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.canary_runs = (Parsers::CanaryRuns.parse(map['CanaryRuns']) unless map['CanaryRuns'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CanaryRuns
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CanaryRun.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for StartCanary
    class StartCanary
      def self.parse(http_resp)
        data = Types::StartCanaryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StopCanary
    class StopCanary
      def self.parse(http_resp)
        data = Types::StopCanaryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
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

    # Operation Parser for UpdateCanary
    class UpdateCanary
      def self.parse(http_resp)
        data = Types::UpdateCanaryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
