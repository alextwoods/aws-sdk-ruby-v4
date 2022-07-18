# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ApplicationDiscoveryService
  module Validators

    class AgentConfigurationStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentConfigurationStatus, context: context)
        Hearth::Validator.validate!(input[:agent_id], ::String, context: "#{context}[:agent_id]")
        Hearth::Validator.validate!(input[:operation_succeeded], ::TrueClass, ::FalseClass, context: "#{context}[:operation_succeeded]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class AgentConfigurationStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AgentConfigurationStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AgentIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AgentInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentInfo, context: context)
        Hearth::Validator.validate!(input[:agent_id], ::String, context: "#{context}[:agent_id]")
        Hearth::Validator.validate!(input[:host_name], ::String, context: "#{context}[:host_name]")
        AgentNetworkInfoList.validate!(input[:agent_network_info_list], context: "#{context}[:agent_network_info_list]") unless input[:agent_network_info_list].nil?
        Hearth::Validator.validate!(input[:connector_id], ::String, context: "#{context}[:connector_id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:health], ::String, context: "#{context}[:health]")
        Hearth::Validator.validate!(input[:last_health_ping_time], ::String, context: "#{context}[:last_health_ping_time]")
        Hearth::Validator.validate!(input[:collection_status], ::String, context: "#{context}[:collection_status]")
        Hearth::Validator.validate!(input[:agent_type], ::String, context: "#{context}[:agent_type]")
        Hearth::Validator.validate!(input[:registered_time], ::String, context: "#{context}[:registered_time]")
      end
    end

    class AgentNetworkInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentNetworkInfo, context: context)
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:mac_address], ::String, context: "#{context}[:mac_address]")
      end
    end

    class AgentNetworkInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AgentNetworkInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AgentsInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AgentInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssociateConfigurationItemsToApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateConfigurationItemsToApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_configuration_id], ::String, context: "#{context}[:application_configuration_id]")
        ConfigurationIdList.validate!(input[:configuration_ids], context: "#{context}[:configuration_ids]") unless input[:configuration_ids].nil?
      end
    end

    class AssociateConfigurationItemsToApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateConfigurationItemsToApplicationOutput, context: context)
      end
    end

    class AuthorizationErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorizationErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchDeleteImportDataError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteImportDataError, context: context)
        Hearth::Validator.validate!(input[:import_task_id], ::String, context: "#{context}[:import_task_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_description], ::String, context: "#{context}[:error_description]")
      end
    end

    class BatchDeleteImportDataErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchDeleteImportDataError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchDeleteImportDataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteImportDataInput, context: context)
        ToDeleteIdentifierList.validate!(input[:import_task_ids], context: "#{context}[:import_task_ids]") unless input[:import_task_ids].nil?
      end
    end

    class BatchDeleteImportDataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteImportDataOutput, context: context)
        BatchDeleteImportDataErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class Configuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ConfigurationIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConfigurationTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationTag, context: context)
        Hearth::Validator.validate!(input[:configuration_type], ::String, context: "#{context}[:configuration_type]")
        Hearth::Validator.validate!(input[:configuration_id], ::String, context: "#{context}[:configuration_id]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:time_of_creation], ::Time, context: "#{context}[:time_of_creation]")
      end
    end

    class ConfigurationTagSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigurationTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Configurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Configuration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ContinuousExportDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContinuousExportDescription, context: context)
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_detail], ::String, context: "#{context}[:status_detail]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:stop_time], ::Time, context: "#{context}[:stop_time]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        SchemaStorageConfig.validate!(input[:schema_storage_config], context: "#{context}[:schema_storage_config]") unless input[:schema_storage_config].nil?
      end
    end

    class ContinuousExportDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContinuousExportDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContinuousExportIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class CreateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_id], ::String, context: "#{context}[:configuration_id]")
      end
    end

    class CreateTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTagsInput, context: context)
        ConfigurationIdList.validate!(input[:configuration_ids], context: "#{context}[:configuration_ids]") unless input[:configuration_ids].nil?
        TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTagsOutput, context: context)
      end
    end

    class CustomerAgentInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerAgentInfo, context: context)
        Hearth::Validator.validate!(input[:active_agents], ::Integer, context: "#{context}[:active_agents]")
        Hearth::Validator.validate!(input[:healthy_agents], ::Integer, context: "#{context}[:healthy_agents]")
        Hearth::Validator.validate!(input[:black_listed_agents], ::Integer, context: "#{context}[:black_listed_agents]")
        Hearth::Validator.validate!(input[:shutdown_agents], ::Integer, context: "#{context}[:shutdown_agents]")
        Hearth::Validator.validate!(input[:unhealthy_agents], ::Integer, context: "#{context}[:unhealthy_agents]")
        Hearth::Validator.validate!(input[:total_agents], ::Integer, context: "#{context}[:total_agents]")
        Hearth::Validator.validate!(input[:unknown_agents], ::Integer, context: "#{context}[:unknown_agents]")
      end
    end

    class CustomerConnectorInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerConnectorInfo, context: context)
        Hearth::Validator.validate!(input[:active_connectors], ::Integer, context: "#{context}[:active_connectors]")
        Hearth::Validator.validate!(input[:healthy_connectors], ::Integer, context: "#{context}[:healthy_connectors]")
        Hearth::Validator.validate!(input[:black_listed_connectors], ::Integer, context: "#{context}[:black_listed_connectors]")
        Hearth::Validator.validate!(input[:shutdown_connectors], ::Integer, context: "#{context}[:shutdown_connectors]")
        Hearth::Validator.validate!(input[:unhealthy_connectors], ::Integer, context: "#{context}[:unhealthy_connectors]")
        Hearth::Validator.validate!(input[:total_connectors], ::Integer, context: "#{context}[:total_connectors]")
        Hearth::Validator.validate!(input[:unknown_connectors], ::Integer, context: "#{context}[:unknown_connectors]")
      end
    end

    class CustomerMeCollectorInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerMeCollectorInfo, context: context)
        Hearth::Validator.validate!(input[:active_me_collectors], ::Integer, context: "#{context}[:active_me_collectors]")
        Hearth::Validator.validate!(input[:healthy_me_collectors], ::Integer, context: "#{context}[:healthy_me_collectors]")
        Hearth::Validator.validate!(input[:deny_listed_me_collectors], ::Integer, context: "#{context}[:deny_listed_me_collectors]")
        Hearth::Validator.validate!(input[:shutdown_me_collectors], ::Integer, context: "#{context}[:shutdown_me_collectors]")
        Hearth::Validator.validate!(input[:unhealthy_me_collectors], ::Integer, context: "#{context}[:unhealthy_me_collectors]")
        Hearth::Validator.validate!(input[:total_me_collectors], ::Integer, context: "#{context}[:total_me_collectors]")
        Hearth::Validator.validate!(input[:unknown_me_collectors], ::Integer, context: "#{context}[:unknown_me_collectors]")
      end
    end

    class DeleteApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationsInput, context: context)
        ApplicationIdsList.validate!(input[:configuration_ids], context: "#{context}[:configuration_ids]") unless input[:configuration_ids].nil?
      end
    end

    class DeleteApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationsOutput, context: context)
      end
    end

    class DeleteTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsInput, context: context)
        ConfigurationIdList.validate!(input[:configuration_ids], context: "#{context}[:configuration_ids]") unless input[:configuration_ids].nil?
        TagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DeleteTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsOutput, context: context)
      end
    end

    class DescribeAgentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAgentsInput, context: context)
        AgentIds.validate!(input[:agent_ids], context: "#{context}[:agent_ids]") unless input[:agent_ids].nil?
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAgentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAgentsOutput, context: context)
        AgentsInfo.validate!(input[:agents_info], context: "#{context}[:agents_info]") unless input[:agents_info].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConfigurationsAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DescribeConfigurationsAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DescribeConfigurationsAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribeConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationsInput, context: context)
        ConfigurationIdList.validate!(input[:configuration_ids], context: "#{context}[:configuration_ids]") unless input[:configuration_ids].nil?
      end
    end

    class DescribeConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationsOutput, context: context)
        DescribeConfigurationsAttributes.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
      end
    end

    class DescribeContinuousExportsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContinuousExportsInput, context: context)
        ContinuousExportIds.validate!(input[:export_ids], context: "#{context}[:export_ids]") unless input[:export_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeContinuousExportsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContinuousExportsOutput, context: context)
        ContinuousExportDescriptions.validate!(input[:descriptions], context: "#{context}[:descriptions]") unless input[:descriptions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeExportConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExportConfigurationsInput, context: context)
        ExportIds.validate!(input[:export_ids], context: "#{context}[:export_ids]") unless input[:export_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeExportConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExportConfigurationsOutput, context: context)
        ExportsInfo.validate!(input[:exports_info], context: "#{context}[:exports_info]") unless input[:exports_info].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeExportTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExportTasksInput, context: context)
        ExportIds.validate!(input[:export_ids], context: "#{context}[:export_ids]") unless input[:export_ids].nil?
        ExportFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeExportTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExportTasksOutput, context: context)
        ExportsInfo.validate!(input[:exports_info], context: "#{context}[:exports_info]") unless input[:exports_info].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeImportTasksFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ImportTaskFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribeImportTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImportTasksInput, context: context)
        DescribeImportTasksFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeImportTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImportTasksOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ImportTaskList.validate!(input[:tasks], context: "#{context}[:tasks]") unless input[:tasks].nil?
      end
    end

    class DescribeTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsInput, context: context)
        TagFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTagsOutput, context: context)
        ConfigurationTagSet.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DisassociateConfigurationItemsFromApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateConfigurationItemsFromApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_configuration_id], ::String, context: "#{context}[:application_configuration_id]")
        ConfigurationIdList.validate!(input[:configuration_ids], context: "#{context}[:configuration_ids]") unless input[:configuration_ids].nil?
      end
    end

    class DisassociateConfigurationItemsFromApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateConfigurationItemsFromApplicationOutput, context: context)
      end
    end

    class ExportConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportConfigurationsInput, context: context)
      end
    end

    class ExportConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportConfigurationsOutput, context: context)
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
      end
    end

    class ExportDataFormats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExportFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:condition], ::String, context: "#{context}[:condition]")
      end
    end

    class ExportFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExportFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExportIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExportInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportInfo, context: context)
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
        Hearth::Validator.validate!(input[:export_status], ::String, context: "#{context}[:export_status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:configurations_download_url], ::String, context: "#{context}[:configurations_download_url]")
        Hearth::Validator.validate!(input[:export_request_time], ::Time, context: "#{context}[:export_request_time]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:requested_start_time], ::Time, context: "#{context}[:requested_start_time]")
        Hearth::Validator.validate!(input[:requested_end_time], ::Time, context: "#{context}[:requested_end_time]")
      end
    end

    class ExportsInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExportInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:condition], ::String, context: "#{context}[:condition]")
      end
    end

    class FilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Filters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetDiscoverySummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDiscoverySummaryInput, context: context)
      end
    end

    class GetDiscoverySummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDiscoverySummaryOutput, context: context)
        Hearth::Validator.validate!(input[:servers], ::Integer, context: "#{context}[:servers]")
        Hearth::Validator.validate!(input[:applications], ::Integer, context: "#{context}[:applications]")
        Hearth::Validator.validate!(input[:servers_mapped_to_applications], ::Integer, context: "#{context}[:servers_mapped_to_applications]")
        Hearth::Validator.validate!(input[:servers_mappedto_tags], ::Integer, context: "#{context}[:servers_mappedto_tags]")
        CustomerAgentInfo.validate!(input[:agent_summary], context: "#{context}[:agent_summary]") unless input[:agent_summary].nil?
        CustomerConnectorInfo.validate!(input[:connector_summary], context: "#{context}[:connector_summary]") unless input[:connector_summary].nil?
        CustomerMeCollectorInfo.validate!(input[:me_collector_summary], context: "#{context}[:me_collector_summary]") unless input[:me_collector_summary].nil?
      end
    end

    class HomeRegionNotSetException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HomeRegionNotSetException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ImportTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportTask, context: context)
        Hearth::Validator.validate!(input[:import_task_id], ::String, context: "#{context}[:import_task_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:import_url], ::String, context: "#{context}[:import_url]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:import_request_time], ::Time, context: "#{context}[:import_request_time]")
        Hearth::Validator.validate!(input[:import_completion_time], ::Time, context: "#{context}[:import_completion_time]")
        Hearth::Validator.validate!(input[:import_deleted_time], ::Time, context: "#{context}[:import_deleted_time]")
        Hearth::Validator.validate!(input[:server_import_success], ::Integer, context: "#{context}[:server_import_success]")
        Hearth::Validator.validate!(input[:server_import_failure], ::Integer, context: "#{context}[:server_import_failure]")
        Hearth::Validator.validate!(input[:application_import_success], ::Integer, context: "#{context}[:application_import_success]")
        Hearth::Validator.validate!(input[:application_import_failure], ::Integer, context: "#{context}[:application_import_failure]")
        Hearth::Validator.validate!(input[:errors_and_failed_entries_zip], ::String, context: "#{context}[:errors_and_failed_entries_zip]")
      end
    end

    class ImportTaskFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportTaskFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ImportTaskFilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ImportTaskFilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImportTaskList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ImportTask.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_type], ::String, context: "#{context}[:configuration_type]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        OrderByList.validate!(input[:order_by], context: "#{context}[:order_by]") unless input[:order_by].nil?
      end
    end

    class ListConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConfigurationsOutput, context: context)
        Configurations.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListServerNeighborsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServerNeighborsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_id], ::String, context: "#{context}[:configuration_id]")
        Hearth::Validator.validate!(input[:port_information_needed], ::TrueClass, ::FalseClass, context: "#{context}[:port_information_needed]")
        ConfigurationIdList.validate!(input[:neighbor_configuration_ids], context: "#{context}[:neighbor_configuration_ids]") unless input[:neighbor_configuration_ids].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListServerNeighborsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServerNeighborsOutput, context: context)
        NeighborDetailsList.validate!(input[:neighbors], context: "#{context}[:neighbors]") unless input[:neighbors].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:known_dependency_count], ::Integer, context: "#{context}[:known_dependency_count]")
      end
    end

    class NeighborConnectionDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NeighborConnectionDetail, context: context)
        Hearth::Validator.validate!(input[:source_server_id], ::String, context: "#{context}[:source_server_id]")
        Hearth::Validator.validate!(input[:destination_server_id], ::String, context: "#{context}[:destination_server_id]")
        Hearth::Validator.validate!(input[:destination_port], ::Integer, context: "#{context}[:destination_port]")
        Hearth::Validator.validate!(input[:transport_protocol], ::String, context: "#{context}[:transport_protocol]")
        Hearth::Validator.validate!(input[:connections_count], ::Integer, context: "#{context}[:connections_count]")
      end
    end

    class NeighborDetailsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NeighborConnectionDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OperationNotPermittedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationNotPermittedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrderByElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrderByElement, context: context)
        Hearth::Validator.validate!(input[:field_name], ::String, context: "#{context}[:field_name]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class OrderByList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OrderByElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SchemaStorageConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ServerInternalErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerInternalErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartContinuousExportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartContinuousExportInput, context: context)
      end
    end

    class StartContinuousExportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartContinuousExportOutput, context: context)
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        SchemaStorageConfig.validate!(input[:schema_storage_config], context: "#{context}[:schema_storage_config]") unless input[:schema_storage_config].nil?
      end
    end

    class StartDataCollectionByAgentIdsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDataCollectionByAgentIdsInput, context: context)
        AgentIds.validate!(input[:agent_ids], context: "#{context}[:agent_ids]") unless input[:agent_ids].nil?
      end
    end

    class StartDataCollectionByAgentIdsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDataCollectionByAgentIdsOutput, context: context)
        AgentConfigurationStatusList.validate!(input[:agents_configuration_status], context: "#{context}[:agents_configuration_status]") unless input[:agents_configuration_status].nil?
      end
    end

    class StartExportTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartExportTaskInput, context: context)
        ExportDataFormats.validate!(input[:export_data_format], context: "#{context}[:export_data_format]") unless input[:export_data_format].nil?
        ExportFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class StartExportTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartExportTaskOutput, context: context)
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
      end
    end

    class StartImportTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImportTaskInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:import_url], ::String, context: "#{context}[:import_url]")
      end
    end

    class StartImportTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImportTaskOutput, context: context)
        ImportTask.validate!(input[:task], context: "#{context}[:task]") unless input[:task].nil?
      end
    end

    class StopContinuousExportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopContinuousExportInput, context: context)
        Hearth::Validator.validate!(input[:export_id], ::String, context: "#{context}[:export_id]")
      end
    end

    class StopContinuousExportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopContinuousExportOutput, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:stop_time], ::Time, context: "#{context}[:stop_time]")
      end
    end

    class StopDataCollectionByAgentIdsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDataCollectionByAgentIdsInput, context: context)
        AgentIds.validate!(input[:agent_ids], context: "#{context}[:agent_ids]") unless input[:agent_ids].nil?
      end
    end

    class StopDataCollectionByAgentIdsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDataCollectionByAgentIdsOutput, context: context)
        AgentConfigurationStatusList.validate!(input[:agents_configuration_status], context: "#{context}[:agents_configuration_status]") unless input[:agents_configuration_status].nil?
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class TagFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TagFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ToDeleteIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UpdateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:configuration_id], ::String, context: "#{context}[:configuration_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationOutput, context: context)
      end
    end

  end
end
