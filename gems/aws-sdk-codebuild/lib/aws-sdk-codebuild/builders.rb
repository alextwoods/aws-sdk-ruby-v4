# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CodeBuild
  module Builders

    # Operation Builder for BatchDeleteBuilds
    class BatchDeleteBuilds
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.BatchDeleteBuilds'
        data = {}
        data['ids'] = BuildIds.build(input[:ids]) unless input[:ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BuildIds
    class BuildIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetBuildBatches
    class BatchGetBuildBatches
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.BatchGetBuildBatches'
        data = {}
        data['ids'] = BuildBatchIds.build(input[:ids]) unless input[:ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BuildBatchIds
    class BuildBatchIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetBuilds
    class BatchGetBuilds
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.BatchGetBuilds'
        data = {}
        data['ids'] = BuildIds.build(input[:ids]) unless input[:ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchGetProjects
    class BatchGetProjects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.BatchGetProjects'
        data = {}
        data['names'] = ProjectNames.build(input[:names]) unless input[:names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ProjectNames
    class ProjectNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetReportGroups
    class BatchGetReportGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.BatchGetReportGroups'
        data = {}
        data['reportGroupArns'] = ReportGroupArns.build(input[:report_group_arns]) unless input[:report_group_arns].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ReportGroupArns
    class ReportGroupArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetReports
    class BatchGetReports
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.BatchGetReports'
        data = {}
        data['reportArns'] = ReportArns.build(input[:report_arns]) unless input[:report_arns].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ReportArns
    class ReportArns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateProject
    class CreateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.CreateProject'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['source'] = ProjectSource.build(input[:source]) unless input[:source].nil?
        data['secondarySources'] = ProjectSources.build(input[:secondary_sources]) unless input[:secondary_sources].nil?
        data['sourceVersion'] = input[:source_version] unless input[:source_version].nil?
        data['secondarySourceVersions'] = ProjectSecondarySourceVersions.build(input[:secondary_source_versions]) unless input[:secondary_source_versions].nil?
        data['artifacts'] = ProjectArtifacts.build(input[:artifacts]) unless input[:artifacts].nil?
        data['secondaryArtifacts'] = ProjectArtifactsList.build(input[:secondary_artifacts]) unless input[:secondary_artifacts].nil?
        data['cache'] = ProjectCache.build(input[:cache]) unless input[:cache].nil?
        data['environment'] = ProjectEnvironment.build(input[:environment]) unless input[:environment].nil?
        data['serviceRole'] = input[:service_role] unless input[:service_role].nil?
        data['timeoutInMinutes'] = input[:timeout_in_minutes] unless input[:timeout_in_minutes].nil?
        data['queuedTimeoutInMinutes'] = input[:queued_timeout_in_minutes] unless input[:queued_timeout_in_minutes].nil?
        data['encryptionKey'] = input[:encryption_key] unless input[:encryption_key].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['vpcConfig'] = VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['badgeEnabled'] = input[:badge_enabled] unless input[:badge_enabled].nil?
        data['logsConfig'] = LogsConfig.build(input[:logs_config]) unless input[:logs_config].nil?
        data['fileSystemLocations'] = ProjectFileSystemLocations.build(input[:file_system_locations]) unless input[:file_system_locations].nil?
        data['buildBatchConfig'] = ProjectBuildBatchConfig.build(input[:build_batch_config]) unless input[:build_batch_config].nil?
        data['concurrentBuildLimit'] = input[:concurrent_build_limit] unless input[:concurrent_build_limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ProjectBuildBatchConfig
    class ProjectBuildBatchConfig
      def self.build(input)
        data = {}
        data['serviceRole'] = input[:service_role] unless input[:service_role].nil?
        data['combineArtifacts'] = input[:combine_artifacts] unless input[:combine_artifacts].nil?
        data['restrictions'] = BatchRestrictions.build(input[:restrictions]) unless input[:restrictions].nil?
        data['timeoutInMins'] = input[:timeout_in_mins] unless input[:timeout_in_mins].nil?
        data['batchReportMode'] = input[:batch_report_mode] unless input[:batch_report_mode].nil?
        data
      end
    end

    # Structure Builder for BatchRestrictions
    class BatchRestrictions
      def self.build(input)
        data = {}
        data['maximumBuildsAllowed'] = input[:maximum_builds_allowed] unless input[:maximum_builds_allowed].nil?
        data['computeTypesAllowed'] = ComputeTypesAllowed.build(input[:compute_types_allowed]) unless input[:compute_types_allowed].nil?
        data
      end
    end

    # List Builder for ComputeTypesAllowed
    class ComputeTypesAllowed
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ProjectFileSystemLocations
    class ProjectFileSystemLocations
      def self.build(input)
        data = []
        input.each do |element|
          data << ProjectFileSystemLocation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ProjectFileSystemLocation
    class ProjectFileSystemLocation
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['location'] = input[:location] unless input[:location].nil?
        data['mountPoint'] = input[:mount_point] unless input[:mount_point].nil?
        data['identifier'] = input[:identifier] unless input[:identifier].nil?
        data['mountOptions'] = input[:mount_options] unless input[:mount_options].nil?
        data
      end
    end

    # Structure Builder for LogsConfig
    class LogsConfig
      def self.build(input)
        data = {}
        data['cloudWatchLogs'] = CloudWatchLogsConfig.build(input[:cloud_watch_logs]) unless input[:cloud_watch_logs].nil?
        data['s3Logs'] = S3LogsConfig.build(input[:s3_logs]) unless input[:s3_logs].nil?
        data
      end
    end

    # Structure Builder for S3LogsConfig
    class S3LogsConfig
      def self.build(input)
        data = {}
        data['status'] = input[:status] unless input[:status].nil?
        data['location'] = input[:location] unless input[:location].nil?
        data['encryptionDisabled'] = input[:encryption_disabled] unless input[:encryption_disabled].nil?
        data['bucketOwnerAccess'] = input[:bucket_owner_access] unless input[:bucket_owner_access].nil?
        data
      end
    end

    # Structure Builder for CloudWatchLogsConfig
    class CloudWatchLogsConfig
      def self.build(input)
        data = {}
        data['status'] = input[:status] unless input[:status].nil?
        data['groupName'] = input[:group_name] unless input[:group_name].nil?
        data['streamName'] = input[:stream_name] unless input[:stream_name].nil?
        data
      end
    end

    # Structure Builder for VpcConfig
    class VpcConfig
      def self.build(input)
        data = {}
        data['vpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['subnets'] = Subnets.build(input[:subnets]) unless input[:subnets].nil?
        data['securityGroupIds'] = SecurityGroupIds.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
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

    # List Builder for Subnets
    class Subnets
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for ProjectEnvironment
    class ProjectEnvironment
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['image'] = input[:image] unless input[:image].nil?
        data['computeType'] = input[:compute_type] unless input[:compute_type].nil?
        data['environmentVariables'] = EnvironmentVariables.build(input[:environment_variables]) unless input[:environment_variables].nil?
        data['privilegedMode'] = input[:privileged_mode] unless input[:privileged_mode].nil?
        data['certificate'] = input[:certificate] unless input[:certificate].nil?
        data['registryCredential'] = RegistryCredential.build(input[:registry_credential]) unless input[:registry_credential].nil?
        data['imagePullCredentialsType'] = input[:image_pull_credentials_type] unless input[:image_pull_credentials_type].nil?
        data
      end
    end

    # Structure Builder for RegistryCredential
    class RegistryCredential
      def self.build(input)
        data = {}
        data['credential'] = input[:credential] unless input[:credential].nil?
        data['credentialProvider'] = input[:credential_provider] unless input[:credential_provider].nil?
        data
      end
    end

    # List Builder for EnvironmentVariables
    class EnvironmentVariables
      def self.build(input)
        data = []
        input.each do |element|
          data << EnvironmentVariable.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EnvironmentVariable
    class EnvironmentVariable
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for ProjectCache
    class ProjectCache
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['location'] = input[:location] unless input[:location].nil?
        data['modes'] = ProjectCacheModes.build(input[:modes]) unless input[:modes].nil?
        data
      end
    end

    # List Builder for ProjectCacheModes
    class ProjectCacheModes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ProjectArtifactsList
    class ProjectArtifactsList
      def self.build(input)
        data = []
        input.each do |element|
          data << ProjectArtifacts.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ProjectArtifacts
    class ProjectArtifacts
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['location'] = input[:location] unless input[:location].nil?
        data['path'] = input[:path] unless input[:path].nil?
        data['namespaceType'] = input[:namespace_type] unless input[:namespace_type].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['packaging'] = input[:packaging] unless input[:packaging].nil?
        data['overrideArtifactName'] = input[:override_artifact_name] unless input[:override_artifact_name].nil?
        data['encryptionDisabled'] = input[:encryption_disabled] unless input[:encryption_disabled].nil?
        data['artifactIdentifier'] = input[:artifact_identifier] unless input[:artifact_identifier].nil?
        data['bucketOwnerAccess'] = input[:bucket_owner_access] unless input[:bucket_owner_access].nil?
        data
      end
    end

    # List Builder for ProjectSecondarySourceVersions
    class ProjectSecondarySourceVersions
      def self.build(input)
        data = []
        input.each do |element|
          data << ProjectSourceVersion.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ProjectSourceVersion
    class ProjectSourceVersion
      def self.build(input)
        data = {}
        data['sourceIdentifier'] = input[:source_identifier] unless input[:source_identifier].nil?
        data['sourceVersion'] = input[:source_version] unless input[:source_version].nil?
        data
      end
    end

    # List Builder for ProjectSources
    class ProjectSources
      def self.build(input)
        data = []
        input.each do |element|
          data << ProjectSource.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ProjectSource
    class ProjectSource
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['location'] = input[:location] unless input[:location].nil?
        data['gitCloneDepth'] = input[:git_clone_depth] unless input[:git_clone_depth].nil?
        data['gitSubmodulesConfig'] = GitSubmodulesConfig.build(input[:git_submodules_config]) unless input[:git_submodules_config].nil?
        data['buildspec'] = input[:buildspec] unless input[:buildspec].nil?
        data['auth'] = SourceAuth.build(input[:auth]) unless input[:auth].nil?
        data['reportBuildStatus'] = input[:report_build_status] unless input[:report_build_status].nil?
        data['buildStatusConfig'] = BuildStatusConfig.build(input[:build_status_config]) unless input[:build_status_config].nil?
        data['insecureSsl'] = input[:insecure_ssl] unless input[:insecure_ssl].nil?
        data['sourceIdentifier'] = input[:source_identifier] unless input[:source_identifier].nil?
        data
      end
    end

    # Structure Builder for BuildStatusConfig
    class BuildStatusConfig
      def self.build(input)
        data = {}
        data['context'] = input[:context] unless input[:context].nil?
        data['targetUrl'] = input[:target_url] unless input[:target_url].nil?
        data
      end
    end

    # Structure Builder for SourceAuth
    class SourceAuth
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['resource'] = input[:resource] unless input[:resource].nil?
        data
      end
    end

    # Structure Builder for GitSubmodulesConfig
    class GitSubmodulesConfig
      def self.build(input)
        data = {}
        data['fetchSubmodules'] = input[:fetch_submodules] unless input[:fetch_submodules].nil?
        data
      end
    end

    # Operation Builder for CreateReportGroup
    class CreateReportGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.CreateReportGroup'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['exportConfig'] = ReportExportConfig.build(input[:export_config]) unless input[:export_config].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ReportExportConfig
    class ReportExportConfig
      def self.build(input)
        data = {}
        data['exportConfigType'] = input[:export_config_type] unless input[:export_config_type].nil?
        data['s3Destination'] = S3ReportExportConfig.build(input[:s3_destination]) unless input[:s3_destination].nil?
        data
      end
    end

    # Structure Builder for S3ReportExportConfig
    class S3ReportExportConfig
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['bucketOwner'] = input[:bucket_owner] unless input[:bucket_owner].nil?
        data['path'] = input[:path] unless input[:path].nil?
        data['packaging'] = input[:packaging] unless input[:packaging].nil?
        data['encryptionKey'] = input[:encryption_key] unless input[:encryption_key].nil?
        data['encryptionDisabled'] = input[:encryption_disabled] unless input[:encryption_disabled].nil?
        data
      end
    end

    # Operation Builder for CreateWebhook
    class CreateWebhook
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.CreateWebhook'
        data = {}
        data['projectName'] = input[:project_name] unless input[:project_name].nil?
        data['branchFilter'] = input[:branch_filter] unless input[:branch_filter].nil?
        data['filterGroups'] = FilterGroups.build(input[:filter_groups]) unless input[:filter_groups].nil?
        data['buildType'] = input[:build_type] unless input[:build_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FilterGroups
    class FilterGroups
      def self.build(input)
        data = []
        input.each do |element|
          data << FilterGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for FilterGroup
    class FilterGroup
      def self.build(input)
        data = []
        input.each do |element|
          data << WebhookFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WebhookFilter
    class WebhookFilter
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['pattern'] = input[:pattern] unless input[:pattern].nil?
        data['excludeMatchedPattern'] = input[:exclude_matched_pattern] unless input[:exclude_matched_pattern].nil?
        data
      end
    end

    # Operation Builder for DeleteBuildBatch
    class DeleteBuildBatch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.DeleteBuildBatch'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProject
    class DeleteProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.DeleteProject'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteReport
    class DeleteReport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.DeleteReport'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteReportGroup
    class DeleteReportGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.DeleteReportGroup'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['deleteReports'] = input[:delete_reports] unless input[:delete_reports].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.DeleteResourcePolicy'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSourceCredentials
    class DeleteSourceCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.DeleteSourceCredentials'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteWebhook
    class DeleteWebhook
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.DeleteWebhook'
        data = {}
        data['projectName'] = input[:project_name] unless input[:project_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCodeCoverages
    class DescribeCodeCoverages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.DescribeCodeCoverages'
        data = {}
        data['reportArn'] = input[:report_arn] unless input[:report_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['minLineCoveragePercentage'] = Hearth::NumberHelper.serialize(input[:min_line_coverage_percentage]) unless input[:min_line_coverage_percentage].nil?
        data['maxLineCoveragePercentage'] = Hearth::NumberHelper.serialize(input[:max_line_coverage_percentage]) unless input[:max_line_coverage_percentage].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTestCases
    class DescribeTestCases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.DescribeTestCases'
        data = {}
        data['reportArn'] = input[:report_arn] unless input[:report_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filter'] = TestCaseFilter.build(input[:filter]) unless input[:filter].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TestCaseFilter
    class TestCaseFilter
      def self.build(input)
        data = {}
        data['status'] = input[:status] unless input[:status].nil?
        data['keyword'] = input[:keyword] unless input[:keyword].nil?
        data
      end
    end

    # Operation Builder for GetReportGroupTrend
    class GetReportGroupTrend
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.GetReportGroupTrend'
        data = {}
        data['reportGroupArn'] = input[:report_group_arn] unless input[:report_group_arn].nil?
        data['numOfReports'] = input[:num_of_reports] unless input[:num_of_reports].nil?
        data['trendField'] = input[:trend_field] unless input[:trend_field].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResourcePolicy
    class GetResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.GetResourcePolicy'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ImportSourceCredentials
    class ImportSourceCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.ImportSourceCredentials'
        data = {}
        data['username'] = input[:username] unless input[:username].nil?
        data['token'] = input[:token] unless input[:token].nil?
        data['serverType'] = input[:server_type] unless input[:server_type].nil?
        data['authType'] = input[:auth_type] unless input[:auth_type].nil?
        data['shouldOverwrite'] = input[:should_overwrite] unless input[:should_overwrite].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for InvalidateProjectCache
    class InvalidateProjectCache
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.InvalidateProjectCache'
        data = {}
        data['projectName'] = input[:project_name] unless input[:project_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListBuildBatches
    class ListBuildBatches
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.ListBuildBatches'
        data = {}
        data['filter'] = BuildBatchFilter.build(input[:filter]) unless input[:filter].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BuildBatchFilter
    class BuildBatchFilter
      def self.build(input)
        data = {}
        data['status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Operation Builder for ListBuildBatchesForProject
    class ListBuildBatchesForProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.ListBuildBatchesForProject'
        data = {}
        data['projectName'] = input[:project_name] unless input[:project_name].nil?
        data['filter'] = BuildBatchFilter.build(input[:filter]) unless input[:filter].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListBuilds
    class ListBuilds
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.ListBuilds'
        data = {}
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListBuildsForProject
    class ListBuildsForProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.ListBuildsForProject'
        data = {}
        data['projectName'] = input[:project_name] unless input[:project_name].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCuratedEnvironmentImages
    class ListCuratedEnvironmentImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.ListCuratedEnvironmentImages'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListProjects
    class ListProjects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.ListProjects'
        data = {}
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListReportGroups
    class ListReportGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.ListReportGroups'
        data = {}
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListReports
    class ListReports
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.ListReports'
        data = {}
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filter'] = ReportFilter.build(input[:filter]) unless input[:filter].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ReportFilter
    class ReportFilter
      def self.build(input)
        data = {}
        data['status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Operation Builder for ListReportsForReportGroup
    class ListReportsForReportGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.ListReportsForReportGroup'
        data = {}
        data['reportGroupArn'] = input[:report_group_arn] unless input[:report_group_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['filter'] = ReportFilter.build(input[:filter]) unless input[:filter].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSharedProjects
    class ListSharedProjects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.ListSharedProjects'
        data = {}
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSharedReportGroups
    class ListSharedReportGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.ListSharedReportGroups'
        data = {}
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSourceCredentials
    class ListSourceCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.ListSourceCredentials'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutResourcePolicy
    class PutResourcePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.PutResourcePolicy'
        data = {}
        data['policy'] = input[:policy] unless input[:policy].nil?
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RetryBuild
    class RetryBuild
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.RetryBuild'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['idempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RetryBuildBatch
    class RetryBuildBatch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.RetryBuildBatch'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['idempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        data['retryType'] = input[:retry_type] unless input[:retry_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartBuild
    class StartBuild
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.StartBuild'
        data = {}
        data['projectName'] = input[:project_name] unless input[:project_name].nil?
        data['secondarySourcesOverride'] = ProjectSources.build(input[:secondary_sources_override]) unless input[:secondary_sources_override].nil?
        data['secondarySourcesVersionOverride'] = ProjectSecondarySourceVersions.build(input[:secondary_sources_version_override]) unless input[:secondary_sources_version_override].nil?
        data['sourceVersion'] = input[:source_version] unless input[:source_version].nil?
        data['artifactsOverride'] = ProjectArtifacts.build(input[:artifacts_override]) unless input[:artifacts_override].nil?
        data['secondaryArtifactsOverride'] = ProjectArtifactsList.build(input[:secondary_artifacts_override]) unless input[:secondary_artifacts_override].nil?
        data['environmentVariablesOverride'] = EnvironmentVariables.build(input[:environment_variables_override]) unless input[:environment_variables_override].nil?
        data['sourceTypeOverride'] = input[:source_type_override] unless input[:source_type_override].nil?
        data['sourceLocationOverride'] = input[:source_location_override] unless input[:source_location_override].nil?
        data['sourceAuthOverride'] = SourceAuth.build(input[:source_auth_override]) unless input[:source_auth_override].nil?
        data['gitCloneDepthOverride'] = input[:git_clone_depth_override] unless input[:git_clone_depth_override].nil?
        data['gitSubmodulesConfigOverride'] = GitSubmodulesConfig.build(input[:git_submodules_config_override]) unless input[:git_submodules_config_override].nil?
        data['buildspecOverride'] = input[:buildspec_override] unless input[:buildspec_override].nil?
        data['insecureSslOverride'] = input[:insecure_ssl_override] unless input[:insecure_ssl_override].nil?
        data['reportBuildStatusOverride'] = input[:report_build_status_override] unless input[:report_build_status_override].nil?
        data['buildStatusConfigOverride'] = BuildStatusConfig.build(input[:build_status_config_override]) unless input[:build_status_config_override].nil?
        data['environmentTypeOverride'] = input[:environment_type_override] unless input[:environment_type_override].nil?
        data['imageOverride'] = input[:image_override] unless input[:image_override].nil?
        data['computeTypeOverride'] = input[:compute_type_override] unless input[:compute_type_override].nil?
        data['certificateOverride'] = input[:certificate_override] unless input[:certificate_override].nil?
        data['cacheOverride'] = ProjectCache.build(input[:cache_override]) unless input[:cache_override].nil?
        data['serviceRoleOverride'] = input[:service_role_override] unless input[:service_role_override].nil?
        data['privilegedModeOverride'] = input[:privileged_mode_override] unless input[:privileged_mode_override].nil?
        data['timeoutInMinutesOverride'] = input[:timeout_in_minutes_override] unless input[:timeout_in_minutes_override].nil?
        data['queuedTimeoutInMinutesOverride'] = input[:queued_timeout_in_minutes_override] unless input[:queued_timeout_in_minutes_override].nil?
        data['encryptionKeyOverride'] = input[:encryption_key_override] unless input[:encryption_key_override].nil?
        data['idempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        data['logsConfigOverride'] = LogsConfig.build(input[:logs_config_override]) unless input[:logs_config_override].nil?
        data['registryCredentialOverride'] = RegistryCredential.build(input[:registry_credential_override]) unless input[:registry_credential_override].nil?
        data['imagePullCredentialsTypeOverride'] = input[:image_pull_credentials_type_override] unless input[:image_pull_credentials_type_override].nil?
        data['debugSessionEnabled'] = input[:debug_session_enabled] unless input[:debug_session_enabled].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartBuildBatch
    class StartBuildBatch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.StartBuildBatch'
        data = {}
        data['projectName'] = input[:project_name] unless input[:project_name].nil?
        data['secondarySourcesOverride'] = ProjectSources.build(input[:secondary_sources_override]) unless input[:secondary_sources_override].nil?
        data['secondarySourcesVersionOverride'] = ProjectSecondarySourceVersions.build(input[:secondary_sources_version_override]) unless input[:secondary_sources_version_override].nil?
        data['sourceVersion'] = input[:source_version] unless input[:source_version].nil?
        data['artifactsOverride'] = ProjectArtifacts.build(input[:artifacts_override]) unless input[:artifacts_override].nil?
        data['secondaryArtifactsOverride'] = ProjectArtifactsList.build(input[:secondary_artifacts_override]) unless input[:secondary_artifacts_override].nil?
        data['environmentVariablesOverride'] = EnvironmentVariables.build(input[:environment_variables_override]) unless input[:environment_variables_override].nil?
        data['sourceTypeOverride'] = input[:source_type_override] unless input[:source_type_override].nil?
        data['sourceLocationOverride'] = input[:source_location_override] unless input[:source_location_override].nil?
        data['sourceAuthOverride'] = SourceAuth.build(input[:source_auth_override]) unless input[:source_auth_override].nil?
        data['gitCloneDepthOverride'] = input[:git_clone_depth_override] unless input[:git_clone_depth_override].nil?
        data['gitSubmodulesConfigOverride'] = GitSubmodulesConfig.build(input[:git_submodules_config_override]) unless input[:git_submodules_config_override].nil?
        data['buildspecOverride'] = input[:buildspec_override] unless input[:buildspec_override].nil?
        data['insecureSslOverride'] = input[:insecure_ssl_override] unless input[:insecure_ssl_override].nil?
        data['reportBuildBatchStatusOverride'] = input[:report_build_batch_status_override] unless input[:report_build_batch_status_override].nil?
        data['environmentTypeOverride'] = input[:environment_type_override] unless input[:environment_type_override].nil?
        data['imageOverride'] = input[:image_override] unless input[:image_override].nil?
        data['computeTypeOverride'] = input[:compute_type_override] unless input[:compute_type_override].nil?
        data['certificateOverride'] = input[:certificate_override] unless input[:certificate_override].nil?
        data['cacheOverride'] = ProjectCache.build(input[:cache_override]) unless input[:cache_override].nil?
        data['serviceRoleOverride'] = input[:service_role_override] unless input[:service_role_override].nil?
        data['privilegedModeOverride'] = input[:privileged_mode_override] unless input[:privileged_mode_override].nil?
        data['buildTimeoutInMinutesOverride'] = input[:build_timeout_in_minutes_override] unless input[:build_timeout_in_minutes_override].nil?
        data['queuedTimeoutInMinutesOverride'] = input[:queued_timeout_in_minutes_override] unless input[:queued_timeout_in_minutes_override].nil?
        data['encryptionKeyOverride'] = input[:encryption_key_override] unless input[:encryption_key_override].nil?
        data['idempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        data['logsConfigOverride'] = LogsConfig.build(input[:logs_config_override]) unless input[:logs_config_override].nil?
        data['registryCredentialOverride'] = RegistryCredential.build(input[:registry_credential_override]) unless input[:registry_credential_override].nil?
        data['imagePullCredentialsTypeOverride'] = input[:image_pull_credentials_type_override] unless input[:image_pull_credentials_type_override].nil?
        data['buildBatchConfigOverride'] = ProjectBuildBatchConfig.build(input[:build_batch_config_override]) unless input[:build_batch_config_override].nil?
        data['debugSessionEnabled'] = input[:debug_session_enabled] unless input[:debug_session_enabled].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopBuild
    class StopBuild
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.StopBuild'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopBuildBatch
    class StopBuildBatch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.StopBuildBatch'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProject
    class UpdateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.UpdateProject'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['source'] = ProjectSource.build(input[:source]) unless input[:source].nil?
        data['secondarySources'] = ProjectSources.build(input[:secondary_sources]) unless input[:secondary_sources].nil?
        data['sourceVersion'] = input[:source_version] unless input[:source_version].nil?
        data['secondarySourceVersions'] = ProjectSecondarySourceVersions.build(input[:secondary_source_versions]) unless input[:secondary_source_versions].nil?
        data['artifacts'] = ProjectArtifacts.build(input[:artifacts]) unless input[:artifacts].nil?
        data['secondaryArtifacts'] = ProjectArtifactsList.build(input[:secondary_artifacts]) unless input[:secondary_artifacts].nil?
        data['cache'] = ProjectCache.build(input[:cache]) unless input[:cache].nil?
        data['environment'] = ProjectEnvironment.build(input[:environment]) unless input[:environment].nil?
        data['serviceRole'] = input[:service_role] unless input[:service_role].nil?
        data['timeoutInMinutes'] = input[:timeout_in_minutes] unless input[:timeout_in_minutes].nil?
        data['queuedTimeoutInMinutes'] = input[:queued_timeout_in_minutes] unless input[:queued_timeout_in_minutes].nil?
        data['encryptionKey'] = input[:encryption_key] unless input[:encryption_key].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['vpcConfig'] = VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['badgeEnabled'] = input[:badge_enabled] unless input[:badge_enabled].nil?
        data['logsConfig'] = LogsConfig.build(input[:logs_config]) unless input[:logs_config].nil?
        data['fileSystemLocations'] = ProjectFileSystemLocations.build(input[:file_system_locations]) unless input[:file_system_locations].nil?
        data['buildBatchConfig'] = ProjectBuildBatchConfig.build(input[:build_batch_config]) unless input[:build_batch_config].nil?
        data['concurrentBuildLimit'] = input[:concurrent_build_limit] unless input[:concurrent_build_limit].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProjectVisibility
    class UpdateProjectVisibility
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.UpdateProjectVisibility'
        data = {}
        data['projectArn'] = input[:project_arn] unless input[:project_arn].nil?
        data['projectVisibility'] = input[:project_visibility] unless input[:project_visibility].nil?
        data['resourceAccessRole'] = input[:resource_access_role] unless input[:resource_access_role].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateReportGroup
    class UpdateReportGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.UpdateReportGroup'
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data['exportConfig'] = ReportExportConfig.build(input[:export_config]) unless input[:export_config].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateWebhook
    class UpdateWebhook
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeBuild_20161006.UpdateWebhook'
        data = {}
        data['projectName'] = input[:project_name] unless input[:project_name].nil?
        data['branchFilter'] = input[:branch_filter] unless input[:branch_filter].nil?
        data['rotateSecret'] = input[:rotate_secret] unless input[:rotate_secret].nil?
        data['filterGroups'] = FilterGroups.build(input[:filter_groups]) unless input[:filter_groups].nil?
        data['buildType'] = input[:build_type] unless input[:build_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
