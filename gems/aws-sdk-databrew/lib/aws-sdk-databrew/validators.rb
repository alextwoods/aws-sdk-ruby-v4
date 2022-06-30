# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataBrew
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AllowedStatisticList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AllowedStatistics.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AllowedStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AllowedStatistics, context: context)
        Validators::StatisticList.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
      end
    end

    class BatchDeleteRecipeVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteRecipeVersionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::RecipeVersionList.validate!(input[:recipe_versions], context: "#{context}[:recipe_versions]") unless input[:recipe_versions].nil?
      end
    end

    class BatchDeleteRecipeVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteRecipeVersionOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::RecipeErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
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

    class ColumnSelector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnSelector, context: context)
        Hearth::Validator.validate!(input[:regex], ::String, context: "#{context}[:regex]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ColumnSelectorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ColumnSelector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnStatisticsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnStatisticsConfiguration, context: context)
        Validators::ColumnSelectorList.validate!(input[:selectors], context: "#{context}[:selectors]") unless input[:selectors].nil?
        Validators::StatisticsConfiguration.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
      end
    end

    class ColumnStatisticsConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ColumnStatisticsConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConditionExpression
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConditionExpression, context: context)
        Hearth::Validator.validate!(input[:condition], ::String, context: "#{context}[:condition]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:target_column], ::String, context: "#{context}[:target_column]")
      end
    end

    class ConditionExpressionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConditionExpression.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Validators::FormatOptions.validate!(input[:format_options], context: "#{context}[:format_options]") unless input[:format_options].nil?
        Validators::Input.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
        Validators::PathOptions.validate!(input[:path_options], context: "#{context}[:path_options]") unless input[:path_options].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatasetOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateProfileJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProfileJobInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:encryption_key_arn], ::String, context: "#{context}[:encryption_key_arn]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:log_subscription], ::String, context: "#{context}[:log_subscription]")
        Hearth::Validator.validate!(input[:max_capacity], ::Integer, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
        Validators::S3Location.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
        Validators::ProfileConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Validators::ValidationConfigurationList.validate!(input[:validation_configurations], context: "#{context}[:validation_configurations]") unless input[:validation_configurations].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Validators::JobSample.validate!(input[:job_sample], context: "#{context}[:job_sample]") unless input[:job_sample].nil?
      end
    end

    class CreateProfileJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProfileJobOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:recipe_name], ::String, context: "#{context}[:recipe_name]")
        Validators::Sample.validate!(input[:sample], context: "#{context}[:sample]") unless input[:sample].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateRecipeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRecipeInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::RecipeStepList.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRecipeJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRecipeJobInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:encryption_key_arn], ::String, context: "#{context}[:encryption_key_arn]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:log_subscription], ::String, context: "#{context}[:log_subscription]")
        Hearth::Validator.validate!(input[:max_capacity], ::Integer, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
        Validators::OutputList.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Validators::DataCatalogOutputList.validate!(input[:data_catalog_outputs], context: "#{context}[:data_catalog_outputs]") unless input[:data_catalog_outputs].nil?
        Validators::DatabaseOutputList.validate!(input[:database_outputs], context: "#{context}[:database_outputs]") unless input[:database_outputs].nil?
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Validators::RecipeReference.validate!(input[:recipe_reference], context: "#{context}[:recipe_reference]") unless input[:recipe_reference].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
      end
    end

    class CreateRecipeJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRecipeJobOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateRecipeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRecipeOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateRulesetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRulesetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Validators::RuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRulesetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRulesetOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateScheduleInput, context: context)
        Validators::JobNameList.validate!(input[:job_names], context: "#{context}[:job_names]") unless input[:job_names].nil?
        Hearth::Validator.validate!(input[:cron_expression], ::String, context: "#{context}[:cron_expression]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CsvOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CsvOptions, context: context)
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:header_row], ::TrueClass, ::FalseClass, context: "#{context}[:header_row]")
      end
    end

    class CsvOutputOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CsvOutputOptions, context: context)
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
      end
    end

    class DataCatalogInputDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataCatalogInputDefinition, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Validators::S3Location.validate!(input[:temp_directory], context: "#{context}[:temp_directory]") unless input[:temp_directory].nil?
      end
    end

    class DataCatalogOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataCatalogOutput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Validators::S3TableOutputOptions.validate!(input[:s3_options], context: "#{context}[:s3_options]") unless input[:s3_options].nil?
        Validators::DatabaseTableOutputOptions.validate!(input[:database_options], context: "#{context}[:database_options]") unless input[:database_options].nil?
        Hearth::Validator.validate!(input[:overwrite], ::TrueClass, ::FalseClass, context: "#{context}[:overwrite]")
      end
    end

    class DataCatalogOutputList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataCatalogOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatabaseInputDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatabaseInputDefinition, context: context)
        Hearth::Validator.validate!(input[:glue_connection_name], ::String, context: "#{context}[:glue_connection_name]")
        Hearth::Validator.validate!(input[:database_table_name], ::String, context: "#{context}[:database_table_name]")
        Validators::S3Location.validate!(input[:temp_directory], context: "#{context}[:temp_directory]") unless input[:temp_directory].nil?
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
      end
    end

    class DatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatabaseOutput, context: context)
        Hearth::Validator.validate!(input[:glue_connection_name], ::String, context: "#{context}[:glue_connection_name]")
        Validators::DatabaseTableOutputOptions.validate!(input[:database_options], context: "#{context}[:database_options]") unless input[:database_options].nil?
        Hearth::Validator.validate!(input[:database_output_mode], ::String, context: "#{context}[:database_output_mode]")
      end
    end

    class DatabaseOutputList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DatabaseOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatabaseTableOutputOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatabaseTableOutputOptions, context: context)
        Validators::S3Location.validate!(input[:temp_directory], context: "#{context}[:temp_directory]") unless input[:temp_directory].nil?
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class Dataset
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Dataset, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Validators::FormatOptions.validate!(input[:format_options], context: "#{context}[:format_options]") unless input[:format_options].nil?
        Validators::Input.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Validators::PathOptions.validate!(input[:path_options], context: "#{context}[:path_options]") unless input[:path_options].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
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

    class DatasetParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::DatetimeOptions.validate!(input[:datetime_options], context: "#{context}[:datetime_options]") unless input[:datetime_options].nil?
        Hearth::Validator.validate!(input[:create_column], ::TrueClass, ::FalseClass, context: "#{context}[:create_column]")
        Validators::FilterExpression.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class DatetimeOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatetimeOptions, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:timezone_offset], ::String, context: "#{context}[:timezone_offset]")
        Hearth::Validator.validate!(input[:locale_code], ::String, context: "#{context}[:locale_code]")
      end
    end

    class DeleteDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatasetOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteRecipeVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecipeVersionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:recipe_version], ::String, context: "#{context}[:recipe_version]")
      end
    end

    class DeleteRecipeVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecipeVersionOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:recipe_version], ::String, context: "#{context}[:recipe_version]")
      end
    end

    class DeleteRulesetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRulesetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteRulesetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRulesetOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScheduleInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDatasetOutput, context: context)
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Validators::FormatOptions.validate!(input[:format_options], context: "#{context}[:format_options]") unless input[:format_options].nil?
        Validators::Input.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Validators::PathOptions.validate!(input[:path_options], context: "#{context}[:path_options]") unless input[:path_options].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DescribeJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobOutput, context: context)
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:encryption_key_arn], ::String, context: "#{context}[:encryption_key_arn]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:log_subscription], ::String, context: "#{context}[:log_subscription]")
        Hearth::Validator.validate!(input[:max_capacity], ::Integer, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
        Validators::OutputList.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Validators::DataCatalogOutputList.validate!(input[:data_catalog_outputs], context: "#{context}[:data_catalog_outputs]") unless input[:data_catalog_outputs].nil?
        Validators::DatabaseOutputList.validate!(input[:database_outputs], context: "#{context}[:database_outputs]") unless input[:database_outputs].nil?
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Validators::ProfileConfiguration.validate!(input[:profile_configuration], context: "#{context}[:profile_configuration]") unless input[:profile_configuration].nil?
        Validators::ValidationConfigurationList.validate!(input[:validation_configurations], context: "#{context}[:validation_configurations]") unless input[:validation_configurations].nil?
        Validators::RecipeReference.validate!(input[:recipe_reference], context: "#{context}[:recipe_reference]") unless input[:recipe_reference].nil?
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Validators::JobSample.validate!(input[:job_sample], context: "#{context}[:job_sample]") unless input[:job_sample].nil?
      end
    end

    class DescribeJobRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobRunInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
      end
    end

    class DescribeJobRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobRunOutput, context: context)
        Hearth::Validator.validate!(input[:attempt], ::Integer, context: "#{context}[:attempt]")
        Hearth::Validator.validate!(input[:completed_on], ::Time, context: "#{context}[:completed_on]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:execution_time], ::Integer, context: "#{context}[:execution_time]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Validators::ProfileConfiguration.validate!(input[:profile_configuration], context: "#{context}[:profile_configuration]") unless input[:profile_configuration].nil?
        Validators::ValidationConfigurationList.validate!(input[:validation_configurations], context: "#{context}[:validation_configurations]") unless input[:validation_configurations].nil?
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:log_subscription], ::String, context: "#{context}[:log_subscription]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Validators::OutputList.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Validators::DataCatalogOutputList.validate!(input[:data_catalog_outputs], context: "#{context}[:data_catalog_outputs]") unless input[:data_catalog_outputs].nil?
        Validators::DatabaseOutputList.validate!(input[:database_outputs], context: "#{context}[:database_outputs]") unless input[:database_outputs].nil?
        Validators::RecipeReference.validate!(input[:recipe_reference], context: "#{context}[:recipe_reference]") unless input[:recipe_reference].nil?
        Hearth::Validator.validate!(input[:started_by], ::String, context: "#{context}[:started_by]")
        Hearth::Validator.validate!(input[:started_on], ::Time, context: "#{context}[:started_on]")
        Validators::JobSample.validate!(input[:job_sample], context: "#{context}[:job_sample]") unless input[:job_sample].nil?
      end
    end

    class DescribeProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectOutput, context: context)
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:recipe_name], ::String, context: "#{context}[:recipe_name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Sample.validate!(input[:sample], context: "#{context}[:sample]") unless input[:sample].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:session_status], ::String, context: "#{context}[:session_status]")
        Hearth::Validator.validate!(input[:opened_by], ::String, context: "#{context}[:opened_by]")
        Hearth::Validator.validate!(input[:open_date], ::Time, context: "#{context}[:open_date]")
      end
    end

    class DescribeRecipeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecipeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:recipe_version], ::String, context: "#{context}[:recipe_version]")
      end
    end

    class DescribeRecipeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecipeOutput, context: context)
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:published_by], ::String, context: "#{context}[:published_by]")
        Hearth::Validator.validate!(input[:published_date], ::Time, context: "#{context}[:published_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::RecipeStepList.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:recipe_version], ::String, context: "#{context}[:recipe_version]")
      end
    end

    class DescribeRulesetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRulesetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeRulesetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRulesetOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Validators::RuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DescribeScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduleInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Validators::JobNameList.validate!(input[:job_names], context: "#{context}[:job_names]") unless input[:job_names].nil?
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:cron_expression], ::String, context: "#{context}[:cron_expression]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class EntityDetectorConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityDetectorConfiguration, context: context)
        Validators::EntityTypeList.validate!(input[:entity_types], context: "#{context}[:entity_types]") unless input[:entity_types].nil?
        Validators::AllowedStatisticList.validate!(input[:allowed_statistics], context: "#{context}[:allowed_statistics]") unless input[:allowed_statistics].nil?
      end
    end

    class EntityTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExcelOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExcelOptions, context: context)
        Validators::SheetNameList.validate!(input[:sheet_names], context: "#{context}[:sheet_names]") unless input[:sheet_names].nil?
        Validators::SheetIndexList.validate!(input[:sheet_indexes], context: "#{context}[:sheet_indexes]") unless input[:sheet_indexes].nil?
        Hearth::Validator.validate!(input[:header_row], ::TrueClass, ::FalseClass, context: "#{context}[:header_row]")
      end
    end

    class FilesLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilesLimit, context: context)
        Hearth::Validator.validate!(input[:max_files], ::Integer, context: "#{context}[:max_files]")
        Hearth::Validator.validate!(input[:ordered_by], ::String, context: "#{context}[:ordered_by]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class FilterExpression
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterExpression, context: context)
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Validators::ValuesMap.validate!(input[:values_map], context: "#{context}[:values_map]") unless input[:values_map].nil?
      end
    end

    class FormatOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FormatOptions, context: context)
        Validators::JsonOptions.validate!(input[:json], context: "#{context}[:json]") unless input[:json].nil?
        Validators::ExcelOptions.validate!(input[:excel], context: "#{context}[:excel]") unless input[:excel].nil?
        Validators::CsvOptions.validate!(input[:csv], context: "#{context}[:csv]") unless input[:csv].nil?
      end
    end

    class HiddenColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Input, context: context)
        Validators::S3Location.validate!(input[:s3_input_definition], context: "#{context}[:s3_input_definition]") unless input[:s3_input_definition].nil?
        Validators::DataCatalogInputDefinition.validate!(input[:data_catalog_input_definition], context: "#{context}[:data_catalog_input_definition]") unless input[:data_catalog_input_definition].nil?
        Validators::DatabaseInputDefinition.validate!(input[:database_input_definition], context: "#{context}[:database_input_definition]") unless input[:database_input_definition].nil?
        Validators::Metadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Job
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Job, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:encryption_key_arn], ::String, context: "#{context}[:encryption_key_arn]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:log_subscription], ::String, context: "#{context}[:log_subscription]")
        Hearth::Validator.validate!(input[:max_capacity], ::Integer, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
        Validators::OutputList.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Validators::DataCatalogOutputList.validate!(input[:data_catalog_outputs], context: "#{context}[:data_catalog_outputs]") unless input[:data_catalog_outputs].nil?
        Validators::DatabaseOutputList.validate!(input[:database_outputs], context: "#{context}[:database_outputs]") unless input[:database_outputs].nil?
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Validators::RecipeReference.validate!(input[:recipe_reference], context: "#{context}[:recipe_reference]") unless input[:recipe_reference].nil?
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::JobSample.validate!(input[:job_sample], context: "#{context}[:job_sample]") unless input[:job_sample].nil?
        Validators::ValidationConfigurationList.validate!(input[:validation_configurations], context: "#{context}[:validation_configurations]") unless input[:validation_configurations].nil?
      end
    end

    class JobList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Job.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class JobRun
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobRun, context: context)
        Hearth::Validator.validate!(input[:attempt], ::Integer, context: "#{context}[:attempt]")
        Hearth::Validator.validate!(input[:completed_on], ::Time, context: "#{context}[:completed_on]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:execution_time], ::Integer, context: "#{context}[:execution_time]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:log_subscription], ::String, context: "#{context}[:log_subscription]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        Validators::OutputList.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Validators::DataCatalogOutputList.validate!(input[:data_catalog_outputs], context: "#{context}[:data_catalog_outputs]") unless input[:data_catalog_outputs].nil?
        Validators::DatabaseOutputList.validate!(input[:database_outputs], context: "#{context}[:database_outputs]") unless input[:database_outputs].nil?
        Validators::RecipeReference.validate!(input[:recipe_reference], context: "#{context}[:recipe_reference]") unless input[:recipe_reference].nil?
        Hearth::Validator.validate!(input[:started_by], ::String, context: "#{context}[:started_by]")
        Hearth::Validator.validate!(input[:started_on], ::Time, context: "#{context}[:started_on]")
        Validators::JobSample.validate!(input[:job_sample], context: "#{context}[:job_sample]") unless input[:job_sample].nil?
        Validators::ValidationConfigurationList.validate!(input[:validation_configurations], context: "#{context}[:validation_configurations]") unless input[:validation_configurations].nil?
      end
    end

    class JobRunList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::JobRun.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobSample
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobSample, context: context)
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
      end
    end

    class JsonOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JsonOptions, context: context)
        Hearth::Validator.validate!(input[:multi_line], ::TrueClass, ::FalseClass, context: "#{context}[:multi_line]")
      end
    end

    class ListDatasetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDatasetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDatasetsOutput, context: context)
        Validators::DatasetList.validate!(input[:datasets], context: "#{context}[:datasets]") unless input[:datasets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobRunsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobRunsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobRunsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobRunsOutput, context: context)
        Validators::JobRunList.validate!(input[:job_runs], context: "#{context}[:job_runs]") unless input[:job_runs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsInput, context: context)
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
      end
    end

    class ListJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsOutput, context: context)
        Validators::JobList.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListProjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsOutput, context: context)
        Validators::ProjectList.validate!(input[:projects], context: "#{context}[:projects]") unless input[:projects].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRecipeVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecipeVersionsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ListRecipeVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecipeVersionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::RecipeList.validate!(input[:recipes], context: "#{context}[:recipes]") unless input[:recipes].nil?
      end
    end

    class ListRecipesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecipesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:recipe_version], ::String, context: "#{context}[:recipe_version]")
      end
    end

    class ListRecipesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecipesOutput, context: context)
        Validators::RecipeList.validate!(input[:recipes], context: "#{context}[:recipes]") unless input[:recipes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRulesetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRulesetsInput, context: context)
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRulesetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRulesetsOutput, context: context)
        Validators::RulesetItemList.validate!(input[:rulesets], context: "#{context}[:rulesets]") unless input[:rulesets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSchedulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchedulesInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSchedulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchedulesOutput, context: context)
        Validators::ScheduleList.validate!(input[:schedules], context: "#{context}[:schedules]") unless input[:schedules].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
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
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Metadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Metadata, context: context)
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
      end
    end

    class Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Output, context: context)
        Hearth::Validator.validate!(input[:compression_format], ::String, context: "#{context}[:compression_format]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Validators::ColumnNameList.validate!(input[:partition_columns], context: "#{context}[:partition_columns]") unless input[:partition_columns].nil?
        Validators::S3Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:overwrite], ::TrueClass, ::FalseClass, context: "#{context}[:overwrite]")
        Validators::OutputFormatOptions.validate!(input[:format_options], context: "#{context}[:format_options]") unless input[:format_options].nil?
        Hearth::Validator.validate!(input[:max_output_files], ::Integer, context: "#{context}[:max_output_files]")
      end
    end

    class OutputFormatOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputFormatOptions, context: context)
        Validators::CsvOutputOptions.validate!(input[:csv], context: "#{context}[:csv]") unless input[:csv].nil?
      end
    end

    class OutputList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Output.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PathOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PathOptions, context: context)
        Validators::FilterExpression.validate!(input[:last_modified_date_condition], context: "#{context}[:last_modified_date_condition]") unless input[:last_modified_date_condition].nil?
        Validators::FilesLimit.validate!(input[:files_limit], context: "#{context}[:files_limit]") unless input[:files_limit].nil?
        Validators::PathParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class PathParametersMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::DatasetParameter.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ProfileConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProfileConfiguration, context: context)
        Validators::StatisticsConfiguration.validate!(input[:dataset_statistics_configuration], context: "#{context}[:dataset_statistics_configuration]") unless input[:dataset_statistics_configuration].nil?
        Validators::ColumnSelectorList.validate!(input[:profile_columns], context: "#{context}[:profile_columns]") unless input[:profile_columns].nil?
        Validators::ColumnStatisticsConfigurationList.validate!(input[:column_statistics_configurations], context: "#{context}[:column_statistics_configurations]") unless input[:column_statistics_configurations].nil?
        Validators::EntityDetectorConfiguration.validate!(input[:entity_detector_configuration], context: "#{context}[:entity_detector_configuration]") unless input[:entity_detector_configuration].nil?
      end
    end

    class Project
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Project, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:recipe_name], ::String, context: "#{context}[:recipe_name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::Sample.validate!(input[:sample], context: "#{context}[:sample]") unless input[:sample].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:opened_by], ::String, context: "#{context}[:opened_by]")
        Hearth::Validator.validate!(input[:open_date], ::Time, context: "#{context}[:open_date]")
      end
    end

    class ProjectList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Project.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PublishRecipeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishRecipeInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class PublishRecipeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishRecipeOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class Recipe
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Recipe, context: context)
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:published_by], ::String, context: "#{context}[:published_by]")
        Hearth::Validator.validate!(input[:published_date], ::Time, context: "#{context}[:published_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::RecipeStepList.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:recipe_version], ::String, context: "#{context}[:recipe_version]")
      end
    end

    class RecipeAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecipeAction, context: context)
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Validators::ParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class RecipeErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecipeVersionErrorDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecipeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Recipe.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecipeReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecipeReference, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:recipe_version], ::String, context: "#{context}[:recipe_version]")
      end
    end

    class RecipeStep
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecipeStep, context: context)
        Validators::RecipeAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Validators::ConditionExpressionList.validate!(input[:condition_expressions], context: "#{context}[:condition_expressions]") unless input[:condition_expressions].nil?
      end
    end

    class RecipeStepList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RecipeStep.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecipeVersionErrorDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecipeVersionErrorDetail, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:recipe_version], ::String, context: "#{context}[:recipe_version]")
      end
    end

    class RecipeVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Rule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Rule, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:disabled], ::TrueClass, ::FalseClass, context: "#{context}[:disabled]")
        Hearth::Validator.validate!(input[:check_expression], ::String, context: "#{context}[:check_expression]")
        Validators::ValuesMap.validate!(input[:substitution_map], context: "#{context}[:substitution_map]") unless input[:substitution_map].nil?
        Validators::Threshold.validate!(input[:threshold], context: "#{context}[:threshold]") unless input[:threshold].nil?
        Validators::ColumnSelectorList.validate!(input[:column_selectors], context: "#{context}[:column_selectors]") unless input[:column_selectors].nil?
      end
    end

    class RuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Rule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RulesetItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RulesetItem, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:rule_count], ::Integer, context: "#{context}[:rule_count]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
      end
    end

    class RulesetItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RulesetItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:bucket_owner], ::String, context: "#{context}[:bucket_owner]")
      end
    end

    class S3TableOutputOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3TableOutputOptions, context: context)
        Validators::S3Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
      end
    end

    class Sample
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Sample, context: context)
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class Schedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Schedule, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Validators::JobNameList.validate!(input[:job_names], context: "#{context}[:job_names]") unless input[:job_names].nil?
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:cron_expression], ::String, context: "#{context}[:cron_expression]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ScheduleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Schedule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SendProjectSessionActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendProjectSessionActionInput, context: context)
        Hearth::Validator.validate!(input[:preview], ::TrueClass, ::FalseClass, context: "#{context}[:preview]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::RecipeStep.validate!(input[:recipe_step], context: "#{context}[:recipe_step]") unless input[:recipe_step].nil?
        Hearth::Validator.validate!(input[:step_index], ::Integer, context: "#{context}[:step_index]")
        Hearth::Validator.validate!(input[:client_session_id], ::String, context: "#{context}[:client_session_id]")
        Validators::ViewFrame.validate!(input[:view_frame], context: "#{context}[:view_frame]") unless input[:view_frame].nil?
      end
    end

    class SendProjectSessionActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendProjectSessionActionOutput, context: context)
        Hearth::Validator.validate!(input[:result], ::String, context: "#{context}[:result]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:action_id], ::Integer, context: "#{context}[:action_id]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SheetIndexList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class SheetNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StartJobRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartJobRunInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StartJobRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartJobRunOutput, context: context)
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
      end
    end

    class StartProjectSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartProjectSessionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:assume_control], ::TrueClass, ::FalseClass, context: "#{context}[:assume_control]")
      end
    end

    class StartProjectSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartProjectSessionOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:client_session_id], ::String, context: "#{context}[:client_session_id]")
      end
    end

    class StatisticList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StatisticOverride
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatisticOverride, context: context)
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Validators::ParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class StatisticOverrideList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StatisticOverride.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StatisticsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatisticsConfiguration, context: context)
        Validators::StatisticList.validate!(input[:included_statistics], context: "#{context}[:included_statistics]") unless input[:included_statistics].nil?
        Validators::StatisticOverrideList.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
      end
    end

    class StopJobRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopJobRunInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
      end
    end

    class StopJobRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopJobRunOutput, context: context)
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
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

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Threshold
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Threshold, context: context)
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
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
      end
    end

    class UpdateDatasetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatasetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Validators::FormatOptions.validate!(input[:format_options], context: "#{context}[:format_options]") unless input[:format_options].nil?
        Validators::Input.validate!(input[:input], context: "#{context}[:input]") unless input[:input].nil?
        Validators::PathOptions.validate!(input[:path_options], context: "#{context}[:path_options]") unless input[:path_options].nil?
      end
    end

    class UpdateDatasetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatasetOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateProfileJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProfileJobInput, context: context)
        Validators::ProfileConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:encryption_key_arn], ::String, context: "#{context}[:encryption_key_arn]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:log_subscription], ::String, context: "#{context}[:log_subscription]")
        Hearth::Validator.validate!(input[:max_capacity], ::Integer, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
        Validators::S3Location.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
        Validators::ValidationConfigurationList.validate!(input[:validation_configurations], context: "#{context}[:validation_configurations]") unless input[:validation_configurations].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Validators::JobSample.validate!(input[:job_sample], context: "#{context}[:job_sample]") unless input[:job_sample].nil?
      end
    end

    class UpdateProfileJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProfileJobOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectInput, context: context)
        Validators::Sample.validate!(input[:sample], context: "#{context}[:sample]") unless input[:sample].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectOutput, context: context)
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateRecipeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRecipeInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::RecipeStepList.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
      end
    end

    class UpdateRecipeJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRecipeJobInput, context: context)
        Hearth::Validator.validate!(input[:encryption_key_arn], ::String, context: "#{context}[:encryption_key_arn]")
        Hearth::Validator.validate!(input[:encryption_mode], ::String, context: "#{context}[:encryption_mode]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:log_subscription], ::String, context: "#{context}[:log_subscription]")
        Hearth::Validator.validate!(input[:max_capacity], ::Integer, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
        Validators::OutputList.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Validators::DataCatalogOutputList.validate!(input[:data_catalog_outputs], context: "#{context}[:data_catalog_outputs]") unless input[:data_catalog_outputs].nil?
        Validators::DatabaseOutputList.validate!(input[:database_outputs], context: "#{context}[:database_outputs]") unless input[:database_outputs].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
      end
    end

    class UpdateRecipeJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRecipeJobOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateRecipeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRecipeOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateRulesetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRulesetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::RuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class UpdateRulesetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRulesetOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateScheduleInput, context: context)
        Validators::JobNameList.validate!(input[:job_names], context: "#{context}[:job_names]") unless input[:job_names].nil?
        Hearth::Validator.validate!(input[:cron_expression], ::String, context: "#{context}[:cron_expression]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ValidationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationConfiguration, context: context)
        Hearth::Validator.validate!(input[:ruleset_arn], ::String, context: "#{context}[:ruleset_arn]")
        Hearth::Validator.validate!(input[:validation_mode], ::String, context: "#{context}[:validation_mode]")
      end
    end

    class ValidationConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValuesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ViewFrame
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ViewFrame, context: context)
        Hearth::Validator.validate!(input[:start_column_index], ::Integer, context: "#{context}[:start_column_index]")
        Hearth::Validator.validate!(input[:column_range], ::Integer, context: "#{context}[:column_range]")
        Validators::HiddenColumnList.validate!(input[:hidden_columns], context: "#{context}[:hidden_columns]") unless input[:hidden_columns].nil?
        Hearth::Validator.validate!(input[:start_row_index], ::Integer, context: "#{context}[:start_row_index]")
        Hearth::Validator.validate!(input[:row_range], ::Integer, context: "#{context}[:row_range]")
        Hearth::Validator.validate!(input[:analytics], ::String, context: "#{context}[:analytics]")
      end
    end

  end
end
