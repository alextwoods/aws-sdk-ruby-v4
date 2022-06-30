# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CodeBuild
  module Parsers

    # Operation Parser for BatchDeleteBuilds
    class BatchDeleteBuilds
      def self.parse(http_resp)
        data = Types::BatchDeleteBuildsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.builds_deleted = (Parsers::BuildIds.parse(map['buildsDeleted']) unless map['buildsDeleted'].nil?)
        data.builds_not_deleted = (Parsers::BuildsNotDeleted.parse(map['buildsNotDeleted']) unless map['buildsNotDeleted'].nil?)
        data
      end
    end

    class BuildsNotDeleted
      def self.parse(list)
        list.map do |value|
          Parsers::BuildNotDeleted.parse(value) unless value.nil?
        end
      end
    end

    class BuildNotDeleted
      def self.parse(map)
        data = Types::BuildNotDeleted.new
        data.id = map['id']
        data.status_code = map['statusCode']
        return data
      end
    end

    class BuildIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for BatchGetBuildBatches
    class BatchGetBuildBatches
      def self.parse(http_resp)
        data = Types::BatchGetBuildBatchesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.build_batches = (Parsers::BuildBatches.parse(map['buildBatches']) unless map['buildBatches'].nil?)
        data.build_batches_not_found = (Parsers::BuildBatchIds.parse(map['buildBatchesNotFound']) unless map['buildBatchesNotFound'].nil?)
        data
      end
    end

    class BuildBatchIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class BuildBatches
      def self.parse(list)
        list.map do |value|
          Parsers::BuildBatch.parse(value) unless value.nil?
        end
      end
    end

    class BuildBatch
      def self.parse(map)
        data = Types::BuildBatch.new
        data.id = map['id']
        data.arn = map['arn']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.current_phase = map['currentPhase']
        data.build_batch_status = map['buildBatchStatus']
        data.source_version = map['sourceVersion']
        data.resolved_source_version = map['resolvedSourceVersion']
        data.project_name = map['projectName']
        data.phases = (Parsers::BuildBatchPhases.parse(map['phases']) unless map['phases'].nil?)
        data.source = (Parsers::ProjectSource.parse(map['source']) unless map['source'].nil?)
        data.secondary_sources = (Parsers::ProjectSources.parse(map['secondarySources']) unless map['secondarySources'].nil?)
        data.secondary_source_versions = (Parsers::ProjectSecondarySourceVersions.parse(map['secondarySourceVersions']) unless map['secondarySourceVersions'].nil?)
        data.artifacts = (Parsers::BuildArtifacts.parse(map['artifacts']) unless map['artifacts'].nil?)
        data.secondary_artifacts = (Parsers::BuildArtifactsList.parse(map['secondaryArtifacts']) unless map['secondaryArtifacts'].nil?)
        data.cache = (Parsers::ProjectCache.parse(map['cache']) unless map['cache'].nil?)
        data.environment = (Parsers::ProjectEnvironment.parse(map['environment']) unless map['environment'].nil?)
        data.service_role = map['serviceRole']
        data.log_config = (Parsers::LogsConfig.parse(map['logConfig']) unless map['logConfig'].nil?)
        data.build_timeout_in_minutes = map['buildTimeoutInMinutes']
        data.queued_timeout_in_minutes = map['queuedTimeoutInMinutes']
        data.complete = map['complete']
        data.initiator = map['initiator']
        data.vpc_config = (Parsers::VpcConfig.parse(map['vpcConfig']) unless map['vpcConfig'].nil?)
        data.encryption_key = map['encryptionKey']
        data.build_batch_number = map['buildBatchNumber']
        data.file_system_locations = (Parsers::ProjectFileSystemLocations.parse(map['fileSystemLocations']) unless map['fileSystemLocations'].nil?)
        data.build_batch_config = (Parsers::ProjectBuildBatchConfig.parse(map['buildBatchConfig']) unless map['buildBatchConfig'].nil?)
        data.build_groups = (Parsers::BuildGroups.parse(map['buildGroups']) unless map['buildGroups'].nil?)
        data.debug_session_enabled = map['debugSessionEnabled']
        return data
      end
    end

    class BuildGroups
      def self.parse(list)
        list.map do |value|
          Parsers::BuildGroup.parse(value) unless value.nil?
        end
      end
    end

    class BuildGroup
      def self.parse(map)
        data = Types::BuildGroup.new
        data.identifier = map['identifier']
        data.depends_on = (Parsers::Identifiers.parse(map['dependsOn']) unless map['dependsOn'].nil?)
        data.ignore_failure = map['ignoreFailure']
        data.current_build_summary = (Parsers::BuildSummary.parse(map['currentBuildSummary']) unless map['currentBuildSummary'].nil?)
        data.prior_build_summary_list = (Parsers::BuildSummaries.parse(map['priorBuildSummaryList']) unless map['priorBuildSummaryList'].nil?)
        return data
      end
    end

    class BuildSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::BuildSummary.parse(value) unless value.nil?
        end
      end
    end

    class BuildSummary
      def self.parse(map)
        data = Types::BuildSummary.new
        data.arn = map['arn']
        data.requested_on = Time.at(map['requestedOn'].to_i) if map['requestedOn']
        data.build_status = map['buildStatus']
        data.primary_artifact = (Parsers::ResolvedArtifact.parse(map['primaryArtifact']) unless map['primaryArtifact'].nil?)
        data.secondary_artifacts = (Parsers::ResolvedSecondaryArtifacts.parse(map['secondaryArtifacts']) unless map['secondaryArtifacts'].nil?)
        return data
      end
    end

    class ResolvedSecondaryArtifacts
      def self.parse(list)
        list.map do |value|
          Parsers::ResolvedArtifact.parse(value) unless value.nil?
        end
      end
    end

    class ResolvedArtifact
      def self.parse(map)
        data = Types::ResolvedArtifact.new
        data.type = map['type']
        data.location = map['location']
        data.identifier = map['identifier']
        return data
      end
    end

    class Identifiers
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ProjectBuildBatchConfig
      def self.parse(map)
        data = Types::ProjectBuildBatchConfig.new
        data.service_role = map['serviceRole']
        data.combine_artifacts = map['combineArtifacts']
        data.restrictions = (Parsers::BatchRestrictions.parse(map['restrictions']) unless map['restrictions'].nil?)
        data.timeout_in_mins = map['timeoutInMins']
        data.batch_report_mode = map['batchReportMode']
        return data
      end
    end

    class BatchRestrictions
      def self.parse(map)
        data = Types::BatchRestrictions.new
        data.maximum_builds_allowed = map['maximumBuildsAllowed']
        data.compute_types_allowed = (Parsers::ComputeTypesAllowed.parse(map['computeTypesAllowed']) unless map['computeTypesAllowed'].nil?)
        return data
      end
    end

    class ComputeTypesAllowed
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ProjectFileSystemLocations
      def self.parse(list)
        list.map do |value|
          Parsers::ProjectFileSystemLocation.parse(value) unless value.nil?
        end
      end
    end

    class ProjectFileSystemLocation
      def self.parse(map)
        data = Types::ProjectFileSystemLocation.new
        data.type = map['type']
        data.location = map['location']
        data.mount_point = map['mountPoint']
        data.identifier = map['identifier']
        data.mount_options = map['mountOptions']
        return data
      end
    end

    class VpcConfig
      def self.parse(map)
        data = Types::VpcConfig.new
        data.vpc_id = map['vpcId']
        data.subnets = (Parsers::Subnets.parse(map['subnets']) unless map['subnets'].nil?)
        data.security_group_ids = (Parsers::SecurityGroupIds.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        return data
      end
    end

    class SecurityGroupIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Subnets
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class LogsConfig
      def self.parse(map)
        data = Types::LogsConfig.new
        data.cloud_watch_logs = (Parsers::CloudWatchLogsConfig.parse(map['cloudWatchLogs']) unless map['cloudWatchLogs'].nil?)
        data.s3_logs = (Parsers::S3LogsConfig.parse(map['s3Logs']) unless map['s3Logs'].nil?)
        return data
      end
    end

    class S3LogsConfig
      def self.parse(map)
        data = Types::S3LogsConfig.new
        data.status = map['status']
        data.location = map['location']
        data.encryption_disabled = map['encryptionDisabled']
        data.bucket_owner_access = map['bucketOwnerAccess']
        return data
      end
    end

    class CloudWatchLogsConfig
      def self.parse(map)
        data = Types::CloudWatchLogsConfig.new
        data.status = map['status']
        data.group_name = map['groupName']
        data.stream_name = map['streamName']
        return data
      end
    end

    class ProjectEnvironment
      def self.parse(map)
        data = Types::ProjectEnvironment.new
        data.type = map['type']
        data.image = map['image']
        data.compute_type = map['computeType']
        data.environment_variables = (Parsers::EnvironmentVariables.parse(map['environmentVariables']) unless map['environmentVariables'].nil?)
        data.privileged_mode = map['privilegedMode']
        data.certificate = map['certificate']
        data.registry_credential = (Parsers::RegistryCredential.parse(map['registryCredential']) unless map['registryCredential'].nil?)
        data.image_pull_credentials_type = map['imagePullCredentialsType']
        return data
      end
    end

    class RegistryCredential
      def self.parse(map)
        data = Types::RegistryCredential.new
        data.credential = map['credential']
        data.credential_provider = map['credentialProvider']
        return data
      end
    end

    class EnvironmentVariables
      def self.parse(list)
        list.map do |value|
          Parsers::EnvironmentVariable.parse(value) unless value.nil?
        end
      end
    end

    class EnvironmentVariable
      def self.parse(map)
        data = Types::EnvironmentVariable.new
        data.name = map['name']
        data.value = map['value']
        data.type = map['type']
        return data
      end
    end

    class ProjectCache
      def self.parse(map)
        data = Types::ProjectCache.new
        data.type = map['type']
        data.location = map['location']
        data.modes = (Parsers::ProjectCacheModes.parse(map['modes']) unless map['modes'].nil?)
        return data
      end
    end

    class ProjectCacheModes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class BuildArtifactsList
      def self.parse(list)
        list.map do |value|
          Parsers::BuildArtifacts.parse(value) unless value.nil?
        end
      end
    end

    class BuildArtifacts
      def self.parse(map)
        data = Types::BuildArtifacts.new
        data.location = map['location']
        data.sha256sum = map['sha256sum']
        data.md5sum = map['md5sum']
        data.override_artifact_name = map['overrideArtifactName']
        data.encryption_disabled = map['encryptionDisabled']
        data.artifact_identifier = map['artifactIdentifier']
        data.bucket_owner_access = map['bucketOwnerAccess']
        return data
      end
    end

    class ProjectSecondarySourceVersions
      def self.parse(list)
        list.map do |value|
          Parsers::ProjectSourceVersion.parse(value) unless value.nil?
        end
      end
    end

    class ProjectSourceVersion
      def self.parse(map)
        data = Types::ProjectSourceVersion.new
        data.source_identifier = map['sourceIdentifier']
        data.source_version = map['sourceVersion']
        return data
      end
    end

    class ProjectSources
      def self.parse(list)
        list.map do |value|
          Parsers::ProjectSource.parse(value) unless value.nil?
        end
      end
    end

    class ProjectSource
      def self.parse(map)
        data = Types::ProjectSource.new
        data.type = map['type']
        data.location = map['location']
        data.git_clone_depth = map['gitCloneDepth']
        data.git_submodules_config = (Parsers::GitSubmodulesConfig.parse(map['gitSubmodulesConfig']) unless map['gitSubmodulesConfig'].nil?)
        data.buildspec = map['buildspec']
        data.auth = (Parsers::SourceAuth.parse(map['auth']) unless map['auth'].nil?)
        data.report_build_status = map['reportBuildStatus']
        data.build_status_config = (Parsers::BuildStatusConfig.parse(map['buildStatusConfig']) unless map['buildStatusConfig'].nil?)
        data.insecure_ssl = map['insecureSsl']
        data.source_identifier = map['sourceIdentifier']
        return data
      end
    end

    class BuildStatusConfig
      def self.parse(map)
        data = Types::BuildStatusConfig.new
        data.context = map['context']
        data.target_url = map['targetUrl']
        return data
      end
    end

    class SourceAuth
      def self.parse(map)
        data = Types::SourceAuth.new
        data.type = map['type']
        data.resource = map['resource']
        return data
      end
    end

    class GitSubmodulesConfig
      def self.parse(map)
        data = Types::GitSubmodulesConfig.new
        data.fetch_submodules = map['fetchSubmodules']
        return data
      end
    end

    class BuildBatchPhases
      def self.parse(list)
        list.map do |value|
          Parsers::BuildBatchPhase.parse(value) unless value.nil?
        end
      end
    end

    class BuildBatchPhase
      def self.parse(map)
        data = Types::BuildBatchPhase.new
        data.phase_type = map['phaseType']
        data.phase_status = map['phaseStatus']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.duration_in_seconds = map['durationInSeconds']
        data.contexts = (Parsers::PhaseContexts.parse(map['contexts']) unless map['contexts'].nil?)
        return data
      end
    end

    class PhaseContexts
      def self.parse(list)
        list.map do |value|
          Parsers::PhaseContext.parse(value) unless value.nil?
        end
      end
    end

    class PhaseContext
      def self.parse(map)
        data = Types::PhaseContext.new
        data.status_code = map['statusCode']
        data.message = map['message']
        return data
      end
    end

    # Operation Parser for BatchGetBuilds
    class BatchGetBuilds
      def self.parse(http_resp)
        data = Types::BatchGetBuildsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.builds = (Parsers::Builds.parse(map['builds']) unless map['builds'].nil?)
        data.builds_not_found = (Parsers::BuildIds.parse(map['buildsNotFound']) unless map['buildsNotFound'].nil?)
        data
      end
    end

    class Builds
      def self.parse(list)
        list.map do |value|
          Parsers::Build.parse(value) unless value.nil?
        end
      end
    end

    class Build
      def self.parse(map)
        data = Types::Build.new
        data.id = map['id']
        data.arn = map['arn']
        data.build_number = map['buildNumber']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.current_phase = map['currentPhase']
        data.build_status = map['buildStatus']
        data.source_version = map['sourceVersion']
        data.resolved_source_version = map['resolvedSourceVersion']
        data.project_name = map['projectName']
        data.phases = (Parsers::BuildPhases.parse(map['phases']) unless map['phases'].nil?)
        data.source = (Parsers::ProjectSource.parse(map['source']) unless map['source'].nil?)
        data.secondary_sources = (Parsers::ProjectSources.parse(map['secondarySources']) unless map['secondarySources'].nil?)
        data.secondary_source_versions = (Parsers::ProjectSecondarySourceVersions.parse(map['secondarySourceVersions']) unless map['secondarySourceVersions'].nil?)
        data.artifacts = (Parsers::BuildArtifacts.parse(map['artifacts']) unless map['artifacts'].nil?)
        data.secondary_artifacts = (Parsers::BuildArtifactsList.parse(map['secondaryArtifacts']) unless map['secondaryArtifacts'].nil?)
        data.cache = (Parsers::ProjectCache.parse(map['cache']) unless map['cache'].nil?)
        data.environment = (Parsers::ProjectEnvironment.parse(map['environment']) unless map['environment'].nil?)
        data.service_role = map['serviceRole']
        data.logs = (Parsers::LogsLocation.parse(map['logs']) unless map['logs'].nil?)
        data.timeout_in_minutes = map['timeoutInMinutes']
        data.queued_timeout_in_minutes = map['queuedTimeoutInMinutes']
        data.build_complete = map['buildComplete']
        data.initiator = map['initiator']
        data.vpc_config = (Parsers::VpcConfig.parse(map['vpcConfig']) unless map['vpcConfig'].nil?)
        data.network_interface = (Parsers::NetworkInterface.parse(map['networkInterface']) unless map['networkInterface'].nil?)
        data.encryption_key = map['encryptionKey']
        data.exported_environment_variables = (Parsers::ExportedEnvironmentVariables.parse(map['exportedEnvironmentVariables']) unless map['exportedEnvironmentVariables'].nil?)
        data.report_arns = (Parsers::BuildReportArns.parse(map['reportArns']) unless map['reportArns'].nil?)
        data.file_system_locations = (Parsers::ProjectFileSystemLocations.parse(map['fileSystemLocations']) unless map['fileSystemLocations'].nil?)
        data.debug_session = (Parsers::DebugSession.parse(map['debugSession']) unless map['debugSession'].nil?)
        data.build_batch_arn = map['buildBatchArn']
        return data
      end
    end

    class DebugSession
      def self.parse(map)
        data = Types::DebugSession.new
        data.session_enabled = map['sessionEnabled']
        data.session_target = map['sessionTarget']
        return data
      end
    end

    class BuildReportArns
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ExportedEnvironmentVariables
      def self.parse(list)
        list.map do |value|
          Parsers::ExportedEnvironmentVariable.parse(value) unless value.nil?
        end
      end
    end

    class ExportedEnvironmentVariable
      def self.parse(map)
        data = Types::ExportedEnvironmentVariable.new
        data.name = map['name']
        data.value = map['value']
        return data
      end
    end

    class NetworkInterface
      def self.parse(map)
        data = Types::NetworkInterface.new
        data.subnet_id = map['subnetId']
        data.network_interface_id = map['networkInterfaceId']
        return data
      end
    end

    class LogsLocation
      def self.parse(map)
        data = Types::LogsLocation.new
        data.group_name = map['groupName']
        data.stream_name = map['streamName']
        data.deep_link = map['deepLink']
        data.s3_deep_link = map['s3DeepLink']
        data.cloud_watch_logs_arn = map['cloudWatchLogsArn']
        data.s3_logs_arn = map['s3LogsArn']
        data.cloud_watch_logs = (Parsers::CloudWatchLogsConfig.parse(map['cloudWatchLogs']) unless map['cloudWatchLogs'].nil?)
        data.s3_logs = (Parsers::S3LogsConfig.parse(map['s3Logs']) unless map['s3Logs'].nil?)
        return data
      end
    end

    class BuildPhases
      def self.parse(list)
        list.map do |value|
          Parsers::BuildPhase.parse(value) unless value.nil?
        end
      end
    end

    class BuildPhase
      def self.parse(map)
        data = Types::BuildPhase.new
        data.phase_type = map['phaseType']
        data.phase_status = map['phaseStatus']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.duration_in_seconds = map['durationInSeconds']
        data.contexts = (Parsers::PhaseContexts.parse(map['contexts']) unless map['contexts'].nil?)
        return data
      end
    end

    # Operation Parser for BatchGetProjects
    class BatchGetProjects
      def self.parse(http_resp)
        data = Types::BatchGetProjectsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.projects = (Parsers::Projects.parse(map['projects']) unless map['projects'].nil?)
        data.projects_not_found = (Parsers::ProjectNames.parse(map['projectsNotFound']) unless map['projectsNotFound'].nil?)
        data
      end
    end

    class ProjectNames
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Projects
      def self.parse(list)
        list.map do |value|
          Parsers::Project.parse(value) unless value.nil?
        end
      end
    end

    class Project
      def self.parse(map)
        data = Types::Project.new
        data.name = map['name']
        data.arn = map['arn']
        data.description = map['description']
        data.source = (Parsers::ProjectSource.parse(map['source']) unless map['source'].nil?)
        data.secondary_sources = (Parsers::ProjectSources.parse(map['secondarySources']) unless map['secondarySources'].nil?)
        data.source_version = map['sourceVersion']
        data.secondary_source_versions = (Parsers::ProjectSecondarySourceVersions.parse(map['secondarySourceVersions']) unless map['secondarySourceVersions'].nil?)
        data.artifacts = (Parsers::ProjectArtifacts.parse(map['artifacts']) unless map['artifacts'].nil?)
        data.secondary_artifacts = (Parsers::ProjectArtifactsList.parse(map['secondaryArtifacts']) unless map['secondaryArtifacts'].nil?)
        data.cache = (Parsers::ProjectCache.parse(map['cache']) unless map['cache'].nil?)
        data.environment = (Parsers::ProjectEnvironment.parse(map['environment']) unless map['environment'].nil?)
        data.service_role = map['serviceRole']
        data.timeout_in_minutes = map['timeoutInMinutes']
        data.queued_timeout_in_minutes = map['queuedTimeoutInMinutes']
        data.encryption_key = map['encryptionKey']
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data.created = Time.at(map['created'].to_i) if map['created']
        data.last_modified = Time.at(map['lastModified'].to_i) if map['lastModified']
        data.webhook = (Parsers::Webhook.parse(map['webhook']) unless map['webhook'].nil?)
        data.vpc_config = (Parsers::VpcConfig.parse(map['vpcConfig']) unless map['vpcConfig'].nil?)
        data.badge = (Parsers::ProjectBadge.parse(map['badge']) unless map['badge'].nil?)
        data.logs_config = (Parsers::LogsConfig.parse(map['logsConfig']) unless map['logsConfig'].nil?)
        data.file_system_locations = (Parsers::ProjectFileSystemLocations.parse(map['fileSystemLocations']) unless map['fileSystemLocations'].nil?)
        data.build_batch_config = (Parsers::ProjectBuildBatchConfig.parse(map['buildBatchConfig']) unless map['buildBatchConfig'].nil?)
        data.concurrent_build_limit = map['concurrentBuildLimit']
        data.project_visibility = map['projectVisibility']
        data.public_project_alias = map['publicProjectAlias']
        data.resource_access_role = map['resourceAccessRole']
        return data
      end
    end

    class ProjectBadge
      def self.parse(map)
        data = Types::ProjectBadge.new
        data.badge_enabled = map['badgeEnabled']
        data.badge_request_url = map['badgeRequestUrl']
        return data
      end
    end

    class Webhook
      def self.parse(map)
        data = Types::Webhook.new
        data.url = map['url']
        data.payload_url = map['payloadUrl']
        data.secret = map['secret']
        data.branch_filter = map['branchFilter']
        data.filter_groups = (Parsers::FilterGroups.parse(map['filterGroups']) unless map['filterGroups'].nil?)
        data.build_type = map['buildType']
        data.last_modified_secret = Time.at(map['lastModifiedSecret'].to_i) if map['lastModifiedSecret']
        return data
      end
    end

    class FilterGroups
      def self.parse(list)
        list.map do |value|
          Parsers::FilterGroup.parse(value) unless value.nil?
        end
      end
    end

    class FilterGroup
      def self.parse(list)
        list.map do |value|
          Parsers::WebhookFilter.parse(value) unless value.nil?
        end
      end
    end

    class WebhookFilter
      def self.parse(map)
        data = Types::WebhookFilter.new
        data.type = map['type']
        data.pattern = map['pattern']
        data.exclude_matched_pattern = map['excludeMatchedPattern']
        return data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class ProjectArtifactsList
      def self.parse(list)
        list.map do |value|
          Parsers::ProjectArtifacts.parse(value) unless value.nil?
        end
      end
    end

    class ProjectArtifacts
      def self.parse(map)
        data = Types::ProjectArtifacts.new
        data.type = map['type']
        data.location = map['location']
        data.path = map['path']
        data.namespace_type = map['namespaceType']
        data.name = map['name']
        data.packaging = map['packaging']
        data.override_artifact_name = map['overrideArtifactName']
        data.encryption_disabled = map['encryptionDisabled']
        data.artifact_identifier = map['artifactIdentifier']
        data.bucket_owner_access = map['bucketOwnerAccess']
        return data
      end
    end

    # Operation Parser for BatchGetReportGroups
    class BatchGetReportGroups
      def self.parse(http_resp)
        data = Types::BatchGetReportGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.report_groups = (Parsers::ReportGroups.parse(map['reportGroups']) unless map['reportGroups'].nil?)
        data.report_groups_not_found = (Parsers::ReportGroupArns.parse(map['reportGroupsNotFound']) unless map['reportGroupsNotFound'].nil?)
        data
      end
    end

    class ReportGroupArns
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ReportGroups
      def self.parse(list)
        list.map do |value|
          Parsers::ReportGroup.parse(value) unless value.nil?
        end
      end
    end

    class ReportGroup
      def self.parse(map)
        data = Types::ReportGroup.new
        data.arn = map['arn']
        data.name = map['name']
        data.type = map['type']
        data.export_config = (Parsers::ReportExportConfig.parse(map['exportConfig']) unless map['exportConfig'].nil?)
        data.created = Time.at(map['created'].to_i) if map['created']
        data.last_modified = Time.at(map['lastModified'].to_i) if map['lastModified']
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data.status = map['status']
        return data
      end
    end

    class ReportExportConfig
      def self.parse(map)
        data = Types::ReportExportConfig.new
        data.export_config_type = map['exportConfigType']
        data.s3_destination = (Parsers::S3ReportExportConfig.parse(map['s3Destination']) unless map['s3Destination'].nil?)
        return data
      end
    end

    class S3ReportExportConfig
      def self.parse(map)
        data = Types::S3ReportExportConfig.new
        data.bucket = map['bucket']
        data.bucket_owner = map['bucketOwner']
        data.path = map['path']
        data.packaging = map['packaging']
        data.encryption_key = map['encryptionKey']
        data.encryption_disabled = map['encryptionDisabled']
        return data
      end
    end

    # Operation Parser for BatchGetReports
    class BatchGetReports
      def self.parse(http_resp)
        data = Types::BatchGetReportsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.reports = (Parsers::Reports.parse(map['reports']) unless map['reports'].nil?)
        data.reports_not_found = (Parsers::ReportArns.parse(map['reportsNotFound']) unless map['reportsNotFound'].nil?)
        data
      end
    end

    class ReportArns
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Reports
      def self.parse(list)
        list.map do |value|
          Parsers::Report.parse(value) unless value.nil?
        end
      end
    end

    class Report
      def self.parse(map)
        data = Types::Report.new
        data.arn = map['arn']
        data.type = map['type']
        data.name = map['name']
        data.report_group_arn = map['reportGroupArn']
        data.execution_id = map['executionId']
        data.status = map['status']
        data.created = Time.at(map['created'].to_i) if map['created']
        data.expired = Time.at(map['expired'].to_i) if map['expired']
        data.export_config = (Parsers::ReportExportConfig.parse(map['exportConfig']) unless map['exportConfig'].nil?)
        data.truncated = map['truncated']
        data.test_summary = (Parsers::TestReportSummary.parse(map['testSummary']) unless map['testSummary'].nil?)
        data.code_coverage_summary = (Parsers::CodeCoverageReportSummary.parse(map['codeCoverageSummary']) unless map['codeCoverageSummary'].nil?)
        return data
      end
    end

    class CodeCoverageReportSummary
      def self.parse(map)
        data = Types::CodeCoverageReportSummary.new
        data.line_coverage_percentage = Hearth::NumberHelper.deserialize(map['lineCoveragePercentage'])
        data.lines_covered = map['linesCovered']
        data.lines_missed = map['linesMissed']
        data.branch_coverage_percentage = Hearth::NumberHelper.deserialize(map['branchCoveragePercentage'])
        data.branches_covered = map['branchesCovered']
        data.branches_missed = map['branchesMissed']
        return data
      end
    end

    class TestReportSummary
      def self.parse(map)
        data = Types::TestReportSummary.new
        data.total = map['total']
        data.status_counts = (Parsers::ReportStatusCounts.parse(map['statusCounts']) unless map['statusCounts'].nil?)
        data.duration_in_nano_seconds = map['durationInNanoSeconds']
        return data
      end
    end

    class ReportStatusCounts
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateProject
    class CreateProject
      def self.parse(http_resp)
        data = Types::CreateProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.project = (Parsers::Project.parse(map['project']) unless map['project'].nil?)
        data
      end
    end

    # Error Parser for AccountLimitExceededException
    class AccountLimitExceededException
      def self.parse(http_resp)
        data = Types::AccountLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateReportGroup
    class CreateReportGroup
      def self.parse(http_resp)
        data = Types::CreateReportGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.report_group = (Parsers::ReportGroup.parse(map['reportGroup']) unless map['reportGroup'].nil?)
        data
      end
    end

    # Operation Parser for CreateWebhook
    class CreateWebhook
      def self.parse(http_resp)
        data = Types::CreateWebhookOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.webhook = (Parsers::Webhook.parse(map['webhook']) unless map['webhook'].nil?)
        data
      end
    end

    # Error Parser for OAuthProviderException
    class OAuthProviderException
      def self.parse(http_resp)
        data = Types::OAuthProviderException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteBuildBatch
    class DeleteBuildBatch
      def self.parse(http_resp)
        data = Types::DeleteBuildBatchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status_code = map['statusCode']
        data.builds_deleted = (Parsers::BuildIds.parse(map['buildsDeleted']) unless map['buildsDeleted'].nil?)
        data.builds_not_deleted = (Parsers::BuildsNotDeleted.parse(map['buildsNotDeleted']) unless map['buildsNotDeleted'].nil?)
        data
      end
    end

    # Operation Parser for DeleteProject
    class DeleteProject
      def self.parse(http_resp)
        data = Types::DeleteProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteReport
    class DeleteReport
      def self.parse(http_resp)
        data = Types::DeleteReportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteReportGroup
    class DeleteReportGroup
      def self.parse(http_resp)
        data = Types::DeleteReportGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.parse(http_resp)
        data = Types::DeleteResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteSourceCredentials
    class DeleteSourceCredentials
      def self.parse(http_resp)
        data = Types::DeleteSourceCredentialsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['arn']
        data
      end
    end

    # Operation Parser for DeleteWebhook
    class DeleteWebhook
      def self.parse(http_resp)
        data = Types::DeleteWebhookOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeCodeCoverages
    class DescribeCodeCoverages
      def self.parse(http_resp)
        data = Types::DescribeCodeCoveragesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.code_coverages = (Parsers::CodeCoverages.parse(map['codeCoverages']) unless map['codeCoverages'].nil?)
        data
      end
    end

    class CodeCoverages
      def self.parse(list)
        list.map do |value|
          Parsers::CodeCoverage.parse(value) unless value.nil?
        end
      end
    end

    class CodeCoverage
      def self.parse(map)
        data = Types::CodeCoverage.new
        data.id = map['id']
        data.report_arn = map['reportARN']
        data.file_path = map['filePath']
        data.line_coverage_percentage = Hearth::NumberHelper.deserialize(map['lineCoveragePercentage'])
        data.lines_covered = map['linesCovered']
        data.lines_missed = map['linesMissed']
        data.branch_coverage_percentage = Hearth::NumberHelper.deserialize(map['branchCoveragePercentage'])
        data.branches_covered = map['branchesCovered']
        data.branches_missed = map['branchesMissed']
        data.expired = Time.at(map['expired'].to_i) if map['expired']
        return data
      end
    end

    # Operation Parser for DescribeTestCases
    class DescribeTestCases
      def self.parse(http_resp)
        data = Types::DescribeTestCasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.test_cases = (Parsers::TestCases.parse(map['testCases']) unless map['testCases'].nil?)
        data
      end
    end

    class TestCases
      def self.parse(list)
        list.map do |value|
          Parsers::TestCase.parse(value) unless value.nil?
        end
      end
    end

    class TestCase
      def self.parse(map)
        data = Types::TestCase.new
        data.report_arn = map['reportArn']
        data.test_raw_data_path = map['testRawDataPath']
        data.prefix = map['prefix']
        data.name = map['name']
        data.status = map['status']
        data.duration_in_nano_seconds = map['durationInNanoSeconds']
        data.message = map['message']
        data.expired = Time.at(map['expired'].to_i) if map['expired']
        return data
      end
    end

    # Operation Parser for GetReportGroupTrend
    class GetReportGroupTrend
      def self.parse(http_resp)
        data = Types::GetReportGroupTrendOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stats = (Parsers::ReportGroupTrendStats.parse(map['stats']) unless map['stats'].nil?)
        data.raw_data = (Parsers::ReportGroupTrendRawDataList.parse(map['rawData']) unless map['rawData'].nil?)
        data
      end
    end

    class ReportGroupTrendRawDataList
      def self.parse(list)
        list.map do |value|
          Parsers::ReportWithRawData.parse(value) unless value.nil?
        end
      end
    end

    class ReportWithRawData
      def self.parse(map)
        data = Types::ReportWithRawData.new
        data.report_arn = map['reportArn']
        data.data = map['data']
        return data
      end
    end

    class ReportGroupTrendStats
      def self.parse(map)
        data = Types::ReportGroupTrendStats.new
        data.average = map['average']
        data.max = map['max']
        data.min = map['min']
        return data
      end
    end

    # Operation Parser for GetResourcePolicy
    class GetResourcePolicy
      def self.parse(http_resp)
        data = Types::GetResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.policy = map['policy']
        data
      end
    end

    # Operation Parser for ImportSourceCredentials
    class ImportSourceCredentials
      def self.parse(http_resp)
        data = Types::ImportSourceCredentialsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.arn = map['arn']
        data
      end
    end

    # Operation Parser for InvalidateProjectCache
    class InvalidateProjectCache
      def self.parse(http_resp)
        data = Types::InvalidateProjectCacheOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ListBuildBatches
    class ListBuildBatches
      def self.parse(http_resp)
        data = Types::ListBuildBatchesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ids = (Parsers::BuildBatchIds.parse(map['ids']) unless map['ids'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListBuildBatchesForProject
    class ListBuildBatchesForProject
      def self.parse(http_resp)
        data = Types::ListBuildBatchesForProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ids = (Parsers::BuildBatchIds.parse(map['ids']) unless map['ids'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListBuilds
    class ListBuilds
      def self.parse(http_resp)
        data = Types::ListBuildsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ids = (Parsers::BuildIds.parse(map['ids']) unless map['ids'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListBuildsForProject
    class ListBuildsForProject
      def self.parse(http_resp)
        data = Types::ListBuildsForProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ids = (Parsers::BuildIds.parse(map['ids']) unless map['ids'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListCuratedEnvironmentImages
    class ListCuratedEnvironmentImages
      def self.parse(http_resp)
        data = Types::ListCuratedEnvironmentImagesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.platforms = (Parsers::EnvironmentPlatforms.parse(map['platforms']) unless map['platforms'].nil?)
        data
      end
    end

    class EnvironmentPlatforms
      def self.parse(list)
        list.map do |value|
          Parsers::EnvironmentPlatform.parse(value) unless value.nil?
        end
      end
    end

    class EnvironmentPlatform
      def self.parse(map)
        data = Types::EnvironmentPlatform.new
        data.platform = map['platform']
        data.languages = (Parsers::EnvironmentLanguages.parse(map['languages']) unless map['languages'].nil?)
        return data
      end
    end

    class EnvironmentLanguages
      def self.parse(list)
        list.map do |value|
          Parsers::EnvironmentLanguage.parse(value) unless value.nil?
        end
      end
    end

    class EnvironmentLanguage
      def self.parse(map)
        data = Types::EnvironmentLanguage.new
        data.language = map['language']
        data.images = (Parsers::EnvironmentImages.parse(map['images']) unless map['images'].nil?)
        return data
      end
    end

    class EnvironmentImages
      def self.parse(list)
        list.map do |value|
          Parsers::EnvironmentImage.parse(value) unless value.nil?
        end
      end
    end

    class EnvironmentImage
      def self.parse(map)
        data = Types::EnvironmentImage.new
        data.name = map['name']
        data.description = map['description']
        data.versions = (Parsers::ImageVersions.parse(map['versions']) unless map['versions'].nil?)
        return data
      end
    end

    class ImageVersions
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListProjects
    class ListProjects
      def self.parse(http_resp)
        data = Types::ListProjectsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.projects = (Parsers::ProjectNames.parse(map['projects']) unless map['projects'].nil?)
        data
      end
    end

    # Operation Parser for ListReportGroups
    class ListReportGroups
      def self.parse(http_resp)
        data = Types::ListReportGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.report_groups = (Parsers::ReportGroupArns.parse(map['reportGroups']) unless map['reportGroups'].nil?)
        data
      end
    end

    # Operation Parser for ListReports
    class ListReports
      def self.parse(http_resp)
        data = Types::ListReportsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.reports = (Parsers::ReportArns.parse(map['reports']) unless map['reports'].nil?)
        data
      end
    end

    # Operation Parser for ListReportsForReportGroup
    class ListReportsForReportGroup
      def self.parse(http_resp)
        data = Types::ListReportsForReportGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.reports = (Parsers::ReportArns.parse(map['reports']) unless map['reports'].nil?)
        data
      end
    end

    # Operation Parser for ListSharedProjects
    class ListSharedProjects
      def self.parse(http_resp)
        data = Types::ListSharedProjectsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.projects = (Parsers::ProjectArns.parse(map['projects']) unless map['projects'].nil?)
        data
      end
    end

    class ProjectArns
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListSharedReportGroups
    class ListSharedReportGroups
      def self.parse(http_resp)
        data = Types::ListSharedReportGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.report_groups = (Parsers::ReportGroupArns.parse(map['reportGroups']) unless map['reportGroups'].nil?)
        data
      end
    end

    # Operation Parser for ListSourceCredentials
    class ListSourceCredentials
      def self.parse(http_resp)
        data = Types::ListSourceCredentialsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.source_credentials_infos = (Parsers::SourceCredentialsInfos.parse(map['sourceCredentialsInfos']) unless map['sourceCredentialsInfos'].nil?)
        data
      end
    end

    class SourceCredentialsInfos
      def self.parse(list)
        list.map do |value|
          Parsers::SourceCredentialsInfo.parse(value) unless value.nil?
        end
      end
    end

    class SourceCredentialsInfo
      def self.parse(map)
        data = Types::SourceCredentialsInfo.new
        data.arn = map['arn']
        data.server_type = map['serverType']
        data.auth_type = map['authType']
        return data
      end
    end

    # Operation Parser for PutResourcePolicy
    class PutResourcePolicy
      def self.parse(http_resp)
        data = Types::PutResourcePolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_arn = map['resourceArn']
        data
      end
    end

    # Operation Parser for RetryBuild
    class RetryBuild
      def self.parse(http_resp)
        data = Types::RetryBuildOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.build = (Parsers::Build.parse(map['build']) unless map['build'].nil?)
        data
      end
    end

    # Operation Parser for RetryBuildBatch
    class RetryBuildBatch
      def self.parse(http_resp)
        data = Types::RetryBuildBatchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.build_batch = (Parsers::BuildBatch.parse(map['buildBatch']) unless map['buildBatch'].nil?)
        data
      end
    end

    # Operation Parser for StartBuild
    class StartBuild
      def self.parse(http_resp)
        data = Types::StartBuildOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.build = (Parsers::Build.parse(map['build']) unless map['build'].nil?)
        data
      end
    end

    # Operation Parser for StartBuildBatch
    class StartBuildBatch
      def self.parse(http_resp)
        data = Types::StartBuildBatchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.build_batch = (Parsers::BuildBatch.parse(map['buildBatch']) unless map['buildBatch'].nil?)
        data
      end
    end

    # Operation Parser for StopBuild
    class StopBuild
      def self.parse(http_resp)
        data = Types::StopBuildOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.build = (Parsers::Build.parse(map['build']) unless map['build'].nil?)
        data
      end
    end

    # Operation Parser for StopBuildBatch
    class StopBuildBatch
      def self.parse(http_resp)
        data = Types::StopBuildBatchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.build_batch = (Parsers::BuildBatch.parse(map['buildBatch']) unless map['buildBatch'].nil?)
        data
      end
    end

    # Operation Parser for UpdateProject
    class UpdateProject
      def self.parse(http_resp)
        data = Types::UpdateProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.project = (Parsers::Project.parse(map['project']) unless map['project'].nil?)
        data
      end
    end

    # Operation Parser for UpdateProjectVisibility
    class UpdateProjectVisibility
      def self.parse(http_resp)
        data = Types::UpdateProjectVisibilityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.project_arn = map['projectArn']
        data.public_project_alias = map['publicProjectAlias']
        data.project_visibility = map['projectVisibility']
        data
      end
    end

    # Operation Parser for UpdateReportGroup
    class UpdateReportGroup
      def self.parse(http_resp)
        data = Types::UpdateReportGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.report_group = (Parsers::ReportGroup.parse(map['reportGroup']) unless map['reportGroup'].nil?)
        data
      end
    end

    # Operation Parser for UpdateWebhook
    class UpdateWebhook
      def self.parse(http_resp)
        data = Types::UpdateWebhookOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.webhook = (Parsers::Webhook.parse(map['webhook']) unless map['webhook'].nil?)
        data
      end
    end
  end
end
