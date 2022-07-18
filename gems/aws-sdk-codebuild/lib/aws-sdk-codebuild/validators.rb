# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::CodeBuild
  module Validators

    class AccountLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchDeleteBuildsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteBuildsInput, context: context)
        BuildIds.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
      end
    end

    class BatchDeleteBuildsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteBuildsOutput, context: context)
        BuildIds.validate!(input[:builds_deleted], context: "#{context}[:builds_deleted]") unless input[:builds_deleted].nil?
        BuildsNotDeleted.validate!(input[:builds_not_deleted], context: "#{context}[:builds_not_deleted]") unless input[:builds_not_deleted].nil?
      end
    end

    class BatchGetBuildBatchesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetBuildBatchesInput, context: context)
        BuildBatchIds.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
      end
    end

    class BatchGetBuildBatchesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetBuildBatchesOutput, context: context)
        BuildBatches.validate!(input[:build_batches], context: "#{context}[:build_batches]") unless input[:build_batches].nil?
        BuildBatchIds.validate!(input[:build_batches_not_found], context: "#{context}[:build_batches_not_found]") unless input[:build_batches_not_found].nil?
      end
    end

    class BatchGetBuildsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetBuildsInput, context: context)
        BuildIds.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
      end
    end

    class BatchGetBuildsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetBuildsOutput, context: context)
        Builds.validate!(input[:builds], context: "#{context}[:builds]") unless input[:builds].nil?
        BuildIds.validate!(input[:builds_not_found], context: "#{context}[:builds_not_found]") unless input[:builds_not_found].nil?
      end
    end

    class BatchGetProjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetProjectsInput, context: context)
        ProjectNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
      end
    end

    class BatchGetProjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetProjectsOutput, context: context)
        Projects.validate!(input[:projects], context: "#{context}[:projects]") unless input[:projects].nil?
        ProjectNames.validate!(input[:projects_not_found], context: "#{context}[:projects_not_found]") unless input[:projects_not_found].nil?
      end
    end

    class BatchGetReportGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetReportGroupsInput, context: context)
        ReportGroupArns.validate!(input[:report_group_arns], context: "#{context}[:report_group_arns]") unless input[:report_group_arns].nil?
      end
    end

    class BatchGetReportGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetReportGroupsOutput, context: context)
        ReportGroups.validate!(input[:report_groups], context: "#{context}[:report_groups]") unless input[:report_groups].nil?
        ReportGroupArns.validate!(input[:report_groups_not_found], context: "#{context}[:report_groups_not_found]") unless input[:report_groups_not_found].nil?
      end
    end

    class BatchGetReportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetReportsInput, context: context)
        ReportArns.validate!(input[:report_arns], context: "#{context}[:report_arns]") unless input[:report_arns].nil?
      end
    end

    class BatchGetReportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetReportsOutput, context: context)
        Reports.validate!(input[:reports], context: "#{context}[:reports]") unless input[:reports].nil?
        ReportArns.validate!(input[:reports_not_found], context: "#{context}[:reports_not_found]") unless input[:reports_not_found].nil?
      end
    end

    class BatchRestrictions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchRestrictions, context: context)
        Hearth::Validator.validate!(input[:maximum_builds_allowed], ::Integer, context: "#{context}[:maximum_builds_allowed]")
        ComputeTypesAllowed.validate!(input[:compute_types_allowed], context: "#{context}[:compute_types_allowed]") unless input[:compute_types_allowed].nil?
      end
    end

    class Build
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Build, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:build_number], ::Integer, context: "#{context}[:build_number]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:current_phase], ::String, context: "#{context}[:current_phase]")
        Hearth::Validator.validate!(input[:build_status], ::String, context: "#{context}[:build_status]")
        Hearth::Validator.validate!(input[:source_version], ::String, context: "#{context}[:source_version]")
        Hearth::Validator.validate!(input[:resolved_source_version], ::String, context: "#{context}[:resolved_source_version]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        BuildPhases.validate!(input[:phases], context: "#{context}[:phases]") unless input[:phases].nil?
        ProjectSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        ProjectSources.validate!(input[:secondary_sources], context: "#{context}[:secondary_sources]") unless input[:secondary_sources].nil?
        ProjectSecondarySourceVersions.validate!(input[:secondary_source_versions], context: "#{context}[:secondary_source_versions]") unless input[:secondary_source_versions].nil?
        BuildArtifacts.validate!(input[:artifacts], context: "#{context}[:artifacts]") unless input[:artifacts].nil?
        BuildArtifactsList.validate!(input[:secondary_artifacts], context: "#{context}[:secondary_artifacts]") unless input[:secondary_artifacts].nil?
        ProjectCache.validate!(input[:cache], context: "#{context}[:cache]") unless input[:cache].nil?
        ProjectEnvironment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        LogsLocation.validate!(input[:logs], context: "#{context}[:logs]") unless input[:logs].nil?
        Hearth::Validator.validate!(input[:timeout_in_minutes], ::Integer, context: "#{context}[:timeout_in_minutes]")
        Hearth::Validator.validate!(input[:queued_timeout_in_minutes], ::Integer, context: "#{context}[:queued_timeout_in_minutes]")
        Hearth::Validator.validate!(input[:build_complete], ::TrueClass, ::FalseClass, context: "#{context}[:build_complete]")
        Hearth::Validator.validate!(input[:initiator], ::String, context: "#{context}[:initiator]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        NetworkInterface.validate!(input[:network_interface], context: "#{context}[:network_interface]") unless input[:network_interface].nil?
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        ExportedEnvironmentVariables.validate!(input[:exported_environment_variables], context: "#{context}[:exported_environment_variables]") unless input[:exported_environment_variables].nil?
        BuildReportArns.validate!(input[:report_arns], context: "#{context}[:report_arns]") unless input[:report_arns].nil?
        ProjectFileSystemLocations.validate!(input[:file_system_locations], context: "#{context}[:file_system_locations]") unless input[:file_system_locations].nil?
        DebugSession.validate!(input[:debug_session], context: "#{context}[:debug_session]") unless input[:debug_session].nil?
        Hearth::Validator.validate!(input[:build_batch_arn], ::String, context: "#{context}[:build_batch_arn]")
      end
    end

    class BuildArtifacts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuildArtifacts, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:sha256sum], ::String, context: "#{context}[:sha256sum]")
        Hearth::Validator.validate!(input[:md5sum], ::String, context: "#{context}[:md5sum]")
        Hearth::Validator.validate!(input[:override_artifact_name], ::TrueClass, ::FalseClass, context: "#{context}[:override_artifact_name]")
        Hearth::Validator.validate!(input[:encryption_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:encryption_disabled]")
        Hearth::Validator.validate!(input[:artifact_identifier], ::String, context: "#{context}[:artifact_identifier]")
        Hearth::Validator.validate!(input[:bucket_owner_access], ::String, context: "#{context}[:bucket_owner_access]")
      end
    end

    class BuildArtifactsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BuildArtifacts.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BuildBatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuildBatch, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:current_phase], ::String, context: "#{context}[:current_phase]")
        Hearth::Validator.validate!(input[:build_batch_status], ::String, context: "#{context}[:build_batch_status]")
        Hearth::Validator.validate!(input[:source_version], ::String, context: "#{context}[:source_version]")
        Hearth::Validator.validate!(input[:resolved_source_version], ::String, context: "#{context}[:resolved_source_version]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        BuildBatchPhases.validate!(input[:phases], context: "#{context}[:phases]") unless input[:phases].nil?
        ProjectSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        ProjectSources.validate!(input[:secondary_sources], context: "#{context}[:secondary_sources]") unless input[:secondary_sources].nil?
        ProjectSecondarySourceVersions.validate!(input[:secondary_source_versions], context: "#{context}[:secondary_source_versions]") unless input[:secondary_source_versions].nil?
        BuildArtifacts.validate!(input[:artifacts], context: "#{context}[:artifacts]") unless input[:artifacts].nil?
        BuildArtifactsList.validate!(input[:secondary_artifacts], context: "#{context}[:secondary_artifacts]") unless input[:secondary_artifacts].nil?
        ProjectCache.validate!(input[:cache], context: "#{context}[:cache]") unless input[:cache].nil?
        ProjectEnvironment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        LogsConfig.validate!(input[:log_config], context: "#{context}[:log_config]") unless input[:log_config].nil?
        Hearth::Validator.validate!(input[:build_timeout_in_minutes], ::Integer, context: "#{context}[:build_timeout_in_minutes]")
        Hearth::Validator.validate!(input[:queued_timeout_in_minutes], ::Integer, context: "#{context}[:queued_timeout_in_minutes]")
        Hearth::Validator.validate!(input[:complete], ::TrueClass, ::FalseClass, context: "#{context}[:complete]")
        Hearth::Validator.validate!(input[:initiator], ::String, context: "#{context}[:initiator]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        Hearth::Validator.validate!(input[:build_batch_number], ::Integer, context: "#{context}[:build_batch_number]")
        ProjectFileSystemLocations.validate!(input[:file_system_locations], context: "#{context}[:file_system_locations]") unless input[:file_system_locations].nil?
        ProjectBuildBatchConfig.validate!(input[:build_batch_config], context: "#{context}[:build_batch_config]") unless input[:build_batch_config].nil?
        BuildGroups.validate!(input[:build_groups], context: "#{context}[:build_groups]") unless input[:build_groups].nil?
        Hearth::Validator.validate!(input[:debug_session_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:debug_session_enabled]")
      end
    end

    class BuildBatchFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuildBatchFilter, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class BuildBatchIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BuildBatchPhase
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuildBatchPhase, context: context)
        Hearth::Validator.validate!(input[:phase_type], ::String, context: "#{context}[:phase_type]")
        Hearth::Validator.validate!(input[:phase_status], ::String, context: "#{context}[:phase_status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:duration_in_seconds], ::Integer, context: "#{context}[:duration_in_seconds]")
        PhaseContexts.validate!(input[:contexts], context: "#{context}[:contexts]") unless input[:contexts].nil?
      end
    end

    class BuildBatchPhases
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BuildBatchPhase.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BuildBatches
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BuildBatch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BuildGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuildGroup, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Identifiers.validate!(input[:depends_on], context: "#{context}[:depends_on]") unless input[:depends_on].nil?
        Hearth::Validator.validate!(input[:ignore_failure], ::TrueClass, ::FalseClass, context: "#{context}[:ignore_failure]")
        BuildSummary.validate!(input[:current_build_summary], context: "#{context}[:current_build_summary]") unless input[:current_build_summary].nil?
        BuildSummaries.validate!(input[:prior_build_summary_list], context: "#{context}[:prior_build_summary_list]") unless input[:prior_build_summary_list].nil?
      end
    end

    class BuildGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BuildGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BuildIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BuildNotDeleted
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuildNotDeleted, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
      end
    end

    class BuildPhase
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuildPhase, context: context)
        Hearth::Validator.validate!(input[:phase_type], ::String, context: "#{context}[:phase_type]")
        Hearth::Validator.validate!(input[:phase_status], ::String, context: "#{context}[:phase_status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:duration_in_seconds], ::Integer, context: "#{context}[:duration_in_seconds]")
        PhaseContexts.validate!(input[:contexts], context: "#{context}[:contexts]") unless input[:contexts].nil?
      end
    end

    class BuildPhases
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BuildPhase.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BuildReportArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BuildStatusConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuildStatusConfig, context: context)
        Hearth::Validator.validate!(input[:context], ::String, context: "#{context}[:context]")
        Hearth::Validator.validate!(input[:target_url], ::String, context: "#{context}[:target_url]")
      end
    end

    class BuildSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BuildSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BuildSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BuildSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:requested_on], ::Time, context: "#{context}[:requested_on]")
        Hearth::Validator.validate!(input[:build_status], ::String, context: "#{context}[:build_status]")
        ResolvedArtifact.validate!(input[:primary_artifact], context: "#{context}[:primary_artifact]") unless input[:primary_artifact].nil?
        ResolvedSecondaryArtifacts.validate!(input[:secondary_artifacts], context: "#{context}[:secondary_artifacts]") unless input[:secondary_artifacts].nil?
      end
    end

    class Builds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Build.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BuildsNotDeleted
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BuildNotDeleted.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CloudWatchLogsConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchLogsConfig, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
      end
    end

    class CodeCoverage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeCoverage, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:report_arn], ::String, context: "#{context}[:report_arn]")
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
        Hearth::Validator.validate!(input[:line_coverage_percentage], ::Float, context: "#{context}[:line_coverage_percentage]")
        Hearth::Validator.validate!(input[:lines_covered], ::Integer, context: "#{context}[:lines_covered]")
        Hearth::Validator.validate!(input[:lines_missed], ::Integer, context: "#{context}[:lines_missed]")
        Hearth::Validator.validate!(input[:branch_coverage_percentage], ::Float, context: "#{context}[:branch_coverage_percentage]")
        Hearth::Validator.validate!(input[:branches_covered], ::Integer, context: "#{context}[:branches_covered]")
        Hearth::Validator.validate!(input[:branches_missed], ::Integer, context: "#{context}[:branches_missed]")
        Hearth::Validator.validate!(input[:expired], ::Time, context: "#{context}[:expired]")
      end
    end

    class CodeCoverageReportSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeCoverageReportSummary, context: context)
        Hearth::Validator.validate!(input[:line_coverage_percentage], ::Float, context: "#{context}[:line_coverage_percentage]")
        Hearth::Validator.validate!(input[:lines_covered], ::Integer, context: "#{context}[:lines_covered]")
        Hearth::Validator.validate!(input[:lines_missed], ::Integer, context: "#{context}[:lines_missed]")
        Hearth::Validator.validate!(input[:branch_coverage_percentage], ::Float, context: "#{context}[:branch_coverage_percentage]")
        Hearth::Validator.validate!(input[:branches_covered], ::Integer, context: "#{context}[:branches_covered]")
        Hearth::Validator.validate!(input[:branches_missed], ::Integer, context: "#{context}[:branches_missed]")
      end
    end

    class CodeCoverages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CodeCoverage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComputeTypesAllowed
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ProjectSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        ProjectSources.validate!(input[:secondary_sources], context: "#{context}[:secondary_sources]") unless input[:secondary_sources].nil?
        Hearth::Validator.validate!(input[:source_version], ::String, context: "#{context}[:source_version]")
        ProjectSecondarySourceVersions.validate!(input[:secondary_source_versions], context: "#{context}[:secondary_source_versions]") unless input[:secondary_source_versions].nil?
        ProjectArtifacts.validate!(input[:artifacts], context: "#{context}[:artifacts]") unless input[:artifacts].nil?
        ProjectArtifactsList.validate!(input[:secondary_artifacts], context: "#{context}[:secondary_artifacts]") unless input[:secondary_artifacts].nil?
        ProjectCache.validate!(input[:cache], context: "#{context}[:cache]") unless input[:cache].nil?
        ProjectEnvironment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:timeout_in_minutes], ::Integer, context: "#{context}[:timeout_in_minutes]")
        Hearth::Validator.validate!(input[:queued_timeout_in_minutes], ::Integer, context: "#{context}[:queued_timeout_in_minutes]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:badge_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:badge_enabled]")
        LogsConfig.validate!(input[:logs_config], context: "#{context}[:logs_config]") unless input[:logs_config].nil?
        ProjectFileSystemLocations.validate!(input[:file_system_locations], context: "#{context}[:file_system_locations]") unless input[:file_system_locations].nil?
        ProjectBuildBatchConfig.validate!(input[:build_batch_config], context: "#{context}[:build_batch_config]") unless input[:build_batch_config].nil?
        Hearth::Validator.validate!(input[:concurrent_build_limit], ::Integer, context: "#{context}[:concurrent_build_limit]")
      end
    end

    class CreateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectOutput, context: context)
        Project.validate!(input[:project], context: "#{context}[:project]") unless input[:project].nil?
      end
    end

    class CreateReportGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReportGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        ReportExportConfig.validate!(input[:export_config], context: "#{context}[:export_config]") unless input[:export_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateReportGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReportGroupOutput, context: context)
        ReportGroup.validate!(input[:report_group], context: "#{context}[:report_group]") unless input[:report_group].nil?
      end
    end

    class CreateWebhookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWebhookInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:branch_filter], ::String, context: "#{context}[:branch_filter]")
        FilterGroups.validate!(input[:filter_groups], context: "#{context}[:filter_groups]") unless input[:filter_groups].nil?
        Hearth::Validator.validate!(input[:build_type], ::String, context: "#{context}[:build_type]")
      end
    end

    class CreateWebhookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWebhookOutput, context: context)
        Webhook.validate!(input[:webhook], context: "#{context}[:webhook]") unless input[:webhook].nil?
      end
    end

    class DebugSession
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DebugSession, context: context)
        Hearth::Validator.validate!(input[:session_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:session_enabled]")
        Hearth::Validator.validate!(input[:session_target], ::String, context: "#{context}[:session_target]")
      end
    end

    class DeleteBuildBatchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBuildBatchInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteBuildBatchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBuildBatchOutput, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        BuildIds.validate!(input[:builds_deleted], context: "#{context}[:builds_deleted]") unless input[:builds_deleted].nil?
        BuildsNotDeleted.validate!(input[:builds_not_deleted], context: "#{context}[:builds_not_deleted]") unless input[:builds_not_deleted].nil?
      end
    end

    class DeleteProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectOutput, context: context)
      end
    end

    class DeleteReportGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReportGroupInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:delete_reports], ::TrueClass, ::FalseClass, context: "#{context}[:delete_reports]")
      end
    end

    class DeleteReportGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReportGroupOutput, context: context)
      end
    end

    class DeleteReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReportInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReportOutput, context: context)
      end
    end

    class DeleteResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DeleteResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyOutput, context: context)
      end
    end

    class DeleteSourceCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSourceCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteSourceCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSourceCredentialsOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteWebhookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWebhookInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
      end
    end

    class DeleteWebhookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWebhookOutput, context: context)
      end
    end

    class DescribeCodeCoveragesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCodeCoveragesInput, context: context)
        Hearth::Validator.validate!(input[:report_arn], ::String, context: "#{context}[:report_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:min_line_coverage_percentage], ::Float, context: "#{context}[:min_line_coverage_percentage]")
        Hearth::Validator.validate!(input[:max_line_coverage_percentage], ::Float, context: "#{context}[:max_line_coverage_percentage]")
      end
    end

    class DescribeCodeCoveragesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCodeCoveragesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        CodeCoverages.validate!(input[:code_coverages], context: "#{context}[:code_coverages]") unless input[:code_coverages].nil?
      end
    end

    class DescribeTestCasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTestCasesInput, context: context)
        Hearth::Validator.validate!(input[:report_arn], ::String, context: "#{context}[:report_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        TestCaseFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class DescribeTestCasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTestCasesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        TestCases.validate!(input[:test_cases], context: "#{context}[:test_cases]") unless input[:test_cases].nil?
      end
    end

    class EnvironmentImage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentImage, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ImageVersions.validate!(input[:versions], context: "#{context}[:versions]") unless input[:versions].nil?
      end
    end

    class EnvironmentImages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentImage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentLanguage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentLanguage, context: context)
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        EnvironmentImages.validate!(input[:images], context: "#{context}[:images]") unless input[:images].nil?
      end
    end

    class EnvironmentLanguages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentLanguage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentPlatform
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentPlatform, context: context)
        Hearth::Validator.validate!(input[:platform], ::String, context: "#{context}[:platform]")
        EnvironmentLanguages.validate!(input[:languages], context: "#{context}[:languages]") unless input[:languages].nil?
      end
    end

    class EnvironmentPlatforms
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentPlatform.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentVariable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentVariable, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class EnvironmentVariables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentVariable.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExportedEnvironmentVariable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportedEnvironmentVariable, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ExportedEnvironmentVariables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExportedEnvironmentVariable.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FilterGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WebhookFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FilterGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FilterGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetReportGroupTrendInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReportGroupTrendInput, context: context)
        Hearth::Validator.validate!(input[:report_group_arn], ::String, context: "#{context}[:report_group_arn]")
        Hearth::Validator.validate!(input[:num_of_reports], ::Integer, context: "#{context}[:num_of_reports]")
        Hearth::Validator.validate!(input[:trend_field], ::String, context: "#{context}[:trend_field]")
      end
    end

    class GetReportGroupTrendOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReportGroupTrendOutput, context: context)
        ReportGroupTrendStats.validate!(input[:stats], context: "#{context}[:stats]") unless input[:stats].nil?
        ReportGroupTrendRawDataList.validate!(input[:raw_data], context: "#{context}[:raw_data]") unless input[:raw_data].nil?
      end
    end

    class GetResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class GetResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GitSubmodulesConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GitSubmodulesConfig, context: context)
        Hearth::Validator.validate!(input[:fetch_submodules], ::TrueClass, ::FalseClass, context: "#{context}[:fetch_submodules]")
      end
    end

    class Identifiers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImageVersions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImportSourceCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportSourceCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
        Hearth::Validator.validate!(input[:server_type], ::String, context: "#{context}[:server_type]")
        Hearth::Validator.validate!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Hearth::Validator.validate!(input[:should_overwrite], ::TrueClass, ::FalseClass, context: "#{context}[:should_overwrite]")
      end
    end

    class ImportSourceCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportSourceCredentialsOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidateProjectCacheInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidateProjectCacheInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
      end
    end

    class InvalidateProjectCacheOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidateProjectCacheOutput, context: context)
      end
    end

    class ListBuildBatchesForProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBuildBatchesForProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        BuildBatchFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBuildBatchesForProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBuildBatchesForProjectOutput, context: context)
        BuildBatchIds.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBuildBatchesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBuildBatchesInput, context: context)
        BuildBatchFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBuildBatchesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBuildBatchesOutput, context: context)
        BuildBatchIds.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBuildsForProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBuildsForProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBuildsForProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBuildsForProjectOutput, context: context)
        BuildIds.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBuildsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBuildsInput, context: context)
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBuildsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBuildsOutput, context: context)
        BuildIds.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCuratedEnvironmentImagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCuratedEnvironmentImagesInput, context: context)
      end
    end

    class ListCuratedEnvironmentImagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCuratedEnvironmentImagesOutput, context: context)
        EnvironmentPlatforms.validate!(input[:platforms], context: "#{context}[:platforms]") unless input[:platforms].nil?
      end
    end

    class ListProjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsInput, context: context)
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ProjectNames.validate!(input[:projects], context: "#{context}[:projects]") unless input[:projects].nil?
      end
    end

    class ListReportGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReportGroupsInput, context: context)
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListReportGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReportGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ReportGroupArns.validate!(input[:report_groups], context: "#{context}[:report_groups]") unless input[:report_groups].nil?
      end
    end

    class ListReportsForReportGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReportsForReportGroupInput, context: context)
        Hearth::Validator.validate!(input[:report_group_arn], ::String, context: "#{context}[:report_group_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        ReportFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class ListReportsForReportGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReportsForReportGroupOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ReportArns.validate!(input[:reports], context: "#{context}[:reports]") unless input[:reports].nil?
      end
    end

    class ListReportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReportsInput, context: context)
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        ReportFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class ListReportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReportsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ReportArns.validate!(input[:reports], context: "#{context}[:reports]") unless input[:reports].nil?
      end
    end

    class ListSharedProjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSharedProjectsInput, context: context)
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSharedProjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSharedProjectsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ProjectArns.validate!(input[:projects], context: "#{context}[:projects]") unless input[:projects].nil?
      end
    end

    class ListSharedReportGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSharedReportGroupsInput, context: context)
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSharedReportGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSharedReportGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ReportGroupArns.validate!(input[:report_groups], context: "#{context}[:report_groups]") unless input[:report_groups].nil?
      end
    end

    class ListSourceCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSourceCredentialsInput, context: context)
      end
    end

    class ListSourceCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSourceCredentialsOutput, context: context)
        SourceCredentialsInfos.validate!(input[:source_credentials_infos], context: "#{context}[:source_credentials_infos]") unless input[:source_credentials_infos].nil?
      end
    end

    class LogsConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogsConfig, context: context)
        CloudWatchLogsConfig.validate!(input[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless input[:cloud_watch_logs].nil?
        S3LogsConfig.validate!(input[:s3_logs], context: "#{context}[:s3_logs]") unless input[:s3_logs].nil?
      end
    end

    class LogsLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogsLocation, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:deep_link], ::String, context: "#{context}[:deep_link]")
        Hearth::Validator.validate!(input[:s3_deep_link], ::String, context: "#{context}[:s3_deep_link]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_arn], ::String, context: "#{context}[:cloud_watch_logs_arn]")
        Hearth::Validator.validate!(input[:s3_logs_arn], ::String, context: "#{context}[:s3_logs_arn]")
        CloudWatchLogsConfig.validate!(input[:cloud_watch_logs], context: "#{context}[:cloud_watch_logs]") unless input[:cloud_watch_logs].nil?
        S3LogsConfig.validate!(input[:s3_logs], context: "#{context}[:s3_logs]") unless input[:s3_logs].nil?
      end
    end

    class NetworkInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterface, context: context)
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
      end
    end

    class OAuthProviderException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OAuthProviderException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PhaseContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhaseContext, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PhaseContexts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PhaseContext.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Project
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Project, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ProjectSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        ProjectSources.validate!(input[:secondary_sources], context: "#{context}[:secondary_sources]") unless input[:secondary_sources].nil?
        Hearth::Validator.validate!(input[:source_version], ::String, context: "#{context}[:source_version]")
        ProjectSecondarySourceVersions.validate!(input[:secondary_source_versions], context: "#{context}[:secondary_source_versions]") unless input[:secondary_source_versions].nil?
        ProjectArtifacts.validate!(input[:artifacts], context: "#{context}[:artifacts]") unless input[:artifacts].nil?
        ProjectArtifactsList.validate!(input[:secondary_artifacts], context: "#{context}[:secondary_artifacts]") unless input[:secondary_artifacts].nil?
        ProjectCache.validate!(input[:cache], context: "#{context}[:cache]") unless input[:cache].nil?
        ProjectEnvironment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:timeout_in_minutes], ::Integer, context: "#{context}[:timeout_in_minutes]")
        Hearth::Validator.validate!(input[:queued_timeout_in_minutes], ::Integer, context: "#{context}[:queued_timeout_in_minutes]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        Webhook.validate!(input[:webhook], context: "#{context}[:webhook]") unless input[:webhook].nil?
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        ProjectBadge.validate!(input[:badge], context: "#{context}[:badge]") unless input[:badge].nil?
        LogsConfig.validate!(input[:logs_config], context: "#{context}[:logs_config]") unless input[:logs_config].nil?
        ProjectFileSystemLocations.validate!(input[:file_system_locations], context: "#{context}[:file_system_locations]") unless input[:file_system_locations].nil?
        ProjectBuildBatchConfig.validate!(input[:build_batch_config], context: "#{context}[:build_batch_config]") unless input[:build_batch_config].nil?
        Hearth::Validator.validate!(input[:concurrent_build_limit], ::Integer, context: "#{context}[:concurrent_build_limit]")
        Hearth::Validator.validate!(input[:project_visibility], ::String, context: "#{context}[:project_visibility]")
        Hearth::Validator.validate!(input[:public_project_alias], ::String, context: "#{context}[:public_project_alias]")
        Hearth::Validator.validate!(input[:resource_access_role], ::String, context: "#{context}[:resource_access_role]")
      end
    end

    class ProjectArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProjectArtifacts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectArtifacts, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:namespace_type], ::String, context: "#{context}[:namespace_type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:packaging], ::String, context: "#{context}[:packaging]")
        Hearth::Validator.validate!(input[:override_artifact_name], ::TrueClass, ::FalseClass, context: "#{context}[:override_artifact_name]")
        Hearth::Validator.validate!(input[:encryption_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:encryption_disabled]")
        Hearth::Validator.validate!(input[:artifact_identifier], ::String, context: "#{context}[:artifact_identifier]")
        Hearth::Validator.validate!(input[:bucket_owner_access], ::String, context: "#{context}[:bucket_owner_access]")
      end
    end

    class ProjectArtifactsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProjectArtifacts.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProjectBadge
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectBadge, context: context)
        Hearth::Validator.validate!(input[:badge_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:badge_enabled]")
        Hearth::Validator.validate!(input[:badge_request_url], ::String, context: "#{context}[:badge_request_url]")
      end
    end

    class ProjectBuildBatchConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectBuildBatchConfig, context: context)
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:combine_artifacts], ::TrueClass, ::FalseClass, context: "#{context}[:combine_artifacts]")
        BatchRestrictions.validate!(input[:restrictions], context: "#{context}[:restrictions]") unless input[:restrictions].nil?
        Hearth::Validator.validate!(input[:timeout_in_mins], ::Integer, context: "#{context}[:timeout_in_mins]")
        Hearth::Validator.validate!(input[:batch_report_mode], ::String, context: "#{context}[:batch_report_mode]")
      end
    end

    class ProjectCache
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectCache, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        ProjectCacheModes.validate!(input[:modes], context: "#{context}[:modes]") unless input[:modes].nil?
      end
    end

    class ProjectCacheModes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProjectEnvironment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectEnvironment, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        Hearth::Validator.validate!(input[:compute_type], ::String, context: "#{context}[:compute_type]")
        EnvironmentVariables.validate!(input[:environment_variables], context: "#{context}[:environment_variables]") unless input[:environment_variables].nil?
        Hearth::Validator.validate!(input[:privileged_mode], ::TrueClass, ::FalseClass, context: "#{context}[:privileged_mode]")
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        RegistryCredential.validate!(input[:registry_credential], context: "#{context}[:registry_credential]") unless input[:registry_credential].nil?
        Hearth::Validator.validate!(input[:image_pull_credentials_type], ::String, context: "#{context}[:image_pull_credentials_type]")
      end
    end

    class ProjectFileSystemLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectFileSystemLocation, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:mount_point], ::String, context: "#{context}[:mount_point]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:mount_options], ::String, context: "#{context}[:mount_options]")
      end
    end

    class ProjectFileSystemLocations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProjectFileSystemLocation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProjectNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProjectSecondarySourceVersions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProjectSourceVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProjectSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectSource, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:git_clone_depth], ::Integer, context: "#{context}[:git_clone_depth]")
        GitSubmodulesConfig.validate!(input[:git_submodules_config], context: "#{context}[:git_submodules_config]") unless input[:git_submodules_config].nil?
        Hearth::Validator.validate!(input[:buildspec], ::String, context: "#{context}[:buildspec]")
        SourceAuth.validate!(input[:auth], context: "#{context}[:auth]") unless input[:auth].nil?
        Hearth::Validator.validate!(input[:report_build_status], ::TrueClass, ::FalseClass, context: "#{context}[:report_build_status]")
        BuildStatusConfig.validate!(input[:build_status_config], context: "#{context}[:build_status_config]") unless input[:build_status_config].nil?
        Hearth::Validator.validate!(input[:insecure_ssl], ::TrueClass, ::FalseClass, context: "#{context}[:insecure_ssl]")
        Hearth::Validator.validate!(input[:source_identifier], ::String, context: "#{context}[:source_identifier]")
      end
    end

    class ProjectSourceVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectSourceVersion, context: context)
        Hearth::Validator.validate!(input[:source_identifier], ::String, context: "#{context}[:source_identifier]")
        Hearth::Validator.validate!(input[:source_version], ::String, context: "#{context}[:source_version]")
      end
    end

    class ProjectSources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProjectSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Projects
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Project.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class PutResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class RegistryCredential
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegistryCredential, context: context)
        Hearth::Validator.validate!(input[:credential], ::String, context: "#{context}[:credential]")
        Hearth::Validator.validate!(input[:credential_provider], ::String, context: "#{context}[:credential_provider]")
      end
    end

    class Report
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Report, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:report_group_arn], ::String, context: "#{context}[:report_group_arn]")
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:expired], ::Time, context: "#{context}[:expired]")
        ReportExportConfig.validate!(input[:export_config], context: "#{context}[:export_config]") unless input[:export_config].nil?
        Hearth::Validator.validate!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
        TestReportSummary.validate!(input[:test_summary], context: "#{context}[:test_summary]") unless input[:test_summary].nil?
        CodeCoverageReportSummary.validate!(input[:code_coverage_summary], context: "#{context}[:code_coverage_summary]") unless input[:code_coverage_summary].nil?
      end
    end

    class ReportArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReportExportConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportExportConfig, context: context)
        Hearth::Validator.validate!(input[:export_config_type], ::String, context: "#{context}[:export_config_type]")
        S3ReportExportConfig.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
      end
    end

    class ReportFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportFilter, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ReportGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportGroup, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        ReportExportConfig.validate!(input[:export_config], context: "#{context}[:export_config]") unless input[:export_config].nil?
        Hearth::Validator.validate!(input[:created], ::Time, context: "#{context}[:created]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ReportGroupArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReportGroupTrendRawDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReportWithRawData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReportGroupTrendStats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportGroupTrendStats, context: context)
        Hearth::Validator.validate!(input[:average], ::String, context: "#{context}[:average]")
        Hearth::Validator.validate!(input[:max], ::String, context: "#{context}[:max]")
        Hearth::Validator.validate!(input[:min], ::String, context: "#{context}[:min]")
      end
    end

    class ReportGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReportGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReportStatusCounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class ReportWithRawData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportWithRawData, context: context)
        Hearth::Validator.validate!(input[:report_arn], ::String, context: "#{context}[:report_arn]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
      end
    end

    class Reports
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Report.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResolvedArtifact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolvedArtifact, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class ResolvedSecondaryArtifacts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResolvedArtifact.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RetryBuildBatchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryBuildBatchInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        Hearth::Validator.validate!(input[:retry_type], ::String, context: "#{context}[:retry_type]")
      end
    end

    class RetryBuildBatchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryBuildBatchOutput, context: context)
        BuildBatch.validate!(input[:build_batch], context: "#{context}[:build_batch]") unless input[:build_batch].nil?
      end
    end

    class RetryBuildInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryBuildInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
      end
    end

    class RetryBuildOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryBuildOutput, context: context)
        Build.validate!(input[:build], context: "#{context}[:build]") unless input[:build].nil?
      end
    end

    class S3LogsConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3LogsConfig, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:encryption_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:encryption_disabled]")
        Hearth::Validator.validate!(input[:bucket_owner_access], ::String, context: "#{context}[:bucket_owner_access]")
      end
    end

    class S3ReportExportConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ReportExportConfig, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:bucket_owner], ::String, context: "#{context}[:bucket_owner]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:packaging], ::String, context: "#{context}[:packaging]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        Hearth::Validator.validate!(input[:encryption_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:encryption_disabled]")
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

    class SourceAuth
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceAuth, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
      end
    end

    class SourceCredentialsInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceCredentialsInfo, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:server_type], ::String, context: "#{context}[:server_type]")
        Hearth::Validator.validate!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
      end
    end

    class SourceCredentialsInfos
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SourceCredentialsInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartBuildBatchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBuildBatchInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        ProjectSources.validate!(input[:secondary_sources_override], context: "#{context}[:secondary_sources_override]") unless input[:secondary_sources_override].nil?
        ProjectSecondarySourceVersions.validate!(input[:secondary_sources_version_override], context: "#{context}[:secondary_sources_version_override]") unless input[:secondary_sources_version_override].nil?
        Hearth::Validator.validate!(input[:source_version], ::String, context: "#{context}[:source_version]")
        ProjectArtifacts.validate!(input[:artifacts_override], context: "#{context}[:artifacts_override]") unless input[:artifacts_override].nil?
        ProjectArtifactsList.validate!(input[:secondary_artifacts_override], context: "#{context}[:secondary_artifacts_override]") unless input[:secondary_artifacts_override].nil?
        EnvironmentVariables.validate!(input[:environment_variables_override], context: "#{context}[:environment_variables_override]") unless input[:environment_variables_override].nil?
        Hearth::Validator.validate!(input[:source_type_override], ::String, context: "#{context}[:source_type_override]")
        Hearth::Validator.validate!(input[:source_location_override], ::String, context: "#{context}[:source_location_override]")
        SourceAuth.validate!(input[:source_auth_override], context: "#{context}[:source_auth_override]") unless input[:source_auth_override].nil?
        Hearth::Validator.validate!(input[:git_clone_depth_override], ::Integer, context: "#{context}[:git_clone_depth_override]")
        GitSubmodulesConfig.validate!(input[:git_submodules_config_override], context: "#{context}[:git_submodules_config_override]") unless input[:git_submodules_config_override].nil?
        Hearth::Validator.validate!(input[:buildspec_override], ::String, context: "#{context}[:buildspec_override]")
        Hearth::Validator.validate!(input[:insecure_ssl_override], ::TrueClass, ::FalseClass, context: "#{context}[:insecure_ssl_override]")
        Hearth::Validator.validate!(input[:report_build_batch_status_override], ::TrueClass, ::FalseClass, context: "#{context}[:report_build_batch_status_override]")
        Hearth::Validator.validate!(input[:environment_type_override], ::String, context: "#{context}[:environment_type_override]")
        Hearth::Validator.validate!(input[:image_override], ::String, context: "#{context}[:image_override]")
        Hearth::Validator.validate!(input[:compute_type_override], ::String, context: "#{context}[:compute_type_override]")
        Hearth::Validator.validate!(input[:certificate_override], ::String, context: "#{context}[:certificate_override]")
        ProjectCache.validate!(input[:cache_override], context: "#{context}[:cache_override]") unless input[:cache_override].nil?
        Hearth::Validator.validate!(input[:service_role_override], ::String, context: "#{context}[:service_role_override]")
        Hearth::Validator.validate!(input[:privileged_mode_override], ::TrueClass, ::FalseClass, context: "#{context}[:privileged_mode_override]")
        Hearth::Validator.validate!(input[:build_timeout_in_minutes_override], ::Integer, context: "#{context}[:build_timeout_in_minutes_override]")
        Hearth::Validator.validate!(input[:queued_timeout_in_minutes_override], ::Integer, context: "#{context}[:queued_timeout_in_minutes_override]")
        Hearth::Validator.validate!(input[:encryption_key_override], ::String, context: "#{context}[:encryption_key_override]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        LogsConfig.validate!(input[:logs_config_override], context: "#{context}[:logs_config_override]") unless input[:logs_config_override].nil?
        RegistryCredential.validate!(input[:registry_credential_override], context: "#{context}[:registry_credential_override]") unless input[:registry_credential_override].nil?
        Hearth::Validator.validate!(input[:image_pull_credentials_type_override], ::String, context: "#{context}[:image_pull_credentials_type_override]")
        ProjectBuildBatchConfig.validate!(input[:build_batch_config_override], context: "#{context}[:build_batch_config_override]") unless input[:build_batch_config_override].nil?
        Hearth::Validator.validate!(input[:debug_session_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:debug_session_enabled]")
      end
    end

    class StartBuildBatchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBuildBatchOutput, context: context)
        BuildBatch.validate!(input[:build_batch], context: "#{context}[:build_batch]") unless input[:build_batch].nil?
      end
    end

    class StartBuildInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBuildInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        ProjectSources.validate!(input[:secondary_sources_override], context: "#{context}[:secondary_sources_override]") unless input[:secondary_sources_override].nil?
        ProjectSecondarySourceVersions.validate!(input[:secondary_sources_version_override], context: "#{context}[:secondary_sources_version_override]") unless input[:secondary_sources_version_override].nil?
        Hearth::Validator.validate!(input[:source_version], ::String, context: "#{context}[:source_version]")
        ProjectArtifacts.validate!(input[:artifacts_override], context: "#{context}[:artifacts_override]") unless input[:artifacts_override].nil?
        ProjectArtifactsList.validate!(input[:secondary_artifacts_override], context: "#{context}[:secondary_artifacts_override]") unless input[:secondary_artifacts_override].nil?
        EnvironmentVariables.validate!(input[:environment_variables_override], context: "#{context}[:environment_variables_override]") unless input[:environment_variables_override].nil?
        Hearth::Validator.validate!(input[:source_type_override], ::String, context: "#{context}[:source_type_override]")
        Hearth::Validator.validate!(input[:source_location_override], ::String, context: "#{context}[:source_location_override]")
        SourceAuth.validate!(input[:source_auth_override], context: "#{context}[:source_auth_override]") unless input[:source_auth_override].nil?
        Hearth::Validator.validate!(input[:git_clone_depth_override], ::Integer, context: "#{context}[:git_clone_depth_override]")
        GitSubmodulesConfig.validate!(input[:git_submodules_config_override], context: "#{context}[:git_submodules_config_override]") unless input[:git_submodules_config_override].nil?
        Hearth::Validator.validate!(input[:buildspec_override], ::String, context: "#{context}[:buildspec_override]")
        Hearth::Validator.validate!(input[:insecure_ssl_override], ::TrueClass, ::FalseClass, context: "#{context}[:insecure_ssl_override]")
        Hearth::Validator.validate!(input[:report_build_status_override], ::TrueClass, ::FalseClass, context: "#{context}[:report_build_status_override]")
        BuildStatusConfig.validate!(input[:build_status_config_override], context: "#{context}[:build_status_config_override]") unless input[:build_status_config_override].nil?
        Hearth::Validator.validate!(input[:environment_type_override], ::String, context: "#{context}[:environment_type_override]")
        Hearth::Validator.validate!(input[:image_override], ::String, context: "#{context}[:image_override]")
        Hearth::Validator.validate!(input[:compute_type_override], ::String, context: "#{context}[:compute_type_override]")
        Hearth::Validator.validate!(input[:certificate_override], ::String, context: "#{context}[:certificate_override]")
        ProjectCache.validate!(input[:cache_override], context: "#{context}[:cache_override]") unless input[:cache_override].nil?
        Hearth::Validator.validate!(input[:service_role_override], ::String, context: "#{context}[:service_role_override]")
        Hearth::Validator.validate!(input[:privileged_mode_override], ::TrueClass, ::FalseClass, context: "#{context}[:privileged_mode_override]")
        Hearth::Validator.validate!(input[:timeout_in_minutes_override], ::Integer, context: "#{context}[:timeout_in_minutes_override]")
        Hearth::Validator.validate!(input[:queued_timeout_in_minutes_override], ::Integer, context: "#{context}[:queued_timeout_in_minutes_override]")
        Hearth::Validator.validate!(input[:encryption_key_override], ::String, context: "#{context}[:encryption_key_override]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        LogsConfig.validate!(input[:logs_config_override], context: "#{context}[:logs_config_override]") unless input[:logs_config_override].nil?
        RegistryCredential.validate!(input[:registry_credential_override], context: "#{context}[:registry_credential_override]") unless input[:registry_credential_override].nil?
        Hearth::Validator.validate!(input[:image_pull_credentials_type_override], ::String, context: "#{context}[:image_pull_credentials_type_override]")
        Hearth::Validator.validate!(input[:debug_session_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:debug_session_enabled]")
      end
    end

    class StartBuildOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBuildOutput, context: context)
        Build.validate!(input[:build], context: "#{context}[:build]") unless input[:build].nil?
      end
    end

    class StopBuildBatchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopBuildBatchInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class StopBuildBatchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopBuildBatchOutput, context: context)
        BuildBatch.validate!(input[:build_batch], context: "#{context}[:build_batch]") unless input[:build_batch].nil?
      end
    end

    class StopBuildInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopBuildInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class StopBuildOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopBuildOutput, context: context)
        Build.validate!(input[:build], context: "#{context}[:build]") unless input[:build].nil?
      end
    end

    class Subnets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestCase
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestCase, context: context)
        Hearth::Validator.validate!(input[:report_arn], ::String, context: "#{context}[:report_arn]")
        Hearth::Validator.validate!(input[:test_raw_data_path], ::String, context: "#{context}[:test_raw_data_path]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:duration_in_nano_seconds], ::Integer, context: "#{context}[:duration_in_nano_seconds]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:expired], ::Time, context: "#{context}[:expired]")
      end
    end

    class TestCaseFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestCaseFilter, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:keyword], ::String, context: "#{context}[:keyword]")
      end
    end

    class TestCases
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TestCase.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TestReportSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestReportSummary, context: context)
        Hearth::Validator.validate!(input[:total], ::Integer, context: "#{context}[:total]")
        ReportStatusCounts.validate!(input[:status_counts], context: "#{context}[:status_counts]") unless input[:status_counts].nil?
        Hearth::Validator.validate!(input[:duration_in_nano_seconds], ::Integer, context: "#{context}[:duration_in_nano_seconds]")
      end
    end

    class UpdateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ProjectSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        ProjectSources.validate!(input[:secondary_sources], context: "#{context}[:secondary_sources]") unless input[:secondary_sources].nil?
        Hearth::Validator.validate!(input[:source_version], ::String, context: "#{context}[:source_version]")
        ProjectSecondarySourceVersions.validate!(input[:secondary_source_versions], context: "#{context}[:secondary_source_versions]") unless input[:secondary_source_versions].nil?
        ProjectArtifacts.validate!(input[:artifacts], context: "#{context}[:artifacts]") unless input[:artifacts].nil?
        ProjectArtifactsList.validate!(input[:secondary_artifacts], context: "#{context}[:secondary_artifacts]") unless input[:secondary_artifacts].nil?
        ProjectCache.validate!(input[:cache], context: "#{context}[:cache]") unless input[:cache].nil?
        ProjectEnvironment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:timeout_in_minutes], ::Integer, context: "#{context}[:timeout_in_minutes]")
        Hearth::Validator.validate!(input[:queued_timeout_in_minutes], ::Integer, context: "#{context}[:queued_timeout_in_minutes]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:badge_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:badge_enabled]")
        LogsConfig.validate!(input[:logs_config], context: "#{context}[:logs_config]") unless input[:logs_config].nil?
        ProjectFileSystemLocations.validate!(input[:file_system_locations], context: "#{context}[:file_system_locations]") unless input[:file_system_locations].nil?
        ProjectBuildBatchConfig.validate!(input[:build_batch_config], context: "#{context}[:build_batch_config]") unless input[:build_batch_config].nil?
        Hearth::Validator.validate!(input[:concurrent_build_limit], ::Integer, context: "#{context}[:concurrent_build_limit]")
      end
    end

    class UpdateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectOutput, context: context)
        Project.validate!(input[:project], context: "#{context}[:project]") unless input[:project].nil?
      end
    end

    class UpdateProjectVisibilityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectVisibilityInput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:project_visibility], ::String, context: "#{context}[:project_visibility]")
        Hearth::Validator.validate!(input[:resource_access_role], ::String, context: "#{context}[:resource_access_role]")
      end
    end

    class UpdateProjectVisibilityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectVisibilityOutput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:public_project_alias], ::String, context: "#{context}[:public_project_alias]")
        Hearth::Validator.validate!(input[:project_visibility], ::String, context: "#{context}[:project_visibility]")
      end
    end

    class UpdateReportGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReportGroupInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        ReportExportConfig.validate!(input[:export_config], context: "#{context}[:export_config]") unless input[:export_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateReportGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReportGroupOutput, context: context)
        ReportGroup.validate!(input[:report_group], context: "#{context}[:report_group]") unless input[:report_group].nil?
      end
    end

    class UpdateWebhookInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWebhookInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:branch_filter], ::String, context: "#{context}[:branch_filter]")
        Hearth::Validator.validate!(input[:rotate_secret], ::TrueClass, ::FalseClass, context: "#{context}[:rotate_secret]")
        FilterGroups.validate!(input[:filter_groups], context: "#{context}[:filter_groups]") unless input[:filter_groups].nil?
        Hearth::Validator.validate!(input[:build_type], ::String, context: "#{context}[:build_type]")
      end
    end

    class UpdateWebhookOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWebhookOutput, context: context)
        Webhook.validate!(input[:webhook], context: "#{context}[:webhook]") unless input[:webhook].nil?
      end
    end

    class VpcConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfig, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Subnets.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
        SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class Webhook
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Webhook, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:payload_url], ::String, context: "#{context}[:payload_url]")
        Hearth::Validator.validate!(input[:secret], ::String, context: "#{context}[:secret]")
        Hearth::Validator.validate!(input[:branch_filter], ::String, context: "#{context}[:branch_filter]")
        FilterGroups.validate!(input[:filter_groups], context: "#{context}[:filter_groups]") unless input[:filter_groups].nil?
        Hearth::Validator.validate!(input[:build_type], ::String, context: "#{context}[:build_type]")
        Hearth::Validator.validate!(input[:last_modified_secret], ::Time, context: "#{context}[:last_modified_secret]")
      end
    end

    class WebhookFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebhookFilter, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:pattern], ::String, context: "#{context}[:pattern]")
        Hearth::Validator.validate!(input[:exclude_matched_pattern], ::TrueClass, ::FalseClass, context: "#{context}[:exclude_matched_pattern]")
      end
    end

  end
end
