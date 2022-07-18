# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::LakeFormation
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AddLFTagsToResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddLFTagsToResourceInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Resource.validate!(input[:resource], context: "#{context}[:resource]") unless input[:resource].nil?
        LFTagsList.validate!(input[:lf_tags], context: "#{context}[:lf_tags]") unless input[:lf_tags].nil?
      end
    end

    class AddLFTagsToResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddLFTagsToResourceOutput, context: context)
        LFTagErrors.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class AddObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddObjectInput, context: context)
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        PartitionValuesList.validate!(input[:partition_values], context: "#{context}[:partition_values]") unless input[:partition_values].nil?
      end
    end

    class AllRowsWildcard
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllRowsWildcard, context: context)
      end
    end

    class AlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AuditContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuditContext, context: context)
        Hearth::Validator.validate!(input[:additional_audit_context], ::String, context: "#{context}[:additional_audit_context]")
      end
    end

    class AuthorizedSessionTagValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BatchGrantPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGrantPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        BatchPermissionsRequestEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class BatchGrantPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGrantPermissionsOutput, context: context)
        BatchPermissionsFailureList.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class BatchPermissionsFailureEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPermissionsFailureEntry, context: context)
        BatchPermissionsRequestEntry.validate!(input[:request_entry], context: "#{context}[:request_entry]") unless input[:request_entry].nil?
        ErrorDetail.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class BatchPermissionsFailureList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchPermissionsFailureEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchPermissionsRequestEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPermissionsRequestEntry, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        DataLakePrincipal.validate!(input[:principal], context: "#{context}[:principal]") unless input[:principal].nil?
        Resource.validate!(input[:resource], context: "#{context}[:resource]") unless input[:resource].nil?
        PermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        PermissionList.validate!(input[:permissions_with_grant_option], context: "#{context}[:permissions_with_grant_option]") unless input[:permissions_with_grant_option].nil?
      end
    end

    class BatchPermissionsRequestEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchPermissionsRequestEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchRevokePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchRevokePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        BatchPermissionsRequestEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class BatchRevokePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchRevokePermissionsOutput, context: context)
        BatchPermissionsFailureList.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class CancelTransactionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelTransactionInput, context: context)
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
      end
    end

    class CancelTransactionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelTransactionOutput, context: context)
      end
    end

    class CatalogResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CatalogResource, context: context)
      end
    end

    class ColumnLFTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnLFTag, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        LFTagsList.validate!(input[:lf_tags], context: "#{context}[:lf_tags]") unless input[:lf_tags].nil?
      end
    end

    class ColumnLFTagsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ColumnLFTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ColumnWildcard
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnWildcard, context: context)
        ColumnNames.validate!(input[:excluded_column_names], context: "#{context}[:excluded_column_names]") unless input[:excluded_column_names].nil?
      end
    end

    class CommitTransactionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommitTransactionInput, context: context)
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
      end
    end

    class CommitTransactionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommitTransactionOutput, context: context)
        Hearth::Validator.validate!(input[:transaction_status], ::String, context: "#{context}[:transaction_status]")
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateDataCellsFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataCellsFilterInput, context: context)
        DataCellsFilter.validate!(input[:table_data], context: "#{context}[:table_data]") unless input[:table_data].nil?
      end
    end

    class CreateDataCellsFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataCellsFilterOutput, context: context)
      end
    end

    class CreateLFTagInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLFTagInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class CreateLFTagOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLFTagOutput, context: context)
      end
    end

    class DataCellsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataCellsFilter, context: context)
        Hearth::Validator.validate!(input[:table_catalog_id], ::String, context: "#{context}[:table_catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        RowFilter.validate!(input[:row_filter], context: "#{context}[:row_filter]") unless input[:row_filter].nil?
        ColumnNames.validate!(input[:column_names], context: "#{context}[:column_names]") unless input[:column_names].nil?
        ColumnWildcard.validate!(input[:column_wildcard], context: "#{context}[:column_wildcard]") unless input[:column_wildcard].nil?
      end
    end

    class DataCellsFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DataCellsFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataCellsFilterResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataCellsFilterResource, context: context)
        Hearth::Validator.validate!(input[:table_catalog_id], ::String, context: "#{context}[:table_catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DataLakePrincipal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataLakePrincipal, context: context)
        Hearth::Validator.validate!(input[:data_lake_principal_identifier], ::String, context: "#{context}[:data_lake_principal_identifier]")
      end
    end

    class DataLakePrincipalList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DataLakePrincipal.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataLakeSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataLakeSettings, context: context)
        DataLakePrincipalList.validate!(input[:data_lake_admins], context: "#{context}[:data_lake_admins]") unless input[:data_lake_admins].nil?
        PrincipalPermissionsList.validate!(input[:create_database_default_permissions], context: "#{context}[:create_database_default_permissions]") unless input[:create_database_default_permissions].nil?
        PrincipalPermissionsList.validate!(input[:create_table_default_permissions], context: "#{context}[:create_table_default_permissions]") unless input[:create_table_default_permissions].nil?
        TrustedResourceOwners.validate!(input[:trusted_resource_owners], context: "#{context}[:trusted_resource_owners]") unless input[:trusted_resource_owners].nil?
        Hearth::Validator.validate!(input[:allow_external_data_filtering], ::TrueClass, ::FalseClass, context: "#{context}[:allow_external_data_filtering]")
        DataLakePrincipalList.validate!(input[:external_data_filtering_allow_list], context: "#{context}[:external_data_filtering_allow_list]") unless input[:external_data_filtering_allow_list].nil?
        AuthorizedSessionTagValueList.validate!(input[:authorized_session_tag_value_list], context: "#{context}[:authorized_session_tag_value_list]") unless input[:authorized_session_tag_value_list].nil?
      end
    end

    class DataLocationResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataLocationResource, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DatabaseLFTagsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TaggedDatabase.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatabaseResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatabaseResource, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteDataCellsFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataCellsFilterInput, context: context)
        Hearth::Validator.validate!(input[:table_catalog_id], ::String, context: "#{context}[:table_catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteDataCellsFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataCellsFilterOutput, context: context)
      end
    end

    class DeleteLFTagInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLFTagInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
      end
    end

    class DeleteLFTagOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLFTagOutput, context: context)
      end
    end

    class DeleteObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteObjectInput, context: context)
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        PartitionValuesList.validate!(input[:partition_values], context: "#{context}[:partition_values]") unless input[:partition_values].nil?
      end
    end

    class DeleteObjectsOnCancelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteObjectsOnCancelInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        VirtualObjectList.validate!(input[:objects], context: "#{context}[:objects]") unless input[:objects].nil?
      end
    end

    class DeleteObjectsOnCancelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteObjectsOnCancelOutput, context: context)
      end
    end

    class DeregisterResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DeregisterResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterResourceOutput, context: context)
      end
    end

    class DescribeResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DescribeResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourceOutput, context: context)
        ResourceInfo.validate!(input[:resource_info], context: "#{context}[:resource_info]") unless input[:resource_info].nil?
      end
    end

    class DescribeTransactionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTransactionInput, context: context)
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
      end
    end

    class DescribeTransactionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTransactionOutput, context: context)
        TransactionDescription.validate!(input[:transaction_description], context: "#{context}[:transaction_description]") unless input[:transaction_description].nil?
      end
    end

    class DetailsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetailsMap, context: context)
        ResourceShareList.validate!(input[:resource_share], context: "#{context}[:resource_share]") unless input[:resource_share].nil?
      end
    end

    class EntityNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ErrorDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorDetail, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class ExecutionStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionStatistics, context: context)
        Hearth::Validator.validate!(input[:average_execution_time_millis], ::Integer, context: "#{context}[:average_execution_time_millis]")
        Hearth::Validator.validate!(input[:data_scanned_bytes], ::Integer, context: "#{context}[:data_scanned_bytes]")
        Hearth::Validator.validate!(input[:work_units_executed_count], ::Integer, context: "#{context}[:work_units_executed_count]")
      end
    end

    class ExpiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExpiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Expression
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LFTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExtendTransactionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExtendTransactionInput, context: context)
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
      end
    end

    class ExtendTransactionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExtendTransactionOutput, context: context)
      end
    end

    class FilterCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterCondition, context: context)
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        StringValueList.validate!(input[:string_value_list], context: "#{context}[:string_value_list]") unless input[:string_value_list].nil?
      end
    end

    class FilterConditionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FilterCondition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetDataLakeSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataLakeSettingsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
      end
    end

    class GetDataLakeSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataLakeSettingsOutput, context: context)
        DataLakeSettings.validate!(input[:data_lake_settings], context: "#{context}[:data_lake_settings]") unless input[:data_lake_settings].nil?
      end
    end

    class GetEffectivePermissionsForPathInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEffectivePermissionsForPathInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetEffectivePermissionsForPathOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEffectivePermissionsForPathOutput, context: context)
        PrincipalResourcePermissionsList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetLFTagInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLFTagInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
      end
    end

    class GetLFTagOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLFTagOutput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class GetQueryStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueryStateInput, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
      end
    end

    class GetQueryStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueryStateOutput, context: context)
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class GetQueryStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueryStatisticsInput, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
      end
    end

    class GetQueryStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueryStatisticsOutput, context: context)
        ExecutionStatistics.validate!(input[:execution_statistics], context: "#{context}[:execution_statistics]") unless input[:execution_statistics].nil?
        PlanningStatistics.validate!(input[:planning_statistics], context: "#{context}[:planning_statistics]") unless input[:planning_statistics].nil?
        Hearth::Validator.validate!(input[:query_submission_time], ::Time, context: "#{context}[:query_submission_time]")
      end
    end

    class GetResourceLFTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceLFTagsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Resource.validate!(input[:resource], context: "#{context}[:resource]") unless input[:resource].nil?
        Hearth::Validator.validate!(input[:show_assigned_lf_tags], ::TrueClass, ::FalseClass, context: "#{context}[:show_assigned_lf_tags]")
      end
    end

    class GetResourceLFTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceLFTagsOutput, context: context)
        LFTagsList.validate!(input[:lf_tag_on_database], context: "#{context}[:lf_tag_on_database]") unless input[:lf_tag_on_database].nil?
        LFTagsList.validate!(input[:lf_tags_on_table], context: "#{context}[:lf_tags_on_table]") unless input[:lf_tags_on_table].nil?
        ColumnLFTagsList.validate!(input[:lf_tags_on_columns], context: "#{context}[:lf_tags_on_columns]") unless input[:lf_tags_on_columns].nil?
      end
    end

    class GetTableObjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTableObjectsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        Hearth::Validator.validate!(input[:query_as_of_time], ::Time, context: "#{context}[:query_as_of_time]")
        Hearth::Validator.validate!(input[:partition_predicate], ::String, context: "#{context}[:partition_predicate]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTableObjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTableObjectsOutput, context: context)
        PartitionedTableObjectsList.validate!(input[:objects], context: "#{context}[:objects]") unless input[:objects].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTemporaryGluePartitionCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTemporaryGluePartitionCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:table_arn], ::String, context: "#{context}[:table_arn]")
        PartitionValueList.validate!(input[:partition], context: "#{context}[:partition]") unless input[:partition].nil?
        PermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
        AuditContext.validate!(input[:audit_context], context: "#{context}[:audit_context]") unless input[:audit_context].nil?
        PermissionTypeList.validate!(input[:supported_permission_types], context: "#{context}[:supported_permission_types]") unless input[:supported_permission_types].nil?
      end
    end

    class GetTemporaryGluePartitionCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTemporaryGluePartitionCredentialsOutput, context: context)
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:secret_access_key], ::String, context: "#{context}[:secret_access_key]")
        Hearth::Validator.validate!(input[:session_token], ::String, context: "#{context}[:session_token]")
        Hearth::Validator.validate!(input[:expiration], ::Time, context: "#{context}[:expiration]")
      end
    end

    class GetTemporaryGlueTableCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTemporaryGlueTableCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:table_arn], ::String, context: "#{context}[:table_arn]")
        PermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:duration_seconds], ::Integer, context: "#{context}[:duration_seconds]")
        AuditContext.validate!(input[:audit_context], context: "#{context}[:audit_context]") unless input[:audit_context].nil?
        PermissionTypeList.validate!(input[:supported_permission_types], context: "#{context}[:supported_permission_types]") unless input[:supported_permission_types].nil?
      end
    end

    class GetTemporaryGlueTableCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTemporaryGlueTableCredentialsOutput, context: context)
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:secret_access_key], ::String, context: "#{context}[:secret_access_key]")
        Hearth::Validator.validate!(input[:session_token], ::String, context: "#{context}[:session_token]")
        Hearth::Validator.validate!(input[:expiration], ::Time, context: "#{context}[:expiration]")
      end
    end

    class GetWorkUnitResultsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkUnitResultsInput, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
        Hearth::Validator.validate!(input[:work_unit_id], ::Integer, context: "#{context}[:work_unit_id]")
        Hearth::Validator.validate!(input[:work_unit_token], ::String, context: "#{context}[:work_unit_token]")
      end
    end

    class GetWorkUnitResultsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkUnitResultsOutput, context: context)
        unless input[:result_stream].respond_to?(:read) || input[:result_stream].respond_to?(:readpartial)
          raise ArgumentError, "Expected #{context} to be an IO like object, got #{input[:result_stream].class}"
        end
      end
    end

    class GetWorkUnitsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkUnitsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
      end
    end

    class GetWorkUnitsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkUnitsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
        WorkUnitRangeList.validate!(input[:work_unit_ranges], context: "#{context}[:work_unit_ranges]") unless input[:work_unit_ranges].nil?
      end
    end

    class GlueEncryptionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlueEncryptionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GrantPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrantPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        DataLakePrincipal.validate!(input[:principal], context: "#{context}[:principal]") unless input[:principal].nil?
        Resource.validate!(input[:resource], context: "#{context}[:resource]") unless input[:resource].nil?
        PermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        PermissionList.validate!(input[:permissions_with_grant_option], context: "#{context}[:permissions_with_grant_option]") unless input[:permissions_with_grant_option].nil?
      end
    end

    class GrantPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrantPermissionsOutput, context: context)
      end
    end

    class InternalServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LFTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LFTag, context: context)
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class LFTagError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LFTagError, context: context)
        LFTagPair.validate!(input[:lf_tag], context: "#{context}[:lf_tag]") unless input[:lf_tag].nil?
        ErrorDetail.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class LFTagErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LFTagError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LFTagKeyResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LFTagKeyResource, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class LFTagPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LFTagPair, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        TagValueList.validate!(input[:tag_values], context: "#{context}[:tag_values]") unless input[:tag_values].nil?
      end
    end

    class LFTagPolicyResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LFTagPolicyResource, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Expression.validate!(input[:expression], context: "#{context}[:expression]") unless input[:expression].nil?
      end
    end

    class LFTagsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LFTagPair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListDataCellsFilterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataCellsFilterInput, context: context)
        TableResource.validate!(input[:table], context: "#{context}[:table]") unless input[:table].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDataCellsFilterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataCellsFilterOutput, context: context)
        DataCellsFilterList.validate!(input[:data_cells_filters], context: "#{context}[:data_cells_filters]") unless input[:data_cells_filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLFTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLFTagsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:resource_share_type], ::String, context: "#{context}[:resource_share_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLFTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLFTagsOutput, context: context)
        LFTagsList.validate!(input[:lf_tags], context: "#{context}[:lf_tags]") unless input[:lf_tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        DataLakePrincipal.validate!(input[:principal], context: "#{context}[:principal]") unless input[:principal].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Resource.validate!(input[:resource], context: "#{context}[:resource]") unless input[:resource].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:include_related], ::String, context: "#{context}[:include_related]")
      end
    end

    class ListPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionsOutput, context: context)
        PrincipalResourcePermissionsList.validate!(input[:principal_resource_permissions], context: "#{context}[:principal_resource_permissions]") unless input[:principal_resource_permissions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesInput, context: context)
        FilterConditionList.validate!(input[:filter_condition_list], context: "#{context}[:filter_condition_list]") unless input[:filter_condition_list].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesOutput, context: context)
        ResourceInfoList.validate!(input[:resource_info_list], context: "#{context}[:resource_info_list]") unless input[:resource_info_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTableStorageOptimizersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTableStorageOptimizersInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:storage_optimizer_type], ::String, context: "#{context}[:storage_optimizer_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTableStorageOptimizersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTableStorageOptimizersOutput, context: context)
        StorageOptimizerList.validate!(input[:storage_optimizer_list], context: "#{context}[:storage_optimizer_list]") unless input[:storage_optimizer_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTransactionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTransactionsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:status_filter], ::String, context: "#{context}[:status_filter]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTransactionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTransactionsOutput, context: context)
        TransactionDescriptionList.validate!(input[:transactions], context: "#{context}[:transactions]") unless input[:transactions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class OperationTimeoutException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationTimeoutException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PartitionObjects
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartitionObjects, context: context)
        PartitionValuesList.validate!(input[:partition_values], context: "#{context}[:partition_values]") unless input[:partition_values].nil?
        TableObjectList.validate!(input[:objects], context: "#{context}[:objects]") unless input[:objects].nil?
      end
    end

    class PartitionValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartitionValueList, context: context)
        ValueStringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class PartitionValuesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PartitionedTableObjectsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PartitionObjects.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PermissionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PermissionTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PermissionTypeMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PermissionTypeMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PlanningStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlanningStatistics, context: context)
        Hearth::Validator.validate!(input[:estimated_data_to_scan_bytes], ::Integer, context: "#{context}[:estimated_data_to_scan_bytes]")
        Hearth::Validator.validate!(input[:planning_time_millis], ::Integer, context: "#{context}[:planning_time_millis]")
        Hearth::Validator.validate!(input[:queue_time_millis], ::Integer, context: "#{context}[:queue_time_millis]")
        Hearth::Validator.validate!(input[:work_units_generated_count], ::Integer, context: "#{context}[:work_units_generated_count]")
      end
    end

    class PrincipalPermissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrincipalPermissions, context: context)
        DataLakePrincipal.validate!(input[:principal], context: "#{context}[:principal]") unless input[:principal].nil?
        PermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
      end
    end

    class PrincipalPermissionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PrincipalPermissions.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PrincipalResourcePermissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrincipalResourcePermissions, context: context)
        DataLakePrincipal.validate!(input[:principal], context: "#{context}[:principal]") unless input[:principal].nil?
        Resource.validate!(input[:resource], context: "#{context}[:resource]") unless input[:resource].nil?
        PermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        PermissionList.validate!(input[:permissions_with_grant_option], context: "#{context}[:permissions_with_grant_option]") unless input[:permissions_with_grant_option].nil?
        DetailsMap.validate!(input[:additional_details], context: "#{context}[:additional_details]") unless input[:additional_details].nil?
      end
    end

    class PrincipalResourcePermissionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PrincipalResourcePermissions.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutDataLakeSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDataLakeSettingsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        DataLakeSettings.validate!(input[:data_lake_settings], context: "#{context}[:data_lake_settings]") unless input[:data_lake_settings].nil?
      end
    end

    class PutDataLakeSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDataLakeSettingsOutput, context: context)
      end
    end

    class QueryParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class QueryPlanningContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryPlanningContext, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:query_as_of_time], ::Time, context: "#{context}[:query_as_of_time]")
        QueryParameterMap.validate!(input[:query_parameters], context: "#{context}[:query_parameters]") unless input[:query_parameters].nil?
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
      end
    end

    class RegisterResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:use_service_linked_role], ::TrueClass, ::FalseClass, context: "#{context}[:use_service_linked_role]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class RegisterResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterResourceOutput, context: context)
      end
    end

    class RemoveLFTagsFromResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveLFTagsFromResourceInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Resource.validate!(input[:resource], context: "#{context}[:resource]") unless input[:resource].nil?
        LFTagsList.validate!(input[:lf_tags], context: "#{context}[:lf_tags]") unless input[:lf_tags].nil?
      end
    end

    class RemoveLFTagsFromResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveLFTagsFromResourceOutput, context: context)
        LFTagErrors.validate!(input[:failures], context: "#{context}[:failures]") unless input[:failures].nil?
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        CatalogResource.validate!(input[:catalog], context: "#{context}[:catalog]") unless input[:catalog].nil?
        DatabaseResource.validate!(input[:database], context: "#{context}[:database]") unless input[:database].nil?
        TableResource.validate!(input[:table], context: "#{context}[:table]") unless input[:table].nil?
        TableWithColumnsResource.validate!(input[:table_with_columns], context: "#{context}[:table_with_columns]") unless input[:table_with_columns].nil?
        DataLocationResource.validate!(input[:data_location], context: "#{context}[:data_location]") unless input[:data_location].nil?
        DataCellsFilterResource.validate!(input[:data_cells_filter], context: "#{context}[:data_cells_filter]") unless input[:data_cells_filter].nil?
        LFTagKeyResource.validate!(input[:lf_tag], context: "#{context}[:lf_tag]") unless input[:lf_tag].nil?
        LFTagPolicyResource.validate!(input[:lf_tag_policy], context: "#{context}[:lf_tag_policy]") unless input[:lf_tag_policy].nil?
      end
    end

    class ResourceInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInfo, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:last_modified], ::Time, context: "#{context}[:last_modified]")
      end
    end

    class ResourceInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotReadyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotReadyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNumberLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNumberLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceShareList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RevokePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        DataLakePrincipal.validate!(input[:principal], context: "#{context}[:principal]") unless input[:principal].nil?
        Resource.validate!(input[:resource], context: "#{context}[:resource]") unless input[:resource].nil?
        PermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        PermissionList.validate!(input[:permissions_with_grant_option], context: "#{context}[:permissions_with_grant_option]") unless input[:permissions_with_grant_option].nil?
      end
    end

    class RevokePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevokePermissionsOutput, context: context)
      end
    end

    class RowFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RowFilter, context: context)
        Hearth::Validator.validate!(input[:filter_expression], ::String, context: "#{context}[:filter_expression]")
        AllRowsWildcard.validate!(input[:all_rows_wildcard], context: "#{context}[:all_rows_wildcard]") unless input[:all_rows_wildcard].nil?
      end
    end

    class SearchDatabasesByLFTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchDatabasesByLFTagsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Expression.validate!(input[:expression], context: "#{context}[:expression]") unless input[:expression].nil?
      end
    end

    class SearchDatabasesByLFTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchDatabasesByLFTagsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        DatabaseLFTagsList.validate!(input[:database_list], context: "#{context}[:database_list]") unless input[:database_list].nil?
      end
    end

    class SearchTablesByLFTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchTablesByLFTagsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Expression.validate!(input[:expression], context: "#{context}[:expression]") unless input[:expression].nil?
      end
    end

    class SearchTablesByLFTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchTablesByLFTagsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        TableLFTagsList.validate!(input[:table_list], context: "#{context}[:table_list]") unless input[:table_list].nil?
      end
    end

    class StartQueryPlanningInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartQueryPlanningInput, context: context)
        QueryPlanningContext.validate!(input[:query_planning_context], context: "#{context}[:query_planning_context]") unless input[:query_planning_context].nil?
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
      end
    end

    class StartQueryPlanningOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartQueryPlanningOutput, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
      end
    end

    class StartTransactionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTransactionInput, context: context)
        Hearth::Validator.validate!(input[:transaction_type], ::String, context: "#{context}[:transaction_type]")
      end
    end

    class StartTransactionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTransactionOutput, context: context)
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
      end
    end

    class StatisticsNotReadyYetException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatisticsNotReadyYetException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StorageOptimizer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageOptimizer, context: context)
        Hearth::Validator.validate!(input[:storage_optimizer_type], ::String, context: "#{context}[:storage_optimizer_type]")
        StorageOptimizerConfig.validate!(input[:config], context: "#{context}[:config]") unless input[:config].nil?
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:warnings], ::String, context: "#{context}[:warnings]")
        Hearth::Validator.validate!(input[:last_run_details], ::String, context: "#{context}[:last_run_details]")
      end
    end

    class StorageOptimizerConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class StorageOptimizerConfigMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          StorageOptimizerConfig.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class StorageOptimizerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StorageOptimizer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StringValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TableLFTagsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TaggedTable.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TableObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableObject, context: context)
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
      end
    end

    class TableObjectList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TableObject.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TableResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableResource, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TableWildcard.validate!(input[:table_wildcard], context: "#{context}[:table_wildcard]") unless input[:table_wildcard].nil?
      end
    end

    class TableWildcard
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableWildcard, context: context)
      end
    end

    class TableWithColumnsResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableWithColumnsResource, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ColumnNames.validate!(input[:column_names], context: "#{context}[:column_names]") unless input[:column_names].nil?
        ColumnWildcard.validate!(input[:column_wildcard], context: "#{context}[:column_wildcard]") unless input[:column_wildcard].nil?
      end
    end

    class TagValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TaggedDatabase
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaggedDatabase, context: context)
        DatabaseResource.validate!(input[:database], context: "#{context}[:database]") unless input[:database].nil?
        LFTagsList.validate!(input[:lf_tags], context: "#{context}[:lf_tags]") unless input[:lf_tags].nil?
      end
    end

    class TaggedTable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaggedTable, context: context)
        TableResource.validate!(input[:table], context: "#{context}[:table]") unless input[:table].nil?
        LFTagsList.validate!(input[:lf_tag_on_database], context: "#{context}[:lf_tag_on_database]") unless input[:lf_tag_on_database].nil?
        LFTagsList.validate!(input[:lf_tags_on_table], context: "#{context}[:lf_tags_on_table]") unless input[:lf_tags_on_table].nil?
        ColumnLFTagsList.validate!(input[:lf_tags_on_columns], context: "#{context}[:lf_tags_on_columns]") unless input[:lf_tags_on_columns].nil?
      end
    end

    class ThrottledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TransactionCanceledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransactionCanceledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TransactionCommitInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransactionCommitInProgressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TransactionCommittedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransactionCommittedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TransactionDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransactionDescription, context: context)
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        Hearth::Validator.validate!(input[:transaction_status], ::String, context: "#{context}[:transaction_status]")
        Hearth::Validator.validate!(input[:transaction_start_time], ::Time, context: "#{context}[:transaction_start_time]")
        Hearth::Validator.validate!(input[:transaction_end_time], ::Time, context: "#{context}[:transaction_end_time]")
      end
    end

    class TransactionDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TransactionDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrustedResourceOwners
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UpdateLFTagInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLFTagInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        TagValueList.validate!(input[:tag_values_to_delete], context: "#{context}[:tag_values_to_delete]") unless input[:tag_values_to_delete].nil?
        TagValueList.validate!(input[:tag_values_to_add], context: "#{context}[:tag_values_to_add]") unless input[:tag_values_to_add].nil?
      end
    end

    class UpdateLFTagOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLFTagOutput, context: context)
      end
    end

    class UpdateResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceInput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class UpdateResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceOutput, context: context)
      end
    end

    class UpdateTableObjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTableObjectsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        WriteOperationList.validate!(input[:write_operations], context: "#{context}[:write_operations]") unless input[:write_operations].nil?
      end
    end

    class UpdateTableObjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTableObjectsOutput, context: context)
      end
    end

    class UpdateTableStorageOptimizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTableStorageOptimizerInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        StorageOptimizerConfigMap.validate!(input[:storage_optimizer_config], context: "#{context}[:storage_optimizer_config]") unless input[:storage_optimizer_config].nil?
      end
    end

    class UpdateTableStorageOptimizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTableStorageOptimizerOutput, context: context)
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
      end
    end

    class ValueStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VirtualObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VirtualObject, context: context)
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class VirtualObjectList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VirtualObject.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkUnitRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkUnitRange, context: context)
        Hearth::Validator.validate!(input[:work_unit_id_max], ::Integer, context: "#{context}[:work_unit_id_max]")
        Hearth::Validator.validate!(input[:work_unit_id_min], ::Integer, context: "#{context}[:work_unit_id_min]")
        Hearth::Validator.validate!(input[:work_unit_token], ::String, context: "#{context}[:work_unit_token]")
      end
    end

    class WorkUnitRangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorkUnitRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkUnitsNotReadyYetException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkUnitsNotReadyYetException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WriteOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WriteOperation, context: context)
        AddObjectInput.validate!(input[:add_object], context: "#{context}[:add_object]") unless input[:add_object].nil?
        DeleteObjectInput.validate!(input[:delete_object], context: "#{context}[:delete_object]") unless input[:delete_object].nil?
      end
    end

    class WriteOperationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WriteOperation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
