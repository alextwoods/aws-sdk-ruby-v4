# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::FinspaceData
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module ApplicationPermissionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ChangesetErrorInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangesetErrorInfo, context: context)
        type = Types::ChangesetErrorInfo.new
        type.error_message = params[:error_message]
        type.error_category = params[:error_category]
        type
      end
    end

    module ChangesetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChangesetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChangesetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangesetSummary, context: context)
        type = Types::ChangesetSummary.new
        type.changeset_id = params[:changeset_id]
        type.changeset_arn = params[:changeset_arn]
        type.dataset_id = params[:dataset_id]
        type.change_type = params[:change_type]
        type.source_params = SourceParams.build(params[:source_params], context: "#{context}[:source_params]") unless params[:source_params].nil?
        type.format_params = FormatParams.build(params[:format_params], context: "#{context}[:format_params]") unless params[:format_params].nil?
        type.create_time = params[:create_time]
        type.status = params[:status]
        type.error_info = ChangesetErrorInfo.build(params[:error_info], context: "#{context}[:error_info]") unless params[:error_info].nil?
        type.active_until_timestamp = params[:active_until_timestamp]
        type.active_from_timestamp = params[:active_from_timestamp]
        type.updates_changeset_id = params[:updates_changeset_id]
        type.updated_by_changeset_id = params[:updated_by_changeset_id]
        type
      end
    end

    module ColumnDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnDefinition, context: context)
        type = Types::ColumnDefinition.new
        type.data_type = params[:data_type]
        type.column_name = params[:column_name]
        type.column_description = params[:column_description]
        type
      end
    end

    module ColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module CreateChangesetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChangesetInput, context: context)
        type = Types::CreateChangesetInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.dataset_id = params[:dataset_id]
        type.change_type = params[:change_type]
        type.source_params = SourceParams.build(params[:source_params], context: "#{context}[:source_params]") unless params[:source_params].nil?
        type.format_params = FormatParams.build(params[:format_params], context: "#{context}[:format_params]") unless params[:format_params].nil?
        type
      end
    end

    module CreateChangesetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateChangesetOutput, context: context)
        type = Types::CreateChangesetOutput.new
        type.dataset_id = params[:dataset_id]
        type.changeset_id = params[:changeset_id]
        type
      end
    end

    module CreateDataViewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataViewInput, context: context)
        type = Types::CreateDataViewInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.dataset_id = params[:dataset_id]
        type.auto_update = params[:auto_update]
        type.sort_columns = SortColumnList.build(params[:sort_columns], context: "#{context}[:sort_columns]") unless params[:sort_columns].nil?
        type.partition_columns = PartitionColumnList.build(params[:partition_columns], context: "#{context}[:partition_columns]") unless params[:partition_columns].nil?
        type.as_of_timestamp = params[:as_of_timestamp]
        type.destination_type_params = DataViewDestinationTypeParams.build(params[:destination_type_params], context: "#{context}[:destination_type_params]") unless params[:destination_type_params].nil?
        type
      end
    end

    module CreateDataViewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataViewOutput, context: context)
        type = Types::CreateDataViewOutput.new
        type.dataset_id = params[:dataset_id]
        type.data_view_id = params[:data_view_id]
        type
      end
    end

    module CreateDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetInput, context: context)
        type = Types::CreateDatasetInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.dataset_title = params[:dataset_title]
        type.kind = params[:kind]
        type.dataset_description = params[:dataset_description]
        type.owner_info = DatasetOwnerInfo.build(params[:owner_info], context: "#{context}[:owner_info]") unless params[:owner_info].nil?
        type.permission_group_params = PermissionGroupParams.build(params[:permission_group_params], context: "#{context}[:permission_group_params]") unless params[:permission_group_params].nil?
        type.alias = params[:alias]
        type.schema_definition = SchemaUnion.build(params[:schema_definition], context: "#{context}[:schema_definition]") unless params[:schema_definition].nil?
        type
      end
    end

    module CreateDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetOutput, context: context)
        type = Types::CreateDatasetOutput.new
        type.dataset_id = params[:dataset_id]
        type
      end
    end

    module CreatePermissionGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePermissionGroupInput, context: context)
        type = Types::CreatePermissionGroupInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.application_permissions = ApplicationPermissionList.build(params[:application_permissions], context: "#{context}[:application_permissions]") unless params[:application_permissions].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreatePermissionGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePermissionGroupOutput, context: context)
        type = Types::CreatePermissionGroupOutput.new
        type.permission_group_id = params[:permission_group_id]
        type
      end
    end

    module CreateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserInput, context: context)
        type = Types::CreateUserInput.new
        type.email_address = params[:email_address]
        type.type = params[:type]
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type.api_access = params[:api_access]
        type.api_access_principal_arn = params[:api_access_principal_arn]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserOutput, context: context)
        type = Types::CreateUserOutput.new
        type.user_id = params[:user_id]
        type
      end
    end

    module Credentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Credentials, context: context)
        type = Types::Credentials.new
        type.access_key_id = params[:access_key_id]
        type.secret_access_key = params[:secret_access_key]
        type.session_token = params[:session_token]
        type
      end
    end

    module DataViewDestinationTypeParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataViewDestinationTypeParams, context: context)
        type = Types::DataViewDestinationTypeParams.new
        type.destination_type = params[:destination_type]
        type.s3_destination_export_file_format = params[:s3_destination_export_file_format]
        type.s3_destination_export_file_format_options = S3DestinationFormatOptions.build(params[:s3_destination_export_file_format_options], context: "#{context}[:s3_destination_export_file_format_options]") unless params[:s3_destination_export_file_format_options].nil?
        type
      end
    end

    module DataViewErrorInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataViewErrorInfo, context: context)
        type = Types::DataViewErrorInfo.new
        type.error_message = params[:error_message]
        type.error_category = params[:error_category]
        type
      end
    end

    module DataViewList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataViewSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataViewSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataViewSummary, context: context)
        type = Types::DataViewSummary.new
        type.data_view_id = params[:data_view_id]
        type.data_view_arn = params[:data_view_arn]
        type.dataset_id = params[:dataset_id]
        type.as_of_timestamp = params[:as_of_timestamp]
        type.partition_columns = PartitionColumnList.build(params[:partition_columns], context: "#{context}[:partition_columns]") unless params[:partition_columns].nil?
        type.sort_columns = SortColumnList.build(params[:sort_columns], context: "#{context}[:sort_columns]") unless params[:sort_columns].nil?
        type.status = params[:status]
        type.error_info = DataViewErrorInfo.build(params[:error_info], context: "#{context}[:error_info]") unless params[:error_info].nil?
        type.destination_type_properties = DataViewDestinationTypeParams.build(params[:destination_type_properties], context: "#{context}[:destination_type_properties]") unless params[:destination_type_properties].nil?
        type.auto_update = params[:auto_update]
        type.create_time = params[:create_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module Dataset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Dataset, context: context)
        type = Types::Dataset.new
        type.dataset_id = params[:dataset_id]
        type.dataset_arn = params[:dataset_arn]
        type.dataset_title = params[:dataset_title]
        type.kind = params[:kind]
        type.dataset_description = params[:dataset_description]
        type.owner_info = DatasetOwnerInfo.build(params[:owner_info], context: "#{context}[:owner_info]") unless params[:owner_info].nil?
        type.create_time = params[:create_time]
        type.last_modified_time = params[:last_modified_time]
        type.schema_definition = SchemaUnion.build(params[:schema_definition], context: "#{context}[:schema_definition]") unless params[:schema_definition].nil?
        type.alias = params[:alias]
        type
      end
    end

    module DatasetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Dataset.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetOwnerInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetOwnerInfo, context: context)
        type = Types::DatasetOwnerInfo.new
        type.name = params[:name]
        type.phone_number = params[:phone_number]
        type.email = params[:email]
        type
      end
    end

    module DeleteDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetInput, context: context)
        type = Types::DeleteDatasetInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.dataset_id = params[:dataset_id]
        type
      end
    end

    module DeleteDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetOutput, context: context)
        type = Types::DeleteDatasetOutput.new
        type.dataset_id = params[:dataset_id]
        type
      end
    end

    module DeletePermissionGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePermissionGroupInput, context: context)
        type = Types::DeletePermissionGroupInput.new
        type.permission_group_id = params[:permission_group_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module DeletePermissionGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePermissionGroupOutput, context: context)
        type = Types::DeletePermissionGroupOutput.new
        type.permission_group_id = params[:permission_group_id]
        type
      end
    end

    module DisableUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableUserInput, context: context)
        type = Types::DisableUserInput.new
        type.user_id = params[:user_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module DisableUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableUserOutput, context: context)
        type = Types::DisableUserOutput.new
        type.user_id = params[:user_id]
        type
      end
    end

    module EnableUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableUserInput, context: context)
        type = Types::EnableUserInput.new
        type.user_id = params[:user_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module EnableUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableUserOutput, context: context)
        type = Types::EnableUserOutput.new
        type.user_id = params[:user_id]
        type
      end
    end

    module FormatParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GetChangesetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChangesetInput, context: context)
        type = Types::GetChangesetInput.new
        type.dataset_id = params[:dataset_id]
        type.changeset_id = params[:changeset_id]
        type
      end
    end

    module GetChangesetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChangesetOutput, context: context)
        type = Types::GetChangesetOutput.new
        type.changeset_id = params[:changeset_id]
        type.changeset_arn = params[:changeset_arn]
        type.dataset_id = params[:dataset_id]
        type.change_type = params[:change_type]
        type.source_params = SourceParams.build(params[:source_params], context: "#{context}[:source_params]") unless params[:source_params].nil?
        type.format_params = FormatParams.build(params[:format_params], context: "#{context}[:format_params]") unless params[:format_params].nil?
        type.create_time = params[:create_time]
        type.status = params[:status]
        type.error_info = ChangesetErrorInfo.build(params[:error_info], context: "#{context}[:error_info]") unless params[:error_info].nil?
        type.active_until_timestamp = params[:active_until_timestamp]
        type.active_from_timestamp = params[:active_from_timestamp]
        type.updates_changeset_id = params[:updates_changeset_id]
        type.updated_by_changeset_id = params[:updated_by_changeset_id]
        type
      end
    end

    module GetDataViewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataViewInput, context: context)
        type = Types::GetDataViewInput.new
        type.data_view_id = params[:data_view_id]
        type.dataset_id = params[:dataset_id]
        type
      end
    end

    module GetDataViewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataViewOutput, context: context)
        type = Types::GetDataViewOutput.new
        type.auto_update = params[:auto_update]
        type.partition_columns = PartitionColumnList.build(params[:partition_columns], context: "#{context}[:partition_columns]") unless params[:partition_columns].nil?
        type.dataset_id = params[:dataset_id]
        type.as_of_timestamp = params[:as_of_timestamp]
        type.error_info = DataViewErrorInfo.build(params[:error_info], context: "#{context}[:error_info]") unless params[:error_info].nil?
        type.last_modified_time = params[:last_modified_time]
        type.create_time = params[:create_time]
        type.sort_columns = SortColumnList.build(params[:sort_columns], context: "#{context}[:sort_columns]") unless params[:sort_columns].nil?
        type.data_view_id = params[:data_view_id]
        type.data_view_arn = params[:data_view_arn]
        type.destination_type_params = DataViewDestinationTypeParams.build(params[:destination_type_params], context: "#{context}[:destination_type_params]") unless params[:destination_type_params].nil?
        type.status = params[:status]
        type
      end
    end

    module GetDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDatasetInput, context: context)
        type = Types::GetDatasetInput.new
        type.dataset_id = params[:dataset_id]
        type
      end
    end

    module GetDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDatasetOutput, context: context)
        type = Types::GetDatasetOutput.new
        type.dataset_id = params[:dataset_id]
        type.dataset_arn = params[:dataset_arn]
        type.dataset_title = params[:dataset_title]
        type.kind = params[:kind]
        type.dataset_description = params[:dataset_description]
        type.create_time = params[:create_time]
        type.last_modified_time = params[:last_modified_time]
        type.schema_definition = SchemaUnion.build(params[:schema_definition], context: "#{context}[:schema_definition]") unless params[:schema_definition].nil?
        type.alias = params[:alias]
        type.status = params[:status]
        type
      end
    end

    module GetProgrammaticAccessCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProgrammaticAccessCredentialsInput, context: context)
        type = Types::GetProgrammaticAccessCredentialsInput.new
        type.duration_in_minutes = params[:duration_in_minutes]
        type.environment_id = params[:environment_id]
        type
      end
    end

    module GetProgrammaticAccessCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProgrammaticAccessCredentialsOutput, context: context)
        type = Types::GetProgrammaticAccessCredentialsOutput.new
        type.credentials = Credentials.build(params[:credentials], context: "#{context}[:credentials]") unless params[:credentials].nil?
        type.duration_in_minutes = params[:duration_in_minutes]
        type
      end
    end

    module GetUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserInput, context: context)
        type = Types::GetUserInput.new
        type.user_id = params[:user_id]
        type
      end
    end

    module GetUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserOutput, context: context)
        type = Types::GetUserOutput.new
        type.user_id = params[:user_id]
        type.status = params[:status]
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type.email_address = params[:email_address]
        type.type = params[:type]
        type.api_access = params[:api_access]
        type.api_access_principal_arn = params[:api_access_principal_arn]
        type.create_time = params[:create_time]
        type.last_enabled_time = params[:last_enabled_time]
        type.last_disabled_time = params[:last_disabled_time]
        type.last_modified_time = params[:last_modified_time]
        type.last_login_time = params[:last_login_time]
        type
      end
    end

    module GetWorkingLocationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkingLocationInput, context: context)
        type = Types::GetWorkingLocationInput.new
        type.location_type = params[:location_type]
        type
      end
    end

    module GetWorkingLocationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkingLocationOutput, context: context)
        type = Types::GetWorkingLocationOutput.new
        type.s3_uri = params[:s3_uri]
        type.s3_path = params[:s3_path]
        type.s3_bucket = params[:s3_bucket]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListChangesetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChangesetsInput, context: context)
        type = Types::ListChangesetsInput.new
        type.dataset_id = params[:dataset_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListChangesetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListChangesetsOutput, context: context)
        type = Types::ListChangesetsOutput.new
        type.changesets = ChangesetList.build(params[:changesets], context: "#{context}[:changesets]") unless params[:changesets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDataViewsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataViewsInput, context: context)
        type = Types::ListDataViewsInput.new
        type.dataset_id = params[:dataset_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDataViewsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataViewsOutput, context: context)
        type = Types::ListDataViewsOutput.new
        type.next_token = params[:next_token]
        type.data_views = DataViewList.build(params[:data_views], context: "#{context}[:data_views]") unless params[:data_views].nil?
        type
      end
    end

    module ListDatasetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetsInput, context: context)
        type = Types::ListDatasetsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDatasetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetsOutput, context: context)
        type = Types::ListDatasetsOutput.new
        type.datasets = DatasetList.build(params[:datasets], context: "#{context}[:datasets]") unless params[:datasets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPermissionGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionGroupsInput, context: context)
        type = Types::ListPermissionGroupsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPermissionGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPermissionGroupsOutput, context: context)
        type = Types::ListPermissionGroupsOutput.new
        type.permission_groups = PermissionGroupList.build(params[:permission_groups], context: "#{context}[:permission_groups]") unless params[:permission_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersInput, context: context)
        type = Types::ListUsersInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersOutput, context: context)
        type = Types::ListUsersOutput.new
        type.users = UserList.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module PartitionColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PermissionGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PermissionGroup, context: context)
        type = Types::PermissionGroup.new
        type.permission_group_id = params[:permission_group_id]
        type.name = params[:name]
        type.description = params[:description]
        type.application_permissions = ApplicationPermissionList.build(params[:application_permissions], context: "#{context}[:application_permissions]") unless params[:application_permissions].nil?
        type.create_time = params[:create_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module PermissionGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PermissionGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PermissionGroupParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PermissionGroupParams, context: context)
        type = Types::PermissionGroupParams.new
        type.permission_group_id = params[:permission_group_id]
        type.dataset_permissions = ResourcePermissionsList.build(params[:dataset_permissions], context: "#{context}[:dataset_permissions]") unless params[:dataset_permissions].nil?
        type
      end
    end

    module ResetUserPasswordInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetUserPasswordInput, context: context)
        type = Types::ResetUserPasswordInput.new
        type.user_id = params[:user_id]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module ResetUserPasswordOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetUserPasswordOutput, context: context)
        type = Types::ResetUserPasswordOutput.new
        type.user_id = params[:user_id]
        type.temporary_password = params[:temporary_password]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module ResourcePermission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourcePermission, context: context)
        type = Types::ResourcePermission.new
        type.permission = params[:permission]
        type
      end
    end

    module ResourcePermissionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourcePermission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3DestinationFormatOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module SchemaDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaDefinition, context: context)
        type = Types::SchemaDefinition.new
        type.columns = ColumnList.build(params[:columns], context: "#{context}[:columns]") unless params[:columns].nil?
        type.primary_key_columns = ColumnNameList.build(params[:primary_key_columns], context: "#{context}[:primary_key_columns]") unless params[:primary_key_columns].nil?
        type
      end
    end

    module SchemaUnion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaUnion, context: context)
        type = Types::SchemaUnion.new
        type.tabular_schema_config = SchemaDefinition.build(params[:tabular_schema_config], context: "#{context}[:tabular_schema_config]") unless params[:tabular_schema_config].nil?
        type
      end
    end

    module SortColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SourceParams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type
      end
    end

    module UpdateChangesetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChangesetInput, context: context)
        type = Types::UpdateChangesetInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.dataset_id = params[:dataset_id]
        type.changeset_id = params[:changeset_id]
        type.source_params = SourceParams.build(params[:source_params], context: "#{context}[:source_params]") unless params[:source_params].nil?
        type.format_params = FormatParams.build(params[:format_params], context: "#{context}[:format_params]") unless params[:format_params].nil?
        type
      end
    end

    module UpdateChangesetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateChangesetOutput, context: context)
        type = Types::UpdateChangesetOutput.new
        type.changeset_id = params[:changeset_id]
        type.dataset_id = params[:dataset_id]
        type
      end
    end

    module UpdateDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatasetInput, context: context)
        type = Types::UpdateDatasetInput.new
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.dataset_id = params[:dataset_id]
        type.dataset_title = params[:dataset_title]
        type.kind = params[:kind]
        type.dataset_description = params[:dataset_description]
        type.alias = params[:alias]
        type.schema_definition = SchemaUnion.build(params[:schema_definition], context: "#{context}[:schema_definition]") unless params[:schema_definition].nil?
        type
      end
    end

    module UpdateDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatasetOutput, context: context)
        type = Types::UpdateDatasetOutput.new
        type.dataset_id = params[:dataset_id]
        type
      end
    end

    module UpdatePermissionGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePermissionGroupInput, context: context)
        type = Types::UpdatePermissionGroupInput.new
        type.permission_group_id = params[:permission_group_id]
        type.name = params[:name]
        type.description = params[:description]
        type.application_permissions = ApplicationPermissionList.build(params[:application_permissions], context: "#{context}[:application_permissions]") unless params[:application_permissions].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module UpdatePermissionGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePermissionGroupOutput, context: context)
        type = Types::UpdatePermissionGroupOutput.new
        type.permission_group_id = params[:permission_group_id]
        type
      end
    end

    module UpdateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserInput, context: context)
        type = Types::UpdateUserInput.new
        type.user_id = params[:user_id]
        type.type = params[:type]
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type.api_access = params[:api_access]
        type.api_access_principal_arn = params[:api_access_principal_arn]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module UpdateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserOutput, context: context)
        type = Types::UpdateUserOutput.new
        type.user_id = params[:user_id]
        type
      end
    end

    module User
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::User, context: context)
        type = Types::User.new
        type.user_id = params[:user_id]
        type.status = params[:status]
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type.email_address = params[:email_address]
        type.type = params[:type]
        type.api_access = params[:api_access]
        type.api_access_principal_arn = params[:api_access_principal_arn]
        type.create_time = params[:create_time]
        type.last_enabled_time = params[:last_enabled_time]
        type.last_disabled_time = params[:last_disabled_time]
        type.last_modified_time = params[:last_modified_time]
        type.last_login_time = params[:last_login_time]
        type
      end
    end

    module UserList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << User.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

  end
end
