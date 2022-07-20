# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Synthetics
  module Stubs

    # Operation Stubber for CreateCanary
    class CreateCanary
      def self.default(visited=[])
        {
          canary: Canary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Canary'] = Canary.stub(stub[:canary]) unless stub[:canary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Canary
    class Canary
      def self.default(visited=[])
        return nil if visited.include?('Canary')
        visited = visited + ['Canary']
        {
          id: 'id',
          name: 'name',
          code: CanaryCodeOutput.default(visited),
          execution_role_arn: 'execution_role_arn',
          schedule: CanaryScheduleOutput.default(visited),
          run_config: CanaryRunConfigOutput.default(visited),
          success_retention_period_in_days: 1,
          failure_retention_period_in_days: 1,
          status: CanaryStatus.default(visited),
          timeline: CanaryTimeline.default(visited),
          artifact_s3_location: 'artifact_s3_location',
          engine_arn: 'engine_arn',
          runtime_version: 'runtime_version',
          vpc_config: VpcConfigOutput.default(visited),
          visual_reference: VisualReferenceOutput.default(visited),
          tags: TagMap.default(visited),
          artifact_config: ArtifactConfigOutput.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Canary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Code'] = CanaryCodeOutput.stub(stub[:code]) unless stub[:code].nil?
        data['ExecutionRoleArn'] = stub[:execution_role_arn] unless stub[:execution_role_arn].nil?
        data['Schedule'] = CanaryScheduleOutput.stub(stub[:schedule]) unless stub[:schedule].nil?
        data['RunConfig'] = CanaryRunConfigOutput.stub(stub[:run_config]) unless stub[:run_config].nil?
        data['SuccessRetentionPeriodInDays'] = stub[:success_retention_period_in_days] unless stub[:success_retention_period_in_days].nil?
        data['FailureRetentionPeriodInDays'] = stub[:failure_retention_period_in_days] unless stub[:failure_retention_period_in_days].nil?
        data['Status'] = CanaryStatus.stub(stub[:status]) unless stub[:status].nil?
        data['Timeline'] = CanaryTimeline.stub(stub[:timeline]) unless stub[:timeline].nil?
        data['ArtifactS3Location'] = stub[:artifact_s3_location] unless stub[:artifact_s3_location].nil?
        data['EngineArn'] = stub[:engine_arn] unless stub[:engine_arn].nil?
        data['RuntimeVersion'] = stub[:runtime_version] unless stub[:runtime_version].nil?
        data['VpcConfig'] = VpcConfigOutput.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['VisualReference'] = VisualReferenceOutput.stub(stub[:visual_reference]) unless stub[:visual_reference].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['ArtifactConfig'] = ArtifactConfigOutput.stub(stub[:artifact_config]) unless stub[:artifact_config].nil?
        data
      end
    end

    # Structure Stubber for ArtifactConfigOutput
    class ArtifactConfigOutput
      def self.default(visited=[])
        return nil if visited.include?('ArtifactConfigOutput')
        visited = visited + ['ArtifactConfigOutput']
        {
          s3_encryption: S3EncryptionConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ArtifactConfigOutput.new
        data = {}
        data['S3Encryption'] = S3EncryptionConfig.stub(stub[:s3_encryption]) unless stub[:s3_encryption].nil?
        data
      end
    end

    # Structure Stubber for S3EncryptionConfig
    class S3EncryptionConfig
      def self.default(visited=[])
        return nil if visited.include?('S3EncryptionConfig')
        visited = visited + ['S3EncryptionConfig']
        {
          encryption_mode: 'encryption_mode',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3EncryptionConfig.new
        data = {}
        data['EncryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['KmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
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

    # Structure Stubber for VisualReferenceOutput
    class VisualReferenceOutput
      def self.default(visited=[])
        return nil if visited.include?('VisualReferenceOutput')
        visited = visited + ['VisualReferenceOutput']
        {
          base_screenshots: BaseScreenshots.default(visited),
          base_canary_run_id: 'base_canary_run_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::VisualReferenceOutput.new
        data = {}
        data['BaseScreenshots'] = BaseScreenshots.stub(stub[:base_screenshots]) unless stub[:base_screenshots].nil?
        data['BaseCanaryRunId'] = stub[:base_canary_run_id] unless stub[:base_canary_run_id].nil?
        data
      end
    end

    # List Stubber for BaseScreenshots
    class BaseScreenshots
      def self.default(visited=[])
        return nil if visited.include?('BaseScreenshots')
        visited = visited + ['BaseScreenshots']
        [
          BaseScreenshot.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BaseScreenshot.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BaseScreenshot
    class BaseScreenshot
      def self.default(visited=[])
        return nil if visited.include?('BaseScreenshot')
        visited = visited + ['BaseScreenshot']
        {
          screenshot_name: 'screenshot_name',
          ignore_coordinates: BaseScreenshotIgnoreCoordinates.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BaseScreenshot.new
        data = {}
        data['ScreenshotName'] = stub[:screenshot_name] unless stub[:screenshot_name].nil?
        data['IgnoreCoordinates'] = BaseScreenshotIgnoreCoordinates.stub(stub[:ignore_coordinates]) unless stub[:ignore_coordinates].nil?
        data
      end
    end

    # List Stubber for BaseScreenshotIgnoreCoordinates
    class BaseScreenshotIgnoreCoordinates
      def self.default(visited=[])
        return nil if visited.include?('BaseScreenshotIgnoreCoordinates')
        visited = visited + ['BaseScreenshotIgnoreCoordinates']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VpcConfigOutput
    class VpcConfigOutput
      def self.default(visited=[])
        return nil if visited.include?('VpcConfigOutput')
        visited = visited + ['VpcConfigOutput']
        {
          vpc_id: 'vpc_id',
          subnet_ids: SubnetIds.default(visited),
          security_group_ids: SecurityGroupIds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcConfigOutput.new
        data = {}
        data['VpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['SubnetIds'] = SubnetIds.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['SecurityGroupIds'] = SecurityGroupIds.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data
      end
    end

    # List Stubber for SecurityGroupIds
    class SecurityGroupIds
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIds')
        visited = visited + ['SecurityGroupIds']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for SubnetIds
    class SubnetIds
      def self.default(visited=[])
        return nil if visited.include?('SubnetIds')
        visited = visited + ['SubnetIds']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CanaryTimeline
    class CanaryTimeline
      def self.default(visited=[])
        return nil if visited.include?('CanaryTimeline')
        visited = visited + ['CanaryTimeline']
        {
          created: Time.now,
          last_modified: Time.now,
          last_started: Time.now,
          last_stopped: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CanaryTimeline.new
        data = {}
        data['Created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['LastModified'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified]).to_i unless stub[:last_modified].nil?
        data['LastStarted'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_started]).to_i unless stub[:last_started].nil?
        data['LastStopped'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_stopped]).to_i unless stub[:last_stopped].nil?
        data
      end
    end

    # Structure Stubber for CanaryStatus
    class CanaryStatus
      def self.default(visited=[])
        return nil if visited.include?('CanaryStatus')
        visited = visited + ['CanaryStatus']
        {
          state: 'state',
          state_reason: 'state_reason',
          state_reason_code: 'state_reason_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::CanaryStatus.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['StateReasonCode'] = stub[:state_reason_code] unless stub[:state_reason_code].nil?
        data
      end
    end

    # Structure Stubber for CanaryRunConfigOutput
    class CanaryRunConfigOutput
      def self.default(visited=[])
        return nil if visited.include?('CanaryRunConfigOutput')
        visited = visited + ['CanaryRunConfigOutput']
        {
          timeout_in_seconds: 1,
          memory_in_mb: 1,
          active_tracing: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::CanaryRunConfigOutput.new
        data = {}
        data['TimeoutInSeconds'] = stub[:timeout_in_seconds] unless stub[:timeout_in_seconds].nil?
        data['MemoryInMB'] = stub[:memory_in_mb] unless stub[:memory_in_mb].nil?
        data['ActiveTracing'] = stub[:active_tracing] unless stub[:active_tracing].nil?
        data
      end
    end

    # Structure Stubber for CanaryScheduleOutput
    class CanaryScheduleOutput
      def self.default(visited=[])
        return nil if visited.include?('CanaryScheduleOutput')
        visited = visited + ['CanaryScheduleOutput']
        {
          expression: 'expression',
          duration_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CanaryScheduleOutput.new
        data = {}
        data['Expression'] = stub[:expression] unless stub[:expression].nil?
        data['DurationInSeconds'] = stub[:duration_in_seconds] unless stub[:duration_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for CanaryCodeOutput
    class CanaryCodeOutput
      def self.default(visited=[])
        return nil if visited.include?('CanaryCodeOutput')
        visited = visited + ['CanaryCodeOutput']
        {
          source_location_arn: 'source_location_arn',
          handler: 'handler',
        }
      end

      def self.stub(stub)
        stub ||= Types::CanaryCodeOutput.new
        data = {}
        data['SourceLocationArn'] = stub[:source_location_arn] unless stub[:source_location_arn].nil?
        data['Handler'] = stub[:handler] unless stub[:handler].nil?
        data
      end
    end

    # Operation Stubber for DeleteCanary
    class DeleteCanary
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeCanaries
    class DescribeCanaries
      def self.default(visited=[])
        {
          canaries: Canaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Canaries'] = Canaries.stub(stub[:canaries]) unless stub[:canaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Canaries
    class Canaries
      def self.default(visited=[])
        return nil if visited.include?('Canaries')
        visited = visited + ['Canaries']
        [
          Canary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Canary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeCanariesLastRun
    class DescribeCanariesLastRun
      def self.default(visited=[])
        {
          canaries_last_run: CanariesLastRun.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CanariesLastRun'] = CanariesLastRun.stub(stub[:canaries_last_run]) unless stub[:canaries_last_run].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CanariesLastRun
    class CanariesLastRun
      def self.default(visited=[])
        return nil if visited.include?('CanariesLastRun')
        visited = visited + ['CanariesLastRun']
        [
          CanaryLastRun.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CanaryLastRun.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CanaryLastRun
    class CanaryLastRun
      def self.default(visited=[])
        return nil if visited.include?('CanaryLastRun')
        visited = visited + ['CanaryLastRun']
        {
          canary_name: 'canary_name',
          last_run: CanaryRun.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CanaryLastRun.new
        data = {}
        data['CanaryName'] = stub[:canary_name] unless stub[:canary_name].nil?
        data['LastRun'] = CanaryRun.stub(stub[:last_run]) unless stub[:last_run].nil?
        data
      end
    end

    # Structure Stubber for CanaryRun
    class CanaryRun
      def self.default(visited=[])
        return nil if visited.include?('CanaryRun')
        visited = visited + ['CanaryRun']
        {
          id: 'id',
          name: 'name',
          status: CanaryRunStatus.default(visited),
          timeline: CanaryRunTimeline.default(visited),
          artifact_s3_location: 'artifact_s3_location',
        }
      end

      def self.stub(stub)
        stub ||= Types::CanaryRun.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = CanaryRunStatus.stub(stub[:status]) unless stub[:status].nil?
        data['Timeline'] = CanaryRunTimeline.stub(stub[:timeline]) unless stub[:timeline].nil?
        data['ArtifactS3Location'] = stub[:artifact_s3_location] unless stub[:artifact_s3_location].nil?
        data
      end
    end

    # Structure Stubber for CanaryRunTimeline
    class CanaryRunTimeline
      def self.default(visited=[])
        return nil if visited.include?('CanaryRunTimeline')
        visited = visited + ['CanaryRunTimeline']
        {
          started: Time.now,
          completed: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CanaryRunTimeline.new
        data = {}
        data['Started'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started]).to_i unless stub[:started].nil?
        data['Completed'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed]).to_i unless stub[:completed].nil?
        data
      end
    end

    # Structure Stubber for CanaryRunStatus
    class CanaryRunStatus
      def self.default(visited=[])
        return nil if visited.include?('CanaryRunStatus')
        visited = visited + ['CanaryRunStatus']
        {
          state: 'state',
          state_reason: 'state_reason',
          state_reason_code: 'state_reason_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::CanaryRunStatus.new
        data = {}
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['StateReasonCode'] = stub[:state_reason_code] unless stub[:state_reason_code].nil?
        data
      end
    end

    # Operation Stubber for DescribeRuntimeVersions
    class DescribeRuntimeVersions
      def self.default(visited=[])
        {
          runtime_versions: RuntimeVersionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RuntimeVersions'] = RuntimeVersionList.stub(stub[:runtime_versions]) unless stub[:runtime_versions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RuntimeVersionList
    class RuntimeVersionList
      def self.default(visited=[])
        return nil if visited.include?('RuntimeVersionList')
        visited = visited + ['RuntimeVersionList']
        [
          RuntimeVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuntimeVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuntimeVersion
    class RuntimeVersion
      def self.default(visited=[])
        return nil if visited.include?('RuntimeVersion')
        visited = visited + ['RuntimeVersion']
        {
          version_name: 'version_name',
          description: 'description',
          release_date: Time.now,
          deprecation_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RuntimeVersion.new
        data = {}
        data['VersionName'] = stub[:version_name] unless stub[:version_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ReleaseDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:release_date]).to_i unless stub[:release_date].nil?
        data['DeprecationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deprecation_date]).to_i unless stub[:deprecation_date].nil?
        data
      end
    end

    # Operation Stubber for GetCanary
    class GetCanary
      def self.default(visited=[])
        {
          canary: Canary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Canary'] = Canary.stub(stub[:canary]) unless stub[:canary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetCanaryRuns
    class GetCanaryRuns
      def self.default(visited=[])
        {
          canary_runs: CanaryRuns.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CanaryRuns'] = CanaryRuns.stub(stub[:canary_runs]) unless stub[:canary_runs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CanaryRuns
    class CanaryRuns
      def self.default(visited=[])
        return nil if visited.include?('CanaryRuns')
        visited = visited + ['CanaryRuns']
        [
          CanaryRun.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CanaryRun.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartCanary
    class StartCanary
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopCanary
    class StopCanary
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
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

    # Operation Stubber for UpdateCanary
    class UpdateCanary
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
