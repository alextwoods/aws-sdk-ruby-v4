# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::M2
  module Builders

    # Operation Builder for CancelBatchJobExecution
    class CancelBatchJobExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:execution_id].to_s.empty?
          raise ArgumentError, "HTTP label :execution_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/batch-job-executions/%<executionId>s/cancel',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            executionId: Hearth::HTTP.uri_escape(input[:execution_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateApplication
    class CreateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/applications')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['engineType'] = input[:engine_type] unless input[:engine_type].nil?
        data['definition'] = Definition.build(input[:definition]) unless input[:definition].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Definition
    class Definition
      def self.build(input)
        data = {}
        case input
        when Types::Definition::S3Location
          data['s3Location'] = input
        when Types::Definition::Content
          data['content'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::Definition"
        end

        data
      end
    end

    # Operation Builder for CreateDataSetImportTask
    class CreateDataSetImportTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/dataset-import-task',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['importConfig'] = DataSetImportConfig.build(input[:import_config]) unless input[:import_config].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DataSetImportConfig
    class DataSetImportConfig
      def self.build(input)
        data = {}
        case input
        when Types::DataSetImportConfig::S3Location
          data['s3Location'] = input
        when Types::DataSetImportConfig::DataSets
          data['dataSets'] = (DataSetImportList.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::DataSetImportConfig"
        end

        data
      end
    end

    # List Builder for DataSetImportList
    class DataSetImportList
      def self.build(input)
        data = []
        input.each do |element|
          data << DataSetImportItem.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DataSetImportItem
    class DataSetImportItem
      def self.build(input)
        data = {}
        data['dataSet'] = DataSet.build(input[:data_set]) unless input[:data_set].nil?
        data['externalLocation'] = ExternalLocation.build(input[:external_location]) unless input[:external_location].nil?
        data
      end
    end

    # Structure Builder for ExternalLocation
    class ExternalLocation
      def self.build(input)
        data = {}
        case input
        when Types::ExternalLocation::S3Location
          data['s3Location'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ExternalLocation"
        end

        data
      end
    end

    # Structure Builder for DataSet
    class DataSet
      def self.build(input)
        data = {}
        data['storageType'] = input[:storage_type] unless input[:storage_type].nil?
        data['datasetName'] = input[:dataset_name] unless input[:dataset_name].nil?
        data['datasetOrg'] = DatasetOrgAttributes.build(input[:dataset_org]) unless input[:dataset_org].nil?
        data['relativePath'] = input[:relative_path] unless input[:relative_path].nil?
        data['recordLength'] = RecordLength.build(input[:record_length]) unless input[:record_length].nil?
        data
      end
    end

    # Structure Builder for RecordLength
    class RecordLength
      def self.build(input)
        data = {}
        data['min'] = input[:min] unless input[:min].nil?
        data['max'] = input[:max] unless input[:max].nil?
        data
      end
    end

    # Structure Builder for DatasetOrgAttributes
    class DatasetOrgAttributes
      def self.build(input)
        data = {}
        case input
        when Types::DatasetOrgAttributes::Vsam
          data['vsam'] = (VsamAttributes.build(input) unless input.nil?)
        when Types::DatasetOrgAttributes::Gdg
          data['gdg'] = (GdgAttributes.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::DatasetOrgAttributes"
        end

        data
      end
    end

    # Structure Builder for GdgAttributes
    class GdgAttributes
      def self.build(input)
        data = {}
        data['limit'] = input[:limit] unless input[:limit].nil?
        data['rollDisposition'] = input[:roll_disposition] unless input[:roll_disposition].nil?
        data
      end
    end

    # Structure Builder for VsamAttributes
    class VsamAttributes
      def self.build(input)
        data = {}
        data['format'] = input[:format] unless input[:format].nil?
        data['encoding'] = input[:encoding] unless input[:encoding].nil?
        data['compressed'] = input[:compressed] unless input[:compressed].nil?
        data['primaryKey'] = PrimaryKey.build(input[:primary_key]) unless input[:primary_key].nil?
        data['alternateKeys'] = AlternateKeyList.build(input[:alternate_keys]) unless input[:alternate_keys].nil?
        data
      end
    end

    # List Builder for AlternateKeyList
    class AlternateKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << AlternateKey.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AlternateKey
    class AlternateKey
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['offset'] = input[:offset] unless input[:offset].nil?
        data['length'] = input[:length] unless input[:length].nil?
        data['allowDuplicates'] = input[:allow_duplicates] unless input[:allow_duplicates].nil?
        data
      end
    end

    # Structure Builder for PrimaryKey
    class PrimaryKey
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['offset'] = input[:offset] unless input[:offset].nil?
        data['length'] = input[:length] unless input[:length].nil?
        data
      end
    end

    # Operation Builder for CreateDeployment
    class CreateDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/deployments',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['environmentId'] = input[:environment_id] unless input[:environment_id].nil?
        data['applicationVersion'] = input[:application_version] unless input[:application_version].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateEnvironment
    class CreateEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/environments')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['instanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['engineType'] = input[:engine_type] unless input[:engine_type].nil?
        data['engineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['subnetIds'] = String50List.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['securityGroupIds'] = String50List.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['storageConfigurations'] = StorageConfigurationList.build(input[:storage_configurations]) unless input[:storage_configurations].nil?
        data['publiclyAccessible'] = input[:publicly_accessible] unless input[:publicly_accessible].nil?
        data['highAvailabilityConfig'] = HighAvailabilityConfig.build(input[:high_availability_config]) unless input[:high_availability_config].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['preferredMaintenanceWindow'] = input[:preferred_maintenance_window] unless input[:preferred_maintenance_window].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for HighAvailabilityConfig
    class HighAvailabilityConfig
      def self.build(input)
        data = {}
        data['desiredCapacity'] = input[:desired_capacity] unless input[:desired_capacity].nil?
        data
      end
    end

    # List Builder for StorageConfigurationList
    class StorageConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << StorageConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StorageConfiguration
    class StorageConfiguration
      def self.build(input)
        data = {}
        case input
        when Types::StorageConfiguration::Efs
          data['efs'] = (EfsStorageConfiguration.build(input) unless input.nil?)
        when Types::StorageConfiguration::Fsx
          data['fsx'] = (FsxStorageConfiguration.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::StorageConfiguration"
        end

        data
      end
    end

    # Structure Builder for FsxStorageConfiguration
    class FsxStorageConfiguration
      def self.build(input)
        data = {}
        data['file-system-id'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['mount-point'] = input[:mount_point] unless input[:mount_point].nil?
        data
      end
    end

    # Structure Builder for EfsStorageConfiguration
    class EfsStorageConfiguration
      def self.build(input)
        data = {}
        data['file-system-id'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['mount-point'] = input[:mount_point] unless input[:mount_point].nil?
        data
      end
    end

    # List Builder for String50List
    class String50List
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteApplication
    class DeleteApplication
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteApplicationFromEnvironment
    class DeleteApplicationFromEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:environment_id].to_s.empty?
          raise ArgumentError, "HTTP label :environment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/environment/%<environmentId>s',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            environmentId: Hearth::HTTP.uri_escape(input[:environment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteEnvironment
    class DeleteEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:environment_id].to_s.empty?
          raise ArgumentError, "HTTP label :environment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<environmentId>s',
            environmentId: Hearth::HTTP.uri_escape(input[:environment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApplication
    class GetApplication
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApplicationVersion
    class GetApplicationVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:application_version].to_s.empty?
          raise ArgumentError, "HTTP label :application_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/versions/%<applicationVersion>s',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            applicationVersion: Hearth::HTTP.uri_escape(input[:application_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBatchJobExecution
    class GetBatchJobExecution
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:execution_id].to_s.empty?
          raise ArgumentError, "HTTP label :execution_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/batch-job-executions/%<executionId>s',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            executionId: Hearth::HTTP.uri_escape(input[:execution_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDataSetDetails
    class GetDataSetDetails
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:data_set_name].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/datasets/%<dataSetName>s',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            dataSetName: Hearth::HTTP.uri_escape(input[:data_set_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDataSetImportTask
    class GetDataSetImportTask
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        if input[:task_id].to_s.empty?
          raise ArgumentError, "HTTP label :task_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/dataset-import-tasks/%<taskId>s',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s),
            taskId: Hearth::HTTP.uri_escape(input[:task_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDeployment
    class GetDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:deployment_id].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_id cannot be nil or empty."
        end
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/deployments/%<deploymentId>s',
            deploymentId: Hearth::HTTP.uri_escape(input[:deployment_id].to_s),
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEnvironment
    class GetEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:environment_id].to_s.empty?
          raise ArgumentError, "HTTP label :environment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<environmentId>s',
            environmentId: Hearth::HTTP.uri_escape(input[:environment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListApplicationVersions
    class ListApplicationVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/versions',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListApplications
    class ListApplications
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/applications')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        unless input[:names].nil? || input[:names].empty?
          params['names'] = input[:names].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['environmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for EntityNameList
    class EntityNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListBatchJobDefinitions
    class ListBatchJobDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/batch-job-definitions',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['prefix'] = input[:prefix].to_s unless input[:prefix].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBatchJobExecutions
    class ListBatchJobExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/batch-job-executions',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        unless input[:execution_ids].nil? || input[:execution_ids].empty?
          params['executionIds'] = input[:execution_ids].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['jobName'] = input[:job_name].to_s unless input[:job_name].nil?
        params['status'] = input[:status].to_s unless input[:status].nil?
        params['startedAfter'] = Hearth::TimeHelper.to_date_time(input[:started_after]) unless input[:started_after].nil?
        params['startedBefore'] = Hearth::TimeHelper.to_date_time(input[:started_before]) unless input[:started_before].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for IdentifierList
    class IdentifierList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListDataSetImportHistory
    class ListDataSetImportHistory
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/dataset-import-tasks',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDataSets
    class ListDataSets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/datasets',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['prefix'] = input[:prefix].to_s unless input[:prefix].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDeployments
    class ListDeployments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/deployments',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEngineVersions
    class ListEngineVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/engine-versions')
        params = Hearth::Query::ParamList.new
        params['engineType'] = input[:engine_type].to_s unless input[:engine_type].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEnvironments
    class ListEnvironments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/environments')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        unless input[:names].nil? || input[:names].empty?
          params['names'] = input[:names].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['engineType'] = input[:engine_type].to_s unless input[:engine_type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartApplication
    class StartApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/start',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartBatchJob
    class StartBatchJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/batch-job',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['batchJobIdentifier'] = BatchJobIdentifier.build(input[:batch_job_identifier]) unless input[:batch_job_identifier].nil?
        data['jobParams'] = BatchJobParametersMap.build(input[:job_params]) unless input[:job_params].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for BatchJobParametersMap
    class BatchJobParametersMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for BatchJobIdentifier
    class BatchJobIdentifier
      def self.build(input)
        data = {}
        case input
        when Types::BatchJobIdentifier::FileBatchJobIdentifier
          data['fileBatchJobIdentifier'] = (FileBatchJobIdentifier.build(input) unless input.nil?)
        when Types::BatchJobIdentifier::ScriptBatchJobIdentifier
          data['scriptBatchJobIdentifier'] = (ScriptBatchJobIdentifier.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::BatchJobIdentifier"
        end

        data
      end
    end

    # Structure Builder for ScriptBatchJobIdentifier
    class ScriptBatchJobIdentifier
      def self.build(input)
        data = {}
        data['scriptName'] = input[:script_name] unless input[:script_name].nil?
        data
      end
    end

    # Structure Builder for FileBatchJobIdentifier
    class FileBatchJobIdentifier
      def self.build(input)
        data = {}
        data['fileName'] = input[:file_name] unless input[:file_name].nil?
        data['folderPath'] = input[:folder_path] unless input[:folder_path].nil?
        data
      end
    end

    # Operation Builder for StopApplication
    class StopApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s/stop',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['forceStop'] = input[:force_stop] unless input[:force_stop].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateApplication
    class UpdateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:application_id].to_s.empty?
          raise ArgumentError, "HTTP label :application_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/applications/%<applicationId>s',
            applicationId: Hearth::HTTP.uri_escape(input[:application_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['currentApplicationVersion'] = input[:current_application_version] unless input[:current_application_version].nil?
        data['definition'] = Definition.build(input[:definition]) unless input[:definition].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEnvironment
    class UpdateEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:environment_id].to_s.empty?
          raise ArgumentError, "HTTP label :environment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<environmentId>s',
            environmentId: Hearth::HTTP.uri_escape(input[:environment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['desiredCapacity'] = input[:desired_capacity] unless input[:desired_capacity].nil?
        data['instanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['engineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['preferredMaintenanceWindow'] = input[:preferred_maintenance_window] unless input[:preferred_maintenance_window].nil?
        data['applyDuringMaintenanceWindow'] = input[:apply_during_maintenance_window] unless input[:apply_during_maintenance_window].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
