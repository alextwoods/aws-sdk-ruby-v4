# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::FinspaceData
  module Parsers

    # Operation Parser for CreateChangeset
    class CreateChangeset
      def self.parse(http_resp)
        data = Types::CreateChangesetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataset_id = map['datasetId']
        data.changeset_id = map['changesetId']
        data
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

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.reason = map['reason']
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

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.reason = map['reason']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.reason = map['reason']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for CreateDataView
    class CreateDataView
      def self.parse(http_resp)
        data = Types::CreateDataViewOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataset_id = map['datasetId']
        data.data_view_id = map['dataViewId']
        data
      end
    end

    # Operation Parser for CreateDataset
    class CreateDataset
      def self.parse(http_resp)
        data = Types::CreateDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataset_id = map['datasetId']
        data
      end
    end

    # Operation Parser for CreatePermissionGroup
    class CreatePermissionGroup
      def self.parse(http_resp)
        data = Types::CreatePermissionGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.permission_group_id = map['permissionGroupId']
        data
      end
    end

    # Operation Parser for CreateUser
    class CreateUser
      def self.parse(http_resp)
        data = Types::CreateUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_id = map['userId']
        data
      end
    end

    # Operation Parser for DeleteDataset
    class DeleteDataset
      def self.parse(http_resp)
        data = Types::DeleteDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataset_id = map['datasetId']
        data
      end
    end

    # Operation Parser for DeletePermissionGroup
    class DeletePermissionGroup
      def self.parse(http_resp)
        data = Types::DeletePermissionGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.permission_group_id = map['permissionGroupId']
        data
      end
    end

    # Operation Parser for DisableUser
    class DisableUser
      def self.parse(http_resp)
        data = Types::DisableUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_id = map['userId']
        data
      end
    end

    # Operation Parser for EnableUser
    class EnableUser
      def self.parse(http_resp)
        data = Types::EnableUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_id = map['userId']
        data
      end
    end

    # Operation Parser for GetChangeset
    class GetChangeset
      def self.parse(http_resp)
        data = Types::GetChangesetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.changeset_id = map['changesetId']
        data.changeset_arn = map['changesetArn']
        data.dataset_id = map['datasetId']
        data.change_type = map['changeType']
        data.source_params = (Parsers::SourceParams.parse(map['sourceParams']) unless map['sourceParams'].nil?)
        data.format_params = (Parsers::FormatParams.parse(map['formatParams']) unless map['formatParams'].nil?)
        data.create_time = map['createTime']
        data.status = map['status']
        data.error_info = (Parsers::ChangesetErrorInfo.parse(map['errorInfo']) unless map['errorInfo'].nil?)
        data.active_until_timestamp = map['activeUntilTimestamp']
        data.active_from_timestamp = map['activeFromTimestamp']
        data.updates_changeset_id = map['updatesChangesetId']
        data.updated_by_changeset_id = map['updatedByChangesetId']
        data
      end
    end

    class ChangesetErrorInfo
      def self.parse(map)
        data = Types::ChangesetErrorInfo.new
        data.error_message = map['errorMessage']
        data.error_category = map['errorCategory']
        return data
      end
    end

    class FormatParams
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class SourceParams
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetDataView
    class GetDataView
      def self.parse(http_resp)
        data = Types::GetDataViewOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.auto_update = map['autoUpdate']
        data.partition_columns = (Parsers::PartitionColumnList.parse(map['partitionColumns']) unless map['partitionColumns'].nil?)
        data.dataset_id = map['datasetId']
        data.as_of_timestamp = map['asOfTimestamp']
        data.error_info = (Parsers::DataViewErrorInfo.parse(map['errorInfo']) unless map['errorInfo'].nil?)
        data.last_modified_time = map['lastModifiedTime']
        data.create_time = map['createTime']
        data.sort_columns = (Parsers::SortColumnList.parse(map['sortColumns']) unless map['sortColumns'].nil?)
        data.data_view_id = map['dataViewId']
        data.data_view_arn = map['dataViewArn']
        data.destination_type_params = (Parsers::DataViewDestinationTypeParams.parse(map['destinationTypeParams']) unless map['destinationTypeParams'].nil?)
        data.status = map['status']
        data
      end
    end

    class DataViewDestinationTypeParams
      def self.parse(map)
        data = Types::DataViewDestinationTypeParams.new
        data.destination_type = map['destinationType']
        data.s3_destination_export_file_format = map['s3DestinationExportFileFormat']
        data.s3_destination_export_file_format_options = (Parsers::S3DestinationFormatOptions.parse(map['s3DestinationExportFileFormatOptions']) unless map['s3DestinationExportFileFormatOptions'].nil?)
        return data
      end
    end

    class S3DestinationFormatOptions
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class SortColumnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class DataViewErrorInfo
      def self.parse(map)
        data = Types::DataViewErrorInfo.new
        data.error_message = map['errorMessage']
        data.error_category = map['errorCategory']
        return data
      end
    end

    class PartitionColumnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetDataset
    class GetDataset
      def self.parse(http_resp)
        data = Types::GetDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataset_id = map['datasetId']
        data.dataset_arn = map['datasetArn']
        data.dataset_title = map['datasetTitle']
        data.kind = map['kind']
        data.dataset_description = map['datasetDescription']
        data.create_time = map['createTime']
        data.last_modified_time = map['lastModifiedTime']
        data.schema_definition = (Parsers::SchemaUnion.parse(map['schemaDefinition']) unless map['schemaDefinition'].nil?)
        data.alias = map['alias']
        data.status = map['status']
        data
      end
    end

    class SchemaUnion
      def self.parse(map)
        data = Types::SchemaUnion.new
        data.tabular_schema_config = (Parsers::SchemaDefinition.parse(map['tabularSchemaConfig']) unless map['tabularSchemaConfig'].nil?)
        return data
      end
    end

    class SchemaDefinition
      def self.parse(map)
        data = Types::SchemaDefinition.new
        data.columns = (Parsers::ColumnList.parse(map['columns']) unless map['columns'].nil?)
        data.primary_key_columns = (Parsers::ColumnNameList.parse(map['primaryKeyColumns']) unless map['primaryKeyColumns'].nil?)
        return data
      end
    end

    class ColumnNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ColumnList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ColumnDefinition.parse(value) unless value.nil?
        end
        data
      end
    end

    class ColumnDefinition
      def self.parse(map)
        data = Types::ColumnDefinition.new
        data.data_type = map['dataType']
        data.column_name = map['columnName']
        data.column_description = map['columnDescription']
        return data
      end
    end

    # Operation Parser for GetProgrammaticAccessCredentials
    class GetProgrammaticAccessCredentials
      def self.parse(http_resp)
        data = Types::GetProgrammaticAccessCredentialsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.credentials = (Parsers::Credentials.parse(map['credentials']) unless map['credentials'].nil?)
        data.duration_in_minutes = map['durationInMinutes']
        data
      end
    end

    class Credentials
      def self.parse(map)
        data = Types::Credentials.new
        data.access_key_id = map['accessKeyId']
        data.secret_access_key = map['secretAccessKey']
        data.session_token = map['sessionToken']
        return data
      end
    end

    # Operation Parser for GetUser
    class GetUser
      def self.parse(http_resp)
        data = Types::GetUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_id = map['userId']
        data.status = map['status']
        data.first_name = map['firstName']
        data.last_name = map['lastName']
        data.email_address = map['emailAddress']
        data.type = map['type']
        data.api_access = map['apiAccess']
        data.api_access_principal_arn = map['apiAccessPrincipalArn']
        data.create_time = map['createTime']
        data.last_enabled_time = map['lastEnabledTime']
        data.last_disabled_time = map['lastDisabledTime']
        data.last_modified_time = map['lastModifiedTime']
        data.last_login_time = map['lastLoginTime']
        data
      end
    end

    # Operation Parser for GetWorkingLocation
    class GetWorkingLocation
      def self.parse(http_resp)
        data = Types::GetWorkingLocationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.s3_uri = map['s3Uri']
        data.s3_path = map['s3Path']
        data.s3_bucket = map['s3Bucket']
        data
      end
    end

    # Operation Parser for ListChangesets
    class ListChangesets
      def self.parse(http_resp)
        data = Types::ListChangesetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.changesets = (Parsers::ChangesetList.parse(map['changesets']) unless map['changesets'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ChangesetList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ChangesetSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChangesetSummary
      def self.parse(map)
        data = Types::ChangesetSummary.new
        data.changeset_id = map['changesetId']
        data.changeset_arn = map['changesetArn']
        data.dataset_id = map['datasetId']
        data.change_type = map['changeType']
        data.source_params = (Parsers::SourceParams.parse(map['sourceParams']) unless map['sourceParams'].nil?)
        data.format_params = (Parsers::FormatParams.parse(map['formatParams']) unless map['formatParams'].nil?)
        data.create_time = map['createTime']
        data.status = map['status']
        data.error_info = (Parsers::ChangesetErrorInfo.parse(map['errorInfo']) unless map['errorInfo'].nil?)
        data.active_until_timestamp = map['activeUntilTimestamp']
        data.active_from_timestamp = map['activeFromTimestamp']
        data.updates_changeset_id = map['updatesChangesetId']
        data.updated_by_changeset_id = map['updatedByChangesetId']
        return data
      end
    end

    # Operation Parser for ListDataViews
    class ListDataViews
      def self.parse(http_resp)
        data = Types::ListDataViewsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.data_views = (Parsers::DataViewList.parse(map['dataViews']) unless map['dataViews'].nil?)
        data
      end
    end

    class DataViewList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataViewSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataViewSummary
      def self.parse(map)
        data = Types::DataViewSummary.new
        data.data_view_id = map['dataViewId']
        data.data_view_arn = map['dataViewArn']
        data.dataset_id = map['datasetId']
        data.as_of_timestamp = map['asOfTimestamp']
        data.partition_columns = (Parsers::PartitionColumnList.parse(map['partitionColumns']) unless map['partitionColumns'].nil?)
        data.sort_columns = (Parsers::SortColumnList.parse(map['sortColumns']) unless map['sortColumns'].nil?)
        data.status = map['status']
        data.error_info = (Parsers::DataViewErrorInfo.parse(map['errorInfo']) unless map['errorInfo'].nil?)
        data.destination_type_properties = (Parsers::DataViewDestinationTypeParams.parse(map['destinationTypeProperties']) unless map['destinationTypeProperties'].nil?)
        data.auto_update = map['autoUpdate']
        data.create_time = map['createTime']
        data.last_modified_time = map['lastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListDatasets
    class ListDatasets
      def self.parse(http_resp)
        data = Types::ListDatasetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.datasets = (Parsers::DatasetList.parse(map['datasets']) unless map['datasets'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DatasetList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Dataset.parse(value) unless value.nil?
        end
        data
      end
    end

    class Dataset
      def self.parse(map)
        data = Types::Dataset.new
        data.dataset_id = map['datasetId']
        data.dataset_arn = map['datasetArn']
        data.dataset_title = map['datasetTitle']
        data.kind = map['kind']
        data.dataset_description = map['datasetDescription']
        data.owner_info = (Parsers::DatasetOwnerInfo.parse(map['ownerInfo']) unless map['ownerInfo'].nil?)
        data.create_time = map['createTime']
        data.last_modified_time = map['lastModifiedTime']
        data.schema_definition = (Parsers::SchemaUnion.parse(map['schemaDefinition']) unless map['schemaDefinition'].nil?)
        data.alias = map['alias']
        return data
      end
    end

    class DatasetOwnerInfo
      def self.parse(map)
        data = Types::DatasetOwnerInfo.new
        data.name = map['name']
        data.phone_number = map['phoneNumber']
        data.email = map['email']
        return data
      end
    end

    # Operation Parser for ListPermissionGroups
    class ListPermissionGroups
      def self.parse(http_resp)
        data = Types::ListPermissionGroupsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.permission_groups = (Parsers::PermissionGroupList.parse(map['permissionGroups']) unless map['permissionGroups'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PermissionGroupList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PermissionGroup.parse(value) unless value.nil?
        end
        data
      end
    end

    class PermissionGroup
      def self.parse(map)
        data = Types::PermissionGroup.new
        data.permission_group_id = map['permissionGroupId']
        data.name = map['name']
        data.description = map['description']
        data.application_permissions = (Parsers::ApplicationPermissionList.parse(map['applicationPermissions']) unless map['applicationPermissions'].nil?)
        data.create_time = map['createTime']
        data.last_modified_time = map['lastModifiedTime']
        return data
      end
    end

    class ApplicationPermissionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListUsers
    class ListUsers
      def self.parse(http_resp)
        data = Types::ListUsersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.users = (Parsers::UserList.parse(map['users']) unless map['users'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class UserList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::User.parse(value) unless value.nil?
        end
        data
      end
    end

    class User
      def self.parse(map)
        data = Types::User.new
        data.user_id = map['userId']
        data.status = map['status']
        data.first_name = map['firstName']
        data.last_name = map['lastName']
        data.email_address = map['emailAddress']
        data.type = map['type']
        data.api_access = map['apiAccess']
        data.api_access_principal_arn = map['apiAccessPrincipalArn']
        data.create_time = map['createTime']
        data.last_enabled_time = map['lastEnabledTime']
        data.last_disabled_time = map['lastDisabledTime']
        data.last_modified_time = map['lastModifiedTime']
        data.last_login_time = map['lastLoginTime']
        return data
      end
    end

    # Operation Parser for ResetUserPassword
    class ResetUserPassword
      def self.parse(http_resp)
        data = Types::ResetUserPasswordOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_id = map['userId']
        data.temporary_password = map['temporaryPassword']
        data
      end
    end

    # Operation Parser for UpdateChangeset
    class UpdateChangeset
      def self.parse(http_resp)
        data = Types::UpdateChangesetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.changeset_id = map['changesetId']
        data.dataset_id = map['datasetId']
        data
      end
    end

    # Operation Parser for UpdateDataset
    class UpdateDataset
      def self.parse(http_resp)
        data = Types::UpdateDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.dataset_id = map['datasetId']
        data
      end
    end

    # Operation Parser for UpdatePermissionGroup
    class UpdatePermissionGroup
      def self.parse(http_resp)
        data = Types::UpdatePermissionGroupOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.permission_group_id = map['permissionGroupId']
        data
      end
    end

    # Operation Parser for UpdateUser
    class UpdateUser
      def self.parse(http_resp)
        data = Types::UpdateUserOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.user_id = map['userId']
        data
      end
    end
  end
end
