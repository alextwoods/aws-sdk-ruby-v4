# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::MigrationHubStrategy
  module Builders

    # Operation Builder for GetApplicationComponentDetails
    class GetApplicationComponentDetails
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_component_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_component_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/get-applicationcomponent-details/%<applicationComponentId>s',
            applicationComponentId: Hearth::HTTP.uri_escape(input[:application_component_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApplicationComponentStrategies
    class GetApplicationComponentStrategies
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_component_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_component_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/get-applicationcomponent-strategies/%<applicationComponentId>s',
            applicationComponentId: Hearth::HTTP.uri_escape(input[:application_component_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAssessment
    class GetAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/get-assessment/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetImportFileTask
    class GetImportFileTask
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/get-import-file-task/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPortfolioPreferences
    class GetPortfolioPreferences
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/get-portfolio-preferences')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPortfolioSummary
    class GetPortfolioSummary
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/get-portfolio-summary')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRecommendationReportDetails
    class GetRecommendationReportDetails
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/get-recommendation-report-details/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetServerDetails
    class GetServerDetails
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:server_id].to_s.empty?
          raise ArgumentError, "HTTP label :server_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/get-server-details/%<serverId>s',
            serverId: Hearth::HTTP.uri_escape(input[:server_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetServerStrategies
    class GetServerStrategies
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:server_id].to_s.empty?
          raise ArgumentError, "HTTP label :server_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/get-server-strategies/%<serverId>s',
            serverId: Hearth::HTTP.uri_escape(input[:server_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListApplicationComponents
    class ListApplicationComponents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-applicationcomponents')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['applicationComponentCriteria'] = input[:application_component_criteria] unless input[:application_component_criteria].nil?
        data['filterValue'] = input[:filter_value] unless input[:filter_value].nil?
        data['sort'] = input[:sort] unless input[:sort].nil?
        data['groupIdFilter'] = GroupIds.build(input[:group_id_filter]) unless input[:group_id_filter].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for GroupIds
    class GroupIds
      def self.build(input)
        data = []
        input.each do |element|
          data << Group.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Group
    class Group
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for ListCollectors
    class ListCollectors
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/list-collectors')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListImportFileTask
    class ListImportFileTask
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/list-import-file-task')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListServers
    class ListServers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-servers')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['serverCriteria'] = input[:server_criteria] unless input[:server_criteria].nil?
        data['filterValue'] = input[:filter_value] unless input[:filter_value].nil?
        data['sort'] = input[:sort] unless input[:sort].nil?
        data['groupIdFilter'] = GroupIds.build(input[:group_id_filter]) unless input[:group_id_filter].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutPortfolioPreferences
    class PutPortfolioPreferences
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/put-portfolio-preferences')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['prioritizeBusinessGoals'] = PrioritizeBusinessGoals.build(input[:prioritize_business_goals]) unless input[:prioritize_business_goals].nil?
        data['applicationPreferences'] = ApplicationPreferences.build(input[:application_preferences]) unless input[:application_preferences].nil?
        data['databasePreferences'] = DatabasePreferences.build(input[:database_preferences]) unless input[:database_preferences].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DatabasePreferences
    class DatabasePreferences
      def self.build(input)
        data = {}
        data['databaseManagementPreference'] = input[:database_management_preference] unless input[:database_management_preference].nil?
        data['databaseMigrationPreference'] = DatabaseMigrationPreference.build(input[:database_migration_preference]) unless input[:database_migration_preference].nil?
        data
      end
    end

    # Structure Builder for DatabaseMigrationPreference
    class DatabaseMigrationPreference
      def self.build(input)
        data = {}
        case input
        when Types::DatabaseMigrationPreference::Heterogeneous
          data['heterogeneous'] = (Heterogeneous.build(input) unless input.nil?)
        when Types::DatabaseMigrationPreference::Homogeneous
          data['homogeneous'] = (Homogeneous.build(input) unless input.nil?)
        when Types::DatabaseMigrationPreference::NoPreference
          data['noPreference'] = (NoDatabaseMigrationPreference.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::DatabaseMigrationPreference"
        end

        data
      end
    end

    # Structure Builder for NoDatabaseMigrationPreference
    class NoDatabaseMigrationPreference
      def self.build(input)
        data = {}
        data['targetDatabaseEngine'] = TargetDatabaseEngines.build(input[:target_database_engine]) unless input[:target_database_engine].nil?
        data
      end
    end

    # List Builder for TargetDatabaseEngines
    class TargetDatabaseEngines
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Homogeneous
    class Homogeneous
      def self.build(input)
        data = {}
        data['targetDatabaseEngine'] = HomogeneousTargetDatabaseEngines.build(input[:target_database_engine]) unless input[:target_database_engine].nil?
        data
      end
    end

    # List Builder for HomogeneousTargetDatabaseEngines
    class HomogeneousTargetDatabaseEngines
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Heterogeneous
    class Heterogeneous
      def self.build(input)
        data = {}
        data['targetDatabaseEngine'] = HeterogeneousTargetDatabaseEngines.build(input[:target_database_engine]) unless input[:target_database_engine].nil?
        data
      end
    end

    # List Builder for HeterogeneousTargetDatabaseEngines
    class HeterogeneousTargetDatabaseEngines
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ApplicationPreferences
    class ApplicationPreferences
      def self.build(input)
        data = {}
        data['managementPreference'] = ManagementPreference.build(input[:management_preference]) unless input[:management_preference].nil?
        data
      end
    end

    # Structure Builder for ManagementPreference
    class ManagementPreference
      def self.build(input)
        data = {}
        case input
        when Types::ManagementPreference::AwsManagedResources
          data['awsManagedResources'] = (AwsManagedResources.build(input) unless input.nil?)
        when Types::ManagementPreference::SelfManageResources
          data['selfManageResources'] = (SelfManageResources.build(input) unless input.nil?)
        when Types::ManagementPreference::NoPreference
          data['noPreference'] = (NoManagementPreference.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ManagementPreference"
        end

        data
      end
    end

    # Structure Builder for NoManagementPreference
    class NoManagementPreference
      def self.build(input)
        data = {}
        data['targetDestination'] = NoPreferenceTargetDestinations.build(input[:target_destination]) unless input[:target_destination].nil?
        data
      end
    end

    # List Builder for NoPreferenceTargetDestinations
    class NoPreferenceTargetDestinations
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SelfManageResources
    class SelfManageResources
      def self.build(input)
        data = {}
        data['targetDestination'] = SelfManageTargetDestinations.build(input[:target_destination]) unless input[:target_destination].nil?
        data
      end
    end

    # List Builder for SelfManageTargetDestinations
    class SelfManageTargetDestinations
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AwsManagedResources
    class AwsManagedResources
      def self.build(input)
        data = {}
        data['targetDestination'] = AwsManagedTargetDestinations.build(input[:target_destination]) unless input[:target_destination].nil?
        data
      end
    end

    # List Builder for AwsManagedTargetDestinations
    class AwsManagedTargetDestinations
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PrioritizeBusinessGoals
    class PrioritizeBusinessGoals
      def self.build(input)
        data = {}
        data['businessGoals'] = BusinessGoals.build(input[:business_goals]) unless input[:business_goals].nil?
        data
      end
    end

    # Structure Builder for BusinessGoals
    class BusinessGoals
      def self.build(input)
        data = {}
        data['speedOfMigration'] = input[:speed_of_migration] unless input[:speed_of_migration].nil?
        data['reduceOperationalOverheadWithManagedServices'] = input[:reduce_operational_overhead_with_managed_services] unless input[:reduce_operational_overhead_with_managed_services].nil?
        data['modernizeInfrastructureWithCloudNativeTechnologies'] = input[:modernize_infrastructure_with_cloud_native_technologies] unless input[:modernize_infrastructure_with_cloud_native_technologies].nil?
        data['licenseCostReduction'] = input[:license_cost_reduction] unless input[:license_cost_reduction].nil?
        data
      end
    end

    # Operation Builder for StartAssessment
    class StartAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/start-assessment')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['s3bucketForAnalysisData'] = input[:s3bucket_for_analysis_data] unless input[:s3bucket_for_analysis_data].nil?
        data['s3bucketForReportData'] = input[:s3bucket_for_report_data] unless input[:s3bucket_for_report_data].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartImportFileTask
    class StartImportFileTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/start-import-file-task')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['s3key'] = input[:s3key] unless input[:s3key].nil?
        data['dataSourceType'] = input[:data_source_type] unless input[:data_source_type].nil?
        data['groupId'] = GroupIds.build(input[:group_id]) unless input[:group_id].nil?
        data['s3bucketForReportData'] = input[:s3bucket_for_report_data] unless input[:s3bucket_for_report_data].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartRecommendationReportGeneration
    class StartRecommendationReportGeneration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/start-recommendation-report-generation')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['outputFormat'] = input[:output_format] unless input[:output_format].nil?
        data['groupIdFilter'] = GroupIds.build(input[:group_id_filter]) unless input[:group_id_filter].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopAssessment
    class StopAssessment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/stop-assessment')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['assessmentId'] = input[:assessment_id] unless input[:assessment_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateApplicationComponentConfig
    class UpdateApplicationComponentConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/update-applicationcomponent-config/')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['applicationComponentId'] = input[:application_component_id] unless input[:application_component_id].nil?
        data['inclusionStatus'] = input[:inclusion_status] unless input[:inclusion_status].nil?
        data['strategyOption'] = StrategyOption.build(input[:strategy_option]) unless input[:strategy_option].nil?
        data['sourceCodeList'] = SourceCodeList.build(input[:source_code_list]) unless input[:source_code_list].nil?
        data['secretsManagerKey'] = input[:secrets_manager_key] unless input[:secrets_manager_key].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SourceCodeList
    class SourceCodeList
      def self.build(input)
        data = []
        input.each do |element|
          data << SourceCode.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SourceCode
    class SourceCode
      def self.build(input)
        data = {}
        data['versionControl'] = input[:version_control] unless input[:version_control].nil?
        data['sourceVersion'] = input[:source_version] unless input[:source_version].nil?
        data['location'] = input[:location] unless input[:location].nil?
        data
      end
    end

    # Structure Builder for StrategyOption
    class StrategyOption
      def self.build(input)
        data = {}
        data['strategy'] = input[:strategy] unless input[:strategy].nil?
        data['toolName'] = input[:tool_name] unless input[:tool_name].nil?
        data['targetDestination'] = input[:target_destination] unless input[:target_destination].nil?
        data['isPreferred'] = input[:is_preferred] unless input[:is_preferred].nil?
        data
      end
    end

    # Operation Builder for UpdateServerConfig
    class UpdateServerConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/update-server-config/')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['serverId'] = input[:server_id] unless input[:server_id].nil?
        data['strategyOption'] = StrategyOption.build(input[:strategy_option]) unless input[:strategy_option].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
