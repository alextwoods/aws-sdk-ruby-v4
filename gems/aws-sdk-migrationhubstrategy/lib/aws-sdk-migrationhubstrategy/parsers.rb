# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MigrationHubStrategy
  module Parsers

    # Operation Parser for GetApplicationComponentDetails
    class GetApplicationComponentDetails
      def self.parse(http_resp)
        data = Types::GetApplicationComponentDetailsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_component_detail = (Parsers::ApplicationComponentDetail.parse(map['applicationComponentDetail']) unless map['applicationComponentDetail'].nil?)
        data.associated_applications = (Parsers::AssociatedApplications.parse(map['associatedApplications']) unless map['associatedApplications'].nil?)
        data.more_application_resource = map['moreApplicationResource']
        data.associated_server_ids = (Parsers::AssociatedServerIDs.parse(map['associatedServerIds']) unless map['associatedServerIds'].nil?)
        data
      end
    end

    class AssociatedServerIDs
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AssociatedApplications
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssociatedApplication.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssociatedApplication
      def self.parse(map)
        data = Types::AssociatedApplication.new
        data.name = map['name']
        data.id = map['id']
        return data
      end
    end

    class ApplicationComponentDetail
      def self.parse(map)
        data = Types::ApplicationComponentDetail.new
        data.id = map['id']
        data.name = map['name']
        data.recommendation_set = (Parsers::RecommendationSet.parse(map['recommendationSet']) unless map['recommendationSet'].nil?)
        data.analysis_status = map['analysisStatus']
        data.status_message = map['statusMessage']
        data.list_antipattern_severity_summary = (Parsers::ListAntipatternSeveritySummary.parse(map['listAntipatternSeveritySummary']) unless map['listAntipatternSeveritySummary'].nil?)
        data.database_config_detail = (Parsers::DatabaseConfigDetail.parse(map['databaseConfigDetail']) unless map['databaseConfigDetail'].nil?)
        data.source_code_repositories = (Parsers::SourceCodeRepositories.parse(map['sourceCodeRepositories']) unless map['sourceCodeRepositories'].nil?)
        data.app_type = map['appType']
        data.resource_sub_type = map['resourceSubType']
        data.inclusion_status = map['inclusionStatus']
        data.antipattern_report_s3_object = (Parsers::S3Object.parse(map['antipatternReportS3Object']) unless map['antipatternReportS3Object'].nil?)
        data.antipattern_report_status = map['antipatternReportStatus']
        data.antipattern_report_status_message = map['antipatternReportStatusMessage']
        data.os_version = map['osVersion']
        data.os_driver = map['osDriver']
        data.last_analyzed_timestamp = Time.at(map['lastAnalyzedTimestamp'].to_i) if map['lastAnalyzedTimestamp']
        data.associated_server_id = map['associatedServerId']
        data.more_server_association_exists = map['moreServerAssociationExists']
        return data
      end
    end

    class S3Object
      def self.parse(map)
        data = Types::S3Object.new
        data.s3_bucket = map['s3Bucket']
        data.s3key = map['s3key']
        return data
      end
    end

    class SourceCodeRepositories
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SourceCodeRepository.parse(value) unless value.nil?
        end
        data
      end
    end

    class SourceCodeRepository
      def self.parse(map)
        data = Types::SourceCodeRepository.new
        data.repository = map['repository']
        data.branch = map['branch']
        data.version_control_type = map['versionControlType']
        return data
      end
    end

    class DatabaseConfigDetail
      def self.parse(map)
        data = Types::DatabaseConfigDetail.new
        data.secret_name = map['secretName']
        return data
      end
    end

    class ListAntipatternSeveritySummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AntipatternSeveritySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AntipatternSeveritySummary
      def self.parse(map)
        data = Types::AntipatternSeveritySummary.new
        data.severity = map['severity']
        data.count = map['count']
        return data
      end
    end

    class RecommendationSet
      def self.parse(map)
        data = Types::RecommendationSet.new
        data.transformation_tool = (Parsers::TransformationTool.parse(map['transformationTool']) unless map['transformationTool'].nil?)
        data.target_destination = map['targetDestination']
        data.strategy = map['strategy']
        return data
      end
    end

    class TransformationTool
      def self.parse(map)
        data = Types::TransformationTool.new
        data.name = map['name']
        data.description = map['description']
        data.tranformation_tool_installation_link = map['tranformationToolInstallationLink']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetApplicationComponentStrategies
    class GetApplicationComponentStrategies
      def self.parse(http_resp)
        data = Types::GetApplicationComponentStrategiesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_component_strategies = (Parsers::ApplicationComponentStrategies.parse(map['applicationComponentStrategies']) unless map['applicationComponentStrategies'].nil?)
        data
      end
    end

    class ApplicationComponentStrategies
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ApplicationComponentStrategy.parse(value) unless value.nil?
        end
        data
      end
    end

    class ApplicationComponentStrategy
      def self.parse(map)
        data = Types::ApplicationComponentStrategy.new
        data.recommendation = (Parsers::RecommendationSet.parse(map['recommendation']) unless map['recommendation'].nil?)
        data.status = map['status']
        data.is_preferred = map['isPreferred']
        return data
      end
    end

    # Operation Parser for GetAssessment
    class GetAssessment
      def self.parse(http_resp)
        data = Types::GetAssessmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.data_collection_details = (Parsers::DataCollectionDetails.parse(map['dataCollectionDetails']) unless map['dataCollectionDetails'].nil?)
        data
      end
    end

    class DataCollectionDetails
      def self.parse(map)
        data = Types::DataCollectionDetails.new
        data.status = map['status']
        data.servers = map['servers']
        data.failed = map['failed']
        data.success = map['success']
        data.in_progress = map['inProgress']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.completion_time = Time.at(map['completionTime'].to_i) if map['completionTime']
        return data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetImportFileTask
    class GetImportFileTask
      def self.parse(http_resp)
        data = Types::GetImportFileTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.status = map['status']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.input_s3_bucket = map['inputS3Bucket']
        data.input_s3_key = map['inputS3Key']
        data.status_report_s3_bucket = map['statusReportS3Bucket']
        data.status_report_s3_key = map['statusReportS3Key']
        data.completion_time = Time.at(map['completionTime'].to_i) if map['completionTime']
        data.number_of_records_success = map['numberOfRecordsSuccess']
        data.number_of_records_failed = map['numberOfRecordsFailed']
        data.import_name = map['importName']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetPortfolioPreferences
    class GetPortfolioPreferences
      def self.parse(http_resp)
        data = Types::GetPortfolioPreferencesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.prioritize_business_goals = (Parsers::PrioritizeBusinessGoals.parse(map['prioritizeBusinessGoals']) unless map['prioritizeBusinessGoals'].nil?)
        data.application_preferences = (Parsers::ApplicationPreferences.parse(map['applicationPreferences']) unless map['applicationPreferences'].nil?)
        data.database_preferences = (Parsers::DatabasePreferences.parse(map['databasePreferences']) unless map['databasePreferences'].nil?)
        data
      end
    end

    class DatabasePreferences
      def self.parse(map)
        data = Types::DatabasePreferences.new
        data.database_management_preference = map['databaseManagementPreference']
        data.database_migration_preference = (Parsers::DatabaseMigrationPreference.parse(map['databaseMigrationPreference']) unless map['databaseMigrationPreference'].nil?)
        return data
      end
    end

    class DatabaseMigrationPreference
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'heterogeneous'
          value = (Parsers::Heterogeneous.parse(value) unless value.nil?)
          Types::DatabaseMigrationPreference::Heterogeneous.new(value) if value
        when 'homogeneous'
          value = (Parsers::Homogeneous.parse(value) unless value.nil?)
          Types::DatabaseMigrationPreference::Homogeneous.new(value) if value
        when 'noPreference'
          value = (Parsers::NoDatabaseMigrationPreference.parse(value) unless value.nil?)
          Types::DatabaseMigrationPreference::NoPreference.new(value) if value
        else
          Types::DatabaseMigrationPreference::Unknown.new({name: key, value: value})
        end
      end
    end

    class NoDatabaseMigrationPreference
      def self.parse(map)
        data = Types::NoDatabaseMigrationPreference.new
        data.target_database_engine = (Parsers::TargetDatabaseEngines.parse(map['targetDatabaseEngine']) unless map['targetDatabaseEngine'].nil?)
        return data
      end
    end

    class TargetDatabaseEngines
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Homogeneous
      def self.parse(map)
        data = Types::Homogeneous.new
        data.target_database_engine = (Parsers::HomogeneousTargetDatabaseEngines.parse(map['targetDatabaseEngine']) unless map['targetDatabaseEngine'].nil?)
        return data
      end
    end

    class HomogeneousTargetDatabaseEngines
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Heterogeneous
      def self.parse(map)
        data = Types::Heterogeneous.new
        data.target_database_engine = (Parsers::HeterogeneousTargetDatabaseEngines.parse(map['targetDatabaseEngine']) unless map['targetDatabaseEngine'].nil?)
        return data
      end
    end

    class HeterogeneousTargetDatabaseEngines
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ApplicationPreferences
      def self.parse(map)
        data = Types::ApplicationPreferences.new
        data.management_preference = (Parsers::ManagementPreference.parse(map['managementPreference']) unless map['managementPreference'].nil?)
        return data
      end
    end

    class ManagementPreference
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'awsManagedResources'
          value = (Parsers::AwsManagedResources.parse(value) unless value.nil?)
          Types::ManagementPreference::AwsManagedResources.new(value) if value
        when 'selfManageResources'
          value = (Parsers::SelfManageResources.parse(value) unless value.nil?)
          Types::ManagementPreference::SelfManageResources.new(value) if value
        when 'noPreference'
          value = (Parsers::NoManagementPreference.parse(value) unless value.nil?)
          Types::ManagementPreference::NoPreference.new(value) if value
        else
          Types::ManagementPreference::Unknown.new({name: key, value: value})
        end
      end
    end

    class NoManagementPreference
      def self.parse(map)
        data = Types::NoManagementPreference.new
        data.target_destination = (Parsers::NoPreferenceTargetDestinations.parse(map['targetDestination']) unless map['targetDestination'].nil?)
        return data
      end
    end

    class NoPreferenceTargetDestinations
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SelfManageResources
      def self.parse(map)
        data = Types::SelfManageResources.new
        data.target_destination = (Parsers::SelfManageTargetDestinations.parse(map['targetDestination']) unless map['targetDestination'].nil?)
        return data
      end
    end

    class SelfManageTargetDestinations
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AwsManagedResources
      def self.parse(map)
        data = Types::AwsManagedResources.new
        data.target_destination = (Parsers::AwsManagedTargetDestinations.parse(map['targetDestination']) unless map['targetDestination'].nil?)
        return data
      end
    end

    class AwsManagedTargetDestinations
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class PrioritizeBusinessGoals
      def self.parse(map)
        data = Types::PrioritizeBusinessGoals.new
        data.business_goals = (Parsers::BusinessGoals.parse(map['businessGoals']) unless map['businessGoals'].nil?)
        return data
      end
    end

    class BusinessGoals
      def self.parse(map)
        data = Types::BusinessGoals.new
        data.speed_of_migration = map['speedOfMigration']
        data.reduce_operational_overhead_with_managed_services = map['reduceOperationalOverheadWithManagedServices']
        data.modernize_infrastructure_with_cloud_native_technologies = map['modernizeInfrastructureWithCloudNativeTechnologies']
        data.license_cost_reduction = map['licenseCostReduction']
        return data
      end
    end

    # Operation Parser for GetPortfolioSummary
    class GetPortfolioSummary
      def self.parse(http_resp)
        data = Types::GetPortfolioSummaryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assessment_summary = (Parsers::AssessmentSummary.parse(map['assessmentSummary']) unless map['assessmentSummary'].nil?)
        data
      end
    end

    class AssessmentSummary
      def self.parse(map)
        data = Types::AssessmentSummary.new
        data.list_server_strategy_summary = (Parsers::ListStrategySummary.parse(map['listServerStrategySummary']) unless map['listServerStrategySummary'].nil?)
        data.list_application_component_strategy_summary = (Parsers::ListStrategySummary.parse(map['listApplicationComponentStrategySummary']) unless map['listApplicationComponentStrategySummary'].nil?)
        data.list_antipattern_severity_summary = (Parsers::ListAntipatternSeveritySummary.parse(map['listAntipatternSeveritySummary']) unless map['listAntipatternSeveritySummary'].nil?)
        data.list_application_component_summary = (Parsers::ListApplicationComponentSummary.parse(map['listApplicationComponentSummary']) unless map['listApplicationComponentSummary'].nil?)
        data.list_server_summary = (Parsers::ListServerSummary.parse(map['listServerSummary']) unless map['listServerSummary'].nil?)
        data.antipattern_report_s3_object = (Parsers::S3Object.parse(map['antipatternReportS3Object']) unless map['antipatternReportS3Object'].nil?)
        data.antipattern_report_status = map['antipatternReportStatus']
        data.antipattern_report_status_message = map['antipatternReportStatusMessage']
        data.last_analyzed_timestamp = Time.at(map['lastAnalyzedTimestamp'].to_i) if map['lastAnalyzedTimestamp']
        return data
      end
    end

    class ListServerSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ServerSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ServerSummary
      def self.parse(map)
        data = Types::ServerSummary.new
        data.server_os_type = map['ServerOsType']
        data.count = map['count']
        return data
      end
    end

    class ListApplicationComponentSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ApplicationComponentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ApplicationComponentSummary
      def self.parse(map)
        data = Types::ApplicationComponentSummary.new
        data.app_type = map['appType']
        data.count = map['count']
        return data
      end
    end

    class ListStrategySummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StrategySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class StrategySummary
      def self.parse(map)
        data = Types::StrategySummary.new
        data.strategy = map['strategy']
        data.count = map['count']
        return data
      end
    end

    # Operation Parser for GetRecommendationReportDetails
    class GetRecommendationReportDetails
      def self.parse(http_resp)
        data = Types::GetRecommendationReportDetailsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.recommendation_report_details = (Parsers::RecommendationReportDetails.parse(map['recommendationReportDetails']) unless map['recommendationReportDetails'].nil?)
        data
      end
    end

    class RecommendationReportDetails
      def self.parse(map)
        data = Types::RecommendationReportDetails.new
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.completion_time = Time.at(map['completionTime'].to_i) if map['completionTime']
        data.s3_bucket = map['s3Bucket']
        data.s3_keys = (Parsers::S3Keys.parse(map['s3Keys']) unless map['s3Keys'].nil?)
        return data
      end
    end

    class S3Keys
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetServerDetails
    class GetServerDetails
      def self.parse(http_resp)
        data = Types::GetServerDetailsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.server_detail = (Parsers::ServerDetail.parse(map['serverDetail']) unless map['serverDetail'].nil?)
        data.associated_applications = (Parsers::AssociatedApplications.parse(map['associatedApplications']) unless map['associatedApplications'].nil?)
        data
      end
    end

    class ServerDetail
      def self.parse(map)
        data = Types::ServerDetail.new
        data.id = map['id']
        data.name = map['name']
        data.recommendation_set = (Parsers::RecommendationSet.parse(map['recommendationSet']) unless map['recommendationSet'].nil?)
        data.data_collection_status = map['dataCollectionStatus']
        data.status_message = map['statusMessage']
        data.list_antipattern_severity_summary = (Parsers::ListAntipatternSeveritySummary.parse(map['listAntipatternSeveritySummary']) unless map['listAntipatternSeveritySummary'].nil?)
        data.system_info = (Parsers::SystemInfo.parse(map['systemInfo']) unless map['systemInfo'].nil?)
        data.application_component_strategy_summary = (Parsers::ListStrategySummary.parse(map['applicationComponentStrategySummary']) unless map['applicationComponentStrategySummary'].nil?)
        data.antipattern_report_s3_object = (Parsers::S3Object.parse(map['antipatternReportS3Object']) unless map['antipatternReportS3Object'].nil?)
        data.antipattern_report_status = map['antipatternReportStatus']
        data.antipattern_report_status_message = map['antipatternReportStatusMessage']
        data.server_type = map['serverType']
        data.last_analyzed_timestamp = Time.at(map['lastAnalyzedTimestamp'].to_i) if map['lastAnalyzedTimestamp']
        return data
      end
    end

    class SystemInfo
      def self.parse(map)
        data = Types::SystemInfo.new
        data.os_info = (Parsers::OSInfo.parse(map['osInfo']) unless map['osInfo'].nil?)
        data.file_system_type = map['fileSystemType']
        data.network_info_list = (Parsers::NetworkInfoList.parse(map['networkInfoList']) unless map['networkInfoList'].nil?)
        data.cpu_architecture = map['cpuArchitecture']
        return data
      end
    end

    class NetworkInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NetworkInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class NetworkInfo
      def self.parse(map)
        data = Types::NetworkInfo.new
        data.interface_name = map['interfaceName']
        data.ip_address = map['ipAddress']
        data.mac_address = map['macAddress']
        data.net_mask = map['netMask']
        return data
      end
    end

    class OSInfo
      def self.parse(map)
        data = Types::OSInfo.new
        data.type = map['type']
        data.version = map['version']
        return data
      end
    end

    # Operation Parser for GetServerStrategies
    class GetServerStrategies
      def self.parse(http_resp)
        data = Types::GetServerStrategiesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.server_strategies = (Parsers::ServerStrategies.parse(map['serverStrategies']) unless map['serverStrategies'].nil?)
        data
      end
    end

    class ServerStrategies
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ServerStrategy.parse(value) unless value.nil?
        end
        data
      end
    end

    class ServerStrategy
      def self.parse(map)
        data = Types::ServerStrategy.new
        data.recommendation = (Parsers::RecommendationSet.parse(map['recommendation']) unless map['recommendation'].nil?)
        data.status = map['status']
        data.number_of_application_components = map['numberOfApplicationComponents']
        data.is_preferred = map['isPreferred']
        return data
      end
    end

    # Operation Parser for ListApplicationComponents
    class ListApplicationComponents
      def self.parse(http_resp)
        data = Types::ListApplicationComponentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_component_infos = (Parsers::ApplicationComponentDetails.parse(map['applicationComponentInfos']) unless map['applicationComponentInfos'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ApplicationComponentDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ApplicationComponentDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    # Error Parser for ServiceLinkedRoleLockClientException
    class ServiceLinkedRoleLockClientException
      def self.parse(http_resp)
        data = Types::ServiceLinkedRoleLockClientException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for ListCollectors
    class ListCollectors
      def self.parse(http_resp)
        data = Types::ListCollectorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.collectors = (Parsers::Collectors.parse(map['Collectors']) unless map['Collectors'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Collectors
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Collector.parse(value) unless value.nil?
        end
        data
      end
    end

    class Collector
      def self.parse(map)
        data = Types::Collector.new
        data.collector_id = map['collectorId']
        data.ip_address = map['ipAddress']
        data.host_name = map['hostName']
        data.collector_health = map['collectorHealth']
        data.collector_version = map['collectorVersion']
        data.registered_time_stamp = map['registeredTimeStamp']
        data.last_activity_time_stamp = map['lastActivityTimeStamp']
        return data
      end
    end

    # Operation Parser for ListImportFileTask
    class ListImportFileTask
      def self.parse(http_resp)
        data = Types::ListImportFileTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.task_infos = (Parsers::ListImportFileTaskInformation.parse(map['taskInfos']) unless map['taskInfos'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ListImportFileTaskInformation
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ImportFileTaskInformation.parse(value) unless value.nil?
        end
        data
      end
    end

    class ImportFileTaskInformation
      def self.parse(map)
        data = Types::ImportFileTaskInformation.new
        data.id = map['id']
        data.status = map['status']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.input_s3_bucket = map['inputS3Bucket']
        data.input_s3_key = map['inputS3Key']
        data.status_report_s3_bucket = map['statusReportS3Bucket']
        data.status_report_s3_key = map['statusReportS3Key']
        data.completion_time = Time.at(map['completionTime'].to_i) if map['completionTime']
        data.number_of_records_success = map['numberOfRecordsSuccess']
        data.number_of_records_failed = map['numberOfRecordsFailed']
        data.import_name = map['importName']
        return data
      end
    end

    # Operation Parser for ListServers
    class ListServers
      def self.parse(http_resp)
        data = Types::ListServersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.server_infos = (Parsers::ServerDetails.parse(map['serverInfos']) unless map['serverInfos'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ServerDetails
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ServerDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for PutPortfolioPreferences
    class PutPortfolioPreferences
      def self.parse(http_resp)
        data = Types::PutPortfolioPreferencesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for StartAssessment
    class StartAssessment
      def self.parse(http_resp)
        data = Types::StartAssessmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assessment_id = map['assessmentId']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for StartImportFileTask
    class StartImportFileTask
      def self.parse(http_resp)
        data = Types::StartImportFileTaskOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data
      end
    end

    # Operation Parser for StartRecommendationReportGeneration
    class StartRecommendationReportGeneration
      def self.parse(http_resp)
        data = Types::StartRecommendationReportGenerationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data
      end
    end

    # Operation Parser for StopAssessment
    class StopAssessment
      def self.parse(http_resp)
        data = Types::StopAssessmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateApplicationComponentConfig
    class UpdateApplicationComponentConfig
      def self.parse(http_resp)
        data = Types::UpdateApplicationComponentConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateServerConfig
    class UpdateServerConfig
      def self.parse(http_resp)
        data = Types::UpdateServerConfigOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
