# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LakeFormation
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AddLFTagsToResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddLFTagsToResourceInput, context: context)
        type = Types::AddLFTagsToResourceInput.new
        type.catalog_id = params[:catalog_id]
        type.resource = Resource.build(params[:resource], context: "#{context}[:resource]") unless params[:resource].nil?
        type.lf_tags = LFTagsList.build(params[:lf_tags], context: "#{context}[:lf_tags]") unless params[:lf_tags].nil?
        type
      end
    end

    module AddLFTagsToResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddLFTagsToResourceOutput, context: context)
        type = Types::AddLFTagsToResourceOutput.new
        type.failures = LFTagErrors.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module AddObjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddObjectInput, context: context)
        type = Types::AddObjectInput.new
        type.uri = params[:uri]
        type.e_tag = params[:e_tag]
        type.size = params[:size]
        type.partition_values = PartitionValuesList.build(params[:partition_values], context: "#{context}[:partition_values]") unless params[:partition_values].nil?
        type
      end
    end

    module AllRowsWildcard
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllRowsWildcard, context: context)
        type = Types::AllRowsWildcard.new
        type
      end
    end

    module AlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlreadyExistsException, context: context)
        type = Types::AlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module AuditContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuditContext, context: context)
        type = Types::AuditContext.new
        type.additional_audit_context = params[:additional_audit_context]
        type
      end
    end

    module AuthorizedSessionTagValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BatchGrantPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGrantPermissionsInput, context: context)
        type = Types::BatchGrantPermissionsInput.new
        type.catalog_id = params[:catalog_id]
        type.entries = BatchPermissionsRequestEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module BatchGrantPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGrantPermissionsOutput, context: context)
        type = Types::BatchGrantPermissionsOutput.new
        type.failures = BatchPermissionsFailureList.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module BatchPermissionsFailureEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPermissionsFailureEntry, context: context)
        type = Types::BatchPermissionsFailureEntry.new
        type.request_entry = BatchPermissionsRequestEntry.build(params[:request_entry], context: "#{context}[:request_entry]") unless params[:request_entry].nil?
        type.error = ErrorDetail.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module BatchPermissionsFailureList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchPermissionsFailureEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchPermissionsRequestEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPermissionsRequestEntry, context: context)
        type = Types::BatchPermissionsRequestEntry.new
        type.id = params[:id]
        type.principal = DataLakePrincipal.build(params[:principal], context: "#{context}[:principal]") unless params[:principal].nil?
        type.resource = Resource.build(params[:resource], context: "#{context}[:resource]") unless params[:resource].nil?
        type.permissions = PermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.permissions_with_grant_option = PermissionList.build(params[:permissions_with_grant_option], context: "#{context}[:permissions_with_grant_option]") unless params[:permissions_with_grant_option].nil?
        type
      end
    end

    module BatchPermissionsRequestEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchPermissionsRequestEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchRevokePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchRevokePermissionsInput, context: context)
        type = Types::BatchRevokePermissionsInput.new
        type.catalog_id = params[:catalog_id]
        type.entries = BatchPermissionsRequestEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module BatchRevokePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchRevokePermissionsOutput, context: context)
        type = Types::BatchRevokePermissionsOutput.new
        type.failures = BatchPermissionsFailureList.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module CancelTransactionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelTransactionInput, context: context)
        type = Types::CancelTransactionInput.new
        type.transaction_id = params[:transaction_id]
        type
      end
    end

    module CancelTransactionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelTransactionOutput, context: context)
        type = Types::CancelTransactionOutput.new
        type
      end
    end

    module CatalogResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CatalogResource, context: context)
        type = Types::CatalogResource.new
        type
      end
    end

    module ColumnLFTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnLFTag, context: context)
        type = Types::ColumnLFTag.new
        type.name = params[:name]
        type.lf_tags = LFTagsList.build(params[:lf_tags], context: "#{context}[:lf_tags]") unless params[:lf_tags].nil?
        type
      end
    end

    module ColumnLFTagsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnLFTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ColumnWildcard
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnWildcard, context: context)
        type = Types::ColumnWildcard.new
        type.excluded_column_names = ColumnNames.build(params[:excluded_column_names], context: "#{context}[:excluded_column_names]") unless params[:excluded_column_names].nil?
        type
      end
    end

    module CommitTransactionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommitTransactionInput, context: context)
        type = Types::CommitTransactionInput.new
        type.transaction_id = params[:transaction_id]
        type
      end
    end

    module CommitTransactionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommitTransactionOutput, context: context)
        type = Types::CommitTransactionOutput.new
        type.transaction_status = params[:transaction_status]
        type
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module CreateDataCellsFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataCellsFilterInput, context: context)
        type = Types::CreateDataCellsFilterInput.new
        type.table_data = DataCellsFilter.build(params[:table_data], context: "#{context}[:table_data]") unless params[:table_data].nil?
        type
      end
    end

    module CreateDataCellsFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataCellsFilterOutput, context: context)
        type = Types::CreateDataCellsFilterOutput.new
        type
      end
    end

    module CreateLFTagInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLFTagInput, context: context)
        type = Types::CreateLFTagInput.new
        type.catalog_id = params[:catalog_id]
        type.tag_key = params[:tag_key]
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module CreateLFTagOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLFTagOutput, context: context)
        type = Types::CreateLFTagOutput.new
        type
      end
    end

    module DataCellsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataCellsFilter, context: context)
        type = Types::DataCellsFilter.new
        type.table_catalog_id = params[:table_catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.name = params[:name]
        type.row_filter = RowFilter.build(params[:row_filter], context: "#{context}[:row_filter]") unless params[:row_filter].nil?
        type.column_names = ColumnNames.build(params[:column_names], context: "#{context}[:column_names]") unless params[:column_names].nil?
        type.column_wildcard = ColumnWildcard.build(params[:column_wildcard], context: "#{context}[:column_wildcard]") unless params[:column_wildcard].nil?
        type
      end
    end

    module DataCellsFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataCellsFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataCellsFilterResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataCellsFilterResource, context: context)
        type = Types::DataCellsFilterResource.new
        type.table_catalog_id = params[:table_catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.name = params[:name]
        type
      end
    end

    module DataLakePrincipal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataLakePrincipal, context: context)
        type = Types::DataLakePrincipal.new
        type.data_lake_principal_identifier = params[:data_lake_principal_identifier]
        type
      end
    end

    module DataLakePrincipalList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataLakePrincipal.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataLakeSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataLakeSettings, context: context)
        type = Types::DataLakeSettings.new
        type.data_lake_admins = DataLakePrincipalList.build(params[:data_lake_admins], context: "#{context}[:data_lake_admins]") unless params[:data_lake_admins].nil?
        type.create_database_default_permissions = PrincipalPermissionsList.build(params[:create_database_default_permissions], context: "#{context}[:create_database_default_permissions]") unless params[:create_database_default_permissions].nil?
        type.create_table_default_permissions = PrincipalPermissionsList.build(params[:create_table_default_permissions], context: "#{context}[:create_table_default_permissions]") unless params[:create_table_default_permissions].nil?
        type.trusted_resource_owners = TrustedResourceOwners.build(params[:trusted_resource_owners], context: "#{context}[:trusted_resource_owners]") unless params[:trusted_resource_owners].nil?
        type.allow_external_data_filtering = params[:allow_external_data_filtering]
        type.external_data_filtering_allow_list = DataLakePrincipalList.build(params[:external_data_filtering_allow_list], context: "#{context}[:external_data_filtering_allow_list]") unless params[:external_data_filtering_allow_list].nil?
        type.authorized_session_tag_value_list = AuthorizedSessionTagValueList.build(params[:authorized_session_tag_value_list], context: "#{context}[:authorized_session_tag_value_list]") unless params[:authorized_session_tag_value_list].nil?
        type
      end
    end

    module DataLocationResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataLocationResource, context: context)
        type = Types::DataLocationResource.new
        type.catalog_id = params[:catalog_id]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DatabaseLFTagsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TaggedDatabase.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatabaseResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatabaseResource, context: context)
        type = Types::DatabaseResource.new
        type.catalog_id = params[:catalog_id]
        type.name = params[:name]
        type
      end
    end

    module DeleteDataCellsFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataCellsFilterInput, context: context)
        type = Types::DeleteDataCellsFilterInput.new
        type.table_catalog_id = params[:table_catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.name = params[:name]
        type
      end
    end

    module DeleteDataCellsFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataCellsFilterOutput, context: context)
        type = Types::DeleteDataCellsFilterOutput.new
        type
      end
    end

    module DeleteLFTagInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLFTagInput, context: context)
        type = Types::DeleteLFTagInput.new
        type.catalog_id = params[:catalog_id]
        type.tag_key = params[:tag_key]
        type
      end
    end

    module DeleteLFTagOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLFTagOutput, context: context)
        type = Types::DeleteLFTagOutput.new
        type
      end
    end

    module DeleteObjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteObjectInput, context: context)
        type = Types::DeleteObjectInput.new
        type.uri = params[:uri]
        type.e_tag = params[:e_tag]
        type.partition_values = PartitionValuesList.build(params[:partition_values], context: "#{context}[:partition_values]") unless params[:partition_values].nil?
        type
      end
    end

    module DeleteObjectsOnCancelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteObjectsOnCancelInput, context: context)
        type = Types::DeleteObjectsOnCancelInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.transaction_id = params[:transaction_id]
        type.objects = VirtualObjectList.build(params[:objects], context: "#{context}[:objects]") unless params[:objects].nil?
        type
      end
    end

    module DeleteObjectsOnCancelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteObjectsOnCancelOutput, context: context)
        type = Types::DeleteObjectsOnCancelOutput.new
        type
      end
    end

    module DeregisterResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterResourceInput, context: context)
        type = Types::DeregisterResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DeregisterResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterResourceOutput, context: context)
        type = Types::DeregisterResourceOutput.new
        type
      end
    end

    module DescribeResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourceInput, context: context)
        type = Types::DescribeResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DescribeResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourceOutput, context: context)
        type = Types::DescribeResourceOutput.new
        type.resource_info = ResourceInfo.build(params[:resource_info], context: "#{context}[:resource_info]") unless params[:resource_info].nil?
        type
      end
    end

    module DescribeTransactionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTransactionInput, context: context)
        type = Types::DescribeTransactionInput.new
        type.transaction_id = params[:transaction_id]
        type
      end
    end

    module DescribeTransactionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTransactionOutput, context: context)
        type = Types::DescribeTransactionOutput.new
        type.transaction_description = TransactionDescription.build(params[:transaction_description], context: "#{context}[:transaction_description]") unless params[:transaction_description].nil?
        type
      end
    end

    module DetailsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetailsMap, context: context)
        type = Types::DetailsMap.new
        type.resource_share = ResourceShareList.build(params[:resource_share], context: "#{context}[:resource_share]") unless params[:resource_share].nil?
        type
      end
    end

    module EntityNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityNotFoundException, context: context)
        type = Types::EntityNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ErrorDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorDetail, context: context)
        type = Types::ErrorDetail.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module ExecutionStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionStatistics, context: context)
        type = Types::ExecutionStatistics.new
        type.average_execution_time_millis = params[:average_execution_time_millis]
        type.data_scanned_bytes = params[:data_scanned_bytes]
        type.work_units_executed_count = params[:work_units_executed_count]
        type
      end
    end

    module ExpiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExpiredException, context: context)
        type = Types::ExpiredException.new
        type.message = params[:message]
        type
      end
    end

    module Expression
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LFTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExtendTransactionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExtendTransactionInput, context: context)
        type = Types::ExtendTransactionInput.new
        type.transaction_id = params[:transaction_id]
        type
      end
    end

    module ExtendTransactionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExtendTransactionOutput, context: context)
        type = Types::ExtendTransactionOutput.new
        type
      end
    end

    module FilterCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterCondition, context: context)
        type = Types::FilterCondition.new
        type.field = params[:field]
        type.comparison_operator = params[:comparison_operator]
        type.string_value_list = StringValueList.build(params[:string_value_list], context: "#{context}[:string_value_list]") unless params[:string_value_list].nil?
        type
      end
    end

    module FilterConditionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FilterCondition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetDataLakeSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataLakeSettingsInput, context: context)
        type = Types::GetDataLakeSettingsInput.new
        type.catalog_id = params[:catalog_id]
        type
      end
    end

    module GetDataLakeSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataLakeSettingsOutput, context: context)
        type = Types::GetDataLakeSettingsOutput.new
        type.data_lake_settings = DataLakeSettings.build(params[:data_lake_settings], context: "#{context}[:data_lake_settings]") unless params[:data_lake_settings].nil?
        type
      end
    end

    module GetEffectivePermissionsForPathInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEffectivePermissionsForPathInput, context: context)
        type = Types::GetEffectivePermissionsForPathInput.new
        type.catalog_id = params[:catalog_id]
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetEffectivePermissionsForPathOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEffectivePermissionsForPathOutput, context: context)
        type = Types::GetEffectivePermissionsForPathOutput.new
        type.permissions = PrincipalResourcePermissionsList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetLFTagInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLFTagInput, context: context)
        type = Types::GetLFTagInput.new
        type.catalog_id = params[:catalog_id]
        type.tag_key = params[:tag_key]
        type
      end
    end

    module GetLFTagOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLFTagOutput, context: context)
        type = Types::GetLFTagOutput.new
        type.catalog_id = params[:catalog_id]
        type.tag_key = params[:tag_key]
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module GetQueryStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueryStateInput, context: context)
        type = Types::GetQueryStateInput.new
        type.query_id = params[:query_id]
        type
      end
    end

    module GetQueryStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueryStateOutput, context: context)
        type = Types::GetQueryStateOutput.new
        type.error = params[:error]
        type.state = params[:state]
        type
      end
    end

    module GetQueryStatisticsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueryStatisticsInput, context: context)
        type = Types::GetQueryStatisticsInput.new
        type.query_id = params[:query_id]
        type
      end
    end

    module GetQueryStatisticsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueryStatisticsOutput, context: context)
        type = Types::GetQueryStatisticsOutput.new
        type.execution_statistics = ExecutionStatistics.build(params[:execution_statistics], context: "#{context}[:execution_statistics]") unless params[:execution_statistics].nil?
        type.planning_statistics = PlanningStatistics.build(params[:planning_statistics], context: "#{context}[:planning_statistics]") unless params[:planning_statistics].nil?
        type.query_submission_time = params[:query_submission_time]
        type
      end
    end

    module GetResourceLFTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceLFTagsInput, context: context)
        type = Types::GetResourceLFTagsInput.new
        type.catalog_id = params[:catalog_id]
        type.resource = Resource.build(params[:resource], context: "#{context}[:resource]") unless params[:resource].nil?
        type.show_assigned_lf_tags = params[:show_assigned_lf_tags]
        type
      end
    end

    module GetResourceLFTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceLFTagsOutput, context: context)
        type = Types::GetResourceLFTagsOutput.new
        type.lf_tag_on_database = LFTagsList.build(params[:lf_tag_on_database], context: "#{context}[:lf_tag_on_database]") unless params[:lf_tag_on_database].nil?
        type.lf_tags_on_table = LFTagsList.build(params[:lf_tags_on_table], context: "#{context}[:lf_tags_on_table]") unless params[:lf_tags_on_table].nil?
        type.lf_tags_on_columns = ColumnLFTagsList.build(params[:lf_tags_on_columns], context: "#{context}[:lf_tags_on_columns]") unless params[:lf_tags_on_columns].nil?
        type
      end
    end

    module GetTableObjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTableObjectsInput, context: context)
        type = Types::GetTableObjectsInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.transaction_id = params[:transaction_id]
        type.query_as_of_time = params[:query_as_of_time]
        type.partition_predicate = params[:partition_predicate]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTableObjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTableObjectsOutput, context: context)
        type = Types::GetTableObjectsOutput.new
        type.objects = PartitionedTableObjectsList.build(params[:objects], context: "#{context}[:objects]") unless params[:objects].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTemporaryGluePartitionCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTemporaryGluePartitionCredentialsInput, context: context)
        type = Types::GetTemporaryGluePartitionCredentialsInput.new
        type.table_arn = params[:table_arn]
        type.partition = PartitionValueList.build(params[:partition], context: "#{context}[:partition]") unless params[:partition].nil?
        type.permissions = PermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.duration_seconds = params[:duration_seconds]
        type.audit_context = AuditContext.build(params[:audit_context], context: "#{context}[:audit_context]") unless params[:audit_context].nil?
        type.supported_permission_types = PermissionTypeList.build(params[:supported_permission_types], context: "#{context}[:supported_permission_types]") unless params[:supported_permission_types].nil?
        type
      end
    end

    module GetTemporaryGluePartitionCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTemporaryGluePartitionCredentialsOutput, context: context)
        type = Types::GetTemporaryGluePartitionCredentialsOutput.new
        type.access_key_id = params[:access_key_id]
        type.secret_access_key = params[:secret_access_key]
        type.session_token = params[:session_token]
        type.expiration = params[:expiration]
        type
      end
    end

    module GetTemporaryGlueTableCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTemporaryGlueTableCredentialsInput, context: context)
        type = Types::GetTemporaryGlueTableCredentialsInput.new
        type.table_arn = params[:table_arn]
        type.permissions = PermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.duration_seconds = params[:duration_seconds]
        type.audit_context = AuditContext.build(params[:audit_context], context: "#{context}[:audit_context]") unless params[:audit_context].nil?
        type.supported_permission_types = PermissionTypeList.build(params[:supported_permission_types], context: "#{context}[:supported_permission_types]") unless params[:supported_permission_types].nil?
        type
      end
    end

    module GetTemporaryGlueTableCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTemporaryGlueTableCredentialsOutput, context: context)
        type = Types::GetTemporaryGlueTableCredentialsOutput.new
        type.access_key_id = params[:access_key_id]
        type.secret_access_key = params[:secret_access_key]
        type.session_token = params[:session_token]
        type.expiration = params[:expiration]
        type
      end
    end

    module GetWorkUnitResultsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkUnitResultsInput, context: context)
        type = Types::GetWorkUnitResultsInput.new
        type.query_id = params[:query_id]
        type.work_unit_id = params[:work_unit_id]
        type.work_unit_token = params[:work_unit_token]
        type
      end
    end

    module GetWorkUnitResultsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkUnitResultsOutput, context: context)
        type = Types::GetWorkUnitResultsOutput.new
        io = params[:result_stream] || StringIO.new
        unless io.respond_to?(:read) || io.respond_to?(:readpartial)
          io = StringIO.new(io)
        end
        type.result_stream = io
        type
      end
    end

    module GetWorkUnitsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkUnitsInput, context: context)
        type = Types::GetWorkUnitsInput.new
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type.query_id = params[:query_id]
        type
      end
    end

    module GetWorkUnitsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkUnitsOutput, context: context)
        type = Types::GetWorkUnitsOutput.new
        type.next_token = params[:next_token]
        type.query_id = params[:query_id]
        type.work_unit_ranges = WorkUnitRangeList.build(params[:work_unit_ranges], context: "#{context}[:work_unit_ranges]") unless params[:work_unit_ranges].nil?
        type
      end
    end

    module GlueEncryptionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlueEncryptionException, context: context)
        type = Types::GlueEncryptionException.new
        type.message = params[:message]
        type
      end
    end

    module GrantPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrantPermissionsInput, context: context)
        type = Types::GrantPermissionsInput.new
        type.catalog_id = params[:catalog_id]
        type.principal = DataLakePrincipal.build(params[:principal], context: "#{context}[:principal]") unless params[:principal].nil?
        type.resource = Resource.build(params[:resource], context: "#{context}[:resource]") unless params[:resource].nil?
        type.permissions = PermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.permissions_with_grant_option = PermissionList.build(params[:permissions_with_grant_option], context: "#{context}[:permissions_with_grant_option]") unless params[:permissions_with_grant_option].nil?
        type
      end
    end

    module GrantPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrantPermissionsOutput, context: context)
        type = Types::GrantPermissionsOutput.new
        type
      end
    end

    module InternalServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceException, context: context)
        type = Types::InternalServiceException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.message = params[:message]
        type
      end
    end

    module LFTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LFTag, context: context)
        type = Types::LFTag.new
        type.tag_key = params[:tag_key]
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module LFTagError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LFTagError, context: context)
        type = Types::LFTagError.new
        type.lf_tag = LFTagPair.build(params[:lf_tag], context: "#{context}[:lf_tag]") unless params[:lf_tag].nil?
        type.error = ErrorDetail.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module LFTagErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LFTagError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LFTagKeyResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LFTagKeyResource, context: context)
        type = Types::LFTagKeyResource.new
        type.catalog_id = params[:catalog_id]
        type.tag_key = params[:tag_key]
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module LFTagPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LFTagPair, context: context)
        type = Types::LFTagPair.new
        type.catalog_id = params[:catalog_id]
        type.tag_key = params[:tag_key]
        type.tag_values = TagValueList.build(params[:tag_values], context: "#{context}[:tag_values]") unless params[:tag_values].nil?
        type
      end
    end

    module LFTagPolicyResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LFTagPolicyResource, context: context)
        type = Types::LFTagPolicyResource.new
        type.catalog_id = params[:catalog_id]
        type.resource_type = params[:resource_type]
        type.expression = Expression.build(params[:expression], context: "#{context}[:expression]") unless params[:expression].nil?
        type
      end
    end

    module LFTagsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LFTagPair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListDataCellsFilterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataCellsFilterInput, context: context)
        type = Types::ListDataCellsFilterInput.new
        type.table = TableResource.build(params[:table], context: "#{context}[:table]") unless params[:table].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDataCellsFilterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataCellsFilterOutput, context: context)
        type = Types::ListDataCellsFilterOutput.new
        type.data_cells_filters = DataCellsFilterList.build(params[:data_cells_filters], context: "#{context}[:data_cells_filters]") unless params[:data_cells_filters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLFTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLFTagsInput, context: context)
        type = Types::ListLFTagsInput.new
        type.catalog_id = params[:catalog_id]
        type.resource_share_type = params[:resource_share_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLFTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLFTagsOutput, context: context)
        type = Types::ListLFTagsOutput.new
        type.lf_tags = LFTagsList.build(params[:lf_tags], context: "#{context}[:lf_tags]") unless params[:lf_tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionsInput, context: context)
        type = Types::ListPermissionsInput.new
        type.catalog_id = params[:catalog_id]
        type.principal = DataLakePrincipal.build(params[:principal], context: "#{context}[:principal]") unless params[:principal].nil?
        type.resource_type = params[:resource_type]
        type.resource = Resource.build(params[:resource], context: "#{context}[:resource]") unless params[:resource].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.include_related = params[:include_related]
        type
      end
    end

    module ListPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionsOutput, context: context)
        type = Types::ListPermissionsOutput.new
        type.principal_resource_permissions = PrincipalResourcePermissionsList.build(params[:principal_resource_permissions], context: "#{context}[:principal_resource_permissions]") unless params[:principal_resource_permissions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesInput, context: context)
        type = Types::ListResourcesInput.new
        type.filter_condition_list = FilterConditionList.build(params[:filter_condition_list], context: "#{context}[:filter_condition_list]") unless params[:filter_condition_list].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesOutput, context: context)
        type = Types::ListResourcesOutput.new
        type.resource_info_list = ResourceInfoList.build(params[:resource_info_list], context: "#{context}[:resource_info_list]") unless params[:resource_info_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTableStorageOptimizersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTableStorageOptimizersInput, context: context)
        type = Types::ListTableStorageOptimizersInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.storage_optimizer_type = params[:storage_optimizer_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTableStorageOptimizersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTableStorageOptimizersOutput, context: context)
        type = Types::ListTableStorageOptimizersOutput.new
        type.storage_optimizer_list = StorageOptimizerList.build(params[:storage_optimizer_list], context: "#{context}[:storage_optimizer_list]") unless params[:storage_optimizer_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTransactionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTransactionsInput, context: context)
        type = Types::ListTransactionsInput.new
        type.catalog_id = params[:catalog_id]
        type.status_filter = params[:status_filter]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTransactionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTransactionsOutput, context: context)
        type = Types::ListTransactionsOutput.new
        type.transactions = TransactionDescriptionList.build(params[:transactions], context: "#{context}[:transactions]") unless params[:transactions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module OperationTimeoutException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationTimeoutException, context: context)
        type = Types::OperationTimeoutException.new
        type.message = params[:message]
        type
      end
    end

    module PartitionObjects
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartitionObjects, context: context)
        type = Types::PartitionObjects.new
        type.partition_values = PartitionValuesList.build(params[:partition_values], context: "#{context}[:partition_values]") unless params[:partition_values].nil?
        type.objects = TableObjectList.build(params[:objects], context: "#{context}[:objects]") unless params[:objects].nil?
        type
      end
    end

    module PartitionValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartitionValueList, context: context)
        type = Types::PartitionValueList.new
        type.values = ValueStringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module PartitionValuesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PartitionedTableObjectsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartitionObjects.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PermissionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PermissionTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PermissionTypeMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PermissionTypeMismatchException, context: context)
        type = Types::PermissionTypeMismatchException.new
        type.message = params[:message]
        type
      end
    end

    module PlanningStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlanningStatistics, context: context)
        type = Types::PlanningStatistics.new
        type.estimated_data_to_scan_bytes = params[:estimated_data_to_scan_bytes]
        type.planning_time_millis = params[:planning_time_millis]
        type.queue_time_millis = params[:queue_time_millis]
        type.work_units_generated_count = params[:work_units_generated_count]
        type
      end
    end

    module PrincipalPermissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrincipalPermissions, context: context)
        type = Types::PrincipalPermissions.new
        type.principal = DataLakePrincipal.build(params[:principal], context: "#{context}[:principal]") unless params[:principal].nil?
        type.permissions = PermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type
      end
    end

    module PrincipalPermissionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PrincipalPermissions.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PrincipalResourcePermissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrincipalResourcePermissions, context: context)
        type = Types::PrincipalResourcePermissions.new
        type.principal = DataLakePrincipal.build(params[:principal], context: "#{context}[:principal]") unless params[:principal].nil?
        type.resource = Resource.build(params[:resource], context: "#{context}[:resource]") unless params[:resource].nil?
        type.permissions = PermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.permissions_with_grant_option = PermissionList.build(params[:permissions_with_grant_option], context: "#{context}[:permissions_with_grant_option]") unless params[:permissions_with_grant_option].nil?
        type.additional_details = DetailsMap.build(params[:additional_details], context: "#{context}[:additional_details]") unless params[:additional_details].nil?
        type
      end
    end

    module PrincipalResourcePermissionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PrincipalResourcePermissions.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutDataLakeSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDataLakeSettingsInput, context: context)
        type = Types::PutDataLakeSettingsInput.new
        type.catalog_id = params[:catalog_id]
        type.data_lake_settings = DataLakeSettings.build(params[:data_lake_settings], context: "#{context}[:data_lake_settings]") unless params[:data_lake_settings].nil?
        type
      end
    end

    module PutDataLakeSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDataLakeSettingsOutput, context: context)
        type = Types::PutDataLakeSettingsOutput.new
        type
      end
    end

    module QueryParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module QueryPlanningContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryPlanningContext, context: context)
        type = Types::QueryPlanningContext.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.query_as_of_time = params[:query_as_of_time]
        type.query_parameters = QueryParameterMap.build(params[:query_parameters], context: "#{context}[:query_parameters]") unless params[:query_parameters].nil?
        type.transaction_id = params[:transaction_id]
        type
      end
    end

    module RegisterResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterResourceInput, context: context)
        type = Types::RegisterResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.use_service_linked_role = params[:use_service_linked_role]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module RegisterResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterResourceOutput, context: context)
        type = Types::RegisterResourceOutput.new
        type
      end
    end

    module RemoveLFTagsFromResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveLFTagsFromResourceInput, context: context)
        type = Types::RemoveLFTagsFromResourceInput.new
        type.catalog_id = params[:catalog_id]
        type.resource = Resource.build(params[:resource], context: "#{context}[:resource]") unless params[:resource].nil?
        type.lf_tags = LFTagsList.build(params[:lf_tags], context: "#{context}[:lf_tags]") unless params[:lf_tags].nil?
        type
      end
    end

    module RemoveLFTagsFromResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveLFTagsFromResourceOutput, context: context)
        type = Types::RemoveLFTagsFromResourceOutput.new
        type.failures = LFTagErrors.build(params[:failures], context: "#{context}[:failures]") unless params[:failures].nil?
        type
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.catalog = CatalogResource.build(params[:catalog], context: "#{context}[:catalog]") unless params[:catalog].nil?
        type.database = DatabaseResource.build(params[:database], context: "#{context}[:database]") unless params[:database].nil?
        type.table = TableResource.build(params[:table], context: "#{context}[:table]") unless params[:table].nil?
        type.table_with_columns = TableWithColumnsResource.build(params[:table_with_columns], context: "#{context}[:table_with_columns]") unless params[:table_with_columns].nil?
        type.data_location = DataLocationResource.build(params[:data_location], context: "#{context}[:data_location]") unless params[:data_location].nil?
        type.data_cells_filter = DataCellsFilterResource.build(params[:data_cells_filter], context: "#{context}[:data_cells_filter]") unless params[:data_cells_filter].nil?
        type.lf_tag = LFTagKeyResource.build(params[:lf_tag], context: "#{context}[:lf_tag]") unless params[:lf_tag].nil?
        type.lf_tag_policy = LFTagPolicyResource.build(params[:lf_tag_policy], context: "#{context}[:lf_tag_policy]") unless params[:lf_tag_policy].nil?
        type
      end
    end

    module ResourceInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInfo, context: context)
        type = Types::ResourceInfo.new
        type.resource_arn = params[:resource_arn]
        type.role_arn = params[:role_arn]
        type.last_modified = params[:last_modified]
        type
      end
    end

    module ResourceInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotReadyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotReadyException, context: context)
        type = Types::ResourceNotReadyException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNumberLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNumberLimitExceededException, context: context)
        type = Types::ResourceNumberLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceShareList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RevokePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokePermissionsInput, context: context)
        type = Types::RevokePermissionsInput.new
        type.catalog_id = params[:catalog_id]
        type.principal = DataLakePrincipal.build(params[:principal], context: "#{context}[:principal]") unless params[:principal].nil?
        type.resource = Resource.build(params[:resource], context: "#{context}[:resource]") unless params[:resource].nil?
        type.permissions = PermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.permissions_with_grant_option = PermissionList.build(params[:permissions_with_grant_option], context: "#{context}[:permissions_with_grant_option]") unless params[:permissions_with_grant_option].nil?
        type
      end
    end

    module RevokePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevokePermissionsOutput, context: context)
        type = Types::RevokePermissionsOutput.new
        type
      end
    end

    module RowFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RowFilter, context: context)
        type = Types::RowFilter.new
        type.filter_expression = params[:filter_expression]
        type.all_rows_wildcard = AllRowsWildcard.build(params[:all_rows_wildcard], context: "#{context}[:all_rows_wildcard]") unless params[:all_rows_wildcard].nil?
        type
      end
    end

    module SearchDatabasesByLFTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchDatabasesByLFTagsInput, context: context)
        type = Types::SearchDatabasesByLFTagsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.catalog_id = params[:catalog_id]
        type.expression = Expression.build(params[:expression], context: "#{context}[:expression]") unless params[:expression].nil?
        type
      end
    end

    module SearchDatabasesByLFTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchDatabasesByLFTagsOutput, context: context)
        type = Types::SearchDatabasesByLFTagsOutput.new
        type.next_token = params[:next_token]
        type.database_list = DatabaseLFTagsList.build(params[:database_list], context: "#{context}[:database_list]") unless params[:database_list].nil?
        type
      end
    end

    module SearchTablesByLFTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchTablesByLFTagsInput, context: context)
        type = Types::SearchTablesByLFTagsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.catalog_id = params[:catalog_id]
        type.expression = Expression.build(params[:expression], context: "#{context}[:expression]") unless params[:expression].nil?
        type
      end
    end

    module SearchTablesByLFTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchTablesByLFTagsOutput, context: context)
        type = Types::SearchTablesByLFTagsOutput.new
        type.next_token = params[:next_token]
        type.table_list = TableLFTagsList.build(params[:table_list], context: "#{context}[:table_list]") unless params[:table_list].nil?
        type
      end
    end

    module StartQueryPlanningInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartQueryPlanningInput, context: context)
        type = Types::StartQueryPlanningInput.new
        type.query_planning_context = QueryPlanningContext.build(params[:query_planning_context], context: "#{context}[:query_planning_context]") unless params[:query_planning_context].nil?
        type.query_string = params[:query_string]
        type
      end
    end

    module StartQueryPlanningOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartQueryPlanningOutput, context: context)
        type = Types::StartQueryPlanningOutput.new
        type.query_id = params[:query_id]
        type
      end
    end

    module StartTransactionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTransactionInput, context: context)
        type = Types::StartTransactionInput.new
        type.transaction_type = params[:transaction_type]
        type
      end
    end

    module StartTransactionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTransactionOutput, context: context)
        type = Types::StartTransactionOutput.new
        type.transaction_id = params[:transaction_id]
        type
      end
    end

    module StatisticsNotReadyYetException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatisticsNotReadyYetException, context: context)
        type = Types::StatisticsNotReadyYetException.new
        type.message = params[:message]
        type
      end
    end

    module StorageOptimizer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageOptimizer, context: context)
        type = Types::StorageOptimizer.new
        type.storage_optimizer_type = params[:storage_optimizer_type]
        type.config = StorageOptimizerConfig.build(params[:config], context: "#{context}[:config]") unless params[:config].nil?
        type.error_message = params[:error_message]
        type.warnings = params[:warnings]
        type.last_run_details = params[:last_run_details]
        type
      end
    end

    module StorageOptimizerConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module StorageOptimizerConfigMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = StorageOptimizerConfig.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module StorageOptimizerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StorageOptimizer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StringValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TableLFTagsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TaggedTable.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TableObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableObject, context: context)
        type = Types::TableObject.new
        type.uri = params[:uri]
        type.e_tag = params[:e_tag]
        type.size = params[:size]
        type
      end
    end

    module TableObjectList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TableObject.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TableResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableResource, context: context)
        type = Types::TableResource.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.name = params[:name]
        type.table_wildcard = TableWildcard.build(params[:table_wildcard], context: "#{context}[:table_wildcard]") unless params[:table_wildcard].nil?
        type
      end
    end

    module TableWildcard
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableWildcard, context: context)
        type = Types::TableWildcard.new
        type
      end
    end

    module TableWithColumnsResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableWithColumnsResource, context: context)
        type = Types::TableWithColumnsResource.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.name = params[:name]
        type.column_names = ColumnNames.build(params[:column_names], context: "#{context}[:column_names]") unless params[:column_names].nil?
        type.column_wildcard = ColumnWildcard.build(params[:column_wildcard], context: "#{context}[:column_wildcard]") unless params[:column_wildcard].nil?
        type
      end
    end

    module TagValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TaggedDatabase
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaggedDatabase, context: context)
        type = Types::TaggedDatabase.new
        type.database = DatabaseResource.build(params[:database], context: "#{context}[:database]") unless params[:database].nil?
        type.lf_tags = LFTagsList.build(params[:lf_tags], context: "#{context}[:lf_tags]") unless params[:lf_tags].nil?
        type
      end
    end

    module TaggedTable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaggedTable, context: context)
        type = Types::TaggedTable.new
        type.table = TableResource.build(params[:table], context: "#{context}[:table]") unless params[:table].nil?
        type.lf_tag_on_database = LFTagsList.build(params[:lf_tag_on_database], context: "#{context}[:lf_tag_on_database]") unless params[:lf_tag_on_database].nil?
        type.lf_tags_on_table = LFTagsList.build(params[:lf_tags_on_table], context: "#{context}[:lf_tags_on_table]") unless params[:lf_tags_on_table].nil?
        type.lf_tags_on_columns = ColumnLFTagsList.build(params[:lf_tags_on_columns], context: "#{context}[:lf_tags_on_columns]") unless params[:lf_tags_on_columns].nil?
        type
      end
    end

    module ThrottledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottledException, context: context)
        type = Types::ThrottledException.new
        type.message = params[:message]
        type
      end
    end

    module TransactionCanceledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransactionCanceledException, context: context)
        type = Types::TransactionCanceledException.new
        type.message = params[:message]
        type
      end
    end

    module TransactionCommitInProgressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransactionCommitInProgressException, context: context)
        type = Types::TransactionCommitInProgressException.new
        type.message = params[:message]
        type
      end
    end

    module TransactionCommittedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransactionCommittedException, context: context)
        type = Types::TransactionCommittedException.new
        type.message = params[:message]
        type
      end
    end

    module TransactionDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransactionDescription, context: context)
        type = Types::TransactionDescription.new
        type.transaction_id = params[:transaction_id]
        type.transaction_status = params[:transaction_status]
        type.transaction_start_time = params[:transaction_start_time]
        type.transaction_end_time = params[:transaction_end_time]
        type
      end
    end

    module TransactionDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TransactionDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrustedResourceOwners
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UpdateLFTagInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLFTagInput, context: context)
        type = Types::UpdateLFTagInput.new
        type.catalog_id = params[:catalog_id]
        type.tag_key = params[:tag_key]
        type.tag_values_to_delete = TagValueList.build(params[:tag_values_to_delete], context: "#{context}[:tag_values_to_delete]") unless params[:tag_values_to_delete].nil?
        type.tag_values_to_add = TagValueList.build(params[:tag_values_to_add], context: "#{context}[:tag_values_to_add]") unless params[:tag_values_to_add].nil?
        type
      end
    end

    module UpdateLFTagOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLFTagOutput, context: context)
        type = Types::UpdateLFTagOutput.new
        type
      end
    end

    module UpdateResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceInput, context: context)
        type = Types::UpdateResourceInput.new
        type.role_arn = params[:role_arn]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module UpdateResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceOutput, context: context)
        type = Types::UpdateResourceOutput.new
        type
      end
    end

    module UpdateTableObjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTableObjectsInput, context: context)
        type = Types::UpdateTableObjectsInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.transaction_id = params[:transaction_id]
        type.write_operations = WriteOperationList.build(params[:write_operations], context: "#{context}[:write_operations]") unless params[:write_operations].nil?
        type
      end
    end

    module UpdateTableObjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTableObjectsOutput, context: context)
        type = Types::UpdateTableObjectsOutput.new
        type
      end
    end

    module UpdateTableStorageOptimizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTableStorageOptimizerInput, context: context)
        type = Types::UpdateTableStorageOptimizerInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.storage_optimizer_config = StorageOptimizerConfigMap.build(params[:storage_optimizer_config], context: "#{context}[:storage_optimizer_config]") unless params[:storage_optimizer_config].nil?
        type
      end
    end

    module UpdateTableStorageOptimizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTableStorageOptimizerOutput, context: context)
        type = Types::UpdateTableStorageOptimizerOutput.new
        type.result = params[:result]
        type
      end
    end

    module ValueStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VirtualObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VirtualObject, context: context)
        type = Types::VirtualObject.new
        type.uri = params[:uri]
        type.e_tag = params[:e_tag]
        type
      end
    end

    module VirtualObjectList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VirtualObject.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorkUnitRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkUnitRange, context: context)
        type = Types::WorkUnitRange.new
        type.work_unit_id_max = params[:work_unit_id_max]
        type.work_unit_id_min = params[:work_unit_id_min]
        type.work_unit_token = params[:work_unit_token]
        type
      end
    end

    module WorkUnitRangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkUnitRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorkUnitsNotReadyYetException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkUnitsNotReadyYetException, context: context)
        type = Types::WorkUnitsNotReadyYetException.new
        type.message = params[:message]
        type
      end
    end

    module WriteOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WriteOperation, context: context)
        type = Types::WriteOperation.new
        type.add_object = AddObjectInput.build(params[:add_object], context: "#{context}[:add_object]") unless params[:add_object].nil?
        type.delete_object = DeleteObjectInput.build(params[:delete_object], context: "#{context}[:delete_object]") unless params[:delete_object].nil?
        type
      end
    end

    module WriteOperationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WriteOperation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
