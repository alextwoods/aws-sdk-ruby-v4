# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApplicationDiscoveryService
  module Stubs

    # Operation Stubber for AssociateConfigurationItemsToApplication
    class AssociateConfigurationItemsToApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchDeleteImportData
    class BatchDeleteImportData
      def self.default(visited=[])
        {
          errors: BatchDeleteImportDataErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['errors'] = Stubs::BatchDeleteImportDataErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchDeleteImportDataErrorList
    class BatchDeleteImportDataErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchDeleteImportDataErrorList')
        visited = visited + ['BatchDeleteImportDataErrorList']
        [
          BatchDeleteImportDataError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchDeleteImportDataError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchDeleteImportDataError
    class BatchDeleteImportDataError
      def self.default(visited=[])
        return nil if visited.include?('BatchDeleteImportDataError')
        visited = visited + ['BatchDeleteImportDataError']
        {
          import_task_id: 'import_task_id',
          error_code: 'error_code',
          error_description: 'error_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDeleteImportDataError.new
        data = {}
        data['importTaskId'] = stub[:import_task_id] unless stub[:import_task_id].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorDescription'] = stub[:error_description] unless stub[:error_description].nil?
        data
      end
    end

    # Operation Stubber for CreateApplication
    class CreateApplication
      def self.default(visited=[])
        {
          configuration_id: 'configuration_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['configurationId'] = stub[:configuration_id] unless stub[:configuration_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateTags
    class CreateTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApplications
    class DeleteApplications
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTags
    class DeleteTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAgents
    class DescribeAgents
      def self.default(visited=[])
        {
          agents_info: AgentsInfo.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['agentsInfo'] = Stubs::AgentsInfo.stub(stub[:agents_info]) unless stub[:agents_info].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AgentsInfo
    class AgentsInfo
      def self.default(visited=[])
        return nil if visited.include?('AgentsInfo')
        visited = visited + ['AgentsInfo']
        [
          AgentInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AgentInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AgentInfo
    class AgentInfo
      def self.default(visited=[])
        return nil if visited.include?('AgentInfo')
        visited = visited + ['AgentInfo']
        {
          agent_id: 'agent_id',
          host_name: 'host_name',
          agent_network_info_list: AgentNetworkInfoList.default(visited),
          connector_id: 'connector_id',
          version: 'version',
          health: 'health',
          last_health_ping_time: 'last_health_ping_time',
          collection_status: 'collection_status',
          agent_type: 'agent_type',
          registered_time: 'registered_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::AgentInfo.new
        data = {}
        data['agentId'] = stub[:agent_id] unless stub[:agent_id].nil?
        data['hostName'] = stub[:host_name] unless stub[:host_name].nil?
        data['agentNetworkInfoList'] = Stubs::AgentNetworkInfoList.stub(stub[:agent_network_info_list]) unless stub[:agent_network_info_list].nil?
        data['connectorId'] = stub[:connector_id] unless stub[:connector_id].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['health'] = stub[:health] unless stub[:health].nil?
        data['lastHealthPingTime'] = stub[:last_health_ping_time] unless stub[:last_health_ping_time].nil?
        data['collectionStatus'] = stub[:collection_status] unless stub[:collection_status].nil?
        data['agentType'] = stub[:agent_type] unless stub[:agent_type].nil?
        data['registeredTime'] = stub[:registered_time] unless stub[:registered_time].nil?
        data
      end
    end

    # List Stubber for AgentNetworkInfoList
    class AgentNetworkInfoList
      def self.default(visited=[])
        return nil if visited.include?('AgentNetworkInfoList')
        visited = visited + ['AgentNetworkInfoList']
        [
          AgentNetworkInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AgentNetworkInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AgentNetworkInfo
    class AgentNetworkInfo
      def self.default(visited=[])
        return nil if visited.include?('AgentNetworkInfo')
        visited = visited + ['AgentNetworkInfo']
        {
          ip_address: 'ip_address',
          mac_address: 'mac_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::AgentNetworkInfo.new
        data = {}
        data['ipAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['macAddress'] = stub[:mac_address] unless stub[:mac_address].nil?
        data
      end
    end

    # Operation Stubber for DescribeConfigurations
    class DescribeConfigurations
      def self.default(visited=[])
        {
          configurations: DescribeConfigurationsAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['configurations'] = Stubs::DescribeConfigurationsAttributes.stub(stub[:configurations]) unless stub[:configurations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DescribeConfigurationsAttributes
    class DescribeConfigurationsAttributes
      def self.default(visited=[])
        return nil if visited.include?('DescribeConfigurationsAttributes')
        visited = visited + ['DescribeConfigurationsAttributes']
        [
          DescribeConfigurationsAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DescribeConfigurationsAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Map Stubber for DescribeConfigurationsAttribute
    class DescribeConfigurationsAttribute
      def self.default(visited=[])
        return nil if visited.include?('DescribeConfigurationsAttribute')
        visited = visited + ['DescribeConfigurationsAttribute']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeContinuousExports
    class DescribeContinuousExports
      def self.default(visited=[])
        {
          descriptions: ContinuousExportDescriptions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['descriptions'] = Stubs::ContinuousExportDescriptions.stub(stub[:descriptions]) unless stub[:descriptions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ContinuousExportDescriptions
    class ContinuousExportDescriptions
      def self.default(visited=[])
        return nil if visited.include?('ContinuousExportDescriptions')
        visited = visited + ['ContinuousExportDescriptions']
        [
          ContinuousExportDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ContinuousExportDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContinuousExportDescription
    class ContinuousExportDescription
      def self.default(visited=[])
        return nil if visited.include?('ContinuousExportDescription')
        visited = visited + ['ContinuousExportDescription']
        {
          export_id: 'export_id',
          status: 'status',
          status_detail: 'status_detail',
          s3_bucket: 's3_bucket',
          start_time: Time.now,
          stop_time: Time.now,
          data_source: 'data_source',
          schema_storage_config: SchemaStorageConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContinuousExportDescription.new
        data = {}
        data['exportId'] = stub[:export_id] unless stub[:export_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusDetail'] = stub[:status_detail] unless stub[:status_detail].nil?
        data['s3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['stopTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stop_time]).to_i unless stub[:stop_time].nil?
        data['dataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['schemaStorageConfig'] = Stubs::SchemaStorageConfig.stub(stub[:schema_storage_config]) unless stub[:schema_storage_config].nil?
        data
      end
    end

    # Map Stubber for SchemaStorageConfig
    class SchemaStorageConfig
      def self.default(visited=[])
        return nil if visited.include?('SchemaStorageConfig')
        visited = visited + ['SchemaStorageConfig']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeExportConfigurations
    class DescribeExportConfigurations
      def self.default(visited=[])
        {
          exports_info: ExportsInfo.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['exportsInfo'] = Stubs::ExportsInfo.stub(stub[:exports_info]) unless stub[:exports_info].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ExportsInfo
    class ExportsInfo
      def self.default(visited=[])
        return nil if visited.include?('ExportsInfo')
        visited = visited + ['ExportsInfo']
        [
          ExportInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExportInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExportInfo
    class ExportInfo
      def self.default(visited=[])
        return nil if visited.include?('ExportInfo')
        visited = visited + ['ExportInfo']
        {
          export_id: 'export_id',
          export_status: 'export_status',
          status_message: 'status_message',
          configurations_download_url: 'configurations_download_url',
          export_request_time: Time.now,
          is_truncated: false,
          requested_start_time: Time.now,
          requested_end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExportInfo.new
        data = {}
        data['exportId'] = stub[:export_id] unless stub[:export_id].nil?
        data['exportStatus'] = stub[:export_status] unless stub[:export_status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['configurationsDownloadUrl'] = stub[:configurations_download_url] unless stub[:configurations_download_url].nil?
        data['exportRequestTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:export_request_time]).to_i unless stub[:export_request_time].nil?
        data['isTruncated'] = stub[:is_truncated] unless stub[:is_truncated].nil?
        data['requestedStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:requested_start_time]).to_i unless stub[:requested_start_time].nil?
        data['requestedEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:requested_end_time]).to_i unless stub[:requested_end_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeExportTasks
    class DescribeExportTasks
      def self.default(visited=[])
        {
          exports_info: ExportsInfo.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['exportsInfo'] = Stubs::ExportsInfo.stub(stub[:exports_info]) unless stub[:exports_info].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeImportTasks
    class DescribeImportTasks
      def self.default(visited=[])
        {
          next_token: 'next_token',
          tasks: ImportTaskList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['tasks'] = Stubs::ImportTaskList.stub(stub[:tasks]) unless stub[:tasks].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ImportTaskList
    class ImportTaskList
      def self.default(visited=[])
        return nil if visited.include?('ImportTaskList')
        visited = visited + ['ImportTaskList']
        [
          ImportTask.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImportTask.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImportTask
    class ImportTask
      def self.default(visited=[])
        return nil if visited.include?('ImportTask')
        visited = visited + ['ImportTask']
        {
          import_task_id: 'import_task_id',
          client_request_token: 'client_request_token',
          name: 'name',
          import_url: 'import_url',
          status: 'status',
          import_request_time: Time.now,
          import_completion_time: Time.now,
          import_deleted_time: Time.now,
          server_import_success: 1,
          server_import_failure: 1,
          application_import_success: 1,
          application_import_failure: 1,
          errors_and_failed_entries_zip: 'errors_and_failed_entries_zip',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImportTask.new
        data = {}
        data['importTaskId'] = stub[:import_task_id] unless stub[:import_task_id].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['importUrl'] = stub[:import_url] unless stub[:import_url].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['importRequestTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:import_request_time]).to_i unless stub[:import_request_time].nil?
        data['importCompletionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:import_completion_time]).to_i unless stub[:import_completion_time].nil?
        data['importDeletedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:import_deleted_time]).to_i unless stub[:import_deleted_time].nil?
        data['serverImportSuccess'] = stub[:server_import_success] unless stub[:server_import_success].nil?
        data['serverImportFailure'] = stub[:server_import_failure] unless stub[:server_import_failure].nil?
        data['applicationImportSuccess'] = stub[:application_import_success] unless stub[:application_import_success].nil?
        data['applicationImportFailure'] = stub[:application_import_failure] unless stub[:application_import_failure].nil?
        data['errorsAndFailedEntriesZip'] = stub[:errors_and_failed_entries_zip] unless stub[:errors_and_failed_entries_zip].nil?
        data
      end
    end

    # Operation Stubber for DescribeTags
    class DescribeTags
      def self.default(visited=[])
        {
          tags: ConfigurationTagSet.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tags'] = Stubs::ConfigurationTagSet.stub(stub[:tags]) unless stub[:tags].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConfigurationTagSet
    class ConfigurationTagSet
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationTagSet')
        visited = visited + ['ConfigurationTagSet']
        [
          ConfigurationTag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConfigurationTag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConfigurationTag
    class ConfigurationTag
      def self.default(visited=[])
        return nil if visited.include?('ConfigurationTag')
        visited = visited + ['ConfigurationTag']
        {
          configuration_type: 'configuration_type',
          configuration_id: 'configuration_id',
          key: 'key',
          value: 'value',
          time_of_creation: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfigurationTag.new
        data = {}
        data['configurationType'] = stub[:configuration_type] unless stub[:configuration_type].nil?
        data['configurationId'] = stub[:configuration_id] unless stub[:configuration_id].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data['timeOfCreation'] = Hearth::TimeHelper.to_epoch_seconds(stub[:time_of_creation]).to_i unless stub[:time_of_creation].nil?
        data
      end
    end

    # Operation Stubber for DisassociateConfigurationItemsFromApplication
    class DisassociateConfigurationItemsFromApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExportConfigurations
    class ExportConfigurations
      def self.default(visited=[])
        {
          export_id: 'export_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['exportId'] = stub[:export_id] unless stub[:export_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDiscoverySummary
    class GetDiscoverySummary
      def self.default(visited=[])
        {
          servers: 1,
          applications: 1,
          servers_mapped_to_applications: 1,
          servers_mappedto_tags: 1,
          agent_summary: CustomerAgentInfo.default(visited),
          connector_summary: CustomerConnectorInfo.default(visited),
          me_collector_summary: CustomerMeCollectorInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['servers'] = stub[:servers] unless stub[:servers].nil?
        data['applications'] = stub[:applications] unless stub[:applications].nil?
        data['serversMappedToApplications'] = stub[:servers_mapped_to_applications] unless stub[:servers_mapped_to_applications].nil?
        data['serversMappedtoTags'] = stub[:servers_mappedto_tags] unless stub[:servers_mappedto_tags].nil?
        data['agentSummary'] = Stubs::CustomerAgentInfo.stub(stub[:agent_summary]) unless stub[:agent_summary].nil?
        data['connectorSummary'] = Stubs::CustomerConnectorInfo.stub(stub[:connector_summary]) unless stub[:connector_summary].nil?
        data['meCollectorSummary'] = Stubs::CustomerMeCollectorInfo.stub(stub[:me_collector_summary]) unless stub[:me_collector_summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CustomerMeCollectorInfo
    class CustomerMeCollectorInfo
      def self.default(visited=[])
        return nil if visited.include?('CustomerMeCollectorInfo')
        visited = visited + ['CustomerMeCollectorInfo']
        {
          active_me_collectors: 1,
          healthy_me_collectors: 1,
          deny_listed_me_collectors: 1,
          shutdown_me_collectors: 1,
          unhealthy_me_collectors: 1,
          total_me_collectors: 1,
          unknown_me_collectors: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomerMeCollectorInfo.new
        data = {}
        data['activeMeCollectors'] = stub[:active_me_collectors] unless stub[:active_me_collectors].nil?
        data['healthyMeCollectors'] = stub[:healthy_me_collectors] unless stub[:healthy_me_collectors].nil?
        data['denyListedMeCollectors'] = stub[:deny_listed_me_collectors] unless stub[:deny_listed_me_collectors].nil?
        data['shutdownMeCollectors'] = stub[:shutdown_me_collectors] unless stub[:shutdown_me_collectors].nil?
        data['unhealthyMeCollectors'] = stub[:unhealthy_me_collectors] unless stub[:unhealthy_me_collectors].nil?
        data['totalMeCollectors'] = stub[:total_me_collectors] unless stub[:total_me_collectors].nil?
        data['unknownMeCollectors'] = stub[:unknown_me_collectors] unless stub[:unknown_me_collectors].nil?
        data
      end
    end

    # Structure Stubber for CustomerConnectorInfo
    class CustomerConnectorInfo
      def self.default(visited=[])
        return nil if visited.include?('CustomerConnectorInfo')
        visited = visited + ['CustomerConnectorInfo']
        {
          active_connectors: 1,
          healthy_connectors: 1,
          black_listed_connectors: 1,
          shutdown_connectors: 1,
          unhealthy_connectors: 1,
          total_connectors: 1,
          unknown_connectors: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomerConnectorInfo.new
        data = {}
        data['activeConnectors'] = stub[:active_connectors] unless stub[:active_connectors].nil?
        data['healthyConnectors'] = stub[:healthy_connectors] unless stub[:healthy_connectors].nil?
        data['blackListedConnectors'] = stub[:black_listed_connectors] unless stub[:black_listed_connectors].nil?
        data['shutdownConnectors'] = stub[:shutdown_connectors] unless stub[:shutdown_connectors].nil?
        data['unhealthyConnectors'] = stub[:unhealthy_connectors] unless stub[:unhealthy_connectors].nil?
        data['totalConnectors'] = stub[:total_connectors] unless stub[:total_connectors].nil?
        data['unknownConnectors'] = stub[:unknown_connectors] unless stub[:unknown_connectors].nil?
        data
      end
    end

    # Structure Stubber for CustomerAgentInfo
    class CustomerAgentInfo
      def self.default(visited=[])
        return nil if visited.include?('CustomerAgentInfo')
        visited = visited + ['CustomerAgentInfo']
        {
          active_agents: 1,
          healthy_agents: 1,
          black_listed_agents: 1,
          shutdown_agents: 1,
          unhealthy_agents: 1,
          total_agents: 1,
          unknown_agents: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomerAgentInfo.new
        data = {}
        data['activeAgents'] = stub[:active_agents] unless stub[:active_agents].nil?
        data['healthyAgents'] = stub[:healthy_agents] unless stub[:healthy_agents].nil?
        data['blackListedAgents'] = stub[:black_listed_agents] unless stub[:black_listed_agents].nil?
        data['shutdownAgents'] = stub[:shutdown_agents] unless stub[:shutdown_agents].nil?
        data['unhealthyAgents'] = stub[:unhealthy_agents] unless stub[:unhealthy_agents].nil?
        data['totalAgents'] = stub[:total_agents] unless stub[:total_agents].nil?
        data['unknownAgents'] = stub[:unknown_agents] unless stub[:unknown_agents].nil?
        data
      end
    end

    # Operation Stubber for ListConfigurations
    class ListConfigurations
      def self.default(visited=[])
        {
          configurations: Configurations.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['configurations'] = Stubs::Configurations.stub(stub[:configurations]) unless stub[:configurations].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Configurations
    class Configurations
      def self.default(visited=[])
        return nil if visited.include?('Configurations')
        visited = visited + ['Configurations']
        [
          Configuration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Configuration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Map Stubber for Configuration
    class Configuration
      def self.default(visited=[])
        return nil if visited.include?('Configuration')
        visited = visited + ['Configuration']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for ListServerNeighbors
    class ListServerNeighbors
      def self.default(visited=[])
        {
          neighbors: NeighborDetailsList.default(visited),
          next_token: 'next_token',
          known_dependency_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['neighbors'] = Stubs::NeighborDetailsList.stub(stub[:neighbors]) unless stub[:neighbors].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['knownDependencyCount'] = stub[:known_dependency_count] unless stub[:known_dependency_count].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for NeighborDetailsList
    class NeighborDetailsList
      def self.default(visited=[])
        return nil if visited.include?('NeighborDetailsList')
        visited = visited + ['NeighborDetailsList']
        [
          NeighborConnectionDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NeighborConnectionDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NeighborConnectionDetail
    class NeighborConnectionDetail
      def self.default(visited=[])
        return nil if visited.include?('NeighborConnectionDetail')
        visited = visited + ['NeighborConnectionDetail']
        {
          source_server_id: 'source_server_id',
          destination_server_id: 'destination_server_id',
          destination_port: 1,
          transport_protocol: 'transport_protocol',
          connections_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::NeighborConnectionDetail.new
        data = {}
        data['sourceServerId'] = stub[:source_server_id] unless stub[:source_server_id].nil?
        data['destinationServerId'] = stub[:destination_server_id] unless stub[:destination_server_id].nil?
        data['destinationPort'] = stub[:destination_port] unless stub[:destination_port].nil?
        data['transportProtocol'] = stub[:transport_protocol] unless stub[:transport_protocol].nil?
        data['connectionsCount'] = stub[:connections_count] unless stub[:connections_count].nil?
        data
      end
    end

    # Operation Stubber for StartContinuousExport
    class StartContinuousExport
      def self.default(visited=[])
        {
          export_id: 'export_id',
          s3_bucket: 's3_bucket',
          start_time: Time.now,
          data_source: 'data_source',
          schema_storage_config: SchemaStorageConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['exportId'] = stub[:export_id] unless stub[:export_id].nil?
        data['s3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['dataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['schemaStorageConfig'] = Stubs::SchemaStorageConfig.stub(stub[:schema_storage_config]) unless stub[:schema_storage_config].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartDataCollectionByAgentIds
    class StartDataCollectionByAgentIds
      def self.default(visited=[])
        {
          agents_configuration_status: AgentConfigurationStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['agentsConfigurationStatus'] = Stubs::AgentConfigurationStatusList.stub(stub[:agents_configuration_status]) unless stub[:agents_configuration_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AgentConfigurationStatusList
    class AgentConfigurationStatusList
      def self.default(visited=[])
        return nil if visited.include?('AgentConfigurationStatusList')
        visited = visited + ['AgentConfigurationStatusList']
        [
          AgentConfigurationStatus.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AgentConfigurationStatus.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AgentConfigurationStatus
    class AgentConfigurationStatus
      def self.default(visited=[])
        return nil if visited.include?('AgentConfigurationStatus')
        visited = visited + ['AgentConfigurationStatus']
        {
          agent_id: 'agent_id',
          operation_succeeded: false,
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::AgentConfigurationStatus.new
        data = {}
        data['agentId'] = stub[:agent_id] unless stub[:agent_id].nil?
        data['operationSucceeded'] = stub[:operation_succeeded] unless stub[:operation_succeeded].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for StartExportTask
    class StartExportTask
      def self.default(visited=[])
        {
          export_id: 'export_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['exportId'] = stub[:export_id] unless stub[:export_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartImportTask
    class StartImportTask
      def self.default(visited=[])
        {
          task: ImportTask.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['task'] = Stubs::ImportTask.stub(stub[:task]) unless stub[:task].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopContinuousExport
    class StopContinuousExport
      def self.default(visited=[])
        {
          start_time: Time.now,
          stop_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['stopTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:stop_time]).to_i unless stub[:stop_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopDataCollectionByAgentIds
    class StopDataCollectionByAgentIds
      def self.default(visited=[])
        {
          agents_configuration_status: AgentConfigurationStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['agentsConfigurationStatus'] = Stubs::AgentConfigurationStatusList.stub(stub[:agents_configuration_status]) unless stub[:agents_configuration_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApplication
    class UpdateApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
