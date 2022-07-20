# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::LakeFormation
  module Builders

    # Operation Builder for AddLFTagsToResource
    class AddLFTagsToResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/AddLFTagsToResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Resource'] = Resource.build(input[:resource]) unless input[:resource].nil?
        data['LFTags'] = LFTagsList.build(input[:lf_tags]) unless input[:lf_tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for LFTagsList
    class LFTagsList
      def self.build(input)
        data = []
        input.each do |element|
          data << LFTagPair.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LFTagPair
    class LFTagPair
      def self.build(input)
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['TagKey'] = input[:tag_key] unless input[:tag_key].nil?
        data['TagValues'] = TagValueList.build(input[:tag_values]) unless input[:tag_values].nil?
        data
      end
    end

    # List Builder for TagValueList
    class TagValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Resource
    class Resource
      def self.build(input)
        data = {}
        data['Catalog'] = CatalogResource.build(input[:catalog]) unless input[:catalog].nil?
        data['Database'] = DatabaseResource.build(input[:database]) unless input[:database].nil?
        data['Table'] = TableResource.build(input[:table]) unless input[:table].nil?
        data['TableWithColumns'] = TableWithColumnsResource.build(input[:table_with_columns]) unless input[:table_with_columns].nil?
        data['DataLocation'] = DataLocationResource.build(input[:data_location]) unless input[:data_location].nil?
        data['DataCellsFilter'] = DataCellsFilterResource.build(input[:data_cells_filter]) unless input[:data_cells_filter].nil?
        data['LFTag'] = LFTagKeyResource.build(input[:lf_tag]) unless input[:lf_tag].nil?
        data['LFTagPolicy'] = LFTagPolicyResource.build(input[:lf_tag_policy]) unless input[:lf_tag_policy].nil?
        data
      end
    end

    # Structure Builder for LFTagPolicyResource
    class LFTagPolicyResource
      def self.build(input)
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['Expression'] = Expression.build(input[:expression]) unless input[:expression].nil?
        data
      end
    end

    # List Builder for Expression
    class Expression
      def self.build(input)
        data = []
        input.each do |element|
          data << LFTag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LFTag
    class LFTag
      def self.build(input)
        data = {}
        data['TagKey'] = input[:tag_key] unless input[:tag_key].nil?
        data['TagValues'] = TagValueList.build(input[:tag_values]) unless input[:tag_values].nil?
        data
      end
    end

    # Structure Builder for LFTagKeyResource
    class LFTagKeyResource
      def self.build(input)
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['TagKey'] = input[:tag_key] unless input[:tag_key].nil?
        data['TagValues'] = TagValueList.build(input[:tag_values]) unless input[:tag_values].nil?
        data
      end
    end

    # Structure Builder for DataCellsFilterResource
    class DataCellsFilterResource
      def self.build(input)
        data = {}
        data['TableCatalogId'] = input[:table_catalog_id] unless input[:table_catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for DataLocationResource
    class DataLocationResource
      def self.build(input)
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data
      end
    end

    # Structure Builder for TableWithColumnsResource
    class TableWithColumnsResource
      def self.build(input)
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['ColumnNames'] = ColumnNames.build(input[:column_names]) unless input[:column_names].nil?
        data['ColumnWildcard'] = ColumnWildcard.build(input[:column_wildcard]) unless input[:column_wildcard].nil?
        data
      end
    end

    # Structure Builder for ColumnWildcard
    class ColumnWildcard
      def self.build(input)
        data = {}
        data['ExcludedColumnNames'] = ColumnNames.build(input[:excluded_column_names]) unless input[:excluded_column_names].nil?
        data
      end
    end

    # List Builder for ColumnNames
    class ColumnNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TableResource
    class TableResource
      def self.build(input)
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['TableWildcard'] = TableWildcard.build(input[:table_wildcard]) unless input[:table_wildcard].nil?
        data
      end
    end

    # Structure Builder for TableWildcard
    class TableWildcard
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for DatabaseResource
    class DatabaseResource
      def self.build(input)
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for CatalogResource
    class CatalogResource
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for BatchGrantPermissions
    class BatchGrantPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/BatchGrantPermissions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Entries'] = BatchPermissionsRequestEntryList.build(input[:entries]) unless input[:entries].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for BatchPermissionsRequestEntryList
    class BatchPermissionsRequestEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << BatchPermissionsRequestEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BatchPermissionsRequestEntry
    class BatchPermissionsRequestEntry
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Principal'] = DataLakePrincipal.build(input[:principal]) unless input[:principal].nil?
        data['Resource'] = Resource.build(input[:resource]) unless input[:resource].nil?
        data['Permissions'] = PermissionList.build(input[:permissions]) unless input[:permissions].nil?
        data['PermissionsWithGrantOption'] = PermissionList.build(input[:permissions_with_grant_option]) unless input[:permissions_with_grant_option].nil?
        data
      end
    end

    # List Builder for PermissionList
    class PermissionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DataLakePrincipal
    class DataLakePrincipal
      def self.build(input)
        data = {}
        data['DataLakePrincipalIdentifier'] = input[:data_lake_principal_identifier] unless input[:data_lake_principal_identifier].nil?
        data
      end
    end

    # Operation Builder for BatchRevokePermissions
    class BatchRevokePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/BatchRevokePermissions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Entries'] = BatchPermissionsRequestEntryList.build(input[:entries]) unless input[:entries].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelTransaction
    class CancelTransaction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CancelTransaction')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CommitTransaction
    class CommitTransaction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CommitTransaction')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDataCellsFilter
    class CreateDataCellsFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CreateDataCellsFilter')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TableData'] = DataCellsFilter.build(input[:table_data]) unless input[:table_data].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DataCellsFilter
    class DataCellsFilter
      def self.build(input)
        data = {}
        data['TableCatalogId'] = input[:table_catalog_id] unless input[:table_catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['RowFilter'] = RowFilter.build(input[:row_filter]) unless input[:row_filter].nil?
        data['ColumnNames'] = ColumnNames.build(input[:column_names]) unless input[:column_names].nil?
        data['ColumnWildcard'] = ColumnWildcard.build(input[:column_wildcard]) unless input[:column_wildcard].nil?
        data
      end
    end

    # Structure Builder for RowFilter
    class RowFilter
      def self.build(input)
        data = {}
        data['FilterExpression'] = input[:filter_expression] unless input[:filter_expression].nil?
        data['AllRowsWildcard'] = AllRowsWildcard.build(input[:all_rows_wildcard]) unless input[:all_rows_wildcard].nil?
        data
      end
    end

    # Structure Builder for AllRowsWildcard
    class AllRowsWildcard
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for CreateLFTag
    class CreateLFTag
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/CreateLFTag')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['TagKey'] = input[:tag_key] unless input[:tag_key].nil?
        data['TagValues'] = TagValueList.build(input[:tag_values]) unless input[:tag_values].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDataCellsFilter
    class DeleteDataCellsFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteDataCellsFilter')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TableCatalogId'] = input[:table_catalog_id] unless input[:table_catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLFTag
    class DeleteLFTag
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteLFTag')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['TagKey'] = input[:tag_key] unless input[:tag_key].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteObjectsOnCancel
    class DeleteObjectsOnCancel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeleteObjectsOnCancel')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        data['Objects'] = VirtualObjectList.build(input[:objects]) unless input[:objects].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for VirtualObjectList
    class VirtualObjectList
      def self.build(input)
        data = []
        input.each do |element|
          data << VirtualObject.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VirtualObject
    class VirtualObject
      def self.build(input)
        data = {}
        data['Uri'] = input[:uri] unless input[:uri].nil?
        data['ETag'] = input[:e_tag] unless input[:e_tag].nil?
        data
      end
    end

    # Operation Builder for DeregisterResource
    class DeregisterResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DeregisterResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeResource
    class DescribeResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeTransaction
    class DescribeTransaction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/DescribeTransaction')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExtendTransaction
    class ExtendTransaction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ExtendTransaction')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDataLakeSettings
    class GetDataLakeSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetDataLakeSettings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEffectivePermissionsForPath
    class GetEffectivePermissionsForPath
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetEffectivePermissionsForPath')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLFTag
    class GetLFTag
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetLFTag')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['TagKey'] = input[:tag_key] unless input[:tag_key].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetQueryState
    class GetQueryState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetQueryState')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['QueryId'] = input[:query_id] unless input[:query_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetQueryStatistics
    class GetQueryStatistics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetQueryStatistics')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['QueryId'] = input[:query_id] unless input[:query_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetResourceLFTags
    class GetResourceLFTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetResourceLFTags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Resource'] = Resource.build(input[:resource]) unless input[:resource].nil?
        data['ShowAssignedLFTags'] = input[:show_assigned_lf_tags] unless input[:show_assigned_lf_tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTableObjects
    class GetTableObjects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetTableObjects')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        data['QueryAsOfTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:query_as_of_time]).to_i unless input[:query_as_of_time].nil?
        data['PartitionPredicate'] = input[:partition_predicate] unless input[:partition_predicate].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTemporaryGluePartitionCredentials
    class GetTemporaryGluePartitionCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetTemporaryGluePartitionCredentials')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TableArn'] = input[:table_arn] unless input[:table_arn].nil?
        data['Partition'] = PartitionValueList.build(input[:partition]) unless input[:partition].nil?
        data['Permissions'] = PermissionList.build(input[:permissions]) unless input[:permissions].nil?
        data['DurationSeconds'] = input[:duration_seconds] unless input[:duration_seconds].nil?
        data['AuditContext'] = AuditContext.build(input[:audit_context]) unless input[:audit_context].nil?
        data['SupportedPermissionTypes'] = PermissionTypeList.build(input[:supported_permission_types]) unless input[:supported_permission_types].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PermissionTypeList
    class PermissionTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AuditContext
    class AuditContext
      def self.build(input)
        data = {}
        data['AdditionalAuditContext'] = input[:additional_audit_context] unless input[:additional_audit_context].nil?
        data
      end
    end

    # Structure Builder for PartitionValueList
    class PartitionValueList
      def self.build(input)
        data = {}
        data['Values'] = ValueStringList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for ValueStringList
    class ValueStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetTemporaryGlueTableCredentials
    class GetTemporaryGlueTableCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetTemporaryGlueTableCredentials')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TableArn'] = input[:table_arn] unless input[:table_arn].nil?
        data['Permissions'] = PermissionList.build(input[:permissions]) unless input[:permissions].nil?
        data['DurationSeconds'] = input[:duration_seconds] unless input[:duration_seconds].nil?
        data['AuditContext'] = AuditContext.build(input[:audit_context]) unless input[:audit_context].nil?
        data['SupportedPermissionTypes'] = PermissionTypeList.build(input[:supported_permission_types]) unless input[:supported_permission_types].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetWorkUnitResults
    class GetWorkUnitResults
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetWorkUnitResults')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['QueryId'] = input[:query_id] unless input[:query_id].nil?
        data['WorkUnitId'] = input[:work_unit_id] unless input[:work_unit_id].nil?
        data['WorkUnitToken'] = input[:work_unit_token] unless input[:work_unit_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetWorkUnits
    class GetWorkUnits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetWorkUnits')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['QueryId'] = input[:query_id] unless input[:query_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GrantPermissions
    class GrantPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GrantPermissions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Principal'] = DataLakePrincipal.build(input[:principal]) unless input[:principal].nil?
        data['Resource'] = Resource.build(input[:resource]) unless input[:resource].nil?
        data['Permissions'] = PermissionList.build(input[:permissions]) unless input[:permissions].nil?
        data['PermissionsWithGrantOption'] = PermissionList.build(input[:permissions_with_grant_option]) unless input[:permissions_with_grant_option].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDataCellsFilter
    class ListDataCellsFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListDataCellsFilter')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Table'] = TableResource.build(input[:table]) unless input[:table].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLFTags
    class ListLFTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListLFTags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['ResourceShareType'] = input[:resource_share_type] unless input[:resource_share_type].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPermissions
    class ListPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListPermissions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Principal'] = DataLakePrincipal.build(input[:principal]) unless input[:principal].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['Resource'] = Resource.build(input[:resource]) unless input[:resource].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['IncludeRelated'] = input[:include_related] unless input[:include_related].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResources
    class ListResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListResources')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['FilterConditionList'] = FilterConditionList.build(input[:filter_condition_list]) unless input[:filter_condition_list].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FilterConditionList
    class FilterConditionList
      def self.build(input)
        data = []
        input.each do |element|
          data << FilterCondition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FilterCondition
    class FilterCondition
      def self.build(input)
        data = {}
        data['Field'] = input[:field] unless input[:field].nil?
        data['ComparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data['StringValueList'] = StringValueList.build(input[:string_value_list]) unless input[:string_value_list].nil?
        data
      end
    end

    # List Builder for StringValueList
    class StringValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListTableStorageOptimizers
    class ListTableStorageOptimizers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListTableStorageOptimizers')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['StorageOptimizerType'] = input[:storage_optimizer_type] unless input[:storage_optimizer_type].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTransactions
    class ListTransactions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/ListTransactions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['StatusFilter'] = input[:status_filter] unless input[:status_filter].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutDataLakeSettings
    class PutDataLakeSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/PutDataLakeSettings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DataLakeSettings'] = DataLakeSettings.build(input[:data_lake_settings]) unless input[:data_lake_settings].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DataLakeSettings
    class DataLakeSettings
      def self.build(input)
        data = {}
        data['DataLakeAdmins'] = DataLakePrincipalList.build(input[:data_lake_admins]) unless input[:data_lake_admins].nil?
        data['CreateDatabaseDefaultPermissions'] = PrincipalPermissionsList.build(input[:create_database_default_permissions]) unless input[:create_database_default_permissions].nil?
        data['CreateTableDefaultPermissions'] = PrincipalPermissionsList.build(input[:create_table_default_permissions]) unless input[:create_table_default_permissions].nil?
        data['TrustedResourceOwners'] = TrustedResourceOwners.build(input[:trusted_resource_owners]) unless input[:trusted_resource_owners].nil?
        data['AllowExternalDataFiltering'] = input[:allow_external_data_filtering] unless input[:allow_external_data_filtering].nil?
        data['ExternalDataFilteringAllowList'] = DataLakePrincipalList.build(input[:external_data_filtering_allow_list]) unless input[:external_data_filtering_allow_list].nil?
        data['AuthorizedSessionTagValueList'] = AuthorizedSessionTagValueList.build(input[:authorized_session_tag_value_list]) unless input[:authorized_session_tag_value_list].nil?
        data
      end
    end

    # List Builder for AuthorizedSessionTagValueList
    class AuthorizedSessionTagValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DataLakePrincipalList
    class DataLakePrincipalList
      def self.build(input)
        data = []
        input.each do |element|
          data << DataLakePrincipal.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for TrustedResourceOwners
    class TrustedResourceOwners
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for PrincipalPermissionsList
    class PrincipalPermissionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << PrincipalPermissions.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PrincipalPermissions
    class PrincipalPermissions
      def self.build(input)
        data = {}
        data['Principal'] = DataLakePrincipal.build(input[:principal]) unless input[:principal].nil?
        data['Permissions'] = PermissionList.build(input[:permissions]) unless input[:permissions].nil?
        data
      end
    end

    # Operation Builder for RegisterResource
    class RegisterResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/RegisterResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['UseServiceLinkedRole'] = input[:use_service_linked_role] unless input[:use_service_linked_role].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveLFTagsFromResource
    class RemoveLFTagsFromResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/RemoveLFTagsFromResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Resource'] = Resource.build(input[:resource]) unless input[:resource].nil?
        data['LFTags'] = LFTagsList.build(input[:lf_tags]) unless input[:lf_tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RevokePermissions
    class RevokePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/RevokePermissions')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Principal'] = DataLakePrincipal.build(input[:principal]) unless input[:principal].nil?
        data['Resource'] = Resource.build(input[:resource]) unless input[:resource].nil?
        data['Permissions'] = PermissionList.build(input[:permissions]) unless input[:permissions].nil?
        data['PermissionsWithGrantOption'] = PermissionList.build(input[:permissions_with_grant_option]) unless input[:permissions_with_grant_option].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchDatabasesByLFTags
    class SearchDatabasesByLFTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/SearchDatabasesByLFTags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Expression'] = Expression.build(input[:expression]) unless input[:expression].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchTablesByLFTags
    class SearchTablesByLFTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/SearchTablesByLFTags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['Expression'] = Expression.build(input[:expression]) unless input[:expression].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartQueryPlanning
    class StartQueryPlanning
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/StartQueryPlanning')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['QueryPlanningContext'] = QueryPlanningContext.build(input[:query_planning_context]) unless input[:query_planning_context].nil?
        data['QueryString'] = input[:query_string] unless input[:query_string].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for QueryPlanningContext
    class QueryPlanningContext
      def self.build(input)
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['QueryAsOfTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:query_as_of_time]).to_i unless input[:query_as_of_time].nil?
        data['QueryParameters'] = QueryParameterMap.build(input[:query_parameters]) unless input[:query_parameters].nil?
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        data
      end
    end

    # Map Builder for QueryParameterMap
    class QueryParameterMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for StartTransaction
    class StartTransaction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/StartTransaction')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TransactionType'] = input[:transaction_type] unless input[:transaction_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateLFTag
    class UpdateLFTag
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UpdateLFTag')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['TagKey'] = input[:tag_key] unless input[:tag_key].nil?
        data['TagValuesToDelete'] = TagValueList.build(input[:tag_values_to_delete]) unless input[:tag_values_to_delete].nil?
        data['TagValuesToAdd'] = TagValueList.build(input[:tag_values_to_add]) unless input[:tag_values_to_add].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateResource
    class UpdateResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UpdateResource')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTableObjects
    class UpdateTableObjects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UpdateTableObjects')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['TransactionId'] = input[:transaction_id] unless input[:transaction_id].nil?
        data['WriteOperations'] = WriteOperationList.build(input[:write_operations]) unless input[:write_operations].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for WriteOperationList
    class WriteOperationList
      def self.build(input)
        data = []
        input.each do |element|
          data << WriteOperation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for WriteOperation
    class WriteOperation
      def self.build(input)
        data = {}
        data['AddObject'] = AddObjectInput.build(input[:add_object]) unless input[:add_object].nil?
        data['DeleteObject'] = DeleteObjectInput.build(input[:delete_object]) unless input[:delete_object].nil?
        data
      end
    end

    # Structure Builder for DeleteObjectInput
    class DeleteObjectInput
      def self.build(input)
        data = {}
        data['Uri'] = input[:uri] unless input[:uri].nil?
        data['ETag'] = input[:e_tag] unless input[:e_tag].nil?
        data['PartitionValues'] = PartitionValuesList.build(input[:partition_values]) unless input[:partition_values].nil?
        data
      end
    end

    # List Builder for PartitionValuesList
    class PartitionValuesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AddObjectInput
    class AddObjectInput
      def self.build(input)
        data = {}
        data['Uri'] = input[:uri] unless input[:uri].nil?
        data['ETag'] = input[:e_tag] unless input[:e_tag].nil?
        data['Size'] = input[:size] unless input[:size].nil?
        data['PartitionValues'] = PartitionValuesList.build(input[:partition_values]) unless input[:partition_values].nil?
        data
      end
    end

    # Operation Builder for UpdateTableStorageOptimizer
    class UpdateTableStorageOptimizer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/UpdateTableStorageOptimizer')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['StorageOptimizerConfig'] = StorageOptimizerConfigMap.build(input[:storage_optimizer_config]) unless input[:storage_optimizer_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for StorageOptimizerConfigMap
    class StorageOptimizerConfigMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = StorageOptimizerConfig.build(value) unless value.nil?
        end
        data
      end
    end

    # Map Builder for StorageOptimizerConfig
    class StorageOptimizerConfig
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end
  end
end
