# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CodeBuild
  module Params

    module AccountLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountLimitExceededException, context: context)
        type = Types::AccountLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module BatchDeleteBuildsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteBuildsInput, context: context)
        type = Types::BatchDeleteBuildsInput.new
        type.ids = BuildIds.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type
      end
    end

    module BatchDeleteBuildsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteBuildsOutput, context: context)
        type = Types::BatchDeleteBuildsOutput.new
        type.builds_deleted = BuildIds.build(params[:builds_deleted], context: "#{context}[:builds_deleted]") unless params[:builds_deleted].nil?
        type.builds_not_deleted = BuildsNotDeleted.build(params[:builds_not_deleted], context: "#{context}[:builds_not_deleted]") unless params[:builds_not_deleted].nil?
        type
      end
    end

    module BatchGetBuildBatchesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetBuildBatchesInput, context: context)
        type = Types::BatchGetBuildBatchesInput.new
        type.ids = BuildBatchIds.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type
      end
    end

    module BatchGetBuildBatchesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetBuildBatchesOutput, context: context)
        type = Types::BatchGetBuildBatchesOutput.new
        type.build_batches = BuildBatches.build(params[:build_batches], context: "#{context}[:build_batches]") unless params[:build_batches].nil?
        type.build_batches_not_found = BuildBatchIds.build(params[:build_batches_not_found], context: "#{context}[:build_batches_not_found]") unless params[:build_batches_not_found].nil?
        type
      end
    end

    module BatchGetBuildsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetBuildsInput, context: context)
        type = Types::BatchGetBuildsInput.new
        type.ids = BuildIds.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type
      end
    end

    module BatchGetBuildsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetBuildsOutput, context: context)
        type = Types::BatchGetBuildsOutput.new
        type.builds = Builds.build(params[:builds], context: "#{context}[:builds]") unless params[:builds].nil?
        type.builds_not_found = BuildIds.build(params[:builds_not_found], context: "#{context}[:builds_not_found]") unless params[:builds_not_found].nil?
        type
      end
    end

    module BatchGetProjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetProjectsInput, context: context)
        type = Types::BatchGetProjectsInput.new
        type.names = ProjectNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type
      end
    end

    module BatchGetProjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetProjectsOutput, context: context)
        type = Types::BatchGetProjectsOutput.new
        type.projects = Projects.build(params[:projects], context: "#{context}[:projects]") unless params[:projects].nil?
        type.projects_not_found = ProjectNames.build(params[:projects_not_found], context: "#{context}[:projects_not_found]") unless params[:projects_not_found].nil?
        type
      end
    end

    module BatchGetReportGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetReportGroupsInput, context: context)
        type = Types::BatchGetReportGroupsInput.new
        type.report_group_arns = ReportGroupArns.build(params[:report_group_arns], context: "#{context}[:report_group_arns]") unless params[:report_group_arns].nil?
        type
      end
    end

    module BatchGetReportGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetReportGroupsOutput, context: context)
        type = Types::BatchGetReportGroupsOutput.new
        type.report_groups = ReportGroups.build(params[:report_groups], context: "#{context}[:report_groups]") unless params[:report_groups].nil?
        type.report_groups_not_found = ReportGroupArns.build(params[:report_groups_not_found], context: "#{context}[:report_groups_not_found]") unless params[:report_groups_not_found].nil?
        type
      end
    end

    module BatchGetReportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetReportsInput, context: context)
        type = Types::BatchGetReportsInput.new
        type.report_arns = ReportArns.build(params[:report_arns], context: "#{context}[:report_arns]") unless params[:report_arns].nil?
        type
      end
    end

    module BatchGetReportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetReportsOutput, context: context)
        type = Types::BatchGetReportsOutput.new
        type.reports = Reports.build(params[:reports], context: "#{context}[:reports]") unless params[:reports].nil?
        type.reports_not_found = ReportArns.build(params[:reports_not_found], context: "#{context}[:reports_not_found]") unless params[:reports_not_found].nil?
        type
      end
    end

    module BatchRestrictions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchRestrictions, context: context)
        type = Types::BatchRestrictions.new
        type.maximum_builds_allowed = params[:maximum_builds_allowed]
        type.compute_types_allowed = ComputeTypesAllowed.build(params[:compute_types_allowed], context: "#{context}[:compute_types_allowed]") unless params[:compute_types_allowed].nil?
        type
      end
    end

    module Build
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Build, context: context)
        type = Types::Build.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.build_number = params[:build_number]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.current_phase = params[:current_phase]
        type.build_status = params[:build_status]
        type.source_version = params[:source_version]
        type.resolved_source_version = params[:resolved_source_version]
        type.project_name = params[:project_name]
        type.phases = BuildPhases.build(params[:phases], context: "#{context}[:phases]") unless params[:phases].nil?
        type.source = ProjectSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.secondary_sources = ProjectSources.build(params[:secondary_sources], context: "#{context}[:secondary_sources]") unless params[:secondary_sources].nil?
        type.secondary_source_versions = ProjectSecondarySourceVersions.build(params[:secondary_source_versions], context: "#{context}[:secondary_source_versions]") unless params[:secondary_source_versions].nil?
        type.artifacts = BuildArtifacts.build(params[:artifacts], context: "#{context}[:artifacts]") unless params[:artifacts].nil?
        type.secondary_artifacts = BuildArtifactsList.build(params[:secondary_artifacts], context: "#{context}[:secondary_artifacts]") unless params[:secondary_artifacts].nil?
        type.cache = ProjectCache.build(params[:cache], context: "#{context}[:cache]") unless params[:cache].nil?
        type.environment = ProjectEnvironment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.service_role = params[:service_role]
        type.logs = LogsLocation.build(params[:logs], context: "#{context}[:logs]") unless params[:logs].nil?
        type.timeout_in_minutes = params[:timeout_in_minutes]
        type.queued_timeout_in_minutes = params[:queued_timeout_in_minutes]
        type.build_complete = params[:build_complete]
        type.initiator = params[:initiator]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.network_interface = NetworkInterface.build(params[:network_interface], context: "#{context}[:network_interface]") unless params[:network_interface].nil?
        type.encryption_key = params[:encryption_key]
        type.exported_environment_variables = ExportedEnvironmentVariables.build(params[:exported_environment_variables], context: "#{context}[:exported_environment_variables]") unless params[:exported_environment_variables].nil?
        type.report_arns = BuildReportArns.build(params[:report_arns], context: "#{context}[:report_arns]") unless params[:report_arns].nil?
        type.file_system_locations = ProjectFileSystemLocations.build(params[:file_system_locations], context: "#{context}[:file_system_locations]") unless params[:file_system_locations].nil?
        type.debug_session = DebugSession.build(params[:debug_session], context: "#{context}[:debug_session]") unless params[:debug_session].nil?
        type.build_batch_arn = params[:build_batch_arn]
        type
      end
    end

    module BuildArtifacts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuildArtifacts, context: context)
        type = Types::BuildArtifacts.new
        type.location = params[:location]
        type.sha256sum = params[:sha256sum]
        type.md5sum = params[:md5sum]
        type.override_artifact_name = params[:override_artifact_name]
        type.encryption_disabled = params[:encryption_disabled]
        type.artifact_identifier = params[:artifact_identifier]
        type.bucket_owner_access = params[:bucket_owner_access]
        type
      end
    end

    module BuildArtifactsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BuildArtifacts.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BuildBatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuildBatch, context: context)
        type = Types::BuildBatch.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.current_phase = params[:current_phase]
        type.build_batch_status = params[:build_batch_status]
        type.source_version = params[:source_version]
        type.resolved_source_version = params[:resolved_source_version]
        type.project_name = params[:project_name]
        type.phases = BuildBatchPhases.build(params[:phases], context: "#{context}[:phases]") unless params[:phases].nil?
        type.source = ProjectSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.secondary_sources = ProjectSources.build(params[:secondary_sources], context: "#{context}[:secondary_sources]") unless params[:secondary_sources].nil?
        type.secondary_source_versions = ProjectSecondarySourceVersions.build(params[:secondary_source_versions], context: "#{context}[:secondary_source_versions]") unless params[:secondary_source_versions].nil?
        type.artifacts = BuildArtifacts.build(params[:artifacts], context: "#{context}[:artifacts]") unless params[:artifacts].nil?
        type.secondary_artifacts = BuildArtifactsList.build(params[:secondary_artifacts], context: "#{context}[:secondary_artifacts]") unless params[:secondary_artifacts].nil?
        type.cache = ProjectCache.build(params[:cache], context: "#{context}[:cache]") unless params[:cache].nil?
        type.environment = ProjectEnvironment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.service_role = params[:service_role]
        type.log_config = LogsConfig.build(params[:log_config], context: "#{context}[:log_config]") unless params[:log_config].nil?
        type.build_timeout_in_minutes = params[:build_timeout_in_minutes]
        type.queued_timeout_in_minutes = params[:queued_timeout_in_minutes]
        type.complete = params[:complete]
        type.initiator = params[:initiator]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.encryption_key = params[:encryption_key]
        type.build_batch_number = params[:build_batch_number]
        type.file_system_locations = ProjectFileSystemLocations.build(params[:file_system_locations], context: "#{context}[:file_system_locations]") unless params[:file_system_locations].nil?
        type.build_batch_config = ProjectBuildBatchConfig.build(params[:build_batch_config], context: "#{context}[:build_batch_config]") unless params[:build_batch_config].nil?
        type.build_groups = BuildGroups.build(params[:build_groups], context: "#{context}[:build_groups]") unless params[:build_groups].nil?
        type.debug_session_enabled = params[:debug_session_enabled]
        type
      end
    end

    module BuildBatchFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuildBatchFilter, context: context)
        type = Types::BuildBatchFilter.new
        type.status = params[:status]
        type
      end
    end

    module BuildBatchIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BuildBatchPhase
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuildBatchPhase, context: context)
        type = Types::BuildBatchPhase.new
        type.phase_type = params[:phase_type]
        type.phase_status = params[:phase_status]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.duration_in_seconds = params[:duration_in_seconds]
        type.contexts = PhaseContexts.build(params[:contexts], context: "#{context}[:contexts]") unless params[:contexts].nil?
        type
      end
    end

    module BuildBatchPhases
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BuildBatchPhase.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BuildBatches
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BuildBatch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BuildGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuildGroup, context: context)
        type = Types::BuildGroup.new
        type.identifier = params[:identifier]
        type.depends_on = Identifiers.build(params[:depends_on], context: "#{context}[:depends_on]") unless params[:depends_on].nil?
        type.ignore_failure = params[:ignore_failure]
        type.current_build_summary = BuildSummary.build(params[:current_build_summary], context: "#{context}[:current_build_summary]") unless params[:current_build_summary].nil?
        type.prior_build_summary_list = BuildSummaries.build(params[:prior_build_summary_list], context: "#{context}[:prior_build_summary_list]") unless params[:prior_build_summary_list].nil?
        type
      end
    end

    module BuildGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BuildGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BuildIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BuildNotDeleted
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuildNotDeleted, context: context)
        type = Types::BuildNotDeleted.new
        type.id = params[:id]
        type.status_code = params[:status_code]
        type
      end
    end

    module BuildPhase
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuildPhase, context: context)
        type = Types::BuildPhase.new
        type.phase_type = params[:phase_type]
        type.phase_status = params[:phase_status]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.duration_in_seconds = params[:duration_in_seconds]
        type.contexts = PhaseContexts.build(params[:contexts], context: "#{context}[:contexts]") unless params[:contexts].nil?
        type
      end
    end

    module BuildPhases
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BuildPhase.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BuildReportArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BuildStatusConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuildStatusConfig, context: context)
        type = Types::BuildStatusConfig.new
        type.context = params[:context]
        type.target_url = params[:target_url]
        type
      end
    end

    module BuildSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BuildSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BuildSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BuildSummary, context: context)
        type = Types::BuildSummary.new
        type.arn = params[:arn]
        type.requested_on = params[:requested_on]
        type.build_status = params[:build_status]
        type.primary_artifact = ResolvedArtifact.build(params[:primary_artifact], context: "#{context}[:primary_artifact]") unless params[:primary_artifact].nil?
        type.secondary_artifacts = ResolvedSecondaryArtifacts.build(params[:secondary_artifacts], context: "#{context}[:secondary_artifacts]") unless params[:secondary_artifacts].nil?
        type
      end
    end

    module Builds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Build.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BuildsNotDeleted
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BuildNotDeleted.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CloudWatchLogsConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchLogsConfig, context: context)
        type = Types::CloudWatchLogsConfig.new
        type.status = params[:status]
        type.group_name = params[:group_name]
        type.stream_name = params[:stream_name]
        type
      end
    end

    module CodeCoverage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeCoverage, context: context)
        type = Types::CodeCoverage.new
        type.id = params[:id]
        type.report_arn = params[:report_arn]
        type.file_path = params[:file_path]
        type.line_coverage_percentage = params[:line_coverage_percentage]
        type.lines_covered = params[:lines_covered]
        type.lines_missed = params[:lines_missed]
        type.branch_coverage_percentage = params[:branch_coverage_percentage]
        type.branches_covered = params[:branches_covered]
        type.branches_missed = params[:branches_missed]
        type.expired = params[:expired]
        type
      end
    end

    module CodeCoverageReportSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeCoverageReportSummary, context: context)
        type = Types::CodeCoverageReportSummary.new
        type.line_coverage_percentage = params[:line_coverage_percentage]
        type.lines_covered = params[:lines_covered]
        type.lines_missed = params[:lines_missed]
        type.branch_coverage_percentage = params[:branch_coverage_percentage]
        type.branches_covered = params[:branches_covered]
        type.branches_missed = params[:branches_missed]
        type
      end
    end

    module CodeCoverages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CodeCoverage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComputeTypesAllowed
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectInput, context: context)
        type = Types::CreateProjectInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.source = ProjectSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.secondary_sources = ProjectSources.build(params[:secondary_sources], context: "#{context}[:secondary_sources]") unless params[:secondary_sources].nil?
        type.source_version = params[:source_version]
        type.secondary_source_versions = ProjectSecondarySourceVersions.build(params[:secondary_source_versions], context: "#{context}[:secondary_source_versions]") unless params[:secondary_source_versions].nil?
        type.artifacts = ProjectArtifacts.build(params[:artifacts], context: "#{context}[:artifacts]") unless params[:artifacts].nil?
        type.secondary_artifacts = ProjectArtifactsList.build(params[:secondary_artifacts], context: "#{context}[:secondary_artifacts]") unless params[:secondary_artifacts].nil?
        type.cache = ProjectCache.build(params[:cache], context: "#{context}[:cache]") unless params[:cache].nil?
        type.environment = ProjectEnvironment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.service_role = params[:service_role]
        type.timeout_in_minutes = params[:timeout_in_minutes]
        type.queued_timeout_in_minutes = params[:queued_timeout_in_minutes]
        type.encryption_key = params[:encryption_key]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.badge_enabled = params[:badge_enabled]
        type.logs_config = LogsConfig.build(params[:logs_config], context: "#{context}[:logs_config]") unless params[:logs_config].nil?
        type.file_system_locations = ProjectFileSystemLocations.build(params[:file_system_locations], context: "#{context}[:file_system_locations]") unless params[:file_system_locations].nil?
        type.build_batch_config = ProjectBuildBatchConfig.build(params[:build_batch_config], context: "#{context}[:build_batch_config]") unless params[:build_batch_config].nil?
        type.concurrent_build_limit = params[:concurrent_build_limit]
        type
      end
    end

    module CreateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectOutput, context: context)
        type = Types::CreateProjectOutput.new
        type.project = Project.build(params[:project], context: "#{context}[:project]") unless params[:project].nil?
        type
      end
    end

    module CreateReportGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReportGroupInput, context: context)
        type = Types::CreateReportGroupInput.new
        type.name = params[:name]
        type.type = params[:type]
        type.export_config = ReportExportConfig.build(params[:export_config], context: "#{context}[:export_config]") unless params[:export_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateReportGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReportGroupOutput, context: context)
        type = Types::CreateReportGroupOutput.new
        type.report_group = ReportGroup.build(params[:report_group], context: "#{context}[:report_group]") unless params[:report_group].nil?
        type
      end
    end

    module CreateWebhookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWebhookInput, context: context)
        type = Types::CreateWebhookInput.new
        type.project_name = params[:project_name]
        type.branch_filter = params[:branch_filter]
        type.filter_groups = FilterGroups.build(params[:filter_groups], context: "#{context}[:filter_groups]") unless params[:filter_groups].nil?
        type.build_type = params[:build_type]
        type
      end
    end

    module CreateWebhookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWebhookOutput, context: context)
        type = Types::CreateWebhookOutput.new
        type.webhook = Webhook.build(params[:webhook], context: "#{context}[:webhook]") unless params[:webhook].nil?
        type
      end
    end

    module DebugSession
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DebugSession, context: context)
        type = Types::DebugSession.new
        type.session_enabled = params[:session_enabled]
        type.session_target = params[:session_target]
        type
      end
    end

    module DeleteBuildBatchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBuildBatchInput, context: context)
        type = Types::DeleteBuildBatchInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteBuildBatchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBuildBatchOutput, context: context)
        type = Types::DeleteBuildBatchOutput.new
        type.status_code = params[:status_code]
        type.builds_deleted = BuildIds.build(params[:builds_deleted], context: "#{context}[:builds_deleted]") unless params[:builds_deleted].nil?
        type.builds_not_deleted = BuildsNotDeleted.build(params[:builds_not_deleted], context: "#{context}[:builds_not_deleted]") unless params[:builds_not_deleted].nil?
        type
      end
    end

    module DeleteProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectInput, context: context)
        type = Types::DeleteProjectInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectOutput, context: context)
        type = Types::DeleteProjectOutput.new
        type
      end
    end

    module DeleteReportGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReportGroupInput, context: context)
        type = Types::DeleteReportGroupInput.new
        type.arn = params[:arn]
        type.delete_reports = params[:delete_reports]
        type
      end
    end

    module DeleteReportGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReportGroupOutput, context: context)
        type = Types::DeleteReportGroupOutput.new
        type
      end
    end

    module DeleteReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReportInput, context: context)
        type = Types::DeleteReportInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReportOutput, context: context)
        type = Types::DeleteReportOutput.new
        type
      end
    end

    module DeleteResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyInput, context: context)
        type = Types::DeleteResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DeleteResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyOutput, context: context)
        type = Types::DeleteResourcePolicyOutput.new
        type
      end
    end

    module DeleteSourceCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSourceCredentialsInput, context: context)
        type = Types::DeleteSourceCredentialsInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteSourceCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSourceCredentialsOutput, context: context)
        type = Types::DeleteSourceCredentialsOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteWebhookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWebhookInput, context: context)
        type = Types::DeleteWebhookInput.new
        type.project_name = params[:project_name]
        type
      end
    end

    module DeleteWebhookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWebhookOutput, context: context)
        type = Types::DeleteWebhookOutput.new
        type
      end
    end

    module DescribeCodeCoveragesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCodeCoveragesInput, context: context)
        type = Types::DescribeCodeCoveragesInput.new
        type.report_arn = params[:report_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type.min_line_coverage_percentage = params[:min_line_coverage_percentage]
        type.max_line_coverage_percentage = params[:max_line_coverage_percentage]
        type
      end
    end

    module DescribeCodeCoveragesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCodeCoveragesOutput, context: context)
        type = Types::DescribeCodeCoveragesOutput.new
        type.next_token = params[:next_token]
        type.code_coverages = CodeCoverages.build(params[:code_coverages], context: "#{context}[:code_coverages]") unless params[:code_coverages].nil?
        type
      end
    end

    module DescribeTestCasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTestCasesInput, context: context)
        type = Types::DescribeTestCasesInput.new
        type.report_arn = params[:report_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filter = TestCaseFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module DescribeTestCasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTestCasesOutput, context: context)
        type = Types::DescribeTestCasesOutput.new
        type.next_token = params[:next_token]
        type.test_cases = TestCases.build(params[:test_cases], context: "#{context}[:test_cases]") unless params[:test_cases].nil?
        type
      end
    end

    module EnvironmentImage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentImage, context: context)
        type = Types::EnvironmentImage.new
        type.name = params[:name]
        type.description = params[:description]
        type.versions = ImageVersions.build(params[:versions], context: "#{context}[:versions]") unless params[:versions].nil?
        type
      end
    end

    module EnvironmentImages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentImage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentLanguage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentLanguage, context: context)
        type = Types::EnvironmentLanguage.new
        type.language = params[:language]
        type.images = EnvironmentImages.build(params[:images], context: "#{context}[:images]") unless params[:images].nil?
        type
      end
    end

    module EnvironmentLanguages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentLanguage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentPlatform
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentPlatform, context: context)
        type = Types::EnvironmentPlatform.new
        type.platform = params[:platform]
        type.languages = EnvironmentLanguages.build(params[:languages], context: "#{context}[:languages]") unless params[:languages].nil?
        type
      end
    end

    module EnvironmentPlatforms
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentPlatform.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentVariable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentVariable, context: context)
        type = Types::EnvironmentVariable.new
        type.name = params[:name]
        type.value = params[:value]
        type.type = params[:type]
        type
      end
    end

    module EnvironmentVariables
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentVariable.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExportedEnvironmentVariable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportedEnvironmentVariable, context: context)
        type = Types::ExportedEnvironmentVariable.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module ExportedEnvironmentVariables
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExportedEnvironmentVariable.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FilterGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WebhookFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FilterGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FilterGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetReportGroupTrendInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReportGroupTrendInput, context: context)
        type = Types::GetReportGroupTrendInput.new
        type.report_group_arn = params[:report_group_arn]
        type.num_of_reports = params[:num_of_reports]
        type.trend_field = params[:trend_field]
        type
      end
    end

    module GetReportGroupTrendOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReportGroupTrendOutput, context: context)
        type = Types::GetReportGroupTrendOutput.new
        type.stats = ReportGroupTrendStats.build(params[:stats], context: "#{context}[:stats]") unless params[:stats].nil?
        type.raw_data = ReportGroupTrendRawDataList.build(params[:raw_data], context: "#{context}[:raw_data]") unless params[:raw_data].nil?
        type
      end
    end

    module GetResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePolicyInput, context: context)
        type = Types::GetResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module GetResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePolicyOutput, context: context)
        type = Types::GetResourcePolicyOutput.new
        type.policy = params[:policy]
        type
      end
    end

    module GitSubmodulesConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GitSubmodulesConfig, context: context)
        type = Types::GitSubmodulesConfig.new
        type.fetch_submodules = params[:fetch_submodules]
        type
      end
    end

    module Identifiers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ImageVersions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ImportSourceCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportSourceCredentialsInput, context: context)
        type = Types::ImportSourceCredentialsInput.new
        type.username = params[:username]
        type.token = params[:token]
        type.server_type = params[:server_type]
        type.auth_type = params[:auth_type]
        type.should_overwrite = params[:should_overwrite]
        type
      end
    end

    module ImportSourceCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportSourceCredentialsOutput, context: context)
        type = Types::ImportSourceCredentialsOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidateProjectCacheInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidateProjectCacheInput, context: context)
        type = Types::InvalidateProjectCacheInput.new
        type.project_name = params[:project_name]
        type
      end
    end

    module InvalidateProjectCacheOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidateProjectCacheOutput, context: context)
        type = Types::InvalidateProjectCacheOutput.new
        type
      end
    end

    module ListBuildBatchesForProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBuildBatchesForProjectInput, context: context)
        type = Types::ListBuildBatchesForProjectInput.new
        type.project_name = params[:project_name]
        type.filter = BuildBatchFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.max_results = params[:max_results]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBuildBatchesForProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBuildBatchesForProjectOutput, context: context)
        type = Types::ListBuildBatchesForProjectOutput.new
        type.ids = BuildBatchIds.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBuildBatchesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBuildBatchesInput, context: context)
        type = Types::ListBuildBatchesInput.new
        type.filter = BuildBatchFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.max_results = params[:max_results]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBuildBatchesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBuildBatchesOutput, context: context)
        type = Types::ListBuildBatchesOutput.new
        type.ids = BuildBatchIds.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBuildsForProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBuildsForProjectInput, context: context)
        type = Types::ListBuildsForProjectInput.new
        type.project_name = params[:project_name]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBuildsForProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBuildsForProjectOutput, context: context)
        type = Types::ListBuildsForProjectOutput.new
        type.ids = BuildIds.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBuildsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBuildsInput, context: context)
        type = Types::ListBuildsInput.new
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBuildsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBuildsOutput, context: context)
        type = Types::ListBuildsOutput.new
        type.ids = BuildIds.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCuratedEnvironmentImagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCuratedEnvironmentImagesInput, context: context)
        type = Types::ListCuratedEnvironmentImagesInput.new
        type
      end
    end

    module ListCuratedEnvironmentImagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCuratedEnvironmentImagesOutput, context: context)
        type = Types::ListCuratedEnvironmentImagesOutput.new
        type.platforms = EnvironmentPlatforms.build(params[:platforms], context: "#{context}[:platforms]") unless params[:platforms].nil?
        type
      end
    end

    module ListProjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsInput, context: context)
        type = Types::ListProjectsInput.new
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsOutput, context: context)
        type = Types::ListProjectsOutput.new
        type.next_token = params[:next_token]
        type.projects = ProjectNames.build(params[:projects], context: "#{context}[:projects]") unless params[:projects].nil?
        type
      end
    end

    module ListReportGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReportGroupsInput, context: context)
        type = Types::ListReportGroupsInput.new
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListReportGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReportGroupsOutput, context: context)
        type = Types::ListReportGroupsOutput.new
        type.next_token = params[:next_token]
        type.report_groups = ReportGroupArns.build(params[:report_groups], context: "#{context}[:report_groups]") unless params[:report_groups].nil?
        type
      end
    end

    module ListReportsForReportGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReportsForReportGroupInput, context: context)
        type = Types::ListReportsForReportGroupInput.new
        type.report_group_arn = params[:report_group_arn]
        type.next_token = params[:next_token]
        type.sort_order = params[:sort_order]
        type.max_results = params[:max_results]
        type.filter = ReportFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module ListReportsForReportGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReportsForReportGroupOutput, context: context)
        type = Types::ListReportsForReportGroupOutput.new
        type.next_token = params[:next_token]
        type.reports = ReportArns.build(params[:reports], context: "#{context}[:reports]") unless params[:reports].nil?
        type
      end
    end

    module ListReportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReportsInput, context: context)
        type = Types::ListReportsInput.new
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filter = ReportFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module ListReportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReportsOutput, context: context)
        type = Types::ListReportsOutput.new
        type.next_token = params[:next_token]
        type.reports = ReportArns.build(params[:reports], context: "#{context}[:reports]") unless params[:reports].nil?
        type
      end
    end

    module ListSharedProjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSharedProjectsInput, context: context)
        type = Types::ListSharedProjectsInput.new
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSharedProjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSharedProjectsOutput, context: context)
        type = Types::ListSharedProjectsOutput.new
        type.next_token = params[:next_token]
        type.projects = ProjectArns.build(params[:projects], context: "#{context}[:projects]") unless params[:projects].nil?
        type
      end
    end

    module ListSharedReportGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSharedReportGroupsInput, context: context)
        type = Types::ListSharedReportGroupsInput.new
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSharedReportGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSharedReportGroupsOutput, context: context)
        type = Types::ListSharedReportGroupsOutput.new
        type.next_token = params[:next_token]
        type.report_groups = ReportGroupArns.build(params[:report_groups], context: "#{context}[:report_groups]") unless params[:report_groups].nil?
        type
      end
    end

    module ListSourceCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSourceCredentialsInput, context: context)
        type = Types::ListSourceCredentialsInput.new
        type
      end
    end

    module ListSourceCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSourceCredentialsOutput, context: context)
        type = Types::ListSourceCredentialsOutput.new
        type.source_credentials_infos = SourceCredentialsInfos.build(params[:source_credentials_infos], context: "#{context}[:source_credentials_infos]") unless params[:source_credentials_infos].nil?
        type
      end
    end

    module LogsConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogsConfig, context: context)
        type = Types::LogsConfig.new
        type.cloud_watch_logs = CloudWatchLogsConfig.build(params[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless params[:cloud_watch_logs].nil?
        type.s3_logs = S3LogsConfig.build(params[:s3_logs], context: "#{context}[:s3_logs]") unless params[:s3_logs].nil?
        type
      end
    end

    module LogsLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogsLocation, context: context)
        type = Types::LogsLocation.new
        type.group_name = params[:group_name]
        type.stream_name = params[:stream_name]
        type.deep_link = params[:deep_link]
        type.s3_deep_link = params[:s3_deep_link]
        type.cloud_watch_logs_arn = params[:cloud_watch_logs_arn]
        type.s3_logs_arn = params[:s3_logs_arn]
        type.cloud_watch_logs = CloudWatchLogsConfig.build(params[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless params[:cloud_watch_logs].nil?
        type.s3_logs = S3LogsConfig.build(params[:s3_logs], context: "#{context}[:s3_logs]") unless params[:s3_logs].nil?
        type
      end
    end

    module NetworkInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInterface, context: context)
        type = Types::NetworkInterface.new
        type.subnet_id = params[:subnet_id]
        type.network_interface_id = params[:network_interface_id]
        type
      end
    end

    module OAuthProviderException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OAuthProviderException, context: context)
        type = Types::OAuthProviderException.new
        type.message = params[:message]
        type
      end
    end

    module PhaseContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhaseContext, context: context)
        type = Types::PhaseContext.new
        type.status_code = params[:status_code]
        type.message = params[:message]
        type
      end
    end

    module PhaseContexts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PhaseContext.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Project
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Project, context: context)
        type = Types::Project.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.description = params[:description]
        type.source = ProjectSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.secondary_sources = ProjectSources.build(params[:secondary_sources], context: "#{context}[:secondary_sources]") unless params[:secondary_sources].nil?
        type.source_version = params[:source_version]
        type.secondary_source_versions = ProjectSecondarySourceVersions.build(params[:secondary_source_versions], context: "#{context}[:secondary_source_versions]") unless params[:secondary_source_versions].nil?
        type.artifacts = ProjectArtifacts.build(params[:artifacts], context: "#{context}[:artifacts]") unless params[:artifacts].nil?
        type.secondary_artifacts = ProjectArtifactsList.build(params[:secondary_artifacts], context: "#{context}[:secondary_artifacts]") unless params[:secondary_artifacts].nil?
        type.cache = ProjectCache.build(params[:cache], context: "#{context}[:cache]") unless params[:cache].nil?
        type.environment = ProjectEnvironment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.service_role = params[:service_role]
        type.timeout_in_minutes = params[:timeout_in_minutes]
        type.queued_timeout_in_minutes = params[:queued_timeout_in_minutes]
        type.encryption_key = params[:encryption_key]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.created = params[:created]
        type.last_modified = params[:last_modified]
        type.webhook = Webhook.build(params[:webhook], context: "#{context}[:webhook]") unless params[:webhook].nil?
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.badge = ProjectBadge.build(params[:badge], context: "#{context}[:badge]") unless params[:badge].nil?
        type.logs_config = LogsConfig.build(params[:logs_config], context: "#{context}[:logs_config]") unless params[:logs_config].nil?
        type.file_system_locations = ProjectFileSystemLocations.build(params[:file_system_locations], context: "#{context}[:file_system_locations]") unless params[:file_system_locations].nil?
        type.build_batch_config = ProjectBuildBatchConfig.build(params[:build_batch_config], context: "#{context}[:build_batch_config]") unless params[:build_batch_config].nil?
        type.concurrent_build_limit = params[:concurrent_build_limit]
        type.project_visibility = params[:project_visibility]
        type.public_project_alias = params[:public_project_alias]
        type.resource_access_role = params[:resource_access_role]
        type
      end
    end

    module ProjectArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProjectArtifacts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectArtifacts, context: context)
        type = Types::ProjectArtifacts.new
        type.type = params[:type]
        type.location = params[:location]
        type.path = params[:path]
        type.namespace_type = params[:namespace_type]
        type.name = params[:name]
        type.packaging = params[:packaging]
        type.override_artifact_name = params[:override_artifact_name]
        type.encryption_disabled = params[:encryption_disabled]
        type.artifact_identifier = params[:artifact_identifier]
        type.bucket_owner_access = params[:bucket_owner_access]
        type
      end
    end

    module ProjectArtifactsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectArtifacts.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProjectBadge
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectBadge, context: context)
        type = Types::ProjectBadge.new
        type.badge_enabled = params[:badge_enabled]
        type.badge_request_url = params[:badge_request_url]
        type
      end
    end

    module ProjectBuildBatchConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectBuildBatchConfig, context: context)
        type = Types::ProjectBuildBatchConfig.new
        type.service_role = params[:service_role]
        type.combine_artifacts = params[:combine_artifacts]
        type.restrictions = BatchRestrictions.build(params[:restrictions], context: "#{context}[:restrictions]") unless params[:restrictions].nil?
        type.timeout_in_mins = params[:timeout_in_mins]
        type.batch_report_mode = params[:batch_report_mode]
        type
      end
    end

    module ProjectCache
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectCache, context: context)
        type = Types::ProjectCache.new
        type.type = params[:type]
        type.location = params[:location]
        type.modes = ProjectCacheModes.build(params[:modes], context: "#{context}[:modes]") unless params[:modes].nil?
        type
      end
    end

    module ProjectCacheModes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProjectEnvironment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectEnvironment, context: context)
        type = Types::ProjectEnvironment.new
        type.type = params[:type]
        type.image = params[:image]
        type.compute_type = params[:compute_type]
        type.environment_variables = EnvironmentVariables.build(params[:environment_variables], context: "#{context}[:environment_variables]") unless params[:environment_variables].nil?
        type.privileged_mode = params[:privileged_mode]
        type.certificate = params[:certificate]
        type.registry_credential = RegistryCredential.build(params[:registry_credential], context: "#{context}[:registry_credential]") unless params[:registry_credential].nil?
        type.image_pull_credentials_type = params[:image_pull_credentials_type]
        type
      end
    end

    module ProjectFileSystemLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectFileSystemLocation, context: context)
        type = Types::ProjectFileSystemLocation.new
        type.type = params[:type]
        type.location = params[:location]
        type.mount_point = params[:mount_point]
        type.identifier = params[:identifier]
        type.mount_options = params[:mount_options]
        type
      end
    end

    module ProjectFileSystemLocations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectFileSystemLocation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProjectNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProjectSecondarySourceVersions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectSourceVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProjectSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectSource, context: context)
        type = Types::ProjectSource.new
        type.type = params[:type]
        type.location = params[:location]
        type.git_clone_depth = params[:git_clone_depth]
        type.git_submodules_config = GitSubmodulesConfig.build(params[:git_submodules_config], context: "#{context}[:git_submodules_config]") unless params[:git_submodules_config].nil?
        type.buildspec = params[:buildspec]
        type.auth = SourceAuth.build(params[:auth], context: "#{context}[:auth]") unless params[:auth].nil?
        type.report_build_status = params[:report_build_status]
        type.build_status_config = BuildStatusConfig.build(params[:build_status_config], context: "#{context}[:build_status_config]") unless params[:build_status_config].nil?
        type.insecure_ssl = params[:insecure_ssl]
        type.source_identifier = params[:source_identifier]
        type
      end
    end

    module ProjectSourceVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectSourceVersion, context: context)
        type = Types::ProjectSourceVersion.new
        type.source_identifier = params[:source_identifier]
        type.source_version = params[:source_version]
        type
      end
    end

    module ProjectSources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Projects
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Project.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyInput, context: context)
        type = Types::PutResourcePolicyInput.new
        type.policy = params[:policy]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module PutResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyOutput, context: context)
        type = Types::PutResourcePolicyOutput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module RegistryCredential
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegistryCredential, context: context)
        type = Types::RegistryCredential.new
        type.credential = params[:credential]
        type.credential_provider = params[:credential_provider]
        type
      end
    end

    module Report
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Report, context: context)
        type = Types::Report.new
        type.arn = params[:arn]
        type.type = params[:type]
        type.name = params[:name]
        type.report_group_arn = params[:report_group_arn]
        type.execution_id = params[:execution_id]
        type.status = params[:status]
        type.created = params[:created]
        type.expired = params[:expired]
        type.export_config = ReportExportConfig.build(params[:export_config], context: "#{context}[:export_config]") unless params[:export_config].nil?
        type.truncated = params[:truncated]
        type.test_summary = TestReportSummary.build(params[:test_summary], context: "#{context}[:test_summary]") unless params[:test_summary].nil?
        type.code_coverage_summary = CodeCoverageReportSummary.build(params[:code_coverage_summary], context: "#{context}[:code_coverage_summary]") unless params[:code_coverage_summary].nil?
        type
      end
    end

    module ReportArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReportExportConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportExportConfig, context: context)
        type = Types::ReportExportConfig.new
        type.export_config_type = params[:export_config_type]
        type.s3_destination = S3ReportExportConfig.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type
      end
    end

    module ReportFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportFilter, context: context)
        type = Types::ReportFilter.new
        type.status = params[:status]
        type
      end
    end

    module ReportGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportGroup, context: context)
        type = Types::ReportGroup.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type.export_config = ReportExportConfig.build(params[:export_config], context: "#{context}[:export_config]") unless params[:export_config].nil?
        type.created = params[:created]
        type.last_modified = params[:last_modified]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.status = params[:status]
        type
      end
    end

    module ReportGroupArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReportGroupTrendRawDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReportWithRawData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReportGroupTrendStats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportGroupTrendStats, context: context)
        type = Types::ReportGroupTrendStats.new
        type.average = params[:average]
        type.max = params[:max]
        type.min = params[:min]
        type
      end
    end

    module ReportGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReportGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReportStatusCounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ReportWithRawData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportWithRawData, context: context)
        type = Types::ReportWithRawData.new
        type.report_arn = params[:report_arn]
        type.data = params[:data]
        type
      end
    end

    module Reports
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Report.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResolvedArtifact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolvedArtifact, context: context)
        type = Types::ResolvedArtifact.new
        type.type = params[:type]
        type.location = params[:location]
        type.identifier = params[:identifier]
        type
      end
    end

    module ResolvedSecondaryArtifacts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResolvedArtifact.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
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

    module RetryBuildBatchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryBuildBatchInput, context: context)
        type = Types::RetryBuildBatchInput.new
        type.id = params[:id]
        type.idempotency_token = params[:idempotency_token]
        type.retry_type = params[:retry_type]
        type
      end
    end

    module RetryBuildBatchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryBuildBatchOutput, context: context)
        type = Types::RetryBuildBatchOutput.new
        type.build_batch = BuildBatch.build(params[:build_batch], context: "#{context}[:build_batch]") unless params[:build_batch].nil?
        type
      end
    end

    module RetryBuildInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryBuildInput, context: context)
        type = Types::RetryBuildInput.new
        type.id = params[:id]
        type.idempotency_token = params[:idempotency_token]
        type
      end
    end

    module RetryBuildOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryBuildOutput, context: context)
        type = Types::RetryBuildOutput.new
        type.build = Build.build(params[:build], context: "#{context}[:build]") unless params[:build].nil?
        type
      end
    end

    module S3LogsConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3LogsConfig, context: context)
        type = Types::S3LogsConfig.new
        type.status = params[:status]
        type.location = params[:location]
        type.encryption_disabled = params[:encryption_disabled]
        type.bucket_owner_access = params[:bucket_owner_access]
        type
      end
    end

    module S3ReportExportConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ReportExportConfig, context: context)
        type = Types::S3ReportExportConfig.new
        type.bucket = params[:bucket]
        type.bucket_owner = params[:bucket_owner]
        type.path = params[:path]
        type.packaging = params[:packaging]
        type.encryption_key = params[:encryption_key]
        type.encryption_disabled = params[:encryption_disabled]
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

    module SourceAuth
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceAuth, context: context)
        type = Types::SourceAuth.new
        type.type = params[:type]
        type.resource = params[:resource]
        type
      end
    end

    module SourceCredentialsInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceCredentialsInfo, context: context)
        type = Types::SourceCredentialsInfo.new
        type.arn = params[:arn]
        type.server_type = params[:server_type]
        type.auth_type = params[:auth_type]
        type
      end
    end

    module SourceCredentialsInfos
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SourceCredentialsInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartBuildBatchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBuildBatchInput, context: context)
        type = Types::StartBuildBatchInput.new
        type.project_name = params[:project_name]
        type.secondary_sources_override = ProjectSources.build(params[:secondary_sources_override], context: "#{context}[:secondary_sources_override]") unless params[:secondary_sources_override].nil?
        type.secondary_sources_version_override = ProjectSecondarySourceVersions.build(params[:secondary_sources_version_override], context: "#{context}[:secondary_sources_version_override]") unless params[:secondary_sources_version_override].nil?
        type.source_version = params[:source_version]
        type.artifacts_override = ProjectArtifacts.build(params[:artifacts_override], context: "#{context}[:artifacts_override]") unless params[:artifacts_override].nil?
        type.secondary_artifacts_override = ProjectArtifactsList.build(params[:secondary_artifacts_override], context: "#{context}[:secondary_artifacts_override]") unless params[:secondary_artifacts_override].nil?
        type.environment_variables_override = EnvironmentVariables.build(params[:environment_variables_override], context: "#{context}[:environment_variables_override]") unless params[:environment_variables_override].nil?
        type.source_type_override = params[:source_type_override]
        type.source_location_override = params[:source_location_override]
        type.source_auth_override = SourceAuth.build(params[:source_auth_override], context: "#{context}[:source_auth_override]") unless params[:source_auth_override].nil?
        type.git_clone_depth_override = params[:git_clone_depth_override]
        type.git_submodules_config_override = GitSubmodulesConfig.build(params[:git_submodules_config_override], context: "#{context}[:git_submodules_config_override]") unless params[:git_submodules_config_override].nil?
        type.buildspec_override = params[:buildspec_override]
        type.insecure_ssl_override = params[:insecure_ssl_override]
        type.report_build_batch_status_override = params[:report_build_batch_status_override]
        type.environment_type_override = params[:environment_type_override]
        type.image_override = params[:image_override]
        type.compute_type_override = params[:compute_type_override]
        type.certificate_override = params[:certificate_override]
        type.cache_override = ProjectCache.build(params[:cache_override], context: "#{context}[:cache_override]") unless params[:cache_override].nil?
        type.service_role_override = params[:service_role_override]
        type.privileged_mode_override = params[:privileged_mode_override]
        type.build_timeout_in_minutes_override = params[:build_timeout_in_minutes_override]
        type.queued_timeout_in_minutes_override = params[:queued_timeout_in_minutes_override]
        type.encryption_key_override = params[:encryption_key_override]
        type.idempotency_token = params[:idempotency_token]
        type.logs_config_override = LogsConfig.build(params[:logs_config_override], context: "#{context}[:logs_config_override]") unless params[:logs_config_override].nil?
        type.registry_credential_override = RegistryCredential.build(params[:registry_credential_override], context: "#{context}[:registry_credential_override]") unless params[:registry_credential_override].nil?
        type.image_pull_credentials_type_override = params[:image_pull_credentials_type_override]
        type.build_batch_config_override = ProjectBuildBatchConfig.build(params[:build_batch_config_override], context: "#{context}[:build_batch_config_override]") unless params[:build_batch_config_override].nil?
        type.debug_session_enabled = params[:debug_session_enabled]
        type
      end
    end

    module StartBuildBatchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBuildBatchOutput, context: context)
        type = Types::StartBuildBatchOutput.new
        type.build_batch = BuildBatch.build(params[:build_batch], context: "#{context}[:build_batch]") unless params[:build_batch].nil?
        type
      end
    end

    module StartBuildInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBuildInput, context: context)
        type = Types::StartBuildInput.new
        type.project_name = params[:project_name]
        type.secondary_sources_override = ProjectSources.build(params[:secondary_sources_override], context: "#{context}[:secondary_sources_override]") unless params[:secondary_sources_override].nil?
        type.secondary_sources_version_override = ProjectSecondarySourceVersions.build(params[:secondary_sources_version_override], context: "#{context}[:secondary_sources_version_override]") unless params[:secondary_sources_version_override].nil?
        type.source_version = params[:source_version]
        type.artifacts_override = ProjectArtifacts.build(params[:artifacts_override], context: "#{context}[:artifacts_override]") unless params[:artifacts_override].nil?
        type.secondary_artifacts_override = ProjectArtifactsList.build(params[:secondary_artifacts_override], context: "#{context}[:secondary_artifacts_override]") unless params[:secondary_artifacts_override].nil?
        type.environment_variables_override = EnvironmentVariables.build(params[:environment_variables_override], context: "#{context}[:environment_variables_override]") unless params[:environment_variables_override].nil?
        type.source_type_override = params[:source_type_override]
        type.source_location_override = params[:source_location_override]
        type.source_auth_override = SourceAuth.build(params[:source_auth_override], context: "#{context}[:source_auth_override]") unless params[:source_auth_override].nil?
        type.git_clone_depth_override = params[:git_clone_depth_override]
        type.git_submodules_config_override = GitSubmodulesConfig.build(params[:git_submodules_config_override], context: "#{context}[:git_submodules_config_override]") unless params[:git_submodules_config_override].nil?
        type.buildspec_override = params[:buildspec_override]
        type.insecure_ssl_override = params[:insecure_ssl_override]
        type.report_build_status_override = params[:report_build_status_override]
        type.build_status_config_override = BuildStatusConfig.build(params[:build_status_config_override], context: "#{context}[:build_status_config_override]") unless params[:build_status_config_override].nil?
        type.environment_type_override = params[:environment_type_override]
        type.image_override = params[:image_override]
        type.compute_type_override = params[:compute_type_override]
        type.certificate_override = params[:certificate_override]
        type.cache_override = ProjectCache.build(params[:cache_override], context: "#{context}[:cache_override]") unless params[:cache_override].nil?
        type.service_role_override = params[:service_role_override]
        type.privileged_mode_override = params[:privileged_mode_override]
        type.timeout_in_minutes_override = params[:timeout_in_minutes_override]
        type.queued_timeout_in_minutes_override = params[:queued_timeout_in_minutes_override]
        type.encryption_key_override = params[:encryption_key_override]
        type.idempotency_token = params[:idempotency_token]
        type.logs_config_override = LogsConfig.build(params[:logs_config_override], context: "#{context}[:logs_config_override]") unless params[:logs_config_override].nil?
        type.registry_credential_override = RegistryCredential.build(params[:registry_credential_override], context: "#{context}[:registry_credential_override]") unless params[:registry_credential_override].nil?
        type.image_pull_credentials_type_override = params[:image_pull_credentials_type_override]
        type.debug_session_enabled = params[:debug_session_enabled]
        type
      end
    end

    module StartBuildOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBuildOutput, context: context)
        type = Types::StartBuildOutput.new
        type.build = Build.build(params[:build], context: "#{context}[:build]") unless params[:build].nil?
        type
      end
    end

    module StopBuildBatchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopBuildBatchInput, context: context)
        type = Types::StopBuildBatchInput.new
        type.id = params[:id]
        type
      end
    end

    module StopBuildBatchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopBuildBatchOutput, context: context)
        type = Types::StopBuildBatchOutput.new
        type.build_batch = BuildBatch.build(params[:build_batch], context: "#{context}[:build_batch]") unless params[:build_batch].nil?
        type
      end
    end

    module StopBuildInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopBuildInput, context: context)
        type = Types::StopBuildInput.new
        type.id = params[:id]
        type
      end
    end

    module StopBuildOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopBuildOutput, context: context)
        type = Types::StopBuildOutput.new
        type.build = Build.build(params[:build], context: "#{context}[:build]") unless params[:build].nil?
        type
      end
    end

    module Subnets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestCase
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestCase, context: context)
        type = Types::TestCase.new
        type.report_arn = params[:report_arn]
        type.test_raw_data_path = params[:test_raw_data_path]
        type.prefix = params[:prefix]
        type.name = params[:name]
        type.status = params[:status]
        type.duration_in_nano_seconds = params[:duration_in_nano_seconds]
        type.message = params[:message]
        type.expired = params[:expired]
        type
      end
    end

    module TestCaseFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestCaseFilter, context: context)
        type = Types::TestCaseFilter.new
        type.status = params[:status]
        type.keyword = params[:keyword]
        type
      end
    end

    module TestCases
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TestCase.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TestReportSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestReportSummary, context: context)
        type = Types::TestReportSummary.new
        type.total = params[:total]
        type.status_counts = ReportStatusCounts.build(params[:status_counts], context: "#{context}[:status_counts]") unless params[:status_counts].nil?
        type.duration_in_nano_seconds = params[:duration_in_nano_seconds]
        type
      end
    end

    module UpdateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectInput, context: context)
        type = Types::UpdateProjectInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.source = ProjectSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.secondary_sources = ProjectSources.build(params[:secondary_sources], context: "#{context}[:secondary_sources]") unless params[:secondary_sources].nil?
        type.source_version = params[:source_version]
        type.secondary_source_versions = ProjectSecondarySourceVersions.build(params[:secondary_source_versions], context: "#{context}[:secondary_source_versions]") unless params[:secondary_source_versions].nil?
        type.artifacts = ProjectArtifacts.build(params[:artifacts], context: "#{context}[:artifacts]") unless params[:artifacts].nil?
        type.secondary_artifacts = ProjectArtifactsList.build(params[:secondary_artifacts], context: "#{context}[:secondary_artifacts]") unless params[:secondary_artifacts].nil?
        type.cache = ProjectCache.build(params[:cache], context: "#{context}[:cache]") unless params[:cache].nil?
        type.environment = ProjectEnvironment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.service_role = params[:service_role]
        type.timeout_in_minutes = params[:timeout_in_minutes]
        type.queued_timeout_in_minutes = params[:queued_timeout_in_minutes]
        type.encryption_key = params[:encryption_key]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.badge_enabled = params[:badge_enabled]
        type.logs_config = LogsConfig.build(params[:logs_config], context: "#{context}[:logs_config]") unless params[:logs_config].nil?
        type.file_system_locations = ProjectFileSystemLocations.build(params[:file_system_locations], context: "#{context}[:file_system_locations]") unless params[:file_system_locations].nil?
        type.build_batch_config = ProjectBuildBatchConfig.build(params[:build_batch_config], context: "#{context}[:build_batch_config]") unless params[:build_batch_config].nil?
        type.concurrent_build_limit = params[:concurrent_build_limit]
        type
      end
    end

    module UpdateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectOutput, context: context)
        type = Types::UpdateProjectOutput.new
        type.project = Project.build(params[:project], context: "#{context}[:project]") unless params[:project].nil?
        type
      end
    end

    module UpdateProjectVisibilityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectVisibilityInput, context: context)
        type = Types::UpdateProjectVisibilityInput.new
        type.project_arn = params[:project_arn]
        type.project_visibility = params[:project_visibility]
        type.resource_access_role = params[:resource_access_role]
        type
      end
    end

    module UpdateProjectVisibilityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectVisibilityOutput, context: context)
        type = Types::UpdateProjectVisibilityOutput.new
        type.project_arn = params[:project_arn]
        type.public_project_alias = params[:public_project_alias]
        type.project_visibility = params[:project_visibility]
        type
      end
    end

    module UpdateReportGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReportGroupInput, context: context)
        type = Types::UpdateReportGroupInput.new
        type.arn = params[:arn]
        type.export_config = ReportExportConfig.build(params[:export_config], context: "#{context}[:export_config]") unless params[:export_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateReportGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReportGroupOutput, context: context)
        type = Types::UpdateReportGroupOutput.new
        type.report_group = ReportGroup.build(params[:report_group], context: "#{context}[:report_group]") unless params[:report_group].nil?
        type
      end
    end

    module UpdateWebhookInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWebhookInput, context: context)
        type = Types::UpdateWebhookInput.new
        type.project_name = params[:project_name]
        type.branch_filter = params[:branch_filter]
        type.rotate_secret = params[:rotate_secret]
        type.filter_groups = FilterGroups.build(params[:filter_groups], context: "#{context}[:filter_groups]") unless params[:filter_groups].nil?
        type.build_type = params[:build_type]
        type
      end
    end

    module UpdateWebhookOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWebhookOutput, context: context)
        type = Types::UpdateWebhookOutput.new
        type.webhook = Webhook.build(params[:webhook], context: "#{context}[:webhook]") unless params[:webhook].nil?
        type
      end
    end

    module VpcConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfig, context: context)
        type = Types::VpcConfig.new
        type.vpc_id = params[:vpc_id]
        type.subnets = Subnets.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module Webhook
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Webhook, context: context)
        type = Types::Webhook.new
        type.url = params[:url]
        type.payload_url = params[:payload_url]
        type.secret = params[:secret]
        type.branch_filter = params[:branch_filter]
        type.filter_groups = FilterGroups.build(params[:filter_groups], context: "#{context}[:filter_groups]") unless params[:filter_groups].nil?
        type.build_type = params[:build_type]
        type.last_modified_secret = params[:last_modified_secret]
        type
      end
    end

    module WebhookFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WebhookFilter, context: context)
        type = Types::WebhookFilter.new
        type.type = params[:type]
        type.pattern = params[:pattern]
        type.exclude_matched_pattern = params[:exclude_matched_pattern]
        type
      end
    end

  end
end
