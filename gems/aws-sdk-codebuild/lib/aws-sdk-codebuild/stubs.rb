# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CodeBuild
  module Stubs

    # Operation Stubber for BatchDeleteBuilds
    class BatchDeleteBuilds
      def self.default(visited=[])
        {
          builds_deleted: BuildIds.default(visited),
          builds_not_deleted: BuildsNotDeleted.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['buildsDeleted'] = BuildIds.stub(stub[:builds_deleted]) unless stub[:builds_deleted].nil?
        data['buildsNotDeleted'] = BuildsNotDeleted.stub(stub[:builds_not_deleted]) unless stub[:builds_not_deleted].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BuildsNotDeleted
    class BuildsNotDeleted
      def self.default(visited=[])
        return nil if visited.include?('BuildsNotDeleted')
        visited = visited + ['BuildsNotDeleted']
        [
          BuildNotDeleted.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BuildNotDeleted.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BuildNotDeleted
    class BuildNotDeleted
      def self.default(visited=[])
        return nil if visited.include?('BuildNotDeleted')
        visited = visited + ['BuildNotDeleted']
        {
          id: 'id',
          status_code: 'status_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::BuildNotDeleted.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data
      end
    end

    # List Stubber for BuildIds
    class BuildIds
      def self.default(visited=[])
        return nil if visited.include?('BuildIds')
        visited = visited + ['BuildIds']
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

    # Operation Stubber for BatchGetBuildBatches
    class BatchGetBuildBatches
      def self.default(visited=[])
        {
          build_batches: BuildBatches.default(visited),
          build_batches_not_found: BuildBatchIds.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['buildBatches'] = BuildBatches.stub(stub[:build_batches]) unless stub[:build_batches].nil?
        data['buildBatchesNotFound'] = BuildBatchIds.stub(stub[:build_batches_not_found]) unless stub[:build_batches_not_found].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BuildBatchIds
    class BuildBatchIds
      def self.default(visited=[])
        return nil if visited.include?('BuildBatchIds')
        visited = visited + ['BuildBatchIds']
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

    # List Stubber for BuildBatches
    class BuildBatches
      def self.default(visited=[])
        return nil if visited.include?('BuildBatches')
        visited = visited + ['BuildBatches']
        [
          BuildBatch.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BuildBatch.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BuildBatch
    class BuildBatch
      def self.default(visited=[])
        return nil if visited.include?('BuildBatch')
        visited = visited + ['BuildBatch']
        {
          id: 'id',
          arn: 'arn',
          start_time: Time.now,
          end_time: Time.now,
          current_phase: 'current_phase',
          build_batch_status: 'build_batch_status',
          source_version: 'source_version',
          resolved_source_version: 'resolved_source_version',
          project_name: 'project_name',
          phases: BuildBatchPhases.default(visited),
          source: ProjectSource.default(visited),
          secondary_sources: ProjectSources.default(visited),
          secondary_source_versions: ProjectSecondarySourceVersions.default(visited),
          artifacts: BuildArtifacts.default(visited),
          secondary_artifacts: BuildArtifactsList.default(visited),
          cache: ProjectCache.default(visited),
          environment: ProjectEnvironment.default(visited),
          service_role: 'service_role',
          log_config: LogsConfig.default(visited),
          build_timeout_in_minutes: 1,
          queued_timeout_in_minutes: 1,
          complete: false,
          initiator: 'initiator',
          vpc_config: VpcConfig.default(visited),
          encryption_key: 'encryption_key',
          build_batch_number: 1,
          file_system_locations: ProjectFileSystemLocations.default(visited),
          build_batch_config: ProjectBuildBatchConfig.default(visited),
          build_groups: BuildGroups.default(visited),
          debug_session_enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::BuildBatch.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['currentPhase'] = stub[:current_phase] unless stub[:current_phase].nil?
        data['buildBatchStatus'] = stub[:build_batch_status] unless stub[:build_batch_status].nil?
        data['sourceVersion'] = stub[:source_version] unless stub[:source_version].nil?
        data['resolvedSourceVersion'] = stub[:resolved_source_version] unless stub[:resolved_source_version].nil?
        data['projectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['phases'] = BuildBatchPhases.stub(stub[:phases]) unless stub[:phases].nil?
        data['source'] = ProjectSource.stub(stub[:source]) unless stub[:source].nil?
        data['secondarySources'] = ProjectSources.stub(stub[:secondary_sources]) unless stub[:secondary_sources].nil?
        data['secondarySourceVersions'] = ProjectSecondarySourceVersions.stub(stub[:secondary_source_versions]) unless stub[:secondary_source_versions].nil?
        data['artifacts'] = BuildArtifacts.stub(stub[:artifacts]) unless stub[:artifacts].nil?
        data['secondaryArtifacts'] = BuildArtifactsList.stub(stub[:secondary_artifacts]) unless stub[:secondary_artifacts].nil?
        data['cache'] = ProjectCache.stub(stub[:cache]) unless stub[:cache].nil?
        data['environment'] = ProjectEnvironment.stub(stub[:environment]) unless stub[:environment].nil?
        data['serviceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['logConfig'] = LogsConfig.stub(stub[:log_config]) unless stub[:log_config].nil?
        data['buildTimeoutInMinutes'] = stub[:build_timeout_in_minutes] unless stub[:build_timeout_in_minutes].nil?
        data['queuedTimeoutInMinutes'] = stub[:queued_timeout_in_minutes] unless stub[:queued_timeout_in_minutes].nil?
        data['complete'] = stub[:complete] unless stub[:complete].nil?
        data['initiator'] = stub[:initiator] unless stub[:initiator].nil?
        data['vpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['encryptionKey'] = stub[:encryption_key] unless stub[:encryption_key].nil?
        data['buildBatchNumber'] = stub[:build_batch_number] unless stub[:build_batch_number].nil?
        data['fileSystemLocations'] = ProjectFileSystemLocations.stub(stub[:file_system_locations]) unless stub[:file_system_locations].nil?
        data['buildBatchConfig'] = ProjectBuildBatchConfig.stub(stub[:build_batch_config]) unless stub[:build_batch_config].nil?
        data['buildGroups'] = BuildGroups.stub(stub[:build_groups]) unless stub[:build_groups].nil?
        data['debugSessionEnabled'] = stub[:debug_session_enabled] unless stub[:debug_session_enabled].nil?
        data
      end
    end

    # List Stubber for BuildGroups
    class BuildGroups
      def self.default(visited=[])
        return nil if visited.include?('BuildGroups')
        visited = visited + ['BuildGroups']
        [
          BuildGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BuildGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BuildGroup
    class BuildGroup
      def self.default(visited=[])
        return nil if visited.include?('BuildGroup')
        visited = visited + ['BuildGroup']
        {
          identifier: 'identifier',
          depends_on: Identifiers.default(visited),
          ignore_failure: false,
          current_build_summary: BuildSummary.default(visited),
          prior_build_summary_list: BuildSummaries.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BuildGroup.new
        data = {}
        data['identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['dependsOn'] = Identifiers.stub(stub[:depends_on]) unless stub[:depends_on].nil?
        data['ignoreFailure'] = stub[:ignore_failure] unless stub[:ignore_failure].nil?
        data['currentBuildSummary'] = BuildSummary.stub(stub[:current_build_summary]) unless stub[:current_build_summary].nil?
        data['priorBuildSummaryList'] = BuildSummaries.stub(stub[:prior_build_summary_list]) unless stub[:prior_build_summary_list].nil?
        data
      end
    end

    # List Stubber for BuildSummaries
    class BuildSummaries
      def self.default(visited=[])
        return nil if visited.include?('BuildSummaries')
        visited = visited + ['BuildSummaries']
        [
          BuildSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BuildSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BuildSummary
    class BuildSummary
      def self.default(visited=[])
        return nil if visited.include?('BuildSummary')
        visited = visited + ['BuildSummary']
        {
          arn: 'arn',
          requested_on: Time.now,
          build_status: 'build_status',
          primary_artifact: ResolvedArtifact.default(visited),
          secondary_artifacts: ResolvedSecondaryArtifacts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BuildSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['requestedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:requested_on]).to_i unless stub[:requested_on].nil?
        data['buildStatus'] = stub[:build_status] unless stub[:build_status].nil?
        data['primaryArtifact'] = ResolvedArtifact.stub(stub[:primary_artifact]) unless stub[:primary_artifact].nil?
        data['secondaryArtifacts'] = ResolvedSecondaryArtifacts.stub(stub[:secondary_artifacts]) unless stub[:secondary_artifacts].nil?
        data
      end
    end

    # List Stubber for ResolvedSecondaryArtifacts
    class ResolvedSecondaryArtifacts
      def self.default(visited=[])
        return nil if visited.include?('ResolvedSecondaryArtifacts')
        visited = visited + ['ResolvedSecondaryArtifacts']
        [
          ResolvedArtifact.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ResolvedArtifact.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResolvedArtifact
    class ResolvedArtifact
      def self.default(visited=[])
        return nil if visited.include?('ResolvedArtifact')
        visited = visited + ['ResolvedArtifact']
        {
          type: 'type',
          location: 'location',
          identifier: 'identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResolvedArtifact.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data
      end
    end

    # List Stubber for Identifiers
    class Identifiers
      def self.default(visited=[])
        return nil if visited.include?('Identifiers')
        visited = visited + ['Identifiers']
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

    # Structure Stubber for ProjectBuildBatchConfig
    class ProjectBuildBatchConfig
      def self.default(visited=[])
        return nil if visited.include?('ProjectBuildBatchConfig')
        visited = visited + ['ProjectBuildBatchConfig']
        {
          service_role: 'service_role',
          combine_artifacts: false,
          restrictions: BatchRestrictions.default(visited),
          timeout_in_mins: 1,
          batch_report_mode: 'batch_report_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectBuildBatchConfig.new
        data = {}
        data['serviceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['combineArtifacts'] = stub[:combine_artifacts] unless stub[:combine_artifacts].nil?
        data['restrictions'] = BatchRestrictions.stub(stub[:restrictions]) unless stub[:restrictions].nil?
        data['timeoutInMins'] = stub[:timeout_in_mins] unless stub[:timeout_in_mins].nil?
        data['batchReportMode'] = stub[:batch_report_mode] unless stub[:batch_report_mode].nil?
        data
      end
    end

    # Structure Stubber for BatchRestrictions
    class BatchRestrictions
      def self.default(visited=[])
        return nil if visited.include?('BatchRestrictions')
        visited = visited + ['BatchRestrictions']
        {
          maximum_builds_allowed: 1,
          compute_types_allowed: ComputeTypesAllowed.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchRestrictions.new
        data = {}
        data['maximumBuildsAllowed'] = stub[:maximum_builds_allowed] unless stub[:maximum_builds_allowed].nil?
        data['computeTypesAllowed'] = ComputeTypesAllowed.stub(stub[:compute_types_allowed]) unless stub[:compute_types_allowed].nil?
        data
      end
    end

    # List Stubber for ComputeTypesAllowed
    class ComputeTypesAllowed
      def self.default(visited=[])
        return nil if visited.include?('ComputeTypesAllowed')
        visited = visited + ['ComputeTypesAllowed']
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

    # List Stubber for ProjectFileSystemLocations
    class ProjectFileSystemLocations
      def self.default(visited=[])
        return nil if visited.include?('ProjectFileSystemLocations')
        visited = visited + ['ProjectFileSystemLocations']
        [
          ProjectFileSystemLocation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProjectFileSystemLocation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProjectFileSystemLocation
    class ProjectFileSystemLocation
      def self.default(visited=[])
        return nil if visited.include?('ProjectFileSystemLocation')
        visited = visited + ['ProjectFileSystemLocation']
        {
          type: 'type',
          location: 'location',
          mount_point: 'mount_point',
          identifier: 'identifier',
          mount_options: 'mount_options',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectFileSystemLocation.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['mountPoint'] = stub[:mount_point] unless stub[:mount_point].nil?
        data['identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['mountOptions'] = stub[:mount_options] unless stub[:mount_options].nil?
        data
      end
    end

    # Structure Stubber for VpcConfig
    class VpcConfig
      def self.default(visited=[])
        return nil if visited.include?('VpcConfig')
        visited = visited + ['VpcConfig']
        {
          vpc_id: 'vpc_id',
          subnets: Subnets.default(visited),
          security_group_ids: SecurityGroupIds.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcConfig.new
        data = {}
        data['vpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['subnets'] = Subnets.stub(stub[:subnets]) unless stub[:subnets].nil?
        data['securityGroupIds'] = SecurityGroupIds.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
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

    # List Stubber for Subnets
    class Subnets
      def self.default(visited=[])
        return nil if visited.include?('Subnets')
        visited = visited + ['Subnets']
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

    # Structure Stubber for LogsConfig
    class LogsConfig
      def self.default(visited=[])
        return nil if visited.include?('LogsConfig')
        visited = visited + ['LogsConfig']
        {
          cloud_watch_logs: CloudWatchLogsConfig.default(visited),
          s3_logs: S3LogsConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LogsConfig.new
        data = {}
        data['cloudWatchLogs'] = CloudWatchLogsConfig.stub(stub[:cloud_watch_logs]) unless stub[:cloud_watch_logs].nil?
        data['s3Logs'] = S3LogsConfig.stub(stub[:s3_logs]) unless stub[:s3_logs].nil?
        data
      end
    end

    # Structure Stubber for S3LogsConfig
    class S3LogsConfig
      def self.default(visited=[])
        return nil if visited.include?('S3LogsConfig')
        visited = visited + ['S3LogsConfig']
        {
          status: 'status',
          location: 'location',
          encryption_disabled: false,
          bucket_owner_access: 'bucket_owner_access',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3LogsConfig.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['encryptionDisabled'] = stub[:encryption_disabled] unless stub[:encryption_disabled].nil?
        data['bucketOwnerAccess'] = stub[:bucket_owner_access] unless stub[:bucket_owner_access].nil?
        data
      end
    end

    # Structure Stubber for CloudWatchLogsConfig
    class CloudWatchLogsConfig
      def self.default(visited=[])
        return nil if visited.include?('CloudWatchLogsConfig')
        visited = visited + ['CloudWatchLogsConfig']
        {
          status: 'status',
          group_name: 'group_name',
          stream_name: 'stream_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudWatchLogsConfig.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['groupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['streamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data
      end
    end

    # Structure Stubber for ProjectEnvironment
    class ProjectEnvironment
      def self.default(visited=[])
        return nil if visited.include?('ProjectEnvironment')
        visited = visited + ['ProjectEnvironment']
        {
          type: 'type',
          image: 'image',
          compute_type: 'compute_type',
          environment_variables: EnvironmentVariables.default(visited),
          privileged_mode: false,
          certificate: 'certificate',
          registry_credential: RegistryCredential.default(visited),
          image_pull_credentials_type: 'image_pull_credentials_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectEnvironment.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['image'] = stub[:image] unless stub[:image].nil?
        data['computeType'] = stub[:compute_type] unless stub[:compute_type].nil?
        data['environmentVariables'] = EnvironmentVariables.stub(stub[:environment_variables]) unless stub[:environment_variables].nil?
        data['privilegedMode'] = stub[:privileged_mode] unless stub[:privileged_mode].nil?
        data['certificate'] = stub[:certificate] unless stub[:certificate].nil?
        data['registryCredential'] = RegistryCredential.stub(stub[:registry_credential]) unless stub[:registry_credential].nil?
        data['imagePullCredentialsType'] = stub[:image_pull_credentials_type] unless stub[:image_pull_credentials_type].nil?
        data
      end
    end

    # Structure Stubber for RegistryCredential
    class RegistryCredential
      def self.default(visited=[])
        return nil if visited.include?('RegistryCredential')
        visited = visited + ['RegistryCredential']
        {
          credential: 'credential',
          credential_provider: 'credential_provider',
        }
      end

      def self.stub(stub)
        stub ||= Types::RegistryCredential.new
        data = {}
        data['credential'] = stub[:credential] unless stub[:credential].nil?
        data['credentialProvider'] = stub[:credential_provider] unless stub[:credential_provider].nil?
        data
      end
    end

    # List Stubber for EnvironmentVariables
    class EnvironmentVariables
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentVariables')
        visited = visited + ['EnvironmentVariables']
        [
          EnvironmentVariable.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EnvironmentVariable.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnvironmentVariable
    class EnvironmentVariable
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentVariable')
        visited = visited + ['EnvironmentVariable']
        {
          name: 'name',
          value: 'value',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentVariable.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for ProjectCache
    class ProjectCache
      def self.default(visited=[])
        return nil if visited.include?('ProjectCache')
        visited = visited + ['ProjectCache']
        {
          type: 'type',
          location: 'location',
          modes: ProjectCacheModes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectCache.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['modes'] = ProjectCacheModes.stub(stub[:modes]) unless stub[:modes].nil?
        data
      end
    end

    # List Stubber for ProjectCacheModes
    class ProjectCacheModes
      def self.default(visited=[])
        return nil if visited.include?('ProjectCacheModes')
        visited = visited + ['ProjectCacheModes']
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

    # List Stubber for BuildArtifactsList
    class BuildArtifactsList
      def self.default(visited=[])
        return nil if visited.include?('BuildArtifactsList')
        visited = visited + ['BuildArtifactsList']
        [
          BuildArtifacts.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BuildArtifacts.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BuildArtifacts
    class BuildArtifacts
      def self.default(visited=[])
        return nil if visited.include?('BuildArtifacts')
        visited = visited + ['BuildArtifacts']
        {
          location: 'location',
          sha256sum: 'sha256sum',
          md5sum: 'md5sum',
          override_artifact_name: false,
          encryption_disabled: false,
          artifact_identifier: 'artifact_identifier',
          bucket_owner_access: 'bucket_owner_access',
        }
      end

      def self.stub(stub)
        stub ||= Types::BuildArtifacts.new
        data = {}
        data['location'] = stub[:location] unless stub[:location].nil?
        data['sha256sum'] = stub[:sha256sum] unless stub[:sha256sum].nil?
        data['md5sum'] = stub[:md5sum] unless stub[:md5sum].nil?
        data['overrideArtifactName'] = stub[:override_artifact_name] unless stub[:override_artifact_name].nil?
        data['encryptionDisabled'] = stub[:encryption_disabled] unless stub[:encryption_disabled].nil?
        data['artifactIdentifier'] = stub[:artifact_identifier] unless stub[:artifact_identifier].nil?
        data['bucketOwnerAccess'] = stub[:bucket_owner_access] unless stub[:bucket_owner_access].nil?
        data
      end
    end

    # List Stubber for ProjectSecondarySourceVersions
    class ProjectSecondarySourceVersions
      def self.default(visited=[])
        return nil if visited.include?('ProjectSecondarySourceVersions')
        visited = visited + ['ProjectSecondarySourceVersions']
        [
          ProjectSourceVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProjectSourceVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProjectSourceVersion
    class ProjectSourceVersion
      def self.default(visited=[])
        return nil if visited.include?('ProjectSourceVersion')
        visited = visited + ['ProjectSourceVersion']
        {
          source_identifier: 'source_identifier',
          source_version: 'source_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectSourceVersion.new
        data = {}
        data['sourceIdentifier'] = stub[:source_identifier] unless stub[:source_identifier].nil?
        data['sourceVersion'] = stub[:source_version] unless stub[:source_version].nil?
        data
      end
    end

    # List Stubber for ProjectSources
    class ProjectSources
      def self.default(visited=[])
        return nil if visited.include?('ProjectSources')
        visited = visited + ['ProjectSources']
        [
          ProjectSource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProjectSource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProjectSource
    class ProjectSource
      def self.default(visited=[])
        return nil if visited.include?('ProjectSource')
        visited = visited + ['ProjectSource']
        {
          type: 'type',
          location: 'location',
          git_clone_depth: 1,
          git_submodules_config: GitSubmodulesConfig.default(visited),
          buildspec: 'buildspec',
          auth: SourceAuth.default(visited),
          report_build_status: false,
          build_status_config: BuildStatusConfig.default(visited),
          insecure_ssl: false,
          source_identifier: 'source_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectSource.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['gitCloneDepth'] = stub[:git_clone_depth] unless stub[:git_clone_depth].nil?
        data['gitSubmodulesConfig'] = GitSubmodulesConfig.stub(stub[:git_submodules_config]) unless stub[:git_submodules_config].nil?
        data['buildspec'] = stub[:buildspec] unless stub[:buildspec].nil?
        data['auth'] = SourceAuth.stub(stub[:auth]) unless stub[:auth].nil?
        data['reportBuildStatus'] = stub[:report_build_status] unless stub[:report_build_status].nil?
        data['buildStatusConfig'] = BuildStatusConfig.stub(stub[:build_status_config]) unless stub[:build_status_config].nil?
        data['insecureSsl'] = stub[:insecure_ssl] unless stub[:insecure_ssl].nil?
        data['sourceIdentifier'] = stub[:source_identifier] unless stub[:source_identifier].nil?
        data
      end
    end

    # Structure Stubber for BuildStatusConfig
    class BuildStatusConfig
      def self.default(visited=[])
        return nil if visited.include?('BuildStatusConfig')
        visited = visited + ['BuildStatusConfig']
        {
          context: 'context',
          target_url: 'target_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::BuildStatusConfig.new
        data = {}
        data['context'] = stub[:context] unless stub[:context].nil?
        data['targetUrl'] = stub[:target_url] unless stub[:target_url].nil?
        data
      end
    end

    # Structure Stubber for SourceAuth
    class SourceAuth
      def self.default(visited=[])
        return nil if visited.include?('SourceAuth')
        visited = visited + ['SourceAuth']
        {
          type: 'type',
          resource: 'resource',
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceAuth.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['resource'] = stub[:resource] unless stub[:resource].nil?
        data
      end
    end

    # Structure Stubber for GitSubmodulesConfig
    class GitSubmodulesConfig
      def self.default(visited=[])
        return nil if visited.include?('GitSubmodulesConfig')
        visited = visited + ['GitSubmodulesConfig']
        {
          fetch_submodules: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::GitSubmodulesConfig.new
        data = {}
        data['fetchSubmodules'] = stub[:fetch_submodules] unless stub[:fetch_submodules].nil?
        data
      end
    end

    # List Stubber for BuildBatchPhases
    class BuildBatchPhases
      def self.default(visited=[])
        return nil if visited.include?('BuildBatchPhases')
        visited = visited + ['BuildBatchPhases']
        [
          BuildBatchPhase.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BuildBatchPhase.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BuildBatchPhase
    class BuildBatchPhase
      def self.default(visited=[])
        return nil if visited.include?('BuildBatchPhase')
        visited = visited + ['BuildBatchPhase']
        {
          phase_type: 'phase_type',
          phase_status: 'phase_status',
          start_time: Time.now,
          end_time: Time.now,
          duration_in_seconds: 1,
          contexts: PhaseContexts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BuildBatchPhase.new
        data = {}
        data['phaseType'] = stub[:phase_type] unless stub[:phase_type].nil?
        data['phaseStatus'] = stub[:phase_status] unless stub[:phase_status].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['durationInSeconds'] = stub[:duration_in_seconds] unless stub[:duration_in_seconds].nil?
        data['contexts'] = PhaseContexts.stub(stub[:contexts]) unless stub[:contexts].nil?
        data
      end
    end

    # List Stubber for PhaseContexts
    class PhaseContexts
      def self.default(visited=[])
        return nil if visited.include?('PhaseContexts')
        visited = visited + ['PhaseContexts']
        [
          PhaseContext.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PhaseContext.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PhaseContext
    class PhaseContext
      def self.default(visited=[])
        return nil if visited.include?('PhaseContext')
        visited = visited + ['PhaseContext']
        {
          status_code: 'status_code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::PhaseContext.new
        data = {}
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for BatchGetBuilds
    class BatchGetBuilds
      def self.default(visited=[])
        {
          builds: Builds.default(visited),
          builds_not_found: BuildIds.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['builds'] = Builds.stub(stub[:builds]) unless stub[:builds].nil?
        data['buildsNotFound'] = BuildIds.stub(stub[:builds_not_found]) unless stub[:builds_not_found].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Builds
    class Builds
      def self.default(visited=[])
        return nil if visited.include?('Builds')
        visited = visited + ['Builds']
        [
          Build.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Build.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Build
    class Build
      def self.default(visited=[])
        return nil if visited.include?('Build')
        visited = visited + ['Build']
        {
          id: 'id',
          arn: 'arn',
          build_number: 1,
          start_time: Time.now,
          end_time: Time.now,
          current_phase: 'current_phase',
          build_status: 'build_status',
          source_version: 'source_version',
          resolved_source_version: 'resolved_source_version',
          project_name: 'project_name',
          phases: BuildPhases.default(visited),
          source: ProjectSource.default(visited),
          secondary_sources: ProjectSources.default(visited),
          secondary_source_versions: ProjectSecondarySourceVersions.default(visited),
          artifacts: BuildArtifacts.default(visited),
          secondary_artifacts: BuildArtifactsList.default(visited),
          cache: ProjectCache.default(visited),
          environment: ProjectEnvironment.default(visited),
          service_role: 'service_role',
          logs: LogsLocation.default(visited),
          timeout_in_minutes: 1,
          queued_timeout_in_minutes: 1,
          build_complete: false,
          initiator: 'initiator',
          vpc_config: VpcConfig.default(visited),
          network_interface: NetworkInterface.default(visited),
          encryption_key: 'encryption_key',
          exported_environment_variables: ExportedEnvironmentVariables.default(visited),
          report_arns: BuildReportArns.default(visited),
          file_system_locations: ProjectFileSystemLocations.default(visited),
          debug_session: DebugSession.default(visited),
          build_batch_arn: 'build_batch_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Build.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['buildNumber'] = stub[:build_number] unless stub[:build_number].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['currentPhase'] = stub[:current_phase] unless stub[:current_phase].nil?
        data['buildStatus'] = stub[:build_status] unless stub[:build_status].nil?
        data['sourceVersion'] = stub[:source_version] unless stub[:source_version].nil?
        data['resolvedSourceVersion'] = stub[:resolved_source_version] unless stub[:resolved_source_version].nil?
        data['projectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['phases'] = BuildPhases.stub(stub[:phases]) unless stub[:phases].nil?
        data['source'] = ProjectSource.stub(stub[:source]) unless stub[:source].nil?
        data['secondarySources'] = ProjectSources.stub(stub[:secondary_sources]) unless stub[:secondary_sources].nil?
        data['secondarySourceVersions'] = ProjectSecondarySourceVersions.stub(stub[:secondary_source_versions]) unless stub[:secondary_source_versions].nil?
        data['artifacts'] = BuildArtifacts.stub(stub[:artifacts]) unless stub[:artifacts].nil?
        data['secondaryArtifacts'] = BuildArtifactsList.stub(stub[:secondary_artifacts]) unless stub[:secondary_artifacts].nil?
        data['cache'] = ProjectCache.stub(stub[:cache]) unless stub[:cache].nil?
        data['environment'] = ProjectEnvironment.stub(stub[:environment]) unless stub[:environment].nil?
        data['serviceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['logs'] = LogsLocation.stub(stub[:logs]) unless stub[:logs].nil?
        data['timeoutInMinutes'] = stub[:timeout_in_minutes] unless stub[:timeout_in_minutes].nil?
        data['queuedTimeoutInMinutes'] = stub[:queued_timeout_in_minutes] unless stub[:queued_timeout_in_minutes].nil?
        data['buildComplete'] = stub[:build_complete] unless stub[:build_complete].nil?
        data['initiator'] = stub[:initiator] unless stub[:initiator].nil?
        data['vpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['networkInterface'] = NetworkInterface.stub(stub[:network_interface]) unless stub[:network_interface].nil?
        data['encryptionKey'] = stub[:encryption_key] unless stub[:encryption_key].nil?
        data['exportedEnvironmentVariables'] = ExportedEnvironmentVariables.stub(stub[:exported_environment_variables]) unless stub[:exported_environment_variables].nil?
        data['reportArns'] = BuildReportArns.stub(stub[:report_arns]) unless stub[:report_arns].nil?
        data['fileSystemLocations'] = ProjectFileSystemLocations.stub(stub[:file_system_locations]) unless stub[:file_system_locations].nil?
        data['debugSession'] = DebugSession.stub(stub[:debug_session]) unless stub[:debug_session].nil?
        data['buildBatchArn'] = stub[:build_batch_arn] unless stub[:build_batch_arn].nil?
        data
      end
    end

    # Structure Stubber for DebugSession
    class DebugSession
      def self.default(visited=[])
        return nil if visited.include?('DebugSession')
        visited = visited + ['DebugSession']
        {
          session_enabled: false,
          session_target: 'session_target',
        }
      end

      def self.stub(stub)
        stub ||= Types::DebugSession.new
        data = {}
        data['sessionEnabled'] = stub[:session_enabled] unless stub[:session_enabled].nil?
        data['sessionTarget'] = stub[:session_target] unless stub[:session_target].nil?
        data
      end
    end

    # List Stubber for BuildReportArns
    class BuildReportArns
      def self.default(visited=[])
        return nil if visited.include?('BuildReportArns')
        visited = visited + ['BuildReportArns']
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

    # List Stubber for ExportedEnvironmentVariables
    class ExportedEnvironmentVariables
      def self.default(visited=[])
        return nil if visited.include?('ExportedEnvironmentVariables')
        visited = visited + ['ExportedEnvironmentVariables']
        [
          ExportedEnvironmentVariable.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExportedEnvironmentVariable.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExportedEnvironmentVariable
    class ExportedEnvironmentVariable
      def self.default(visited=[])
        return nil if visited.include?('ExportedEnvironmentVariable')
        visited = visited + ['ExportedEnvironmentVariable']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportedEnvironmentVariable.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for NetworkInterface
    class NetworkInterface
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterface')
        visited = visited + ['NetworkInterface']
        {
          subnet_id: 'subnet_id',
          network_interface_id: 'network_interface_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkInterface.new
        data = {}
        data['subnetId'] = stub[:subnet_id] unless stub[:subnet_id].nil?
        data['networkInterfaceId'] = stub[:network_interface_id] unless stub[:network_interface_id].nil?
        data
      end
    end

    # Structure Stubber for LogsLocation
    class LogsLocation
      def self.default(visited=[])
        return nil if visited.include?('LogsLocation')
        visited = visited + ['LogsLocation']
        {
          group_name: 'group_name',
          stream_name: 'stream_name',
          deep_link: 'deep_link',
          s3_deep_link: 's3_deep_link',
          cloud_watch_logs_arn: 'cloud_watch_logs_arn',
          s3_logs_arn: 's3_logs_arn',
          cloud_watch_logs: CloudWatchLogsConfig.default(visited),
          s3_logs: S3LogsConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LogsLocation.new
        data = {}
        data['groupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['streamName'] = stub[:stream_name] unless stub[:stream_name].nil?
        data['deepLink'] = stub[:deep_link] unless stub[:deep_link].nil?
        data['s3DeepLink'] = stub[:s3_deep_link] unless stub[:s3_deep_link].nil?
        data['cloudWatchLogsArn'] = stub[:cloud_watch_logs_arn] unless stub[:cloud_watch_logs_arn].nil?
        data['s3LogsArn'] = stub[:s3_logs_arn] unless stub[:s3_logs_arn].nil?
        data['cloudWatchLogs'] = CloudWatchLogsConfig.stub(stub[:cloud_watch_logs]) unless stub[:cloud_watch_logs].nil?
        data['s3Logs'] = S3LogsConfig.stub(stub[:s3_logs]) unless stub[:s3_logs].nil?
        data
      end
    end

    # List Stubber for BuildPhases
    class BuildPhases
      def self.default(visited=[])
        return nil if visited.include?('BuildPhases')
        visited = visited + ['BuildPhases']
        [
          BuildPhase.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BuildPhase.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BuildPhase
    class BuildPhase
      def self.default(visited=[])
        return nil if visited.include?('BuildPhase')
        visited = visited + ['BuildPhase']
        {
          phase_type: 'phase_type',
          phase_status: 'phase_status',
          start_time: Time.now,
          end_time: Time.now,
          duration_in_seconds: 1,
          contexts: PhaseContexts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BuildPhase.new
        data = {}
        data['phaseType'] = stub[:phase_type] unless stub[:phase_type].nil?
        data['phaseStatus'] = stub[:phase_status] unless stub[:phase_status].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['durationInSeconds'] = stub[:duration_in_seconds] unless stub[:duration_in_seconds].nil?
        data['contexts'] = PhaseContexts.stub(stub[:contexts]) unless stub[:contexts].nil?
        data
      end
    end

    # Operation Stubber for BatchGetProjects
    class BatchGetProjects
      def self.default(visited=[])
        {
          projects: Projects.default(visited),
          projects_not_found: ProjectNames.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['projects'] = Projects.stub(stub[:projects]) unless stub[:projects].nil?
        data['projectsNotFound'] = ProjectNames.stub(stub[:projects_not_found]) unless stub[:projects_not_found].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProjectNames
    class ProjectNames
      def self.default(visited=[])
        return nil if visited.include?('ProjectNames')
        visited = visited + ['ProjectNames']
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

    # List Stubber for Projects
    class Projects
      def self.default(visited=[])
        return nil if visited.include?('Projects')
        visited = visited + ['Projects']
        [
          Project.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Project.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Project
    class Project
      def self.default(visited=[])
        return nil if visited.include?('Project')
        visited = visited + ['Project']
        {
          name: 'name',
          arn: 'arn',
          description: 'description',
          source: ProjectSource.default(visited),
          secondary_sources: ProjectSources.default(visited),
          source_version: 'source_version',
          secondary_source_versions: ProjectSecondarySourceVersions.default(visited),
          artifacts: ProjectArtifacts.default(visited),
          secondary_artifacts: ProjectArtifactsList.default(visited),
          cache: ProjectCache.default(visited),
          environment: ProjectEnvironment.default(visited),
          service_role: 'service_role',
          timeout_in_minutes: 1,
          queued_timeout_in_minutes: 1,
          encryption_key: 'encryption_key',
          tags: TagList.default(visited),
          created: Time.now,
          last_modified: Time.now,
          webhook: Webhook.default(visited),
          vpc_config: VpcConfig.default(visited),
          badge: ProjectBadge.default(visited),
          logs_config: LogsConfig.default(visited),
          file_system_locations: ProjectFileSystemLocations.default(visited),
          build_batch_config: ProjectBuildBatchConfig.default(visited),
          concurrent_build_limit: 1,
          project_visibility: 'project_visibility',
          public_project_alias: 'public_project_alias',
          resource_access_role: 'resource_access_role',
        }
      end

      def self.stub(stub)
        stub ||= Types::Project.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['source'] = ProjectSource.stub(stub[:source]) unless stub[:source].nil?
        data['secondarySources'] = ProjectSources.stub(stub[:secondary_sources]) unless stub[:secondary_sources].nil?
        data['sourceVersion'] = stub[:source_version] unless stub[:source_version].nil?
        data['secondarySourceVersions'] = ProjectSecondarySourceVersions.stub(stub[:secondary_source_versions]) unless stub[:secondary_source_versions].nil?
        data['artifacts'] = ProjectArtifacts.stub(stub[:artifacts]) unless stub[:artifacts].nil?
        data['secondaryArtifacts'] = ProjectArtifactsList.stub(stub[:secondary_artifacts]) unless stub[:secondary_artifacts].nil?
        data['cache'] = ProjectCache.stub(stub[:cache]) unless stub[:cache].nil?
        data['environment'] = ProjectEnvironment.stub(stub[:environment]) unless stub[:environment].nil?
        data['serviceRole'] = stub[:service_role] unless stub[:service_role].nil?
        data['timeoutInMinutes'] = stub[:timeout_in_minutes] unless stub[:timeout_in_minutes].nil?
        data['queuedTimeoutInMinutes'] = stub[:queued_timeout_in_minutes] unless stub[:queued_timeout_in_minutes].nil?
        data['encryptionKey'] = stub[:encryption_key] unless stub[:encryption_key].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['lastModified'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified]).to_i unless stub[:last_modified].nil?
        data['webhook'] = Webhook.stub(stub[:webhook]) unless stub[:webhook].nil?
        data['vpcConfig'] = VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['badge'] = ProjectBadge.stub(stub[:badge]) unless stub[:badge].nil?
        data['logsConfig'] = LogsConfig.stub(stub[:logs_config]) unless stub[:logs_config].nil?
        data['fileSystemLocations'] = ProjectFileSystemLocations.stub(stub[:file_system_locations]) unless stub[:file_system_locations].nil?
        data['buildBatchConfig'] = ProjectBuildBatchConfig.stub(stub[:build_batch_config]) unless stub[:build_batch_config].nil?
        data['concurrentBuildLimit'] = stub[:concurrent_build_limit] unless stub[:concurrent_build_limit].nil?
        data['projectVisibility'] = stub[:project_visibility] unless stub[:project_visibility].nil?
        data['publicProjectAlias'] = stub[:public_project_alias] unless stub[:public_project_alias].nil?
        data['resourceAccessRole'] = stub[:resource_access_role] unless stub[:resource_access_role].nil?
        data
      end
    end

    # Structure Stubber for ProjectBadge
    class ProjectBadge
      def self.default(visited=[])
        return nil if visited.include?('ProjectBadge')
        visited = visited + ['ProjectBadge']
        {
          badge_enabled: false,
          badge_request_url: 'badge_request_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectBadge.new
        data = {}
        data['badgeEnabled'] = stub[:badge_enabled] unless stub[:badge_enabled].nil?
        data['badgeRequestUrl'] = stub[:badge_request_url] unless stub[:badge_request_url].nil?
        data
      end
    end

    # Structure Stubber for Webhook
    class Webhook
      def self.default(visited=[])
        return nil if visited.include?('Webhook')
        visited = visited + ['Webhook']
        {
          url: 'url',
          payload_url: 'payload_url',
          secret: 'secret',
          branch_filter: 'branch_filter',
          filter_groups: FilterGroups.default(visited),
          build_type: 'build_type',
          last_modified_secret: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Webhook.new
        data = {}
        data['url'] = stub[:url] unless stub[:url].nil?
        data['payloadUrl'] = stub[:payload_url] unless stub[:payload_url].nil?
        data['secret'] = stub[:secret] unless stub[:secret].nil?
        data['branchFilter'] = stub[:branch_filter] unless stub[:branch_filter].nil?
        data['filterGroups'] = FilterGroups.stub(stub[:filter_groups]) unless stub[:filter_groups].nil?
        data['buildType'] = stub[:build_type] unless stub[:build_type].nil?
        data['lastModifiedSecret'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_secret]).to_i unless stub[:last_modified_secret].nil?
        data
      end
    end

    # List Stubber for FilterGroups
    class FilterGroups
      def self.default(visited=[])
        return nil if visited.include?('FilterGroups')
        visited = visited + ['FilterGroups']
        [
          FilterGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FilterGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for FilterGroup
    class FilterGroup
      def self.default(visited=[])
        return nil if visited.include?('FilterGroup')
        visited = visited + ['FilterGroup']
        [
          WebhookFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WebhookFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WebhookFilter
    class WebhookFilter
      def self.default(visited=[])
        return nil if visited.include?('WebhookFilter')
        visited = visited + ['WebhookFilter']
        {
          type: 'type',
          pattern: 'pattern',
          exclude_matched_pattern: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::WebhookFilter.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['pattern'] = stub[:pattern] unless stub[:pattern].nil?
        data['excludeMatchedPattern'] = stub[:exclude_matched_pattern] unless stub[:exclude_matched_pattern].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for ProjectArtifactsList
    class ProjectArtifactsList
      def self.default(visited=[])
        return nil if visited.include?('ProjectArtifactsList')
        visited = visited + ['ProjectArtifactsList']
        [
          ProjectArtifacts.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ProjectArtifacts.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProjectArtifacts
    class ProjectArtifacts
      def self.default(visited=[])
        return nil if visited.include?('ProjectArtifacts')
        visited = visited + ['ProjectArtifacts']
        {
          type: 'type',
          location: 'location',
          path: 'path',
          namespace_type: 'namespace_type',
          name: 'name',
          packaging: 'packaging',
          override_artifact_name: false,
          encryption_disabled: false,
          artifact_identifier: 'artifact_identifier',
          bucket_owner_access: 'bucket_owner_access',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectArtifacts.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['location'] = stub[:location] unless stub[:location].nil?
        data['path'] = stub[:path] unless stub[:path].nil?
        data['namespaceType'] = stub[:namespace_type] unless stub[:namespace_type].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['packaging'] = stub[:packaging] unless stub[:packaging].nil?
        data['overrideArtifactName'] = stub[:override_artifact_name] unless stub[:override_artifact_name].nil?
        data['encryptionDisabled'] = stub[:encryption_disabled] unless stub[:encryption_disabled].nil?
        data['artifactIdentifier'] = stub[:artifact_identifier] unless stub[:artifact_identifier].nil?
        data['bucketOwnerAccess'] = stub[:bucket_owner_access] unless stub[:bucket_owner_access].nil?
        data
      end
    end

    # Operation Stubber for BatchGetReportGroups
    class BatchGetReportGroups
      def self.default(visited=[])
        {
          report_groups: ReportGroups.default(visited),
          report_groups_not_found: ReportGroupArns.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['reportGroups'] = ReportGroups.stub(stub[:report_groups]) unless stub[:report_groups].nil?
        data['reportGroupsNotFound'] = ReportGroupArns.stub(stub[:report_groups_not_found]) unless stub[:report_groups_not_found].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReportGroupArns
    class ReportGroupArns
      def self.default(visited=[])
        return nil if visited.include?('ReportGroupArns')
        visited = visited + ['ReportGroupArns']
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

    # List Stubber for ReportGroups
    class ReportGroups
      def self.default(visited=[])
        return nil if visited.include?('ReportGroups')
        visited = visited + ['ReportGroups']
        [
          ReportGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReportGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReportGroup
    class ReportGroup
      def self.default(visited=[])
        return nil if visited.include?('ReportGroup')
        visited = visited + ['ReportGroup']
        {
          arn: 'arn',
          name: 'name',
          type: 'type',
          export_config: ReportExportConfig.default(visited),
          created: Time.now,
          last_modified: Time.now,
          tags: TagList.default(visited),
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReportGroup.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['exportConfig'] = ReportExportConfig.stub(stub[:export_config]) unless stub[:export_config].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['lastModified'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified]).to_i unless stub[:last_modified].nil?
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for ReportExportConfig
    class ReportExportConfig
      def self.default(visited=[])
        return nil if visited.include?('ReportExportConfig')
        visited = visited + ['ReportExportConfig']
        {
          export_config_type: 'export_config_type',
          s3_destination: S3ReportExportConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ReportExportConfig.new
        data = {}
        data['exportConfigType'] = stub[:export_config_type] unless stub[:export_config_type].nil?
        data['s3Destination'] = S3ReportExportConfig.stub(stub[:s3_destination]) unless stub[:s3_destination].nil?
        data
      end
    end

    # Structure Stubber for S3ReportExportConfig
    class S3ReportExportConfig
      def self.default(visited=[])
        return nil if visited.include?('S3ReportExportConfig')
        visited = visited + ['S3ReportExportConfig']
        {
          bucket: 'bucket',
          bucket_owner: 'bucket_owner',
          path: 'path',
          packaging: 'packaging',
          encryption_key: 'encryption_key',
          encryption_disabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::S3ReportExportConfig.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['bucketOwner'] = stub[:bucket_owner] unless stub[:bucket_owner].nil?
        data['path'] = stub[:path] unless stub[:path].nil?
        data['packaging'] = stub[:packaging] unless stub[:packaging].nil?
        data['encryptionKey'] = stub[:encryption_key] unless stub[:encryption_key].nil?
        data['encryptionDisabled'] = stub[:encryption_disabled] unless stub[:encryption_disabled].nil?
        data
      end
    end

    # Operation Stubber for BatchGetReports
    class BatchGetReports
      def self.default(visited=[])
        {
          reports: Reports.default(visited),
          reports_not_found: ReportArns.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['reports'] = Reports.stub(stub[:reports]) unless stub[:reports].nil?
        data['reportsNotFound'] = ReportArns.stub(stub[:reports_not_found]) unless stub[:reports_not_found].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReportArns
    class ReportArns
      def self.default(visited=[])
        return nil if visited.include?('ReportArns')
        visited = visited + ['ReportArns']
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

    # List Stubber for Reports
    class Reports
      def self.default(visited=[])
        return nil if visited.include?('Reports')
        visited = visited + ['Reports']
        [
          Report.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Report.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Report
    class Report
      def self.default(visited=[])
        return nil if visited.include?('Report')
        visited = visited + ['Report']
        {
          arn: 'arn',
          type: 'type',
          name: 'name',
          report_group_arn: 'report_group_arn',
          execution_id: 'execution_id',
          status: 'status',
          created: Time.now,
          expired: Time.now,
          export_config: ReportExportConfig.default(visited),
          truncated: false,
          test_summary: TestReportSummary.default(visited),
          code_coverage_summary: CodeCoverageReportSummary.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Report.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['reportGroupArn'] = stub[:report_group_arn] unless stub[:report_group_arn].nil?
        data['executionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['created'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created]).to_i unless stub[:created].nil?
        data['expired'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expired]).to_i unless stub[:expired].nil?
        data['exportConfig'] = ReportExportConfig.stub(stub[:export_config]) unless stub[:export_config].nil?
        data['truncated'] = stub[:truncated] unless stub[:truncated].nil?
        data['testSummary'] = TestReportSummary.stub(stub[:test_summary]) unless stub[:test_summary].nil?
        data['codeCoverageSummary'] = CodeCoverageReportSummary.stub(stub[:code_coverage_summary]) unless stub[:code_coverage_summary].nil?
        data
      end
    end

    # Structure Stubber for CodeCoverageReportSummary
    class CodeCoverageReportSummary
      def self.default(visited=[])
        return nil if visited.include?('CodeCoverageReportSummary')
        visited = visited + ['CodeCoverageReportSummary']
        {
          line_coverage_percentage: 1.0,
          lines_covered: 1,
          lines_missed: 1,
          branch_coverage_percentage: 1.0,
          branches_covered: 1,
          branches_missed: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeCoverageReportSummary.new
        data = {}
        data['lineCoveragePercentage'] = Hearth::NumberHelper.serialize(stub[:line_coverage_percentage])
        data['linesCovered'] = stub[:lines_covered] unless stub[:lines_covered].nil?
        data['linesMissed'] = stub[:lines_missed] unless stub[:lines_missed].nil?
        data['branchCoveragePercentage'] = Hearth::NumberHelper.serialize(stub[:branch_coverage_percentage])
        data['branchesCovered'] = stub[:branches_covered] unless stub[:branches_covered].nil?
        data['branchesMissed'] = stub[:branches_missed] unless stub[:branches_missed].nil?
        data
      end
    end

    # Structure Stubber for TestReportSummary
    class TestReportSummary
      def self.default(visited=[])
        return nil if visited.include?('TestReportSummary')
        visited = visited + ['TestReportSummary']
        {
          total: 1,
          status_counts: ReportStatusCounts.default(visited),
          duration_in_nano_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TestReportSummary.new
        data = {}
        data['total'] = stub[:total] unless stub[:total].nil?
        data['statusCounts'] = ReportStatusCounts.stub(stub[:status_counts]) unless stub[:status_counts].nil?
        data['durationInNanoSeconds'] = stub[:duration_in_nano_seconds] unless stub[:duration_in_nano_seconds].nil?
        data
      end
    end

    # Map Stubber for ReportStatusCounts
    class ReportStatusCounts
      def self.default(visited=[])
        return nil if visited.include?('ReportStatusCounts')
        visited = visited + ['ReportStatusCounts']
        {
          test_key: 1
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

    # Operation Stubber for CreateProject
    class CreateProject
      def self.default(visited=[])
        {
          project: Project.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['project'] = Project.stub(stub[:project]) unless stub[:project].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateReportGroup
    class CreateReportGroup
      def self.default(visited=[])
        {
          report_group: ReportGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['reportGroup'] = ReportGroup.stub(stub[:report_group]) unless stub[:report_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateWebhook
    class CreateWebhook
      def self.default(visited=[])
        {
          webhook: Webhook.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['webhook'] = Webhook.stub(stub[:webhook]) unless stub[:webhook].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBuildBatch
    class DeleteBuildBatch
      def self.default(visited=[])
        {
          status_code: 'status_code',
          builds_deleted: BuildIds.default(visited),
          builds_not_deleted: BuildsNotDeleted.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['buildsDeleted'] = BuildIds.stub(stub[:builds_deleted]) unless stub[:builds_deleted].nil?
        data['buildsNotDeleted'] = BuildsNotDeleted.stub(stub[:builds_not_deleted]) unless stub[:builds_not_deleted].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteProject
    class DeleteProject
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteReport
    class DeleteReport
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteReportGroup
    class DeleteReportGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSourceCredentials
    class DeleteSourceCredentials
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteWebhook
    class DeleteWebhook
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeCodeCoverages
    class DescribeCodeCoverages
      def self.default(visited=[])
        {
          next_token: 'next_token',
          code_coverages: CodeCoverages.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['codeCoverages'] = CodeCoverages.stub(stub[:code_coverages]) unless stub[:code_coverages].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CodeCoverages
    class CodeCoverages
      def self.default(visited=[])
        return nil if visited.include?('CodeCoverages')
        visited = visited + ['CodeCoverages']
        [
          CodeCoverage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CodeCoverage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CodeCoverage
    class CodeCoverage
      def self.default(visited=[])
        return nil if visited.include?('CodeCoverage')
        visited = visited + ['CodeCoverage']
        {
          id: 'id',
          report_arn: 'report_arn',
          file_path: 'file_path',
          line_coverage_percentage: 1.0,
          lines_covered: 1,
          lines_missed: 1,
          branch_coverage_percentage: 1.0,
          branches_covered: 1,
          branches_missed: 1,
          expired: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeCoverage.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['reportARN'] = stub[:report_arn] unless stub[:report_arn].nil?
        data['filePath'] = stub[:file_path] unless stub[:file_path].nil?
        data['lineCoveragePercentage'] = Hearth::NumberHelper.serialize(stub[:line_coverage_percentage])
        data['linesCovered'] = stub[:lines_covered] unless stub[:lines_covered].nil?
        data['linesMissed'] = stub[:lines_missed] unless stub[:lines_missed].nil?
        data['branchCoveragePercentage'] = Hearth::NumberHelper.serialize(stub[:branch_coverage_percentage])
        data['branchesCovered'] = stub[:branches_covered] unless stub[:branches_covered].nil?
        data['branchesMissed'] = stub[:branches_missed] unless stub[:branches_missed].nil?
        data['expired'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expired]).to_i unless stub[:expired].nil?
        data
      end
    end

    # Operation Stubber for DescribeTestCases
    class DescribeTestCases
      def self.default(visited=[])
        {
          next_token: 'next_token',
          test_cases: TestCases.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['testCases'] = TestCases.stub(stub[:test_cases]) unless stub[:test_cases].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TestCases
    class TestCases
      def self.default(visited=[])
        return nil if visited.include?('TestCases')
        visited = visited + ['TestCases']
        [
          TestCase.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TestCase.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TestCase
    class TestCase
      def self.default(visited=[])
        return nil if visited.include?('TestCase')
        visited = visited + ['TestCase']
        {
          report_arn: 'report_arn',
          test_raw_data_path: 'test_raw_data_path',
          prefix: 'prefix',
          name: 'name',
          status: 'status',
          duration_in_nano_seconds: 1,
          message: 'message',
          expired: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TestCase.new
        data = {}
        data['reportArn'] = stub[:report_arn] unless stub[:report_arn].nil?
        data['testRawDataPath'] = stub[:test_raw_data_path] unless stub[:test_raw_data_path].nil?
        data['prefix'] = stub[:prefix] unless stub[:prefix].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['durationInNanoSeconds'] = stub[:duration_in_nano_seconds] unless stub[:duration_in_nano_seconds].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['expired'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expired]).to_i unless stub[:expired].nil?
        data
      end
    end

    # Operation Stubber for GetReportGroupTrend
    class GetReportGroupTrend
      def self.default(visited=[])
        {
          stats: ReportGroupTrendStats.default(visited),
          raw_data: ReportGroupTrendRawDataList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['stats'] = ReportGroupTrendStats.stub(stub[:stats]) unless stub[:stats].nil?
        data['rawData'] = ReportGroupTrendRawDataList.stub(stub[:raw_data]) unless stub[:raw_data].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReportGroupTrendRawDataList
    class ReportGroupTrendRawDataList
      def self.default(visited=[])
        return nil if visited.include?('ReportGroupTrendRawDataList')
        visited = visited + ['ReportGroupTrendRawDataList']
        [
          ReportWithRawData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReportWithRawData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReportWithRawData
    class ReportWithRawData
      def self.default(visited=[])
        return nil if visited.include?('ReportWithRawData')
        visited = visited + ['ReportWithRawData']
        {
          report_arn: 'report_arn',
          data: 'data',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReportWithRawData.new
        data = {}
        data['reportArn'] = stub[:report_arn] unless stub[:report_arn].nil?
        data['data'] = stub[:data] unless stub[:data].nil?
        data
      end
    end

    # Structure Stubber for ReportGroupTrendStats
    class ReportGroupTrendStats
      def self.default(visited=[])
        return nil if visited.include?('ReportGroupTrendStats')
        visited = visited + ['ReportGroupTrendStats']
        {
          average: 'average',
          max: 'max',
          min: 'min',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReportGroupTrendStats.new
        data = {}
        data['average'] = stub[:average] unless stub[:average].nil?
        data['max'] = stub[:max] unless stub[:max].nil?
        data['min'] = stub[:min] unless stub[:min].nil?
        data
      end
    end

    # Operation Stubber for GetResourcePolicy
    class GetResourcePolicy
      def self.default(visited=[])
        {
          policy: 'policy',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ImportSourceCredentials
    class ImportSourceCredentials
      def self.default(visited=[])
        {
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for InvalidateProjectCache
    class InvalidateProjectCache
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListBuildBatches
    class ListBuildBatches
      def self.default(visited=[])
        {
          ids: BuildBatchIds.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ids'] = BuildBatchIds.stub(stub[:ids]) unless stub[:ids].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListBuildBatchesForProject
    class ListBuildBatchesForProject
      def self.default(visited=[])
        {
          ids: BuildBatchIds.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ids'] = BuildBatchIds.stub(stub[:ids]) unless stub[:ids].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListBuilds
    class ListBuilds
      def self.default(visited=[])
        {
          ids: BuildIds.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ids'] = BuildIds.stub(stub[:ids]) unless stub[:ids].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListBuildsForProject
    class ListBuildsForProject
      def self.default(visited=[])
        {
          ids: BuildIds.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ids'] = BuildIds.stub(stub[:ids]) unless stub[:ids].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListCuratedEnvironmentImages
    class ListCuratedEnvironmentImages
      def self.default(visited=[])
        {
          platforms: EnvironmentPlatforms.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['platforms'] = EnvironmentPlatforms.stub(stub[:platforms]) unless stub[:platforms].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EnvironmentPlatforms
    class EnvironmentPlatforms
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentPlatforms')
        visited = visited + ['EnvironmentPlatforms']
        [
          EnvironmentPlatform.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EnvironmentPlatform.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnvironmentPlatform
    class EnvironmentPlatform
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentPlatform')
        visited = visited + ['EnvironmentPlatform']
        {
          platform: 'platform',
          languages: EnvironmentLanguages.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentPlatform.new
        data = {}
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['languages'] = EnvironmentLanguages.stub(stub[:languages]) unless stub[:languages].nil?
        data
      end
    end

    # List Stubber for EnvironmentLanguages
    class EnvironmentLanguages
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentLanguages')
        visited = visited + ['EnvironmentLanguages']
        [
          EnvironmentLanguage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EnvironmentLanguage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnvironmentLanguage
    class EnvironmentLanguage
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentLanguage')
        visited = visited + ['EnvironmentLanguage']
        {
          language: 'language',
          images: EnvironmentImages.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentLanguage.new
        data = {}
        data['language'] = stub[:language] unless stub[:language].nil?
        data['images'] = EnvironmentImages.stub(stub[:images]) unless stub[:images].nil?
        data
      end
    end

    # List Stubber for EnvironmentImages
    class EnvironmentImages
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentImages')
        visited = visited + ['EnvironmentImages']
        [
          EnvironmentImage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EnvironmentImage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EnvironmentImage
    class EnvironmentImage
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentImage')
        visited = visited + ['EnvironmentImage']
        {
          name: 'name',
          description: 'description',
          versions: ImageVersions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentImage.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['versions'] = ImageVersions.stub(stub[:versions]) unless stub[:versions].nil?
        data
      end
    end

    # List Stubber for ImageVersions
    class ImageVersions
      def self.default(visited=[])
        return nil if visited.include?('ImageVersions')
        visited = visited + ['ImageVersions']
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

    # Operation Stubber for ListProjects
    class ListProjects
      def self.default(visited=[])
        {
          next_token: 'next_token',
          projects: ProjectNames.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['projects'] = ProjectNames.stub(stub[:projects]) unless stub[:projects].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListReportGroups
    class ListReportGroups
      def self.default(visited=[])
        {
          next_token: 'next_token',
          report_groups: ReportGroupArns.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['reportGroups'] = ReportGroupArns.stub(stub[:report_groups]) unless stub[:report_groups].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListReports
    class ListReports
      def self.default(visited=[])
        {
          next_token: 'next_token',
          reports: ReportArns.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['reports'] = ReportArns.stub(stub[:reports]) unless stub[:reports].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListReportsForReportGroup
    class ListReportsForReportGroup
      def self.default(visited=[])
        {
          next_token: 'next_token',
          reports: ReportArns.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['reports'] = ReportArns.stub(stub[:reports]) unless stub[:reports].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListSharedProjects
    class ListSharedProjects
      def self.default(visited=[])
        {
          next_token: 'next_token',
          projects: ProjectArns.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['projects'] = ProjectArns.stub(stub[:projects]) unless stub[:projects].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProjectArns
    class ProjectArns
      def self.default(visited=[])
        return nil if visited.include?('ProjectArns')
        visited = visited + ['ProjectArns']
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

    # Operation Stubber for ListSharedReportGroups
    class ListSharedReportGroups
      def self.default(visited=[])
        {
          next_token: 'next_token',
          report_groups: ReportGroupArns.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['reportGroups'] = ReportGroupArns.stub(stub[:report_groups]) unless stub[:report_groups].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListSourceCredentials
    class ListSourceCredentials
      def self.default(visited=[])
        {
          source_credentials_infos: SourceCredentialsInfos.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['sourceCredentialsInfos'] = SourceCredentialsInfos.stub(stub[:source_credentials_infos]) unless stub[:source_credentials_infos].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SourceCredentialsInfos
    class SourceCredentialsInfos
      def self.default(visited=[])
        return nil if visited.include?('SourceCredentialsInfos')
        visited = visited + ['SourceCredentialsInfos']
        [
          SourceCredentialsInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SourceCredentialsInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SourceCredentialsInfo
    class SourceCredentialsInfo
      def self.default(visited=[])
        return nil if visited.include?('SourceCredentialsInfo')
        visited = visited + ['SourceCredentialsInfo']
        {
          arn: 'arn',
          server_type: 'server_type',
          auth_type: 'auth_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceCredentialsInfo.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['serverType'] = stub[:server_type] unless stub[:server_type].nil?
        data['authType'] = stub[:auth_type] unless stub[:auth_type].nil?
        data
      end
    end

    # Operation Stubber for PutResourcePolicy
    class PutResourcePolicy
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['resourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RetryBuild
    class RetryBuild
      def self.default(visited=[])
        {
          build: Build.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['build'] = Build.stub(stub[:build]) unless stub[:build].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RetryBuildBatch
    class RetryBuildBatch
      def self.default(visited=[])
        {
          build_batch: BuildBatch.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['buildBatch'] = BuildBatch.stub(stub[:build_batch]) unless stub[:build_batch].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartBuild
    class StartBuild
      def self.default(visited=[])
        {
          build: Build.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['build'] = Build.stub(stub[:build]) unless stub[:build].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartBuildBatch
    class StartBuildBatch
      def self.default(visited=[])
        {
          build_batch: BuildBatch.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['buildBatch'] = BuildBatch.stub(stub[:build_batch]) unless stub[:build_batch].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopBuild
    class StopBuild
      def self.default(visited=[])
        {
          build: Build.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['build'] = Build.stub(stub[:build]) unless stub[:build].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopBuildBatch
    class StopBuildBatch
      def self.default(visited=[])
        {
          build_batch: BuildBatch.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['buildBatch'] = BuildBatch.stub(stub[:build_batch]) unless stub[:build_batch].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateProject
    class UpdateProject
      def self.default(visited=[])
        {
          project: Project.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['project'] = Project.stub(stub[:project]) unless stub[:project].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateProjectVisibility
    class UpdateProjectVisibility
      def self.default(visited=[])
        {
          project_arn: 'project_arn',
          public_project_alias: 'public_project_alias',
          project_visibility: 'project_visibility',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['projectArn'] = stub[:project_arn] unless stub[:project_arn].nil?
        data['publicProjectAlias'] = stub[:public_project_alias] unless stub[:public_project_alias].nil?
        data['projectVisibility'] = stub[:project_visibility] unless stub[:project_visibility].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateReportGroup
    class UpdateReportGroup
      def self.default(visited=[])
        {
          report_group: ReportGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['reportGroup'] = ReportGroup.stub(stub[:report_group]) unless stub[:report_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateWebhook
    class UpdateWebhook
      def self.default(visited=[])
        {
          webhook: Webhook.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['webhook'] = Webhook.stub(stub[:webhook]) unless stub[:webhook].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
