# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::QuickSight
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module AccountCustomization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountCustomization, context: context)
        type = Types::AccountCustomization.new
        type.default_theme = params[:default_theme]
        type.default_email_customization_template = params[:default_email_customization_template]
        type
      end
    end

    module AccountSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountSettings, context: context)
        type = Types::AccountSettings.new
        type.account_name = params[:account_name]
        type.edition = params[:edition]
        type.default_namespace = params[:default_namespace]
        type.notification_email = params[:notification_email]
        type.public_sharing_enabled = params[:public_sharing_enabled]
        type
      end
    end

    module ActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ActiveIAMPolicyAssignment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActiveIAMPolicyAssignment, context: context)
        type = Types::ActiveIAMPolicyAssignment.new
        type.assignment_name = params[:assignment_name]
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module ActiveIAMPolicyAssignmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActiveIAMPolicyAssignment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AdHocFilteringOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdHocFilteringOption, context: context)
        type = Types::AdHocFilteringOption.new
        type.availability_status = params[:availability_status]
        type
      end
    end

    module AdditionalDashboardIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AmazonElasticsearchParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AmazonElasticsearchParameters, context: context)
        type = Types::AmazonElasticsearchParameters.new
        type.domain = params[:domain]
        type
      end
    end

    module AmazonOpenSearchParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AmazonOpenSearchParameters, context: context)
        type = Types::AmazonOpenSearchParameters.new
        type.domain = params[:domain]
        type
      end
    end

    module Analysis
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Analysis, context: context)
        type = Types::Analysis.new
        type.analysis_id = params[:analysis_id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.status = params[:status]
        type.errors = AnalysisErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type.data_set_arns = DataSetArnsList.build(params[:data_set_arns], context: "#{context}[:data_set_arns]") unless params[:data_set_arns].nil?
        type.theme_arn = params[:theme_arn]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.sheets = SheetList.build(params[:sheets], context: "#{context}[:sheets]") unless params[:sheets].nil?
        type
      end
    end

    module AnalysisError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalysisError, context: context)
        type = Types::AnalysisError.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module AnalysisErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnalysisError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AnalysisSearchFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalysisSearchFilter, context: context)
        type = Types::AnalysisSearchFilter.new
        type.operator = params[:operator]
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module AnalysisSearchFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnalysisSearchFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AnalysisSourceEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalysisSourceEntity, context: context)
        type = Types::AnalysisSourceEntity.new
        type.source_template = AnalysisSourceTemplate.build(params[:source_template], context: "#{context}[:source_template]") unless params[:source_template].nil?
        type
      end
    end

    module AnalysisSourceTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalysisSourceTemplate, context: context)
        type = Types::AnalysisSourceTemplate.new
        type.data_set_references = DataSetReferenceList.build(params[:data_set_references], context: "#{context}[:data_set_references]") unless params[:data_set_references].nil?
        type.arn = params[:arn]
        type
      end
    end

    module AnalysisSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalysisSummary, context: context)
        type = Types::AnalysisSummary.new
        type.arn = params[:arn]
        type.analysis_id = params[:analysis_id]
        type.name = params[:name]
        type.status = params[:status]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module AnalysisSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnalysisSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AnonymousUserDashboardEmbeddingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnonymousUserDashboardEmbeddingConfiguration, context: context)
        type = Types::AnonymousUserDashboardEmbeddingConfiguration.new
        type.initial_dashboard_id = params[:initial_dashboard_id]
        type
      end
    end

    module AnonymousUserEmbeddingExperienceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnonymousUserEmbeddingExperienceConfiguration, context: context)
        type = Types::AnonymousUserEmbeddingExperienceConfiguration.new
        type.dashboard = AnonymousUserDashboardEmbeddingConfiguration.build(params[:dashboard], context: "#{context}[:dashboard]") unless params[:dashboard].nil?
        type
      end
    end

    module ArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AthenaParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AthenaParameters, context: context)
        type = Types::AthenaParameters.new
        type.work_group = params[:work_group]
        type
      end
    end

    module AuroraParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuroraParameters, context: context)
        type = Types::AuroraParameters.new
        type.host = params[:host]
        type.port = params[:port]
        type.database = params[:database]
        type
      end
    end

    module AuroraPostgreSqlParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuroraPostgreSqlParameters, context: context)
        type = Types::AuroraPostgreSqlParameters.new
        type.host = params[:host]
        type.port = params[:port]
        type.database = params[:database]
        type
      end
    end

    module AwsIotAnalyticsParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsIotAnalyticsParameters, context: context)
        type = Types::AwsIotAnalyticsParameters.new
        type.data_set_name = params[:data_set_name]
        type
      end
    end

    module BorderStyle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BorderStyle, context: context)
        type = Types::BorderStyle.new
        type.show = params[:show]
        type
      end
    end

    module CalculatedColumn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CalculatedColumn, context: context)
        type = Types::CalculatedColumn.new
        type.column_name = params[:column_name]
        type.column_id = params[:column_id]
        type.expression = params[:expression]
        type
      end
    end

    module CalculatedColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CalculatedColumn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CancelIngestionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelIngestionInput, context: context)
        type = Types::CancelIngestionInput.new
        type.aws_account_id = params[:aws_account_id]
        type.data_set_id = params[:data_set_id]
        type.ingestion_id = params[:ingestion_id]
        type
      end
    end

    module CancelIngestionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelIngestionOutput, context: context)
        type = Types::CancelIngestionOutput.new
        type.arn = params[:arn]
        type.ingestion_id = params[:ingestion_id]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module CastColumnTypeOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CastColumnTypeOperation, context: context)
        type = Types::CastColumnTypeOperation.new
        type.column_name = params[:column_name]
        type.new_column_type = params[:new_column_type]
        type.format = params[:format]
        type
      end
    end

    module ColorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ColumnDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnDescription, context: context)
        type = Types::ColumnDescription.new
        type.text = params[:text]
        type
      end
    end

    module ColumnGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnGroup, context: context)
        type = Types::ColumnGroup.new
        type.geo_spatial_column_group = GeoSpatialColumnGroup.build(params[:geo_spatial_column_group], context: "#{context}[:geo_spatial_column_group]") unless params[:geo_spatial_column_group].nil?
        type
      end
    end

    module ColumnGroupColumnSchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnGroupColumnSchema, context: context)
        type = Types::ColumnGroupColumnSchema.new
        type.name = params[:name]
        type
      end
    end

    module ColumnGroupColumnSchemaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnGroupColumnSchema.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnGroupSchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnGroupSchema, context: context)
        type = Types::ColumnGroupSchema.new
        type.name = params[:name]
        type.column_group_column_schema_list = ColumnGroupColumnSchemaList.build(params[:column_group_column_schema_list], context: "#{context}[:column_group_column_schema_list]") unless params[:column_group_column_schema_list].nil?
        type
      end
    end

    module ColumnGroupSchemaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnGroupSchema.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnLevelPermissionRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnLevelPermissionRule, context: context)
        type = Types::ColumnLevelPermissionRule.new
        type.principals = PrincipalList.build(params[:principals], context: "#{context}[:principals]") unless params[:principals].nil?
        type.column_names = ColumnNameList.build(params[:column_names], context: "#{context}[:column_names]") unless params[:column_names].nil?
        type
      end
    end

    module ColumnLevelPermissionRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnLevelPermissionRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
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

    module ColumnSchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnSchema, context: context)
        type = Types::ColumnSchema.new
        type.name = params[:name]
        type.data_type = params[:data_type]
        type.geographic_role = params[:geographic_role]
        type
      end
    end

    module ColumnSchemaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnSchema.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnTag, context: context)
        type = Types::ColumnTag.new
        type.column_geographic_role = params[:column_geographic_role]
        type.column_description = ColumnDescription.build(params[:column_description], context: "#{context}[:column_description]") unless params[:column_description].nil?
        type
      end
    end

    module ColumnTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnTagNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConcurrentUpdatingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentUpdatingException, context: context)
        type = Types::ConcurrentUpdatingException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module CreateAccountCustomizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccountCustomizationInput, context: context)
        type = Types::CreateAccountCustomizationInput.new
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type.account_customization = AccountCustomization.build(params[:account_customization], context: "#{context}[:account_customization]") unless params[:account_customization].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAccountCustomizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccountCustomizationOutput, context: context)
        type = Types::CreateAccountCustomizationOutput.new
        type.arn = params[:arn]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type.account_customization = AccountCustomization.build(params[:account_customization], context: "#{context}[:account_customization]") unless params[:account_customization].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module CreateAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAnalysisInput, context: context)
        type = Types::CreateAnalysisInput.new
        type.aws_account_id = params[:aws_account_id]
        type.analysis_id = params[:analysis_id]
        type.name = params[:name]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.source_entity = AnalysisSourceEntity.build(params[:source_entity], context: "#{context}[:source_entity]") unless params[:source_entity].nil?
        type.theme_arn = params[:theme_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAnalysisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAnalysisOutput, context: context)
        type = Types::CreateAnalysisOutput.new
        type.arn = params[:arn]
        type.analysis_id = params[:analysis_id]
        type.creation_status = params[:creation_status]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module CreateColumnsOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateColumnsOperation, context: context)
        type = Types::CreateColumnsOperation.new
        type.columns = CalculatedColumnList.build(params[:columns], context: "#{context}[:columns]") unless params[:columns].nil?
        type
      end
    end

    module CreateDashboardInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDashboardInput, context: context)
        type = Types::CreateDashboardInput.new
        type.aws_account_id = params[:aws_account_id]
        type.dashboard_id = params[:dashboard_id]
        type.name = params[:name]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.source_entity = DashboardSourceEntity.build(params[:source_entity], context: "#{context}[:source_entity]") unless params[:source_entity].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.version_description = params[:version_description]
        type.dashboard_publish_options = DashboardPublishOptions.build(params[:dashboard_publish_options], context: "#{context}[:dashboard_publish_options]") unless params[:dashboard_publish_options].nil?
        type.theme_arn = params[:theme_arn]
        type
      end
    end

    module CreateDashboardOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDashboardOutput, context: context)
        type = Types::CreateDashboardOutput.new
        type.arn = params[:arn]
        type.version_arn = params[:version_arn]
        type.dashboard_id = params[:dashboard_id]
        type.creation_status = params[:creation_status]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module CreateDataSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSetInput, context: context)
        type = Types::CreateDataSetInput.new
        type.aws_account_id = params[:aws_account_id]
        type.data_set_id = params[:data_set_id]
        type.name = params[:name]
        type.physical_table_map = PhysicalTableMap.build(params[:physical_table_map], context: "#{context}[:physical_table_map]") unless params[:physical_table_map].nil?
        type.logical_table_map = LogicalTableMap.build(params[:logical_table_map], context: "#{context}[:logical_table_map]") unless params[:logical_table_map].nil?
        type.import_mode = params[:import_mode]
        type.column_groups = ColumnGroupList.build(params[:column_groups], context: "#{context}[:column_groups]") unless params[:column_groups].nil?
        type.field_folders = FieldFolderMap.build(params[:field_folders], context: "#{context}[:field_folders]") unless params[:field_folders].nil?
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.row_level_permission_data_set = RowLevelPermissionDataSet.build(params[:row_level_permission_data_set], context: "#{context}[:row_level_permission_data_set]") unless params[:row_level_permission_data_set].nil?
        type.row_level_permission_tag_configuration = RowLevelPermissionTagConfiguration.build(params[:row_level_permission_tag_configuration], context: "#{context}[:row_level_permission_tag_configuration]") unless params[:row_level_permission_tag_configuration].nil?
        type.column_level_permission_rules = ColumnLevelPermissionRuleList.build(params[:column_level_permission_rules], context: "#{context}[:column_level_permission_rules]") unless params[:column_level_permission_rules].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.data_set_usage_configuration = DataSetUsageConfiguration.build(params[:data_set_usage_configuration], context: "#{context}[:data_set_usage_configuration]") unless params[:data_set_usage_configuration].nil?
        type
      end
    end

    module CreateDataSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSetOutput, context: context)
        type = Types::CreateDataSetOutput.new
        type.arn = params[:arn]
        type.data_set_id = params[:data_set_id]
        type.ingestion_arn = params[:ingestion_arn]
        type.ingestion_id = params[:ingestion_id]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module CreateDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSourceInput, context: context)
        type = Types::CreateDataSourceInput.new
        type.aws_account_id = params[:aws_account_id]
        type.data_source_id = params[:data_source_id]
        type.name = params[:name]
        type.type = params[:type]
        type.data_source_parameters = DataSourceParameters.build(params[:data_source_parameters], context: "#{context}[:data_source_parameters]") unless params[:data_source_parameters].nil?
        type.credentials = DataSourceCredentials.build(params[:credentials], context: "#{context}[:credentials]") unless params[:credentials].nil?
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.vpc_connection_properties = VpcConnectionProperties.build(params[:vpc_connection_properties], context: "#{context}[:vpc_connection_properties]") unless params[:vpc_connection_properties].nil?
        type.ssl_properties = SslProperties.build(params[:ssl_properties], context: "#{context}[:ssl_properties]") unless params[:ssl_properties].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSourceOutput, context: context)
        type = Types::CreateDataSourceOutput.new
        type.arn = params[:arn]
        type.data_source_id = params[:data_source_id]
        type.creation_status = params[:creation_status]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module CreateFolderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFolderInput, context: context)
        type = Types::CreateFolderInput.new
        type.aws_account_id = params[:aws_account_id]
        type.folder_id = params[:folder_id]
        type.name = params[:name]
        type.folder_type = params[:folder_type]
        type.parent_folder_arn = params[:parent_folder_arn]
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFolderMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFolderMembershipInput, context: context)
        type = Types::CreateFolderMembershipInput.new
        type.aws_account_id = params[:aws_account_id]
        type.folder_id = params[:folder_id]
        type.member_id = params[:member_id]
        type.member_type = params[:member_type]
        type
      end
    end

    module CreateFolderMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFolderMembershipOutput, context: context)
        type = Types::CreateFolderMembershipOutput.new
        type.status = params[:status]
        type.folder_member = FolderMember.build(params[:folder_member], context: "#{context}[:folder_member]") unless params[:folder_member].nil?
        type.request_id = params[:request_id]
        type
      end
    end

    module CreateFolderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFolderOutput, context: context)
        type = Types::CreateFolderOutput.new
        type.status = params[:status]
        type.arn = params[:arn]
        type.folder_id = params[:folder_id]
        type.request_id = params[:request_id]
        type
      end
    end

    module CreateGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupInput, context: context)
        type = Types::CreateGroupInput.new
        type.group_name = params[:group_name]
        type.description = params[:description]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type
      end
    end

    module CreateGroupMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupMembershipInput, context: context)
        type = Types::CreateGroupMembershipInput.new
        type.member_name = params[:member_name]
        type.group_name = params[:group_name]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type
      end
    end

    module CreateGroupMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupMembershipOutput, context: context)
        type = Types::CreateGroupMembershipOutput.new
        type.group_member = GroupMember.build(params[:group_member], context: "#{context}[:group_member]") unless params[:group_member].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module CreateGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGroupOutput, context: context)
        type = Types::CreateGroupOutput.new
        type.group = Group.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module CreateIAMPolicyAssignmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIAMPolicyAssignmentInput, context: context)
        type = Types::CreateIAMPolicyAssignmentInput.new
        type.aws_account_id = params[:aws_account_id]
        type.assignment_name = params[:assignment_name]
        type.assignment_status = params[:assignment_status]
        type.policy_arn = params[:policy_arn]
        type.identities = IdentityMap.build(params[:identities], context: "#{context}[:identities]") unless params[:identities].nil?
        type.namespace = params[:namespace]
        type
      end
    end

    module CreateIAMPolicyAssignmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIAMPolicyAssignmentOutput, context: context)
        type = Types::CreateIAMPolicyAssignmentOutput.new
        type.assignment_name = params[:assignment_name]
        type.assignment_id = params[:assignment_id]
        type.assignment_status = params[:assignment_status]
        type.policy_arn = params[:policy_arn]
        type.identities = IdentityMap.build(params[:identities], context: "#{context}[:identities]") unless params[:identities].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module CreateIngestionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIngestionInput, context: context)
        type = Types::CreateIngestionInput.new
        type.data_set_id = params[:data_set_id]
        type.ingestion_id = params[:ingestion_id]
        type.aws_account_id = params[:aws_account_id]
        type.ingestion_type = params[:ingestion_type]
        type
      end
    end

    module CreateIngestionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIngestionOutput, context: context)
        type = Types::CreateIngestionOutput.new
        type.arn = params[:arn]
        type.ingestion_id = params[:ingestion_id]
        type.ingestion_status = params[:ingestion_status]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module CreateNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNamespaceInput, context: context)
        type = Types::CreateNamespaceInput.new
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type.identity_store = params[:identity_store]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNamespaceOutput, context: context)
        type = Types::CreateNamespaceOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.capacity_region = params[:capacity_region]
        type.creation_status = params[:creation_status]
        type.identity_store = params[:identity_store]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module CreateTemplateAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTemplateAliasInput, context: context)
        type = Types::CreateTemplateAliasInput.new
        type.aws_account_id = params[:aws_account_id]
        type.template_id = params[:template_id]
        type.alias_name = params[:alias_name]
        type.template_version_number = params[:template_version_number]
        type
      end
    end

    module CreateTemplateAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTemplateAliasOutput, context: context)
        type = Types::CreateTemplateAliasOutput.new
        type.template_alias = TemplateAlias.build(params[:template_alias], context: "#{context}[:template_alias]") unless params[:template_alias].nil?
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module CreateTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTemplateInput, context: context)
        type = Types::CreateTemplateInput.new
        type.aws_account_id = params[:aws_account_id]
        type.template_id = params[:template_id]
        type.name = params[:name]
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.source_entity = TemplateSourceEntity.build(params[:source_entity], context: "#{context}[:source_entity]") unless params[:source_entity].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.version_description = params[:version_description]
        type
      end
    end

    module CreateTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTemplateOutput, context: context)
        type = Types::CreateTemplateOutput.new
        type.arn = params[:arn]
        type.version_arn = params[:version_arn]
        type.template_id = params[:template_id]
        type.creation_status = params[:creation_status]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module CreateThemeAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThemeAliasInput, context: context)
        type = Types::CreateThemeAliasInput.new
        type.aws_account_id = params[:aws_account_id]
        type.theme_id = params[:theme_id]
        type.alias_name = params[:alias_name]
        type.theme_version_number = params[:theme_version_number]
        type
      end
    end

    module CreateThemeAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThemeAliasOutput, context: context)
        type = Types::CreateThemeAliasOutput.new
        type.theme_alias = ThemeAlias.build(params[:theme_alias], context: "#{context}[:theme_alias]") unless params[:theme_alias].nil?
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module CreateThemeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThemeInput, context: context)
        type = Types::CreateThemeInput.new
        type.aws_account_id = params[:aws_account_id]
        type.theme_id = params[:theme_id]
        type.name = params[:name]
        type.base_theme_id = params[:base_theme_id]
        type.version_description = params[:version_description]
        type.configuration = ThemeConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateThemeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThemeOutput, context: context)
        type = Types::CreateThemeOutput.new
        type.arn = params[:arn]
        type.version_arn = params[:version_arn]
        type.theme_id = params[:theme_id]
        type.creation_status = params[:creation_status]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module CredentialPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CredentialPair, context: context)
        type = Types::CredentialPair.new
        type.username = params[:username]
        type.password = params[:password]
        type.alternate_data_source_parameters = DataSourceParametersList.build(params[:alternate_data_source_parameters], context: "#{context}[:alternate_data_source_parameters]") unless params[:alternate_data_source_parameters].nil?
        type
      end
    end

    module CustomSql
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomSql, context: context)
        type = Types::CustomSql.new
        type.data_source_arn = params[:data_source_arn]
        type.name = params[:name]
        type.sql_query = params[:sql_query]
        type.columns = InputColumnList.build(params[:columns], context: "#{context}[:columns]") unless params[:columns].nil?
        type
      end
    end

    module Dashboard
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Dashboard, context: context)
        type = Types::Dashboard.new
        type.dashboard_id = params[:dashboard_id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.version = DashboardVersion.build(params[:version], context: "#{context}[:version]") unless params[:version].nil?
        type.created_time = params[:created_time]
        type.last_published_time = params[:last_published_time]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module DashboardError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashboardError, context: context)
        type = Types::DashboardError.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module DashboardErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DashboardError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DashboardPublishOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashboardPublishOptions, context: context)
        type = Types::DashboardPublishOptions.new
        type.ad_hoc_filtering_option = AdHocFilteringOption.build(params[:ad_hoc_filtering_option], context: "#{context}[:ad_hoc_filtering_option]") unless params[:ad_hoc_filtering_option].nil?
        type.export_to_csv_option = ExportToCSVOption.build(params[:export_to_csv_option], context: "#{context}[:export_to_csv_option]") unless params[:export_to_csv_option].nil?
        type.sheet_controls_option = SheetControlsOption.build(params[:sheet_controls_option], context: "#{context}[:sheet_controls_option]") unless params[:sheet_controls_option].nil?
        type
      end
    end

    module DashboardSearchFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashboardSearchFilter, context: context)
        type = Types::DashboardSearchFilter.new
        type.operator = params[:operator]
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module DashboardSearchFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DashboardSearchFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DashboardSourceEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashboardSourceEntity, context: context)
        type = Types::DashboardSourceEntity.new
        type.source_template = DashboardSourceTemplate.build(params[:source_template], context: "#{context}[:source_template]") unless params[:source_template].nil?
        type
      end
    end

    module DashboardSourceTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashboardSourceTemplate, context: context)
        type = Types::DashboardSourceTemplate.new
        type.data_set_references = DataSetReferenceList.build(params[:data_set_references], context: "#{context}[:data_set_references]") unless params[:data_set_references].nil?
        type.arn = params[:arn]
        type
      end
    end

    module DashboardSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashboardSummary, context: context)
        type = Types::DashboardSummary.new
        type.arn = params[:arn]
        type.dashboard_id = params[:dashboard_id]
        type.name = params[:name]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.published_version_number = params[:published_version_number]
        type.last_published_time = params[:last_published_time]
        type
      end
    end

    module DashboardSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DashboardSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DashboardVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashboardVersion, context: context)
        type = Types::DashboardVersion.new
        type.created_time = params[:created_time]
        type.errors = DashboardErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type.version_number = params[:version_number]
        type.status = params[:status]
        type.arn = params[:arn]
        type.source_entity_arn = params[:source_entity_arn]
        type.data_set_arns = DataSetArnsList.build(params[:data_set_arns], context: "#{context}[:data_set_arns]") unless params[:data_set_arns].nil?
        type.description = params[:description]
        type.theme_arn = params[:theme_arn]
        type.sheets = SheetList.build(params[:sheets], context: "#{context}[:sheets]") unless params[:sheets].nil?
        type
      end
    end

    module DashboardVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DashboardVersionSummary, context: context)
        type = Types::DashboardVersionSummary.new
        type.arn = params[:arn]
        type.created_time = params[:created_time]
        type.version_number = params[:version_number]
        type.status = params[:status]
        type.source_entity_arn = params[:source_entity_arn]
        type.description = params[:description]
        type
      end
    end

    module DashboardVersionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DashboardVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataColorPalette
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataColorPalette, context: context)
        type = Types::DataColorPalette.new
        type.colors = ColorList.build(params[:colors], context: "#{context}[:colors]") unless params[:colors].nil?
        type.min_max_gradient = ColorList.build(params[:min_max_gradient], context: "#{context}[:min_max_gradient]") unless params[:min_max_gradient].nil?
        type.empty_fill_color = params[:empty_fill_color]
        type
      end
    end

    module DataSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSet, context: context)
        type = Types::DataSet.new
        type.arn = params[:arn]
        type.data_set_id = params[:data_set_id]
        type.name = params[:name]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.physical_table_map = PhysicalTableMap.build(params[:physical_table_map], context: "#{context}[:physical_table_map]") unless params[:physical_table_map].nil?
        type.logical_table_map = LogicalTableMap.build(params[:logical_table_map], context: "#{context}[:logical_table_map]") unless params[:logical_table_map].nil?
        type.output_columns = OutputColumnList.build(params[:output_columns], context: "#{context}[:output_columns]") unless params[:output_columns].nil?
        type.import_mode = params[:import_mode]
        type.consumed_spice_capacity_in_bytes = params[:consumed_spice_capacity_in_bytes]
        type.column_groups = ColumnGroupList.build(params[:column_groups], context: "#{context}[:column_groups]") unless params[:column_groups].nil?
        type.field_folders = FieldFolderMap.build(params[:field_folders], context: "#{context}[:field_folders]") unless params[:field_folders].nil?
        type.row_level_permission_data_set = RowLevelPermissionDataSet.build(params[:row_level_permission_data_set], context: "#{context}[:row_level_permission_data_set]") unless params[:row_level_permission_data_set].nil?
        type.row_level_permission_tag_configuration = RowLevelPermissionTagConfiguration.build(params[:row_level_permission_tag_configuration], context: "#{context}[:row_level_permission_tag_configuration]") unless params[:row_level_permission_tag_configuration].nil?
        type.column_level_permission_rules = ColumnLevelPermissionRuleList.build(params[:column_level_permission_rules], context: "#{context}[:column_level_permission_rules]") unless params[:column_level_permission_rules].nil?
        type.data_set_usage_configuration = DataSetUsageConfiguration.build(params[:data_set_usage_configuration], context: "#{context}[:data_set_usage_configuration]") unless params[:data_set_usage_configuration].nil?
        type
      end
    end

    module DataSetArnsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DataSetConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSetConfiguration, context: context)
        type = Types::DataSetConfiguration.new
        type.placeholder = params[:placeholder]
        type.data_set_schema = DataSetSchema.build(params[:data_set_schema], context: "#{context}[:data_set_schema]") unless params[:data_set_schema].nil?
        type.column_group_schema_list = ColumnGroupSchemaList.build(params[:column_group_schema_list], context: "#{context}[:column_group_schema_list]") unless params[:column_group_schema_list].nil?
        type
      end
    end

    module DataSetConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSetConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataSetReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSetReference, context: context)
        type = Types::DataSetReference.new
        type.data_set_placeholder = params[:data_set_placeholder]
        type.data_set_arn = params[:data_set_arn]
        type
      end
    end

    module DataSetReferenceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSetReference.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataSetSchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSetSchema, context: context)
        type = Types::DataSetSchema.new
        type.column_schema_list = ColumnSchemaList.build(params[:column_schema_list], context: "#{context}[:column_schema_list]") unless params[:column_schema_list].nil?
        type
      end
    end

    module DataSetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSetSummary, context: context)
        type = Types::DataSetSummary.new
        type.arn = params[:arn]
        type.data_set_id = params[:data_set_id]
        type.name = params[:name]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.import_mode = params[:import_mode]
        type.row_level_permission_data_set = RowLevelPermissionDataSet.build(params[:row_level_permission_data_set], context: "#{context}[:row_level_permission_data_set]") unless params[:row_level_permission_data_set].nil?
        type.row_level_permission_tag_configuration_applied = params[:row_level_permission_tag_configuration_applied]
        type.column_level_permission_rules_applied = params[:column_level_permission_rules_applied]
        type
      end
    end

    module DataSetSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataSetUsageConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSetUsageConfiguration, context: context)
        type = Types::DataSetUsageConfiguration.new
        type.disable_use_as_direct_query_source = params[:disable_use_as_direct_query_source]
        type.disable_use_as_imported_source = params[:disable_use_as_imported_source]
        type
      end
    end

    module DataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSource, context: context)
        type = Types::DataSource.new
        type.arn = params[:arn]
        type.data_source_id = params[:data_source_id]
        type.name = params[:name]
        type.type = params[:type]
        type.status = params[:status]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.data_source_parameters = DataSourceParameters.build(params[:data_source_parameters], context: "#{context}[:data_source_parameters]") unless params[:data_source_parameters].nil?
        type.alternate_data_source_parameters = DataSourceParametersList.build(params[:alternate_data_source_parameters], context: "#{context}[:alternate_data_source_parameters]") unless params[:alternate_data_source_parameters].nil?
        type.vpc_connection_properties = VpcConnectionProperties.build(params[:vpc_connection_properties], context: "#{context}[:vpc_connection_properties]") unless params[:vpc_connection_properties].nil?
        type.ssl_properties = SslProperties.build(params[:ssl_properties], context: "#{context}[:ssl_properties]") unless params[:ssl_properties].nil?
        type.error_info = DataSourceErrorInfo.build(params[:error_info], context: "#{context}[:error_info]") unless params[:error_info].nil?
        type
      end
    end

    module DataSourceCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSourceCredentials, context: context)
        type = Types::DataSourceCredentials.new
        type.credential_pair = CredentialPair.build(params[:credential_pair], context: "#{context}[:credential_pair]") unless params[:credential_pair].nil?
        type.copy_source_arn = params[:copy_source_arn]
        type
      end
    end

    module DataSourceErrorInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSourceErrorInfo, context: context)
        type = Types::DataSourceErrorInfo.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module DataSourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataSourceParameters
      def self.build(params, context: '')
        return params if params.is_a?(Types::DataSourceParameters)
        Hearth::Validator.validate!(params, ::Hash, Types::DataSourceParameters, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :amazon_elasticsearch_parameters
          Types::DataSourceParameters::AmazonElasticsearchParameters.new(
            (AmazonElasticsearchParameters.build(params[:amazon_elasticsearch_parameters], context: "#{context}[:amazon_elasticsearch_parameters]") unless params[:amazon_elasticsearch_parameters].nil?)
          )
        when :athena_parameters
          Types::DataSourceParameters::AthenaParameters.new(
            (AthenaParameters.build(params[:athena_parameters], context: "#{context}[:athena_parameters]") unless params[:athena_parameters].nil?)
          )
        when :aurora_parameters
          Types::DataSourceParameters::AuroraParameters.new(
            (AuroraParameters.build(params[:aurora_parameters], context: "#{context}[:aurora_parameters]") unless params[:aurora_parameters].nil?)
          )
        when :aurora_postgre_sql_parameters
          Types::DataSourceParameters::AuroraPostgreSqlParameters.new(
            (AuroraPostgreSqlParameters.build(params[:aurora_postgre_sql_parameters], context: "#{context}[:aurora_postgre_sql_parameters]") unless params[:aurora_postgre_sql_parameters].nil?)
          )
        when :aws_iot_analytics_parameters
          Types::DataSourceParameters::AwsIotAnalyticsParameters.new(
            (AwsIotAnalyticsParameters.build(params[:aws_iot_analytics_parameters], context: "#{context}[:aws_iot_analytics_parameters]") unless params[:aws_iot_analytics_parameters].nil?)
          )
        when :jira_parameters
          Types::DataSourceParameters::JiraParameters.new(
            (JiraParameters.build(params[:jira_parameters], context: "#{context}[:jira_parameters]") unless params[:jira_parameters].nil?)
          )
        when :maria_db_parameters
          Types::DataSourceParameters::MariaDbParameters.new(
            (MariaDbParameters.build(params[:maria_db_parameters], context: "#{context}[:maria_db_parameters]") unless params[:maria_db_parameters].nil?)
          )
        when :my_sql_parameters
          Types::DataSourceParameters::MySqlParameters.new(
            (MySqlParameters.build(params[:my_sql_parameters], context: "#{context}[:my_sql_parameters]") unless params[:my_sql_parameters].nil?)
          )
        when :oracle_parameters
          Types::DataSourceParameters::OracleParameters.new(
            (OracleParameters.build(params[:oracle_parameters], context: "#{context}[:oracle_parameters]") unless params[:oracle_parameters].nil?)
          )
        when :postgre_sql_parameters
          Types::DataSourceParameters::PostgreSqlParameters.new(
            (PostgreSqlParameters.build(params[:postgre_sql_parameters], context: "#{context}[:postgre_sql_parameters]") unless params[:postgre_sql_parameters].nil?)
          )
        when :presto_parameters
          Types::DataSourceParameters::PrestoParameters.new(
            (PrestoParameters.build(params[:presto_parameters], context: "#{context}[:presto_parameters]") unless params[:presto_parameters].nil?)
          )
        when :rds_parameters
          Types::DataSourceParameters::RdsParameters.new(
            (RdsParameters.build(params[:rds_parameters], context: "#{context}[:rds_parameters]") unless params[:rds_parameters].nil?)
          )
        when :redshift_parameters
          Types::DataSourceParameters::RedshiftParameters.new(
            (RedshiftParameters.build(params[:redshift_parameters], context: "#{context}[:redshift_parameters]") unless params[:redshift_parameters].nil?)
          )
        when :s3_parameters
          Types::DataSourceParameters::S3Parameters.new(
            (S3Parameters.build(params[:s3_parameters], context: "#{context}[:s3_parameters]") unless params[:s3_parameters].nil?)
          )
        when :service_now_parameters
          Types::DataSourceParameters::ServiceNowParameters.new(
            (ServiceNowParameters.build(params[:service_now_parameters], context: "#{context}[:service_now_parameters]") unless params[:service_now_parameters].nil?)
          )
        when :snowflake_parameters
          Types::DataSourceParameters::SnowflakeParameters.new(
            (SnowflakeParameters.build(params[:snowflake_parameters], context: "#{context}[:snowflake_parameters]") unless params[:snowflake_parameters].nil?)
          )
        when :spark_parameters
          Types::DataSourceParameters::SparkParameters.new(
            (SparkParameters.build(params[:spark_parameters], context: "#{context}[:spark_parameters]") unless params[:spark_parameters].nil?)
          )
        when :sql_server_parameters
          Types::DataSourceParameters::SqlServerParameters.new(
            (SqlServerParameters.build(params[:sql_server_parameters], context: "#{context}[:sql_server_parameters]") unless params[:sql_server_parameters].nil?)
          )
        when :teradata_parameters
          Types::DataSourceParameters::TeradataParameters.new(
            (TeradataParameters.build(params[:teradata_parameters], context: "#{context}[:teradata_parameters]") unless params[:teradata_parameters].nil?)
          )
        when :twitter_parameters
          Types::DataSourceParameters::TwitterParameters.new(
            (TwitterParameters.build(params[:twitter_parameters], context: "#{context}[:twitter_parameters]") unless params[:twitter_parameters].nil?)
          )
        when :amazon_open_search_parameters
          Types::DataSourceParameters::AmazonOpenSearchParameters.new(
            (AmazonOpenSearchParameters.build(params[:amazon_open_search_parameters], context: "#{context}[:amazon_open_search_parameters]") unless params[:amazon_open_search_parameters].nil?)
          )
        when :exasol_parameters
          Types::DataSourceParameters::ExasolParameters.new(
            (ExasolParameters.build(params[:exasol_parameters], context: "#{context}[:exasol_parameters]") unless params[:exasol_parameters].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :amazon_elasticsearch_parameters, :athena_parameters, :aurora_parameters, :aurora_postgre_sql_parameters, :aws_iot_analytics_parameters, :jira_parameters, :maria_db_parameters, :my_sql_parameters, :oracle_parameters, :postgre_sql_parameters, :presto_parameters, :rds_parameters, :redshift_parameters, :s3_parameters, :service_now_parameters, :snowflake_parameters, :spark_parameters, :sql_server_parameters, :teradata_parameters, :twitter_parameters, :amazon_open_search_parameters, :exasol_parameters set"
        end
      end
    end

    module DataSourceParametersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSourceParameters.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DateTimeParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DateTimeParameter, context: context)
        type = Types::DateTimeParameter.new
        type.name = params[:name]
        type.values = TimestampList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module DateTimeParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DateTimeParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DecimalParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecimalParameter, context: context)
        type = Types::DecimalParameter.new
        type.name = params[:name]
        type.values = DoubleList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module DecimalParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DecimalParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteAccountCustomizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccountCustomizationInput, context: context)
        type = Types::DeleteAccountCustomizationInput.new
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type
      end
    end

    module DeleteAccountCustomizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccountCustomizationOutput, context: context)
        type = Types::DeleteAccountCustomizationOutput.new
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DeleteAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAnalysisInput, context: context)
        type = Types::DeleteAnalysisInput.new
        type.aws_account_id = params[:aws_account_id]
        type.analysis_id = params[:analysis_id]
        type.recovery_window_in_days = params[:recovery_window_in_days]
        type.force_delete_without_recovery = params[:force_delete_without_recovery]
        type
      end
    end

    module DeleteAnalysisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAnalysisOutput, context: context)
        type = Types::DeleteAnalysisOutput.new
        type.status = params[:status]
        type.arn = params[:arn]
        type.analysis_id = params[:analysis_id]
        type.deletion_time = params[:deletion_time]
        type.request_id = params[:request_id]
        type
      end
    end

    module DeleteDashboardInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDashboardInput, context: context)
        type = Types::DeleteDashboardInput.new
        type.aws_account_id = params[:aws_account_id]
        type.dashboard_id = params[:dashboard_id]
        type.version_number = params[:version_number]
        type
      end
    end

    module DeleteDashboardOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDashboardOutput, context: context)
        type = Types::DeleteDashboardOutput.new
        type.status = params[:status]
        type.arn = params[:arn]
        type.dashboard_id = params[:dashboard_id]
        type.request_id = params[:request_id]
        type
      end
    end

    module DeleteDataSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataSetInput, context: context)
        type = Types::DeleteDataSetInput.new
        type.aws_account_id = params[:aws_account_id]
        type.data_set_id = params[:data_set_id]
        type
      end
    end

    module DeleteDataSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataSetOutput, context: context)
        type = Types::DeleteDataSetOutput.new
        type.arn = params[:arn]
        type.data_set_id = params[:data_set_id]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DeleteDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataSourceInput, context: context)
        type = Types::DeleteDataSourceInput.new
        type.aws_account_id = params[:aws_account_id]
        type.data_source_id = params[:data_source_id]
        type
      end
    end

    module DeleteDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataSourceOutput, context: context)
        type = Types::DeleteDataSourceOutput.new
        type.arn = params[:arn]
        type.data_source_id = params[:data_source_id]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DeleteFolderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFolderInput, context: context)
        type = Types::DeleteFolderInput.new
        type.aws_account_id = params[:aws_account_id]
        type.folder_id = params[:folder_id]
        type
      end
    end

    module DeleteFolderMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFolderMembershipInput, context: context)
        type = Types::DeleteFolderMembershipInput.new
        type.aws_account_id = params[:aws_account_id]
        type.folder_id = params[:folder_id]
        type.member_id = params[:member_id]
        type.member_type = params[:member_type]
        type
      end
    end

    module DeleteFolderMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFolderMembershipOutput, context: context)
        type = Types::DeleteFolderMembershipOutput.new
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module DeleteFolderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFolderOutput, context: context)
        type = Types::DeleteFolderOutput.new
        type.status = params[:status]
        type.arn = params[:arn]
        type.folder_id = params[:folder_id]
        type.request_id = params[:request_id]
        type
      end
    end

    module DeleteGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupInput, context: context)
        type = Types::DeleteGroupInput.new
        type.group_name = params[:group_name]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type
      end
    end

    module DeleteGroupMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupMembershipInput, context: context)
        type = Types::DeleteGroupMembershipInput.new
        type.member_name = params[:member_name]
        type.group_name = params[:group_name]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type
      end
    end

    module DeleteGroupMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupMembershipOutput, context: context)
        type = Types::DeleteGroupMembershipOutput.new
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DeleteGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGroupOutput, context: context)
        type = Types::DeleteGroupOutput.new
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DeleteIAMPolicyAssignmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIAMPolicyAssignmentInput, context: context)
        type = Types::DeleteIAMPolicyAssignmentInput.new
        type.aws_account_id = params[:aws_account_id]
        type.assignment_name = params[:assignment_name]
        type.namespace = params[:namespace]
        type
      end
    end

    module DeleteIAMPolicyAssignmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIAMPolicyAssignmentOutput, context: context)
        type = Types::DeleteIAMPolicyAssignmentOutput.new
        type.assignment_name = params[:assignment_name]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DeleteNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNamespaceInput, context: context)
        type = Types::DeleteNamespaceInput.new
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type
      end
    end

    module DeleteNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNamespaceOutput, context: context)
        type = Types::DeleteNamespaceOutput.new
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DeleteTemplateAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTemplateAliasInput, context: context)
        type = Types::DeleteTemplateAliasInput.new
        type.aws_account_id = params[:aws_account_id]
        type.template_id = params[:template_id]
        type.alias_name = params[:alias_name]
        type
      end
    end

    module DeleteTemplateAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTemplateAliasOutput, context: context)
        type = Types::DeleteTemplateAliasOutput.new
        type.status = params[:status]
        type.template_id = params[:template_id]
        type.alias_name = params[:alias_name]
        type.arn = params[:arn]
        type.request_id = params[:request_id]
        type
      end
    end

    module DeleteTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTemplateInput, context: context)
        type = Types::DeleteTemplateInput.new
        type.aws_account_id = params[:aws_account_id]
        type.template_id = params[:template_id]
        type.version_number = params[:version_number]
        type
      end
    end

    module DeleteTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTemplateOutput, context: context)
        type = Types::DeleteTemplateOutput.new
        type.request_id = params[:request_id]
        type.arn = params[:arn]
        type.template_id = params[:template_id]
        type.status = params[:status]
        type
      end
    end

    module DeleteThemeAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThemeAliasInput, context: context)
        type = Types::DeleteThemeAliasInput.new
        type.aws_account_id = params[:aws_account_id]
        type.theme_id = params[:theme_id]
        type.alias_name = params[:alias_name]
        type
      end
    end

    module DeleteThemeAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThemeAliasOutput, context: context)
        type = Types::DeleteThemeAliasOutput.new
        type.alias_name = params[:alias_name]
        type.arn = params[:arn]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type.theme_id = params[:theme_id]
        type
      end
    end

    module DeleteThemeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThemeInput, context: context)
        type = Types::DeleteThemeInput.new
        type.aws_account_id = params[:aws_account_id]
        type.theme_id = params[:theme_id]
        type.version_number = params[:version_number]
        type
      end
    end

    module DeleteThemeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThemeOutput, context: context)
        type = Types::DeleteThemeOutput.new
        type.arn = params[:arn]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type.theme_id = params[:theme_id]
        type
      end
    end

    module DeleteUserByPrincipalIdInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserByPrincipalIdInput, context: context)
        type = Types::DeleteUserByPrincipalIdInput.new
        type.principal_id = params[:principal_id]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type
      end
    end

    module DeleteUserByPrincipalIdOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserByPrincipalIdOutput, context: context)
        type = Types::DeleteUserByPrincipalIdOutput.new
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DeleteUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserInput, context: context)
        type = Types::DeleteUserInput.new
        type.user_name = params[:user_name]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type
      end
    end

    module DeleteUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserOutput, context: context)
        type = Types::DeleteUserOutput.new
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeAccountCustomizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountCustomizationInput, context: context)
        type = Types::DescribeAccountCustomizationInput.new
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type.resolved = params[:resolved]
        type
      end
    end

    module DescribeAccountCustomizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountCustomizationOutput, context: context)
        type = Types::DescribeAccountCustomizationOutput.new
        type.arn = params[:arn]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type.account_customization = AccountCustomization.build(params[:account_customization], context: "#{context}[:account_customization]") unless params[:account_customization].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeAccountSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountSettingsInput, context: context)
        type = Types::DescribeAccountSettingsInput.new
        type.aws_account_id = params[:aws_account_id]
        type
      end
    end

    module DescribeAccountSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAccountSettingsOutput, context: context)
        type = Types::DescribeAccountSettingsOutput.new
        type.account_settings = AccountSettings.build(params[:account_settings], context: "#{context}[:account_settings]") unless params[:account_settings].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAnalysisInput, context: context)
        type = Types::DescribeAnalysisInput.new
        type.aws_account_id = params[:aws_account_id]
        type.analysis_id = params[:analysis_id]
        type
      end
    end

    module DescribeAnalysisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAnalysisOutput, context: context)
        type = Types::DescribeAnalysisOutput.new
        type.analysis = Analysis.build(params[:analysis], context: "#{context}[:analysis]") unless params[:analysis].nil?
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module DescribeAnalysisPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAnalysisPermissionsInput, context: context)
        type = Types::DescribeAnalysisPermissionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.analysis_id = params[:analysis_id]
        type
      end
    end

    module DescribeAnalysisPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAnalysisPermissionsOutput, context: context)
        type = Types::DescribeAnalysisPermissionsOutput.new
        type.analysis_id = params[:analysis_id]
        type.analysis_arn = params[:analysis_arn]
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module DescribeDashboardInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDashboardInput, context: context)
        type = Types::DescribeDashboardInput.new
        type.aws_account_id = params[:aws_account_id]
        type.dashboard_id = params[:dashboard_id]
        type.version_number = params[:version_number]
        type.alias_name = params[:alias_name]
        type
      end
    end

    module DescribeDashboardOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDashboardOutput, context: context)
        type = Types::DescribeDashboardOutput.new
        type.dashboard = Dashboard.build(params[:dashboard], context: "#{context}[:dashboard]") unless params[:dashboard].nil?
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module DescribeDashboardPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDashboardPermissionsInput, context: context)
        type = Types::DescribeDashboardPermissionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.dashboard_id = params[:dashboard_id]
        type
      end
    end

    module DescribeDashboardPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDashboardPermissionsOutput, context: context)
        type = Types::DescribeDashboardPermissionsOutput.new
        type.dashboard_id = params[:dashboard_id]
        type.dashboard_arn = params[:dashboard_arn]
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.status = params[:status]
        type.request_id = params[:request_id]
        type.link_sharing_configuration = LinkSharingConfiguration.build(params[:link_sharing_configuration], context: "#{context}[:link_sharing_configuration]") unless params[:link_sharing_configuration].nil?
        type
      end
    end

    module DescribeDataSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSetInput, context: context)
        type = Types::DescribeDataSetInput.new
        type.aws_account_id = params[:aws_account_id]
        type.data_set_id = params[:data_set_id]
        type
      end
    end

    module DescribeDataSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSetOutput, context: context)
        type = Types::DescribeDataSetOutput.new
        type.data_set = DataSet.build(params[:data_set], context: "#{context}[:data_set]") unless params[:data_set].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeDataSetPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSetPermissionsInput, context: context)
        type = Types::DescribeDataSetPermissionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.data_set_id = params[:data_set_id]
        type
      end
    end

    module DescribeDataSetPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSetPermissionsOutput, context: context)
        type = Types::DescribeDataSetPermissionsOutput.new
        type.data_set_arn = params[:data_set_arn]
        type.data_set_id = params[:data_set_id]
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSourceInput, context: context)
        type = Types::DescribeDataSourceInput.new
        type.aws_account_id = params[:aws_account_id]
        type.data_source_id = params[:data_source_id]
        type
      end
    end

    module DescribeDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSourceOutput, context: context)
        type = Types::DescribeDataSourceOutput.new
        type.data_source = DataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeDataSourcePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSourcePermissionsInput, context: context)
        type = Types::DescribeDataSourcePermissionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.data_source_id = params[:data_source_id]
        type
      end
    end

    module DescribeDataSourcePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSourcePermissionsOutput, context: context)
        type = Types::DescribeDataSourcePermissionsOutput.new
        type.data_source_arn = params[:data_source_arn]
        type.data_source_id = params[:data_source_id]
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeFolderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFolderInput, context: context)
        type = Types::DescribeFolderInput.new
        type.aws_account_id = params[:aws_account_id]
        type.folder_id = params[:folder_id]
        type
      end
    end

    module DescribeFolderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFolderOutput, context: context)
        type = Types::DescribeFolderOutput.new
        type.status = params[:status]
        type.folder = Folder.build(params[:folder], context: "#{context}[:folder]") unless params[:folder].nil?
        type.request_id = params[:request_id]
        type
      end
    end

    module DescribeFolderPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFolderPermissionsInput, context: context)
        type = Types::DescribeFolderPermissionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.folder_id = params[:folder_id]
        type
      end
    end

    module DescribeFolderPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFolderPermissionsOutput, context: context)
        type = Types::DescribeFolderPermissionsOutput.new
        type.status = params[:status]
        type.folder_id = params[:folder_id]
        type.arn = params[:arn]
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.request_id = params[:request_id]
        type
      end
    end

    module DescribeFolderResolvedPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFolderResolvedPermissionsInput, context: context)
        type = Types::DescribeFolderResolvedPermissionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.folder_id = params[:folder_id]
        type
      end
    end

    module DescribeFolderResolvedPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFolderResolvedPermissionsOutput, context: context)
        type = Types::DescribeFolderResolvedPermissionsOutput.new
        type.status = params[:status]
        type.folder_id = params[:folder_id]
        type.arn = params[:arn]
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.request_id = params[:request_id]
        type
      end
    end

    module DescribeGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGroupInput, context: context)
        type = Types::DescribeGroupInput.new
        type.group_name = params[:group_name]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type
      end
    end

    module DescribeGroupMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGroupMembershipInput, context: context)
        type = Types::DescribeGroupMembershipInput.new
        type.member_name = params[:member_name]
        type.group_name = params[:group_name]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type
      end
    end

    module DescribeGroupMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGroupMembershipOutput, context: context)
        type = Types::DescribeGroupMembershipOutput.new
        type.group_member = GroupMember.build(params[:group_member], context: "#{context}[:group_member]") unless params[:group_member].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGroupOutput, context: context)
        type = Types::DescribeGroupOutput.new
        type.group = Group.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeIAMPolicyAssignmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIAMPolicyAssignmentInput, context: context)
        type = Types::DescribeIAMPolicyAssignmentInput.new
        type.aws_account_id = params[:aws_account_id]
        type.assignment_name = params[:assignment_name]
        type.namespace = params[:namespace]
        type
      end
    end

    module DescribeIAMPolicyAssignmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIAMPolicyAssignmentOutput, context: context)
        type = Types::DescribeIAMPolicyAssignmentOutput.new
        type.iam_policy_assignment = IAMPolicyAssignment.build(params[:iam_policy_assignment], context: "#{context}[:iam_policy_assignment]") unless params[:iam_policy_assignment].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeIngestionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIngestionInput, context: context)
        type = Types::DescribeIngestionInput.new
        type.aws_account_id = params[:aws_account_id]
        type.data_set_id = params[:data_set_id]
        type.ingestion_id = params[:ingestion_id]
        type
      end
    end

    module DescribeIngestionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIngestionOutput, context: context)
        type = Types::DescribeIngestionOutput.new
        type.ingestion = Ingestion.build(params[:ingestion], context: "#{context}[:ingestion]") unless params[:ingestion].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeIpRestrictionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIpRestrictionInput, context: context)
        type = Types::DescribeIpRestrictionInput.new
        type.aws_account_id = params[:aws_account_id]
        type
      end
    end

    module DescribeIpRestrictionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIpRestrictionOutput, context: context)
        type = Types::DescribeIpRestrictionOutput.new
        type.aws_account_id = params[:aws_account_id]
        type.ip_restriction_rule_map = IpRestrictionRuleMap.build(params[:ip_restriction_rule_map], context: "#{context}[:ip_restriction_rule_map]") unless params[:ip_restriction_rule_map].nil?
        type.enabled = params[:enabled]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNamespaceInput, context: context)
        type = Types::DescribeNamespaceInput.new
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type
      end
    end

    module DescribeNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNamespaceOutput, context: context)
        type = Types::DescribeNamespaceOutput.new
        type.namespace = NamespaceInfoV2.build(params[:namespace], context: "#{context}[:namespace]") unless params[:namespace].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeTemplateAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTemplateAliasInput, context: context)
        type = Types::DescribeTemplateAliasInput.new
        type.aws_account_id = params[:aws_account_id]
        type.template_id = params[:template_id]
        type.alias_name = params[:alias_name]
        type
      end
    end

    module DescribeTemplateAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTemplateAliasOutput, context: context)
        type = Types::DescribeTemplateAliasOutput.new
        type.template_alias = TemplateAlias.build(params[:template_alias], context: "#{context}[:template_alias]") unless params[:template_alias].nil?
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module DescribeTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTemplateInput, context: context)
        type = Types::DescribeTemplateInput.new
        type.aws_account_id = params[:aws_account_id]
        type.template_id = params[:template_id]
        type.version_number = params[:version_number]
        type.alias_name = params[:alias_name]
        type
      end
    end

    module DescribeTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTemplateOutput, context: context)
        type = Types::DescribeTemplateOutput.new
        type.template = Template.build(params[:template], context: "#{context}[:template]") unless params[:template].nil?
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module DescribeTemplatePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTemplatePermissionsInput, context: context)
        type = Types::DescribeTemplatePermissionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.template_id = params[:template_id]
        type
      end
    end

    module DescribeTemplatePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTemplatePermissionsOutput, context: context)
        type = Types::DescribeTemplatePermissionsOutput.new
        type.template_id = params[:template_id]
        type.template_arn = params[:template_arn]
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeThemeAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThemeAliasInput, context: context)
        type = Types::DescribeThemeAliasInput.new
        type.aws_account_id = params[:aws_account_id]
        type.theme_id = params[:theme_id]
        type.alias_name = params[:alias_name]
        type
      end
    end

    module DescribeThemeAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThemeAliasOutput, context: context)
        type = Types::DescribeThemeAliasOutput.new
        type.theme_alias = ThemeAlias.build(params[:theme_alias], context: "#{context}[:theme_alias]") unless params[:theme_alias].nil?
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module DescribeThemeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThemeInput, context: context)
        type = Types::DescribeThemeInput.new
        type.aws_account_id = params[:aws_account_id]
        type.theme_id = params[:theme_id]
        type.version_number = params[:version_number]
        type.alias_name = params[:alias_name]
        type
      end
    end

    module DescribeThemeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThemeOutput, context: context)
        type = Types::DescribeThemeOutput.new
        type.theme = Theme.build(params[:theme], context: "#{context}[:theme]") unless params[:theme].nil?
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module DescribeThemePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThemePermissionsInput, context: context)
        type = Types::DescribeThemePermissionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.theme_id = params[:theme_id]
        type
      end
    end

    module DescribeThemePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThemePermissionsOutput, context: context)
        type = Types::DescribeThemePermissionsOutput.new
        type.theme_id = params[:theme_id]
        type.theme_arn = params[:theme_arn]
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DescribeUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserInput, context: context)
        type = Types::DescribeUserInput.new
        type.user_name = params[:user_name]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type
      end
    end

    module DescribeUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserOutput, context: context)
        type = Types::DescribeUserOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module DomainNotWhitelistedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainNotWhitelistedException, context: context)
        type = Types::DomainNotWhitelistedException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module DoubleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ErrorInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorInfo, context: context)
        type = Types::ErrorInfo.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module ExasolParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExasolParameters, context: context)
        type = Types::ExasolParameters.new
        type.host = params[:host]
        type.port = params[:port]
        type
      end
    end

    module ExportToCSVOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportToCSVOption, context: context)
        type = Types::ExportToCSVOption.new
        type.availability_status = params[:availability_status]
        type
      end
    end

    module FieldFolder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FieldFolder, context: context)
        type = Types::FieldFolder.new
        type.description = params[:description]
        type.columns = FolderColumnList.build(params[:columns], context: "#{context}[:columns]") unless params[:columns].nil?
        type
      end
    end

    module FieldFolderMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = FieldFolder.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module FilterOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterOperation, context: context)
        type = Types::FilterOperation.new
        type.condition_expression = params[:condition_expression]
        type
      end
    end

    module Folder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Folder, context: context)
        type = Types::Folder.new
        type.folder_id = params[:folder_id]
        type.arn = params[:arn]
        type.name = params[:name]
        type.folder_type = params[:folder_type]
        type.folder_path = Path.build(params[:folder_path], context: "#{context}[:folder_path]") unless params[:folder_path].nil?
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module FolderColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FolderMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FolderMember, context: context)
        type = Types::FolderMember.new
        type.member_id = params[:member_id]
        type.member_type = params[:member_type]
        type
      end
    end

    module FolderMemberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MemberIdArnPair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FolderSearchFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FolderSearchFilter, context: context)
        type = Types::FolderSearchFilter.new
        type.operator = params[:operator]
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module FolderSearchFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FolderSearchFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FolderSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FolderSummary, context: context)
        type = Types::FolderSummary.new
        type.arn = params[:arn]
        type.folder_id = params[:folder_id]
        type.name = params[:name]
        type.folder_type = params[:folder_type]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module FolderSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FolderSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GenerateEmbedUrlForAnonymousUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateEmbedUrlForAnonymousUserInput, context: context)
        type = Types::GenerateEmbedUrlForAnonymousUserInput.new
        type.aws_account_id = params[:aws_account_id]
        type.session_lifetime_in_minutes = params[:session_lifetime_in_minutes]
        type.namespace = params[:namespace]
        type.session_tags = SessionTagList.build(params[:session_tags], context: "#{context}[:session_tags]") unless params[:session_tags].nil?
        type.authorized_resource_arns = ArnList.build(params[:authorized_resource_arns], context: "#{context}[:authorized_resource_arns]") unless params[:authorized_resource_arns].nil?
        type.experience_configuration = AnonymousUserEmbeddingExperienceConfiguration.build(params[:experience_configuration], context: "#{context}[:experience_configuration]") unless params[:experience_configuration].nil?
        type
      end
    end

    module GenerateEmbedUrlForAnonymousUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateEmbedUrlForAnonymousUserOutput, context: context)
        type = Types::GenerateEmbedUrlForAnonymousUserOutput.new
        type.embed_url = params[:embed_url]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module GenerateEmbedUrlForRegisteredUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateEmbedUrlForRegisteredUserInput, context: context)
        type = Types::GenerateEmbedUrlForRegisteredUserInput.new
        type.aws_account_id = params[:aws_account_id]
        type.session_lifetime_in_minutes = params[:session_lifetime_in_minutes]
        type.user_arn = params[:user_arn]
        type.experience_configuration = RegisteredUserEmbeddingExperienceConfiguration.build(params[:experience_configuration], context: "#{context}[:experience_configuration]") unless params[:experience_configuration].nil?
        type
      end
    end

    module GenerateEmbedUrlForRegisteredUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateEmbedUrlForRegisteredUserOutput, context: context)
        type = Types::GenerateEmbedUrlForRegisteredUserOutput.new
        type.embed_url = params[:embed_url]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module GeoSpatialColumnGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeoSpatialColumnGroup, context: context)
        type = Types::GeoSpatialColumnGroup.new
        type.name = params[:name]
        type.country_code = params[:country_code]
        type.columns = ColumnList.build(params[:columns], context: "#{context}[:columns]") unless params[:columns].nil?
        type
      end
    end

    module GetDashboardEmbedUrlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDashboardEmbedUrlInput, context: context)
        type = Types::GetDashboardEmbedUrlInput.new
        type.aws_account_id = params[:aws_account_id]
        type.dashboard_id = params[:dashboard_id]
        type.identity_type = params[:identity_type]
        type.session_lifetime_in_minutes = params[:session_lifetime_in_minutes]
        type.undo_redo_disabled = params[:undo_redo_disabled]
        type.reset_disabled = params[:reset_disabled]
        type.state_persistence_enabled = params[:state_persistence_enabled]
        type.user_arn = params[:user_arn]
        type.namespace = params[:namespace]
        type.additional_dashboard_ids = AdditionalDashboardIdList.build(params[:additional_dashboard_ids], context: "#{context}[:additional_dashboard_ids]") unless params[:additional_dashboard_ids].nil?
        type
      end
    end

    module GetDashboardEmbedUrlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDashboardEmbedUrlOutput, context: context)
        type = Types::GetDashboardEmbedUrlOutput.new
        type.embed_url = params[:embed_url]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module GetSessionEmbedUrlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSessionEmbedUrlInput, context: context)
        type = Types::GetSessionEmbedUrlInput.new
        type.aws_account_id = params[:aws_account_id]
        type.entry_point = params[:entry_point]
        type.session_lifetime_in_minutes = params[:session_lifetime_in_minutes]
        type.user_arn = params[:user_arn]
        type
      end
    end

    module GetSessionEmbedUrlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSessionEmbedUrlOutput, context: context)
        type = Types::GetSessionEmbedUrlOutput.new
        type.embed_url = params[:embed_url]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module Group
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Group, context: context)
        type = Types::Group.new
        type.arn = params[:arn]
        type.group_name = params[:group_name]
        type.description = params[:description]
        type.principal_id = params[:principal_id]
        type
      end
    end

    module GroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Group.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GroupMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupMember, context: context)
        type = Types::GroupMember.new
        type.arn = params[:arn]
        type.member_name = params[:member_name]
        type
      end
    end

    module GroupMemberList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GroupSearchFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupSearchFilter, context: context)
        type = Types::GroupSearchFilter.new
        type.operator = params[:operator]
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module GroupSearchFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupSearchFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GutterStyle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GutterStyle, context: context)
        type = Types::GutterStyle.new
        type.show = params[:show]
        type
      end
    end

    module IAMPolicyAssignment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IAMPolicyAssignment, context: context)
        type = Types::IAMPolicyAssignment.new
        type.aws_account_id = params[:aws_account_id]
        type.assignment_id = params[:assignment_id]
        type.assignment_name = params[:assignment_name]
        type.policy_arn = params[:policy_arn]
        type.identities = IdentityMap.build(params[:identities], context: "#{context}[:identities]") unless params[:identities].nil?
        type.assignment_status = params[:assignment_status]
        type
      end
    end

    module IAMPolicyAssignmentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IAMPolicyAssignmentSummary, context: context)
        type = Types::IAMPolicyAssignmentSummary.new
        type.assignment_name = params[:assignment_name]
        type.assignment_status = params[:assignment_status]
        type
      end
    end

    module IAMPolicyAssignmentSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IAMPolicyAssignmentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IdentityMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = IdentityNameList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module IdentityNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IdentityTypeNotSupportedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityTypeNotSupportedException, context: context)
        type = Types::IdentityTypeNotSupportedException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module Ingestion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ingestion, context: context)
        type = Types::Ingestion.new
        type.arn = params[:arn]
        type.ingestion_id = params[:ingestion_id]
        type.ingestion_status = params[:ingestion_status]
        type.error_info = ErrorInfo.build(params[:error_info], context: "#{context}[:error_info]") unless params[:error_info].nil?
        type.row_info = RowInfo.build(params[:row_info], context: "#{context}[:row_info]") unless params[:row_info].nil?
        type.queue_info = QueueInfo.build(params[:queue_info], context: "#{context}[:queue_info]") unless params[:queue_info].nil?
        type.created_time = params[:created_time]
        type.ingestion_time_in_seconds = params[:ingestion_time_in_seconds]
        type.ingestion_size_in_bytes = params[:ingestion_size_in_bytes]
        type.request_source = params[:request_source]
        type.request_type = params[:request_type]
        type
      end
    end

    module Ingestions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Ingestion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InputColumn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputColumn, context: context)
        type = Types::InputColumn.new
        type.name = params[:name]
        type.type = params[:type]
        type
      end
    end

    module InputColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InputColumn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IntegerParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntegerParameter, context: context)
        type = Types::IntegerParameter.new
        type.name = params[:name]
        type.values = LongList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module IntegerParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IntegerParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module InvalidParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module IpRestrictionRuleMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module JiraParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JiraParameters, context: context)
        type = Types::JiraParameters.new
        type.site_base_url = params[:site_base_url]
        type
      end
    end

    module JoinInstruction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JoinInstruction, context: context)
        type = Types::JoinInstruction.new
        type.left_operand = params[:left_operand]
        type.right_operand = params[:right_operand]
        type.left_join_key_properties = JoinKeyProperties.build(params[:left_join_key_properties], context: "#{context}[:left_join_key_properties]") unless params[:left_join_key_properties].nil?
        type.right_join_key_properties = JoinKeyProperties.build(params[:right_join_key_properties], context: "#{context}[:right_join_key_properties]") unless params[:right_join_key_properties].nil?
        type.type = params[:type]
        type.on_clause = params[:on_clause]
        type
      end
    end

    module JoinKeyProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JoinKeyProperties, context: context)
        type = Types::JoinKeyProperties.new
        type.unique_key = params[:unique_key]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type.request_id = params[:request_id]
        type
      end
    end

    module LinkSharingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LinkSharingConfiguration, context: context)
        type = Types::LinkSharingConfiguration.new
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type
      end
    end

    module ListAnalysesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnalysesInput, context: context)
        type = Types::ListAnalysesInput.new
        type.aws_account_id = params[:aws_account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAnalysesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnalysesOutput, context: context)
        type = Types::ListAnalysesOutput.new
        type.analysis_summary_list = AnalysisSummaryList.build(params[:analysis_summary_list], context: "#{context}[:analysis_summary_list]") unless params[:analysis_summary_list].nil?
        type.next_token = params[:next_token]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module ListDashboardVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDashboardVersionsInput, context: context)
        type = Types::ListDashboardVersionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.dashboard_id = params[:dashboard_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDashboardVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDashboardVersionsOutput, context: context)
        type = Types::ListDashboardVersionsOutput.new
        type.dashboard_version_summary_list = DashboardVersionSummaryList.build(params[:dashboard_version_summary_list], context: "#{context}[:dashboard_version_summary_list]") unless params[:dashboard_version_summary_list].nil?
        type.next_token = params[:next_token]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module ListDashboardsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDashboardsInput, context: context)
        type = Types::ListDashboardsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDashboardsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDashboardsOutput, context: context)
        type = Types::ListDashboardsOutput.new
        type.dashboard_summary_list = DashboardSummaryList.build(params[:dashboard_summary_list], context: "#{context}[:dashboard_summary_list]") unless params[:dashboard_summary_list].nil?
        type.next_token = params[:next_token]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module ListDataSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSetsInput, context: context)
        type = Types::ListDataSetsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDataSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSetsOutput, context: context)
        type = Types::ListDataSetsOutput.new
        type.data_set_summaries = DataSetSummaryList.build(params[:data_set_summaries], context: "#{context}[:data_set_summaries]") unless params[:data_set_summaries].nil?
        type.next_token = params[:next_token]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module ListDataSourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSourcesInput, context: context)
        type = Types::ListDataSourcesInput.new
        type.aws_account_id = params[:aws_account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDataSourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSourcesOutput, context: context)
        type = Types::ListDataSourcesOutput.new
        type.data_sources = DataSourceList.build(params[:data_sources], context: "#{context}[:data_sources]") unless params[:data_sources].nil?
        type.next_token = params[:next_token]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module ListFolderMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFolderMembersInput, context: context)
        type = Types::ListFolderMembersInput.new
        type.aws_account_id = params[:aws_account_id]
        type.folder_id = params[:folder_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFolderMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFolderMembersOutput, context: context)
        type = Types::ListFolderMembersOutput.new
        type.status = params[:status]
        type.folder_member_list = FolderMemberList.build(params[:folder_member_list], context: "#{context}[:folder_member_list]") unless params[:folder_member_list].nil?
        type.next_token = params[:next_token]
        type.request_id = params[:request_id]
        type
      end
    end

    module ListFoldersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFoldersInput, context: context)
        type = Types::ListFoldersInput.new
        type.aws_account_id = params[:aws_account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFoldersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFoldersOutput, context: context)
        type = Types::ListFoldersOutput.new
        type.status = params[:status]
        type.folder_summary_list = FolderSummaryList.build(params[:folder_summary_list], context: "#{context}[:folder_summary_list]") unless params[:folder_summary_list].nil?
        type.next_token = params[:next_token]
        type.request_id = params[:request_id]
        type
      end
    end

    module ListGroupMembershipsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupMembershipsInput, context: context)
        type = Types::ListGroupMembershipsInput.new
        type.group_name = params[:group_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type
      end
    end

    module ListGroupMembershipsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupMembershipsOutput, context: context)
        type = Types::ListGroupMembershipsOutput.new
        type.group_member_list = GroupMemberList.build(params[:group_member_list], context: "#{context}[:group_member_list]") unless params[:group_member_list].nil?
        type.next_token = params[:next_token]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module ListGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsInput, context: context)
        type = Types::ListGroupsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.namespace = params[:namespace]
        type
      end
    end

    module ListGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsOutput, context: context)
        type = Types::ListGroupsOutput.new
        type.group_list = GroupList.build(params[:group_list], context: "#{context}[:group_list]") unless params[:group_list].nil?
        type.next_token = params[:next_token]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module ListIAMPolicyAssignmentsForUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIAMPolicyAssignmentsForUserInput, context: context)
        type = Types::ListIAMPolicyAssignmentsForUserInput.new
        type.aws_account_id = params[:aws_account_id]
        type.user_name = params[:user_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.namespace = params[:namespace]
        type
      end
    end

    module ListIAMPolicyAssignmentsForUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIAMPolicyAssignmentsForUserOutput, context: context)
        type = Types::ListIAMPolicyAssignmentsForUserOutput.new
        type.active_assignments = ActiveIAMPolicyAssignmentList.build(params[:active_assignments], context: "#{context}[:active_assignments]") unless params[:active_assignments].nil?
        type.request_id = params[:request_id]
        type.next_token = params[:next_token]
        type.status = params[:status]
        type
      end
    end

    module ListIAMPolicyAssignmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIAMPolicyAssignmentsInput, context: context)
        type = Types::ListIAMPolicyAssignmentsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.assignment_status = params[:assignment_status]
        type.namespace = params[:namespace]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListIAMPolicyAssignmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIAMPolicyAssignmentsOutput, context: context)
        type = Types::ListIAMPolicyAssignmentsOutput.new
        type.iam_policy_assignments = IAMPolicyAssignmentSummaryList.build(params[:iam_policy_assignments], context: "#{context}[:iam_policy_assignments]") unless params[:iam_policy_assignments].nil?
        type.next_token = params[:next_token]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module ListIngestionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIngestionsInput, context: context)
        type = Types::ListIngestionsInput.new
        type.data_set_id = params[:data_set_id]
        type.next_token = params[:next_token]
        type.aws_account_id = params[:aws_account_id]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListIngestionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIngestionsOutput, context: context)
        type = Types::ListIngestionsOutput.new
        type.ingestions = Ingestions.build(params[:ingestions], context: "#{context}[:ingestions]") unless params[:ingestions].nil?
        type.next_token = params[:next_token]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module ListNamespacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNamespacesInput, context: context)
        type = Types::ListNamespacesInput.new
        type.aws_account_id = params[:aws_account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListNamespacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNamespacesOutput, context: context)
        type = Types::ListNamespacesOutput.new
        type.namespaces = Namespaces.build(params[:namespaces], context: "#{context}[:namespaces]") unless params[:namespaces].nil?
        type.next_token = params[:next_token]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module ListTemplateAliasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTemplateAliasesInput, context: context)
        type = Types::ListTemplateAliasesInput.new
        type.aws_account_id = params[:aws_account_id]
        type.template_id = params[:template_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTemplateAliasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTemplateAliasesOutput, context: context)
        type = Types::ListTemplateAliasesOutput.new
        type.template_alias_list = TemplateAliasList.build(params[:template_alias_list], context: "#{context}[:template_alias_list]") unless params[:template_alias_list].nil?
        type.status = params[:status]
        type.request_id = params[:request_id]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTemplateVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTemplateVersionsInput, context: context)
        type = Types::ListTemplateVersionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.template_id = params[:template_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTemplateVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTemplateVersionsOutput, context: context)
        type = Types::ListTemplateVersionsOutput.new
        type.template_version_summary_list = TemplateVersionSummaryList.build(params[:template_version_summary_list], context: "#{context}[:template_version_summary_list]") unless params[:template_version_summary_list].nil?
        type.next_token = params[:next_token]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module ListTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTemplatesInput, context: context)
        type = Types::ListTemplatesInput.new
        type.aws_account_id = params[:aws_account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTemplatesOutput, context: context)
        type = Types::ListTemplatesOutput.new
        type.template_summary_list = TemplateSummaryList.build(params[:template_summary_list], context: "#{context}[:template_summary_list]") unless params[:template_summary_list].nil?
        type.next_token = params[:next_token]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module ListThemeAliasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThemeAliasesInput, context: context)
        type = Types::ListThemeAliasesInput.new
        type.aws_account_id = params[:aws_account_id]
        type.theme_id = params[:theme_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListThemeAliasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThemeAliasesOutput, context: context)
        type = Types::ListThemeAliasesOutput.new
        type.theme_alias_list = ThemeAliasList.build(params[:theme_alias_list], context: "#{context}[:theme_alias_list]") unless params[:theme_alias_list].nil?
        type.status = params[:status]
        type.request_id = params[:request_id]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListThemeVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThemeVersionsInput, context: context)
        type = Types::ListThemeVersionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.theme_id = params[:theme_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListThemeVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThemeVersionsOutput, context: context)
        type = Types::ListThemeVersionsOutput.new
        type.theme_version_summary_list = ThemeVersionSummaryList.build(params[:theme_version_summary_list], context: "#{context}[:theme_version_summary_list]") unless params[:theme_version_summary_list].nil?
        type.next_token = params[:next_token]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module ListThemesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThemesInput, context: context)
        type = Types::ListThemesInput.new
        type.aws_account_id = params[:aws_account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.type = params[:type]
        type
      end
    end

    module ListThemesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThemesOutput, context: context)
        type = Types::ListThemesOutput.new
        type.theme_summary_list = ThemeSummaryList.build(params[:theme_summary_list], context: "#{context}[:theme_summary_list]") unless params[:theme_summary_list].nil?
        type.next_token = params[:next_token]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module ListUserGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserGroupsInput, context: context)
        type = Types::ListUserGroupsInput.new
        type.user_name = params[:user_name]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListUserGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserGroupsOutput, context: context)
        type = Types::ListUserGroupsOutput.new
        type.group_list = GroupList.build(params[:group_list], context: "#{context}[:group_list]") unless params[:group_list].nil?
        type.next_token = params[:next_token]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module ListUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersInput, context: context)
        type = Types::ListUsersInput.new
        type.aws_account_id = params[:aws_account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.namespace = params[:namespace]
        type
      end
    end

    module ListUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUsersOutput, context: context)
        type = Types::ListUsersOutput.new
        type.user_list = UserList.build(params[:user_list], context: "#{context}[:user_list]") unless params[:user_list].nil?
        type.next_token = params[:next_token]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module LogicalTable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogicalTable, context: context)
        type = Types::LogicalTable.new
        type.alias = params[:alias]
        type.data_transforms = TransformOperationList.build(params[:data_transforms], context: "#{context}[:data_transforms]") unless params[:data_transforms].nil?
        type.source = LogicalTableSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type
      end
    end

    module LogicalTableMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = LogicalTable.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module LogicalTableSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogicalTableSource, context: context)
        type = Types::LogicalTableSource.new
        type.join_instruction = JoinInstruction.build(params[:join_instruction], context: "#{context}[:join_instruction]") unless params[:join_instruction].nil?
        type.physical_table_id = params[:physical_table_id]
        type.data_set_arn = params[:data_set_arn]
        type
      end
    end

    module LongList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ManifestFileLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManifestFileLocation, context: context)
        type = Types::ManifestFileLocation.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type
      end
    end

    module MarginStyle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MarginStyle, context: context)
        type = Types::MarginStyle.new
        type.show = params[:show]
        type
      end
    end

    module MariaDbParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MariaDbParameters, context: context)
        type = Types::MariaDbParameters.new
        type.host = params[:host]
        type.port = params[:port]
        type.database = params[:database]
        type
      end
    end

    module MemberIdArnPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberIdArnPair, context: context)
        type = Types::MemberIdArnPair.new
        type.member_id = params[:member_id]
        type.member_arn = params[:member_arn]
        type
      end
    end

    module MySqlParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MySqlParameters, context: context)
        type = Types::MySqlParameters.new
        type.host = params[:host]
        type.port = params[:port]
        type.database = params[:database]
        type
      end
    end

    module NamespaceError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NamespaceError, context: context)
        type = Types::NamespaceError.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module NamespaceInfoV2
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NamespaceInfoV2, context: context)
        type = Types::NamespaceInfoV2.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.capacity_region = params[:capacity_region]
        type.creation_status = params[:creation_status]
        type.identity_store = params[:identity_store]
        type.namespace_error = NamespaceError.build(params[:namespace_error], context: "#{context}[:namespace_error]") unless params[:namespace_error].nil?
        type
      end
    end

    module Namespaces
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NamespaceInfoV2.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OracleParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OracleParameters, context: context)
        type = Types::OracleParameters.new
        type.host = params[:host]
        type.port = params[:port]
        type.database = params[:database]
        type
      end
    end

    module OutputColumn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputColumn, context: context)
        type = Types::OutputColumn.new
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type
      end
    end

    module OutputColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutputColumn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Parameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Parameters, context: context)
        type = Types::Parameters.new
        type.string_parameters = StringParameterList.build(params[:string_parameters], context: "#{context}[:string_parameters]") unless params[:string_parameters].nil?
        type.integer_parameters = IntegerParameterList.build(params[:integer_parameters], context: "#{context}[:integer_parameters]") unless params[:integer_parameters].nil?
        type.decimal_parameters = DecimalParameterList.build(params[:decimal_parameters], context: "#{context}[:decimal_parameters]") unless params[:decimal_parameters].nil?
        type.date_time_parameters = DateTimeParameterList.build(params[:date_time_parameters], context: "#{context}[:date_time_parameters]") unless params[:date_time_parameters].nil?
        type
      end
    end

    module Path
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PhysicalTable
      def self.build(params, context: '')
        return params if params.is_a?(Types::PhysicalTable)
        Hearth::Validator.validate!(params, ::Hash, Types::PhysicalTable, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :relational_table
          Types::PhysicalTable::RelationalTable.new(
            (RelationalTable.build(params[:relational_table], context: "#{context}[:relational_table]") unless params[:relational_table].nil?)
          )
        when :custom_sql
          Types::PhysicalTable::CustomSql.new(
            (CustomSql.build(params[:custom_sql], context: "#{context}[:custom_sql]") unless params[:custom_sql].nil?)
          )
        when :s3_source
          Types::PhysicalTable::S3Source.new(
            (S3Source.build(params[:s3_source], context: "#{context}[:s3_source]") unless params[:s3_source].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :relational_table, :custom_sql, :s3_source set"
        end
      end
    end

    module PhysicalTableMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = PhysicalTable.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module PostgreSqlParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostgreSqlParameters, context: context)
        type = Types::PostgreSqlParameters.new
        type.host = params[:host]
        type.port = params[:port]
        type.database = params[:database]
        type
      end
    end

    module PreconditionNotMetException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PreconditionNotMetException, context: context)
        type = Types::PreconditionNotMetException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module PrestoParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrestoParameters, context: context)
        type = Types::PrestoParameters.new
        type.host = params[:host]
        type.port = params[:port]
        type.catalog = params[:catalog]
        type
      end
    end

    module PrincipalList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProjectOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectOperation, context: context)
        type = Types::ProjectOperation.new
        type.projected_columns = ProjectedColumnList.build(params[:projected_columns], context: "#{context}[:projected_columns]") unless params[:projected_columns].nil?
        type
      end
    end

    module ProjectedColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module QueueInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueueInfo, context: context)
        type = Types::QueueInfo.new
        type.waiting_on_ingestion = params[:waiting_on_ingestion]
        type.queued_ingestion = params[:queued_ingestion]
        type
      end
    end

    module QuickSightUserNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QuickSightUserNotFoundException, context: context)
        type = Types::QuickSightUserNotFoundException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module RdsParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RdsParameters, context: context)
        type = Types::RdsParameters.new
        type.instance_id = params[:instance_id]
        type.database = params[:database]
        type
      end
    end

    module RedshiftParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftParameters, context: context)
        type = Types::RedshiftParameters.new
        type.host = params[:host]
        type.port = params[:port]
        type.database = params[:database]
        type.cluster_id = params[:cluster_id]
        type
      end
    end

    module RegisterUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterUserInput, context: context)
        type = Types::RegisterUserInput.new
        type.identity_type = params[:identity_type]
        type.email = params[:email]
        type.user_role = params[:user_role]
        type.iam_arn = params[:iam_arn]
        type.session_name = params[:session_name]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type.user_name = params[:user_name]
        type.custom_permissions_name = params[:custom_permissions_name]
        type.external_login_federation_provider_type = params[:external_login_federation_provider_type]
        type.custom_federation_provider_url = params[:custom_federation_provider_url]
        type.external_login_id = params[:external_login_id]
        type
      end
    end

    module RegisterUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterUserOutput, context: context)
        type = Types::RegisterUserOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type.user_invitation_url = params[:user_invitation_url]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module RegisteredUserDashboardEmbeddingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisteredUserDashboardEmbeddingConfiguration, context: context)
        type = Types::RegisteredUserDashboardEmbeddingConfiguration.new
        type.initial_dashboard_id = params[:initial_dashboard_id]
        type
      end
    end

    module RegisteredUserEmbeddingExperienceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisteredUserEmbeddingExperienceConfiguration, context: context)
        type = Types::RegisteredUserEmbeddingExperienceConfiguration.new
        type.dashboard = RegisteredUserDashboardEmbeddingConfiguration.build(params[:dashboard], context: "#{context}[:dashboard]") unless params[:dashboard].nil?
        type.quick_sight_console = RegisteredUserQuickSightConsoleEmbeddingConfiguration.build(params[:quick_sight_console], context: "#{context}[:quick_sight_console]") unless params[:quick_sight_console].nil?
        type.q_search_bar = RegisteredUserQSearchBarEmbeddingConfiguration.build(params[:q_search_bar], context: "#{context}[:q_search_bar]") unless params[:q_search_bar].nil?
        type
      end
    end

    module RegisteredUserQSearchBarEmbeddingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisteredUserQSearchBarEmbeddingConfiguration, context: context)
        type = Types::RegisteredUserQSearchBarEmbeddingConfiguration.new
        type.initial_topic_id = params[:initial_topic_id]
        type
      end
    end

    module RegisteredUserQuickSightConsoleEmbeddingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisteredUserQuickSightConsoleEmbeddingConfiguration, context: context)
        type = Types::RegisteredUserQuickSightConsoleEmbeddingConfiguration.new
        type.initial_path = params[:initial_path]
        type
      end
    end

    module RelationalTable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelationalTable, context: context)
        type = Types::RelationalTable.new
        type.data_source_arn = params[:data_source_arn]
        type.catalog = params[:catalog]
        type.schema = params[:schema]
        type.name = params[:name]
        type.input_columns = InputColumnList.build(params[:input_columns], context: "#{context}[:input_columns]") unless params[:input_columns].nil?
        type
      end
    end

    module RenameColumnOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenameColumnOperation, context: context)
        type = Types::RenameColumnOperation.new
        type.column_name = params[:column_name]
        type.new_column_name = params[:new_column_name]
        type
      end
    end

    module ResourceExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceExistsException, context: context)
        type = Types::ResourceExistsException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type.request_id = params[:request_id]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type.request_id = params[:request_id]
        type
      end
    end

    module ResourcePermission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourcePermission, context: context)
        type = Types::ResourcePermission.new
        type.principal = params[:principal]
        type.actions = ActionList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type
      end
    end

    module ResourcePermissionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourcePermission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceUnavailableException, context: context)
        type = Types::ResourceUnavailableException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type.request_id = params[:request_id]
        type
      end
    end

    module RestoreAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreAnalysisInput, context: context)
        type = Types::RestoreAnalysisInput.new
        type.aws_account_id = params[:aws_account_id]
        type.analysis_id = params[:analysis_id]
        type
      end
    end

    module RestoreAnalysisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreAnalysisOutput, context: context)
        type = Types::RestoreAnalysisOutput.new
        type.status = params[:status]
        type.arn = params[:arn]
        type.analysis_id = params[:analysis_id]
        type.request_id = params[:request_id]
        type
      end
    end

    module RowInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RowInfo, context: context)
        type = Types::RowInfo.new
        type.rows_ingested = params[:rows_ingested]
        type.rows_dropped = params[:rows_dropped]
        type.total_rows_in_dataset = params[:total_rows_in_dataset]
        type
      end
    end

    module RowLevelPermissionDataSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RowLevelPermissionDataSet, context: context)
        type = Types::RowLevelPermissionDataSet.new
        type.namespace = params[:namespace]
        type.arn = params[:arn]
        type.permission_policy = params[:permission_policy]
        type.format_version = params[:format_version]
        type.status = params[:status]
        type
      end
    end

    module RowLevelPermissionTagConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RowLevelPermissionTagConfiguration, context: context)
        type = Types::RowLevelPermissionTagConfiguration.new
        type.status = params[:status]
        type.tag_rules = RowLevelPermissionTagRuleList.build(params[:tag_rules], context: "#{context}[:tag_rules]") unless params[:tag_rules].nil?
        type
      end
    end

    module RowLevelPermissionTagRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RowLevelPermissionTagRule, context: context)
        type = Types::RowLevelPermissionTagRule.new
        type.tag_key = params[:tag_key]
        type.column_name = params[:column_name]
        type.tag_multi_value_delimiter = params[:tag_multi_value_delimiter]
        type.match_all_value = params[:match_all_value]
        type
      end
    end

    module RowLevelPermissionTagRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RowLevelPermissionTagRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3Parameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Parameters, context: context)
        type = Types::S3Parameters.new
        type.manifest_file_location = ManifestFileLocation.build(params[:manifest_file_location], context: "#{context}[:manifest_file_location]") unless params[:manifest_file_location].nil?
        type
      end
    end

    module S3Source
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Source, context: context)
        type = Types::S3Source.new
        type.data_source_arn = params[:data_source_arn]
        type.upload_settings = UploadSettings.build(params[:upload_settings], context: "#{context}[:upload_settings]") unless params[:upload_settings].nil?
        type.input_columns = InputColumnList.build(params[:input_columns], context: "#{context}[:input_columns]") unless params[:input_columns].nil?
        type
      end
    end

    module SearchAnalysesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchAnalysesInput, context: context)
        type = Types::SearchAnalysesInput.new
        type.aws_account_id = params[:aws_account_id]
        type.filters = AnalysisSearchFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module SearchAnalysesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchAnalysesOutput, context: context)
        type = Types::SearchAnalysesOutput.new
        type.analysis_summary_list = AnalysisSummaryList.build(params[:analysis_summary_list], context: "#{context}[:analysis_summary_list]") unless params[:analysis_summary_list].nil?
        type.next_token = params[:next_token]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module SearchDashboardsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchDashboardsInput, context: context)
        type = Types::SearchDashboardsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.filters = DashboardSearchFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module SearchDashboardsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchDashboardsOutput, context: context)
        type = Types::SearchDashboardsOutput.new
        type.dashboard_summary_list = DashboardSummaryList.build(params[:dashboard_summary_list], context: "#{context}[:dashboard_summary_list]") unless params[:dashboard_summary_list].nil?
        type.next_token = params[:next_token]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module SearchFoldersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchFoldersInput, context: context)
        type = Types::SearchFoldersInput.new
        type.aws_account_id = params[:aws_account_id]
        type.filters = FolderSearchFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module SearchFoldersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchFoldersOutput, context: context)
        type = Types::SearchFoldersOutput.new
        type.status = params[:status]
        type.folder_summary_list = FolderSummaryList.build(params[:folder_summary_list], context: "#{context}[:folder_summary_list]") unless params[:folder_summary_list].nil?
        type.next_token = params[:next_token]
        type.request_id = params[:request_id]
        type
      end
    end

    module SearchGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchGroupsInput, context: context)
        type = Types::SearchGroupsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.namespace = params[:namespace]
        type.filters = GroupSearchFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module SearchGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchGroupsOutput, context: context)
        type = Types::SearchGroupsOutput.new
        type.group_list = GroupList.build(params[:group_list], context: "#{context}[:group_list]") unless params[:group_list].nil?
        type.next_token = params[:next_token]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module ServiceNowParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceNowParameters, context: context)
        type = Types::ServiceNowParameters.new
        type.site_base_url = params[:site_base_url]
        type
      end
    end

    module SessionLifetimeInMinutesInvalidException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionLifetimeInMinutesInvalidException, context: context)
        type = Types::SessionLifetimeInMinutesInvalidException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module SessionTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionTag, context: context)
        type = Types::SessionTag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module SessionTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SessionTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Sheet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Sheet, context: context)
        type = Types::Sheet.new
        type.sheet_id = params[:sheet_id]
        type.name = params[:name]
        type
      end
    end

    module SheetControlsOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SheetControlsOption, context: context)
        type = Types::SheetControlsOption.new
        type.visibility_state = params[:visibility_state]
        type
      end
    end

    module SheetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Sheet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SheetStyle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SheetStyle, context: context)
        type = Types::SheetStyle.new
        type.tile = TileStyle.build(params[:tile], context: "#{context}[:tile]") unless params[:tile].nil?
        type.tile_layout = TileLayoutStyle.build(params[:tile_layout], context: "#{context}[:tile_layout]") unless params[:tile_layout].nil?
        type
      end
    end

    module SnowflakeParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnowflakeParameters, context: context)
        type = Types::SnowflakeParameters.new
        type.host = params[:host]
        type.database = params[:database]
        type.warehouse = params[:warehouse]
        type
      end
    end

    module SparkParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SparkParameters, context: context)
        type = Types::SparkParameters.new
        type.host = params[:host]
        type.port = params[:port]
        type
      end
    end

    module SqlServerParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlServerParameters, context: context)
        type = Types::SqlServerParameters.new
        type.host = params[:host]
        type.port = params[:port]
        type.database = params[:database]
        type
      end
    end

    module SslProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SslProperties, context: context)
        type = Types::SslProperties.new
        type.disable_ssl = params[:disable_ssl]
        type
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StringParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StringParameter, context: context)
        type = Types::StringParameter.new
        type.name = params[:name]
        type.values = StringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module StringParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StringParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagColumnOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagColumnOperation, context: context)
        type = Types::TagColumnOperation.new
        type.column_name = params[:column_name]
        type.tags = ColumnTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module Template
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Template, context: context)
        type = Types::Template.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version = TemplateVersion.build(params[:version], context: "#{context}[:version]") unless params[:version].nil?
        type.template_id = params[:template_id]
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module TemplateAlias
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateAlias, context: context)
        type = Types::TemplateAlias.new
        type.alias_name = params[:alias_name]
        type.arn = params[:arn]
        type.template_version_number = params[:template_version_number]
        type
      end
    end

    module TemplateAliasList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TemplateAlias.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TemplateError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateError, context: context)
        type = Types::TemplateError.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module TemplateErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TemplateError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TemplateSourceAnalysis
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateSourceAnalysis, context: context)
        type = Types::TemplateSourceAnalysis.new
        type.arn = params[:arn]
        type.data_set_references = DataSetReferenceList.build(params[:data_set_references], context: "#{context}[:data_set_references]") unless params[:data_set_references].nil?
        type
      end
    end

    module TemplateSourceEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateSourceEntity, context: context)
        type = Types::TemplateSourceEntity.new
        type.source_analysis = TemplateSourceAnalysis.build(params[:source_analysis], context: "#{context}[:source_analysis]") unless params[:source_analysis].nil?
        type.source_template = TemplateSourceTemplate.build(params[:source_template], context: "#{context}[:source_template]") unless params[:source_template].nil?
        type
      end
    end

    module TemplateSourceTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateSourceTemplate, context: context)
        type = Types::TemplateSourceTemplate.new
        type.arn = params[:arn]
        type
      end
    end

    module TemplateSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateSummary, context: context)
        type = Types::TemplateSummary.new
        type.arn = params[:arn]
        type.template_id = params[:template_id]
        type.name = params[:name]
        type.latest_version_number = params[:latest_version_number]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module TemplateSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TemplateSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TemplateVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateVersion, context: context)
        type = Types::TemplateVersion.new
        type.created_time = params[:created_time]
        type.errors = TemplateErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type.version_number = params[:version_number]
        type.status = params[:status]
        type.data_set_configurations = DataSetConfigurationList.build(params[:data_set_configurations], context: "#{context}[:data_set_configurations]") unless params[:data_set_configurations].nil?
        type.description = params[:description]
        type.source_entity_arn = params[:source_entity_arn]
        type.theme_arn = params[:theme_arn]
        type.sheets = SheetList.build(params[:sheets], context: "#{context}[:sheets]") unless params[:sheets].nil?
        type
      end
    end

    module TemplateVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TemplateVersionSummary, context: context)
        type = Types::TemplateVersionSummary.new
        type.arn = params[:arn]
        type.version_number = params[:version_number]
        type.created_time = params[:created_time]
        type.status = params[:status]
        type.description = params[:description]
        type
      end
    end

    module TemplateVersionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TemplateVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TeradataParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TeradataParameters, context: context)
        type = Types::TeradataParameters.new
        type.host = params[:host]
        type.port = params[:port]
        type.database = params[:database]
        type
      end
    end

    module Theme
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Theme, context: context)
        type = Types::Theme.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.theme_id = params[:theme_id]
        type.version = ThemeVersion.build(params[:version], context: "#{context}[:version]") unless params[:version].nil?
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.type = params[:type]
        type
      end
    end

    module ThemeAlias
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThemeAlias, context: context)
        type = Types::ThemeAlias.new
        type.arn = params[:arn]
        type.alias_name = params[:alias_name]
        type.theme_version_number = params[:theme_version_number]
        type
      end
    end

    module ThemeAliasList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThemeAlias.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThemeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThemeConfiguration, context: context)
        type = Types::ThemeConfiguration.new
        type.data_color_palette = DataColorPalette.build(params[:data_color_palette], context: "#{context}[:data_color_palette]") unless params[:data_color_palette].nil?
        type.ui_color_palette = UIColorPalette.build(params[:ui_color_palette], context: "#{context}[:ui_color_palette]") unless params[:ui_color_palette].nil?
        type.sheet = SheetStyle.build(params[:sheet], context: "#{context}[:sheet]") unless params[:sheet].nil?
        type
      end
    end

    module ThemeError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThemeError, context: context)
        type = Types::ThemeError.new
        type.type = params[:type]
        type.message = params[:message]
        type
      end
    end

    module ThemeErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThemeError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThemeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThemeSummary, context: context)
        type = Types::ThemeSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.theme_id = params[:theme_id]
        type.latest_version_number = params[:latest_version_number]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module ThemeSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThemeSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThemeVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThemeVersion, context: context)
        type = Types::ThemeVersion.new
        type.version_number = params[:version_number]
        type.arn = params[:arn]
        type.description = params[:description]
        type.base_theme_id = params[:base_theme_id]
        type.created_time = params[:created_time]
        type.configuration = ThemeConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.errors = ThemeErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type.status = params[:status]
        type
      end
    end

    module ThemeVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThemeVersionSummary, context: context)
        type = Types::ThemeVersionSummary.new
        type.version_number = params[:version_number]
        type.arn = params[:arn]
        type.description = params[:description]
        type.created_time = params[:created_time]
        type.status = params[:status]
        type
      end
    end

    module ThemeVersionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThemeVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module TileLayoutStyle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TileLayoutStyle, context: context)
        type = Types::TileLayoutStyle.new
        type.gutter = GutterStyle.build(params[:gutter], context: "#{context}[:gutter]") unless params[:gutter].nil?
        type.margin = MarginStyle.build(params[:margin], context: "#{context}[:margin]") unless params[:margin].nil?
        type
      end
    end

    module TileStyle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TileStyle, context: context)
        type = Types::TileStyle.new
        type.border = BorderStyle.build(params[:border], context: "#{context}[:border]") unless params[:border].nil?
        type
      end
    end

    module TimestampList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TransformOperation
      def self.build(params, context: '')
        return params if params.is_a?(Types::TransformOperation)
        Hearth::Validator.validate!(params, ::Hash, Types::TransformOperation, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :project_operation
          Types::TransformOperation::ProjectOperation.new(
            (ProjectOperation.build(params[:project_operation], context: "#{context}[:project_operation]") unless params[:project_operation].nil?)
          )
        when :filter_operation
          Types::TransformOperation::FilterOperation.new(
            (FilterOperation.build(params[:filter_operation], context: "#{context}[:filter_operation]") unless params[:filter_operation].nil?)
          )
        when :create_columns_operation
          Types::TransformOperation::CreateColumnsOperation.new(
            (CreateColumnsOperation.build(params[:create_columns_operation], context: "#{context}[:create_columns_operation]") unless params[:create_columns_operation].nil?)
          )
        when :rename_column_operation
          Types::TransformOperation::RenameColumnOperation.new(
            (RenameColumnOperation.build(params[:rename_column_operation], context: "#{context}[:rename_column_operation]") unless params[:rename_column_operation].nil?)
          )
        when :cast_column_type_operation
          Types::TransformOperation::CastColumnTypeOperation.new(
            (CastColumnTypeOperation.build(params[:cast_column_type_operation], context: "#{context}[:cast_column_type_operation]") unless params[:cast_column_type_operation].nil?)
          )
        when :tag_column_operation
          Types::TransformOperation::TagColumnOperation.new(
            (TagColumnOperation.build(params[:tag_column_operation], context: "#{context}[:tag_column_operation]") unless params[:tag_column_operation].nil?)
          )
        when :untag_column_operation
          Types::TransformOperation::UntagColumnOperation.new(
            (UntagColumnOperation.build(params[:untag_column_operation], context: "#{context}[:untag_column_operation]") unless params[:untag_column_operation].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :project_operation, :filter_operation, :create_columns_operation, :rename_column_operation, :cast_column_type_operation, :tag_column_operation, :untag_column_operation set"
        end
      end
    end

    module TransformOperationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TransformOperation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TwitterParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TwitterParameters, context: context)
        type = Types::TwitterParameters.new
        type.query = params[:query]
        type.max_rows = params[:max_rows]
        type
      end
    end

    module UIColorPalette
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UIColorPalette, context: context)
        type = Types::UIColorPalette.new
        type.primary_foreground = params[:primary_foreground]
        type.primary_background = params[:primary_background]
        type.secondary_foreground = params[:secondary_foreground]
        type.secondary_background = params[:secondary_background]
        type.accent = params[:accent]
        type.accent_foreground = params[:accent_foreground]
        type.danger = params[:danger]
        type.danger_foreground = params[:danger_foreground]
        type.warning = params[:warning]
        type.warning_foreground = params[:warning_foreground]
        type.success = params[:success]
        type.success_foreground = params[:success_foreground]
        type.dimension = params[:dimension]
        type.dimension_foreground = params[:dimension_foreground]
        type.measure = params[:measure]
        type.measure_foreground = params[:measure_foreground]
        type
      end
    end

    module UnsupportedPricingPlanException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedPricingPlanException, context: context)
        type = Types::UnsupportedPricingPlanException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module UnsupportedUserEditionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedUserEditionException, context: context)
        type = Types::UnsupportedUserEditionException.new
        type.message = params[:message]
        type.request_id = params[:request_id]
        type
      end
    end

    module UntagColumnOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagColumnOperation, context: context)
        type = Types::UntagColumnOperation.new
        type.column_name = params[:column_name]
        type.tag_names = ColumnTagNames.build(params[:tag_names], context: "#{context}[:tag_names]") unless params[:tag_names].nil?
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateAccountCustomizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountCustomizationInput, context: context)
        type = Types::UpdateAccountCustomizationInput.new
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type.account_customization = AccountCustomization.build(params[:account_customization], context: "#{context}[:account_customization]") unless params[:account_customization].nil?
        type
      end
    end

    module UpdateAccountCustomizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountCustomizationOutput, context: context)
        type = Types::UpdateAccountCustomizationOutput.new
        type.arn = params[:arn]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type.account_customization = AccountCustomization.build(params[:account_customization], context: "#{context}[:account_customization]") unless params[:account_customization].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateAccountSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountSettingsInput, context: context)
        type = Types::UpdateAccountSettingsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.default_namespace = params[:default_namespace]
        type.notification_email = params[:notification_email]
        type
      end
    end

    module UpdateAccountSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountSettingsOutput, context: context)
        type = Types::UpdateAccountSettingsOutput.new
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateAnalysisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAnalysisInput, context: context)
        type = Types::UpdateAnalysisInput.new
        type.aws_account_id = params[:aws_account_id]
        type.analysis_id = params[:analysis_id]
        type.name = params[:name]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.source_entity = AnalysisSourceEntity.build(params[:source_entity], context: "#{context}[:source_entity]") unless params[:source_entity].nil?
        type.theme_arn = params[:theme_arn]
        type
      end
    end

    module UpdateAnalysisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAnalysisOutput, context: context)
        type = Types::UpdateAnalysisOutput.new
        type.arn = params[:arn]
        type.analysis_id = params[:analysis_id]
        type.update_status = params[:update_status]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module UpdateAnalysisPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAnalysisPermissionsInput, context: context)
        type = Types::UpdateAnalysisPermissionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.analysis_id = params[:analysis_id]
        type.grant_permissions = UpdateResourcePermissionList.build(params[:grant_permissions], context: "#{context}[:grant_permissions]") unless params[:grant_permissions].nil?
        type.revoke_permissions = UpdateResourcePermissionList.build(params[:revoke_permissions], context: "#{context}[:revoke_permissions]") unless params[:revoke_permissions].nil?
        type
      end
    end

    module UpdateAnalysisPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAnalysisPermissionsOutput, context: context)
        type = Types::UpdateAnalysisPermissionsOutput.new
        type.analysis_arn = params[:analysis_arn]
        type.analysis_id = params[:analysis_id]
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateDashboardInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDashboardInput, context: context)
        type = Types::UpdateDashboardInput.new
        type.aws_account_id = params[:aws_account_id]
        type.dashboard_id = params[:dashboard_id]
        type.name = params[:name]
        type.source_entity = DashboardSourceEntity.build(params[:source_entity], context: "#{context}[:source_entity]") unless params[:source_entity].nil?
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.version_description = params[:version_description]
        type.dashboard_publish_options = DashboardPublishOptions.build(params[:dashboard_publish_options], context: "#{context}[:dashboard_publish_options]") unless params[:dashboard_publish_options].nil?
        type.theme_arn = params[:theme_arn]
        type
      end
    end

    module UpdateDashboardOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDashboardOutput, context: context)
        type = Types::UpdateDashboardOutput.new
        type.arn = params[:arn]
        type.version_arn = params[:version_arn]
        type.dashboard_id = params[:dashboard_id]
        type.creation_status = params[:creation_status]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module UpdateDashboardPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDashboardPermissionsInput, context: context)
        type = Types::UpdateDashboardPermissionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.dashboard_id = params[:dashboard_id]
        type.grant_permissions = UpdateResourcePermissionList.build(params[:grant_permissions], context: "#{context}[:grant_permissions]") unless params[:grant_permissions].nil?
        type.revoke_permissions = UpdateResourcePermissionList.build(params[:revoke_permissions], context: "#{context}[:revoke_permissions]") unless params[:revoke_permissions].nil?
        type.grant_link_permissions = UpdateLinkPermissionList.build(params[:grant_link_permissions], context: "#{context}[:grant_link_permissions]") unless params[:grant_link_permissions].nil?
        type.revoke_link_permissions = UpdateLinkPermissionList.build(params[:revoke_link_permissions], context: "#{context}[:revoke_link_permissions]") unless params[:revoke_link_permissions].nil?
        type
      end
    end

    module UpdateDashboardPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDashboardPermissionsOutput, context: context)
        type = Types::UpdateDashboardPermissionsOutput.new
        type.dashboard_arn = params[:dashboard_arn]
        type.dashboard_id = params[:dashboard_id]
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type.link_sharing_configuration = LinkSharingConfiguration.build(params[:link_sharing_configuration], context: "#{context}[:link_sharing_configuration]") unless params[:link_sharing_configuration].nil?
        type
      end
    end

    module UpdateDashboardPublishedVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDashboardPublishedVersionInput, context: context)
        type = Types::UpdateDashboardPublishedVersionInput.new
        type.aws_account_id = params[:aws_account_id]
        type.dashboard_id = params[:dashboard_id]
        type.version_number = params[:version_number]
        type
      end
    end

    module UpdateDashboardPublishedVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDashboardPublishedVersionOutput, context: context)
        type = Types::UpdateDashboardPublishedVersionOutput.new
        type.dashboard_id = params[:dashboard_id]
        type.dashboard_arn = params[:dashboard_arn]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module UpdateDataSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSetInput, context: context)
        type = Types::UpdateDataSetInput.new
        type.aws_account_id = params[:aws_account_id]
        type.data_set_id = params[:data_set_id]
        type.name = params[:name]
        type.physical_table_map = PhysicalTableMap.build(params[:physical_table_map], context: "#{context}[:physical_table_map]") unless params[:physical_table_map].nil?
        type.logical_table_map = LogicalTableMap.build(params[:logical_table_map], context: "#{context}[:logical_table_map]") unless params[:logical_table_map].nil?
        type.import_mode = params[:import_mode]
        type.column_groups = ColumnGroupList.build(params[:column_groups], context: "#{context}[:column_groups]") unless params[:column_groups].nil?
        type.field_folders = FieldFolderMap.build(params[:field_folders], context: "#{context}[:field_folders]") unless params[:field_folders].nil?
        type.row_level_permission_data_set = RowLevelPermissionDataSet.build(params[:row_level_permission_data_set], context: "#{context}[:row_level_permission_data_set]") unless params[:row_level_permission_data_set].nil?
        type.row_level_permission_tag_configuration = RowLevelPermissionTagConfiguration.build(params[:row_level_permission_tag_configuration], context: "#{context}[:row_level_permission_tag_configuration]") unless params[:row_level_permission_tag_configuration].nil?
        type.column_level_permission_rules = ColumnLevelPermissionRuleList.build(params[:column_level_permission_rules], context: "#{context}[:column_level_permission_rules]") unless params[:column_level_permission_rules].nil?
        type.data_set_usage_configuration = DataSetUsageConfiguration.build(params[:data_set_usage_configuration], context: "#{context}[:data_set_usage_configuration]") unless params[:data_set_usage_configuration].nil?
        type
      end
    end

    module UpdateDataSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSetOutput, context: context)
        type = Types::UpdateDataSetOutput.new
        type.arn = params[:arn]
        type.data_set_id = params[:data_set_id]
        type.ingestion_arn = params[:ingestion_arn]
        type.ingestion_id = params[:ingestion_id]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateDataSetPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSetPermissionsInput, context: context)
        type = Types::UpdateDataSetPermissionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.data_set_id = params[:data_set_id]
        type.grant_permissions = ResourcePermissionList.build(params[:grant_permissions], context: "#{context}[:grant_permissions]") unless params[:grant_permissions].nil?
        type.revoke_permissions = ResourcePermissionList.build(params[:revoke_permissions], context: "#{context}[:revoke_permissions]") unless params[:revoke_permissions].nil?
        type
      end
    end

    module UpdateDataSetPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSetPermissionsOutput, context: context)
        type = Types::UpdateDataSetPermissionsOutput.new
        type.data_set_arn = params[:data_set_arn]
        type.data_set_id = params[:data_set_id]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSourceInput, context: context)
        type = Types::UpdateDataSourceInput.new
        type.aws_account_id = params[:aws_account_id]
        type.data_source_id = params[:data_source_id]
        type.name = params[:name]
        type.data_source_parameters = DataSourceParameters.build(params[:data_source_parameters], context: "#{context}[:data_source_parameters]") unless params[:data_source_parameters].nil?
        type.credentials = DataSourceCredentials.build(params[:credentials], context: "#{context}[:credentials]") unless params[:credentials].nil?
        type.vpc_connection_properties = VpcConnectionProperties.build(params[:vpc_connection_properties], context: "#{context}[:vpc_connection_properties]") unless params[:vpc_connection_properties].nil?
        type.ssl_properties = SslProperties.build(params[:ssl_properties], context: "#{context}[:ssl_properties]") unless params[:ssl_properties].nil?
        type
      end
    end

    module UpdateDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSourceOutput, context: context)
        type = Types::UpdateDataSourceOutput.new
        type.arn = params[:arn]
        type.data_source_id = params[:data_source_id]
        type.update_status = params[:update_status]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateDataSourcePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSourcePermissionsInput, context: context)
        type = Types::UpdateDataSourcePermissionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.data_source_id = params[:data_source_id]
        type.grant_permissions = ResourcePermissionList.build(params[:grant_permissions], context: "#{context}[:grant_permissions]") unless params[:grant_permissions].nil?
        type.revoke_permissions = ResourcePermissionList.build(params[:revoke_permissions], context: "#{context}[:revoke_permissions]") unless params[:revoke_permissions].nil?
        type
      end
    end

    module UpdateDataSourcePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSourcePermissionsOutput, context: context)
        type = Types::UpdateDataSourcePermissionsOutput.new
        type.data_source_arn = params[:data_source_arn]
        type.data_source_id = params[:data_source_id]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateFolderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFolderInput, context: context)
        type = Types::UpdateFolderInput.new
        type.aws_account_id = params[:aws_account_id]
        type.folder_id = params[:folder_id]
        type.name = params[:name]
        type
      end
    end

    module UpdateFolderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFolderOutput, context: context)
        type = Types::UpdateFolderOutput.new
        type.status = params[:status]
        type.arn = params[:arn]
        type.folder_id = params[:folder_id]
        type.request_id = params[:request_id]
        type
      end
    end

    module UpdateFolderPermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFolderPermissionsInput, context: context)
        type = Types::UpdateFolderPermissionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.folder_id = params[:folder_id]
        type.grant_permissions = ResourcePermissionList.build(params[:grant_permissions], context: "#{context}[:grant_permissions]") unless params[:grant_permissions].nil?
        type.revoke_permissions = ResourcePermissionList.build(params[:revoke_permissions], context: "#{context}[:revoke_permissions]") unless params[:revoke_permissions].nil?
        type
      end
    end

    module UpdateFolderPermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFolderPermissionsOutput, context: context)
        type = Types::UpdateFolderPermissionsOutput.new
        type.status = params[:status]
        type.arn = params[:arn]
        type.folder_id = params[:folder_id]
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.request_id = params[:request_id]
        type
      end
    end

    module UpdateGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupInput, context: context)
        type = Types::UpdateGroupInput.new
        type.group_name = params[:group_name]
        type.description = params[:description]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type
      end
    end

    module UpdateGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGroupOutput, context: context)
        type = Types::UpdateGroupOutput.new
        type.group = Group.build(params[:group], context: "#{context}[:group]") unless params[:group].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateIAMPolicyAssignmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIAMPolicyAssignmentInput, context: context)
        type = Types::UpdateIAMPolicyAssignmentInput.new
        type.aws_account_id = params[:aws_account_id]
        type.assignment_name = params[:assignment_name]
        type.namespace = params[:namespace]
        type.assignment_status = params[:assignment_status]
        type.policy_arn = params[:policy_arn]
        type.identities = IdentityMap.build(params[:identities], context: "#{context}[:identities]") unless params[:identities].nil?
        type
      end
    end

    module UpdateIAMPolicyAssignmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIAMPolicyAssignmentOutput, context: context)
        type = Types::UpdateIAMPolicyAssignmentOutput.new
        type.assignment_name = params[:assignment_name]
        type.assignment_id = params[:assignment_id]
        type.policy_arn = params[:policy_arn]
        type.identities = IdentityMap.build(params[:identities], context: "#{context}[:identities]") unless params[:identities].nil?
        type.assignment_status = params[:assignment_status]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateIpRestrictionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIpRestrictionInput, context: context)
        type = Types::UpdateIpRestrictionInput.new
        type.aws_account_id = params[:aws_account_id]
        type.ip_restriction_rule_map = IpRestrictionRuleMap.build(params[:ip_restriction_rule_map], context: "#{context}[:ip_restriction_rule_map]") unless params[:ip_restriction_rule_map].nil?
        type.enabled = params[:enabled]
        type
      end
    end

    module UpdateIpRestrictionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIpRestrictionOutput, context: context)
        type = Types::UpdateIpRestrictionOutput.new
        type.aws_account_id = params[:aws_account_id]
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateLinkPermissionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourcePermission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdatePublicSharingSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePublicSharingSettingsInput, context: context)
        type = Types::UpdatePublicSharingSettingsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.public_sharing_enabled = params[:public_sharing_enabled]
        type
      end
    end

    module UpdatePublicSharingSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePublicSharingSettingsOutput, context: context)
        type = Types::UpdatePublicSharingSettingsOutput.new
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateResourcePermissionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourcePermission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateTemplateAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTemplateAliasInput, context: context)
        type = Types::UpdateTemplateAliasInput.new
        type.aws_account_id = params[:aws_account_id]
        type.template_id = params[:template_id]
        type.alias_name = params[:alias_name]
        type.template_version_number = params[:template_version_number]
        type
      end
    end

    module UpdateTemplateAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTemplateAliasOutput, context: context)
        type = Types::UpdateTemplateAliasOutput.new
        type.template_alias = TemplateAlias.build(params[:template_alias], context: "#{context}[:template_alias]") unless params[:template_alias].nil?
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module UpdateTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTemplateInput, context: context)
        type = Types::UpdateTemplateInput.new
        type.aws_account_id = params[:aws_account_id]
        type.template_id = params[:template_id]
        type.source_entity = TemplateSourceEntity.build(params[:source_entity], context: "#{context}[:source_entity]") unless params[:source_entity].nil?
        type.version_description = params[:version_description]
        type.name = params[:name]
        type
      end
    end

    module UpdateTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTemplateOutput, context: context)
        type = Types::UpdateTemplateOutput.new
        type.template_id = params[:template_id]
        type.arn = params[:arn]
        type.version_arn = params[:version_arn]
        type.creation_status = params[:creation_status]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module UpdateTemplatePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTemplatePermissionsInput, context: context)
        type = Types::UpdateTemplatePermissionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.template_id = params[:template_id]
        type.grant_permissions = UpdateResourcePermissionList.build(params[:grant_permissions], context: "#{context}[:grant_permissions]") unless params[:grant_permissions].nil?
        type.revoke_permissions = UpdateResourcePermissionList.build(params[:revoke_permissions], context: "#{context}[:revoke_permissions]") unless params[:revoke_permissions].nil?
        type
      end
    end

    module UpdateTemplatePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTemplatePermissionsOutput, context: context)
        type = Types::UpdateTemplatePermissionsOutput.new
        type.template_id = params[:template_id]
        type.template_arn = params[:template_arn]
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateThemeAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThemeAliasInput, context: context)
        type = Types::UpdateThemeAliasInput.new
        type.aws_account_id = params[:aws_account_id]
        type.theme_id = params[:theme_id]
        type.alias_name = params[:alias_name]
        type.theme_version_number = params[:theme_version_number]
        type
      end
    end

    module UpdateThemeAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThemeAliasOutput, context: context)
        type = Types::UpdateThemeAliasOutput.new
        type.theme_alias = ThemeAlias.build(params[:theme_alias], context: "#{context}[:theme_alias]") unless params[:theme_alias].nil?
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module UpdateThemeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThemeInput, context: context)
        type = Types::UpdateThemeInput.new
        type.aws_account_id = params[:aws_account_id]
        type.theme_id = params[:theme_id]
        type.name = params[:name]
        type.base_theme_id = params[:base_theme_id]
        type.version_description = params[:version_description]
        type.configuration = ThemeConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module UpdateThemeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThemeOutput, context: context)
        type = Types::UpdateThemeOutput.new
        type.theme_id = params[:theme_id]
        type.arn = params[:arn]
        type.version_arn = params[:version_arn]
        type.creation_status = params[:creation_status]
        type.status = params[:status]
        type.request_id = params[:request_id]
        type
      end
    end

    module UpdateThemePermissionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThemePermissionsInput, context: context)
        type = Types::UpdateThemePermissionsInput.new
        type.aws_account_id = params[:aws_account_id]
        type.theme_id = params[:theme_id]
        type.grant_permissions = UpdateResourcePermissionList.build(params[:grant_permissions], context: "#{context}[:grant_permissions]") unless params[:grant_permissions].nil?
        type.revoke_permissions = UpdateResourcePermissionList.build(params[:revoke_permissions], context: "#{context}[:revoke_permissions]") unless params[:revoke_permissions].nil?
        type
      end
    end

    module UpdateThemePermissionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThemePermissionsOutput, context: context)
        type = Types::UpdateThemePermissionsOutput.new
        type.theme_id = params[:theme_id]
        type.theme_arn = params[:theme_arn]
        type.permissions = ResourcePermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateUserInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserInput, context: context)
        type = Types::UpdateUserInput.new
        type.user_name = params[:user_name]
        type.aws_account_id = params[:aws_account_id]
        type.namespace = params[:namespace]
        type.email = params[:email]
        type.role = params[:role]
        type.custom_permissions_name = params[:custom_permissions_name]
        type.unapply_custom_permissions = params[:unapply_custom_permissions]
        type.external_login_federation_provider_type = params[:external_login_federation_provider_type]
        type.custom_federation_provider_url = params[:custom_federation_provider_url]
        type.external_login_id = params[:external_login_id]
        type
      end
    end

    module UpdateUserOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserOutput, context: context)
        type = Types::UpdateUserOutput.new
        type.user = User.build(params[:user], context: "#{context}[:user]") unless params[:user].nil?
        type.request_id = params[:request_id]
        type.status = params[:status]
        type
      end
    end

    module UploadSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadSettings, context: context)
        type = Types::UploadSettings.new
        type.format = params[:format]
        type.start_from_row = params[:start_from_row]
        type.contains_header = params[:contains_header]
        type.text_qualifier = params[:text_qualifier]
        type.delimiter = params[:delimiter]
        type
      end
    end

    module User
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::User, context: context)
        type = Types::User.new
        type.arn = params[:arn]
        type.user_name = params[:user_name]
        type.email = params[:email]
        type.role = params[:role]
        type.identity_type = params[:identity_type]
        type.active = params[:active]
        type.principal_id = params[:principal_id]
        type.custom_permissions_name = params[:custom_permissions_name]
        type.external_login_federation_provider_type = params[:external_login_federation_provider_type]
        type.external_login_federation_provider_url = params[:external_login_federation_provider_url]
        type.external_login_id = params[:external_login_id]
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

    module VpcConnectionProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConnectionProperties, context: context)
        type = Types::VpcConnectionProperties.new
        type.vpc_connection_arn = params[:vpc_connection_arn]
        type
      end
    end

  end
end
