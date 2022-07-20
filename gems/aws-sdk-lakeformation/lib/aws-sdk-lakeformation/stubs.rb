# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LakeFormation
  module Stubs

    # Operation Stubber for AddLFTagsToResource
    class AddLFTagsToResource
      def self.default(visited=[])
        {
          failures: LFTagErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Failures'] = Stubs::LFTagErrors.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LFTagErrors
    class LFTagErrors
      def self.default(visited=[])
        return nil if visited.include?('LFTagErrors')
        visited = visited + ['LFTagErrors']
        [
          LFTagError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LFTagError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LFTagError
    class LFTagError
      def self.default(visited=[])
        return nil if visited.include?('LFTagError')
        visited = visited + ['LFTagError']
        {
          lf_tag: LFTagPair.default(visited),
          error: ErrorDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LFTagError.new
        data = {}
        data['LFTag'] = Stubs::LFTagPair.stub(stub[:lf_tag]) unless stub[:lf_tag].nil?
        data['Error'] = Stubs::ErrorDetail.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Structure Stubber for ErrorDetail
    class ErrorDetail
      def self.default(visited=[])
        return nil if visited.include?('ErrorDetail')
        visited = visited + ['ErrorDetail']
        {
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorDetail.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for LFTagPair
    class LFTagPair
      def self.default(visited=[])
        return nil if visited.include?('LFTagPair')
        visited = visited + ['LFTagPair']
        {
          catalog_id: 'catalog_id',
          tag_key: 'tag_key',
          tag_values: TagValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LFTagPair.new
        data = {}
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data['TagKey'] = stub[:tag_key] unless stub[:tag_key].nil?
        data['TagValues'] = Stubs::TagValueList.stub(stub[:tag_values]) unless stub[:tag_values].nil?
        data
      end
    end

    # List Stubber for TagValueList
    class TagValueList
      def self.default(visited=[])
        return nil if visited.include?('TagValueList')
        visited = visited + ['TagValueList']
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

    # Operation Stubber for BatchGrantPermissions
    class BatchGrantPermissions
      def self.default(visited=[])
        {
          failures: BatchPermissionsFailureList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Failures'] = Stubs::BatchPermissionsFailureList.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BatchPermissionsFailureList
    class BatchPermissionsFailureList
      def self.default(visited=[])
        return nil if visited.include?('BatchPermissionsFailureList')
        visited = visited + ['BatchPermissionsFailureList']
        [
          BatchPermissionsFailureEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchPermissionsFailureEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchPermissionsFailureEntry
    class BatchPermissionsFailureEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchPermissionsFailureEntry')
        visited = visited + ['BatchPermissionsFailureEntry']
        {
          request_entry: BatchPermissionsRequestEntry.default(visited),
          error: ErrorDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchPermissionsFailureEntry.new
        data = {}
        data['RequestEntry'] = Stubs::BatchPermissionsRequestEntry.stub(stub[:request_entry]) unless stub[:request_entry].nil?
        data['Error'] = Stubs::ErrorDetail.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Structure Stubber for BatchPermissionsRequestEntry
    class BatchPermissionsRequestEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchPermissionsRequestEntry')
        visited = visited + ['BatchPermissionsRequestEntry']
        {
          id: 'id',
          principal: DataLakePrincipal.default(visited),
          resource: Resource.default(visited),
          permissions: PermissionList.default(visited),
          permissions_with_grant_option: PermissionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchPermissionsRequestEntry.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Principal'] = Stubs::DataLakePrincipal.stub(stub[:principal]) unless stub[:principal].nil?
        data['Resource'] = Stubs::Resource.stub(stub[:resource]) unless stub[:resource].nil?
        data['Permissions'] = Stubs::PermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['PermissionsWithGrantOption'] = Stubs::PermissionList.stub(stub[:permissions_with_grant_option]) unless stub[:permissions_with_grant_option].nil?
        data
      end
    end

    # List Stubber for PermissionList
    class PermissionList
      def self.default(visited=[])
        return nil if visited.include?('PermissionList')
        visited = visited + ['PermissionList']
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

    # Structure Stubber for Resource
    class Resource
      def self.default(visited=[])
        return nil if visited.include?('Resource')
        visited = visited + ['Resource']
        {
          catalog: CatalogResource.default(visited),
          database: DatabaseResource.default(visited),
          table: TableResource.default(visited),
          table_with_columns: TableWithColumnsResource.default(visited),
          data_location: DataLocationResource.default(visited),
          data_cells_filter: DataCellsFilterResource.default(visited),
          lf_tag: LFTagKeyResource.default(visited),
          lf_tag_policy: LFTagPolicyResource.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['Catalog'] = Stubs::CatalogResource.stub(stub[:catalog]) unless stub[:catalog].nil?
        data['Database'] = Stubs::DatabaseResource.stub(stub[:database]) unless stub[:database].nil?
        data['Table'] = Stubs::TableResource.stub(stub[:table]) unless stub[:table].nil?
        data['TableWithColumns'] = Stubs::TableWithColumnsResource.stub(stub[:table_with_columns]) unless stub[:table_with_columns].nil?
        data['DataLocation'] = Stubs::DataLocationResource.stub(stub[:data_location]) unless stub[:data_location].nil?
        data['DataCellsFilter'] = Stubs::DataCellsFilterResource.stub(stub[:data_cells_filter]) unless stub[:data_cells_filter].nil?
        data['LFTag'] = Stubs::LFTagKeyResource.stub(stub[:lf_tag]) unless stub[:lf_tag].nil?
        data['LFTagPolicy'] = Stubs::LFTagPolicyResource.stub(stub[:lf_tag_policy]) unless stub[:lf_tag_policy].nil?
        data
      end
    end

    # Structure Stubber for LFTagPolicyResource
    class LFTagPolicyResource
      def self.default(visited=[])
        return nil if visited.include?('LFTagPolicyResource')
        visited = visited + ['LFTagPolicyResource']
        {
          catalog_id: 'catalog_id',
          resource_type: 'resource_type',
          expression: Expression.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LFTagPolicyResource.new
        data = {}
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data['ResourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['Expression'] = Stubs::Expression.stub(stub[:expression]) unless stub[:expression].nil?
        data
      end
    end

    # List Stubber for Expression
    class Expression
      def self.default(visited=[])
        return nil if visited.include?('Expression')
        visited = visited + ['Expression']
        [
          LFTag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LFTag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LFTag
    class LFTag
      def self.default(visited=[])
        return nil if visited.include?('LFTag')
        visited = visited + ['LFTag']
        {
          tag_key: 'tag_key',
          tag_values: TagValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LFTag.new
        data = {}
        data['TagKey'] = stub[:tag_key] unless stub[:tag_key].nil?
        data['TagValues'] = Stubs::TagValueList.stub(stub[:tag_values]) unless stub[:tag_values].nil?
        data
      end
    end

    # Structure Stubber for LFTagKeyResource
    class LFTagKeyResource
      def self.default(visited=[])
        return nil if visited.include?('LFTagKeyResource')
        visited = visited + ['LFTagKeyResource']
        {
          catalog_id: 'catalog_id',
          tag_key: 'tag_key',
          tag_values: TagValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LFTagKeyResource.new
        data = {}
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data['TagKey'] = stub[:tag_key] unless stub[:tag_key].nil?
        data['TagValues'] = Stubs::TagValueList.stub(stub[:tag_values]) unless stub[:tag_values].nil?
        data
      end
    end

    # Structure Stubber for DataCellsFilterResource
    class DataCellsFilterResource
      def self.default(visited=[])
        return nil if visited.include?('DataCellsFilterResource')
        visited = visited + ['DataCellsFilterResource']
        {
          table_catalog_id: 'table_catalog_id',
          database_name: 'database_name',
          table_name: 'table_name',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataCellsFilterResource.new
        data = {}
        data['TableCatalogId'] = stub[:table_catalog_id] unless stub[:table_catalog_id].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for DataLocationResource
    class DataLocationResource
      def self.default(visited=[])
        return nil if visited.include?('DataLocationResource')
        visited = visited + ['DataLocationResource']
        {
          catalog_id: 'catalog_id',
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataLocationResource.new
        data = {}
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data
      end
    end

    # Structure Stubber for TableWithColumnsResource
    class TableWithColumnsResource
      def self.default(visited=[])
        return nil if visited.include?('TableWithColumnsResource')
        visited = visited + ['TableWithColumnsResource']
        {
          catalog_id: 'catalog_id',
          database_name: 'database_name',
          name: 'name',
          column_names: ColumnNames.default(visited),
          column_wildcard: ColumnWildcard.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TableWithColumnsResource.new
        data = {}
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ColumnNames'] = Stubs::ColumnNames.stub(stub[:column_names]) unless stub[:column_names].nil?
        data['ColumnWildcard'] = Stubs::ColumnWildcard.stub(stub[:column_wildcard]) unless stub[:column_wildcard].nil?
        data
      end
    end

    # Structure Stubber for ColumnWildcard
    class ColumnWildcard
      def self.default(visited=[])
        return nil if visited.include?('ColumnWildcard')
        visited = visited + ['ColumnWildcard']
        {
          excluded_column_names: ColumnNames.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnWildcard.new
        data = {}
        data['ExcludedColumnNames'] = Stubs::ColumnNames.stub(stub[:excluded_column_names]) unless stub[:excluded_column_names].nil?
        data
      end
    end

    # List Stubber for ColumnNames
    class ColumnNames
      def self.default(visited=[])
        return nil if visited.include?('ColumnNames')
        visited = visited + ['ColumnNames']
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

    # Structure Stubber for TableResource
    class TableResource
      def self.default(visited=[])
        return nil if visited.include?('TableResource')
        visited = visited + ['TableResource']
        {
          catalog_id: 'catalog_id',
          database_name: 'database_name',
          name: 'name',
          table_wildcard: TableWildcard.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TableResource.new
        data = {}
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['TableWildcard'] = Stubs::TableWildcard.stub(stub[:table_wildcard]) unless stub[:table_wildcard].nil?
        data
      end
    end

    # Structure Stubber for TableWildcard
    class TableWildcard
      def self.default(visited=[])
        return nil if visited.include?('TableWildcard')
        visited = visited + ['TableWildcard']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::TableWildcard.new
        data = {}
        data
      end
    end

    # Structure Stubber for DatabaseResource
    class DatabaseResource
      def self.default(visited=[])
        return nil if visited.include?('DatabaseResource')
        visited = visited + ['DatabaseResource']
        {
          catalog_id: 'catalog_id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatabaseResource.new
        data = {}
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for CatalogResource
    class CatalogResource
      def self.default(visited=[])
        return nil if visited.include?('CatalogResource')
        visited = visited + ['CatalogResource']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::CatalogResource.new
        data = {}
        data
      end
    end

    # Structure Stubber for DataLakePrincipal
    class DataLakePrincipal
      def self.default(visited=[])
        return nil if visited.include?('DataLakePrincipal')
        visited = visited + ['DataLakePrincipal']
        {
          data_lake_principal_identifier: 'data_lake_principal_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataLakePrincipal.new
        data = {}
        data['DataLakePrincipalIdentifier'] = stub[:data_lake_principal_identifier] unless stub[:data_lake_principal_identifier].nil?
        data
      end
    end

    # Operation Stubber for BatchRevokePermissions
    class BatchRevokePermissions
      def self.default(visited=[])
        {
          failures: BatchPermissionsFailureList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Failures'] = Stubs::BatchPermissionsFailureList.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CancelTransaction
    class CancelTransaction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CommitTransaction
    class CommitTransaction
      def self.default(visited=[])
        {
          transaction_status: 'transaction_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TransactionStatus'] = stub[:transaction_status] unless stub[:transaction_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDataCellsFilter
    class CreateDataCellsFilter
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLFTag
    class CreateLFTag
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDataCellsFilter
    class DeleteDataCellsFilter
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLFTag
    class DeleteLFTag
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteObjectsOnCancel
    class DeleteObjectsOnCancel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterResource
    class DeregisterResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeResource
    class DescribeResource
      def self.default(visited=[])
        {
          resource_info: ResourceInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ResourceInfo'] = Stubs::ResourceInfo.stub(stub[:resource_info]) unless stub[:resource_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ResourceInfo
    class ResourceInfo
      def self.default(visited=[])
        return nil if visited.include?('ResourceInfo')
        visited = visited + ['ResourceInfo']
        {
          resource_arn: 'resource_arn',
          role_arn: 'role_arn',
          last_modified: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceInfo.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['LastModified'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified]).to_i unless stub[:last_modified].nil?
        data
      end
    end

    # Operation Stubber for DescribeTransaction
    class DescribeTransaction
      def self.default(visited=[])
        {
          transaction_description: TransactionDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TransactionDescription'] = Stubs::TransactionDescription.stub(stub[:transaction_description]) unless stub[:transaction_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TransactionDescription
    class TransactionDescription
      def self.default(visited=[])
        return nil if visited.include?('TransactionDescription')
        visited = visited + ['TransactionDescription']
        {
          transaction_id: 'transaction_id',
          transaction_status: 'transaction_status',
          transaction_start_time: Time.now,
          transaction_end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TransactionDescription.new
        data = {}
        data['TransactionId'] = stub[:transaction_id] unless stub[:transaction_id].nil?
        data['TransactionStatus'] = stub[:transaction_status] unless stub[:transaction_status].nil?
        data['TransactionStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:transaction_start_time]).to_i unless stub[:transaction_start_time].nil?
        data['TransactionEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:transaction_end_time]).to_i unless stub[:transaction_end_time].nil?
        data
      end
    end

    # Operation Stubber for ExtendTransaction
    class ExtendTransaction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDataLakeSettings
    class GetDataLakeSettings
      def self.default(visited=[])
        {
          data_lake_settings: DataLakeSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DataLakeSettings'] = Stubs::DataLakeSettings.stub(stub[:data_lake_settings]) unless stub[:data_lake_settings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DataLakeSettings
    class DataLakeSettings
      def self.default(visited=[])
        return nil if visited.include?('DataLakeSettings')
        visited = visited + ['DataLakeSettings']
        {
          data_lake_admins: DataLakePrincipalList.default(visited),
          create_database_default_permissions: PrincipalPermissionsList.default(visited),
          create_table_default_permissions: PrincipalPermissionsList.default(visited),
          trusted_resource_owners: TrustedResourceOwners.default(visited),
          allow_external_data_filtering: false,
          external_data_filtering_allow_list: DataLakePrincipalList.default(visited),
          authorized_session_tag_value_list: AuthorizedSessionTagValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataLakeSettings.new
        data = {}
        data['DataLakeAdmins'] = Stubs::DataLakePrincipalList.stub(stub[:data_lake_admins]) unless stub[:data_lake_admins].nil?
        data['CreateDatabaseDefaultPermissions'] = Stubs::PrincipalPermissionsList.stub(stub[:create_database_default_permissions]) unless stub[:create_database_default_permissions].nil?
        data['CreateTableDefaultPermissions'] = Stubs::PrincipalPermissionsList.stub(stub[:create_table_default_permissions]) unless stub[:create_table_default_permissions].nil?
        data['TrustedResourceOwners'] = Stubs::TrustedResourceOwners.stub(stub[:trusted_resource_owners]) unless stub[:trusted_resource_owners].nil?
        data['AllowExternalDataFiltering'] = stub[:allow_external_data_filtering] unless stub[:allow_external_data_filtering].nil?
        data['ExternalDataFilteringAllowList'] = Stubs::DataLakePrincipalList.stub(stub[:external_data_filtering_allow_list]) unless stub[:external_data_filtering_allow_list].nil?
        data['AuthorizedSessionTagValueList'] = Stubs::AuthorizedSessionTagValueList.stub(stub[:authorized_session_tag_value_list]) unless stub[:authorized_session_tag_value_list].nil?
        data
      end
    end

    # List Stubber for AuthorizedSessionTagValueList
    class AuthorizedSessionTagValueList
      def self.default(visited=[])
        return nil if visited.include?('AuthorizedSessionTagValueList')
        visited = visited + ['AuthorizedSessionTagValueList']
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

    # List Stubber for DataLakePrincipalList
    class DataLakePrincipalList
      def self.default(visited=[])
        return nil if visited.include?('DataLakePrincipalList')
        visited = visited + ['DataLakePrincipalList']
        [
          DataLakePrincipal.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataLakePrincipal.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for TrustedResourceOwners
    class TrustedResourceOwners
      def self.default(visited=[])
        return nil if visited.include?('TrustedResourceOwners')
        visited = visited + ['TrustedResourceOwners']
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

    # List Stubber for PrincipalPermissionsList
    class PrincipalPermissionsList
      def self.default(visited=[])
        return nil if visited.include?('PrincipalPermissionsList')
        visited = visited + ['PrincipalPermissionsList']
        [
          PrincipalPermissions.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PrincipalPermissions.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PrincipalPermissions
    class PrincipalPermissions
      def self.default(visited=[])
        return nil if visited.include?('PrincipalPermissions')
        visited = visited + ['PrincipalPermissions']
        {
          principal: DataLakePrincipal.default(visited),
          permissions: PermissionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PrincipalPermissions.new
        data = {}
        data['Principal'] = Stubs::DataLakePrincipal.stub(stub[:principal]) unless stub[:principal].nil?
        data['Permissions'] = Stubs::PermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data
      end
    end

    # Operation Stubber for GetEffectivePermissionsForPath
    class GetEffectivePermissionsForPath
      def self.default(visited=[])
        {
          permissions: PrincipalResourcePermissionsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Permissions'] = Stubs::PrincipalResourcePermissionsList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PrincipalResourcePermissionsList
    class PrincipalResourcePermissionsList
      def self.default(visited=[])
        return nil if visited.include?('PrincipalResourcePermissionsList')
        visited = visited + ['PrincipalResourcePermissionsList']
        [
          PrincipalResourcePermissions.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PrincipalResourcePermissions.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PrincipalResourcePermissions
    class PrincipalResourcePermissions
      def self.default(visited=[])
        return nil if visited.include?('PrincipalResourcePermissions')
        visited = visited + ['PrincipalResourcePermissions']
        {
          principal: DataLakePrincipal.default(visited),
          resource: Resource.default(visited),
          permissions: PermissionList.default(visited),
          permissions_with_grant_option: PermissionList.default(visited),
          additional_details: DetailsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PrincipalResourcePermissions.new
        data = {}
        data['Principal'] = Stubs::DataLakePrincipal.stub(stub[:principal]) unless stub[:principal].nil?
        data['Resource'] = Stubs::Resource.stub(stub[:resource]) unless stub[:resource].nil?
        data['Permissions'] = Stubs::PermissionList.stub(stub[:permissions]) unless stub[:permissions].nil?
        data['PermissionsWithGrantOption'] = Stubs::PermissionList.stub(stub[:permissions_with_grant_option]) unless stub[:permissions_with_grant_option].nil?
        data['AdditionalDetails'] = Stubs::DetailsMap.stub(stub[:additional_details]) unless stub[:additional_details].nil?
        data
      end
    end

    # Structure Stubber for DetailsMap
    class DetailsMap
      def self.default(visited=[])
        return nil if visited.include?('DetailsMap')
        visited = visited + ['DetailsMap']
        {
          resource_share: ResourceShareList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DetailsMap.new
        data = {}
        data['ResourceShare'] = Stubs::ResourceShareList.stub(stub[:resource_share]) unless stub[:resource_share].nil?
        data
      end
    end

    # List Stubber for ResourceShareList
    class ResourceShareList
      def self.default(visited=[])
        return nil if visited.include?('ResourceShareList')
        visited = visited + ['ResourceShareList']
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

    # Operation Stubber for GetLFTag
    class GetLFTag
      def self.default(visited=[])
        {
          catalog_id: 'catalog_id',
          tag_key: 'tag_key',
          tag_values: TagValueList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data['TagKey'] = stub[:tag_key] unless stub[:tag_key].nil?
        data['TagValues'] = Stubs::TagValueList.stub(stub[:tag_values]) unless stub[:tag_values].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetQueryState
    class GetQueryState
      def self.default(visited=[])
        {
          error: 'error',
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Error'] = stub[:error] unless stub[:error].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetQueryStatistics
    class GetQueryStatistics
      def self.default(visited=[])
        {
          execution_statistics: ExecutionStatistics.default(visited),
          planning_statistics: PlanningStatistics.default(visited),
          query_submission_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ExecutionStatistics'] = Stubs::ExecutionStatistics.stub(stub[:execution_statistics]) unless stub[:execution_statistics].nil?
        data['PlanningStatistics'] = Stubs::PlanningStatistics.stub(stub[:planning_statistics]) unless stub[:planning_statistics].nil?
        data['QuerySubmissionTime'] = Hearth::TimeHelper.to_date_time(stub[:query_submission_time]) unless stub[:query_submission_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for PlanningStatistics
    class PlanningStatistics
      def self.default(visited=[])
        return nil if visited.include?('PlanningStatistics')
        visited = visited + ['PlanningStatistics']
        {
          estimated_data_to_scan_bytes: 1,
          planning_time_millis: 1,
          queue_time_millis: 1,
          work_units_generated_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PlanningStatistics.new
        data = {}
        data['EstimatedDataToScanBytes'] = stub[:estimated_data_to_scan_bytes] unless stub[:estimated_data_to_scan_bytes].nil?
        data['PlanningTimeMillis'] = stub[:planning_time_millis] unless stub[:planning_time_millis].nil?
        data['QueueTimeMillis'] = stub[:queue_time_millis] unless stub[:queue_time_millis].nil?
        data['WorkUnitsGeneratedCount'] = stub[:work_units_generated_count] unless stub[:work_units_generated_count].nil?
        data
      end
    end

    # Structure Stubber for ExecutionStatistics
    class ExecutionStatistics
      def self.default(visited=[])
        return nil if visited.include?('ExecutionStatistics')
        visited = visited + ['ExecutionStatistics']
        {
          average_execution_time_millis: 1,
          data_scanned_bytes: 1,
          work_units_executed_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionStatistics.new
        data = {}
        data['AverageExecutionTimeMillis'] = stub[:average_execution_time_millis] unless stub[:average_execution_time_millis].nil?
        data['DataScannedBytes'] = stub[:data_scanned_bytes] unless stub[:data_scanned_bytes].nil?
        data['WorkUnitsExecutedCount'] = stub[:work_units_executed_count] unless stub[:work_units_executed_count].nil?
        data
      end
    end

    # Operation Stubber for GetResourceLFTags
    class GetResourceLFTags
      def self.default(visited=[])
        {
          lf_tag_on_database: LFTagsList.default(visited),
          lf_tags_on_table: LFTagsList.default(visited),
          lf_tags_on_columns: ColumnLFTagsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LFTagOnDatabase'] = Stubs::LFTagsList.stub(stub[:lf_tag_on_database]) unless stub[:lf_tag_on_database].nil?
        data['LFTagsOnTable'] = Stubs::LFTagsList.stub(stub[:lf_tags_on_table]) unless stub[:lf_tags_on_table].nil?
        data['LFTagsOnColumns'] = Stubs::ColumnLFTagsList.stub(stub[:lf_tags_on_columns]) unless stub[:lf_tags_on_columns].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ColumnLFTagsList
    class ColumnLFTagsList
      def self.default(visited=[])
        return nil if visited.include?('ColumnLFTagsList')
        visited = visited + ['ColumnLFTagsList']
        [
          ColumnLFTag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ColumnLFTag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnLFTag
    class ColumnLFTag
      def self.default(visited=[])
        return nil if visited.include?('ColumnLFTag')
        visited = visited + ['ColumnLFTag']
        {
          name: 'name',
          lf_tags: LFTagsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnLFTag.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['LFTags'] = Stubs::LFTagsList.stub(stub[:lf_tags]) unless stub[:lf_tags].nil?
        data
      end
    end

    # List Stubber for LFTagsList
    class LFTagsList
      def self.default(visited=[])
        return nil if visited.include?('LFTagsList')
        visited = visited + ['LFTagsList']
        [
          LFTagPair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LFTagPair.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetTableObjects
    class GetTableObjects
      def self.default(visited=[])
        {
          objects: PartitionedTableObjectsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Objects'] = Stubs::PartitionedTableObjectsList.stub(stub[:objects]) unless stub[:objects].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PartitionedTableObjectsList
    class PartitionedTableObjectsList
      def self.default(visited=[])
        return nil if visited.include?('PartitionedTableObjectsList')
        visited = visited + ['PartitionedTableObjectsList']
        [
          PartitionObjects.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PartitionObjects.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PartitionObjects
    class PartitionObjects
      def self.default(visited=[])
        return nil if visited.include?('PartitionObjects')
        visited = visited + ['PartitionObjects']
        {
          partition_values: PartitionValuesList.default(visited),
          objects: TableObjectList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PartitionObjects.new
        data = {}
        data['PartitionValues'] = Stubs::PartitionValuesList.stub(stub[:partition_values]) unless stub[:partition_values].nil?
        data['Objects'] = Stubs::TableObjectList.stub(stub[:objects]) unless stub[:objects].nil?
        data
      end
    end

    # List Stubber for TableObjectList
    class TableObjectList
      def self.default(visited=[])
        return nil if visited.include?('TableObjectList')
        visited = visited + ['TableObjectList']
        [
          TableObject.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TableObject.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TableObject
    class TableObject
      def self.default(visited=[])
        return nil if visited.include?('TableObject')
        visited = visited + ['TableObject']
        {
          uri: 'uri',
          e_tag: 'e_tag',
          size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TableObject.new
        data = {}
        data['Uri'] = stub[:uri] unless stub[:uri].nil?
        data['ETag'] = stub[:e_tag] unless stub[:e_tag].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data
      end
    end

    # List Stubber for PartitionValuesList
    class PartitionValuesList
      def self.default(visited=[])
        return nil if visited.include?('PartitionValuesList')
        visited = visited + ['PartitionValuesList']
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

    # Operation Stubber for GetTemporaryGluePartitionCredentials
    class GetTemporaryGluePartitionCredentials
      def self.default(visited=[])
        {
          access_key_id: 'access_key_id',
          secret_access_key: 'secret_access_key',
          session_token: 'session_token',
          expiration: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AccessKeyId'] = stub[:access_key_id] unless stub[:access_key_id].nil?
        data['SecretAccessKey'] = stub[:secret_access_key] unless stub[:secret_access_key].nil?
        data['SessionToken'] = stub[:session_token] unless stub[:session_token].nil?
        data['Expiration'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration]).to_i unless stub[:expiration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetTemporaryGlueTableCredentials
    class GetTemporaryGlueTableCredentials
      def self.default(visited=[])
        {
          access_key_id: 'access_key_id',
          secret_access_key: 'secret_access_key',
          session_token: 'session_token',
          expiration: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AccessKeyId'] = stub[:access_key_id] unless stub[:access_key_id].nil?
        data['SecretAccessKey'] = stub[:secret_access_key] unless stub[:secret_access_key].nil?
        data['SessionToken'] = stub[:session_token] unless stub[:session_token].nil?
        data['Expiration'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration]).to_i unless stub[:expiration].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetWorkUnitResults
    class GetWorkUnitResults
      def self.default(visited=[])
        {
          result_stream: 'result_stream',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        IO.copy_stream(stub[:result_stream], http_resp.body)
      end
    end

    # Operation Stubber for GetWorkUnits
    class GetWorkUnits
      def self.default(visited=[])
        {
          next_token: 'next_token',
          query_id: 'query_id',
          work_unit_ranges: WorkUnitRangeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['QueryId'] = stub[:query_id] unless stub[:query_id].nil?
        data['WorkUnitRanges'] = Stubs::WorkUnitRangeList.stub(stub[:work_unit_ranges]) unless stub[:work_unit_ranges].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WorkUnitRangeList
    class WorkUnitRangeList
      def self.default(visited=[])
        return nil if visited.include?('WorkUnitRangeList')
        visited = visited + ['WorkUnitRangeList']
        [
          WorkUnitRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorkUnitRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkUnitRange
    class WorkUnitRange
      def self.default(visited=[])
        return nil if visited.include?('WorkUnitRange')
        visited = visited + ['WorkUnitRange']
        {
          work_unit_id_max: 1,
          work_unit_id_min: 1,
          work_unit_token: 'work_unit_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkUnitRange.new
        data = {}
        data['WorkUnitIdMax'] = stub[:work_unit_id_max] unless stub[:work_unit_id_max].nil?
        data['WorkUnitIdMin'] = stub[:work_unit_id_min] unless stub[:work_unit_id_min].nil?
        data['WorkUnitToken'] = stub[:work_unit_token] unless stub[:work_unit_token].nil?
        data
      end
    end

    # Operation Stubber for GrantPermissions
    class GrantPermissions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListDataCellsFilter
    class ListDataCellsFilter
      def self.default(visited=[])
        {
          data_cells_filters: DataCellsFilterList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DataCellsFilters'] = Stubs::DataCellsFilterList.stub(stub[:data_cells_filters]) unless stub[:data_cells_filters].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DataCellsFilterList
    class DataCellsFilterList
      def self.default(visited=[])
        return nil if visited.include?('DataCellsFilterList')
        visited = visited + ['DataCellsFilterList']
        [
          DataCellsFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataCellsFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataCellsFilter
    class DataCellsFilter
      def self.default(visited=[])
        return nil if visited.include?('DataCellsFilter')
        visited = visited + ['DataCellsFilter']
        {
          table_catalog_id: 'table_catalog_id',
          database_name: 'database_name',
          table_name: 'table_name',
          name: 'name',
          row_filter: RowFilter.default(visited),
          column_names: ColumnNames.default(visited),
          column_wildcard: ColumnWildcard.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataCellsFilter.new
        data = {}
        data['TableCatalogId'] = stub[:table_catalog_id] unless stub[:table_catalog_id].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RowFilter'] = Stubs::RowFilter.stub(stub[:row_filter]) unless stub[:row_filter].nil?
        data['ColumnNames'] = Stubs::ColumnNames.stub(stub[:column_names]) unless stub[:column_names].nil?
        data['ColumnWildcard'] = Stubs::ColumnWildcard.stub(stub[:column_wildcard]) unless stub[:column_wildcard].nil?
        data
      end
    end

    # Structure Stubber for RowFilter
    class RowFilter
      def self.default(visited=[])
        return nil if visited.include?('RowFilter')
        visited = visited + ['RowFilter']
        {
          filter_expression: 'filter_expression',
          all_rows_wildcard: AllRowsWildcard.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RowFilter.new
        data = {}
        data['FilterExpression'] = stub[:filter_expression] unless stub[:filter_expression].nil?
        data['AllRowsWildcard'] = Stubs::AllRowsWildcard.stub(stub[:all_rows_wildcard]) unless stub[:all_rows_wildcard].nil?
        data
      end
    end

    # Structure Stubber for AllRowsWildcard
    class AllRowsWildcard
      def self.default(visited=[])
        return nil if visited.include?('AllRowsWildcard')
        visited = visited + ['AllRowsWildcard']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::AllRowsWildcard.new
        data = {}
        data
      end
    end

    # Operation Stubber for ListLFTags
    class ListLFTags
      def self.default(visited=[])
        {
          lf_tags: LFTagsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LFTags'] = Stubs::LFTagsList.stub(stub[:lf_tags]) unless stub[:lf_tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListPermissions
    class ListPermissions
      def self.default(visited=[])
        {
          principal_resource_permissions: PrincipalResourcePermissionsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PrincipalResourcePermissions'] = Stubs::PrincipalResourcePermissionsList.stub(stub[:principal_resource_permissions]) unless stub[:principal_resource_permissions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListResources
    class ListResources
      def self.default(visited=[])
        {
          resource_info_list: ResourceInfoList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ResourceInfoList'] = Stubs::ResourceInfoList.stub(stub[:resource_info_list]) unless stub[:resource_info_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ResourceInfoList
    class ResourceInfoList
      def self.default(visited=[])
        return nil if visited.include?('ResourceInfoList')
        visited = visited + ['ResourceInfoList']
        [
          ResourceInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTableStorageOptimizers
    class ListTableStorageOptimizers
      def self.default(visited=[])
        {
          storage_optimizer_list: StorageOptimizerList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['StorageOptimizerList'] = Stubs::StorageOptimizerList.stub(stub[:storage_optimizer_list]) unless stub[:storage_optimizer_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StorageOptimizerList
    class StorageOptimizerList
      def self.default(visited=[])
        return nil if visited.include?('StorageOptimizerList')
        visited = visited + ['StorageOptimizerList']
        [
          StorageOptimizer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StorageOptimizer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StorageOptimizer
    class StorageOptimizer
      def self.default(visited=[])
        return nil if visited.include?('StorageOptimizer')
        visited = visited + ['StorageOptimizer']
        {
          storage_optimizer_type: 'storage_optimizer_type',
          config: StorageOptimizerConfig.default(visited),
          error_message: 'error_message',
          warnings: 'warnings',
          last_run_details: 'last_run_details',
        }
      end

      def self.stub(stub)
        stub ||= Types::StorageOptimizer.new
        data = {}
        data['StorageOptimizerType'] = stub[:storage_optimizer_type] unless stub[:storage_optimizer_type].nil?
        data['Config'] = Stubs::StorageOptimizerConfig.stub(stub[:config]) unless stub[:config].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['Warnings'] = stub[:warnings] unless stub[:warnings].nil?
        data['LastRunDetails'] = stub[:last_run_details] unless stub[:last_run_details].nil?
        data
      end
    end

    # Map Stubber for StorageOptimizerConfig
    class StorageOptimizerConfig
      def self.default(visited=[])
        return nil if visited.include?('StorageOptimizerConfig')
        visited = visited + ['StorageOptimizerConfig']
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

    # Operation Stubber for ListTransactions
    class ListTransactions
      def self.default(visited=[])
        {
          transactions: TransactionDescriptionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Transactions'] = Stubs::TransactionDescriptionList.stub(stub[:transactions]) unless stub[:transactions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TransactionDescriptionList
    class TransactionDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('TransactionDescriptionList')
        visited = visited + ['TransactionDescriptionList']
        [
          TransactionDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TransactionDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for PutDataLakeSettings
    class PutDataLakeSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterResource
    class RegisterResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveLFTagsFromResource
    class RemoveLFTagsFromResource
      def self.default(visited=[])
        {
          failures: LFTagErrors.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Failures'] = Stubs::LFTagErrors.stub(stub[:failures]) unless stub[:failures].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RevokePermissions
    class RevokePermissions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for SearchDatabasesByLFTags
    class SearchDatabasesByLFTags
      def self.default(visited=[])
        {
          next_token: 'next_token',
          database_list: DatabaseLFTagsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['DatabaseList'] = Stubs::DatabaseLFTagsList.stub(stub[:database_list]) unless stub[:database_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DatabaseLFTagsList
    class DatabaseLFTagsList
      def self.default(visited=[])
        return nil if visited.include?('DatabaseLFTagsList')
        visited = visited + ['DatabaseLFTagsList']
        [
          TaggedDatabase.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TaggedDatabase.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TaggedDatabase
    class TaggedDatabase
      def self.default(visited=[])
        return nil if visited.include?('TaggedDatabase')
        visited = visited + ['TaggedDatabase']
        {
          database: DatabaseResource.default(visited),
          lf_tags: LFTagsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TaggedDatabase.new
        data = {}
        data['Database'] = Stubs::DatabaseResource.stub(stub[:database]) unless stub[:database].nil?
        data['LFTags'] = Stubs::LFTagsList.stub(stub[:lf_tags]) unless stub[:lf_tags].nil?
        data
      end
    end

    # Operation Stubber for SearchTablesByLFTags
    class SearchTablesByLFTags
      def self.default(visited=[])
        {
          next_token: 'next_token',
          table_list: TableLFTagsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TableList'] = Stubs::TableLFTagsList.stub(stub[:table_list]) unless stub[:table_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TableLFTagsList
    class TableLFTagsList
      def self.default(visited=[])
        return nil if visited.include?('TableLFTagsList')
        visited = visited + ['TableLFTagsList']
        [
          TaggedTable.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TaggedTable.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TaggedTable
    class TaggedTable
      def self.default(visited=[])
        return nil if visited.include?('TaggedTable')
        visited = visited + ['TaggedTable']
        {
          table: TableResource.default(visited),
          lf_tag_on_database: LFTagsList.default(visited),
          lf_tags_on_table: LFTagsList.default(visited),
          lf_tags_on_columns: ColumnLFTagsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TaggedTable.new
        data = {}
        data['Table'] = Stubs::TableResource.stub(stub[:table]) unless stub[:table].nil?
        data['LFTagOnDatabase'] = Stubs::LFTagsList.stub(stub[:lf_tag_on_database]) unless stub[:lf_tag_on_database].nil?
        data['LFTagsOnTable'] = Stubs::LFTagsList.stub(stub[:lf_tags_on_table]) unless stub[:lf_tags_on_table].nil?
        data['LFTagsOnColumns'] = Stubs::ColumnLFTagsList.stub(stub[:lf_tags_on_columns]) unless stub[:lf_tags_on_columns].nil?
        data
      end
    end

    # Operation Stubber for StartQueryPlanning
    class StartQueryPlanning
      def self.default(visited=[])
        {
          query_id: 'query_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['QueryId'] = stub[:query_id] unless stub[:query_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartTransaction
    class StartTransaction
      def self.default(visited=[])
        {
          transaction_id: 'transaction_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['TransactionId'] = stub[:transaction_id] unless stub[:transaction_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateLFTag
    class UpdateLFTag
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateResource
    class UpdateResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTableObjects
    class UpdateTableObjects
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTableStorageOptimizer
    class UpdateTableStorageOptimizer
      def self.default(visited=[])
        {
          result: 'result',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Result'] = stub[:result] unless stub[:result].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
