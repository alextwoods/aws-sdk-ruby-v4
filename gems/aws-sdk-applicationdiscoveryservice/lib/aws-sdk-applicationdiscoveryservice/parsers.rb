# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApplicationDiscoveryService
  module Parsers

    # Operation Parser for AssociateConfigurationItemsToApplication
    class AssociateConfigurationItemsToApplication
      def self.parse(http_resp)
        data = Types::AssociateConfigurationItemsToApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidParameterValueException
    class InvalidParameterValueException
      def self.parse(http_resp)
        data = Types::InvalidParameterValueException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for AuthorizationErrorException
    class AuthorizationErrorException
      def self.parse(http_resp)
        data = Types::AuthorizationErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ServerInternalErrorException
    class ServerInternalErrorException
      def self.parse(http_resp)
        data = Types::ServerInternalErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for HomeRegionNotSetException
    class HomeRegionNotSetException
      def self.parse(http_resp)
        data = Types::HomeRegionNotSetException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for BatchDeleteImportData
    class BatchDeleteImportData
      def self.parse(http_resp)
        data = Types::BatchDeleteImportDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.errors = (BatchDeleteImportDataErrorList.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class BatchDeleteImportDataErrorList
      def self.parse(list)
        list.map do |value|
          BatchDeleteImportDataError.parse(value) unless value.nil?
        end
      end
    end

    class BatchDeleteImportDataError
      def self.parse(map)
        data = Types::BatchDeleteImportDataError.new
        data.import_task_id = map['importTaskId']
        data.error_code = map['errorCode']
        data.error_description = map['errorDescription']
        return data
      end
    end

    # Operation Parser for CreateApplication
    class CreateApplication
      def self.parse(http_resp)
        data = Types::CreateApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_id = map['configurationId']
        data
      end
    end

    # Operation Parser for CreateTags
    class CreateTags
      def self.parse(http_resp)
        data = Types::CreateTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
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

    # Operation Parser for DeleteApplications
    class DeleteApplications
      def self.parse(http_resp)
        data = Types::DeleteApplicationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteTags
    class DeleteTags
      def self.parse(http_resp)
        data = Types::DeleteTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeAgents
    class DescribeAgents
      def self.parse(http_resp)
        data = Types::DescribeAgentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.agents_info = (AgentsInfo.parse(map['agentsInfo']) unless map['agentsInfo'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AgentsInfo
      def self.parse(list)
        list.map do |value|
          AgentInfo.parse(value) unless value.nil?
        end
      end
    end

    class AgentInfo
      def self.parse(map)
        data = Types::AgentInfo.new
        data.agent_id = map['agentId']
        data.host_name = map['hostName']
        data.agent_network_info_list = (AgentNetworkInfoList.parse(map['agentNetworkInfoList']) unless map['agentNetworkInfoList'].nil?)
        data.connector_id = map['connectorId']
        data.version = map['version']
        data.health = map['health']
        data.last_health_ping_time = map['lastHealthPingTime']
        data.collection_status = map['collectionStatus']
        data.agent_type = map['agentType']
        data.registered_time = map['registeredTime']
        return data
      end
    end

    class AgentNetworkInfoList
      def self.parse(list)
        list.map do |value|
          AgentNetworkInfo.parse(value) unless value.nil?
        end
      end
    end

    class AgentNetworkInfo
      def self.parse(map)
        data = Types::AgentNetworkInfo.new
        data.ip_address = map['ipAddress']
        data.mac_address = map['macAddress']
        return data
      end
    end

    # Operation Parser for DescribeConfigurations
    class DescribeConfigurations
      def self.parse(http_resp)
        data = Types::DescribeConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configurations = (DescribeConfigurationsAttributes.parse(map['configurations']) unless map['configurations'].nil?)
        data
      end
    end

    class DescribeConfigurationsAttributes
      def self.parse(list)
        list.map do |value|
          DescribeConfigurationsAttribute.parse(value) unless value.nil?
        end
      end
    end

    class DescribeConfigurationsAttribute
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeContinuousExports
    class DescribeContinuousExports
      def self.parse(http_resp)
        data = Types::DescribeContinuousExportsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.descriptions = (ContinuousExportDescriptions.parse(map['descriptions']) unless map['descriptions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ContinuousExportDescriptions
      def self.parse(list)
        list.map do |value|
          ContinuousExportDescription.parse(value) unless value.nil?
        end
      end
    end

    class ContinuousExportDescription
      def self.parse(map)
        data = Types::ContinuousExportDescription.new
        data.export_id = map['exportId']
        data.status = map['status']
        data.status_detail = map['statusDetail']
        data.s3_bucket = map['s3Bucket']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.stop_time = Time.at(map['stopTime'].to_i) if map['stopTime']
        data.data_source = map['dataSource']
        data.schema_storage_config = (SchemaStorageConfig.parse(map['schemaStorageConfig']) unless map['schemaStorageConfig'].nil?)
        return data
      end
    end

    class SchemaStorageConfig
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for OperationNotPermittedException
    class OperationNotPermittedException
      def self.parse(http_resp)
        data = Types::OperationNotPermittedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeExportConfigurations
    class DescribeExportConfigurations
      def self.parse(http_resp)
        data = Types::DescribeExportConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.exports_info = (ExportsInfo.parse(map['exportsInfo']) unless map['exportsInfo'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ExportsInfo
      def self.parse(list)
        list.map do |value|
          ExportInfo.parse(value) unless value.nil?
        end
      end
    end

    class ExportInfo
      def self.parse(map)
        data = Types::ExportInfo.new
        data.export_id = map['exportId']
        data.export_status = map['exportStatus']
        data.status_message = map['statusMessage']
        data.configurations_download_url = map['configurationsDownloadUrl']
        data.export_request_time = Time.at(map['exportRequestTime'].to_i) if map['exportRequestTime']
        data.is_truncated = map['isTruncated']
        data.requested_start_time = Time.at(map['requestedStartTime'].to_i) if map['requestedStartTime']
        data.requested_end_time = Time.at(map['requestedEndTime'].to_i) if map['requestedEndTime']
        return data
      end
    end

    # Operation Parser for DescribeExportTasks
    class DescribeExportTasks
      def self.parse(http_resp)
        data = Types::DescribeExportTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.exports_info = (ExportsInfo.parse(map['exportsInfo']) unless map['exportsInfo'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for DescribeImportTasks
    class DescribeImportTasks
      def self.parse(http_resp)
        data = Types::DescribeImportTasksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.tasks = (ImportTaskList.parse(map['tasks']) unless map['tasks'].nil?)
        data
      end
    end

    class ImportTaskList
      def self.parse(list)
        list.map do |value|
          ImportTask.parse(value) unless value.nil?
        end
      end
    end

    class ImportTask
      def self.parse(map)
        data = Types::ImportTask.new
        data.import_task_id = map['importTaskId']
        data.client_request_token = map['clientRequestToken']
        data.name = map['name']
        data.import_url = map['importUrl']
        data.status = map['status']
        data.import_request_time = Time.at(map['importRequestTime'].to_i) if map['importRequestTime']
        data.import_completion_time = Time.at(map['importCompletionTime'].to_i) if map['importCompletionTime']
        data.import_deleted_time = Time.at(map['importDeletedTime'].to_i) if map['importDeletedTime']
        data.server_import_success = map['serverImportSuccess']
        data.server_import_failure = map['serverImportFailure']
        data.application_import_success = map['applicationImportSuccess']
        data.application_import_failure = map['applicationImportFailure']
        data.errors_and_failed_entries_zip = map['errorsAndFailedEntriesZip']
        return data
      end
    end

    # Operation Parser for DescribeTags
    class DescribeTags
      def self.parse(http_resp)
        data = Types::DescribeTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (ConfigurationTagSet.parse(map['tags']) unless map['tags'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ConfigurationTagSet
      def self.parse(list)
        list.map do |value|
          ConfigurationTag.parse(value) unless value.nil?
        end
      end
    end

    class ConfigurationTag
      def self.parse(map)
        data = Types::ConfigurationTag.new
        data.configuration_type = map['configurationType']
        data.configuration_id = map['configurationId']
        data.key = map['key']
        data.value = map['value']
        data.time_of_creation = Time.at(map['timeOfCreation'].to_i) if map['timeOfCreation']
        return data
      end
    end

    # Operation Parser for DisassociateConfigurationItemsFromApplication
    class DisassociateConfigurationItemsFromApplication
      def self.parse(http_resp)
        data = Types::DisassociateConfigurationItemsFromApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ExportConfigurations
    class ExportConfigurations
      def self.parse(http_resp)
        data = Types::ExportConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.export_id = map['exportId']
        data
      end
    end

    # Operation Parser for GetDiscoverySummary
    class GetDiscoverySummary
      def self.parse(http_resp)
        data = Types::GetDiscoverySummaryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.servers = map['servers']
        data.applications = map['applications']
        data.servers_mapped_to_applications = map['serversMappedToApplications']
        data.servers_mappedto_tags = map['serversMappedtoTags']
        data.agent_summary = (CustomerAgentInfo.parse(map['agentSummary']) unless map['agentSummary'].nil?)
        data.connector_summary = (CustomerConnectorInfo.parse(map['connectorSummary']) unless map['connectorSummary'].nil?)
        data.me_collector_summary = (CustomerMeCollectorInfo.parse(map['meCollectorSummary']) unless map['meCollectorSummary'].nil?)
        data
      end
    end

    class CustomerMeCollectorInfo
      def self.parse(map)
        data = Types::CustomerMeCollectorInfo.new
        data.active_me_collectors = map['activeMeCollectors']
        data.healthy_me_collectors = map['healthyMeCollectors']
        data.deny_listed_me_collectors = map['denyListedMeCollectors']
        data.shutdown_me_collectors = map['shutdownMeCollectors']
        data.unhealthy_me_collectors = map['unhealthyMeCollectors']
        data.total_me_collectors = map['totalMeCollectors']
        data.unknown_me_collectors = map['unknownMeCollectors']
        return data
      end
    end

    class CustomerConnectorInfo
      def self.parse(map)
        data = Types::CustomerConnectorInfo.new
        data.active_connectors = map['activeConnectors']
        data.healthy_connectors = map['healthyConnectors']
        data.black_listed_connectors = map['blackListedConnectors']
        data.shutdown_connectors = map['shutdownConnectors']
        data.unhealthy_connectors = map['unhealthyConnectors']
        data.total_connectors = map['totalConnectors']
        data.unknown_connectors = map['unknownConnectors']
        return data
      end
    end

    class CustomerAgentInfo
      def self.parse(map)
        data = Types::CustomerAgentInfo.new
        data.active_agents = map['activeAgents']
        data.healthy_agents = map['healthyAgents']
        data.black_listed_agents = map['blackListedAgents']
        data.shutdown_agents = map['shutdownAgents']
        data.unhealthy_agents = map['unhealthyAgents']
        data.total_agents = map['totalAgents']
        data.unknown_agents = map['unknownAgents']
        return data
      end
    end

    # Operation Parser for ListConfigurations
    class ListConfigurations
      def self.parse(http_resp)
        data = Types::ListConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configurations = (Configurations.parse(map['configurations']) unless map['configurations'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Configurations
      def self.parse(list)
        list.map do |value|
          Configuration.parse(value) unless value.nil?
        end
      end
    end

    class Configuration
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListServerNeighbors
    class ListServerNeighbors
      def self.parse(http_resp)
        data = Types::ListServerNeighborsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.neighbors = (NeighborDetailsList.parse(map['neighbors']) unless map['neighbors'].nil?)
        data.next_token = map['nextToken']
        data.known_dependency_count = map['knownDependencyCount']
        data
      end
    end

    class NeighborDetailsList
      def self.parse(list)
        list.map do |value|
          NeighborConnectionDetail.parse(value) unless value.nil?
        end
      end
    end

    class NeighborConnectionDetail
      def self.parse(map)
        data = Types::NeighborConnectionDetail.new
        data.source_server_id = map['sourceServerId']
        data.destination_server_id = map['destinationServerId']
        data.destination_port = map['destinationPort']
        data.transport_protocol = map['transportProtocol']
        data.connections_count = map['connectionsCount']
        return data
      end
    end

    # Operation Parser for StartContinuousExport
    class StartContinuousExport
      def self.parse(http_resp)
        data = Types::StartContinuousExportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.export_id = map['exportId']
        data.s3_bucket = map['s3Bucket']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.data_source = map['dataSource']
        data.schema_storage_config = (SchemaStorageConfig.parse(map['schemaStorageConfig']) unless map['schemaStorageConfig'].nil?)
        data
      end
    end

    # Error Parser for ConflictErrorException
    class ConflictErrorException
      def self.parse(http_resp)
        data = Types::ConflictErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for StartDataCollectionByAgentIds
    class StartDataCollectionByAgentIds
      def self.parse(http_resp)
        data = Types::StartDataCollectionByAgentIdsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.agents_configuration_status = (AgentConfigurationStatusList.parse(map['agentsConfigurationStatus']) unless map['agentsConfigurationStatus'].nil?)
        data
      end
    end

    class AgentConfigurationStatusList
      def self.parse(list)
        list.map do |value|
          AgentConfigurationStatus.parse(value) unless value.nil?
        end
      end
    end

    class AgentConfigurationStatus
      def self.parse(map)
        data = Types::AgentConfigurationStatus.new
        data.agent_id = map['agentId']
        data.operation_succeeded = map['operationSucceeded']
        data.description = map['description']
        return data
      end
    end

    # Operation Parser for StartExportTask
    class StartExportTask
      def self.parse(http_resp)
        data = Types::StartExportTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.export_id = map['exportId']
        data
      end
    end

    # Operation Parser for StartImportTask
    class StartImportTask
      def self.parse(http_resp)
        data = Types::StartImportTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task = (ImportTask.parse(map['task']) unless map['task'].nil?)
        data
      end
    end

    # Operation Parser for StopContinuousExport
    class StopContinuousExport
      def self.parse(http_resp)
        data = Types::StopContinuousExportOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.stop_time = Time.at(map['stopTime'].to_i) if map['stopTime']
        data
      end
    end

    # Operation Parser for StopDataCollectionByAgentIds
    class StopDataCollectionByAgentIds
      def self.parse(http_resp)
        data = Types::StopDataCollectionByAgentIdsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.agents_configuration_status = (AgentConfigurationStatusList.parse(map['agentsConfigurationStatus']) unless map['agentsConfigurationStatus'].nil?)
        data
      end
    end

    # Operation Parser for UpdateApplication
    class UpdateApplication
      def self.parse(http_resp)
        data = Types::UpdateApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
