# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::MigrationHubStrategy
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AntipatternSeveritySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AntipatternSeveritySummary, context: context)
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class ApplicationComponentDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationComponentDetail, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        RecommendationSet.validate!(input[:recommendation_set], context: "#{context}[:recommendation_set]") unless input[:recommendation_set].nil?
        Hearth::Validator.validate!(input[:analysis_status], ::String, context: "#{context}[:analysis_status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        ListAntipatternSeveritySummary.validate!(input[:list_antipattern_severity_summary], context: "#{context}[:list_antipattern_severity_summary]") unless input[:list_antipattern_severity_summary].nil?
        DatabaseConfigDetail.validate!(input[:database_config_detail], context: "#{context}[:database_config_detail]") unless input[:database_config_detail].nil?
        SourceCodeRepositories.validate!(input[:source_code_repositories], context: "#{context}[:source_code_repositories]") unless input[:source_code_repositories].nil?
        Hearth::Validator.validate!(input[:app_type], ::String, context: "#{context}[:app_type]")
        Hearth::Validator.validate!(input[:resource_sub_type], ::String, context: "#{context}[:resource_sub_type]")
        Hearth::Validator.validate!(input[:inclusion_status], ::String, context: "#{context}[:inclusion_status]")
        S3Object.validate!(input[:antipattern_report_s3_object], context: "#{context}[:antipattern_report_s3_object]") unless input[:antipattern_report_s3_object].nil?
        Hearth::Validator.validate!(input[:antipattern_report_status], ::String, context: "#{context}[:antipattern_report_status]")
        Hearth::Validator.validate!(input[:antipattern_report_status_message], ::String, context: "#{context}[:antipattern_report_status_message]")
        Hearth::Validator.validate!(input[:os_version], ::String, context: "#{context}[:os_version]")
        Hearth::Validator.validate!(input[:os_driver], ::String, context: "#{context}[:os_driver]")
        Hearth::Validator.validate!(input[:last_analyzed_timestamp], ::Time, context: "#{context}[:last_analyzed_timestamp]")
        Hearth::Validator.validate!(input[:associated_server_id], ::String, context: "#{context}[:associated_server_id]")
        Hearth::Validator.validate!(input[:more_server_association_exists], ::TrueClass, ::FalseClass, context: "#{context}[:more_server_association_exists]")
      end
    end

    class ApplicationComponentDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApplicationComponentDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationComponentStrategies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApplicationComponentStrategy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationComponentStrategy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationComponentStrategy, context: context)
        RecommendationSet.validate!(input[:recommendation], context: "#{context}[:recommendation]") unless input[:recommendation].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:is_preferred], ::TrueClass, ::FalseClass, context: "#{context}[:is_preferred]")
      end
    end

    class ApplicationComponentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationComponentSummary, context: context)
        Hearth::Validator.validate!(input[:app_type], ::String, context: "#{context}[:app_type]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class ApplicationPreferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationPreferences, context: context)
        ManagementPreference.validate!(input[:management_preference], context: "#{context}[:management_preference]") unless input[:management_preference].nil?
      end
    end

    class AssessmentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentSummary, context: context)
        ListStrategySummary.validate!(input[:list_server_strategy_summary], context: "#{context}[:list_server_strategy_summary]") unless input[:list_server_strategy_summary].nil?
        ListStrategySummary.validate!(input[:list_application_component_strategy_summary], context: "#{context}[:list_application_component_strategy_summary]") unless input[:list_application_component_strategy_summary].nil?
        ListAntipatternSeveritySummary.validate!(input[:list_antipattern_severity_summary], context: "#{context}[:list_antipattern_severity_summary]") unless input[:list_antipattern_severity_summary].nil?
        ListApplicationComponentSummary.validate!(input[:list_application_component_summary], context: "#{context}[:list_application_component_summary]") unless input[:list_application_component_summary].nil?
        ListServerSummary.validate!(input[:list_server_summary], context: "#{context}[:list_server_summary]") unless input[:list_server_summary].nil?
        S3Object.validate!(input[:antipattern_report_s3_object], context: "#{context}[:antipattern_report_s3_object]") unless input[:antipattern_report_s3_object].nil?
        Hearth::Validator.validate!(input[:antipattern_report_status], ::String, context: "#{context}[:antipattern_report_status]")
        Hearth::Validator.validate!(input[:antipattern_report_status_message], ::String, context: "#{context}[:antipattern_report_status_message]")
        Hearth::Validator.validate!(input[:last_analyzed_timestamp], ::Time, context: "#{context}[:last_analyzed_timestamp]")
      end
    end

    class AssociatedApplication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatedApplication, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class AssociatedApplications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssociatedApplication.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociatedServerIDs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AwsManagedResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsManagedResources, context: context)
        AwsManagedTargetDestinations.validate!(input[:target_destination], context: "#{context}[:target_destination]") unless input[:target_destination].nil?
      end
    end

    class AwsManagedTargetDestinations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BusinessGoals
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BusinessGoals, context: context)
        Hearth::Validator.validate!(input[:speed_of_migration], ::Integer, context: "#{context}[:speed_of_migration]")
        Hearth::Validator.validate!(input[:reduce_operational_overhead_with_managed_services], ::Integer, context: "#{context}[:reduce_operational_overhead_with_managed_services]")
        Hearth::Validator.validate!(input[:modernize_infrastructure_with_cloud_native_technologies], ::Integer, context: "#{context}[:modernize_infrastructure_with_cloud_native_technologies]")
        Hearth::Validator.validate!(input[:license_cost_reduction], ::Integer, context: "#{context}[:license_cost_reduction]")
      end
    end

    class Collector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Collector, context: context)
        Hearth::Validator.validate!(input[:collector_id], ::String, context: "#{context}[:collector_id]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:host_name], ::String, context: "#{context}[:host_name]")
        Hearth::Validator.validate!(input[:collector_health], ::String, context: "#{context}[:collector_health]")
        Hearth::Validator.validate!(input[:collector_version], ::String, context: "#{context}[:collector_version]")
        Hearth::Validator.validate!(input[:registered_time_stamp], ::String, context: "#{context}[:registered_time_stamp]")
        Hearth::Validator.validate!(input[:last_activity_time_stamp], ::String, context: "#{context}[:last_activity_time_stamp]")
      end
    end

    class Collectors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Collector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DataCollectionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataCollectionDetails, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:servers], ::Integer, context: "#{context}[:servers]")
        Hearth::Validator.validate!(input[:failed], ::Integer, context: "#{context}[:failed]")
        Hearth::Validator.validate!(input[:success], ::Integer, context: "#{context}[:success]")
        Hearth::Validator.validate!(input[:in_progress], ::Integer, context: "#{context}[:in_progress]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:completion_time], ::Time, context: "#{context}[:completion_time]")
      end
    end

    class DatabaseConfigDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatabaseConfigDetail, context: context)
        Hearth::Validator.validate!(input[:secret_name], ::String, context: "#{context}[:secret_name]")
      end
    end

    class DatabaseMigrationPreference
      def self.validate!(input, context:)
        case input
        when Types::DatabaseMigrationPreference::Heterogeneous
          Heterogeneous.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DatabaseMigrationPreference::Homogeneous
          Homogeneous.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DatabaseMigrationPreference::NoPreference
          NoDatabaseMigrationPreference.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::DatabaseMigrationPreference, got #{input.class}."
        end
      end

      class Heterogeneous
        def self.validate!(input, context:)
          Validators::Heterogeneous.validate!(input, context: context) unless input.nil?
        end
      end

      class Homogeneous
        def self.validate!(input, context:)
          Validators::Homogeneous.validate!(input, context: context) unless input.nil?
        end
      end

      class NoPreference
        def self.validate!(input, context:)
          Validators::NoDatabaseMigrationPreference.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class DatabasePreferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatabasePreferences, context: context)
        Hearth::Validator.validate!(input[:database_management_preference], ::String, context: "#{context}[:database_management_preference]")
        DatabaseMigrationPreference.validate!(input[:database_migration_preference], context: "#{context}[:database_migration_preference]") unless input[:database_migration_preference].nil?
      end
    end

    class GetApplicationComponentDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationComponentDetailsInput, context: context)
        Hearth::Validator.validate!(input[:application_component_id], ::String, context: "#{context}[:application_component_id]")
      end
    end

    class GetApplicationComponentDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationComponentDetailsOutput, context: context)
        ApplicationComponentDetail.validate!(input[:application_component_detail], context: "#{context}[:application_component_detail]") unless input[:application_component_detail].nil?
        AssociatedApplications.validate!(input[:associated_applications], context: "#{context}[:associated_applications]") unless input[:associated_applications].nil?
        Hearth::Validator.validate!(input[:more_application_resource], ::TrueClass, ::FalseClass, context: "#{context}[:more_application_resource]")
        AssociatedServerIDs.validate!(input[:associated_server_ids], context: "#{context}[:associated_server_ids]") unless input[:associated_server_ids].nil?
      end
    end

    class GetApplicationComponentStrategiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationComponentStrategiesInput, context: context)
        Hearth::Validator.validate!(input[:application_component_id], ::String, context: "#{context}[:application_component_id]")
      end
    end

    class GetApplicationComponentStrategiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationComponentStrategiesOutput, context: context)
        ApplicationComponentStrategies.validate!(input[:application_component_strategies], context: "#{context}[:application_component_strategies]") unless input[:application_component_strategies].nil?
      end
    end

    class GetAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssessmentInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssessmentOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        DataCollectionDetails.validate!(input[:data_collection_details], context: "#{context}[:data_collection_details]") unless input[:data_collection_details].nil?
      end
    end

    class GetImportFileTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImportFileTaskInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetImportFileTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetImportFileTaskOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:input_s3_bucket], ::String, context: "#{context}[:input_s3_bucket]")
        Hearth::Validator.validate!(input[:input_s3_key], ::String, context: "#{context}[:input_s3_key]")
        Hearth::Validator.validate!(input[:status_report_s3_bucket], ::String, context: "#{context}[:status_report_s3_bucket]")
        Hearth::Validator.validate!(input[:status_report_s3_key], ::String, context: "#{context}[:status_report_s3_key]")
        Hearth::Validator.validate!(input[:completion_time], ::Time, context: "#{context}[:completion_time]")
        Hearth::Validator.validate!(input[:number_of_records_success], ::Integer, context: "#{context}[:number_of_records_success]")
        Hearth::Validator.validate!(input[:number_of_records_failed], ::Integer, context: "#{context}[:number_of_records_failed]")
        Hearth::Validator.validate!(input[:import_name], ::String, context: "#{context}[:import_name]")
      end
    end

    class GetPortfolioPreferencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPortfolioPreferencesInput, context: context)
      end
    end

    class GetPortfolioPreferencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPortfolioPreferencesOutput, context: context)
        PrioritizeBusinessGoals.validate!(input[:prioritize_business_goals], context: "#{context}[:prioritize_business_goals]") unless input[:prioritize_business_goals].nil?
        ApplicationPreferences.validate!(input[:application_preferences], context: "#{context}[:application_preferences]") unless input[:application_preferences].nil?
        DatabasePreferences.validate!(input[:database_preferences], context: "#{context}[:database_preferences]") unless input[:database_preferences].nil?
      end
    end

    class GetPortfolioSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPortfolioSummaryInput, context: context)
      end
    end

    class GetPortfolioSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPortfolioSummaryOutput, context: context)
        AssessmentSummary.validate!(input[:assessment_summary], context: "#{context}[:assessment_summary]") unless input[:assessment_summary].nil?
      end
    end

    class GetRecommendationReportDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommendationReportDetailsInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetRecommendationReportDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommendationReportDetailsOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        RecommendationReportDetails.validate!(input[:recommendation_report_details], context: "#{context}[:recommendation_report_details]") unless input[:recommendation_report_details].nil?
      end
    end

    class GetServerDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServerDetailsInput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetServerDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServerDetailsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ServerDetail.validate!(input[:server_detail], context: "#{context}[:server_detail]") unless input[:server_detail].nil?
        AssociatedApplications.validate!(input[:associated_applications], context: "#{context}[:associated_applications]") unless input[:associated_applications].nil?
      end
    end

    class GetServerStrategiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServerStrategiesInput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
      end
    end

    class GetServerStrategiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServerStrategiesOutput, context: context)
        ServerStrategies.validate!(input[:server_strategies], context: "#{context}[:server_strategies]") unless input[:server_strategies].nil?
      end
    end

    class Group
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Group, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class GroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Group.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Heterogeneous
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Heterogeneous, context: context)
        HeterogeneousTargetDatabaseEngines.validate!(input[:target_database_engine], context: "#{context}[:target_database_engine]") unless input[:target_database_engine].nil?
      end
    end

    class HeterogeneousTargetDatabaseEngines
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Homogeneous
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Homogeneous, context: context)
        HomogeneousTargetDatabaseEngines.validate!(input[:target_database_engine], context: "#{context}[:target_database_engine]") unless input[:target_database_engine].nil?
      end
    end

    class HomogeneousTargetDatabaseEngines
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImportFileTaskInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportFileTaskInformation, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:input_s3_bucket], ::String, context: "#{context}[:input_s3_bucket]")
        Hearth::Validator.validate!(input[:input_s3_key], ::String, context: "#{context}[:input_s3_key]")
        Hearth::Validator.validate!(input[:status_report_s3_bucket], ::String, context: "#{context}[:status_report_s3_bucket]")
        Hearth::Validator.validate!(input[:status_report_s3_key], ::String, context: "#{context}[:status_report_s3_key]")
        Hearth::Validator.validate!(input[:completion_time], ::Time, context: "#{context}[:completion_time]")
        Hearth::Validator.validate!(input[:number_of_records_success], ::Integer, context: "#{context}[:number_of_records_success]")
        Hearth::Validator.validate!(input[:number_of_records_failed], ::Integer, context: "#{context}[:number_of_records_failed]")
        Hearth::Validator.validate!(input[:import_name], ::String, context: "#{context}[:import_name]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAntipatternSeveritySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AntipatternSeveritySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListApplicationComponentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApplicationComponentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListApplicationComponentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationComponentsInput, context: context)
        Hearth::Validator.validate!(input[:application_component_criteria], ::String, context: "#{context}[:application_component_criteria]")
        Hearth::Validator.validate!(input[:filter_value], ::String, context: "#{context}[:filter_value]")
        Hearth::Validator.validate!(input[:sort], ::String, context: "#{context}[:sort]")
        GroupIds.validate!(input[:group_id_filter], context: "#{context}[:group_id_filter]") unless input[:group_id_filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListApplicationComponentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationComponentsOutput, context: context)
        ApplicationComponentDetails.validate!(input[:application_component_infos], context: "#{context}[:application_component_infos]") unless input[:application_component_infos].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCollectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCollectorsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListCollectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCollectorsOutput, context: context)
        Collectors.validate!(input[:collectors], context: "#{context}[:collectors]") unless input[:collectors].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImportFileTaskInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ImportFileTaskInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListImportFileTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImportFileTaskInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListImportFileTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImportFileTaskOutput, context: context)
        ListImportFileTaskInformation.validate!(input[:task_infos], context: "#{context}[:task_infos]") unless input[:task_infos].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListServerSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServerSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListServersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServersInput, context: context)
        Hearth::Validator.validate!(input[:server_criteria], ::String, context: "#{context}[:server_criteria]")
        Hearth::Validator.validate!(input[:filter_value], ::String, context: "#{context}[:filter_value]")
        Hearth::Validator.validate!(input[:sort], ::String, context: "#{context}[:sort]")
        GroupIds.validate!(input[:group_id_filter], context: "#{context}[:group_id_filter]") unless input[:group_id_filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListServersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServersOutput, context: context)
        ServerDetails.validate!(input[:server_infos], context: "#{context}[:server_infos]") unless input[:server_infos].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStrategySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StrategySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ManagementPreference
      def self.validate!(input, context:)
        case input
        when Types::ManagementPreference::AwsManagedResources
          AwsManagedResources.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ManagementPreference::SelfManageResources
          SelfManageResources.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::ManagementPreference::NoPreference
          NoManagementPreference.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ManagementPreference, got #{input.class}."
        end
      end

      class AwsManagedResources
        def self.validate!(input, context:)
          Validators::AwsManagedResources.validate!(input, context: context) unless input.nil?
        end
      end

      class SelfManageResources
        def self.validate!(input, context:)
          Validators::SelfManageResources.validate!(input, context: context) unless input.nil?
        end
      end

      class NoPreference
        def self.validate!(input, context:)
          Validators::NoManagementPreference.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class NetworkInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInfo, context: context)
        Hearth::Validator.validate!(input[:interface_name], ::String, context: "#{context}[:interface_name]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:mac_address], ::String, context: "#{context}[:mac_address]")
        Hearth::Validator.validate!(input[:net_mask], ::String, context: "#{context}[:net_mask]")
      end
    end

    class NetworkInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NetworkInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NoDatabaseMigrationPreference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoDatabaseMigrationPreference, context: context)
        TargetDatabaseEngines.validate!(input[:target_database_engine], context: "#{context}[:target_database_engine]") unless input[:target_database_engine].nil?
      end
    end

    class NoManagementPreference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoManagementPreference, context: context)
        NoPreferenceTargetDestinations.validate!(input[:target_destination], context: "#{context}[:target_destination]") unless input[:target_destination].nil?
      end
    end

    class NoPreferenceTargetDestinations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OSInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OSInfo, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class PrioritizeBusinessGoals
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrioritizeBusinessGoals, context: context)
        BusinessGoals.validate!(input[:business_goals], context: "#{context}[:business_goals]") unless input[:business_goals].nil?
      end
    end

    class PutPortfolioPreferencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPortfolioPreferencesInput, context: context)
        PrioritizeBusinessGoals.validate!(input[:prioritize_business_goals], context: "#{context}[:prioritize_business_goals]") unless input[:prioritize_business_goals].nil?
        ApplicationPreferences.validate!(input[:application_preferences], context: "#{context}[:application_preferences]") unless input[:application_preferences].nil?
        DatabasePreferences.validate!(input[:database_preferences], context: "#{context}[:database_preferences]") unless input[:database_preferences].nil?
      end
    end

    class PutPortfolioPreferencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPortfolioPreferencesOutput, context: context)
      end
    end

    class RecommendationReportDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationReportDetails, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:completion_time], ::Time, context: "#{context}[:completion_time]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        S3Keys.validate!(input[:s3_keys], context: "#{context}[:s3_keys]") unless input[:s3_keys].nil?
      end
    end

    class RecommendationSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationSet, context: context)
        TransformationTool.validate!(input[:transformation_tool], context: "#{context}[:transformation_tool]") unless input[:transformation_tool].nil?
        Hearth::Validator.validate!(input[:target_destination], ::String, context: "#{context}[:target_destination]")
        Hearth::Validator.validate!(input[:strategy], ::String, context: "#{context}[:strategy]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3Keys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class S3Object
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Object, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3key], ::String, context: "#{context}[:s3key]")
      end
    end

    class SelfManageResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelfManageResources, context: context)
        SelfManageTargetDestinations.validate!(input[:target_destination], context: "#{context}[:target_destination]") unless input[:target_destination].nil?
      end
    end

    class SelfManageTargetDestinations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServerDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerDetail, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        RecommendationSet.validate!(input[:recommendation_set], context: "#{context}[:recommendation_set]") unless input[:recommendation_set].nil?
        Hearth::Validator.validate!(input[:data_collection_status], ::String, context: "#{context}[:data_collection_status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        ListAntipatternSeveritySummary.validate!(input[:list_antipattern_severity_summary], context: "#{context}[:list_antipattern_severity_summary]") unless input[:list_antipattern_severity_summary].nil?
        SystemInfo.validate!(input[:system_info], context: "#{context}[:system_info]") unless input[:system_info].nil?
        ListStrategySummary.validate!(input[:application_component_strategy_summary], context: "#{context}[:application_component_strategy_summary]") unless input[:application_component_strategy_summary].nil?
        S3Object.validate!(input[:antipattern_report_s3_object], context: "#{context}[:antipattern_report_s3_object]") unless input[:antipattern_report_s3_object].nil?
        Hearth::Validator.validate!(input[:antipattern_report_status], ::String, context: "#{context}[:antipattern_report_status]")
        Hearth::Validator.validate!(input[:antipattern_report_status_message], ::String, context: "#{context}[:antipattern_report_status_message]")
        Hearth::Validator.validate!(input[:server_type], ::String, context: "#{context}[:server_type]")
        Hearth::Validator.validate!(input[:last_analyzed_timestamp], ::Time, context: "#{context}[:last_analyzed_timestamp]")
      end
    end

    class ServerDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServerDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServerStrategies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServerStrategy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServerStrategy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerStrategy, context: context)
        RecommendationSet.validate!(input[:recommendation], context: "#{context}[:recommendation]") unless input[:recommendation].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:number_of_application_components], ::Integer, context: "#{context}[:number_of_application_components]")
        Hearth::Validator.validate!(input[:is_preferred], ::TrueClass, ::FalseClass, context: "#{context}[:is_preferred]")
      end
    end

    class ServerSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerSummary, context: context)
        Hearth::Validator.validate!(input[:server_os_type], ::String, context: "#{context}[:server_os_type]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class ServiceLinkedRoleLockClientException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceLinkedRoleLockClientException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SourceCode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceCode, context: context)
        Hearth::Validator.validate!(input[:version_control], ::String, context: "#{context}[:version_control]")
        Hearth::Validator.validate!(input[:source_version], ::String, context: "#{context}[:source_version]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class SourceCodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SourceCode.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SourceCodeRepositories
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SourceCodeRepository.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SourceCodeRepository
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceCodeRepository, context: context)
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:branch], ::String, context: "#{context}[:branch]")
        Hearth::Validator.validate!(input[:version_control_type], ::String, context: "#{context}[:version_control_type]")
      end
    end

    class StartAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAssessmentInput, context: context)
        Hearth::Validator.validate!(input[:s3bucket_for_analysis_data], ::String, context: "#{context}[:s3bucket_for_analysis_data]")
        Hearth::Validator.validate!(input[:s3bucket_for_report_data], ::String, context: "#{context}[:s3bucket_for_report_data]")
      end
    end

    class StartAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAssessmentOutput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
      end
    end

    class StartImportFileTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImportFileTaskInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3key], ::String, context: "#{context}[:s3key]")
        Hearth::Validator.validate!(input[:data_source_type], ::String, context: "#{context}[:data_source_type]")
        GroupIds.validate!(input[:group_id], context: "#{context}[:group_id]") unless input[:group_id].nil?
        Hearth::Validator.validate!(input[:s3bucket_for_report_data], ::String, context: "#{context}[:s3bucket_for_report_data]")
      end
    end

    class StartImportFileTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImportFileTaskOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class StartRecommendationReportGenerationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRecommendationReportGenerationInput, context: context)
        Hearth::Validator.validate!(input[:output_format], ::String, context: "#{context}[:output_format]")
        GroupIds.validate!(input[:group_id_filter], context: "#{context}[:group_id_filter]") unless input[:group_id_filter].nil?
      end
    end

    class StartRecommendationReportGenerationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRecommendationReportGenerationOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class StopAssessmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopAssessmentInput, context: context)
        Hearth::Validator.validate!(input[:assessment_id], ::String, context: "#{context}[:assessment_id]")
      end
    end

    class StopAssessmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopAssessmentOutput, context: context)
      end
    end

    class StrategyOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StrategyOption, context: context)
        Hearth::Validator.validate!(input[:strategy], ::String, context: "#{context}[:strategy]")
        Hearth::Validator.validate!(input[:tool_name], ::String, context: "#{context}[:tool_name]")
        Hearth::Validator.validate!(input[:target_destination], ::String, context: "#{context}[:target_destination]")
        Hearth::Validator.validate!(input[:is_preferred], ::TrueClass, ::FalseClass, context: "#{context}[:is_preferred]")
      end
    end

    class StrategySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StrategySummary, context: context)
        Hearth::Validator.validate!(input[:strategy], ::String, context: "#{context}[:strategy]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class SystemInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SystemInfo, context: context)
        OSInfo.validate!(input[:os_info], context: "#{context}[:os_info]") unless input[:os_info].nil?
        Hearth::Validator.validate!(input[:file_system_type], ::String, context: "#{context}[:file_system_type]")
        NetworkInfoList.validate!(input[:network_info_list], context: "#{context}[:network_info_list]") unless input[:network_info_list].nil?
        Hearth::Validator.validate!(input[:cpu_architecture], ::String, context: "#{context}[:cpu_architecture]")
      end
    end

    class TargetDatabaseEngines
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TransformationTool
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransformationTool, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:tranformation_tool_installation_link], ::String, context: "#{context}[:tranformation_tool_installation_link]")
      end
    end

    class UpdateApplicationComponentConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationComponentConfigInput, context: context)
        Hearth::Validator.validate!(input[:application_component_id], ::String, context: "#{context}[:application_component_id]")
        Hearth::Validator.validate!(input[:inclusion_status], ::String, context: "#{context}[:inclusion_status]")
        StrategyOption.validate!(input[:strategy_option], context: "#{context}[:strategy_option]") unless input[:strategy_option].nil?
        SourceCodeList.validate!(input[:source_code_list], context: "#{context}[:source_code_list]") unless input[:source_code_list].nil?
        Hearth::Validator.validate!(input[:secrets_manager_key], ::String, context: "#{context}[:secrets_manager_key]")
      end
    end

    class UpdateApplicationComponentConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationComponentConfigOutput, context: context)
      end
    end

    class UpdateServerConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServerConfigInput, context: context)
        Hearth::Validator.validate!(input[:server_id], ::String, context: "#{context}[:server_id]")
        StrategyOption.validate!(input[:strategy_option], context: "#{context}[:strategy_option]") unless input[:strategy_option].nil?
      end
    end

    class UpdateServerConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServerConfigOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
