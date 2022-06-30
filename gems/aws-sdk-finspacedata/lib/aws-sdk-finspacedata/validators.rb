# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::FinspaceData
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApplicationPermissionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ChangesetErrorInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangesetErrorInfo, context: context)
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:error_category], ::String, context: "#{context}[:error_category]")
      end
    end

    class ChangesetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ChangesetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChangesetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangesetSummary, context: context)
        Hearth::Validator.validate!(input[:changeset_id], ::String, context: "#{context}[:changeset_id]")
        Hearth::Validator.validate!(input[:changeset_arn], ::String, context: "#{context}[:changeset_arn]")
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
        Hearth::Validator.validate!(input[:change_type], ::String, context: "#{context}[:change_type]")
        Validators::SourceParams.validate!(input[:source_params], context: "#{context}[:source_params]") unless input[:source_params].nil?
        Validators::FormatParams.validate!(input[:format_params], context: "#{context}[:format_params]") unless input[:format_params].nil?
        Hearth::Validator.validate!(input[:create_time], ::Integer, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ChangesetErrorInfo.validate!(input[:error_info], context: "#{context}[:error_info]") unless input[:error_info].nil?
        Hearth::Validator.validate!(input[:active_until_timestamp], ::Integer, context: "#{context}[:active_until_timestamp]")
        Hearth::Validator.validate!(input[:active_from_timestamp], ::Integer, context: "#{context}[:active_from_timestamp]")
        Hearth::Validator.validate!(input[:updates_changeset_id], ::String, context: "#{context}[:updates_changeset_id]")
        Hearth::Validator.validate!(input[:updated_by_changeset_id], ::String, context: "#{context}[:updated_by_changeset_id]")
      end
    end

    class ColumnDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnDefinition, context: context)
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
        Hearth::Validator.validate!(input[:column_description], ::String, context: "#{context}[:column_description]")
      end
    end

    class ColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ColumnDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class CreateChangesetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChangesetInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
        Hearth::Validator.validate!(input[:change_type], ::String, context: "#{context}[:change_type]")
        Validators::SourceParams.validate!(input[:source_params], context: "#{context}[:source_params]") unless input[:source_params].nil?
        Validators::FormatParams.validate!(input[:format_params], context: "#{context}[:format_params]") unless input[:format_params].nil?
      end
    end

    class CreateChangesetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateChangesetOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
        Hearth::Validator.validate!(input[:changeset_id], ::String, context: "#{context}[:changeset_id]")
      end
    end

    class CreateDataViewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataViewInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
        Hearth::Validator.validate!(input[:auto_update], ::TrueClass, ::FalseClass, context: "#{context}[:auto_update]")
        Validators::SortColumnList.validate!(input[:sort_columns], context: "#{context}[:sort_columns]") unless input[:sort_columns].nil?
        Validators::PartitionColumnList.validate!(input[:partition_columns], context: "#{context}[:partition_columns]") unless input[:partition_columns].nil?
        Hearth::Validator.validate!(input[:as_of_timestamp], ::Integer, context: "#{context}[:as_of_timestamp]")
        Validators::DataViewDestinationTypeParams.validate!(input[:destination_type_params], context: "#{context}[:destination_type_params]") unless input[:destination_type_params].nil?
      end
    end

    class CreateDataViewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataViewOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
        Hearth::Validator.validate!(input[:data_view_id], ::String, context: "#{context}[:data_view_id]")
      end
    end

    class CreateDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dataset_title], ::String, context: "#{context}[:dataset_title]")
        Hearth::Validator.validate!(input[:kind], ::String, context: "#{context}[:kind]")
        Hearth::Validator.validate!(input[:dataset_description], ::String, context: "#{context}[:dataset_description]")
        Validators::DatasetOwnerInfo.validate!(input[:owner_info], context: "#{context}[:owner_info]") unless input[:owner_info].nil?
        Validators::PermissionGroupParams.validate!(input[:permission_group_params], context: "#{context}[:permission_group_params]") unless input[:permission_group_params].nil?
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Validators::SchemaUnion.validate!(input[:schema_definition], context: "#{context}[:schema_definition]") unless input[:schema_definition].nil?
      end
    end

    class CreateDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
      end
    end

    class CreatePermissionGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePermissionGroupInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ApplicationPermissionList.validate!(input[:application_permissions], context: "#{context}[:application_permissions]") unless input[:application_permissions].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreatePermissionGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePermissionGroupOutput, context: context)
        Hearth::Validator.validate!(input[:permission_group_id], ::String, context: "#{context}[:permission_group_id]")
      end
    end

    class CreateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserInput, context: context)
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:api_access], ::String, context: "#{context}[:api_access]")
        Hearth::Validator.validate!(input[:api_access_principal_arn], ::String, context: "#{context}[:api_access_principal_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserOutput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class Credentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Credentials, context: context)
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:secret_access_key], ::String, context: "#{context}[:secret_access_key]")
        Hearth::Validator.validate!(input[:session_token], ::String, context: "#{context}[:session_token]")
      end
    end

    class DataViewDestinationTypeParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataViewDestinationTypeParams, context: context)
        Hearth::Validator.validate!(input[:destination_type], ::String, context: "#{context}[:destination_type]")
        Hearth::Validator.validate!(input[:s3_destination_export_file_format], ::String, context: "#{context}[:s3_destination_export_file_format]")
        Validators::S3DestinationFormatOptions.validate!(input[:s3_destination_export_file_format_options], context: "#{context}[:s3_destination_export_file_format_options]") unless input[:s3_destination_export_file_format_options].nil?
      end
    end

    class DataViewErrorInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataViewErrorInfo, context: context)
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:error_category], ::String, context: "#{context}[:error_category]")
      end
    end

    class DataViewList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataViewSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataViewSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataViewSummary, context: context)
        Hearth::Validator.validate!(input[:data_view_id], ::String, context: "#{context}[:data_view_id]")
        Hearth::Validator.validate!(input[:data_view_arn], ::String, context: "#{context}[:data_view_arn]")
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
        Hearth::Validator.validate!(input[:as_of_timestamp], ::Integer, context: "#{context}[:as_of_timestamp]")
        Validators::PartitionColumnList.validate!(input[:partition_columns], context: "#{context}[:partition_columns]") unless input[:partition_columns].nil?
        Validators::SortColumnList.validate!(input[:sort_columns], context: "#{context}[:sort_columns]") unless input[:sort_columns].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::DataViewErrorInfo.validate!(input[:error_info], context: "#{context}[:error_info]") unless input[:error_info].nil?
        Validators::DataViewDestinationTypeParams.validate!(input[:destination_type_properties], context: "#{context}[:destination_type_properties]") unless input[:destination_type_properties].nil?
        Hearth::Validator.validate!(input[:auto_update], ::TrueClass, ::FalseClass, context: "#{context}[:auto_update]")
        Hearth::Validator.validate!(input[:create_time], ::Integer, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
      end
    end

    class Dataset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Dataset, context: context)
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:dataset_title], ::String, context: "#{context}[:dataset_title]")
        Hearth::Validator.validate!(input[:kind], ::String, context: "#{context}[:kind]")
        Hearth::Validator.validate!(input[:dataset_description], ::String, context: "#{context}[:dataset_description]")
        Validators::DatasetOwnerInfo.validate!(input[:owner_info], context: "#{context}[:owner_info]") unless input[:owner_info].nil?
        Hearth::Validator.validate!(input[:create_time], ::Integer, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
        Validators::SchemaUnion.validate!(input[:schema_definition], context: "#{context}[:schema_definition]") unless input[:schema_definition].nil?
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
      end
    end

    class DatasetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Dataset.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetOwnerInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetOwnerInfo, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
      end
    end

    class DeleteDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
      end
    end

    class DeleteDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
      end
    end

    class DeletePermissionGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePermissionGroupInput, context: context)
        Hearth::Validator.validate!(input[:permission_group_id], ::String, context: "#{context}[:permission_group_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeletePermissionGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePermissionGroupOutput, context: context)
        Hearth::Validator.validate!(input[:permission_group_id], ::String, context: "#{context}[:permission_group_id]")
      end
    end

    class DisableUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableUserInput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DisableUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableUserOutput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class EnableUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableUserInput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class EnableUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableUserOutput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class FormatParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class GetChangesetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChangesetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
        Hearth::Validator.validate!(input[:changeset_id], ::String, context: "#{context}[:changeset_id]")
      end
    end

    class GetChangesetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChangesetOutput, context: context)
        Hearth::Validator.validate!(input[:changeset_id], ::String, context: "#{context}[:changeset_id]")
        Hearth::Validator.validate!(input[:changeset_arn], ::String, context: "#{context}[:changeset_arn]")
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
        Hearth::Validator.validate!(input[:change_type], ::String, context: "#{context}[:change_type]")
        Validators::SourceParams.validate!(input[:source_params], context: "#{context}[:source_params]") unless input[:source_params].nil?
        Validators::FormatParams.validate!(input[:format_params], context: "#{context}[:format_params]") unless input[:format_params].nil?
        Hearth::Validator.validate!(input[:create_time], ::Integer, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ChangesetErrorInfo.validate!(input[:error_info], context: "#{context}[:error_info]") unless input[:error_info].nil?
        Hearth::Validator.validate!(input[:active_until_timestamp], ::Integer, context: "#{context}[:active_until_timestamp]")
        Hearth::Validator.validate!(input[:active_from_timestamp], ::Integer, context: "#{context}[:active_from_timestamp]")
        Hearth::Validator.validate!(input[:updates_changeset_id], ::String, context: "#{context}[:updates_changeset_id]")
        Hearth::Validator.validate!(input[:updated_by_changeset_id], ::String, context: "#{context}[:updated_by_changeset_id]")
      end
    end

    class GetDataViewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataViewInput, context: context)
        Hearth::Validator.validate!(input[:data_view_id], ::String, context: "#{context}[:data_view_id]")
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
      end
    end

    class GetDataViewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataViewOutput, context: context)
        Hearth::Validator.validate!(input[:auto_update], ::TrueClass, ::FalseClass, context: "#{context}[:auto_update]")
        Validators::PartitionColumnList.validate!(input[:partition_columns], context: "#{context}[:partition_columns]") unless input[:partition_columns].nil?
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
        Hearth::Validator.validate!(input[:as_of_timestamp], ::Integer, context: "#{context}[:as_of_timestamp]")
        Validators::DataViewErrorInfo.validate!(input[:error_info], context: "#{context}[:error_info]") unless input[:error_info].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:create_time], ::Integer, context: "#{context}[:create_time]")
        Validators::SortColumnList.validate!(input[:sort_columns], context: "#{context}[:sort_columns]") unless input[:sort_columns].nil?
        Hearth::Validator.validate!(input[:data_view_id], ::String, context: "#{context}[:data_view_id]")
        Hearth::Validator.validate!(input[:data_view_arn], ::String, context: "#{context}[:data_view_arn]")
        Validators::DataViewDestinationTypeParams.validate!(input[:destination_type_params], context: "#{context}[:destination_type_params]") unless input[:destination_type_params].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class GetDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDatasetInput, context: context)
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
      end
    end

    class GetDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDatasetOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Hearth::Validator.validate!(input[:dataset_title], ::String, context: "#{context}[:dataset_title]")
        Hearth::Validator.validate!(input[:kind], ::String, context: "#{context}[:kind]")
        Hearth::Validator.validate!(input[:dataset_description], ::String, context: "#{context}[:dataset_description]")
        Hearth::Validator.validate!(input[:create_time], ::Integer, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
        Validators::SchemaUnion.validate!(input[:schema_definition], context: "#{context}[:schema_definition]") unless input[:schema_definition].nil?
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class GetProgrammaticAccessCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProgrammaticAccessCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:duration_in_minutes], ::Integer, context: "#{context}[:duration_in_minutes]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
      end
    end

    class GetProgrammaticAccessCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProgrammaticAccessCredentialsOutput, context: context)
        Validators::Credentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
        Hearth::Validator.validate!(input[:duration_in_minutes], ::Integer, context: "#{context}[:duration_in_minutes]")
      end
    end

    class GetUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserInput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class GetUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserOutput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:api_access], ::String, context: "#{context}[:api_access]")
        Hearth::Validator.validate!(input[:api_access_principal_arn], ::String, context: "#{context}[:api_access_principal_arn]")
        Hearth::Validator.validate!(input[:create_time], ::Integer, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:last_enabled_time], ::Integer, context: "#{context}[:last_enabled_time]")
        Hearth::Validator.validate!(input[:last_disabled_time], ::Integer, context: "#{context}[:last_disabled_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:last_login_time], ::Integer, context: "#{context}[:last_login_time]")
      end
    end

    class GetWorkingLocationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkingLocationInput, context: context)
        Hearth::Validator.validate!(input[:location_type], ::String, context: "#{context}[:location_type]")
      end
    end

    class GetWorkingLocationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkingLocationOutput, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:s3_path], ::String, context: "#{context}[:s3_path]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListChangesetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChangesetsInput, context: context)
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListChangesetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListChangesetsOutput, context: context)
        Validators::ChangesetList.validate!(input[:changesets], context: "#{context}[:changesets]") unless input[:changesets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDataViewsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataViewsInput, context: context)
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDataViewsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataViewsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::DataViewList.validate!(input[:data_views], context: "#{context}[:data_views]") unless input[:data_views].nil?
      end
    end

    class ListDatasetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDatasetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetsOutput, context: context)
        Validators::DatasetList.validate!(input[:datasets], context: "#{context}[:datasets]") unless input[:datasets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPermissionGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPermissionGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPermissionGroupsOutput, context: context)
        Validators::PermissionGroupList.validate!(input[:permission_groups], context: "#{context}[:permission_groups]") unless input[:permission_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersOutput, context: context)
        Validators::UserList.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class PartitionColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PermissionGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PermissionGroup, context: context)
        Hearth::Validator.validate!(input[:permission_group_id], ::String, context: "#{context}[:permission_group_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ApplicationPermissionList.validate!(input[:application_permissions], context: "#{context}[:application_permissions]") unless input[:application_permissions].nil?
        Hearth::Validator.validate!(input[:create_time], ::Integer, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
      end
    end

    class PermissionGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PermissionGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PermissionGroupParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PermissionGroupParams, context: context)
        Hearth::Validator.validate!(input[:permission_group_id], ::String, context: "#{context}[:permission_group_id]")
        Validators::ResourcePermissionsList.validate!(input[:dataset_permissions], context: "#{context}[:dataset_permissions]") unless input[:dataset_permissions].nil?
      end
    end

    class ResetUserPasswordInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetUserPasswordInput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class ResetUserPasswordOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetUserPasswordOutput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:temporary_password], ::String, context: "#{context}[:temporary_password]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class ResourcePermission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourcePermission, context: context)
        Hearth::Validator.validate!(input[:permission], ::String, context: "#{context}[:permission]")
      end
    end

    class ResourcePermissionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourcePermission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3DestinationFormatOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class SchemaDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaDefinition, context: context)
        Validators::ColumnList.validate!(input[:columns], context: "#{context}[:columns]") unless input[:columns].nil?
        Validators::ColumnNameList.validate!(input[:primary_key_columns], context: "#{context}[:primary_key_columns]") unless input[:primary_key_columns].nil?
      end
    end

    class SchemaUnion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaUnion, context: context)
        Validators::SchemaDefinition.validate!(input[:tabular_schema_config], context: "#{context}[:tabular_schema_config]") unless input[:tabular_schema_config].nil?
      end
    end

    class SortColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SourceParams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
      end
    end

    class UpdateChangesetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChangesetInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
        Hearth::Validator.validate!(input[:changeset_id], ::String, context: "#{context}[:changeset_id]")
        Validators::SourceParams.validate!(input[:source_params], context: "#{context}[:source_params]") unless input[:source_params].nil?
        Validators::FormatParams.validate!(input[:format_params], context: "#{context}[:format_params]") unless input[:format_params].nil?
      end
    end

    class UpdateChangesetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateChangesetOutput, context: context)
        Hearth::Validator.validate!(input[:changeset_id], ::String, context: "#{context}[:changeset_id]")
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
      end
    end

    class UpdateDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatasetInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
        Hearth::Validator.validate!(input[:dataset_title], ::String, context: "#{context}[:dataset_title]")
        Hearth::Validator.validate!(input[:kind], ::String, context: "#{context}[:kind]")
        Hearth::Validator.validate!(input[:dataset_description], ::String, context: "#{context}[:dataset_description]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Validators::SchemaUnion.validate!(input[:schema_definition], context: "#{context}[:schema_definition]") unless input[:schema_definition].nil?
      end
    end

    class UpdateDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatasetOutput, context: context)
        Hearth::Validator.validate!(input[:dataset_id], ::String, context: "#{context}[:dataset_id]")
      end
    end

    class UpdatePermissionGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePermissionGroupInput, context: context)
        Hearth::Validator.validate!(input[:permission_group_id], ::String, context: "#{context}[:permission_group_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ApplicationPermissionList.validate!(input[:application_permissions], context: "#{context}[:application_permissions]") unless input[:application_permissions].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdatePermissionGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePermissionGroupOutput, context: context)
        Hearth::Validator.validate!(input[:permission_group_id], ::String, context: "#{context}[:permission_group_id]")
      end
    end

    class UpdateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserInput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:api_access], ::String, context: "#{context}[:api_access]")
        Hearth::Validator.validate!(input[:api_access_principal_arn], ::String, context: "#{context}[:api_access_principal_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserOutput, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class User
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::User, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:api_access], ::String, context: "#{context}[:api_access]")
        Hearth::Validator.validate!(input[:api_access_principal_arn], ::String, context: "#{context}[:api_access_principal_arn]")
        Hearth::Validator.validate!(input[:create_time], ::Integer, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:last_enabled_time], ::Integer, context: "#{context}[:last_enabled_time]")
        Hearth::Validator.validate!(input[:last_disabled_time], ::Integer, context: "#{context}[:last_disabled_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Integer, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:last_login_time], ::Integer, context: "#{context}[:last_login_time]")
      end
    end

    class UserList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::User.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

  end
end
