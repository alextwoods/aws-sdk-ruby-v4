# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ApplicationDiscoveryService
  module Params

    module AgentConfigurationStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentConfigurationStatus, context: context)
        type = Types::AgentConfigurationStatus.new
        type.agent_id = params[:agent_id]
        type.operation_succeeded = params[:operation_succeeded]
        type.description = params[:description]
        type
      end
    end

    module AgentConfigurationStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AgentConfigurationStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AgentIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AgentInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentInfo, context: context)
        type = Types::AgentInfo.new
        type.agent_id = params[:agent_id]
        type.host_name = params[:host_name]
        type.agent_network_info_list = AgentNetworkInfoList.build(params[:agent_network_info_list], context: "#{context}[:agent_network_info_list]") unless params[:agent_network_info_list].nil?
        type.connector_id = params[:connector_id]
        type.version = params[:version]
        type.health = params[:health]
        type.last_health_ping_time = params[:last_health_ping_time]
        type.collection_status = params[:collection_status]
        type.agent_type = params[:agent_type]
        type.registered_time = params[:registered_time]
        type
      end
    end

    module AgentNetworkInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentNetworkInfo, context: context)
        type = Types::AgentNetworkInfo.new
        type.ip_address = params[:ip_address]
        type.mac_address = params[:mac_address]
        type
      end
    end

    module AgentNetworkInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AgentNetworkInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AgentsInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AgentInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssociateConfigurationItemsToApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateConfigurationItemsToApplicationInput, context: context)
        type = Types::AssociateConfigurationItemsToApplicationInput.new
        type.application_configuration_id = params[:application_configuration_id]
        type.configuration_ids = ConfigurationIdList.build(params[:configuration_ids], context: "#{context}[:configuration_ids]") unless params[:configuration_ids].nil?
        type
      end
    end

    module AssociateConfigurationItemsToApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateConfigurationItemsToApplicationOutput, context: context)
        type = Types::AssociateConfigurationItemsToApplicationOutput.new
        type
      end
    end

    module AuthorizationErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorizationErrorException, context: context)
        type = Types::AuthorizationErrorException.new
        type.message = params[:message]
        type
      end
    end

    module BatchDeleteImportDataError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteImportDataError, context: context)
        type = Types::BatchDeleteImportDataError.new
        type.import_task_id = params[:import_task_id]
        type.error_code = params[:error_code]
        type.error_description = params[:error_description]
        type
      end
    end

    module BatchDeleteImportDataErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchDeleteImportDataError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchDeleteImportDataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteImportDataInput, context: context)
        type = Types::BatchDeleteImportDataInput.new
        type.import_task_ids = ToDeleteIdentifierList.build(params[:import_task_ids], context: "#{context}[:import_task_ids]") unless params[:import_task_ids].nil?
        type
      end
    end

    module BatchDeleteImportDataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteImportDataOutput, context: context)
        type = Types::BatchDeleteImportDataOutput.new
        type.errors = BatchDeleteImportDataErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module Configuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ConfigurationIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConfigurationTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationTag, context: context)
        type = Types::ConfigurationTag.new
        type.configuration_type = params[:configuration_type]
        type.configuration_id = params[:configuration_id]
        type.key = params[:key]
        type.value = params[:value]
        type.time_of_creation = params[:time_of_creation]
        type
      end
    end

    module ConfigurationTagSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Configurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Configuration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConflictErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictErrorException, context: context)
        type = Types::ConflictErrorException.new
        type.message = params[:message]
        type
      end
    end

    module ContinuousExportDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContinuousExportDescription, context: context)
        type = Types::ContinuousExportDescription.new
        type.export_id = params[:export_id]
        type.status = params[:status]
        type.status_detail = params[:status_detail]
        type.s3_bucket = params[:s3_bucket]
        type.start_time = params[:start_time]
        type.stop_time = params[:stop_time]
        type.data_source = params[:data_source]
        type.schema_storage_config = SchemaStorageConfig.build(params[:schema_storage_config], context: "#{context}[:schema_storage_config]") unless params[:schema_storage_config].nil?
        type
      end
    end

    module ContinuousExportDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContinuousExportDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContinuousExportIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationInput, context: context)
        type = Types::CreateApplicationInput.new
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module CreateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationOutput, context: context)
        type = Types::CreateApplicationOutput.new
        type.configuration_id = params[:configuration_id]
        type
      end
    end

    module CreateTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTagsInput, context: context)
        type = Types::CreateTagsInput.new
        type.configuration_ids = ConfigurationIdList.build(params[:configuration_ids], context: "#{context}[:configuration_ids]") unless params[:configuration_ids].nil?
        type.tags = TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTagsOutput, context: context)
        type = Types::CreateTagsOutput.new
        type
      end
    end

    module CustomerAgentInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerAgentInfo, context: context)
        type = Types::CustomerAgentInfo.new
        type.active_agents = params[:active_agents]
        type.healthy_agents = params[:healthy_agents]
        type.black_listed_agents = params[:black_listed_agents]
        type.shutdown_agents = params[:shutdown_agents]
        type.unhealthy_agents = params[:unhealthy_agents]
        type.total_agents = params[:total_agents]
        type.unknown_agents = params[:unknown_agents]
        type
      end
    end

    module CustomerConnectorInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerConnectorInfo, context: context)
        type = Types::CustomerConnectorInfo.new
        type.active_connectors = params[:active_connectors]
        type.healthy_connectors = params[:healthy_connectors]
        type.black_listed_connectors = params[:black_listed_connectors]
        type.shutdown_connectors = params[:shutdown_connectors]
        type.unhealthy_connectors = params[:unhealthy_connectors]
        type.total_connectors = params[:total_connectors]
        type.unknown_connectors = params[:unknown_connectors]
        type
      end
    end

    module CustomerMeCollectorInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerMeCollectorInfo, context: context)
        type = Types::CustomerMeCollectorInfo.new
        type.active_me_collectors = params[:active_me_collectors]
        type.healthy_me_collectors = params[:healthy_me_collectors]
        type.deny_listed_me_collectors = params[:deny_listed_me_collectors]
        type.shutdown_me_collectors = params[:shutdown_me_collectors]
        type.unhealthy_me_collectors = params[:unhealthy_me_collectors]
        type.total_me_collectors = params[:total_me_collectors]
        type.unknown_me_collectors = params[:unknown_me_collectors]
        type
      end
    end

    module DeleteApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationsInput, context: context)
        type = Types::DeleteApplicationsInput.new
        type.configuration_ids = ApplicationIdsList.build(params[:configuration_ids], context: "#{context}[:configuration_ids]") unless params[:configuration_ids].nil?
        type
      end
    end

    module DeleteApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationsOutput, context: context)
        type = Types::DeleteApplicationsOutput.new
        type
      end
    end

    module DeleteTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsInput, context: context)
        type = Types::DeleteTagsInput.new
        type.configuration_ids = ConfigurationIdList.build(params[:configuration_ids], context: "#{context}[:configuration_ids]") unless params[:configuration_ids].nil?
        type.tags = TagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DeleteTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsOutput, context: context)
        type = Types::DeleteTagsOutput.new
        type
      end
    end

    module DescribeAgentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAgentsInput, context: context)
        type = Types::DescribeAgentsInput.new
        type.agent_ids = AgentIds.build(params[:agent_ids], context: "#{context}[:agent_ids]") unless params[:agent_ids].nil?
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAgentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAgentsOutput, context: context)
        type = Types::DescribeAgentsOutput.new
        type.agents_info = AgentsInfo.build(params[:agents_info], context: "#{context}[:agents_info]") unless params[:agents_info].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConfigurationsAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DescribeConfigurationsAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DescribeConfigurationsAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribeConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationsInput, context: context)
        type = Types::DescribeConfigurationsInput.new
        type.configuration_ids = ConfigurationIdList.build(params[:configuration_ids], context: "#{context}[:configuration_ids]") unless params[:configuration_ids].nil?
        type
      end
    end

    module DescribeConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationsOutput, context: context)
        type = Types::DescribeConfigurationsOutput.new
        type.configurations = DescribeConfigurationsAttributes.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type
      end
    end

    module DescribeContinuousExportsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContinuousExportsInput, context: context)
        type = Types::DescribeContinuousExportsInput.new
        type.export_ids = ContinuousExportIds.build(params[:export_ids], context: "#{context}[:export_ids]") unless params[:export_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeContinuousExportsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContinuousExportsOutput, context: context)
        type = Types::DescribeContinuousExportsOutput.new
        type.descriptions = ContinuousExportDescriptions.build(params[:descriptions], context: "#{context}[:descriptions]") unless params[:descriptions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeExportConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExportConfigurationsInput, context: context)
        type = Types::DescribeExportConfigurationsInput.new
        type.export_ids = ExportIds.build(params[:export_ids], context: "#{context}[:export_ids]") unless params[:export_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeExportConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExportConfigurationsOutput, context: context)
        type = Types::DescribeExportConfigurationsOutput.new
        type.exports_info = ExportsInfo.build(params[:exports_info], context: "#{context}[:exports_info]") unless params[:exports_info].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeExportTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExportTasksInput, context: context)
        type = Types::DescribeExportTasksInput.new
        type.export_ids = ExportIds.build(params[:export_ids], context: "#{context}[:export_ids]") unless params[:export_ids].nil?
        type.filters = ExportFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeExportTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExportTasksOutput, context: context)
        type = Types::DescribeExportTasksOutput.new
        type.exports_info = ExportsInfo.build(params[:exports_info], context: "#{context}[:exports_info]") unless params[:exports_info].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeImportTasksFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImportTaskFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribeImportTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImportTasksInput, context: context)
        type = Types::DescribeImportTasksInput.new
        type.filters = DescribeImportTasksFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeImportTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImportTasksOutput, context: context)
        type = Types::DescribeImportTasksOutput.new
        type.next_token = params[:next_token]
        type.tasks = ImportTaskList.build(params[:tasks], context: "#{context}[:tasks]") unless params[:tasks].nil?
        type
      end
    end

    module DescribeTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsInput, context: context)
        type = Types::DescribeTagsInput.new
        type.filters = TagFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTagsOutput, context: context)
        type = Types::DescribeTagsOutput.new
        type.tags = ConfigurationTagSet.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DisassociateConfigurationItemsFromApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateConfigurationItemsFromApplicationInput, context: context)
        type = Types::DisassociateConfigurationItemsFromApplicationInput.new
        type.application_configuration_id = params[:application_configuration_id]
        type.configuration_ids = ConfigurationIdList.build(params[:configuration_ids], context: "#{context}[:configuration_ids]") unless params[:configuration_ids].nil?
        type
      end
    end

    module DisassociateConfigurationItemsFromApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateConfigurationItemsFromApplicationOutput, context: context)
        type = Types::DisassociateConfigurationItemsFromApplicationOutput.new
        type
      end
    end

    module ExportConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportConfigurationsInput, context: context)
        type = Types::ExportConfigurationsInput.new
        type
      end
    end

    module ExportConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportConfigurationsOutput, context: context)
        type = Types::ExportConfigurationsOutput.new
        type.export_id = params[:export_id]
        type
      end
    end

    module ExportDataFormats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExportFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportFilter, context: context)
        type = Types::ExportFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.condition = params[:condition]
        type
      end
    end

    module ExportFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExportFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExportIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExportInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportInfo, context: context)
        type = Types::ExportInfo.new
        type.export_id = params[:export_id]
        type.export_status = params[:export_status]
        type.status_message = params[:status_message]
        type.configurations_download_url = params[:configurations_download_url]
        type.export_request_time = params[:export_request_time]
        type.is_truncated = params[:is_truncated]
        type.requested_start_time = params[:requested_start_time]
        type.requested_end_time = params[:requested_end_time]
        type
      end
    end

    module ExportsInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExportInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.condition = params[:condition]
        type
      end
    end

    module FilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Filters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetDiscoverySummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDiscoverySummaryInput, context: context)
        type = Types::GetDiscoverySummaryInput.new
        type
      end
    end

    module GetDiscoverySummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDiscoverySummaryOutput, context: context)
        type = Types::GetDiscoverySummaryOutput.new
        type.servers = params[:servers]
        type.applications = params[:applications]
        type.servers_mapped_to_applications = params[:servers_mapped_to_applications]
        type.servers_mappedto_tags = params[:servers_mappedto_tags]
        type.agent_summary = CustomerAgentInfo.build(params[:agent_summary], context: "#{context}[:agent_summary]") unless params[:agent_summary].nil?
        type.connector_summary = CustomerConnectorInfo.build(params[:connector_summary], context: "#{context}[:connector_summary]") unless params[:connector_summary].nil?
        type.me_collector_summary = CustomerMeCollectorInfo.build(params[:me_collector_summary], context: "#{context}[:me_collector_summary]") unless params[:me_collector_summary].nil?
        type
      end
    end

    module HomeRegionNotSetException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HomeRegionNotSetException, context: context)
        type = Types::HomeRegionNotSetException.new
        type.message = params[:message]
        type
      end
    end

    module ImportTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportTask, context: context)
        type = Types::ImportTask.new
        type.import_task_id = params[:import_task_id]
        type.client_request_token = params[:client_request_token]
        type.name = params[:name]
        type.import_url = params[:import_url]
        type.status = params[:status]
        type.import_request_time = params[:import_request_time]
        type.import_completion_time = params[:import_completion_time]
        type.import_deleted_time = params[:import_deleted_time]
        type.server_import_success = params[:server_import_success]
        type.server_import_failure = params[:server_import_failure]
        type.application_import_success = params[:application_import_success]
        type.application_import_failure = params[:application_import_failure]
        type.errors_and_failed_entries_zip = params[:errors_and_failed_entries_zip]
        type
      end
    end

    module ImportTaskFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportTaskFilter, context: context)
        type = Types::ImportTaskFilter.new
        type.name = params[:name]
        type.values = ImportTaskFilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ImportTaskFilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ImportTaskList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImportTask.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        type.message = params[:message]
        type
      end
    end

    module ListConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationsInput, context: context)
        type = Types::ListConfigurationsInput.new
        type.configuration_type = params[:configuration_type]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.order_by = OrderByList.build(params[:order_by], context: "#{context}[:order_by]") unless params[:order_by].nil?
        type
      end
    end

    module ListConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConfigurationsOutput, context: context)
        type = Types::ListConfigurationsOutput.new
        type.configurations = Configurations.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListServerNeighborsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServerNeighborsInput, context: context)
        type = Types::ListServerNeighborsInput.new
        type.configuration_id = params[:configuration_id]
        type.port_information_needed = params[:port_information_needed]
        type.neighbor_configuration_ids = ConfigurationIdList.build(params[:neighbor_configuration_ids], context: "#{context}[:neighbor_configuration_ids]") unless params[:neighbor_configuration_ids].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListServerNeighborsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServerNeighborsOutput, context: context)
        type = Types::ListServerNeighborsOutput.new
        type.neighbors = NeighborDetailsList.build(params[:neighbors], context: "#{context}[:neighbors]") unless params[:neighbors].nil?
        type.next_token = params[:next_token]
        type.known_dependency_count = params[:known_dependency_count]
        type
      end
    end

    module NeighborConnectionDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NeighborConnectionDetail, context: context)
        type = Types::NeighborConnectionDetail.new
        type.source_server_id = params[:source_server_id]
        type.destination_server_id = params[:destination_server_id]
        type.destination_port = params[:destination_port]
        type.transport_protocol = params[:transport_protocol]
        type.connections_count = params[:connections_count]
        type
      end
    end

    module NeighborDetailsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NeighborConnectionDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OperationNotPermittedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationNotPermittedException, context: context)
        type = Types::OperationNotPermittedException.new
        type.message = params[:message]
        type
      end
    end

    module OrderByElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrderByElement, context: context)
        type = Types::OrderByElement.new
        type.field_name = params[:field_name]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module OrderByList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrderByElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
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

    module SchemaStorageConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ServerInternalErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerInternalErrorException, context: context)
        type = Types::ServerInternalErrorException.new
        type.message = params[:message]
        type
      end
    end

    module StartContinuousExportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartContinuousExportInput, context: context)
        type = Types::StartContinuousExportInput.new
        type
      end
    end

    module StartContinuousExportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartContinuousExportOutput, context: context)
        type = Types::StartContinuousExportOutput.new
        type.export_id = params[:export_id]
        type.s3_bucket = params[:s3_bucket]
        type.start_time = params[:start_time]
        type.data_source = params[:data_source]
        type.schema_storage_config = SchemaStorageConfig.build(params[:schema_storage_config], context: "#{context}[:schema_storage_config]") unless params[:schema_storage_config].nil?
        type
      end
    end

    module StartDataCollectionByAgentIdsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDataCollectionByAgentIdsInput, context: context)
        type = Types::StartDataCollectionByAgentIdsInput.new
        type.agent_ids = AgentIds.build(params[:agent_ids], context: "#{context}[:agent_ids]") unless params[:agent_ids].nil?
        type
      end
    end

    module StartDataCollectionByAgentIdsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDataCollectionByAgentIdsOutput, context: context)
        type = Types::StartDataCollectionByAgentIdsOutput.new
        type.agents_configuration_status = AgentConfigurationStatusList.build(params[:agents_configuration_status], context: "#{context}[:agents_configuration_status]") unless params[:agents_configuration_status].nil?
        type
      end
    end

    module StartExportTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartExportTaskInput, context: context)
        type = Types::StartExportTaskInput.new
        type.export_data_format = ExportDataFormats.build(params[:export_data_format], context: "#{context}[:export_data_format]") unless params[:export_data_format].nil?
        type.filters = ExportFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module StartExportTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartExportTaskOutput, context: context)
        type = Types::StartExportTaskOutput.new
        type.export_id = params[:export_id]
        type
      end
    end

    module StartImportTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImportTaskInput, context: context)
        type = Types::StartImportTaskInput.new
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.name = params[:name]
        type.import_url = params[:import_url]
        type
      end
    end

    module StartImportTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImportTaskOutput, context: context)
        type = Types::StartImportTaskOutput.new
        type.task = ImportTask.build(params[:task], context: "#{context}[:task]") unless params[:task].nil?
        type
      end
    end

    module StopContinuousExportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopContinuousExportInput, context: context)
        type = Types::StopContinuousExportInput.new
        type.export_id = params[:export_id]
        type
      end
    end

    module StopContinuousExportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopContinuousExportOutput, context: context)
        type = Types::StopContinuousExportOutput.new
        type.start_time = params[:start_time]
        type.stop_time = params[:stop_time]
        type
      end
    end

    module StopDataCollectionByAgentIdsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDataCollectionByAgentIdsInput, context: context)
        type = Types::StopDataCollectionByAgentIdsInput.new
        type.agent_ids = AgentIds.build(params[:agent_ids], context: "#{context}[:agent_ids]") unless params[:agent_ids].nil?
        type
      end
    end

    module StopDataCollectionByAgentIdsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDataCollectionByAgentIdsOutput, context: context)
        type = Types::StopDataCollectionByAgentIdsOutput.new
        type.agents_configuration_status = AgentConfigurationStatusList.build(params[:agents_configuration_status], context: "#{context}[:agents_configuration_status]") unless params[:agents_configuration_status].nil?
        type
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

    module TagFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagFilter, context: context)
        type = Types::TagFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module TagFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ToDeleteIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UpdateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationInput, context: context)
        type = Types::UpdateApplicationInput.new
        type.configuration_id = params[:configuration_id]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationOutput, context: context)
        type = Types::UpdateApplicationOutput.new
        type
      end
    end

  end
end
