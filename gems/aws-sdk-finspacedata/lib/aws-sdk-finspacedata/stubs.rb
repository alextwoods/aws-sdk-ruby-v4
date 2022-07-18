# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::FinspaceData
  module Stubs

    # Operation Stubber for CreateChangeset
    class CreateChangeset
      def self.default(visited=[])
        {
          dataset_id: 'dataset_id',
          changeset_id: 'changeset_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['datasetId'] = stub[:dataset_id] unless stub[:dataset_id].nil?
        data['changesetId'] = stub[:changeset_id] unless stub[:changeset_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDataView
    class CreateDataView
      def self.default(visited=[])
        {
          dataset_id: 'dataset_id',
          data_view_id: 'data_view_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['datasetId'] = stub[:dataset_id] unless stub[:dataset_id].nil?
        data['dataViewId'] = stub[:data_view_id] unless stub[:data_view_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDataset
    class CreateDataset
      def self.default(visited=[])
        {
          dataset_id: 'dataset_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['datasetId'] = stub[:dataset_id] unless stub[:dataset_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreatePermissionGroup
    class CreatePermissionGroup
      def self.default(visited=[])
        {
          permission_group_id: 'permission_group_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['permissionGroupId'] = stub[:permission_group_id] unless stub[:permission_group_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateUser
    class CreateUser
      def self.default(visited=[])
        {
          user_id: 'user_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['userId'] = stub[:user_id] unless stub[:user_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDataset
    class DeleteDataset
      def self.default(visited=[])
        {
          dataset_id: 'dataset_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['datasetId'] = stub[:dataset_id] unless stub[:dataset_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeletePermissionGroup
    class DeletePermissionGroup
      def self.default(visited=[])
        {
          permission_group_id: 'permission_group_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['permissionGroupId'] = stub[:permission_group_id] unless stub[:permission_group_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisableUser
    class DisableUser
      def self.default(visited=[])
        {
          user_id: 'user_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['userId'] = stub[:user_id] unless stub[:user_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for EnableUser
    class EnableUser
      def self.default(visited=[])
        {
          user_id: 'user_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['userId'] = stub[:user_id] unless stub[:user_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetChangeset
    class GetChangeset
      def self.default(visited=[])
        {
          changeset_id: 'changeset_id',
          changeset_arn: 'changeset_arn',
          dataset_id: 'dataset_id',
          change_type: 'change_type',
          source_params: SourceParams.default(visited),
          format_params: FormatParams.default(visited),
          create_time: 1,
          status: 'status',
          error_info: ChangesetErrorInfo.default(visited),
          active_until_timestamp: 1,
          active_from_timestamp: 1,
          updates_changeset_id: 'updates_changeset_id',
          updated_by_changeset_id: 'updated_by_changeset_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['changesetId'] = stub[:changeset_id] unless stub[:changeset_id].nil?
        data['changesetArn'] = stub[:changeset_arn] unless stub[:changeset_arn].nil?
        data['datasetId'] = stub[:dataset_id] unless stub[:dataset_id].nil?
        data['changeType'] = stub[:change_type] unless stub[:change_type].nil?
        data['sourceParams'] = Stubs::SourceParams.stub(stub[:source_params]) unless stub[:source_params].nil?
        data['formatParams'] = Stubs::FormatParams.stub(stub[:format_params]) unless stub[:format_params].nil?
        data['createTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['errorInfo'] = Stubs::ChangesetErrorInfo.stub(stub[:error_info]) unless stub[:error_info].nil?
        data['activeUntilTimestamp'] = stub[:active_until_timestamp] unless stub[:active_until_timestamp].nil?
        data['activeFromTimestamp'] = stub[:active_from_timestamp] unless stub[:active_from_timestamp].nil?
        data['updatesChangesetId'] = stub[:updates_changeset_id] unless stub[:updates_changeset_id].nil?
        data['updatedByChangesetId'] = stub[:updated_by_changeset_id] unless stub[:updated_by_changeset_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ChangesetErrorInfo
    class ChangesetErrorInfo
      def self.default(visited=[])
        return nil if visited.include?('ChangesetErrorInfo')
        visited = visited + ['ChangesetErrorInfo']
        {
          error_message: 'error_message',
          error_category: 'error_category',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChangesetErrorInfo.new
        data = {}
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['errorCategory'] = stub[:error_category] unless stub[:error_category].nil?
        data
      end
    end

    # Map Stubber for FormatParams
    class FormatParams
      def self.default(visited=[])
        return nil if visited.include?('FormatParams')
        visited = visited + ['FormatParams']
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

    # Map Stubber for SourceParams
    class SourceParams
      def self.default(visited=[])
        return nil if visited.include?('SourceParams')
        visited = visited + ['SourceParams']
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

    # Operation Stubber for GetDataView
    class GetDataView
      def self.default(visited=[])
        {
          auto_update: false,
          partition_columns: PartitionColumnList.default(visited),
          dataset_id: 'dataset_id',
          as_of_timestamp: 1,
          error_info: DataViewErrorInfo.default(visited),
          last_modified_time: 1,
          create_time: 1,
          sort_columns: SortColumnList.default(visited),
          data_view_id: 'data_view_id',
          data_view_arn: 'data_view_arn',
          destination_type_params: DataViewDestinationTypeParams.default(visited),
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['autoUpdate'] = stub[:auto_update] unless stub[:auto_update].nil?
        data['partitionColumns'] = Stubs::PartitionColumnList.stub(stub[:partition_columns]) unless stub[:partition_columns].nil?
        data['datasetId'] = stub[:dataset_id] unless stub[:dataset_id].nil?
        data['asOfTimestamp'] = stub[:as_of_timestamp] unless stub[:as_of_timestamp].nil?
        data['errorInfo'] = Stubs::DataViewErrorInfo.stub(stub[:error_info]) unless stub[:error_info].nil?
        data['lastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        data['createTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['sortColumns'] = Stubs::SortColumnList.stub(stub[:sort_columns]) unless stub[:sort_columns].nil?
        data['dataViewId'] = stub[:data_view_id] unless stub[:data_view_id].nil?
        data['dataViewArn'] = stub[:data_view_arn] unless stub[:data_view_arn].nil?
        data['destinationTypeParams'] = Stubs::DataViewDestinationTypeParams.stub(stub[:destination_type_params]) unless stub[:destination_type_params].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DataViewDestinationTypeParams
    class DataViewDestinationTypeParams
      def self.default(visited=[])
        return nil if visited.include?('DataViewDestinationTypeParams')
        visited = visited + ['DataViewDestinationTypeParams']
        {
          destination_type: 'destination_type',
          s3_destination_export_file_format: 's3_destination_export_file_format',
          s3_destination_export_file_format_options: S3DestinationFormatOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataViewDestinationTypeParams.new
        data = {}
        data['destinationType'] = stub[:destination_type] unless stub[:destination_type].nil?
        data['s3DestinationExportFileFormat'] = stub[:s3_destination_export_file_format] unless stub[:s3_destination_export_file_format].nil?
        data['s3DestinationExportFileFormatOptions'] = Stubs::S3DestinationFormatOptions.stub(stub[:s3_destination_export_file_format_options]) unless stub[:s3_destination_export_file_format_options].nil?
        data
      end
    end

    # Map Stubber for S3DestinationFormatOptions
    class S3DestinationFormatOptions
      def self.default(visited=[])
        return nil if visited.include?('S3DestinationFormatOptions')
        visited = visited + ['S3DestinationFormatOptions']
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

    # List Stubber for SortColumnList
    class SortColumnList
      def self.default(visited=[])
        return nil if visited.include?('SortColumnList')
        visited = visited + ['SortColumnList']
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

    # Structure Stubber for DataViewErrorInfo
    class DataViewErrorInfo
      def self.default(visited=[])
        return nil if visited.include?('DataViewErrorInfo')
        visited = visited + ['DataViewErrorInfo']
        {
          error_message: 'error_message',
          error_category: 'error_category',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataViewErrorInfo.new
        data = {}
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['errorCategory'] = stub[:error_category] unless stub[:error_category].nil?
        data
      end
    end

    # List Stubber for PartitionColumnList
    class PartitionColumnList
      def self.default(visited=[])
        return nil if visited.include?('PartitionColumnList')
        visited = visited + ['PartitionColumnList']
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

    # Operation Stubber for GetDataset
    class GetDataset
      def self.default(visited=[])
        {
          dataset_id: 'dataset_id',
          dataset_arn: 'dataset_arn',
          dataset_title: 'dataset_title',
          kind: 'kind',
          dataset_description: 'dataset_description',
          create_time: 1,
          last_modified_time: 1,
          schema_definition: SchemaUnion.default(visited),
          alias: 'alias',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['datasetId'] = stub[:dataset_id] unless stub[:dataset_id].nil?
        data['datasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['datasetTitle'] = stub[:dataset_title] unless stub[:dataset_title].nil?
        data['kind'] = stub[:kind] unless stub[:kind].nil?
        data['datasetDescription'] = stub[:dataset_description] unless stub[:dataset_description].nil?
        data['createTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['lastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        data['schemaDefinition'] = Stubs::SchemaUnion.stub(stub[:schema_definition]) unless stub[:schema_definition].nil?
        data['alias'] = stub[:alias] unless stub[:alias].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SchemaUnion
    class SchemaUnion
      def self.default(visited=[])
        return nil if visited.include?('SchemaUnion')
        visited = visited + ['SchemaUnion']
        {
          tabular_schema_config: SchemaDefinition.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaUnion.new
        data = {}
        data['tabularSchemaConfig'] = Stubs::SchemaDefinition.stub(stub[:tabular_schema_config]) unless stub[:tabular_schema_config].nil?
        data
      end
    end

    # Structure Stubber for SchemaDefinition
    class SchemaDefinition
      def self.default(visited=[])
        return nil if visited.include?('SchemaDefinition')
        visited = visited + ['SchemaDefinition']
        {
          columns: ColumnList.default(visited),
          primary_key_columns: ColumnNameList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaDefinition.new
        data = {}
        data['columns'] = Stubs::ColumnList.stub(stub[:columns]) unless stub[:columns].nil?
        data['primaryKeyColumns'] = Stubs::ColumnNameList.stub(stub[:primary_key_columns]) unless stub[:primary_key_columns].nil?
        data
      end
    end

    # List Stubber for ColumnNameList
    class ColumnNameList
      def self.default(visited=[])
        return nil if visited.include?('ColumnNameList')
        visited = visited + ['ColumnNameList']
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

    # List Stubber for ColumnList
    class ColumnList
      def self.default(visited=[])
        return nil if visited.include?('ColumnList')
        visited = visited + ['ColumnList']
        [
          ColumnDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ColumnDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnDefinition
    class ColumnDefinition
      def self.default(visited=[])
        return nil if visited.include?('ColumnDefinition')
        visited = visited + ['ColumnDefinition']
        {
          data_type: 'data_type',
          column_name: 'column_name',
          column_description: 'column_description',
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnDefinition.new
        data = {}
        data['dataType'] = stub[:data_type] unless stub[:data_type].nil?
        data['columnName'] = stub[:column_name] unless stub[:column_name].nil?
        data['columnDescription'] = stub[:column_description] unless stub[:column_description].nil?
        data
      end
    end

    # Operation Stubber for GetProgrammaticAccessCredentials
    class GetProgrammaticAccessCredentials
      def self.default(visited=[])
        {
          credentials: Credentials.default(visited),
          duration_in_minutes: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['credentials'] = Stubs::Credentials.stub(stub[:credentials]) unless stub[:credentials].nil?
        data['durationInMinutes'] = stub[:duration_in_minutes] unless stub[:duration_in_minutes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Credentials
    class Credentials
      def self.default(visited=[])
        return nil if visited.include?('Credentials')
        visited = visited + ['Credentials']
        {
          access_key_id: 'access_key_id',
          secret_access_key: 'secret_access_key',
          session_token: 'session_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::Credentials.new
        data = {}
        data['accessKeyId'] = stub[:access_key_id] unless stub[:access_key_id].nil?
        data['secretAccessKey'] = stub[:secret_access_key] unless stub[:secret_access_key].nil?
        data['sessionToken'] = stub[:session_token] unless stub[:session_token].nil?
        data
      end
    end

    # Operation Stubber for GetUser
    class GetUser
      def self.default(visited=[])
        {
          user_id: 'user_id',
          status: 'status',
          first_name: 'first_name',
          last_name: 'last_name',
          email_address: 'email_address',
          type: 'type',
          api_access: 'api_access',
          api_access_principal_arn: 'api_access_principal_arn',
          create_time: 1,
          last_enabled_time: 1,
          last_disabled_time: 1,
          last_modified_time: 1,
          last_login_time: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['userId'] = stub[:user_id] unless stub[:user_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['firstName'] = stub[:first_name] unless stub[:first_name].nil?
        data['lastName'] = stub[:last_name] unless stub[:last_name].nil?
        data['emailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['apiAccess'] = stub[:api_access] unless stub[:api_access].nil?
        data['apiAccessPrincipalArn'] = stub[:api_access_principal_arn] unless stub[:api_access_principal_arn].nil?
        data['createTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['lastEnabledTime'] = stub[:last_enabled_time] unless stub[:last_enabled_time].nil?
        data['lastDisabledTime'] = stub[:last_disabled_time] unless stub[:last_disabled_time].nil?
        data['lastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        data['lastLoginTime'] = stub[:last_login_time] unless stub[:last_login_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetWorkingLocation
    class GetWorkingLocation
      def self.default(visited=[])
        {
          s3_uri: 's3_uri',
          s3_path: 's3_path',
          s3_bucket: 's3_bucket',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['s3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['s3Path'] = stub[:s3_path] unless stub[:s3_path].nil?
        data['s3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListChangesets
    class ListChangesets
      def self.default(visited=[])
        {
          changesets: ChangesetList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['changesets'] = Stubs::ChangesetList.stub(stub[:changesets]) unless stub[:changesets].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ChangesetList
    class ChangesetList
      def self.default(visited=[])
        return nil if visited.include?('ChangesetList')
        visited = visited + ['ChangesetList']
        [
          ChangesetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChangesetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChangesetSummary
    class ChangesetSummary
      def self.default(visited=[])
        return nil if visited.include?('ChangesetSummary')
        visited = visited + ['ChangesetSummary']
        {
          changeset_id: 'changeset_id',
          changeset_arn: 'changeset_arn',
          dataset_id: 'dataset_id',
          change_type: 'change_type',
          source_params: SourceParams.default(visited),
          format_params: FormatParams.default(visited),
          create_time: 1,
          status: 'status',
          error_info: ChangesetErrorInfo.default(visited),
          active_until_timestamp: 1,
          active_from_timestamp: 1,
          updates_changeset_id: 'updates_changeset_id',
          updated_by_changeset_id: 'updated_by_changeset_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChangesetSummary.new
        data = {}
        data['changesetId'] = stub[:changeset_id] unless stub[:changeset_id].nil?
        data['changesetArn'] = stub[:changeset_arn] unless stub[:changeset_arn].nil?
        data['datasetId'] = stub[:dataset_id] unless stub[:dataset_id].nil?
        data['changeType'] = stub[:change_type] unless stub[:change_type].nil?
        data['sourceParams'] = Stubs::SourceParams.stub(stub[:source_params]) unless stub[:source_params].nil?
        data['formatParams'] = Stubs::FormatParams.stub(stub[:format_params]) unless stub[:format_params].nil?
        data['createTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['errorInfo'] = Stubs::ChangesetErrorInfo.stub(stub[:error_info]) unless stub[:error_info].nil?
        data['activeUntilTimestamp'] = stub[:active_until_timestamp] unless stub[:active_until_timestamp].nil?
        data['activeFromTimestamp'] = stub[:active_from_timestamp] unless stub[:active_from_timestamp].nil?
        data['updatesChangesetId'] = stub[:updates_changeset_id] unless stub[:updates_changeset_id].nil?
        data['updatedByChangesetId'] = stub[:updated_by_changeset_id] unless stub[:updated_by_changeset_id].nil?
        data
      end
    end

    # Operation Stubber for ListDataViews
    class ListDataViews
      def self.default(visited=[])
        {
          next_token: 'next_token',
          data_views: DataViewList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['dataViews'] = Stubs::DataViewList.stub(stub[:data_views]) unless stub[:data_views].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DataViewList
    class DataViewList
      def self.default(visited=[])
        return nil if visited.include?('DataViewList')
        visited = visited + ['DataViewList']
        [
          DataViewSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataViewSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataViewSummary
    class DataViewSummary
      def self.default(visited=[])
        return nil if visited.include?('DataViewSummary')
        visited = visited + ['DataViewSummary']
        {
          data_view_id: 'data_view_id',
          data_view_arn: 'data_view_arn',
          dataset_id: 'dataset_id',
          as_of_timestamp: 1,
          partition_columns: PartitionColumnList.default(visited),
          sort_columns: SortColumnList.default(visited),
          status: 'status',
          error_info: DataViewErrorInfo.default(visited),
          destination_type_properties: DataViewDestinationTypeParams.default(visited),
          auto_update: false,
          create_time: 1,
          last_modified_time: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataViewSummary.new
        data = {}
        data['dataViewId'] = stub[:data_view_id] unless stub[:data_view_id].nil?
        data['dataViewArn'] = stub[:data_view_arn] unless stub[:data_view_arn].nil?
        data['datasetId'] = stub[:dataset_id] unless stub[:dataset_id].nil?
        data['asOfTimestamp'] = stub[:as_of_timestamp] unless stub[:as_of_timestamp].nil?
        data['partitionColumns'] = Stubs::PartitionColumnList.stub(stub[:partition_columns]) unless stub[:partition_columns].nil?
        data['sortColumns'] = Stubs::SortColumnList.stub(stub[:sort_columns]) unless stub[:sort_columns].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['errorInfo'] = Stubs::DataViewErrorInfo.stub(stub[:error_info]) unless stub[:error_info].nil?
        data['destinationTypeProperties'] = Stubs::DataViewDestinationTypeParams.stub(stub[:destination_type_properties]) unless stub[:destination_type_properties].nil?
        data['autoUpdate'] = stub[:auto_update] unless stub[:auto_update].nil?
        data['createTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['lastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for ListDatasets
    class ListDatasets
      def self.default(visited=[])
        {
          datasets: DatasetList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['datasets'] = Stubs::DatasetList.stub(stub[:datasets]) unless stub[:datasets].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DatasetList
    class DatasetList
      def self.default(visited=[])
        return nil if visited.include?('DatasetList')
        visited = visited + ['DatasetList']
        [
          Dataset.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Dataset.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Dataset
    class Dataset
      def self.default(visited=[])
        return nil if visited.include?('Dataset')
        visited = visited + ['Dataset']
        {
          dataset_id: 'dataset_id',
          dataset_arn: 'dataset_arn',
          dataset_title: 'dataset_title',
          kind: 'kind',
          dataset_description: 'dataset_description',
          owner_info: DatasetOwnerInfo.default(visited),
          create_time: 1,
          last_modified_time: 1,
          schema_definition: SchemaUnion.default(visited),
          alias: 'alias',
        }
      end

      def self.stub(stub)
        stub ||= Types::Dataset.new
        data = {}
        data['datasetId'] = stub[:dataset_id] unless stub[:dataset_id].nil?
        data['datasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['datasetTitle'] = stub[:dataset_title] unless stub[:dataset_title].nil?
        data['kind'] = stub[:kind] unless stub[:kind].nil?
        data['datasetDescription'] = stub[:dataset_description] unless stub[:dataset_description].nil?
        data['ownerInfo'] = Stubs::DatasetOwnerInfo.stub(stub[:owner_info]) unless stub[:owner_info].nil?
        data['createTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['lastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        data['schemaDefinition'] = Stubs::SchemaUnion.stub(stub[:schema_definition]) unless stub[:schema_definition].nil?
        data['alias'] = stub[:alias] unless stub[:alias].nil?
        data
      end
    end

    # Structure Stubber for DatasetOwnerInfo
    class DatasetOwnerInfo
      def self.default(visited=[])
        return nil if visited.include?('DatasetOwnerInfo')
        visited = visited + ['DatasetOwnerInfo']
        {
          name: 'name',
          phone_number: 'phone_number',
          email: 'email',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetOwnerInfo.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['phoneNumber'] = stub[:phone_number] unless stub[:phone_number].nil?
        data['email'] = stub[:email] unless stub[:email].nil?
        data
      end
    end

    # Operation Stubber for ListPermissionGroups
    class ListPermissionGroups
      def self.default(visited=[])
        {
          permission_groups: PermissionGroupList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['permissionGroups'] = Stubs::PermissionGroupList.stub(stub[:permission_groups]) unless stub[:permission_groups].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PermissionGroupList
    class PermissionGroupList
      def self.default(visited=[])
        return nil if visited.include?('PermissionGroupList')
        visited = visited + ['PermissionGroupList']
        [
          PermissionGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PermissionGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PermissionGroup
    class PermissionGroup
      def self.default(visited=[])
        return nil if visited.include?('PermissionGroup')
        visited = visited + ['PermissionGroup']
        {
          permission_group_id: 'permission_group_id',
          name: 'name',
          description: 'description',
          application_permissions: ApplicationPermissionList.default(visited),
          create_time: 1,
          last_modified_time: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PermissionGroup.new
        data = {}
        data['permissionGroupId'] = stub[:permission_group_id] unless stub[:permission_group_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['applicationPermissions'] = Stubs::ApplicationPermissionList.stub(stub[:application_permissions]) unless stub[:application_permissions].nil?
        data['createTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['lastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        data
      end
    end

    # List Stubber for ApplicationPermissionList
    class ApplicationPermissionList
      def self.default(visited=[])
        return nil if visited.include?('ApplicationPermissionList')
        visited = visited + ['ApplicationPermissionList']
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

    # Operation Stubber for ListUsers
    class ListUsers
      def self.default(visited=[])
        {
          users: UserList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['users'] = Stubs::UserList.stub(stub[:users]) unless stub[:users].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UserList
    class UserList
      def self.default(visited=[])
        return nil if visited.include?('UserList')
        visited = visited + ['UserList']
        [
          User.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::User.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for User
    class User
      def self.default(visited=[])
        return nil if visited.include?('User')
        visited = visited + ['User']
        {
          user_id: 'user_id',
          status: 'status',
          first_name: 'first_name',
          last_name: 'last_name',
          email_address: 'email_address',
          type: 'type',
          api_access: 'api_access',
          api_access_principal_arn: 'api_access_principal_arn',
          create_time: 1,
          last_enabled_time: 1,
          last_disabled_time: 1,
          last_modified_time: 1,
          last_login_time: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::User.new
        data = {}
        data['userId'] = stub[:user_id] unless stub[:user_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['firstName'] = stub[:first_name] unless stub[:first_name].nil?
        data['lastName'] = stub[:last_name] unless stub[:last_name].nil?
        data['emailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['apiAccess'] = stub[:api_access] unless stub[:api_access].nil?
        data['apiAccessPrincipalArn'] = stub[:api_access_principal_arn] unless stub[:api_access_principal_arn].nil?
        data['createTime'] = stub[:create_time] unless stub[:create_time].nil?
        data['lastEnabledTime'] = stub[:last_enabled_time] unless stub[:last_enabled_time].nil?
        data['lastDisabledTime'] = stub[:last_disabled_time] unless stub[:last_disabled_time].nil?
        data['lastModifiedTime'] = stub[:last_modified_time] unless stub[:last_modified_time].nil?
        data['lastLoginTime'] = stub[:last_login_time] unless stub[:last_login_time].nil?
        data
      end
    end

    # Operation Stubber for ResetUserPassword
    class ResetUserPassword
      def self.default(visited=[])
        {
          user_id: 'user_id',
          temporary_password: 'temporary_password',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['userId'] = stub[:user_id] unless stub[:user_id].nil?
        data['temporaryPassword'] = stub[:temporary_password] unless stub[:temporary_password].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateChangeset
    class UpdateChangeset
      def self.default(visited=[])
        {
          changeset_id: 'changeset_id',
          dataset_id: 'dataset_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['changesetId'] = stub[:changeset_id] unless stub[:changeset_id].nil?
        data['datasetId'] = stub[:dataset_id] unless stub[:dataset_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDataset
    class UpdateDataset
      def self.default(visited=[])
        {
          dataset_id: 'dataset_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['datasetId'] = stub[:dataset_id] unless stub[:dataset_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdatePermissionGroup
    class UpdatePermissionGroup
      def self.default(visited=[])
        {
          permission_group_id: 'permission_group_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['permissionGroupId'] = stub[:permission_group_id] unless stub[:permission_group_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateUser
    class UpdateUser
      def self.default(visited=[])
        {
          user_id: 'user_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['userId'] = stub[:user_id] unless stub[:user_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
