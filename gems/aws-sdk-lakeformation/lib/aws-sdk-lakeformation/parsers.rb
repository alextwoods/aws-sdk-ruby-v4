# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LakeFormation
  module Parsers

    # Operation Parser for AddLFTagsToResource
    class AddLFTagsToResource
      def self.parse(http_resp)
        data = Types::AddLFTagsToResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.failures = (LFTagErrors.parse(map['Failures']) unless map['Failures'].nil?)
        data
      end
    end

    class LFTagErrors
      def self.parse(list)
        data = []
        list.map do |value|
          data << LFTagError.parse(value) unless value.nil?
        end
        data
      end
    end

    class LFTagError
      def self.parse(map)
        data = Types::LFTagError.new
        data.lf_tag = (LFTagPair.parse(map['LFTag']) unless map['LFTag'].nil?)
        data.error = (ErrorDetail.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    class ErrorDetail
      def self.parse(map)
        data = Types::ErrorDetail.new
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class LFTagPair
      def self.parse(map)
        data = Types::LFTagPair.new
        data.catalog_id = map['CatalogId']
        data.tag_key = map['TagKey']
        data.tag_values = (TagValueList.parse(map['TagValues']) unless map['TagValues'].nil?)
        return data
      end
    end

    class TagValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for OperationTimeoutException
    class OperationTimeoutException
      def self.parse(http_resp)
        data = Types::OperationTimeoutException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServiceException
    class InternalServiceException
      def self.parse(http_resp)
        data = Types::InternalServiceException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EntityNotFoundException
    class EntityNotFoundException
      def self.parse(http_resp)
        data = Types::EntityNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for BatchGrantPermissions
    class BatchGrantPermissions
      def self.parse(http_resp)
        data = Types::BatchGrantPermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.failures = (BatchPermissionsFailureList.parse(map['Failures']) unless map['Failures'].nil?)
        data
      end
    end

    class BatchPermissionsFailureList
      def self.parse(list)
        data = []
        list.map do |value|
          data << BatchPermissionsFailureEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchPermissionsFailureEntry
      def self.parse(map)
        data = Types::BatchPermissionsFailureEntry.new
        data.request_entry = (BatchPermissionsRequestEntry.parse(map['RequestEntry']) unless map['RequestEntry'].nil?)
        data.error = (ErrorDetail.parse(map['Error']) unless map['Error'].nil?)
        return data
      end
    end

    class BatchPermissionsRequestEntry
      def self.parse(map)
        data = Types::BatchPermissionsRequestEntry.new
        data.id = map['Id']
        data.principal = (DataLakePrincipal.parse(map['Principal']) unless map['Principal'].nil?)
        data.resource = (Resource.parse(map['Resource']) unless map['Resource'].nil?)
        data.permissions = (PermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.permissions_with_grant_option = (PermissionList.parse(map['PermissionsWithGrantOption']) unless map['PermissionsWithGrantOption'].nil?)
        return data
      end
    end

    class PermissionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.catalog = (CatalogResource.parse(map['Catalog']) unless map['Catalog'].nil?)
        data.database = (DatabaseResource.parse(map['Database']) unless map['Database'].nil?)
        data.table = (TableResource.parse(map['Table']) unless map['Table'].nil?)
        data.table_with_columns = (TableWithColumnsResource.parse(map['TableWithColumns']) unless map['TableWithColumns'].nil?)
        data.data_location = (DataLocationResource.parse(map['DataLocation']) unless map['DataLocation'].nil?)
        data.data_cells_filter = (DataCellsFilterResource.parse(map['DataCellsFilter']) unless map['DataCellsFilter'].nil?)
        data.lf_tag = (LFTagKeyResource.parse(map['LFTag']) unless map['LFTag'].nil?)
        data.lf_tag_policy = (LFTagPolicyResource.parse(map['LFTagPolicy']) unless map['LFTagPolicy'].nil?)
        return data
      end
    end

    class LFTagPolicyResource
      def self.parse(map)
        data = Types::LFTagPolicyResource.new
        data.catalog_id = map['CatalogId']
        data.resource_type = map['ResourceType']
        data.expression = (Expression.parse(map['Expression']) unless map['Expression'].nil?)
        return data
      end
    end

    class Expression
      def self.parse(list)
        data = []
        list.map do |value|
          data << LFTag.parse(value) unless value.nil?
        end
        data
      end
    end

    class LFTag
      def self.parse(map)
        data = Types::LFTag.new
        data.tag_key = map['TagKey']
        data.tag_values = (TagValueList.parse(map['TagValues']) unless map['TagValues'].nil?)
        return data
      end
    end

    class LFTagKeyResource
      def self.parse(map)
        data = Types::LFTagKeyResource.new
        data.catalog_id = map['CatalogId']
        data.tag_key = map['TagKey']
        data.tag_values = (TagValueList.parse(map['TagValues']) unless map['TagValues'].nil?)
        return data
      end
    end

    class DataCellsFilterResource
      def self.parse(map)
        data = Types::DataCellsFilterResource.new
        data.table_catalog_id = map['TableCatalogId']
        data.database_name = map['DatabaseName']
        data.table_name = map['TableName']
        data.name = map['Name']
        return data
      end
    end

    class DataLocationResource
      def self.parse(map)
        data = Types::DataLocationResource.new
        data.catalog_id = map['CatalogId']
        data.resource_arn = map['ResourceArn']
        return data
      end
    end

    class TableWithColumnsResource
      def self.parse(map)
        data = Types::TableWithColumnsResource.new
        data.catalog_id = map['CatalogId']
        data.database_name = map['DatabaseName']
        data.name = map['Name']
        data.column_names = (ColumnNames.parse(map['ColumnNames']) unless map['ColumnNames'].nil?)
        data.column_wildcard = (ColumnWildcard.parse(map['ColumnWildcard']) unless map['ColumnWildcard'].nil?)
        return data
      end
    end

    class ColumnWildcard
      def self.parse(map)
        data = Types::ColumnWildcard.new
        data.excluded_column_names = (ColumnNames.parse(map['ExcludedColumnNames']) unless map['ExcludedColumnNames'].nil?)
        return data
      end
    end

    class ColumnNames
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class TableResource
      def self.parse(map)
        data = Types::TableResource.new
        data.catalog_id = map['CatalogId']
        data.database_name = map['DatabaseName']
        data.name = map['Name']
        data.table_wildcard = (TableWildcard.parse(map['TableWildcard']) unless map['TableWildcard'].nil?)
        return data
      end
    end

    class TableWildcard
      def self.parse(map)
        data = Types::TableWildcard.new
        return data
      end
    end

    class DatabaseResource
      def self.parse(map)
        data = Types::DatabaseResource.new
        data.catalog_id = map['CatalogId']
        data.name = map['Name']
        return data
      end
    end

    class CatalogResource
      def self.parse(map)
        data = Types::CatalogResource.new
        return data
      end
    end

    class DataLakePrincipal
      def self.parse(map)
        data = Types::DataLakePrincipal.new
        data.data_lake_principal_identifier = map['DataLakePrincipalIdentifier']
        return data
      end
    end

    # Operation Parser for BatchRevokePermissions
    class BatchRevokePermissions
      def self.parse(http_resp)
        data = Types::BatchRevokePermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.failures = (BatchPermissionsFailureList.parse(map['Failures']) unless map['Failures'].nil?)
        data
      end
    end

    # Operation Parser for CancelTransaction
    class CancelTransaction
      def self.parse(http_resp)
        data = Types::CancelTransactionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for TransactionCommitInProgressException
    class TransactionCommitInProgressException
      def self.parse(http_resp)
        data = Types::TransactionCommitInProgressException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TransactionCommittedException
    class TransactionCommittedException
      def self.parse(http_resp)
        data = Types::TransactionCommittedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CommitTransaction
    class CommitTransaction
      def self.parse(http_resp)
        data = Types::CommitTransactionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.transaction_status = map['TransactionStatus']
        data
      end
    end

    # Error Parser for TransactionCanceledException
    class TransactionCanceledException
      def self.parse(http_resp)
        data = Types::TransactionCanceledException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateDataCellsFilter
    class CreateDataCellsFilter
      def self.parse(http_resp)
        data = Types::CreateDataCellsFilterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceNumberLimitExceededException
    class ResourceNumberLimitExceededException
      def self.parse(http_resp)
        data = Types::ResourceNumberLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AlreadyExistsException
    class AlreadyExistsException
      def self.parse(http_resp)
        data = Types::AlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateLFTag
    class CreateLFTag
      def self.parse(http_resp)
        data = Types::CreateLFTagOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDataCellsFilter
    class DeleteDataCellsFilter
      def self.parse(http_resp)
        data = Types::DeleteDataCellsFilterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteLFTag
    class DeleteLFTag
      def self.parse(http_resp)
        data = Types::DeleteLFTagOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteObjectsOnCancel
    class DeleteObjectsOnCancel
      def self.parse(http_resp)
        data = Types::DeleteObjectsOnCancelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceNotReadyException
    class ResourceNotReadyException
      def self.parse(http_resp)
        data = Types::ResourceNotReadyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeregisterResource
    class DeregisterResource
      def self.parse(http_resp)
        data = Types::DeregisterResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeResource
    class DescribeResource
      def self.parse(http_resp)
        data = Types::DescribeResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_info = (ResourceInfo.parse(map['ResourceInfo']) unless map['ResourceInfo'].nil?)
        data
      end
    end

    class ResourceInfo
      def self.parse(map)
        data = Types::ResourceInfo.new
        data.resource_arn = map['ResourceArn']
        data.role_arn = map['RoleArn']
        data.last_modified = Time.at(map['LastModified'].to_i) if map['LastModified']
        return data
      end
    end

    # Operation Parser for DescribeTransaction
    class DescribeTransaction
      def self.parse(http_resp)
        data = Types::DescribeTransactionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.transaction_description = (TransactionDescription.parse(map['TransactionDescription']) unless map['TransactionDescription'].nil?)
        data
      end
    end

    class TransactionDescription
      def self.parse(map)
        data = Types::TransactionDescription.new
        data.transaction_id = map['TransactionId']
        data.transaction_status = map['TransactionStatus']
        data.transaction_start_time = Time.at(map['TransactionStartTime'].to_i) if map['TransactionStartTime']
        data.transaction_end_time = Time.at(map['TransactionEndTime'].to_i) if map['TransactionEndTime']
        return data
      end
    end

    # Operation Parser for ExtendTransaction
    class ExtendTransaction
      def self.parse(http_resp)
        data = Types::ExtendTransactionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetDataLakeSettings
    class GetDataLakeSettings
      def self.parse(http_resp)
        data = Types::GetDataLakeSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.data_lake_settings = (DataLakeSettings.parse(map['DataLakeSettings']) unless map['DataLakeSettings'].nil?)
        data
      end
    end

    class DataLakeSettings
      def self.parse(map)
        data = Types::DataLakeSettings.new
        data.data_lake_admins = (DataLakePrincipalList.parse(map['DataLakeAdmins']) unless map['DataLakeAdmins'].nil?)
        data.create_database_default_permissions = (PrincipalPermissionsList.parse(map['CreateDatabaseDefaultPermissions']) unless map['CreateDatabaseDefaultPermissions'].nil?)
        data.create_table_default_permissions = (PrincipalPermissionsList.parse(map['CreateTableDefaultPermissions']) unless map['CreateTableDefaultPermissions'].nil?)
        data.trusted_resource_owners = (TrustedResourceOwners.parse(map['TrustedResourceOwners']) unless map['TrustedResourceOwners'].nil?)
        data.allow_external_data_filtering = map['AllowExternalDataFiltering']
        data.external_data_filtering_allow_list = (DataLakePrincipalList.parse(map['ExternalDataFilteringAllowList']) unless map['ExternalDataFilteringAllowList'].nil?)
        data.authorized_session_tag_value_list = (AuthorizedSessionTagValueList.parse(map['AuthorizedSessionTagValueList']) unless map['AuthorizedSessionTagValueList'].nil?)
        return data
      end
    end

    class AuthorizedSessionTagValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class DataLakePrincipalList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DataLakePrincipal.parse(value) unless value.nil?
        end
        data
      end
    end

    class TrustedResourceOwners
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class PrincipalPermissionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PrincipalPermissions.parse(value) unless value.nil?
        end
        data
      end
    end

    class PrincipalPermissions
      def self.parse(map)
        data = Types::PrincipalPermissions.new
        data.principal = (DataLakePrincipal.parse(map['Principal']) unless map['Principal'].nil?)
        data.permissions = (PermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        return data
      end
    end

    # Operation Parser for GetEffectivePermissionsForPath
    class GetEffectivePermissionsForPath
      def self.parse(http_resp)
        data = Types::GetEffectivePermissionsForPathOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.permissions = (PrincipalResourcePermissionsList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PrincipalResourcePermissionsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PrincipalResourcePermissions.parse(value) unless value.nil?
        end
        data
      end
    end

    class PrincipalResourcePermissions
      def self.parse(map)
        data = Types::PrincipalResourcePermissions.new
        data.principal = (DataLakePrincipal.parse(map['Principal']) unless map['Principal'].nil?)
        data.resource = (Resource.parse(map['Resource']) unless map['Resource'].nil?)
        data.permissions = (PermissionList.parse(map['Permissions']) unless map['Permissions'].nil?)
        data.permissions_with_grant_option = (PermissionList.parse(map['PermissionsWithGrantOption']) unless map['PermissionsWithGrantOption'].nil?)
        data.additional_details = (DetailsMap.parse(map['AdditionalDetails']) unless map['AdditionalDetails'].nil?)
        return data
      end
    end

    class DetailsMap
      def self.parse(map)
        data = Types::DetailsMap.new
        data.resource_share = (ResourceShareList.parse(map['ResourceShare']) unless map['ResourceShare'].nil?)
        return data
      end
    end

    class ResourceShareList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetLFTag
    class GetLFTag
      def self.parse(http_resp)
        data = Types::GetLFTagOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.catalog_id = map['CatalogId']
        data.tag_key = map['TagKey']
        data.tag_values = (TagValueList.parse(map['TagValues']) unless map['TagValues'].nil?)
        data
      end
    end

    # Operation Parser for GetQueryState
    class GetQueryState
      def self.parse(http_resp)
        data = Types::GetQueryStateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.error = map['Error']
        data.state = map['State']
        data
      end
    end

    # Operation Parser for GetQueryStatistics
    class GetQueryStatistics
      def self.parse(http_resp)
        data = Types::GetQueryStatisticsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.execution_statistics = (ExecutionStatistics.parse(map['ExecutionStatistics']) unless map['ExecutionStatistics'].nil?)
        data.planning_statistics = (PlanningStatistics.parse(map['PlanningStatistics']) unless map['PlanningStatistics'].nil?)
        data.query_submission_time = Time.parse(map['QuerySubmissionTime']) if map['QuerySubmissionTime']
        data
      end
    end

    class PlanningStatistics
      def self.parse(map)
        data = Types::PlanningStatistics.new
        data.estimated_data_to_scan_bytes = map['EstimatedDataToScanBytes']
        data.planning_time_millis = map['PlanningTimeMillis']
        data.queue_time_millis = map['QueueTimeMillis']
        data.work_units_generated_count = map['WorkUnitsGeneratedCount']
        return data
      end
    end

    class ExecutionStatistics
      def self.parse(map)
        data = Types::ExecutionStatistics.new
        data.average_execution_time_millis = map['AverageExecutionTimeMillis']
        data.data_scanned_bytes = map['DataScannedBytes']
        data.work_units_executed_count = map['WorkUnitsExecutedCount']
        return data
      end
    end

    # Error Parser for ExpiredException
    class ExpiredException
      def self.parse(http_resp)
        data = Types::ExpiredException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for StatisticsNotReadyYetException
    class StatisticsNotReadyYetException
      def self.parse(http_resp)
        data = Types::StatisticsNotReadyYetException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottledException
    class ThrottledException
      def self.parse(http_resp)
        data = Types::ThrottledException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetResourceLFTags
    class GetResourceLFTags
      def self.parse(http_resp)
        data = Types::GetResourceLFTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lf_tag_on_database = (LFTagsList.parse(map['LFTagOnDatabase']) unless map['LFTagOnDatabase'].nil?)
        data.lf_tags_on_table = (LFTagsList.parse(map['LFTagsOnTable']) unless map['LFTagsOnTable'].nil?)
        data.lf_tags_on_columns = (ColumnLFTagsList.parse(map['LFTagsOnColumns']) unless map['LFTagsOnColumns'].nil?)
        data
      end
    end

    class ColumnLFTagsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ColumnLFTag.parse(value) unless value.nil?
        end
        data
      end
    end

    class ColumnLFTag
      def self.parse(map)
        data = Types::ColumnLFTag.new
        data.name = map['Name']
        data.lf_tags = (LFTagsList.parse(map['LFTags']) unless map['LFTags'].nil?)
        return data
      end
    end

    class LFTagsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << LFTagPair.parse(value) unless value.nil?
        end
        data
      end
    end

    # Error Parser for GlueEncryptionException
    class GlueEncryptionException
      def self.parse(http_resp)
        data = Types::GlueEncryptionException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetTableObjects
    class GetTableObjects
      def self.parse(http_resp)
        data = Types::GetTableObjectsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.objects = (PartitionedTableObjectsList.parse(map['Objects']) unless map['Objects'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PartitionedTableObjectsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << PartitionObjects.parse(value) unless value.nil?
        end
        data
      end
    end

    class PartitionObjects
      def self.parse(map)
        data = Types::PartitionObjects.new
        data.partition_values = (PartitionValuesList.parse(map['PartitionValues']) unless map['PartitionValues'].nil?)
        data.objects = (TableObjectList.parse(map['Objects']) unless map['Objects'].nil?)
        return data
      end
    end

    class TableObjectList
      def self.parse(list)
        data = []
        list.map do |value|
          data << TableObject.parse(value) unless value.nil?
        end
        data
      end
    end

    class TableObject
      def self.parse(map)
        data = Types::TableObject.new
        data.uri = map['Uri']
        data.e_tag = map['ETag']
        data.size = map['Size']
        return data
      end
    end

    class PartitionValuesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetTemporaryGluePartitionCredentials
    class GetTemporaryGluePartitionCredentials
      def self.parse(http_resp)
        data = Types::GetTemporaryGluePartitionCredentialsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_key_id = map['AccessKeyId']
        data.secret_access_key = map['SecretAccessKey']
        data.session_token = map['SessionToken']
        data.expiration = Time.at(map['Expiration'].to_i) if map['Expiration']
        data
      end
    end

    # Error Parser for PermissionTypeMismatchException
    class PermissionTypeMismatchException
      def self.parse(http_resp)
        data = Types::PermissionTypeMismatchException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GetTemporaryGlueTableCredentials
    class GetTemporaryGlueTableCredentials
      def self.parse(http_resp)
        data = Types::GetTemporaryGlueTableCredentialsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_key_id = map['AccessKeyId']
        data.secret_access_key = map['SecretAccessKey']
        data.session_token = map['SessionToken']
        data.expiration = Time.at(map['Expiration'].to_i) if map['Expiration']
        data
      end
    end

    # Operation Parser for GetWorkUnitResults
    class GetWorkUnitResults
      def self.parse(http_resp)
        data = Types::GetWorkUnitResultsOutput.new
        data.result_stream = http_resp.body
        data
      end
    end

    # Operation Parser for GetWorkUnits
    class GetWorkUnits
      def self.parse(http_resp)
        data = Types::GetWorkUnitsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.query_id = map['QueryId']
        data.work_unit_ranges = (WorkUnitRangeList.parse(map['WorkUnitRanges']) unless map['WorkUnitRanges'].nil?)
        data
      end
    end

    class WorkUnitRangeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << WorkUnitRange.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorkUnitRange
      def self.parse(map)
        data = Types::WorkUnitRange.new
        data.work_unit_id_max = map['WorkUnitIdMax']
        data.work_unit_id_min = map['WorkUnitIdMin']
        data.work_unit_token = map['WorkUnitToken']
        return data
      end
    end

    # Error Parser for WorkUnitsNotReadyYetException
    class WorkUnitsNotReadyYetException
      def self.parse(http_resp)
        data = Types::WorkUnitsNotReadyYetException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for GrantPermissions
    class GrantPermissions
      def self.parse(http_resp)
        data = Types::GrantPermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ListDataCellsFilter
    class ListDataCellsFilter
      def self.parse(http_resp)
        data = Types::ListDataCellsFilterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.data_cells_filters = (DataCellsFilterList.parse(map['DataCellsFilters']) unless map['DataCellsFilters'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DataCellsFilterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DataCellsFilter.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataCellsFilter
      def self.parse(map)
        data = Types::DataCellsFilter.new
        data.table_catalog_id = map['TableCatalogId']
        data.database_name = map['DatabaseName']
        data.table_name = map['TableName']
        data.name = map['Name']
        data.row_filter = (RowFilter.parse(map['RowFilter']) unless map['RowFilter'].nil?)
        data.column_names = (ColumnNames.parse(map['ColumnNames']) unless map['ColumnNames'].nil?)
        data.column_wildcard = (ColumnWildcard.parse(map['ColumnWildcard']) unless map['ColumnWildcard'].nil?)
        return data
      end
    end

    class RowFilter
      def self.parse(map)
        data = Types::RowFilter.new
        data.filter_expression = map['FilterExpression']
        data.all_rows_wildcard = (AllRowsWildcard.parse(map['AllRowsWildcard']) unless map['AllRowsWildcard'].nil?)
        return data
      end
    end

    class AllRowsWildcard
      def self.parse(map)
        data = Types::AllRowsWildcard.new
        return data
      end
    end

    # Operation Parser for ListLFTags
    class ListLFTags
      def self.parse(http_resp)
        data = Types::ListLFTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lf_tags = (LFTagsList.parse(map['LFTags']) unless map['LFTags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListPermissions
    class ListPermissions
      def self.parse(http_resp)
        data = Types::ListPermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.principal_resource_permissions = (PrincipalResourcePermissionsList.parse(map['PrincipalResourcePermissions']) unless map['PrincipalResourcePermissions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListResources
    class ListResources
      def self.parse(http_resp)
        data = Types::ListResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.resource_info_list = (ResourceInfoList.parse(map['ResourceInfoList']) unless map['ResourceInfoList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ResourceInfoList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ResourceInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTableStorageOptimizers
    class ListTableStorageOptimizers
      def self.parse(http_resp)
        data = Types::ListTableStorageOptimizersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.storage_optimizer_list = (StorageOptimizerList.parse(map['StorageOptimizerList']) unless map['StorageOptimizerList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class StorageOptimizerList
      def self.parse(list)
        data = []
        list.map do |value|
          data << StorageOptimizer.parse(value) unless value.nil?
        end
        data
      end
    end

    class StorageOptimizer
      def self.parse(map)
        data = Types::StorageOptimizer.new
        data.storage_optimizer_type = map['StorageOptimizerType']
        data.config = (StorageOptimizerConfig.parse(map['Config']) unless map['Config'].nil?)
        data.error_message = map['ErrorMessage']
        data.warnings = map['Warnings']
        data.last_run_details = map['LastRunDetails']
        return data
      end
    end

    class StorageOptimizerConfig
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTransactions
    class ListTransactions
      def self.parse(http_resp)
        data = Types::ListTransactionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.transactions = (TransactionDescriptionList.parse(map['Transactions']) unless map['Transactions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TransactionDescriptionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << TransactionDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for PutDataLakeSettings
    class PutDataLakeSettings
      def self.parse(http_resp)
        data = Types::PutDataLakeSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RegisterResource
    class RegisterResource
      def self.parse(http_resp)
        data = Types::RegisterResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for RemoveLFTagsFromResource
    class RemoveLFTagsFromResource
      def self.parse(http_resp)
        data = Types::RemoveLFTagsFromResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.failures = (LFTagErrors.parse(map['Failures']) unless map['Failures'].nil?)
        data
      end
    end

    # Operation Parser for RevokePermissions
    class RevokePermissions
      def self.parse(http_resp)
        data = Types::RevokePermissionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SearchDatabasesByLFTags
    class SearchDatabasesByLFTags
      def self.parse(http_resp)
        data = Types::SearchDatabasesByLFTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.database_list = (DatabaseLFTagsList.parse(map['DatabaseList']) unless map['DatabaseList'].nil?)
        data
      end
    end

    class DatabaseLFTagsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << TaggedDatabase.parse(value) unless value.nil?
        end
        data
      end
    end

    class TaggedDatabase
      def self.parse(map)
        data = Types::TaggedDatabase.new
        data.database = (DatabaseResource.parse(map['Database']) unless map['Database'].nil?)
        data.lf_tags = (LFTagsList.parse(map['LFTags']) unless map['LFTags'].nil?)
        return data
      end
    end

    # Operation Parser for SearchTablesByLFTags
    class SearchTablesByLFTags
      def self.parse(http_resp)
        data = Types::SearchTablesByLFTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.table_list = (TableLFTagsList.parse(map['TableList']) unless map['TableList'].nil?)
        data
      end
    end

    class TableLFTagsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << TaggedTable.parse(value) unless value.nil?
        end
        data
      end
    end

    class TaggedTable
      def self.parse(map)
        data = Types::TaggedTable.new
        data.table = (TableResource.parse(map['Table']) unless map['Table'].nil?)
        data.lf_tag_on_database = (LFTagsList.parse(map['LFTagOnDatabase']) unless map['LFTagOnDatabase'].nil?)
        data.lf_tags_on_table = (LFTagsList.parse(map['LFTagsOnTable']) unless map['LFTagsOnTable'].nil?)
        data.lf_tags_on_columns = (ColumnLFTagsList.parse(map['LFTagsOnColumns']) unless map['LFTagsOnColumns'].nil?)
        return data
      end
    end

    # Operation Parser for StartQueryPlanning
    class StartQueryPlanning
      def self.parse(http_resp)
        data = Types::StartQueryPlanningOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.query_id = map['QueryId']
        data
      end
    end

    # Operation Parser for StartTransaction
    class StartTransaction
      def self.parse(http_resp)
        data = Types::StartTransactionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.transaction_id = map['TransactionId']
        data
      end
    end

    # Operation Parser for UpdateLFTag
    class UpdateLFTag
      def self.parse(http_resp)
        data = Types::UpdateLFTagOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateResource
    class UpdateResource
      def self.parse(http_resp)
        data = Types::UpdateResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateTableObjects
    class UpdateTableObjects
      def self.parse(http_resp)
        data = Types::UpdateTableObjectsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateTableStorageOptimizer
    class UpdateTableStorageOptimizer
      def self.parse(http_resp)
        data = Types::UpdateTableStorageOptimizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.result = map['Result']
        data
      end
    end
  end
end
