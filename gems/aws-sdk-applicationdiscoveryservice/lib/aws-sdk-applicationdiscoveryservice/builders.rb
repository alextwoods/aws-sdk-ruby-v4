# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ApplicationDiscoveryService
  module Builders

    # Operation Builder for AssociateConfigurationItemsToApplication
    class AssociateConfigurationItemsToApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.AssociateConfigurationItemsToApplication'
        data = {}
        data['applicationConfigurationId'] = input[:application_configuration_id] unless input[:application_configuration_id].nil?
        data['configurationIds'] = Builders::ConfigurationIdList.build(input[:configuration_ids]) unless input[:configuration_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ConfigurationIdList
    class ConfigurationIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchDeleteImportData
    class BatchDeleteImportData
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.BatchDeleteImportData'
        data = {}
        data['importTaskIds'] = Builders::ToDeleteIdentifierList.build(input[:import_task_ids]) unless input[:import_task_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ToDeleteIdentifierList
    class ToDeleteIdentifierList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateApplication
    class CreateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.CreateApplication'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateTags
    class CreateTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.CreateTags'
        data = {}
        data['configurationIds'] = Builders::ConfigurationIdList.build(input[:configuration_ids]) unless input[:configuration_ids].nil?
        data['tags'] = Builders::TagSet.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagSet
    class TagSet
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for DeleteApplications
    class DeleteApplications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.DeleteApplications'
        data = {}
        data['configurationIds'] = Builders::ApplicationIdsList.build(input[:configuration_ids]) unless input[:configuration_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ApplicationIdsList
    class ApplicationIdsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteTags
    class DeleteTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.DeleteTags'
        data = {}
        data['configurationIds'] = Builders::ConfigurationIdList.build(input[:configuration_ids]) unless input[:configuration_ids].nil?
        data['tags'] = Builders::TagSet.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAgents
    class DescribeAgents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.DescribeAgents'
        data = {}
        data['agentIds'] = Builders::AgentIds.build(input[:agent_ids]) unless input[:agent_ids].nil?
        data['filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Filters
    class Filters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = Builders::FilterValues.build(input[:values]) unless input[:values].nil?
        data['condition'] = input[:condition] unless input[:condition].nil?
        data
      end
    end

    # List Builder for FilterValues
    class FilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for AgentIds
    class AgentIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeConfigurations
    class DescribeConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.DescribeConfigurations'
        data = {}
        data['configurationIds'] = Builders::ConfigurationIdList.build(input[:configuration_ids]) unless input[:configuration_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeContinuousExports
    class DescribeContinuousExports
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.DescribeContinuousExports'
        data = {}
        data['exportIds'] = Builders::ContinuousExportIds.build(input[:export_ids]) unless input[:export_ids].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ContinuousExportIds
    class ContinuousExportIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeExportConfigurations
    class DescribeExportConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.DescribeExportConfigurations'
        data = {}
        data['exportIds'] = Builders::ExportIds.build(input[:export_ids]) unless input[:export_ids].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ExportIds
    class ExportIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeExportTasks
    class DescribeExportTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.DescribeExportTasks'
        data = {}
        data['exportIds'] = Builders::ExportIds.build(input[:export_ids]) unless input[:export_ids].nil?
        data['filters'] = Builders::ExportFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ExportFilters
    class ExportFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ExportFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ExportFilter
    class ExportFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = Builders::FilterValues.build(input[:values]) unless input[:values].nil?
        data['condition'] = input[:condition] unless input[:condition].nil?
        data
      end
    end

    # Operation Builder for DescribeImportTasks
    class DescribeImportTasks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.DescribeImportTasks'
        data = {}
        data['filters'] = Builders::DescribeImportTasksFilterList.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DescribeImportTasksFilterList
    class DescribeImportTasksFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ImportTaskFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ImportTaskFilter
    class ImportTaskFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = Builders::ImportTaskFilterValueList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for ImportTaskFilterValueList
    class ImportTaskFilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeTags
    class DescribeTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.DescribeTags'
        data = {}
        data['filters'] = Builders::TagFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagFilters
    class TagFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TagFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TagFilter
    class TagFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = Builders::FilterValues.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # Operation Builder for DisassociateConfigurationItemsFromApplication
    class DisassociateConfigurationItemsFromApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.DisassociateConfigurationItemsFromApplication'
        data = {}
        data['applicationConfigurationId'] = input[:application_configuration_id] unless input[:application_configuration_id].nil?
        data['configurationIds'] = Builders::ConfigurationIdList.build(input[:configuration_ids]) unless input[:configuration_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExportConfigurations
    class ExportConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.ExportConfigurations'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDiscoverySummary
    class GetDiscoverySummary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.GetDiscoverySummary'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListConfigurations
    class ListConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.ListConfigurations'
        data = {}
        data['configurationType'] = input[:configuration_type] unless input[:configuration_type].nil?
        data['filters'] = Builders::Filters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['orderBy'] = Builders::OrderByList.build(input[:order_by]) unless input[:order_by].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for OrderByList
    class OrderByList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::OrderByElement.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for OrderByElement
    class OrderByElement
      def self.build(input)
        data = {}
        data['fieldName'] = input[:field_name] unless input[:field_name].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data
      end
    end

    # Operation Builder for ListServerNeighbors
    class ListServerNeighbors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.ListServerNeighbors'
        data = {}
        data['configurationId'] = input[:configuration_id] unless input[:configuration_id].nil?
        data['portInformationNeeded'] = input[:port_information_needed] unless input[:port_information_needed].nil?
        data['neighborConfigurationIds'] = Builders::ConfigurationIdList.build(input[:neighbor_configuration_ids]) unless input[:neighbor_configuration_ids].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartContinuousExport
    class StartContinuousExport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.StartContinuousExport'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartDataCollectionByAgentIds
    class StartDataCollectionByAgentIds
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.StartDataCollectionByAgentIds'
        data = {}
        data['agentIds'] = Builders::AgentIds.build(input[:agent_ids]) unless input[:agent_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartExportTask
    class StartExportTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.StartExportTask'
        data = {}
        data['exportDataFormat'] = Builders::ExportDataFormats.build(input[:export_data_format]) unless input[:export_data_format].nil?
        data['filters'] = Builders::ExportFilters.build(input[:filters]) unless input[:filters].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ExportDataFormats
    class ExportDataFormats
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartImportTask
    class StartImportTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.StartImportTask'
        data = {}
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['importUrl'] = input[:import_url] unless input[:import_url].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopContinuousExport
    class StopContinuousExport
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.StopContinuousExport'
        data = {}
        data['exportId'] = input[:export_id] unless input[:export_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopDataCollectionByAgentIds
    class StopDataCollectionByAgentIds
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.StopDataCollectionByAgentIds'
        data = {}
        data['agentIds'] = Builders::AgentIds.build(input[:agent_ids]) unless input[:agent_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateApplication
    class UpdateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSPoseidonService_V2015_11_01.UpdateApplication'
        data = {}
        data['configurationId'] = input[:configuration_id] unless input[:configuration_id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
