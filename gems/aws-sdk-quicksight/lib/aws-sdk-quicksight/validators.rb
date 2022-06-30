# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::QuickSight
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class AccountCustomization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountCustomization, context: context)
        Hearth::Validator.validate!(input[:default_theme], ::String, context: "#{context}[:default_theme]")
        Hearth::Validator.validate!(input[:default_email_customization_template], ::String, context: "#{context}[:default_email_customization_template]")
      end
    end

    class AccountSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountSettings, context: context)
        Hearth::Validator.validate!(input[:account_name], ::String, context: "#{context}[:account_name]")
        Hearth::Validator.validate!(input[:edition], ::String, context: "#{context}[:edition]")
        Hearth::Validator.validate!(input[:default_namespace], ::String, context: "#{context}[:default_namespace]")
        Hearth::Validator.validate!(input[:notification_email], ::String, context: "#{context}[:notification_email]")
        Hearth::Validator.validate!(input[:public_sharing_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:public_sharing_enabled]")
      end
    end

    class ActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ActiveIAMPolicyAssignment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActiveIAMPolicyAssignment, context: context)
        Hearth::Validator.validate!(input[:assignment_name], ::String, context: "#{context}[:assignment_name]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class ActiveIAMPolicyAssignmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ActiveIAMPolicyAssignment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AdHocFilteringOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdHocFilteringOption, context: context)
        Hearth::Validator.validate!(input[:availability_status], ::String, context: "#{context}[:availability_status]")
      end
    end

    class AdditionalDashboardIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AmazonElasticsearchParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AmazonElasticsearchParameters, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class AmazonOpenSearchParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AmazonOpenSearchParameters, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class Analysis
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Analysis, context: context)
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::AnalysisErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
        Validators::DataSetArnsList.validate!(input[:data_set_arns], context: "#{context}[:data_set_arns]") unless input[:data_set_arns].nil?
        Hearth::Validator.validate!(input[:theme_arn], ::String, context: "#{context}[:theme_arn]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Validators::SheetList.validate!(input[:sheets], context: "#{context}[:sheets]") unless input[:sheets].nil?
      end
    end

    class AnalysisError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalysisError, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AnalysisErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AnalysisError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AnalysisSearchFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalysisSearchFilter, context: context)
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AnalysisSearchFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AnalysisSearchFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AnalysisSourceEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalysisSourceEntity, context: context)
        Validators::AnalysisSourceTemplate.validate!(input[:source_template], context: "#{context}[:source_template]") unless input[:source_template].nil?
      end
    end

    class AnalysisSourceTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalysisSourceTemplate, context: context)
        Validators::DataSetReferenceList.validate!(input[:data_set_references], context: "#{context}[:data_set_references]") unless input[:data_set_references].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class AnalysisSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalysisSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class AnalysisSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AnalysisSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AnonymousUserDashboardEmbeddingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnonymousUserDashboardEmbeddingConfiguration, context: context)
        Hearth::Validator.validate!(input[:initial_dashboard_id], ::String, context: "#{context}[:initial_dashboard_id]")
      end
    end

    class AnonymousUserEmbeddingExperienceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnonymousUserEmbeddingExperienceConfiguration, context: context)
        Validators::AnonymousUserDashboardEmbeddingConfiguration.validate!(input[:dashboard], context: "#{context}[:dashboard]") unless input[:dashboard].nil?
      end
    end

    class ArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AthenaParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AthenaParameters, context: context)
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
      end
    end

    class AuroraParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuroraParameters, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
      end
    end

    class AuroraPostgreSqlParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuroraPostgreSqlParameters, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
      end
    end

    class AwsIotAnalyticsParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsIotAnalyticsParameters, context: context)
        Hearth::Validator.validate!(input[:data_set_name], ::String, context: "#{context}[:data_set_name]")
      end
    end

    class BorderStyle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BorderStyle, context: context)
        Hearth::Validator.validate!(input[:show], ::TrueClass, ::FalseClass, context: "#{context}[:show]")
      end
    end

    class CalculatedColumn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CalculatedColumn, context: context)
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
        Hearth::Validator.validate!(input[:column_id], ::String, context: "#{context}[:column_id]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
      end
    end

    class CalculatedColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CalculatedColumn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CancelIngestionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelIngestionInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:ingestion_id], ::String, context: "#{context}[:ingestion_id]")
      end
    end

    class CancelIngestionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelIngestionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:ingestion_id], ::String, context: "#{context}[:ingestion_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class CastColumnTypeOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CastColumnTypeOperation, context: context)
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
        Hearth::Validator.validate!(input[:new_column_type], ::String, context: "#{context}[:new_column_type]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class ColorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ColumnDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnDescription, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
      end
    end

    class ColumnGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnGroup, context: context)
        Validators::GeoSpatialColumnGroup.validate!(input[:geo_spatial_column_group], context: "#{context}[:geo_spatial_column_group]") unless input[:geo_spatial_column_group].nil?
      end
    end

    class ColumnGroupColumnSchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnGroupColumnSchema, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ColumnGroupColumnSchemaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ColumnGroupColumnSchema.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ColumnGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnGroupSchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnGroupSchema, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ColumnGroupColumnSchemaList.validate!(input[:column_group_column_schema_list], context: "#{context}[:column_group_column_schema_list]") unless input[:column_group_column_schema_list].nil?
      end
    end

    class ColumnGroupSchemaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ColumnGroupSchema.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnLevelPermissionRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnLevelPermissionRule, context: context)
        Validators::PrincipalList.validate!(input[:principals], context: "#{context}[:principals]") unless input[:principals].nil?
        Validators::ColumnNameList.validate!(input[:column_names], context: "#{context}[:column_names]") unless input[:column_names].nil?
      end
    end

    class ColumnLevelPermissionRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ColumnLevelPermissionRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
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

    class ColumnSchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnSchema, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:geographic_role], ::String, context: "#{context}[:geographic_role]")
      end
    end

    class ColumnSchemaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ColumnSchema.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnTag, context: context)
        Hearth::Validator.validate!(input[:column_geographic_role], ::String, context: "#{context}[:column_geographic_role]")
        Validators::ColumnDescription.validate!(input[:column_description], context: "#{context}[:column_description]") unless input[:column_description].nil?
      end
    end

    class ColumnTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ColumnTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnTagNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConcurrentUpdatingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentUpdatingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CreateAccountCustomizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccountCustomizationInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Validators::AccountCustomization.validate!(input[:account_customization], context: "#{context}[:account_customization]") unless input[:account_customization].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAccountCustomizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccountCustomizationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Validators::AccountCustomization.validate!(input[:account_customization], context: "#{context}[:account_customization]") unless input[:account_customization].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class CreateAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAnalysisInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Validators::AnalysisSourceEntity.validate!(input[:source_entity], context: "#{context}[:source_entity]") unless input[:source_entity].nil?
        Hearth::Validator.validate!(input[:theme_arn], ::String, context: "#{context}[:theme_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAnalysisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAnalysisOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
        Hearth::Validator.validate!(input[:creation_status], ::String, context: "#{context}[:creation_status]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CreateColumnsOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateColumnsOperation, context: context)
        Validators::CalculatedColumnList.validate!(input[:columns], context: "#{context}[:columns]") unless input[:columns].nil?
      end
    end

    class CreateDashboardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDashboardInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Validators::DashboardSourceEntity.validate!(input[:source_entity], context: "#{context}[:source_entity]") unless input[:source_entity].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:version_description], ::String, context: "#{context}[:version_description]")
        Validators::DashboardPublishOptions.validate!(input[:dashboard_publish_options], context: "#{context}[:dashboard_publish_options]") unless input[:dashboard_publish_options].nil?
        Hearth::Validator.validate!(input[:theme_arn], ::String, context: "#{context}[:theme_arn]")
      end
    end

    class CreateDashboardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDashboardOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version_arn], ::String, context: "#{context}[:version_arn]")
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:creation_status], ::String, context: "#{context}[:creation_status]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CreateDataSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSetInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::PhysicalTableMap.validate!(input[:physical_table_map], context: "#{context}[:physical_table_map]") unless input[:physical_table_map].nil?
        Validators::LogicalTableMap.validate!(input[:logical_table_map], context: "#{context}[:logical_table_map]") unless input[:logical_table_map].nil?
        Hearth::Validator.validate!(input[:import_mode], ::String, context: "#{context}[:import_mode]")
        Validators::ColumnGroupList.validate!(input[:column_groups], context: "#{context}[:column_groups]") unless input[:column_groups].nil?
        Validators::FieldFolderMap.validate!(input[:field_folders], context: "#{context}[:field_folders]") unless input[:field_folders].nil?
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Validators::RowLevelPermissionDataSet.validate!(input[:row_level_permission_data_set], context: "#{context}[:row_level_permission_data_set]") unless input[:row_level_permission_data_set].nil?
        Validators::RowLevelPermissionTagConfiguration.validate!(input[:row_level_permission_tag_configuration], context: "#{context}[:row_level_permission_tag_configuration]") unless input[:row_level_permission_tag_configuration].nil?
        Validators::ColumnLevelPermissionRuleList.validate!(input[:column_level_permission_rules], context: "#{context}[:column_level_permission_rules]") unless input[:column_level_permission_rules].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::DataSetUsageConfiguration.validate!(input[:data_set_usage_configuration], context: "#{context}[:data_set_usage_configuration]") unless input[:data_set_usage_configuration].nil?
      end
    end

    class CreateDataSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSetOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:ingestion_arn], ::String, context: "#{context}[:ingestion_arn]")
        Hearth::Validator.validate!(input[:ingestion_id], ::String, context: "#{context}[:ingestion_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class CreateDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::DataSourceParameters.validate!(input[:data_source_parameters], context: "#{context}[:data_source_parameters]") unless input[:data_source_parameters].nil?
        Validators::DataSourceCredentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Validators::VpcConnectionProperties.validate!(input[:vpc_connection_properties], context: "#{context}[:vpc_connection_properties]") unless input[:vpc_connection_properties].nil?
        Validators::SslProperties.validate!(input[:ssl_properties], context: "#{context}[:ssl_properties]") unless input[:ssl_properties].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSourceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:creation_status], ::String, context: "#{context}[:creation_status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class CreateFolderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFolderInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:folder_type], ::String, context: "#{context}[:folder_type]")
        Hearth::Validator.validate!(input[:parent_folder_arn], ::String, context: "#{context}[:parent_folder_arn]")
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFolderMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFolderMembershipInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        Hearth::Validator.validate!(input[:member_type], ::String, context: "#{context}[:member_type]")
      end
    end

    class CreateFolderMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFolderMembershipOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Validators::FolderMember.validate!(input[:folder_member], context: "#{context}[:folder_member]") unless input[:folder_member].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CreateFolderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFolderOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CreateGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class CreateGroupMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupMembershipInput, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class CreateGroupMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupMembershipOutput, context: context)
        Validators::GroupMember.validate!(input[:group_member], context: "#{context}[:group_member]") unless input[:group_member].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class CreateGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGroupOutput, context: context)
        Validators::Group.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class CreateIAMPolicyAssignmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIAMPolicyAssignmentInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:assignment_name], ::String, context: "#{context}[:assignment_name]")
        Hearth::Validator.validate!(input[:assignment_status], ::String, context: "#{context}[:assignment_status]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Validators::IdentityMap.validate!(input[:identities], context: "#{context}[:identities]") unless input[:identities].nil?
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class CreateIAMPolicyAssignmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIAMPolicyAssignmentOutput, context: context)
        Hearth::Validator.validate!(input[:assignment_name], ::String, context: "#{context}[:assignment_name]")
        Hearth::Validator.validate!(input[:assignment_id], ::String, context: "#{context}[:assignment_id]")
        Hearth::Validator.validate!(input[:assignment_status], ::String, context: "#{context}[:assignment_status]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Validators::IdentityMap.validate!(input[:identities], context: "#{context}[:identities]") unless input[:identities].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class CreateIngestionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIngestionInput, context: context)
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:ingestion_id], ::String, context: "#{context}[:ingestion_id]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:ingestion_type], ::String, context: "#{context}[:ingestion_type]")
      end
    end

    class CreateIngestionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIngestionOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:ingestion_id], ::String, context: "#{context}[:ingestion_id]")
        Hearth::Validator.validate!(input[:ingestion_status], ::String, context: "#{context}[:ingestion_status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class CreateNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:identity_store], ::String, context: "#{context}[:identity_store]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNamespaceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:capacity_region], ::String, context: "#{context}[:capacity_region]")
        Hearth::Validator.validate!(input[:creation_status], ::String, context: "#{context}[:creation_status]")
        Hearth::Validator.validate!(input[:identity_store], ::String, context: "#{context}[:identity_store]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class CreateTemplateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTemplateAliasInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
        Hearth::Validator.validate!(input[:template_version_number], ::Integer, context: "#{context}[:template_version_number]")
      end
    end

    class CreateTemplateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTemplateAliasOutput, context: context)
        Validators::TemplateAlias.validate!(input[:template_alias], context: "#{context}[:template_alias]") unless input[:template_alias].nil?
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CreateTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTemplateInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Validators::TemplateSourceEntity.validate!(input[:source_entity], context: "#{context}[:source_entity]") unless input[:source_entity].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:version_description], ::String, context: "#{context}[:version_description]")
      end
    end

    class CreateTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version_arn], ::String, context: "#{context}[:version_arn]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:creation_status], ::String, context: "#{context}[:creation_status]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CreateThemeAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThemeAliasInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
        Hearth::Validator.validate!(input[:theme_version_number], ::Integer, context: "#{context}[:theme_version_number]")
      end
    end

    class CreateThemeAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThemeAliasOutput, context: context)
        Validators::ThemeAlias.validate!(input[:theme_alias], context: "#{context}[:theme_alias]") unless input[:theme_alias].nil?
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CreateThemeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThemeInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:base_theme_id], ::String, context: "#{context}[:base_theme_id]")
        Hearth::Validator.validate!(input[:version_description], ::String, context: "#{context}[:version_description]")
        Validators::ThemeConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateThemeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThemeOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version_arn], ::String, context: "#{context}[:version_arn]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Hearth::Validator.validate!(input[:creation_status], ::String, context: "#{context}[:creation_status]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class CredentialPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CredentialPair, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        Validators::DataSourceParametersList.validate!(input[:alternate_data_source_parameters], context: "#{context}[:alternate_data_source_parameters]") unless input[:alternate_data_source_parameters].nil?
      end
    end

    class CustomSql
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomSql, context: context)
        Hearth::Validator.validate!(input[:data_source_arn], ::String, context: "#{context}[:data_source_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:sql_query], ::String, context: "#{context}[:sql_query]")
        Validators::InputColumnList.validate!(input[:columns], context: "#{context}[:columns]") unless input[:columns].nil?
      end
    end

    class Dashboard
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Dashboard, context: context)
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::DashboardVersion.validate!(input[:version], context: "#{context}[:version]") unless input[:version].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_published_time], ::Time, context: "#{context}[:last_published_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class DashboardError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashboardError, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DashboardErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DashboardError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DashboardPublishOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashboardPublishOptions, context: context)
        Validators::AdHocFilteringOption.validate!(input[:ad_hoc_filtering_option], context: "#{context}[:ad_hoc_filtering_option]") unless input[:ad_hoc_filtering_option].nil?
        Validators::ExportToCSVOption.validate!(input[:export_to_csv_option], context: "#{context}[:export_to_csv_option]") unless input[:export_to_csv_option].nil?
        Validators::SheetControlsOption.validate!(input[:sheet_controls_option], context: "#{context}[:sheet_controls_option]") unless input[:sheet_controls_option].nil?
      end
    end

    class DashboardSearchFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashboardSearchFilter, context: context)
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class DashboardSearchFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DashboardSearchFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DashboardSourceEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashboardSourceEntity, context: context)
        Validators::DashboardSourceTemplate.validate!(input[:source_template], context: "#{context}[:source_template]") unless input[:source_template].nil?
      end
    end

    class DashboardSourceTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashboardSourceTemplate, context: context)
        Validators::DataSetReferenceList.validate!(input[:data_set_references], context: "#{context}[:data_set_references]") unless input[:data_set_references].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DashboardSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashboardSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:published_version_number], ::Integer, context: "#{context}[:published_version_number]")
        Hearth::Validator.validate!(input[:last_published_time], ::Time, context: "#{context}[:last_published_time]")
      end
    end

    class DashboardSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DashboardSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DashboardVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashboardVersion, context: context)
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Validators::DashboardErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:source_entity_arn], ::String, context: "#{context}[:source_entity_arn]")
        Validators::DataSetArnsList.validate!(input[:data_set_arns], context: "#{context}[:data_set_arns]") unless input[:data_set_arns].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:theme_arn], ::String, context: "#{context}[:theme_arn]")
        Validators::SheetList.validate!(input[:sheets], context: "#{context}[:sheets]") unless input[:sheets].nil?
      end
    end

    class DashboardVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DashboardVersionSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:source_entity_arn], ::String, context: "#{context}[:source_entity_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class DashboardVersionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DashboardVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataColorPalette
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataColorPalette, context: context)
        Validators::ColorList.validate!(input[:colors], context: "#{context}[:colors]") unless input[:colors].nil?
        Validators::ColorList.validate!(input[:min_max_gradient], context: "#{context}[:min_max_gradient]") unless input[:min_max_gradient].nil?
        Hearth::Validator.validate!(input[:empty_fill_color], ::String, context: "#{context}[:empty_fill_color]")
      end
    end

    class DataSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSet, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Validators::PhysicalTableMap.validate!(input[:physical_table_map], context: "#{context}[:physical_table_map]") unless input[:physical_table_map].nil?
        Validators::LogicalTableMap.validate!(input[:logical_table_map], context: "#{context}[:logical_table_map]") unless input[:logical_table_map].nil?
        Validators::OutputColumnList.validate!(input[:output_columns], context: "#{context}[:output_columns]") unless input[:output_columns].nil?
        Hearth::Validator.validate!(input[:import_mode], ::String, context: "#{context}[:import_mode]")
        Hearth::Validator.validate!(input[:consumed_spice_capacity_in_bytes], ::Integer, context: "#{context}[:consumed_spice_capacity_in_bytes]")
        Validators::ColumnGroupList.validate!(input[:column_groups], context: "#{context}[:column_groups]") unless input[:column_groups].nil?
        Validators::FieldFolderMap.validate!(input[:field_folders], context: "#{context}[:field_folders]") unless input[:field_folders].nil?
        Validators::RowLevelPermissionDataSet.validate!(input[:row_level_permission_data_set], context: "#{context}[:row_level_permission_data_set]") unless input[:row_level_permission_data_set].nil?
        Validators::RowLevelPermissionTagConfiguration.validate!(input[:row_level_permission_tag_configuration], context: "#{context}[:row_level_permission_tag_configuration]") unless input[:row_level_permission_tag_configuration].nil?
        Validators::ColumnLevelPermissionRuleList.validate!(input[:column_level_permission_rules], context: "#{context}[:column_level_permission_rules]") unless input[:column_level_permission_rules].nil?
        Validators::DataSetUsageConfiguration.validate!(input[:data_set_usage_configuration], context: "#{context}[:data_set_usage_configuration]") unless input[:data_set_usage_configuration].nil?
      end
    end

    class DataSetArnsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DataSetConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSetConfiguration, context: context)
        Hearth::Validator.validate!(input[:placeholder], ::String, context: "#{context}[:placeholder]")
        Validators::DataSetSchema.validate!(input[:data_set_schema], context: "#{context}[:data_set_schema]") unless input[:data_set_schema].nil?
        Validators::ColumnGroupSchemaList.validate!(input[:column_group_schema_list], context: "#{context}[:column_group_schema_list]") unless input[:column_group_schema_list].nil?
      end
    end

    class DataSetConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataSetConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataSetReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSetReference, context: context)
        Hearth::Validator.validate!(input[:data_set_placeholder], ::String, context: "#{context}[:data_set_placeholder]")
        Hearth::Validator.validate!(input[:data_set_arn], ::String, context: "#{context}[:data_set_arn]")
      end
    end

    class DataSetReferenceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataSetReference.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataSetSchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSetSchema, context: context)
        Validators::ColumnSchemaList.validate!(input[:column_schema_list], context: "#{context}[:column_schema_list]") unless input[:column_schema_list].nil?
      end
    end

    class DataSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSetSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:import_mode], ::String, context: "#{context}[:import_mode]")
        Validators::RowLevelPermissionDataSet.validate!(input[:row_level_permission_data_set], context: "#{context}[:row_level_permission_data_set]") unless input[:row_level_permission_data_set].nil?
        Hearth::Validator.validate!(input[:row_level_permission_tag_configuration_applied], ::TrueClass, ::FalseClass, context: "#{context}[:row_level_permission_tag_configuration_applied]")
        Hearth::Validator.validate!(input[:column_level_permission_rules_applied], ::TrueClass, ::FalseClass, context: "#{context}[:column_level_permission_rules_applied]")
      end
    end

    class DataSetSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataSetUsageConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSetUsageConfiguration, context: context)
        Hearth::Validator.validate!(input[:disable_use_as_direct_query_source], ::TrueClass, ::FalseClass, context: "#{context}[:disable_use_as_direct_query_source]")
        Hearth::Validator.validate!(input[:disable_use_as_imported_source], ::TrueClass, ::FalseClass, context: "#{context}[:disable_use_as_imported_source]")
      end
    end

    class DataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSource, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Validators::DataSourceParameters.validate!(input[:data_source_parameters], context: "#{context}[:data_source_parameters]") unless input[:data_source_parameters].nil?
        Validators::DataSourceParametersList.validate!(input[:alternate_data_source_parameters], context: "#{context}[:alternate_data_source_parameters]") unless input[:alternate_data_source_parameters].nil?
        Validators::VpcConnectionProperties.validate!(input[:vpc_connection_properties], context: "#{context}[:vpc_connection_properties]") unless input[:vpc_connection_properties].nil?
        Validators::SslProperties.validate!(input[:ssl_properties], context: "#{context}[:ssl_properties]") unless input[:ssl_properties].nil?
        Validators::DataSourceErrorInfo.validate!(input[:error_info], context: "#{context}[:error_info]") unless input[:error_info].nil?
      end
    end

    class DataSourceCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSourceCredentials, context: context)
        Validators::CredentialPair.validate!(input[:credential_pair], context: "#{context}[:credential_pair]") unless input[:credential_pair].nil?
        Hearth::Validator.validate!(input[:copy_source_arn], ::String, context: "#{context}[:copy_source_arn]")
      end
    end

    class DataSourceErrorInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSourceErrorInfo, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DataSourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataSourceParameters
      def self.validate!(input, context:)
        case input
        when Types::DataSourceParameters::AmazonElasticsearchParameters
          Validators::AmazonElasticsearchParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::AthenaParameters
          Validators::AthenaParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::AuroraParameters
          Validators::AuroraParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::AuroraPostgreSqlParameters
          Validators::AuroraPostgreSqlParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::AwsIotAnalyticsParameters
          Validators::AwsIotAnalyticsParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::JiraParameters
          Validators::JiraParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::MariaDbParameters
          Validators::MariaDbParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::MySqlParameters
          Validators::MySqlParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::OracleParameters
          Validators::OracleParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::PostgreSqlParameters
          Validators::PostgreSqlParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::PrestoParameters
          Validators::PrestoParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::RdsParameters
          Validators::RdsParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::RedshiftParameters
          Validators::RedshiftParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::S3Parameters
          Validators::S3Parameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::ServiceNowParameters
          Validators::ServiceNowParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::SnowflakeParameters
          Validators::SnowflakeParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::SparkParameters
          Validators::SparkParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::SqlServerParameters
          Validators::SqlServerParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::TeradataParameters
          Validators::TeradataParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::TwitterParameters
          Validators::TwitterParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::AmazonOpenSearchParameters
          Validators::AmazonOpenSearchParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DataSourceParameters::ExasolParameters
          Validators::ExasolParameters.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::DataSourceParameters, got #{input.class}."
        end
      end

      class AmazonElasticsearchParameters
        def self.validate!(input, context:)
          Validators::AmazonElasticsearchParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class AthenaParameters
        def self.validate!(input, context:)
          Validators::AthenaParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class AuroraParameters
        def self.validate!(input, context:)
          Validators::AuroraParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class AuroraPostgreSqlParameters
        def self.validate!(input, context:)
          Validators::AuroraPostgreSqlParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class AwsIotAnalyticsParameters
        def self.validate!(input, context:)
          Validators::AwsIotAnalyticsParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class JiraParameters
        def self.validate!(input, context:)
          Validators::JiraParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class MariaDbParameters
        def self.validate!(input, context:)
          Validators::MariaDbParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class MySqlParameters
        def self.validate!(input, context:)
          Validators::MySqlParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class OracleParameters
        def self.validate!(input, context:)
          Validators::OracleParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class PostgreSqlParameters
        def self.validate!(input, context:)
          Validators::PostgreSqlParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class PrestoParameters
        def self.validate!(input, context:)
          Validators::PrestoParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class RdsParameters
        def self.validate!(input, context:)
          Validators::RdsParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class RedshiftParameters
        def self.validate!(input, context:)
          Validators::RedshiftParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class S3Parameters
        def self.validate!(input, context:)
          Validators::S3Parameters.validate!(input, context: context) unless input.nil?
        end
      end

      class ServiceNowParameters
        def self.validate!(input, context:)
          Validators::ServiceNowParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class SnowflakeParameters
        def self.validate!(input, context:)
          Validators::SnowflakeParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class SparkParameters
        def self.validate!(input, context:)
          Validators::SparkParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class SqlServerParameters
        def self.validate!(input, context:)
          Validators::SqlServerParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class TeradataParameters
        def self.validate!(input, context:)
          Validators::TeradataParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class TwitterParameters
        def self.validate!(input, context:)
          Validators::TwitterParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class AmazonOpenSearchParameters
        def self.validate!(input, context:)
          Validators::AmazonOpenSearchParameters.validate!(input, context: context) unless input.nil?
        end
      end

      class ExasolParameters
        def self.validate!(input, context:)
          Validators::ExasolParameters.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class DataSourceParametersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataSourceParameters.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DateTimeParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DateTimeParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::TimestampList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class DateTimeParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DateTimeParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DecimalParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecimalParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::DoubleList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class DecimalParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DecimalParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteAccountCustomizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccountCustomizationInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class DeleteAccountCustomizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccountCustomizationOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DeleteAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAnalysisInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
        Hearth::Validator.validate!(input[:recovery_window_in_days], ::Integer, context: "#{context}[:recovery_window_in_days]")
        Hearth::Validator.validate!(input[:force_delete_without_recovery], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete_without_recovery]")
      end
    end

    class DeleteAnalysisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAnalysisOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
        Hearth::Validator.validate!(input[:deletion_time], ::Time, context: "#{context}[:deletion_time]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DeleteDashboardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDashboardInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class DeleteDashboardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDashboardOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DeleteDataSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataSetInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
      end
    end

    class DeleteDataSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataSetOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DeleteDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
      end
    end

    class DeleteDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataSourceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DeleteFolderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFolderInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
      end
    end

    class DeleteFolderMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFolderMembershipInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        Hearth::Validator.validate!(input[:member_type], ::String, context: "#{context}[:member_type]")
      end
    end

    class DeleteFolderMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFolderMembershipOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DeleteFolderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFolderOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DeleteGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class DeleteGroupMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupMembershipInput, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class DeleteGroupMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupMembershipOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DeleteGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGroupOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DeleteIAMPolicyAssignmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIAMPolicyAssignmentInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:assignment_name], ::String, context: "#{context}[:assignment_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class DeleteIAMPolicyAssignmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIAMPolicyAssignmentOutput, context: context)
        Hearth::Validator.validate!(input[:assignment_name], ::String, context: "#{context}[:assignment_name]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DeleteNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class DeleteNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNamespaceOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DeleteTemplateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTemplateAliasInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
      end
    end

    class DeleteTemplateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTemplateAliasOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DeleteTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTemplateInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class DeleteTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DeleteThemeAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThemeAliasInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
      end
    end

    class DeleteThemeAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThemeAliasOutput, context: context)
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
      end
    end

    class DeleteThemeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThemeInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class DeleteThemeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThemeOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
      end
    end

    class DeleteUserByPrincipalIdInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserByPrincipalIdInput, context: context)
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class DeleteUserByPrincipalIdOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserByPrincipalIdOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DeleteUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class DeleteUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DescribeAccountCustomizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountCustomizationInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:resolved], ::TrueClass, ::FalseClass, context: "#{context}[:resolved]")
      end
    end

    class DescribeAccountCustomizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountCustomizationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Validators::AccountCustomization.validate!(input[:account_customization], context: "#{context}[:account_customization]") unless input[:account_customization].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DescribeAccountSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountSettingsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
      end
    end

    class DescribeAccountSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAccountSettingsOutput, context: context)
        Validators::AccountSettings.validate!(input[:account_settings], context: "#{context}[:account_settings]") unless input[:account_settings].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DescribeAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAnalysisInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
      end
    end

    class DescribeAnalysisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAnalysisOutput, context: context)
        Validators::Analysis.validate!(input[:analysis], context: "#{context}[:analysis]") unless input[:analysis].nil?
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DescribeAnalysisPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAnalysisPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
      end
    end

    class DescribeAnalysisPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAnalysisPermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
        Hearth::Validator.validate!(input[:analysis_arn], ::String, context: "#{context}[:analysis_arn]")
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DescribeDashboardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDashboardInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
      end
    end

    class DescribeDashboardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDashboardOutput, context: context)
        Validators::Dashboard.validate!(input[:dashboard], context: "#{context}[:dashboard]") unless input[:dashboard].nil?
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DescribeDashboardPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDashboardPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
      end
    end

    class DescribeDashboardPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDashboardPermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:dashboard_arn], ::String, context: "#{context}[:dashboard_arn]")
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Validators::LinkSharingConfiguration.validate!(input[:link_sharing_configuration], context: "#{context}[:link_sharing_configuration]") unless input[:link_sharing_configuration].nil?
      end
    end

    class DescribeDataSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSetInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
      end
    end

    class DescribeDataSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSetOutput, context: context)
        Validators::DataSet.validate!(input[:data_set], context: "#{context}[:data_set]") unless input[:data_set].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DescribeDataSetPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSetPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
      end
    end

    class DescribeDataSetPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSetPermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:data_set_arn], ::String, context: "#{context}[:data_set_arn]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DescribeDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
      end
    end

    class DescribeDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSourceOutput, context: context)
        Validators::DataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DescribeDataSourcePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSourcePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
      end
    end

    class DescribeDataSourcePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSourcePermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:data_source_arn], ::String, context: "#{context}[:data_source_arn]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DescribeFolderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFolderInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
      end
    end

    class DescribeFolderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFolderOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Validators::Folder.validate!(input[:folder], context: "#{context}[:folder]") unless input[:folder].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DescribeFolderPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFolderPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
      end
    end

    class DescribeFolderPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFolderPermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DescribeFolderResolvedPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFolderResolvedPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
      end
    end

    class DescribeFolderResolvedPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFolderResolvedPermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DescribeGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class DescribeGroupMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGroupMembershipInput, context: context)
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class DescribeGroupMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGroupMembershipOutput, context: context)
        Validators::GroupMember.validate!(input[:group_member], context: "#{context}[:group_member]") unless input[:group_member].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DescribeGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGroupOutput, context: context)
        Validators::Group.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DescribeIAMPolicyAssignmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIAMPolicyAssignmentInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:assignment_name], ::String, context: "#{context}[:assignment_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class DescribeIAMPolicyAssignmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIAMPolicyAssignmentOutput, context: context)
        Validators::IAMPolicyAssignment.validate!(input[:iam_policy_assignment], context: "#{context}[:iam_policy_assignment]") unless input[:iam_policy_assignment].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DescribeIngestionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIngestionInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:ingestion_id], ::String, context: "#{context}[:ingestion_id]")
      end
    end

    class DescribeIngestionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIngestionOutput, context: context)
        Validators::Ingestion.validate!(input[:ingestion], context: "#{context}[:ingestion]") unless input[:ingestion].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DescribeIpRestrictionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIpRestrictionInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
      end
    end

    class DescribeIpRestrictionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIpRestrictionOutput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Validators::IpRestrictionRuleMap.validate!(input[:ip_restriction_rule_map], context: "#{context}[:ip_restriction_rule_map]") unless input[:ip_restriction_rule_map].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DescribeNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class DescribeNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNamespaceOutput, context: context)
        Validators::NamespaceInfoV2.validate!(input[:namespace], context: "#{context}[:namespace]") unless input[:namespace].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DescribeTemplateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTemplateAliasInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
      end
    end

    class DescribeTemplateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTemplateAliasOutput, context: context)
        Validators::TemplateAlias.validate!(input[:template_alias], context: "#{context}[:template_alias]") unless input[:template_alias].nil?
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DescribeTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTemplateInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
      end
    end

    class DescribeTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTemplateOutput, context: context)
        Validators::Template.validate!(input[:template], context: "#{context}[:template]") unless input[:template].nil?
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DescribeTemplatePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTemplatePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
      end
    end

    class DescribeTemplatePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTemplatePermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:template_arn], ::String, context: "#{context}[:template_arn]")
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DescribeThemeAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThemeAliasInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
      end
    end

    class DescribeThemeAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThemeAliasOutput, context: context)
        Validators::ThemeAlias.validate!(input[:theme_alias], context: "#{context}[:theme_alias]") unless input[:theme_alias].nil?
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DescribeThemeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThemeInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
      end
    end

    class DescribeThemeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThemeOutput, context: context)
        Validators::Theme.validate!(input[:theme], context: "#{context}[:theme]") unless input[:theme].nil?
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DescribeThemePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThemePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
      end
    end

    class DescribeThemePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThemePermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Hearth::Validator.validate!(input[:theme_arn], ::String, context: "#{context}[:theme_arn]")
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DescribeUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class DescribeUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserOutput, context: context)
        Validators::User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class DomainNotWhitelistedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainNotWhitelistedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class DoubleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Float, context: "#{context}[#{index}]")
        end
      end
    end

    class ErrorInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorInfo, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ExasolParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExasolParameters, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
      end
    end

    class ExportToCSVOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportToCSVOption, context: context)
        Hearth::Validator.validate!(input[:availability_status], ::String, context: "#{context}[:availability_status]")
      end
    end

    class FieldFolder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldFolder, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::FolderColumnList.validate!(input[:columns], context: "#{context}[:columns]") unless input[:columns].nil?
      end
    end

    class FieldFolderMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::FieldFolder.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class FilterOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterOperation, context: context)
        Hearth::Validator.validate!(input[:condition_expression], ::String, context: "#{context}[:condition_expression]")
      end
    end

    class Folder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Folder, context: context)
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:folder_type], ::String, context: "#{context}[:folder_type]")
        Validators::Path.validate!(input[:folder_path], context: "#{context}[:folder_path]") unless input[:folder_path].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class FolderColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FolderMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FolderMember, context: context)
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        Hearth::Validator.validate!(input[:member_type], ::String, context: "#{context}[:member_type]")
      end
    end

    class FolderMemberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MemberIdArnPair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FolderSearchFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FolderSearchFilter, context: context)
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class FolderSearchFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FolderSearchFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FolderSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FolderSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:folder_type], ::String, context: "#{context}[:folder_type]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class FolderSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FolderSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GenerateEmbedUrlForAnonymousUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateEmbedUrlForAnonymousUserInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:session_lifetime_in_minutes], ::Integer, context: "#{context}[:session_lifetime_in_minutes]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Validators::SessionTagList.validate!(input[:session_tags], context: "#{context}[:session_tags]") unless input[:session_tags].nil?
        Validators::ArnList.validate!(input[:authorized_resource_arns], context: "#{context}[:authorized_resource_arns]") unless input[:authorized_resource_arns].nil?
        Validators::AnonymousUserEmbeddingExperienceConfiguration.validate!(input[:experience_configuration], context: "#{context}[:experience_configuration]") unless input[:experience_configuration].nil?
      end
    end

    class GenerateEmbedUrlForAnonymousUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateEmbedUrlForAnonymousUserOutput, context: context)
        Hearth::Validator.validate!(input[:embed_url], ::String, context: "#{context}[:embed_url]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class GenerateEmbedUrlForRegisteredUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateEmbedUrlForRegisteredUserInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:session_lifetime_in_minutes], ::Integer, context: "#{context}[:session_lifetime_in_minutes]")
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Validators::RegisteredUserEmbeddingExperienceConfiguration.validate!(input[:experience_configuration], context: "#{context}[:experience_configuration]") unless input[:experience_configuration].nil?
      end
    end

    class GenerateEmbedUrlForRegisteredUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateEmbedUrlForRegisteredUserOutput, context: context)
        Hearth::Validator.validate!(input[:embed_url], ::String, context: "#{context}[:embed_url]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class GeoSpatialColumnGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeoSpatialColumnGroup, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:country_code], ::String, context: "#{context}[:country_code]")
        Validators::ColumnList.validate!(input[:columns], context: "#{context}[:columns]") unless input[:columns].nil?
      end
    end

    class GetDashboardEmbedUrlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDashboardEmbedUrlInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:session_lifetime_in_minutes], ::Integer, context: "#{context}[:session_lifetime_in_minutes]")
        Hearth::Validator.validate!(input[:undo_redo_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:undo_redo_disabled]")
        Hearth::Validator.validate!(input[:reset_disabled], ::TrueClass, ::FalseClass, context: "#{context}[:reset_disabled]")
        Hearth::Validator.validate!(input[:state_persistence_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:state_persistence_enabled]")
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Validators::AdditionalDashboardIdList.validate!(input[:additional_dashboard_ids], context: "#{context}[:additional_dashboard_ids]") unless input[:additional_dashboard_ids].nil?
      end
    end

    class GetDashboardEmbedUrlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDashboardEmbedUrlOutput, context: context)
        Hearth::Validator.validate!(input[:embed_url], ::String, context: "#{context}[:embed_url]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class GetSessionEmbedUrlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSessionEmbedUrlInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:entry_point], ::String, context: "#{context}[:entry_point]")
        Hearth::Validator.validate!(input[:session_lifetime_in_minutes], ::Integer, context: "#{context}[:session_lifetime_in_minutes]")
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
      end
    end

    class GetSessionEmbedUrlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSessionEmbedUrlOutput, context: context)
        Hearth::Validator.validate!(input[:embed_url], ::String, context: "#{context}[:embed_url]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class Group
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Group, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
      end
    end

    class GroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Group.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GroupMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupMember, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
      end
    end

    class GroupMemberList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GroupMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GroupSearchFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupSearchFilter, context: context)
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class GroupSearchFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GroupSearchFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GutterStyle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GutterStyle, context: context)
        Hearth::Validator.validate!(input[:show], ::TrueClass, ::FalseClass, context: "#{context}[:show]")
      end
    end

    class IAMPolicyAssignment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IAMPolicyAssignment, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:assignment_id], ::String, context: "#{context}[:assignment_id]")
        Hearth::Validator.validate!(input[:assignment_name], ::String, context: "#{context}[:assignment_name]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Validators::IdentityMap.validate!(input[:identities], context: "#{context}[:identities]") unless input[:identities].nil?
        Hearth::Validator.validate!(input[:assignment_status], ::String, context: "#{context}[:assignment_status]")
      end
    end

    class IAMPolicyAssignmentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IAMPolicyAssignmentSummary, context: context)
        Hearth::Validator.validate!(input[:assignment_name], ::String, context: "#{context}[:assignment_name]")
        Hearth::Validator.validate!(input[:assignment_status], ::String, context: "#{context}[:assignment_status]")
      end
    end

    class IAMPolicyAssignmentSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IAMPolicyAssignmentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IdentityMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::IdentityNameList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class IdentityNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IdentityTypeNotSupportedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityTypeNotSupportedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class Ingestion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ingestion, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:ingestion_id], ::String, context: "#{context}[:ingestion_id]")
        Hearth::Validator.validate!(input[:ingestion_status], ::String, context: "#{context}[:ingestion_status]")
        Validators::ErrorInfo.validate!(input[:error_info], context: "#{context}[:error_info]") unless input[:error_info].nil?
        Validators::RowInfo.validate!(input[:row_info], context: "#{context}[:row_info]") unless input[:row_info].nil?
        Validators::QueueInfo.validate!(input[:queue_info], context: "#{context}[:queue_info]") unless input[:queue_info].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:ingestion_time_in_seconds], ::Integer, context: "#{context}[:ingestion_time_in_seconds]")
        Hearth::Validator.validate!(input[:ingestion_size_in_bytes], ::Integer, context: "#{context}[:ingestion_size_in_bytes]")
        Hearth::Validator.validate!(input[:request_source], ::String, context: "#{context}[:request_source]")
        Hearth::Validator.validate!(input[:request_type], ::String, context: "#{context}[:request_type]")
      end
    end

    class Ingestions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Ingestion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InputColumn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputColumn, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class InputColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InputColumn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IntegerParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntegerParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::LongList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class IntegerParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IntegerParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class IpRestrictionRuleMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class JiraParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JiraParameters, context: context)
        Hearth::Validator.validate!(input[:site_base_url], ::String, context: "#{context}[:site_base_url]")
      end
    end

    class JoinInstruction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JoinInstruction, context: context)
        Hearth::Validator.validate!(input[:left_operand], ::String, context: "#{context}[:left_operand]")
        Hearth::Validator.validate!(input[:right_operand], ::String, context: "#{context}[:right_operand]")
        Validators::JoinKeyProperties.validate!(input[:left_join_key_properties], context: "#{context}[:left_join_key_properties]") unless input[:left_join_key_properties].nil?
        Validators::JoinKeyProperties.validate!(input[:right_join_key_properties], context: "#{context}[:right_join_key_properties]") unless input[:right_join_key_properties].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:on_clause], ::String, context: "#{context}[:on_clause]")
      end
    end

    class JoinKeyProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JoinKeyProperties, context: context)
        Hearth::Validator.validate!(input[:unique_key], ::TrueClass, ::FalseClass, context: "#{context}[:unique_key]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class LinkSharingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LinkSharingConfiguration, context: context)
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
      end
    end

    class ListAnalysesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnalysesInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAnalysesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnalysesOutput, context: context)
        Validators::AnalysisSummaryList.validate!(input[:analysis_summary_list], context: "#{context}[:analysis_summary_list]") unless input[:analysis_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ListDashboardVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDashboardVersionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDashboardVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDashboardVersionsOutput, context: context)
        Validators::DashboardVersionSummaryList.validate!(input[:dashboard_version_summary_list], context: "#{context}[:dashboard_version_summary_list]") unless input[:dashboard_version_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ListDashboardsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDashboardsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDashboardsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDashboardsOutput, context: context)
        Validators::DashboardSummaryList.validate!(input[:dashboard_summary_list], context: "#{context}[:dashboard_summary_list]") unless input[:dashboard_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ListDataSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSetsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDataSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSetsOutput, context: context)
        Validators::DataSetSummaryList.validate!(input[:data_set_summaries], context: "#{context}[:data_set_summaries]") unless input[:data_set_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class ListDataSourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSourcesInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDataSourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSourcesOutput, context: context)
        Validators::DataSourceList.validate!(input[:data_sources], context: "#{context}[:data_sources]") unless input[:data_sources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class ListFolderMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFolderMembersInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFolderMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFolderMembersOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Validators::FolderMemberList.validate!(input[:folder_member_list], context: "#{context}[:folder_member_list]") unless input[:folder_member_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ListFoldersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFoldersInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFoldersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFoldersOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Validators::FolderSummaryList.validate!(input[:folder_summary_list], context: "#{context}[:folder_summary_list]") unless input[:folder_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ListGroupMembershipsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupMembershipsInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class ListGroupMembershipsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupMembershipsOutput, context: context)
        Validators::GroupMemberList.validate!(input[:group_member_list], context: "#{context}[:group_member_list]") unless input[:group_member_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class ListGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class ListGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsOutput, context: context)
        Validators::GroupList.validate!(input[:group_list], context: "#{context}[:group_list]") unless input[:group_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class ListIAMPolicyAssignmentsForUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIAMPolicyAssignmentsForUserInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class ListIAMPolicyAssignmentsForUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIAMPolicyAssignmentsForUserOutput, context: context)
        Validators::ActiveIAMPolicyAssignmentList.validate!(input[:active_assignments], context: "#{context}[:active_assignments]") unless input[:active_assignments].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class ListIAMPolicyAssignmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIAMPolicyAssignmentsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:assignment_status], ::String, context: "#{context}[:assignment_status]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListIAMPolicyAssignmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIAMPolicyAssignmentsOutput, context: context)
        Validators::IAMPolicyAssignmentSummaryList.validate!(input[:iam_policy_assignments], context: "#{context}[:iam_policy_assignments]") unless input[:iam_policy_assignments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class ListIngestionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIngestionsInput, context: context)
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListIngestionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIngestionsOutput, context: context)
        Validators::Ingestions.validate!(input[:ingestions], context: "#{context}[:ingestions]") unless input[:ingestions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class ListNamespacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNamespacesInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListNamespacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNamespacesOutput, context: context)
        Validators::Namespaces.validate!(input[:namespaces], context: "#{context}[:namespaces]") unless input[:namespaces].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class ListTemplateAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTemplateAliasesInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTemplateAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTemplateAliasesOutput, context: context)
        Validators::TemplateAliasList.validate!(input[:template_alias_list], context: "#{context}[:template_alias_list]") unless input[:template_alias_list].nil?
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTemplateVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTemplateVersionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTemplateVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTemplateVersionsOutput, context: context)
        Validators::TemplateVersionSummaryList.validate!(input[:template_version_summary_list], context: "#{context}[:template_version_summary_list]") unless input[:template_version_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ListTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTemplatesOutput, context: context)
        Validators::TemplateSummaryList.validate!(input[:template_summary_list], context: "#{context}[:template_summary_list]") unless input[:template_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ListThemeAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThemeAliasesInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListThemeAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThemeAliasesOutput, context: context)
        Validators::ThemeAliasList.validate!(input[:theme_alias_list], context: "#{context}[:theme_alias_list]") unless input[:theme_alias_list].nil?
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListThemeVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThemeVersionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListThemeVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThemeVersionsOutput, context: context)
        Validators::ThemeVersionSummaryList.validate!(input[:theme_version_summary_list], context: "#{context}[:theme_version_summary_list]") unless input[:theme_version_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ListThemesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThemesInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ListThemesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThemesOutput, context: context)
        Validators::ThemeSummaryList.validate!(input[:theme_summary_list], context: "#{context}[:theme_summary_list]") unless input[:theme_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ListUserGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserGroupsInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListUserGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserGroupsOutput, context: context)
        Validators::GroupList.validate!(input[:group_list], context: "#{context}[:group_list]") unless input[:group_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class ListUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class ListUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUsersOutput, context: context)
        Validators::UserList.validate!(input[:user_list], context: "#{context}[:user_list]") unless input[:user_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class LogicalTable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogicalTable, context: context)
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Validators::TransformOperationList.validate!(input[:data_transforms], context: "#{context}[:data_transforms]") unless input[:data_transforms].nil?
        Validators::LogicalTableSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
      end
    end

    class LogicalTableMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::LogicalTable.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class LogicalTableSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogicalTableSource, context: context)
        Validators::JoinInstruction.validate!(input[:join_instruction], context: "#{context}[:join_instruction]") unless input[:join_instruction].nil?
        Hearth::Validator.validate!(input[:physical_table_id], ::String, context: "#{context}[:physical_table_id]")
        Hearth::Validator.validate!(input[:data_set_arn], ::String, context: "#{context}[:data_set_arn]")
      end
    end

    class LongList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class ManifestFileLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManifestFileLocation, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class MarginStyle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MarginStyle, context: context)
        Hearth::Validator.validate!(input[:show], ::TrueClass, ::FalseClass, context: "#{context}[:show]")
      end
    end

    class MariaDbParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MariaDbParameters, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
      end
    end

    class MemberIdArnPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberIdArnPair, context: context)
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        Hearth::Validator.validate!(input[:member_arn], ::String, context: "#{context}[:member_arn]")
      end
    end

    class MySqlParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MySqlParameters, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
      end
    end

    class NamespaceError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NamespaceError, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NamespaceInfoV2
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NamespaceInfoV2, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:capacity_region], ::String, context: "#{context}[:capacity_region]")
        Hearth::Validator.validate!(input[:creation_status], ::String, context: "#{context}[:creation_status]")
        Hearth::Validator.validate!(input[:identity_store], ::String, context: "#{context}[:identity_store]")
        Validators::NamespaceError.validate!(input[:namespace_error], context: "#{context}[:namespace_error]") unless input[:namespace_error].nil?
      end
    end

    class Namespaces
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NamespaceInfoV2.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OracleParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OracleParameters, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
      end
    end

    class OutputColumn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputColumn, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class OutputColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OutputColumn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Parameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Parameters, context: context)
        Validators::StringParameterList.validate!(input[:string_parameters], context: "#{context}[:string_parameters]") unless input[:string_parameters].nil?
        Validators::IntegerParameterList.validate!(input[:integer_parameters], context: "#{context}[:integer_parameters]") unless input[:integer_parameters].nil?
        Validators::DecimalParameterList.validate!(input[:decimal_parameters], context: "#{context}[:decimal_parameters]") unless input[:decimal_parameters].nil?
        Validators::DateTimeParameterList.validate!(input[:date_time_parameters], context: "#{context}[:date_time_parameters]") unless input[:date_time_parameters].nil?
      end
    end

    class Path
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PhysicalTable
      def self.validate!(input, context:)
        case input
        when Types::PhysicalTable::RelationalTable
          Validators::RelationalTable.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::PhysicalTable::CustomSql
          Validators::CustomSql.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::PhysicalTable::S3Source
          Validators::S3Source.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::PhysicalTable, got #{input.class}."
        end
      end

      class RelationalTable
        def self.validate!(input, context:)
          Validators::RelationalTable.validate!(input, context: context) unless input.nil?
        end
      end

      class CustomSql
        def self.validate!(input, context:)
          Validators::CustomSql.validate!(input, context: context) unless input.nil?
        end
      end

      class S3Source
        def self.validate!(input, context:)
          Validators::S3Source.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class PhysicalTableMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::PhysicalTable.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class PostgreSqlParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostgreSqlParameters, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
      end
    end

    class PreconditionNotMetException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreconditionNotMetException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class PrestoParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrestoParameters, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:catalog], ::String, context: "#{context}[:catalog]")
      end
    end

    class PrincipalList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProjectOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectOperation, context: context)
        Validators::ProjectedColumnList.validate!(input[:projected_columns], context: "#{context}[:projected_columns]") unless input[:projected_columns].nil?
      end
    end

    class ProjectedColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class QueueInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueueInfo, context: context)
        Hearth::Validator.validate!(input[:waiting_on_ingestion], ::String, context: "#{context}[:waiting_on_ingestion]")
        Hearth::Validator.validate!(input[:queued_ingestion], ::String, context: "#{context}[:queued_ingestion]")
      end
    end

    class QuickSightUserNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QuickSightUserNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class RdsParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RdsParameters, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
      end
    end

    class RedshiftParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftParameters, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
      end
    end

    class RegisterUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterUserInput, context: context)
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:user_role], ::String, context: "#{context}[:user_role]")
        Hearth::Validator.validate!(input[:iam_arn], ::String, context: "#{context}[:iam_arn]")
        Hearth::Validator.validate!(input[:session_name], ::String, context: "#{context}[:session_name]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:custom_permissions_name], ::String, context: "#{context}[:custom_permissions_name]")
        Hearth::Validator.validate!(input[:external_login_federation_provider_type], ::String, context: "#{context}[:external_login_federation_provider_type]")
        Hearth::Validator.validate!(input[:custom_federation_provider_url], ::String, context: "#{context}[:custom_federation_provider_url]")
        Hearth::Validator.validate!(input[:external_login_id], ::String, context: "#{context}[:external_login_id]")
      end
    end

    class RegisterUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterUserOutput, context: context)
        Validators::User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
        Hearth::Validator.validate!(input[:user_invitation_url], ::String, context: "#{context}[:user_invitation_url]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class RegisteredUserDashboardEmbeddingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisteredUserDashboardEmbeddingConfiguration, context: context)
        Hearth::Validator.validate!(input[:initial_dashboard_id], ::String, context: "#{context}[:initial_dashboard_id]")
      end
    end

    class RegisteredUserEmbeddingExperienceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisteredUserEmbeddingExperienceConfiguration, context: context)
        Validators::RegisteredUserDashboardEmbeddingConfiguration.validate!(input[:dashboard], context: "#{context}[:dashboard]") unless input[:dashboard].nil?
        Validators::RegisteredUserQuickSightConsoleEmbeddingConfiguration.validate!(input[:quick_sight_console], context: "#{context}[:quick_sight_console]") unless input[:quick_sight_console].nil?
        Validators::RegisteredUserQSearchBarEmbeddingConfiguration.validate!(input[:q_search_bar], context: "#{context}[:q_search_bar]") unless input[:q_search_bar].nil?
      end
    end

    class RegisteredUserQSearchBarEmbeddingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisteredUserQSearchBarEmbeddingConfiguration, context: context)
        Hearth::Validator.validate!(input[:initial_topic_id], ::String, context: "#{context}[:initial_topic_id]")
      end
    end

    class RegisteredUserQuickSightConsoleEmbeddingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisteredUserQuickSightConsoleEmbeddingConfiguration, context: context)
        Hearth::Validator.validate!(input[:initial_path], ::String, context: "#{context}[:initial_path]")
      end
    end

    class RelationalTable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelationalTable, context: context)
        Hearth::Validator.validate!(input[:data_source_arn], ::String, context: "#{context}[:data_source_arn]")
        Hearth::Validator.validate!(input[:catalog], ::String, context: "#{context}[:catalog]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::InputColumnList.validate!(input[:input_columns], context: "#{context}[:input_columns]") unless input[:input_columns].nil?
      end
    end

    class RenameColumnOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenameColumnOperation, context: context)
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
        Hearth::Validator.validate!(input[:new_column_name], ::String, context: "#{context}[:new_column_name]")
      end
    end

    class ResourceExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class ResourcePermission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourcePermission, context: context)
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
        Validators::ActionList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
      end
    end

    class ResourcePermissionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourcePermission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class RestoreAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreAnalysisInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
      end
    end

    class RestoreAnalysisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreAnalysisOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class RowInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RowInfo, context: context)
        Hearth::Validator.validate!(input[:rows_ingested], ::Integer, context: "#{context}[:rows_ingested]")
        Hearth::Validator.validate!(input[:rows_dropped], ::Integer, context: "#{context}[:rows_dropped]")
        Hearth::Validator.validate!(input[:total_rows_in_dataset], ::Integer, context: "#{context}[:total_rows_in_dataset]")
      end
    end

    class RowLevelPermissionDataSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RowLevelPermissionDataSet, context: context)
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:permission_policy], ::String, context: "#{context}[:permission_policy]")
        Hearth::Validator.validate!(input[:format_version], ::String, context: "#{context}[:format_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class RowLevelPermissionTagConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RowLevelPermissionTagConfiguration, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::RowLevelPermissionTagRuleList.validate!(input[:tag_rules], context: "#{context}[:tag_rules]") unless input[:tag_rules].nil?
      end
    end

    class RowLevelPermissionTagRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RowLevelPermissionTagRule, context: context)
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
        Hearth::Validator.validate!(input[:tag_multi_value_delimiter], ::String, context: "#{context}[:tag_multi_value_delimiter]")
        Hearth::Validator.validate!(input[:match_all_value], ::String, context: "#{context}[:match_all_value]")
      end
    end

    class RowLevelPermissionTagRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RowLevelPermissionTagRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3Parameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Parameters, context: context)
        Validators::ManifestFileLocation.validate!(input[:manifest_file_location], context: "#{context}[:manifest_file_location]") unless input[:manifest_file_location].nil?
      end
    end

    class S3Source
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Source, context: context)
        Hearth::Validator.validate!(input[:data_source_arn], ::String, context: "#{context}[:data_source_arn]")
        Validators::UploadSettings.validate!(input[:upload_settings], context: "#{context}[:upload_settings]") unless input[:upload_settings].nil?
        Validators::InputColumnList.validate!(input[:input_columns], context: "#{context}[:input_columns]") unless input[:input_columns].nil?
      end
    end

    class SearchAnalysesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchAnalysesInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Validators::AnalysisSearchFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class SearchAnalysesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchAnalysesOutput, context: context)
        Validators::AnalysisSummaryList.validate!(input[:analysis_summary_list], context: "#{context}[:analysis_summary_list]") unless input[:analysis_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class SearchDashboardsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchDashboardsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Validators::DashboardSearchFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class SearchDashboardsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchDashboardsOutput, context: context)
        Validators::DashboardSummaryList.validate!(input[:dashboard_summary_list], context: "#{context}[:dashboard_summary_list]") unless input[:dashboard_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class SearchFoldersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchFoldersInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Validators::FolderSearchFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class SearchFoldersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchFoldersOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Validators::FolderSummaryList.validate!(input[:folder_summary_list], context: "#{context}[:folder_summary_list]") unless input[:folder_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class SearchGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchGroupsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Validators::GroupSearchFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class SearchGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchGroupsOutput, context: context)
        Validators::GroupList.validate!(input[:group_list], context: "#{context}[:group_list]") unless input[:group_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class ServiceNowParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceNowParameters, context: context)
        Hearth::Validator.validate!(input[:site_base_url], ::String, context: "#{context}[:site_base_url]")
      end
    end

    class SessionLifetimeInMinutesInvalidException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SessionLifetimeInMinutesInvalidException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class SessionTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SessionTag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SessionTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SessionTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Sheet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Sheet, context: context)
        Hearth::Validator.validate!(input[:sheet_id], ::String, context: "#{context}[:sheet_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class SheetControlsOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SheetControlsOption, context: context)
        Hearth::Validator.validate!(input[:visibility_state], ::String, context: "#{context}[:visibility_state]")
      end
    end

    class SheetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Sheet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SheetStyle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SheetStyle, context: context)
        Validators::TileStyle.validate!(input[:tile], context: "#{context}[:tile]") unless input[:tile].nil?
        Validators::TileLayoutStyle.validate!(input[:tile_layout], context: "#{context}[:tile_layout]") unless input[:tile_layout].nil?
      end
    end

    class SnowflakeParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnowflakeParameters, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:warehouse], ::String, context: "#{context}[:warehouse]")
      end
    end

    class SparkParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SparkParameters, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
      end
    end

    class SqlServerParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlServerParameters, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
      end
    end

    class SslProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SslProperties, context: context)
        Hearth::Validator.validate!(input[:disable_ssl], ::TrueClass, ::FalseClass, context: "#{context}[:disable_ssl]")
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StringParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StringParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::StringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class StringParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StringParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagColumnOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagColumnOperation, context: context)
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
        Validators::ColumnTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class Template
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Template, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::TemplateVersion.validate!(input[:version], context: "#{context}[:version]") unless input[:version].nil?
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class TemplateAlias
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateAlias, context: context)
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:template_version_number], ::Integer, context: "#{context}[:template_version_number]")
      end
    end

    class TemplateAliasList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TemplateAlias.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TemplateError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateError, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TemplateErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TemplateError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TemplateSourceAnalysis
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateSourceAnalysis, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::DataSetReferenceList.validate!(input[:data_set_references], context: "#{context}[:data_set_references]") unless input[:data_set_references].nil?
      end
    end

    class TemplateSourceEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateSourceEntity, context: context)
        Validators::TemplateSourceAnalysis.validate!(input[:source_analysis], context: "#{context}[:source_analysis]") unless input[:source_analysis].nil?
        Validators::TemplateSourceTemplate.validate!(input[:source_template], context: "#{context}[:source_template]") unless input[:source_template].nil?
      end
    end

    class TemplateSourceTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateSourceTemplate, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class TemplateSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:latest_version_number], ::Integer, context: "#{context}[:latest_version_number]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class TemplateSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TemplateSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TemplateVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateVersion, context: context)
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Validators::TemplateErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::DataSetConfigurationList.validate!(input[:data_set_configurations], context: "#{context}[:data_set_configurations]") unless input[:data_set_configurations].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:source_entity_arn], ::String, context: "#{context}[:source_entity_arn]")
        Hearth::Validator.validate!(input[:theme_arn], ::String, context: "#{context}[:theme_arn]")
        Validators::SheetList.validate!(input[:sheets], context: "#{context}[:sheets]") unless input[:sheets].nil?
      end
    end

    class TemplateVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TemplateVersionSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class TemplateVersionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TemplateVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TeradataParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TeradataParameters, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
      end
    end

    class Theme
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Theme, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Validators::ThemeVersion.validate!(input[:version], context: "#{context}[:version]") unless input[:version].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ThemeAlias
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThemeAlias, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
        Hearth::Validator.validate!(input[:theme_version_number], ::Integer, context: "#{context}[:theme_version_number]")
      end
    end

    class ThemeAliasList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ThemeAlias.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThemeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThemeConfiguration, context: context)
        Validators::DataColorPalette.validate!(input[:data_color_palette], context: "#{context}[:data_color_palette]") unless input[:data_color_palette].nil?
        Validators::UIColorPalette.validate!(input[:ui_color_palette], context: "#{context}[:ui_color_palette]") unless input[:ui_color_palette].nil?
        Validators::SheetStyle.validate!(input[:sheet], context: "#{context}[:sheet]") unless input[:sheet].nil?
      end
    end

    class ThemeError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThemeError, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ThemeErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ThemeError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThemeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThemeSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Hearth::Validator.validate!(input[:latest_version_number], ::Integer, context: "#{context}[:latest_version_number]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class ThemeSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ThemeSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThemeVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThemeVersion, context: context)
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:base_theme_id], ::String, context: "#{context}[:base_theme_id]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Validators::ThemeConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Validators::ThemeErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ThemeVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThemeVersionSummary, context: context)
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ThemeVersionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ThemeVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class TileLayoutStyle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TileLayoutStyle, context: context)
        Validators::GutterStyle.validate!(input[:gutter], context: "#{context}[:gutter]") unless input[:gutter].nil?
        Validators::MarginStyle.validate!(input[:margin], context: "#{context}[:margin]") unless input[:margin].nil?
      end
    end

    class TileStyle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TileStyle, context: context)
        Validators::BorderStyle.validate!(input[:border], context: "#{context}[:border]") unless input[:border].nil?
      end
    end

    class TimestampList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Time, context: "#{context}[#{index}]")
        end
      end
    end

    class TransformOperation
      def self.validate!(input, context:)
        case input
        when Types::TransformOperation::ProjectOperation
          Validators::ProjectOperation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::TransformOperation::FilterOperation
          Validators::FilterOperation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::TransformOperation::CreateColumnsOperation
          Validators::CreateColumnsOperation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::TransformOperation::RenameColumnOperation
          Validators::RenameColumnOperation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::TransformOperation::CastColumnTypeOperation
          Validators::CastColumnTypeOperation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::TransformOperation::TagColumnOperation
          Validators::TagColumnOperation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::TransformOperation::UntagColumnOperation
          Validators::UntagColumnOperation.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::TransformOperation, got #{input.class}."
        end
      end

      class ProjectOperation
        def self.validate!(input, context:)
          Validators::ProjectOperation.validate!(input, context: context) unless input.nil?
        end
      end

      class FilterOperation
        def self.validate!(input, context:)
          Validators::FilterOperation.validate!(input, context: context) unless input.nil?
        end
      end

      class CreateColumnsOperation
        def self.validate!(input, context:)
          Validators::CreateColumnsOperation.validate!(input, context: context) unless input.nil?
        end
      end

      class RenameColumnOperation
        def self.validate!(input, context:)
          Validators::RenameColumnOperation.validate!(input, context: context) unless input.nil?
        end
      end

      class CastColumnTypeOperation
        def self.validate!(input, context:)
          Validators::CastColumnTypeOperation.validate!(input, context: context) unless input.nil?
        end
      end

      class TagColumnOperation
        def self.validate!(input, context:)
          Validators::TagColumnOperation.validate!(input, context: context) unless input.nil?
        end
      end

      class UntagColumnOperation
        def self.validate!(input, context:)
          Validators::UntagColumnOperation.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class TransformOperationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TransformOperation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TwitterParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TwitterParameters, context: context)
        Hearth::Validator.validate!(input[:query], ::String, context: "#{context}[:query]")
        Hearth::Validator.validate!(input[:max_rows], ::Integer, context: "#{context}[:max_rows]")
      end
    end

    class UIColorPalette
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UIColorPalette, context: context)
        Hearth::Validator.validate!(input[:primary_foreground], ::String, context: "#{context}[:primary_foreground]")
        Hearth::Validator.validate!(input[:primary_background], ::String, context: "#{context}[:primary_background]")
        Hearth::Validator.validate!(input[:secondary_foreground], ::String, context: "#{context}[:secondary_foreground]")
        Hearth::Validator.validate!(input[:secondary_background], ::String, context: "#{context}[:secondary_background]")
        Hearth::Validator.validate!(input[:accent], ::String, context: "#{context}[:accent]")
        Hearth::Validator.validate!(input[:accent_foreground], ::String, context: "#{context}[:accent_foreground]")
        Hearth::Validator.validate!(input[:danger], ::String, context: "#{context}[:danger]")
        Hearth::Validator.validate!(input[:danger_foreground], ::String, context: "#{context}[:danger_foreground]")
        Hearth::Validator.validate!(input[:warning], ::String, context: "#{context}[:warning]")
        Hearth::Validator.validate!(input[:warning_foreground], ::String, context: "#{context}[:warning_foreground]")
        Hearth::Validator.validate!(input[:success], ::String, context: "#{context}[:success]")
        Hearth::Validator.validate!(input[:success_foreground], ::String, context: "#{context}[:success_foreground]")
        Hearth::Validator.validate!(input[:dimension], ::String, context: "#{context}[:dimension]")
        Hearth::Validator.validate!(input[:dimension_foreground], ::String, context: "#{context}[:dimension_foreground]")
        Hearth::Validator.validate!(input[:measure], ::String, context: "#{context}[:measure]")
        Hearth::Validator.validate!(input[:measure_foreground], ::String, context: "#{context}[:measure_foreground]")
      end
    end

    class UnsupportedPricingPlanException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedPricingPlanException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UnsupportedUserEditionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedUserEditionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UntagColumnOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagColumnOperation, context: context)
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
        Validators::ColumnTagNames.validate!(input[:tag_names], context: "#{context}[:tag_names]") unless input[:tag_names].nil?
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class UpdateAccountCustomizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountCustomizationInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Validators::AccountCustomization.validate!(input[:account_customization], context: "#{context}[:account_customization]") unless input[:account_customization].nil?
      end
    end

    class UpdateAccountCustomizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountCustomizationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Validators::AccountCustomization.validate!(input[:account_customization], context: "#{context}[:account_customization]") unless input[:account_customization].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class UpdateAccountSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountSettingsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:default_namespace], ::String, context: "#{context}[:default_namespace]")
        Hearth::Validator.validate!(input[:notification_email], ::String, context: "#{context}[:notification_email]")
      end
    end

    class UpdateAccountSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class UpdateAnalysisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAnalysisInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Validators::AnalysisSourceEntity.validate!(input[:source_entity], context: "#{context}[:source_entity]") unless input[:source_entity].nil?
        Hearth::Validator.validate!(input[:theme_arn], ::String, context: "#{context}[:theme_arn]")
      end
    end

    class UpdateAnalysisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAnalysisOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
        Hearth::Validator.validate!(input[:update_status], ::String, context: "#{context}[:update_status]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UpdateAnalysisPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAnalysisPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
        Validators::UpdateResourcePermissionList.validate!(input[:grant_permissions], context: "#{context}[:grant_permissions]") unless input[:grant_permissions].nil?
        Validators::UpdateResourcePermissionList.validate!(input[:revoke_permissions], context: "#{context}[:revoke_permissions]") unless input[:revoke_permissions].nil?
      end
    end

    class UpdateAnalysisPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAnalysisPermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:analysis_arn], ::String, context: "#{context}[:analysis_arn]")
        Hearth::Validator.validate!(input[:analysis_id], ::String, context: "#{context}[:analysis_id]")
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class UpdateDashboardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDashboardInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::DashboardSourceEntity.validate!(input[:source_entity], context: "#{context}[:source_entity]") unless input[:source_entity].nil?
        Validators::Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:version_description], ::String, context: "#{context}[:version_description]")
        Validators::DashboardPublishOptions.validate!(input[:dashboard_publish_options], context: "#{context}[:dashboard_publish_options]") unless input[:dashboard_publish_options].nil?
        Hearth::Validator.validate!(input[:theme_arn], ::String, context: "#{context}[:theme_arn]")
      end
    end

    class UpdateDashboardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDashboardOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version_arn], ::String, context: "#{context}[:version_arn]")
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:creation_status], ::String, context: "#{context}[:creation_status]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UpdateDashboardPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDashboardPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Validators::UpdateResourcePermissionList.validate!(input[:grant_permissions], context: "#{context}[:grant_permissions]") unless input[:grant_permissions].nil?
        Validators::UpdateResourcePermissionList.validate!(input[:revoke_permissions], context: "#{context}[:revoke_permissions]") unless input[:revoke_permissions].nil?
        Validators::UpdateLinkPermissionList.validate!(input[:grant_link_permissions], context: "#{context}[:grant_link_permissions]") unless input[:grant_link_permissions].nil?
        Validators::UpdateLinkPermissionList.validate!(input[:revoke_link_permissions], context: "#{context}[:revoke_link_permissions]") unless input[:revoke_link_permissions].nil?
      end
    end

    class UpdateDashboardPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDashboardPermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:dashboard_arn], ::String, context: "#{context}[:dashboard_arn]")
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Validators::LinkSharingConfiguration.validate!(input[:link_sharing_configuration], context: "#{context}[:link_sharing_configuration]") unless input[:link_sharing_configuration].nil?
      end
    end

    class UpdateDashboardPublishedVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDashboardPublishedVersionInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class UpdateDashboardPublishedVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDashboardPublishedVersionOutput, context: context)
        Hearth::Validator.validate!(input[:dashboard_id], ::String, context: "#{context}[:dashboard_id]")
        Hearth::Validator.validate!(input[:dashboard_arn], ::String, context: "#{context}[:dashboard_arn]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UpdateDataSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSetInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::PhysicalTableMap.validate!(input[:physical_table_map], context: "#{context}[:physical_table_map]") unless input[:physical_table_map].nil?
        Validators::LogicalTableMap.validate!(input[:logical_table_map], context: "#{context}[:logical_table_map]") unless input[:logical_table_map].nil?
        Hearth::Validator.validate!(input[:import_mode], ::String, context: "#{context}[:import_mode]")
        Validators::ColumnGroupList.validate!(input[:column_groups], context: "#{context}[:column_groups]") unless input[:column_groups].nil?
        Validators::FieldFolderMap.validate!(input[:field_folders], context: "#{context}[:field_folders]") unless input[:field_folders].nil?
        Validators::RowLevelPermissionDataSet.validate!(input[:row_level_permission_data_set], context: "#{context}[:row_level_permission_data_set]") unless input[:row_level_permission_data_set].nil?
        Validators::RowLevelPermissionTagConfiguration.validate!(input[:row_level_permission_tag_configuration], context: "#{context}[:row_level_permission_tag_configuration]") unless input[:row_level_permission_tag_configuration].nil?
        Validators::ColumnLevelPermissionRuleList.validate!(input[:column_level_permission_rules], context: "#{context}[:column_level_permission_rules]") unless input[:column_level_permission_rules].nil?
        Validators::DataSetUsageConfiguration.validate!(input[:data_set_usage_configuration], context: "#{context}[:data_set_usage_configuration]") unless input[:data_set_usage_configuration].nil?
      end
    end

    class UpdateDataSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSetOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:ingestion_arn], ::String, context: "#{context}[:ingestion_arn]")
        Hearth::Validator.validate!(input[:ingestion_id], ::String, context: "#{context}[:ingestion_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class UpdateDataSetPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSetPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Validators::ResourcePermissionList.validate!(input[:grant_permissions], context: "#{context}[:grant_permissions]") unless input[:grant_permissions].nil?
        Validators::ResourcePermissionList.validate!(input[:revoke_permissions], context: "#{context}[:revoke_permissions]") unless input[:revoke_permissions].nil?
      end
    end

    class UpdateDataSetPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSetPermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:data_set_arn], ::String, context: "#{context}[:data_set_arn]")
        Hearth::Validator.validate!(input[:data_set_id], ::String, context: "#{context}[:data_set_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class UpdateDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::DataSourceParameters.validate!(input[:data_source_parameters], context: "#{context}[:data_source_parameters]") unless input[:data_source_parameters].nil?
        Validators::DataSourceCredentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
        Validators::VpcConnectionProperties.validate!(input[:vpc_connection_properties], context: "#{context}[:vpc_connection_properties]") unless input[:vpc_connection_properties].nil?
        Validators::SslProperties.validate!(input[:ssl_properties], context: "#{context}[:ssl_properties]") unless input[:ssl_properties].nil?
      end
    end

    class UpdateDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSourceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:update_status], ::String, context: "#{context}[:update_status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class UpdateDataSourcePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSourcePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Validators::ResourcePermissionList.validate!(input[:grant_permissions], context: "#{context}[:grant_permissions]") unless input[:grant_permissions].nil?
        Validators::ResourcePermissionList.validate!(input[:revoke_permissions], context: "#{context}[:revoke_permissions]") unless input[:revoke_permissions].nil?
      end
    end

    class UpdateDataSourcePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSourcePermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:data_source_arn], ::String, context: "#{context}[:data_source_arn]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class UpdateFolderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFolderInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateFolderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFolderOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UpdateFolderPermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFolderPermissionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Validators::ResourcePermissionList.validate!(input[:grant_permissions], context: "#{context}[:grant_permissions]") unless input[:grant_permissions].nil?
        Validators::ResourcePermissionList.validate!(input[:revoke_permissions], context: "#{context}[:revoke_permissions]") unless input[:revoke_permissions].nil?
      end
    end

    class UpdateFolderPermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFolderPermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:folder_id], ::String, context: "#{context}[:folder_id]")
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UpdateGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupInput, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
      end
    end

    class UpdateGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGroupOutput, context: context)
        Validators::Group.validate!(input[:group], context: "#{context}[:group]") unless input[:group].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class UpdateIAMPolicyAssignmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIAMPolicyAssignmentInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:assignment_name], ::String, context: "#{context}[:assignment_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:assignment_status], ::String, context: "#{context}[:assignment_status]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Validators::IdentityMap.validate!(input[:identities], context: "#{context}[:identities]") unless input[:identities].nil?
      end
    end

    class UpdateIAMPolicyAssignmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIAMPolicyAssignmentOutput, context: context)
        Hearth::Validator.validate!(input[:assignment_name], ::String, context: "#{context}[:assignment_name]")
        Hearth::Validator.validate!(input[:assignment_id], ::String, context: "#{context}[:assignment_id]")
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
        Validators::IdentityMap.validate!(input[:identities], context: "#{context}[:identities]") unless input[:identities].nil?
        Hearth::Validator.validate!(input[:assignment_status], ::String, context: "#{context}[:assignment_status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class UpdateIpRestrictionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIpRestrictionInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Validators::IpRestrictionRuleMap.validate!(input[:ip_restriction_rule_map], context: "#{context}[:ip_restriction_rule_map]") unless input[:ip_restriction_rule_map].nil?
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class UpdateIpRestrictionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIpRestrictionOutput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class UpdateLinkPermissionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourcePermission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdatePublicSharingSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePublicSharingSettingsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:public_sharing_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:public_sharing_enabled]")
      end
    end

    class UpdatePublicSharingSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePublicSharingSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class UpdateResourcePermissionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourcePermission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateTemplateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTemplateAliasInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
        Hearth::Validator.validate!(input[:template_version_number], ::Integer, context: "#{context}[:template_version_number]")
      end
    end

    class UpdateTemplateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTemplateAliasOutput, context: context)
        Validators::TemplateAlias.validate!(input[:template_alias], context: "#{context}[:template_alias]") unless input[:template_alias].nil?
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UpdateTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTemplateInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Validators::TemplateSourceEntity.validate!(input[:source_entity], context: "#{context}[:source_entity]") unless input[:source_entity].nil?
        Hearth::Validator.validate!(input[:version_description], ::String, context: "#{context}[:version_description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version_arn], ::String, context: "#{context}[:version_arn]")
        Hearth::Validator.validate!(input[:creation_status], ::String, context: "#{context}[:creation_status]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UpdateTemplatePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTemplatePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Validators::UpdateResourcePermissionList.validate!(input[:grant_permissions], context: "#{context}[:grant_permissions]") unless input[:grant_permissions].nil?
        Validators::UpdateResourcePermissionList.validate!(input[:revoke_permissions], context: "#{context}[:revoke_permissions]") unless input[:revoke_permissions].nil?
      end
    end

    class UpdateTemplatePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTemplatePermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:template_arn], ::String, context: "#{context}[:template_arn]")
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class UpdateThemeAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThemeAliasInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Hearth::Validator.validate!(input[:alias_name], ::String, context: "#{context}[:alias_name]")
        Hearth::Validator.validate!(input[:theme_version_number], ::Integer, context: "#{context}[:theme_version_number]")
      end
    end

    class UpdateThemeAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThemeAliasOutput, context: context)
        Validators::ThemeAlias.validate!(input[:theme_alias], context: "#{context}[:theme_alias]") unless input[:theme_alias].nil?
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UpdateThemeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThemeInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:base_theme_id], ::String, context: "#{context}[:base_theme_id]")
        Hearth::Validator.validate!(input[:version_description], ::String, context: "#{context}[:version_description]")
        Validators::ThemeConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class UpdateThemeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThemeOutput, context: context)
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:version_arn], ::String, context: "#{context}[:version_arn]")
        Hearth::Validator.validate!(input[:creation_status], ::String, context: "#{context}[:creation_status]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
      end
    end

    class UpdateThemePermissionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThemePermissionsInput, context: context)
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Validators::UpdateResourcePermissionList.validate!(input[:grant_permissions], context: "#{context}[:grant_permissions]") unless input[:grant_permissions].nil?
        Validators::UpdateResourcePermissionList.validate!(input[:revoke_permissions], context: "#{context}[:revoke_permissions]") unless input[:revoke_permissions].nil?
      end
    end

    class UpdateThemePermissionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThemePermissionsOutput, context: context)
        Hearth::Validator.validate!(input[:theme_id], ::String, context: "#{context}[:theme_id]")
        Hearth::Validator.validate!(input[:theme_arn], ::String, context: "#{context}[:theme_arn]")
        Validators::ResourcePermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class UpdateUserInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserInput, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:aws_account_id], ::String, context: "#{context}[:aws_account_id]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:custom_permissions_name], ::String, context: "#{context}[:custom_permissions_name]")
        Hearth::Validator.validate!(input[:unapply_custom_permissions], ::TrueClass, ::FalseClass, context: "#{context}[:unapply_custom_permissions]")
        Hearth::Validator.validate!(input[:external_login_federation_provider_type], ::String, context: "#{context}[:external_login_federation_provider_type]")
        Hearth::Validator.validate!(input[:custom_federation_provider_url], ::String, context: "#{context}[:custom_federation_provider_url]")
        Hearth::Validator.validate!(input[:external_login_id], ::String, context: "#{context}[:external_login_id]")
      end
    end

    class UpdateUserOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserOutput, context: context)
        Validators::User.validate!(input[:user], context: "#{context}[:user]") unless input[:user].nil?
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
      end
    end

    class UploadSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadSettings, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:start_from_row], ::Integer, context: "#{context}[:start_from_row]")
        Hearth::Validator.validate!(input[:contains_header], ::TrueClass, ::FalseClass, context: "#{context}[:contains_header]")
        Hearth::Validator.validate!(input[:text_qualifier], ::String, context: "#{context}[:text_qualifier]")
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
      end
    end

    class User
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::User, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:active], ::TrueClass, ::FalseClass, context: "#{context}[:active]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:custom_permissions_name], ::String, context: "#{context}[:custom_permissions_name]")
        Hearth::Validator.validate!(input[:external_login_federation_provider_type], ::String, context: "#{context}[:external_login_federation_provider_type]")
        Hearth::Validator.validate!(input[:external_login_federation_provider_url], ::String, context: "#{context}[:external_login_federation_provider_url]")
        Hearth::Validator.validate!(input[:external_login_id], ::String, context: "#{context}[:external_login_id]")
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

    class VpcConnectionProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConnectionProperties, context: context)
        Hearth::Validator.validate!(input[:vpc_connection_arn], ::String, context: "#{context}[:vpc_connection_arn]")
      end
    end

  end
end
