# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::FinspaceData
  module Builders

    # Operation Builder for CreateChangeset
    class CreateChangeset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:dataset_id].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<datasetId>s/changesetsv2',
            datasetId: Hearth::HTTP.uri_escape(input[:dataset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['changeType'] = input[:change_type] unless input[:change_type].nil?
        data['sourceParams'] = Builders::SourceParams.build(input[:source_params]) unless input[:source_params].nil?
        data['formatParams'] = Builders::FormatParams.build(input[:format_params]) unless input[:format_params].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for FormatParams
    class FormatParams
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for SourceParams
    class SourceParams
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDataView
    class CreateDataView
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:dataset_id].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<datasetId>s/dataviewsv2',
            datasetId: Hearth::HTTP.uri_escape(input[:dataset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['autoUpdate'] = input[:auto_update] unless input[:auto_update].nil?
        data['sortColumns'] = Builders::SortColumnList.build(input[:sort_columns]) unless input[:sort_columns].nil?
        data['partitionColumns'] = Builders::PartitionColumnList.build(input[:partition_columns]) unless input[:partition_columns].nil?
        data['asOfTimestamp'] = input[:as_of_timestamp] unless input[:as_of_timestamp].nil?
        data['destinationTypeParams'] = Builders::DataViewDestinationTypeParams.build(input[:destination_type_params]) unless input[:destination_type_params].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DataViewDestinationTypeParams
    class DataViewDestinationTypeParams
      def self.build(input)
        data = {}
        data['destinationType'] = input[:destination_type] unless input[:destination_type].nil?
        data['s3DestinationExportFileFormat'] = input[:s3_destination_export_file_format] unless input[:s3_destination_export_file_format].nil?
        data['s3DestinationExportFileFormatOptions'] = Builders::S3DestinationFormatOptions.build(input[:s3_destination_export_file_format_options]) unless input[:s3_destination_export_file_format_options].nil?
        data
      end
    end

    # Map Builder for S3DestinationFormatOptions
    class S3DestinationFormatOptions
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for PartitionColumnList
    class PartitionColumnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SortColumnList
    class SortColumnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDataset
    class CreateDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/datasetsv2')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['datasetTitle'] = input[:dataset_title] unless input[:dataset_title].nil?
        data['kind'] = input[:kind] unless input[:kind].nil?
        data['datasetDescription'] = input[:dataset_description] unless input[:dataset_description].nil?
        data['ownerInfo'] = Builders::DatasetOwnerInfo.build(input[:owner_info]) unless input[:owner_info].nil?
        data['permissionGroupParams'] = Builders::PermissionGroupParams.build(input[:permission_group_params]) unless input[:permission_group_params].nil?
        data['alias'] = input[:alias] unless input[:alias].nil?
        data['schemaDefinition'] = Builders::SchemaUnion.build(input[:schema_definition]) unless input[:schema_definition].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SchemaUnion
    class SchemaUnion
      def self.build(input)
        data = {}
        data['tabularSchemaConfig'] = Builders::SchemaDefinition.build(input[:tabular_schema_config]) unless input[:tabular_schema_config].nil?
        data
      end
    end

    # Structure Builder for SchemaDefinition
    class SchemaDefinition
      def self.build(input)
        data = {}
        data['columns'] = Builders::ColumnList.build(input[:columns]) unless input[:columns].nil?
        data['primaryKeyColumns'] = Builders::ColumnNameList.build(input[:primary_key_columns]) unless input[:primary_key_columns].nil?
        data
      end
    end

    # List Builder for ColumnNameList
    class ColumnNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ColumnList
    class ColumnList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ColumnDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ColumnDefinition
    class ColumnDefinition
      def self.build(input)
        data = {}
        data['dataType'] = input[:data_type] unless input[:data_type].nil?
        data['columnName'] = input[:column_name] unless input[:column_name].nil?
        data['columnDescription'] = input[:column_description] unless input[:column_description].nil?
        data
      end
    end

    # Structure Builder for PermissionGroupParams
    class PermissionGroupParams
      def self.build(input)
        data = {}
        data['permissionGroupId'] = input[:permission_group_id] unless input[:permission_group_id].nil?
        data['datasetPermissions'] = Builders::ResourcePermissionsList.build(input[:dataset_permissions]) unless input[:dataset_permissions].nil?
        data
      end
    end

    # List Builder for ResourcePermissionsList
    class ResourcePermissionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResourcePermission.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourcePermission
    class ResourcePermission
      def self.build(input)
        data = {}
        data['permission'] = input[:permission] unless input[:permission].nil?
        data
      end
    end

    # Structure Builder for DatasetOwnerInfo
    class DatasetOwnerInfo
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['phoneNumber'] = input[:phone_number] unless input[:phone_number].nil?
        data['email'] = input[:email] unless input[:email].nil?
        data
      end
    end

    # Operation Builder for CreatePermissionGroup
    class CreatePermissionGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/permission-group')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['applicationPermissions'] = Builders::ApplicationPermissionList.build(input[:application_permissions]) unless input[:application_permissions].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ApplicationPermissionList
    class ApplicationPermissionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateUser
    class CreateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/user')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['emailAddress'] = input[:email_address] unless input[:email_address].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['firstName'] = input[:first_name] unless input[:first_name].nil?
        data['lastName'] = input[:last_name] unless input[:last_name].nil?
        data['ApiAccess'] = input[:api_access] unless input[:api_access].nil?
        data['apiAccessPrincipalArn'] = input[:api_access_principal_arn] unless input[:api_access_principal_arn].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDataset
    class DeleteDataset
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:dataset_id].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasetsv2/%<datasetId>s',
            datasetId: Hearth::HTTP.uri_escape(input[:dataset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePermissionGroup
    class DeletePermissionGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:permission_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :permission_group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/permission-group/%<permissionGroupId>s',
            permissionGroupId: Hearth::HTTP.uri_escape(input[:permission_group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisableUser
    class DisableUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/user/%<userId>s/disable',
            userId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableUser
    class EnableUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/user/%<userId>s/enable',
            userId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetChangeset
    class GetChangeset
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:dataset_id].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_id cannot be nil or empty."
        end
        if input[:changeset_id].to_s.empty?
          raise ArgumentError, "HTTP label :changeset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<datasetId>s/changesetsv2/%<changesetId>s',
            datasetId: Hearth::HTTP.uri_escape(input[:dataset_id].to_s),
            changesetId: Hearth::HTTP.uri_escape(input[:changeset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDataView
    class GetDataView
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:data_view_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_view_id cannot be nil or empty."
        end
        if input[:dataset_id].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<datasetId>s/dataviewsv2/%<dataViewId>s',
            dataViewId: Hearth::HTTP.uri_escape(input[:data_view_id].to_s),
            datasetId: Hearth::HTTP.uri_escape(input[:dataset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDataset
    class GetDataset
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:dataset_id].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasetsv2/%<datasetId>s',
            datasetId: Hearth::HTTP.uri_escape(input[:dataset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetProgrammaticAccessCredentials
    class GetProgrammaticAccessCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/credentials/programmatic')
        params = Hearth::Query::ParamList.new
        params['durationInMinutes'] = input[:duration_in_minutes].to_s unless input[:duration_in_minutes].nil?
        params['environmentId'] = input[:environment_id].to_s unless input[:environment_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetUser
    class GetUser
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/user/%<userId>s',
            userId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetWorkingLocation
    class GetWorkingLocation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/workingLocationV1')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['locationType'] = input[:location_type] unless input[:location_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListChangesets
    class ListChangesets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:dataset_id].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<datasetId>s/changesetsv2',
            datasetId: Hearth::HTTP.uri_escape(input[:dataset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDataViews
    class ListDataViews
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:dataset_id].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<datasetId>s/dataviewsv2',
            datasetId: Hearth::HTTP.uri_escape(input[:dataset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDatasets
    class ListDatasets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/datasetsv2')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPermissionGroups
    class ListPermissionGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/permission-group')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListUsers
    class ListUsers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/user')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ResetUserPassword
    class ResetUserPassword
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/user/%<userId>s/password',
            userId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateChangeset
    class UpdateChangeset
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:dataset_id].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_id cannot be nil or empty."
        end
        if input[:changeset_id].to_s.empty?
          raise ArgumentError, "HTTP label :changeset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<datasetId>s/changesetsv2/%<changesetId>s',
            datasetId: Hearth::HTTP.uri_escape(input[:dataset_id].to_s),
            changesetId: Hearth::HTTP.uri_escape(input[:changeset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['sourceParams'] = Builders::SourceParams.build(input[:source_params]) unless input[:source_params].nil?
        data['formatParams'] = Builders::FormatParams.build(input[:format_params]) unless input[:format_params].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDataset
    class UpdateDataset
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:dataset_id].to_s.empty?
          raise ArgumentError, "HTTP label :dataset_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasetsv2/%<datasetId>s',
            datasetId: Hearth::HTTP.uri_escape(input[:dataset_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['datasetTitle'] = input[:dataset_title] unless input[:dataset_title].nil?
        data['kind'] = input[:kind] unless input[:kind].nil?
        data['datasetDescription'] = input[:dataset_description] unless input[:dataset_description].nil?
        data['alias'] = input[:alias] unless input[:alias].nil?
        data['schemaDefinition'] = Builders::SchemaUnion.build(input[:schema_definition]) unless input[:schema_definition].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePermissionGroup
    class UpdatePermissionGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:permission_group_id].to_s.empty?
          raise ArgumentError, "HTTP label :permission_group_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/permission-group/%<permissionGroupId>s',
            permissionGroupId: Hearth::HTTP.uri_escape(input[:permission_group_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['applicationPermissions'] = Builders::ApplicationPermissionList.build(input[:application_permissions]) unless input[:application_permissions].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUser
    class UpdateUser
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:user_id].to_s.empty?
          raise ArgumentError, "HTTP label :user_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/user/%<userId>s',
            userId: Hearth::HTTP.uri_escape(input[:user_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['firstName'] = input[:first_name] unless input[:first_name].nil?
        data['lastName'] = input[:last_name] unless input[:last_name].nil?
        data['apiAccess'] = input[:api_access] unless input[:api_access].nil?
        data['apiAccessPrincipalArn'] = input[:api_access_principal_arn] unless input[:api_access_principal_arn].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
