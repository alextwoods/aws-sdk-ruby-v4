# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::MigrationHubStrategy
  module Stubs

    # Operation Stubber for GetApplicationComponentDetails
    class GetApplicationComponentDetails
      def self.default(visited=[])
        {
          application_component_detail: ApplicationComponentDetail.default(visited),
          associated_applications: AssociatedApplications.default(visited),
          more_application_resource: false,
          associated_server_ids: AssociatedServerIDs.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationComponentDetail'] = ApplicationComponentDetail.stub(stub[:application_component_detail]) unless stub[:application_component_detail].nil?
        data['associatedApplications'] = AssociatedApplications.stub(stub[:associated_applications]) unless stub[:associated_applications].nil?
        data['moreApplicationResource'] = stub[:more_application_resource] unless stub[:more_application_resource].nil?
        data['associatedServerIds'] = AssociatedServerIDs.stub(stub[:associated_server_ids]) unless stub[:associated_server_ids].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssociatedServerIDs
    class AssociatedServerIDs
      def self.default(visited=[])
        return nil if visited.include?('AssociatedServerIDs')
        visited = visited + ['AssociatedServerIDs']
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

    # List Stubber for AssociatedApplications
    class AssociatedApplications
      def self.default(visited=[])
        return nil if visited.include?('AssociatedApplications')
        visited = visited + ['AssociatedApplications']
        [
          AssociatedApplication.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AssociatedApplication.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssociatedApplication
    class AssociatedApplication
      def self.default(visited=[])
        return nil if visited.include?('AssociatedApplication')
        visited = visited + ['AssociatedApplication']
        {
          name: 'name',
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AssociatedApplication.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Structure Stubber for ApplicationComponentDetail
    class ApplicationComponentDetail
      def self.default(visited=[])
        return nil if visited.include?('ApplicationComponentDetail')
        visited = visited + ['ApplicationComponentDetail']
        {
          id: 'id',
          name: 'name',
          recommendation_set: RecommendationSet.default(visited),
          analysis_status: 'analysis_status',
          status_message: 'status_message',
          list_antipattern_severity_summary: ListAntipatternSeveritySummary.default(visited),
          database_config_detail: DatabaseConfigDetail.default(visited),
          source_code_repositories: SourceCodeRepositories.default(visited),
          app_type: 'app_type',
          resource_sub_type: 'resource_sub_type',
          inclusion_status: 'inclusion_status',
          antipattern_report_s3_object: S3Object.default(visited),
          antipattern_report_status: 'antipattern_report_status',
          antipattern_report_status_message: 'antipattern_report_status_message',
          os_version: 'os_version',
          os_driver: 'os_driver',
          last_analyzed_timestamp: Time.now,
          associated_server_id: 'associated_server_id',
          more_server_association_exists: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationComponentDetail.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['recommendationSet'] = RecommendationSet.stub(stub[:recommendation_set]) unless stub[:recommendation_set].nil?
        data['analysisStatus'] = stub[:analysis_status] unless stub[:analysis_status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['listAntipatternSeveritySummary'] = ListAntipatternSeveritySummary.stub(stub[:list_antipattern_severity_summary]) unless stub[:list_antipattern_severity_summary].nil?
        data['databaseConfigDetail'] = DatabaseConfigDetail.stub(stub[:database_config_detail]) unless stub[:database_config_detail].nil?
        data['sourceCodeRepositories'] = SourceCodeRepositories.stub(stub[:source_code_repositories]) unless stub[:source_code_repositories].nil?
        data['appType'] = stub[:app_type] unless stub[:app_type].nil?
        data['resourceSubType'] = stub[:resource_sub_type] unless stub[:resource_sub_type].nil?
        data['inclusionStatus'] = stub[:inclusion_status] unless stub[:inclusion_status].nil?
        data['antipatternReportS3Object'] = S3Object.stub(stub[:antipattern_report_s3_object]) unless stub[:antipattern_report_s3_object].nil?
        data['antipatternReportStatus'] = stub[:antipattern_report_status] unless stub[:antipattern_report_status].nil?
        data['antipatternReportStatusMessage'] = stub[:antipattern_report_status_message] unless stub[:antipattern_report_status_message].nil?
        data['osVersion'] = stub[:os_version] unless stub[:os_version].nil?
        data['osDriver'] = stub[:os_driver] unless stub[:os_driver].nil?
        data['lastAnalyzedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_analyzed_timestamp]).to_i unless stub[:last_analyzed_timestamp].nil?
        data['associatedServerId'] = stub[:associated_server_id] unless stub[:associated_server_id].nil?
        data['moreServerAssociationExists'] = stub[:more_server_association_exists] unless stub[:more_server_association_exists].nil?
        data
      end
    end

    # Structure Stubber for S3Object
    class S3Object
      def self.default(visited=[])
        return nil if visited.include?('S3Object')
        visited = visited + ['S3Object']
        {
          s3_bucket: 's3_bucket',
          s3key: 's3key',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Object.new
        data = {}
        data['s3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['s3key'] = stub[:s3key] unless stub[:s3key].nil?
        data
      end
    end

    # List Stubber for SourceCodeRepositories
    class SourceCodeRepositories
      def self.default(visited=[])
        return nil if visited.include?('SourceCodeRepositories')
        visited = visited + ['SourceCodeRepositories']
        [
          SourceCodeRepository.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SourceCodeRepository.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SourceCodeRepository
    class SourceCodeRepository
      def self.default(visited=[])
        return nil if visited.include?('SourceCodeRepository')
        visited = visited + ['SourceCodeRepository']
        {
          repository: 'repository',
          branch: 'branch',
          version_control_type: 'version_control_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceCodeRepository.new
        data = {}
        data['repository'] = stub[:repository] unless stub[:repository].nil?
        data['branch'] = stub[:branch] unless stub[:branch].nil?
        data['versionControlType'] = stub[:version_control_type] unless stub[:version_control_type].nil?
        data
      end
    end

    # Structure Stubber for DatabaseConfigDetail
    class DatabaseConfigDetail
      def self.default(visited=[])
        return nil if visited.include?('DatabaseConfigDetail')
        visited = visited + ['DatabaseConfigDetail']
        {
          secret_name: 'secret_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatabaseConfigDetail.new
        data = {}
        data['secretName'] = stub[:secret_name] unless stub[:secret_name].nil?
        data
      end
    end

    # List Stubber for ListAntipatternSeveritySummary
    class ListAntipatternSeveritySummary
      def self.default(visited=[])
        return nil if visited.include?('ListAntipatternSeveritySummary')
        visited = visited + ['ListAntipatternSeveritySummary']
        [
          AntipatternSeveritySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AntipatternSeveritySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AntipatternSeveritySummary
    class AntipatternSeveritySummary
      def self.default(visited=[])
        return nil if visited.include?('AntipatternSeveritySummary')
        visited = visited + ['AntipatternSeveritySummary']
        {
          severity: 'severity',
          count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AntipatternSeveritySummary.new
        data = {}
        data['severity'] = stub[:severity] unless stub[:severity].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data
      end
    end

    # Structure Stubber for RecommendationSet
    class RecommendationSet
      def self.default(visited=[])
        return nil if visited.include?('RecommendationSet')
        visited = visited + ['RecommendationSet']
        {
          transformation_tool: TransformationTool.default(visited),
          target_destination: 'target_destination',
          strategy: 'strategy',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationSet.new
        data = {}
        data['transformationTool'] = TransformationTool.stub(stub[:transformation_tool]) unless stub[:transformation_tool].nil?
        data['targetDestination'] = stub[:target_destination] unless stub[:target_destination].nil?
        data['strategy'] = stub[:strategy] unless stub[:strategy].nil?
        data
      end
    end

    # Structure Stubber for TransformationTool
    class TransformationTool
      def self.default(visited=[])
        return nil if visited.include?('TransformationTool')
        visited = visited + ['TransformationTool']
        {
          name: 'name',
          description: 'description',
          tranformation_tool_installation_link: 'tranformation_tool_installation_link',
        }
      end

      def self.stub(stub)
        stub ||= Types::TransformationTool.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['tranformationToolInstallationLink'] = stub[:tranformation_tool_installation_link] unless stub[:tranformation_tool_installation_link].nil?
        data
      end
    end

    # Operation Stubber for GetApplicationComponentStrategies
    class GetApplicationComponentStrategies
      def self.default(visited=[])
        {
          application_component_strategies: ApplicationComponentStrategies.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationComponentStrategies'] = ApplicationComponentStrategies.stub(stub[:application_component_strategies]) unless stub[:application_component_strategies].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ApplicationComponentStrategies
    class ApplicationComponentStrategies
      def self.default(visited=[])
        return nil if visited.include?('ApplicationComponentStrategies')
        visited = visited + ['ApplicationComponentStrategies']
        [
          ApplicationComponentStrategy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ApplicationComponentStrategy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApplicationComponentStrategy
    class ApplicationComponentStrategy
      def self.default(visited=[])
        return nil if visited.include?('ApplicationComponentStrategy')
        visited = visited + ['ApplicationComponentStrategy']
        {
          recommendation: RecommendationSet.default(visited),
          status: 'status',
          is_preferred: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationComponentStrategy.new
        data = {}
        data['recommendation'] = RecommendationSet.stub(stub[:recommendation]) unless stub[:recommendation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['isPreferred'] = stub[:is_preferred] unless stub[:is_preferred].nil?
        data
      end
    end

    # Operation Stubber for GetAssessment
    class GetAssessment
      def self.default(visited=[])
        {
          id: 'id',
          data_collection_details: DataCollectionDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['dataCollectionDetails'] = DataCollectionDetails.stub(stub[:data_collection_details]) unless stub[:data_collection_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DataCollectionDetails
    class DataCollectionDetails
      def self.default(visited=[])
        return nil if visited.include?('DataCollectionDetails')
        visited = visited + ['DataCollectionDetails']
        {
          status: 'status',
          servers: 1,
          failed: 1,
          success: 1,
          in_progress: 1,
          start_time: Time.now,
          completion_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataCollectionDetails.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['servers'] = stub[:servers] unless stub[:servers].nil?
        data['failed'] = stub[:failed] unless stub[:failed].nil?
        data['success'] = stub[:success] unless stub[:success].nil?
        data['inProgress'] = stub[:in_progress] unless stub[:in_progress].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['completionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_time]).to_i unless stub[:completion_time].nil?
        data
      end
    end

    # Operation Stubber for GetImportFileTask
    class GetImportFileTask
      def self.default(visited=[])
        {
          id: 'id',
          status: 'status',
          start_time: Time.now,
          input_s3_bucket: 'input_s3_bucket',
          input_s3_key: 'input_s3_key',
          status_report_s3_bucket: 'status_report_s3_bucket',
          status_report_s3_key: 'status_report_s3_key',
          completion_time: Time.now,
          number_of_records_success: 1,
          number_of_records_failed: 1,
          import_name: 'import_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['inputS3Bucket'] = stub[:input_s3_bucket] unless stub[:input_s3_bucket].nil?
        data['inputS3Key'] = stub[:input_s3_key] unless stub[:input_s3_key].nil?
        data['statusReportS3Bucket'] = stub[:status_report_s3_bucket] unless stub[:status_report_s3_bucket].nil?
        data['statusReportS3Key'] = stub[:status_report_s3_key] unless stub[:status_report_s3_key].nil?
        data['completionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_time]).to_i unless stub[:completion_time].nil?
        data['numberOfRecordsSuccess'] = stub[:number_of_records_success] unless stub[:number_of_records_success].nil?
        data['numberOfRecordsFailed'] = stub[:number_of_records_failed] unless stub[:number_of_records_failed].nil?
        data['importName'] = stub[:import_name] unless stub[:import_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetPortfolioPreferences
    class GetPortfolioPreferences
      def self.default(visited=[])
        {
          prioritize_business_goals: PrioritizeBusinessGoals.default(visited),
          application_preferences: ApplicationPreferences.default(visited),
          database_preferences: DatabasePreferences.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['prioritizeBusinessGoals'] = PrioritizeBusinessGoals.stub(stub[:prioritize_business_goals]) unless stub[:prioritize_business_goals].nil?
        data['applicationPreferences'] = ApplicationPreferences.stub(stub[:application_preferences]) unless stub[:application_preferences].nil?
        data['databasePreferences'] = DatabasePreferences.stub(stub[:database_preferences]) unless stub[:database_preferences].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DatabasePreferences
    class DatabasePreferences
      def self.default(visited=[])
        return nil if visited.include?('DatabasePreferences')
        visited = visited + ['DatabasePreferences']
        {
          database_management_preference: 'database_management_preference',
          database_migration_preference: DatabaseMigrationPreference.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatabasePreferences.new
        data = {}
        data['databaseManagementPreference'] = stub[:database_management_preference] unless stub[:database_management_preference].nil?
        data['databaseMigrationPreference'] = DatabaseMigrationPreference.stub(stub[:database_migration_preference]) unless stub[:database_migration_preference].nil?
        data
      end
    end

    # Union Stubber for DatabaseMigrationPreference
    class DatabaseMigrationPreference
      def self.default(visited=[])
        return nil if visited.include?('DatabaseMigrationPreference')
        visited = visited + ['DatabaseMigrationPreference']
        {
          heterogeneous: Heterogeneous.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::DatabaseMigrationPreference::Heterogeneous
          data['heterogeneous'] = (Heterogeneous.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DatabaseMigrationPreference::Homogeneous
          data['homogeneous'] = (Homogeneous.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::DatabaseMigrationPreference::NoPreference
          data['noPreference'] = (NoDatabaseMigrationPreference.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::DatabaseMigrationPreference"
        end

        data
      end
    end

    # Structure Stubber for NoDatabaseMigrationPreference
    class NoDatabaseMigrationPreference
      def self.default(visited=[])
        return nil if visited.include?('NoDatabaseMigrationPreference')
        visited = visited + ['NoDatabaseMigrationPreference']
        {
          target_database_engine: TargetDatabaseEngines.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NoDatabaseMigrationPreference.new
        data = {}
        data['targetDatabaseEngine'] = TargetDatabaseEngines.stub(stub[:target_database_engine]) unless stub[:target_database_engine].nil?
        data
      end
    end

    # List Stubber for TargetDatabaseEngines
    class TargetDatabaseEngines
      def self.default(visited=[])
        return nil if visited.include?('TargetDatabaseEngines')
        visited = visited + ['TargetDatabaseEngines']
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

    # Structure Stubber for Homogeneous
    class Homogeneous
      def self.default(visited=[])
        return nil if visited.include?('Homogeneous')
        visited = visited + ['Homogeneous']
        {
          target_database_engine: HomogeneousTargetDatabaseEngines.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Homogeneous.new
        data = {}
        data['targetDatabaseEngine'] = HomogeneousTargetDatabaseEngines.stub(stub[:target_database_engine]) unless stub[:target_database_engine].nil?
        data
      end
    end

    # List Stubber for HomogeneousTargetDatabaseEngines
    class HomogeneousTargetDatabaseEngines
      def self.default(visited=[])
        return nil if visited.include?('HomogeneousTargetDatabaseEngines')
        visited = visited + ['HomogeneousTargetDatabaseEngines']
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

    # Structure Stubber for Heterogeneous
    class Heterogeneous
      def self.default(visited=[])
        return nil if visited.include?('Heterogeneous')
        visited = visited + ['Heterogeneous']
        {
          target_database_engine: HeterogeneousTargetDatabaseEngines.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Heterogeneous.new
        data = {}
        data['targetDatabaseEngine'] = HeterogeneousTargetDatabaseEngines.stub(stub[:target_database_engine]) unless stub[:target_database_engine].nil?
        data
      end
    end

    # List Stubber for HeterogeneousTargetDatabaseEngines
    class HeterogeneousTargetDatabaseEngines
      def self.default(visited=[])
        return nil if visited.include?('HeterogeneousTargetDatabaseEngines')
        visited = visited + ['HeterogeneousTargetDatabaseEngines']
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

    # Structure Stubber for ApplicationPreferences
    class ApplicationPreferences
      def self.default(visited=[])
        return nil if visited.include?('ApplicationPreferences')
        visited = visited + ['ApplicationPreferences']
        {
          management_preference: ManagementPreference.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationPreferences.new
        data = {}
        data['managementPreference'] = ManagementPreference.stub(stub[:management_preference]) unless stub[:management_preference].nil?
        data
      end
    end

    # Union Stubber for ManagementPreference
    class ManagementPreference
      def self.default(visited=[])
        return nil if visited.include?('ManagementPreference')
        visited = visited + ['ManagementPreference']
        {
          aws_managed_resources: AwsManagedResources.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::ManagementPreference::AwsManagedResources
          data['awsManagedResources'] = (AwsManagedResources.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ManagementPreference::SelfManageResources
          data['selfManageResources'] = (SelfManageResources.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::ManagementPreference::NoPreference
          data['noPreference'] = (NoManagementPreference.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ManagementPreference"
        end

        data
      end
    end

    # Structure Stubber for NoManagementPreference
    class NoManagementPreference
      def self.default(visited=[])
        return nil if visited.include?('NoManagementPreference')
        visited = visited + ['NoManagementPreference']
        {
          target_destination: NoPreferenceTargetDestinations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NoManagementPreference.new
        data = {}
        data['targetDestination'] = NoPreferenceTargetDestinations.stub(stub[:target_destination]) unless stub[:target_destination].nil?
        data
      end
    end

    # List Stubber for NoPreferenceTargetDestinations
    class NoPreferenceTargetDestinations
      def self.default(visited=[])
        return nil if visited.include?('NoPreferenceTargetDestinations')
        visited = visited + ['NoPreferenceTargetDestinations']
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

    # Structure Stubber for SelfManageResources
    class SelfManageResources
      def self.default(visited=[])
        return nil if visited.include?('SelfManageResources')
        visited = visited + ['SelfManageResources']
        {
          target_destination: SelfManageTargetDestinations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SelfManageResources.new
        data = {}
        data['targetDestination'] = SelfManageTargetDestinations.stub(stub[:target_destination]) unless stub[:target_destination].nil?
        data
      end
    end

    # List Stubber for SelfManageTargetDestinations
    class SelfManageTargetDestinations
      def self.default(visited=[])
        return nil if visited.include?('SelfManageTargetDestinations')
        visited = visited + ['SelfManageTargetDestinations']
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

    # Structure Stubber for AwsManagedResources
    class AwsManagedResources
      def self.default(visited=[])
        return nil if visited.include?('AwsManagedResources')
        visited = visited + ['AwsManagedResources']
        {
          target_destination: AwsManagedTargetDestinations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsManagedResources.new
        data = {}
        data['targetDestination'] = AwsManagedTargetDestinations.stub(stub[:target_destination]) unless stub[:target_destination].nil?
        data
      end
    end

    # List Stubber for AwsManagedTargetDestinations
    class AwsManagedTargetDestinations
      def self.default(visited=[])
        return nil if visited.include?('AwsManagedTargetDestinations')
        visited = visited + ['AwsManagedTargetDestinations']
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

    # Structure Stubber for PrioritizeBusinessGoals
    class PrioritizeBusinessGoals
      def self.default(visited=[])
        return nil if visited.include?('PrioritizeBusinessGoals')
        visited = visited + ['PrioritizeBusinessGoals']
        {
          business_goals: BusinessGoals.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PrioritizeBusinessGoals.new
        data = {}
        data['businessGoals'] = BusinessGoals.stub(stub[:business_goals]) unless stub[:business_goals].nil?
        data
      end
    end

    # Structure Stubber for BusinessGoals
    class BusinessGoals
      def self.default(visited=[])
        return nil if visited.include?('BusinessGoals')
        visited = visited + ['BusinessGoals']
        {
          speed_of_migration: 1,
          reduce_operational_overhead_with_managed_services: 1,
          modernize_infrastructure_with_cloud_native_technologies: 1,
          license_cost_reduction: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BusinessGoals.new
        data = {}
        data['speedOfMigration'] = stub[:speed_of_migration] unless stub[:speed_of_migration].nil?
        data['reduceOperationalOverheadWithManagedServices'] = stub[:reduce_operational_overhead_with_managed_services] unless stub[:reduce_operational_overhead_with_managed_services].nil?
        data['modernizeInfrastructureWithCloudNativeTechnologies'] = stub[:modernize_infrastructure_with_cloud_native_technologies] unless stub[:modernize_infrastructure_with_cloud_native_technologies].nil?
        data['licenseCostReduction'] = stub[:license_cost_reduction] unless stub[:license_cost_reduction].nil?
        data
      end
    end

    # Operation Stubber for GetPortfolioSummary
    class GetPortfolioSummary
      def self.default(visited=[])
        {
          assessment_summary: AssessmentSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assessmentSummary'] = AssessmentSummary.stub(stub[:assessment_summary]) unless stub[:assessment_summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AssessmentSummary
    class AssessmentSummary
      def self.default(visited=[])
        return nil if visited.include?('AssessmentSummary')
        visited = visited + ['AssessmentSummary']
        {
          list_server_strategy_summary: ListStrategySummary.default(visited),
          list_application_component_strategy_summary: ListStrategySummary.default(visited),
          list_antipattern_severity_summary: ListAntipatternSeveritySummary.default(visited),
          list_application_component_summary: ListApplicationComponentSummary.default(visited),
          list_server_summary: ListServerSummary.default(visited),
          antipattern_report_s3_object: S3Object.default(visited),
          antipattern_report_status: 'antipattern_report_status',
          antipattern_report_status_message: 'antipattern_report_status_message',
          last_analyzed_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AssessmentSummary.new
        data = {}
        data['listServerStrategySummary'] = ListStrategySummary.stub(stub[:list_server_strategy_summary]) unless stub[:list_server_strategy_summary].nil?
        data['listApplicationComponentStrategySummary'] = ListStrategySummary.stub(stub[:list_application_component_strategy_summary]) unless stub[:list_application_component_strategy_summary].nil?
        data['listAntipatternSeveritySummary'] = ListAntipatternSeveritySummary.stub(stub[:list_antipattern_severity_summary]) unless stub[:list_antipattern_severity_summary].nil?
        data['listApplicationComponentSummary'] = ListApplicationComponentSummary.stub(stub[:list_application_component_summary]) unless stub[:list_application_component_summary].nil?
        data['listServerSummary'] = ListServerSummary.stub(stub[:list_server_summary]) unless stub[:list_server_summary].nil?
        data['antipatternReportS3Object'] = S3Object.stub(stub[:antipattern_report_s3_object]) unless stub[:antipattern_report_s3_object].nil?
        data['antipatternReportStatus'] = stub[:antipattern_report_status] unless stub[:antipattern_report_status].nil?
        data['antipatternReportStatusMessage'] = stub[:antipattern_report_status_message] unless stub[:antipattern_report_status_message].nil?
        data['lastAnalyzedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_analyzed_timestamp]).to_i unless stub[:last_analyzed_timestamp].nil?
        data
      end
    end

    # List Stubber for ListServerSummary
    class ListServerSummary
      def self.default(visited=[])
        return nil if visited.include?('ListServerSummary')
        visited = visited + ['ListServerSummary']
        [
          ServerSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ServerSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServerSummary
    class ServerSummary
      def self.default(visited=[])
        return nil if visited.include?('ServerSummary')
        visited = visited + ['ServerSummary']
        {
          server_os_type: 'server_os_type',
          count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerSummary.new
        data = {}
        data['ServerOsType'] = stub[:server_os_type] unless stub[:server_os_type].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data
      end
    end

    # List Stubber for ListApplicationComponentSummary
    class ListApplicationComponentSummary
      def self.default(visited=[])
        return nil if visited.include?('ListApplicationComponentSummary')
        visited = visited + ['ListApplicationComponentSummary']
        [
          ApplicationComponentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ApplicationComponentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApplicationComponentSummary
    class ApplicationComponentSummary
      def self.default(visited=[])
        return nil if visited.include?('ApplicationComponentSummary')
        visited = visited + ['ApplicationComponentSummary']
        {
          app_type: 'app_type',
          count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationComponentSummary.new
        data = {}
        data['appType'] = stub[:app_type] unless stub[:app_type].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data
      end
    end

    # List Stubber for ListStrategySummary
    class ListStrategySummary
      def self.default(visited=[])
        return nil if visited.include?('ListStrategySummary')
        visited = visited + ['ListStrategySummary']
        [
          StrategySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << StrategySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StrategySummary
    class StrategySummary
      def self.default(visited=[])
        return nil if visited.include?('StrategySummary')
        visited = visited + ['StrategySummary']
        {
          strategy: 'strategy',
          count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::StrategySummary.new
        data = {}
        data['strategy'] = stub[:strategy] unless stub[:strategy].nil?
        data['count'] = stub[:count] unless stub[:count].nil?
        data
      end
    end

    # Operation Stubber for GetRecommendationReportDetails
    class GetRecommendationReportDetails
      def self.default(visited=[])
        {
          id: 'id',
          recommendation_report_details: RecommendationReportDetails.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['recommendationReportDetails'] = RecommendationReportDetails.stub(stub[:recommendation_report_details]) unless stub[:recommendation_report_details].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RecommendationReportDetails
    class RecommendationReportDetails
      def self.default(visited=[])
        return nil if visited.include?('RecommendationReportDetails')
        visited = visited + ['RecommendationReportDetails']
        {
          status: 'status',
          status_message: 'status_message',
          start_time: Time.now,
          completion_time: Time.now,
          s3_bucket: 's3_bucket',
          s3_keys: S3Keys.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationReportDetails.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['completionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_time]).to_i unless stub[:completion_time].nil?
        data['s3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['s3Keys'] = S3Keys.stub(stub[:s3_keys]) unless stub[:s3_keys].nil?
        data
      end
    end

    # List Stubber for S3Keys
    class S3Keys
      def self.default(visited=[])
        return nil if visited.include?('S3Keys')
        visited = visited + ['S3Keys']
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

    # Operation Stubber for GetServerDetails
    class GetServerDetails
      def self.default(visited=[])
        {
          next_token: 'next_token',
          server_detail: ServerDetail.default(visited),
          associated_applications: AssociatedApplications.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['serverDetail'] = ServerDetail.stub(stub[:server_detail]) unless stub[:server_detail].nil?
        data['associatedApplications'] = AssociatedApplications.stub(stub[:associated_applications]) unless stub[:associated_applications].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ServerDetail
    class ServerDetail
      def self.default(visited=[])
        return nil if visited.include?('ServerDetail')
        visited = visited + ['ServerDetail']
        {
          id: 'id',
          name: 'name',
          recommendation_set: RecommendationSet.default(visited),
          data_collection_status: 'data_collection_status',
          status_message: 'status_message',
          list_antipattern_severity_summary: ListAntipatternSeveritySummary.default(visited),
          system_info: SystemInfo.default(visited),
          application_component_strategy_summary: ListStrategySummary.default(visited),
          antipattern_report_s3_object: S3Object.default(visited),
          antipattern_report_status: 'antipattern_report_status',
          antipattern_report_status_message: 'antipattern_report_status_message',
          server_type: 'server_type',
          last_analyzed_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerDetail.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['recommendationSet'] = RecommendationSet.stub(stub[:recommendation_set]) unless stub[:recommendation_set].nil?
        data['dataCollectionStatus'] = stub[:data_collection_status] unless stub[:data_collection_status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['listAntipatternSeveritySummary'] = ListAntipatternSeveritySummary.stub(stub[:list_antipattern_severity_summary]) unless stub[:list_antipattern_severity_summary].nil?
        data['systemInfo'] = SystemInfo.stub(stub[:system_info]) unless stub[:system_info].nil?
        data['applicationComponentStrategySummary'] = ListStrategySummary.stub(stub[:application_component_strategy_summary]) unless stub[:application_component_strategy_summary].nil?
        data['antipatternReportS3Object'] = S3Object.stub(stub[:antipattern_report_s3_object]) unless stub[:antipattern_report_s3_object].nil?
        data['antipatternReportStatus'] = stub[:antipattern_report_status] unless stub[:antipattern_report_status].nil?
        data['antipatternReportStatusMessage'] = stub[:antipattern_report_status_message] unless stub[:antipattern_report_status_message].nil?
        data['serverType'] = stub[:server_type] unless stub[:server_type].nil?
        data['lastAnalyzedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_analyzed_timestamp]).to_i unless stub[:last_analyzed_timestamp].nil?
        data
      end
    end

    # Structure Stubber for SystemInfo
    class SystemInfo
      def self.default(visited=[])
        return nil if visited.include?('SystemInfo')
        visited = visited + ['SystemInfo']
        {
          os_info: OSInfo.default(visited),
          file_system_type: 'file_system_type',
          network_info_list: NetworkInfoList.default(visited),
          cpu_architecture: 'cpu_architecture',
        }
      end

      def self.stub(stub)
        stub ||= Types::SystemInfo.new
        data = {}
        data['osInfo'] = OSInfo.stub(stub[:os_info]) unless stub[:os_info].nil?
        data['fileSystemType'] = stub[:file_system_type] unless stub[:file_system_type].nil?
        data['networkInfoList'] = NetworkInfoList.stub(stub[:network_info_list]) unless stub[:network_info_list].nil?
        data['cpuArchitecture'] = stub[:cpu_architecture] unless stub[:cpu_architecture].nil?
        data
      end
    end

    # List Stubber for NetworkInfoList
    class NetworkInfoList
      def self.default(visited=[])
        return nil if visited.include?('NetworkInfoList')
        visited = visited + ['NetworkInfoList']
        [
          NetworkInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << NetworkInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkInfo
    class NetworkInfo
      def self.default(visited=[])
        return nil if visited.include?('NetworkInfo')
        visited = visited + ['NetworkInfo']
        {
          interface_name: 'interface_name',
          ip_address: 'ip_address',
          mac_address: 'mac_address',
          net_mask: 'net_mask',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkInfo.new
        data = {}
        data['interfaceName'] = stub[:interface_name] unless stub[:interface_name].nil?
        data['ipAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['macAddress'] = stub[:mac_address] unless stub[:mac_address].nil?
        data['netMask'] = stub[:net_mask] unless stub[:net_mask].nil?
        data
      end
    end

    # Structure Stubber for OSInfo
    class OSInfo
      def self.default(visited=[])
        return nil if visited.include?('OSInfo')
        visited = visited + ['OSInfo']
        {
          type: 'type',
          version: 'version',
        }
      end

      def self.stub(stub)
        stub ||= Types::OSInfo.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data
      end
    end

    # Operation Stubber for GetServerStrategies
    class GetServerStrategies
      def self.default(visited=[])
        {
          server_strategies: ServerStrategies.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['serverStrategies'] = ServerStrategies.stub(stub[:server_strategies]) unless stub[:server_strategies].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ServerStrategies
    class ServerStrategies
      def self.default(visited=[])
        return nil if visited.include?('ServerStrategies')
        visited = visited + ['ServerStrategies']
        [
          ServerStrategy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ServerStrategy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServerStrategy
    class ServerStrategy
      def self.default(visited=[])
        return nil if visited.include?('ServerStrategy')
        visited = visited + ['ServerStrategy']
        {
          recommendation: RecommendationSet.default(visited),
          status: 'status',
          number_of_application_components: 1,
          is_preferred: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerStrategy.new
        data = {}
        data['recommendation'] = RecommendationSet.stub(stub[:recommendation]) unless stub[:recommendation].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['numberOfApplicationComponents'] = stub[:number_of_application_components] unless stub[:number_of_application_components].nil?
        data['isPreferred'] = stub[:is_preferred] unless stub[:is_preferred].nil?
        data
      end
    end

    # Operation Stubber for ListApplicationComponents
    class ListApplicationComponents
      def self.default(visited=[])
        {
          application_component_infos: ApplicationComponentDetails.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['applicationComponentInfos'] = ApplicationComponentDetails.stub(stub[:application_component_infos]) unless stub[:application_component_infos].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ApplicationComponentDetails
    class ApplicationComponentDetails
      def self.default(visited=[])
        return nil if visited.include?('ApplicationComponentDetails')
        visited = visited + ['ApplicationComponentDetails']
        [
          ApplicationComponentDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ApplicationComponentDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListCollectors
    class ListCollectors
      def self.default(visited=[])
        {
          collectors: Collectors.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Collectors'] = Collectors.stub(stub[:collectors]) unless stub[:collectors].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Collectors
    class Collectors
      def self.default(visited=[])
        return nil if visited.include?('Collectors')
        visited = visited + ['Collectors']
        [
          Collector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Collector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Collector
    class Collector
      def self.default(visited=[])
        return nil if visited.include?('Collector')
        visited = visited + ['Collector']
        {
          collector_id: 'collector_id',
          ip_address: 'ip_address',
          host_name: 'host_name',
          collector_health: 'collector_health',
          collector_version: 'collector_version',
          registered_time_stamp: 'registered_time_stamp',
          last_activity_time_stamp: 'last_activity_time_stamp',
        }
      end

      def self.stub(stub)
        stub ||= Types::Collector.new
        data = {}
        data['collectorId'] = stub[:collector_id] unless stub[:collector_id].nil?
        data['ipAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['hostName'] = stub[:host_name] unless stub[:host_name].nil?
        data['collectorHealth'] = stub[:collector_health] unless stub[:collector_health].nil?
        data['collectorVersion'] = stub[:collector_version] unless stub[:collector_version].nil?
        data['registeredTimeStamp'] = stub[:registered_time_stamp] unless stub[:registered_time_stamp].nil?
        data['lastActivityTimeStamp'] = stub[:last_activity_time_stamp] unless stub[:last_activity_time_stamp].nil?
        data
      end
    end

    # Operation Stubber for ListImportFileTask
    class ListImportFileTask
      def self.default(visited=[])
        {
          task_infos: ListImportFileTaskInformation.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['taskInfos'] = ListImportFileTaskInformation.stub(stub[:task_infos]) unless stub[:task_infos].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListImportFileTaskInformation
    class ListImportFileTaskInformation
      def self.default(visited=[])
        return nil if visited.include?('ListImportFileTaskInformation')
        visited = visited + ['ListImportFileTaskInformation']
        [
          ImportFileTaskInformation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ImportFileTaskInformation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImportFileTaskInformation
    class ImportFileTaskInformation
      def self.default(visited=[])
        return nil if visited.include?('ImportFileTaskInformation')
        visited = visited + ['ImportFileTaskInformation']
        {
          id: 'id',
          status: 'status',
          start_time: Time.now,
          input_s3_bucket: 'input_s3_bucket',
          input_s3_key: 'input_s3_key',
          status_report_s3_bucket: 'status_report_s3_bucket',
          status_report_s3_key: 'status_report_s3_key',
          completion_time: Time.now,
          number_of_records_success: 1,
          number_of_records_failed: 1,
          import_name: 'import_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportFileTaskInformation.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['inputS3Bucket'] = stub[:input_s3_bucket] unless stub[:input_s3_bucket].nil?
        data['inputS3Key'] = stub[:input_s3_key] unless stub[:input_s3_key].nil?
        data['statusReportS3Bucket'] = stub[:status_report_s3_bucket] unless stub[:status_report_s3_bucket].nil?
        data['statusReportS3Key'] = stub[:status_report_s3_key] unless stub[:status_report_s3_key].nil?
        data['completionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_time]).to_i unless stub[:completion_time].nil?
        data['numberOfRecordsSuccess'] = stub[:number_of_records_success] unless stub[:number_of_records_success].nil?
        data['numberOfRecordsFailed'] = stub[:number_of_records_failed] unless stub[:number_of_records_failed].nil?
        data['importName'] = stub[:import_name] unless stub[:import_name].nil?
        data
      end
    end

    # Operation Stubber for ListServers
    class ListServers
      def self.default(visited=[])
        {
          server_infos: ServerDetails.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['serverInfos'] = ServerDetails.stub(stub[:server_infos]) unless stub[:server_infos].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ServerDetails
    class ServerDetails
      def self.default(visited=[])
        return nil if visited.include?('ServerDetails')
        visited = visited + ['ServerDetails']
        [
          ServerDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ServerDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for PutPortfolioPreferences
    class PutPortfolioPreferences
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartAssessment
    class StartAssessment
      def self.default(visited=[])
        {
          assessment_id: 'assessment_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assessmentId'] = stub[:assessment_id] unless stub[:assessment_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartImportFileTask
    class StartImportFileTask
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartRecommendationReportGeneration
    class StartRecommendationReportGeneration
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopAssessment
    class StopAssessment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApplicationComponentConfig
    class UpdateApplicationComponentConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateServerConfig
    class UpdateServerConfig
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
