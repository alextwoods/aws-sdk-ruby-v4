# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MigrationHubStrategy
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AntipatternSeveritySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AntipatternSeveritySummary, context: context)
        type = Types::AntipatternSeveritySummary.new
        type.severity = params[:severity]
        type.count = params[:count]
        type
      end
    end

    module ApplicationComponentDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationComponentDetail, context: context)
        type = Types::ApplicationComponentDetail.new
        type.id = params[:id]
        type.name = params[:name]
        type.recommendation_set = RecommendationSet.build(params[:recommendation_set], context: "#{context}[:recommendation_set]") unless params[:recommendation_set].nil?
        type.analysis_status = params[:analysis_status]
        type.status_message = params[:status_message]
        type.list_antipattern_severity_summary = ListAntipatternSeveritySummary.build(params[:list_antipattern_severity_summary], context: "#{context}[:list_antipattern_severity_summary]") unless params[:list_antipattern_severity_summary].nil?
        type.database_config_detail = DatabaseConfigDetail.build(params[:database_config_detail], context: "#{context}[:database_config_detail]") unless params[:database_config_detail].nil?
        type.source_code_repositories = SourceCodeRepositories.build(params[:source_code_repositories], context: "#{context}[:source_code_repositories]") unless params[:source_code_repositories].nil?
        type.app_type = params[:app_type]
        type.resource_sub_type = params[:resource_sub_type]
        type.inclusion_status = params[:inclusion_status]
        type.antipattern_report_s3_object = S3Object.build(params[:antipattern_report_s3_object], context: "#{context}[:antipattern_report_s3_object]") unless params[:antipattern_report_s3_object].nil?
        type.antipattern_report_status = params[:antipattern_report_status]
        type.antipattern_report_status_message = params[:antipattern_report_status_message]
        type.os_version = params[:os_version]
        type.os_driver = params[:os_driver]
        type.last_analyzed_timestamp = params[:last_analyzed_timestamp]
        type.associated_server_id = params[:associated_server_id]
        type.more_server_association_exists = params[:more_server_association_exists]
        type
      end
    end

    module ApplicationComponentDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationComponentDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationComponentStrategies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationComponentStrategy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationComponentStrategy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationComponentStrategy, context: context)
        type = Types::ApplicationComponentStrategy.new
        type.recommendation = RecommendationSet.build(params[:recommendation], context: "#{context}[:recommendation]") unless params[:recommendation].nil?
        type.status = params[:status]
        type.is_preferred = params[:is_preferred]
        type
      end
    end

    module ApplicationComponentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationComponentSummary, context: context)
        type = Types::ApplicationComponentSummary.new
        type.app_type = params[:app_type]
        type.count = params[:count]
        type
      end
    end

    module ApplicationPreferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationPreferences, context: context)
        type = Types::ApplicationPreferences.new
        type.management_preference = ManagementPreference.build(params[:management_preference], context: "#{context}[:management_preference]") unless params[:management_preference].nil?
        type
      end
    end

    module AssessmentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentSummary, context: context)
        type = Types::AssessmentSummary.new
        type.list_server_strategy_summary = ListStrategySummary.build(params[:list_server_strategy_summary], context: "#{context}[:list_server_strategy_summary]") unless params[:list_server_strategy_summary].nil?
        type.list_application_component_strategy_summary = ListStrategySummary.build(params[:list_application_component_strategy_summary], context: "#{context}[:list_application_component_strategy_summary]") unless params[:list_application_component_strategy_summary].nil?
        type.list_antipattern_severity_summary = ListAntipatternSeveritySummary.build(params[:list_antipattern_severity_summary], context: "#{context}[:list_antipattern_severity_summary]") unless params[:list_antipattern_severity_summary].nil?
        type.list_application_component_summary = ListApplicationComponentSummary.build(params[:list_application_component_summary], context: "#{context}[:list_application_component_summary]") unless params[:list_application_component_summary].nil?
        type.list_server_summary = ListServerSummary.build(params[:list_server_summary], context: "#{context}[:list_server_summary]") unless params[:list_server_summary].nil?
        type.antipattern_report_s3_object = S3Object.build(params[:antipattern_report_s3_object], context: "#{context}[:antipattern_report_s3_object]") unless params[:antipattern_report_s3_object].nil?
        type.antipattern_report_status = params[:antipattern_report_status]
        type.antipattern_report_status_message = params[:antipattern_report_status_message]
        type.last_analyzed_timestamp = params[:last_analyzed_timestamp]
        type
      end
    end

    module AssociatedApplication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatedApplication, context: context)
        type = Types::AssociatedApplication.new
        type.name = params[:name]
        type.id = params[:id]
        type
      end
    end

    module AssociatedApplications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociatedApplication.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociatedServerIDs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AwsManagedResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsManagedResources, context: context)
        type = Types::AwsManagedResources.new
        type.target_destination = AwsManagedTargetDestinations.build(params[:target_destination], context: "#{context}[:target_destination]") unless params[:target_destination].nil?
        type
      end
    end

    module AwsManagedTargetDestinations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BusinessGoals
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BusinessGoals, context: context)
        type = Types::BusinessGoals.new
        type.speed_of_migration = params[:speed_of_migration]
        type.reduce_operational_overhead_with_managed_services = params[:reduce_operational_overhead_with_managed_services]
        type.modernize_infrastructure_with_cloud_native_technologies = params[:modernize_infrastructure_with_cloud_native_technologies]
        type.license_cost_reduction = params[:license_cost_reduction]
        type
      end
    end

    module Collector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Collector, context: context)
        type = Types::Collector.new
        type.collector_id = params[:collector_id]
        type.ip_address = params[:ip_address]
        type.host_name = params[:host_name]
        type.collector_health = params[:collector_health]
        type.collector_version = params[:collector_version]
        type.registered_time_stamp = params[:registered_time_stamp]
        type.last_activity_time_stamp = params[:last_activity_time_stamp]
        type
      end
    end

    module Collectors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Collector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module DataCollectionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataCollectionDetails, context: context)
        type = Types::DataCollectionDetails.new
        type.status = params[:status]
        type.servers = params[:servers]
        type.failed = params[:failed]
        type.success = params[:success]
        type.in_progress = params[:in_progress]
        type.start_time = params[:start_time]
        type.completion_time = params[:completion_time]
        type
      end
    end

    module DatabaseConfigDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatabaseConfigDetail, context: context)
        type = Types::DatabaseConfigDetail.new
        type.secret_name = params[:secret_name]
        type
      end
    end

    module DatabaseMigrationPreference
      def self.build(params, context: '')
        return params if params.is_a?(Types::DatabaseMigrationPreference)
        Hearth::Validator.validate!(params, ::Hash, Types::DatabaseMigrationPreference, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :heterogeneous
          Types::DatabaseMigrationPreference::Heterogeneous.new(
            (Heterogeneous.build(params[:heterogeneous], context: "#{context}[:heterogeneous]") unless params[:heterogeneous].nil?)
          )
        when :homogeneous
          Types::DatabaseMigrationPreference::Homogeneous.new(
            (Homogeneous.build(params[:homogeneous], context: "#{context}[:homogeneous]") unless params[:homogeneous].nil?)
          )
        when :no_preference
          Types::DatabaseMigrationPreference::NoPreference.new(
            (NoDatabaseMigrationPreference.build(params[:no_preference], context: "#{context}[:no_preference]") unless params[:no_preference].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :heterogeneous, :homogeneous, :no_preference set"
        end
      end
    end

    module DatabasePreferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatabasePreferences, context: context)
        type = Types::DatabasePreferences.new
        type.database_management_preference = params[:database_management_preference]
        type.database_migration_preference = DatabaseMigrationPreference.build(params[:database_migration_preference], context: "#{context}[:database_migration_preference]") unless params[:database_migration_preference].nil?
        type
      end
    end

    module GetApplicationComponentDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationComponentDetailsInput, context: context)
        type = Types::GetApplicationComponentDetailsInput.new
        type.application_component_id = params[:application_component_id]
        type
      end
    end

    module GetApplicationComponentDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationComponentDetailsOutput, context: context)
        type = Types::GetApplicationComponentDetailsOutput.new
        type.application_component_detail = ApplicationComponentDetail.build(params[:application_component_detail], context: "#{context}[:application_component_detail]") unless params[:application_component_detail].nil?
        type.associated_applications = AssociatedApplications.build(params[:associated_applications], context: "#{context}[:associated_applications]") unless params[:associated_applications].nil?
        type.more_application_resource = params[:more_application_resource]
        type.associated_server_ids = AssociatedServerIDs.build(params[:associated_server_ids], context: "#{context}[:associated_server_ids]") unless params[:associated_server_ids].nil?
        type
      end
    end

    module GetApplicationComponentStrategiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationComponentStrategiesInput, context: context)
        type = Types::GetApplicationComponentStrategiesInput.new
        type.application_component_id = params[:application_component_id]
        type
      end
    end

    module GetApplicationComponentStrategiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationComponentStrategiesOutput, context: context)
        type = Types::GetApplicationComponentStrategiesOutput.new
        type.application_component_strategies = ApplicationComponentStrategies.build(params[:application_component_strategies], context: "#{context}[:application_component_strategies]") unless params[:application_component_strategies].nil?
        type
      end
    end

    module GetAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssessmentInput, context: context)
        type = Types::GetAssessmentInput.new
        type.id = params[:id]
        type
      end
    end

    module GetAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssessmentOutput, context: context)
        type = Types::GetAssessmentOutput.new
        type.id = params[:id]
        type.data_collection_details = DataCollectionDetails.build(params[:data_collection_details], context: "#{context}[:data_collection_details]") unless params[:data_collection_details].nil?
        type
      end
    end

    module GetImportFileTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImportFileTaskInput, context: context)
        type = Types::GetImportFileTaskInput.new
        type.id = params[:id]
        type
      end
    end

    module GetImportFileTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetImportFileTaskOutput, context: context)
        type = Types::GetImportFileTaskOutput.new
        type.id = params[:id]
        type.status = params[:status]
        type.start_time = params[:start_time]
        type.input_s3_bucket = params[:input_s3_bucket]
        type.input_s3_key = params[:input_s3_key]
        type.status_report_s3_bucket = params[:status_report_s3_bucket]
        type.status_report_s3_key = params[:status_report_s3_key]
        type.completion_time = params[:completion_time]
        type.number_of_records_success = params[:number_of_records_success]
        type.number_of_records_failed = params[:number_of_records_failed]
        type.import_name = params[:import_name]
        type
      end
    end

    module GetPortfolioPreferencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPortfolioPreferencesInput, context: context)
        type = Types::GetPortfolioPreferencesInput.new
        type
      end
    end

    module GetPortfolioPreferencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPortfolioPreferencesOutput, context: context)
        type = Types::GetPortfolioPreferencesOutput.new
        type.prioritize_business_goals = PrioritizeBusinessGoals.build(params[:prioritize_business_goals], context: "#{context}[:prioritize_business_goals]") unless params[:prioritize_business_goals].nil?
        type.application_preferences = ApplicationPreferences.build(params[:application_preferences], context: "#{context}[:application_preferences]") unless params[:application_preferences].nil?
        type.database_preferences = DatabasePreferences.build(params[:database_preferences], context: "#{context}[:database_preferences]") unless params[:database_preferences].nil?
        type
      end
    end

    module GetPortfolioSummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPortfolioSummaryInput, context: context)
        type = Types::GetPortfolioSummaryInput.new
        type
      end
    end

    module GetPortfolioSummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPortfolioSummaryOutput, context: context)
        type = Types::GetPortfolioSummaryOutput.new
        type.assessment_summary = AssessmentSummary.build(params[:assessment_summary], context: "#{context}[:assessment_summary]") unless params[:assessment_summary].nil?
        type
      end
    end

    module GetRecommendationReportDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommendationReportDetailsInput, context: context)
        type = Types::GetRecommendationReportDetailsInput.new
        type.id = params[:id]
        type
      end
    end

    module GetRecommendationReportDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommendationReportDetailsOutput, context: context)
        type = Types::GetRecommendationReportDetailsOutput.new
        type.id = params[:id]
        type.recommendation_report_details = RecommendationReportDetails.build(params[:recommendation_report_details], context: "#{context}[:recommendation_report_details]") unless params[:recommendation_report_details].nil?
        type
      end
    end

    module GetServerDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServerDetailsInput, context: context)
        type = Types::GetServerDetailsInput.new
        type.server_id = params[:server_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetServerDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServerDetailsOutput, context: context)
        type = Types::GetServerDetailsOutput.new
        type.next_token = params[:next_token]
        type.server_detail = ServerDetail.build(params[:server_detail], context: "#{context}[:server_detail]") unless params[:server_detail].nil?
        type.associated_applications = AssociatedApplications.build(params[:associated_applications], context: "#{context}[:associated_applications]") unless params[:associated_applications].nil?
        type
      end
    end

    module GetServerStrategiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServerStrategiesInput, context: context)
        type = Types::GetServerStrategiesInput.new
        type.server_id = params[:server_id]
        type
      end
    end

    module GetServerStrategiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServerStrategiesOutput, context: context)
        type = Types::GetServerStrategiesOutput.new
        type.server_strategies = ServerStrategies.build(params[:server_strategies], context: "#{context}[:server_strategies]") unless params[:server_strategies].nil?
        type
      end
    end

    module Group
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Group, context: context)
        type = Types::Group.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module GroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Group.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Heterogeneous
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Heterogeneous, context: context)
        type = Types::Heterogeneous.new
        type.target_database_engine = HeterogeneousTargetDatabaseEngines.build(params[:target_database_engine], context: "#{context}[:target_database_engine]") unless params[:target_database_engine].nil?
        type
      end
    end

    module HeterogeneousTargetDatabaseEngines
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Homogeneous
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Homogeneous, context: context)
        type = Types::Homogeneous.new
        type.target_database_engine = HomogeneousTargetDatabaseEngines.build(params[:target_database_engine], context: "#{context}[:target_database_engine]") unless params[:target_database_engine].nil?
        type
      end
    end

    module HomogeneousTargetDatabaseEngines
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ImportFileTaskInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportFileTaskInformation, context: context)
        type = Types::ImportFileTaskInformation.new
        type.id = params[:id]
        type.status = params[:status]
        type.start_time = params[:start_time]
        type.input_s3_bucket = params[:input_s3_bucket]
        type.input_s3_key = params[:input_s3_key]
        type.status_report_s3_bucket = params[:status_report_s3_bucket]
        type.status_report_s3_key = params[:status_report_s3_key]
        type.completion_time = params[:completion_time]
        type.number_of_records_success = params[:number_of_records_success]
        type.number_of_records_failed = params[:number_of_records_failed]
        type.import_name = params[:import_name]
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

    module ListAntipatternSeveritySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AntipatternSeveritySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListApplicationComponentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationComponentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListApplicationComponentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationComponentsInput, context: context)
        type = Types::ListApplicationComponentsInput.new
        type.application_component_criteria = params[:application_component_criteria]
        type.filter_value = params[:filter_value]
        type.sort = params[:sort]
        type.group_id_filter = GroupIds.build(params[:group_id_filter], context: "#{context}[:group_id_filter]") unless params[:group_id_filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListApplicationComponentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationComponentsOutput, context: context)
        type = Types::ListApplicationComponentsOutput.new
        type.application_component_infos = ApplicationComponentDetails.build(params[:application_component_infos], context: "#{context}[:application_component_infos]") unless params[:application_component_infos].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCollectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCollectorsInput, context: context)
        type = Types::ListCollectorsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListCollectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCollectorsOutput, context: context)
        type = Types::ListCollectorsOutput.new
        type.collectors = Collectors.build(params[:collectors], context: "#{context}[:collectors]") unless params[:collectors].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImportFileTaskInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImportFileTaskInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListImportFileTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImportFileTaskInput, context: context)
        type = Types::ListImportFileTaskInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListImportFileTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImportFileTaskOutput, context: context)
        type = Types::ListImportFileTaskOutput.new
        type.task_infos = ListImportFileTaskInformation.build(params[:task_infos], context: "#{context}[:task_infos]") unless params[:task_infos].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListServerSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListServersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServersInput, context: context)
        type = Types::ListServersInput.new
        type.server_criteria = params[:server_criteria]
        type.filter_value = params[:filter_value]
        type.sort = params[:sort]
        type.group_id_filter = GroupIds.build(params[:group_id_filter], context: "#{context}[:group_id_filter]") unless params[:group_id_filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListServersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServersOutput, context: context)
        type = Types::ListServersOutput.new
        type.server_infos = ServerDetails.build(params[:server_infos], context: "#{context}[:server_infos]") unless params[:server_infos].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStrategySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StrategySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ManagementPreference
      def self.build(params, context: '')
        return params if params.is_a?(Types::ManagementPreference)
        Hearth::Validator.validate!(params, ::Hash, Types::ManagementPreference, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :aws_managed_resources
          Types::ManagementPreference::AwsManagedResources.new(
            (AwsManagedResources.build(params[:aws_managed_resources], context: "#{context}[:aws_managed_resources]") unless params[:aws_managed_resources].nil?)
          )
        when :self_manage_resources
          Types::ManagementPreference::SelfManageResources.new(
            (SelfManageResources.build(params[:self_manage_resources], context: "#{context}[:self_manage_resources]") unless params[:self_manage_resources].nil?)
          )
        when :no_preference
          Types::ManagementPreference::NoPreference.new(
            (NoManagementPreference.build(params[:no_preference], context: "#{context}[:no_preference]") unless params[:no_preference].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :aws_managed_resources, :self_manage_resources, :no_preference set"
        end
      end
    end

    module NetworkInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInfo, context: context)
        type = Types::NetworkInfo.new
        type.interface_name = params[:interface_name]
        type.ip_address = params[:ip_address]
        type.mac_address = params[:mac_address]
        type.net_mask = params[:net_mask]
        type
      end
    end

    module NetworkInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NoDatabaseMigrationPreference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoDatabaseMigrationPreference, context: context)
        type = Types::NoDatabaseMigrationPreference.new
        type.target_database_engine = TargetDatabaseEngines.build(params[:target_database_engine], context: "#{context}[:target_database_engine]") unless params[:target_database_engine].nil?
        type
      end
    end

    module NoManagementPreference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoManagementPreference, context: context)
        type = Types::NoManagementPreference.new
        type.target_destination = NoPreferenceTargetDestinations.build(params[:target_destination], context: "#{context}[:target_destination]") unless params[:target_destination].nil?
        type
      end
    end

    module NoPreferenceTargetDestinations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OSInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OSInfo, context: context)
        type = Types::OSInfo.new
        type.type = params[:type]
        type.version = params[:version]
        type
      end
    end

    module PrioritizeBusinessGoals
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrioritizeBusinessGoals, context: context)
        type = Types::PrioritizeBusinessGoals.new
        type.business_goals = BusinessGoals.build(params[:business_goals], context: "#{context}[:business_goals]") unless params[:business_goals].nil?
        type
      end
    end

    module PutPortfolioPreferencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPortfolioPreferencesInput, context: context)
        type = Types::PutPortfolioPreferencesInput.new
        type.prioritize_business_goals = PrioritizeBusinessGoals.build(params[:prioritize_business_goals], context: "#{context}[:prioritize_business_goals]") unless params[:prioritize_business_goals].nil?
        type.application_preferences = ApplicationPreferences.build(params[:application_preferences], context: "#{context}[:application_preferences]") unless params[:application_preferences].nil?
        type.database_preferences = DatabasePreferences.build(params[:database_preferences], context: "#{context}[:database_preferences]") unless params[:database_preferences].nil?
        type
      end
    end

    module PutPortfolioPreferencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPortfolioPreferencesOutput, context: context)
        type = Types::PutPortfolioPreferencesOutput.new
        type
      end
    end

    module RecommendationReportDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationReportDetails, context: context)
        type = Types::RecommendationReportDetails.new
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.start_time = params[:start_time]
        type.completion_time = params[:completion_time]
        type.s3_bucket = params[:s3_bucket]
        type.s3_keys = S3Keys.build(params[:s3_keys], context: "#{context}[:s3_keys]") unless params[:s3_keys].nil?
        type
      end
    end

    module RecommendationSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationSet, context: context)
        type = Types::RecommendationSet.new
        type.transformation_tool = TransformationTool.build(params[:transformation_tool], context: "#{context}[:transformation_tool]") unless params[:transformation_tool].nil?
        type.target_destination = params[:target_destination]
        type.strategy = params[:strategy]
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

    module S3Keys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module S3Object
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Object, context: context)
        type = Types::S3Object.new
        type.s3_bucket = params[:s3_bucket]
        type.s3key = params[:s3key]
        type
      end
    end

    module SelfManageResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelfManageResources, context: context)
        type = Types::SelfManageResources.new
        type.target_destination = SelfManageTargetDestinations.build(params[:target_destination], context: "#{context}[:target_destination]") unless params[:target_destination].nil?
        type
      end
    end

    module SelfManageTargetDestinations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServerDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerDetail, context: context)
        type = Types::ServerDetail.new
        type.id = params[:id]
        type.name = params[:name]
        type.recommendation_set = RecommendationSet.build(params[:recommendation_set], context: "#{context}[:recommendation_set]") unless params[:recommendation_set].nil?
        type.data_collection_status = params[:data_collection_status]
        type.status_message = params[:status_message]
        type.list_antipattern_severity_summary = ListAntipatternSeveritySummary.build(params[:list_antipattern_severity_summary], context: "#{context}[:list_antipattern_severity_summary]") unless params[:list_antipattern_severity_summary].nil?
        type.system_info = SystemInfo.build(params[:system_info], context: "#{context}[:system_info]") unless params[:system_info].nil?
        type.application_component_strategy_summary = ListStrategySummary.build(params[:application_component_strategy_summary], context: "#{context}[:application_component_strategy_summary]") unless params[:application_component_strategy_summary].nil?
        type.antipattern_report_s3_object = S3Object.build(params[:antipattern_report_s3_object], context: "#{context}[:antipattern_report_s3_object]") unless params[:antipattern_report_s3_object].nil?
        type.antipattern_report_status = params[:antipattern_report_status]
        type.antipattern_report_status_message = params[:antipattern_report_status_message]
        type.server_type = params[:server_type]
        type.last_analyzed_timestamp = params[:last_analyzed_timestamp]
        type
      end
    end

    module ServerDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServerStrategies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerStrategy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServerStrategy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerStrategy, context: context)
        type = Types::ServerStrategy.new
        type.recommendation = RecommendationSet.build(params[:recommendation], context: "#{context}[:recommendation]") unless params[:recommendation].nil?
        type.status = params[:status]
        type.number_of_application_components = params[:number_of_application_components]
        type.is_preferred = params[:is_preferred]
        type
      end
    end

    module ServerSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerSummary, context: context)
        type = Types::ServerSummary.new
        type.server_os_type = params[:server_os_type]
        type.count = params[:count]
        type
      end
    end

    module ServiceLinkedRoleLockClientException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceLinkedRoleLockClientException, context: context)
        type = Types::ServiceLinkedRoleLockClientException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SourceCode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceCode, context: context)
        type = Types::SourceCode.new
        type.version_control = params[:version_control]
        type.source_version = params[:source_version]
        type.location = params[:location]
        type
      end
    end

    module SourceCodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SourceCode.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SourceCodeRepositories
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SourceCodeRepository.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SourceCodeRepository
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceCodeRepository, context: context)
        type = Types::SourceCodeRepository.new
        type.repository = params[:repository]
        type.branch = params[:branch]
        type.version_control_type = params[:version_control_type]
        type
      end
    end

    module StartAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAssessmentInput, context: context)
        type = Types::StartAssessmentInput.new
        type.s3bucket_for_analysis_data = params[:s3bucket_for_analysis_data]
        type.s3bucket_for_report_data = params[:s3bucket_for_report_data]
        type
      end
    end

    module StartAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAssessmentOutput, context: context)
        type = Types::StartAssessmentOutput.new
        type.assessment_id = params[:assessment_id]
        type
      end
    end

    module StartImportFileTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImportFileTaskInput, context: context)
        type = Types::StartImportFileTaskInput.new
        type.name = params[:name]
        type.s3_bucket = params[:s3_bucket]
        type.s3key = params[:s3key]
        type.data_source_type = params[:data_source_type]
        type.group_id = GroupIds.build(params[:group_id], context: "#{context}[:group_id]") unless params[:group_id].nil?
        type.s3bucket_for_report_data = params[:s3bucket_for_report_data]
        type
      end
    end

    module StartImportFileTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImportFileTaskOutput, context: context)
        type = Types::StartImportFileTaskOutput.new
        type.id = params[:id]
        type
      end
    end

    module StartRecommendationReportGenerationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRecommendationReportGenerationInput, context: context)
        type = Types::StartRecommendationReportGenerationInput.new
        type.output_format = params[:output_format]
        type.group_id_filter = GroupIds.build(params[:group_id_filter], context: "#{context}[:group_id_filter]") unless params[:group_id_filter].nil?
        type
      end
    end

    module StartRecommendationReportGenerationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRecommendationReportGenerationOutput, context: context)
        type = Types::StartRecommendationReportGenerationOutput.new
        type.id = params[:id]
        type
      end
    end

    module StopAssessmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopAssessmentInput, context: context)
        type = Types::StopAssessmentInput.new
        type.assessment_id = params[:assessment_id]
        type
      end
    end

    module StopAssessmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopAssessmentOutput, context: context)
        type = Types::StopAssessmentOutput.new
        type
      end
    end

    module StrategyOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StrategyOption, context: context)
        type = Types::StrategyOption.new
        type.strategy = params[:strategy]
        type.tool_name = params[:tool_name]
        type.target_destination = params[:target_destination]
        type.is_preferred = params[:is_preferred]
        type
      end
    end

    module StrategySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StrategySummary, context: context)
        type = Types::StrategySummary.new
        type.strategy = params[:strategy]
        type.count = params[:count]
        type
      end
    end

    module SystemInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SystemInfo, context: context)
        type = Types::SystemInfo.new
        type.os_info = OSInfo.build(params[:os_info], context: "#{context}[:os_info]") unless params[:os_info].nil?
        type.file_system_type = params[:file_system_type]
        type.network_info_list = NetworkInfoList.build(params[:network_info_list], context: "#{context}[:network_info_list]") unless params[:network_info_list].nil?
        type.cpu_architecture = params[:cpu_architecture]
        type
      end
    end

    module TargetDatabaseEngines
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TransformationTool
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransformationTool, context: context)
        type = Types::TransformationTool.new
        type.name = params[:name]
        type.description = params[:description]
        type.tranformation_tool_installation_link = params[:tranformation_tool_installation_link]
        type
      end
    end

    module UpdateApplicationComponentConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationComponentConfigInput, context: context)
        type = Types::UpdateApplicationComponentConfigInput.new
        type.application_component_id = params[:application_component_id]
        type.inclusion_status = params[:inclusion_status]
        type.strategy_option = StrategyOption.build(params[:strategy_option], context: "#{context}[:strategy_option]") unless params[:strategy_option].nil?
        type.source_code_list = SourceCodeList.build(params[:source_code_list], context: "#{context}[:source_code_list]") unless params[:source_code_list].nil?
        type.secrets_manager_key = params[:secrets_manager_key]
        type
      end
    end

    module UpdateApplicationComponentConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationComponentConfigOutput, context: context)
        type = Types::UpdateApplicationComponentConfigOutput.new
        type
      end
    end

    module UpdateServerConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServerConfigInput, context: context)
        type = Types::UpdateServerConfigInput.new
        type.server_id = params[:server_id]
        type.strategy_option = StrategyOption.build(params[:strategy_option], context: "#{context}[:strategy_option]") unless params[:strategy_option].nil?
        type
      end
    end

    module UpdateServerConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServerConfigOutput, context: context)
        type = Types::UpdateServerConfigOutput.new
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

  end
end
