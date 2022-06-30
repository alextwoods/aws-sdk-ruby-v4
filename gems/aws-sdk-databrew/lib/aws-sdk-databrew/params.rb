# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::DataBrew
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AllowedStatisticList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AllowedStatistics.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AllowedStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AllowedStatistics, context: context)
        type = Types::AllowedStatistics.new
        type.statistics = StatisticList.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type
      end
    end

    module BatchDeleteRecipeVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteRecipeVersionInput, context: context)
        type = Types::BatchDeleteRecipeVersionInput.new
        type.name = params[:name]
        type.recipe_versions = RecipeVersionList.build(params[:recipe_versions], context: "#{context}[:recipe_versions]") unless params[:recipe_versions].nil?
        type
      end
    end

    module BatchDeleteRecipeVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteRecipeVersionOutput, context: context)
        type = Types::BatchDeleteRecipeVersionOutput.new
        type.name = params[:name]
        type.errors = RecipeErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
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

    module ColumnSelector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnSelector, context: context)
        type = Types::ColumnSelector.new
        type.regex = params[:regex]
        type.name = params[:name]
        type
      end
    end

    module ColumnSelectorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnSelector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnStatisticsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnStatisticsConfiguration, context: context)
        type = Types::ColumnStatisticsConfiguration.new
        type.selectors = ColumnSelectorList.build(params[:selectors], context: "#{context}[:selectors]") unless params[:selectors].nil?
        type.statistics = StatisticsConfiguration.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type
      end
    end

    module ColumnStatisticsConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnStatisticsConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConditionExpression
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConditionExpression, context: context)
        type = Types::ConditionExpression.new
        type.condition = params[:condition]
        type.value = params[:value]
        type.target_column = params[:target_column]
        type
      end
    end

    module ConditionExpressionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConditionExpression.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetInput, context: context)
        type = Types::CreateDatasetInput.new
        type.name = params[:name]
        type.format = params[:format]
        type.format_options = FormatOptions.build(params[:format_options], context: "#{context}[:format_options]") unless params[:format_options].nil?
        type.input = Input.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type.path_options = PathOptions.build(params[:path_options], context: "#{context}[:path_options]") unless params[:path_options].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatasetOutput, context: context)
        type = Types::CreateDatasetOutput.new
        type.name = params[:name]
        type
      end
    end

    module CreateProfileJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProfileJobInput, context: context)
        type = Types::CreateProfileJobInput.new
        type.dataset_name = params[:dataset_name]
        type.encryption_key_arn = params[:encryption_key_arn]
        type.encryption_mode = params[:encryption_mode]
        type.name = params[:name]
        type.log_subscription = params[:log_subscription]
        type.max_capacity = params[:max_capacity]
        type.max_retries = params[:max_retries]
        type.output_location = S3Location.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type.configuration = ProfileConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.validation_configurations = ValidationConfigurationList.build(params[:validation_configurations], context: "#{context}[:validation_configurations]") unless params[:validation_configurations].nil?
        type.role_arn = params[:role_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.timeout = params[:timeout]
        type.job_sample = JobSample.build(params[:job_sample], context: "#{context}[:job_sample]") unless params[:job_sample].nil?
        type
      end
    end

    module CreateProfileJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProfileJobOutput, context: context)
        type = Types::CreateProfileJobOutput.new
        type.name = params[:name]
        type
      end
    end

    module CreateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectInput, context: context)
        type = Types::CreateProjectInput.new
        type.dataset_name = params[:dataset_name]
        type.name = params[:name]
        type.recipe_name = params[:recipe_name]
        type.sample = Sample.build(params[:sample], context: "#{context}[:sample]") unless params[:sample].nil?
        type.role_arn = params[:role_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectOutput, context: context)
        type = Types::CreateProjectOutput.new
        type.name = params[:name]
        type
      end
    end

    module CreateRecipeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRecipeInput, context: context)
        type = Types::CreateRecipeInput.new
        type.description = params[:description]
        type.name = params[:name]
        type.steps = RecipeStepList.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRecipeJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRecipeJobInput, context: context)
        type = Types::CreateRecipeJobInput.new
        type.dataset_name = params[:dataset_name]
        type.encryption_key_arn = params[:encryption_key_arn]
        type.encryption_mode = params[:encryption_mode]
        type.name = params[:name]
        type.log_subscription = params[:log_subscription]
        type.max_capacity = params[:max_capacity]
        type.max_retries = params[:max_retries]
        type.outputs = OutputList.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.data_catalog_outputs = DataCatalogOutputList.build(params[:data_catalog_outputs], context: "#{context}[:data_catalog_outputs]") unless params[:data_catalog_outputs].nil?
        type.database_outputs = DatabaseOutputList.build(params[:database_outputs], context: "#{context}[:database_outputs]") unless params[:database_outputs].nil?
        type.project_name = params[:project_name]
        type.recipe_reference = RecipeReference.build(params[:recipe_reference], context: "#{context}[:recipe_reference]") unless params[:recipe_reference].nil?
        type.role_arn = params[:role_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.timeout = params[:timeout]
        type
      end
    end

    module CreateRecipeJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRecipeJobOutput, context: context)
        type = Types::CreateRecipeJobOutput.new
        type.name = params[:name]
        type
      end
    end

    module CreateRecipeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRecipeOutput, context: context)
        type = Types::CreateRecipeOutput.new
        type.name = params[:name]
        type
      end
    end

    module CreateRulesetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRulesetInput, context: context)
        type = Types::CreateRulesetInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.target_arn = params[:target_arn]
        type.rules = RuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRulesetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRulesetOutput, context: context)
        type = Types::CreateRulesetOutput.new
        type.name = params[:name]
        type
      end
    end

    module CreateScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateScheduleInput, context: context)
        type = Types::CreateScheduleInput.new
        type.job_names = JobNameList.build(params[:job_names], context: "#{context}[:job_names]") unless params[:job_names].nil?
        type.cron_expression = params[:cron_expression]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.name = params[:name]
        type
      end
    end

    module CreateScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateScheduleOutput, context: context)
        type = Types::CreateScheduleOutput.new
        type.name = params[:name]
        type
      end
    end

    module CsvOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CsvOptions, context: context)
        type = Types::CsvOptions.new
        type.delimiter = params[:delimiter]
        type.header_row = params[:header_row]
        type
      end
    end

    module CsvOutputOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CsvOutputOptions, context: context)
        type = Types::CsvOutputOptions.new
        type.delimiter = params[:delimiter]
        type
      end
    end

    module DataCatalogInputDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataCatalogInputDefinition, context: context)
        type = Types::DataCatalogInputDefinition.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.temp_directory = S3Location.build(params[:temp_directory], context: "#{context}[:temp_directory]") unless params[:temp_directory].nil?
        type
      end
    end

    module DataCatalogOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataCatalogOutput, context: context)
        type = Types::DataCatalogOutput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.s3_options = S3TableOutputOptions.build(params[:s3_options], context: "#{context}[:s3_options]") unless params[:s3_options].nil?
        type.database_options = DatabaseTableOutputOptions.build(params[:database_options], context: "#{context}[:database_options]") unless params[:database_options].nil?
        type.overwrite = params[:overwrite]
        type
      end
    end

    module DataCatalogOutputList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataCatalogOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatabaseInputDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatabaseInputDefinition, context: context)
        type = Types::DatabaseInputDefinition.new
        type.glue_connection_name = params[:glue_connection_name]
        type.database_table_name = params[:database_table_name]
        type.temp_directory = S3Location.build(params[:temp_directory], context: "#{context}[:temp_directory]") unless params[:temp_directory].nil?
        type.query_string = params[:query_string]
        type
      end
    end

    module DatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatabaseOutput, context: context)
        type = Types::DatabaseOutput.new
        type.glue_connection_name = params[:glue_connection_name]
        type.database_options = DatabaseTableOutputOptions.build(params[:database_options], context: "#{context}[:database_options]") unless params[:database_options].nil?
        type.database_output_mode = params[:database_output_mode]
        type
      end
    end

    module DatabaseOutputList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DatabaseOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatabaseTableOutputOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatabaseTableOutputOptions, context: context)
        type = Types::DatabaseTableOutputOptions.new
        type.temp_directory = S3Location.build(params[:temp_directory], context: "#{context}[:temp_directory]") unless params[:temp_directory].nil?
        type.table_name = params[:table_name]
        type
      end
    end

    module Dataset
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Dataset, context: context)
        type = Types::Dataset.new
        type.account_id = params[:account_id]
        type.created_by = params[:created_by]
        type.create_date = params[:create_date]
        type.name = params[:name]
        type.format = params[:format]
        type.format_options = FormatOptions.build(params[:format_options], context: "#{context}[:format_options]") unless params[:format_options].nil?
        type.input = Input.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type.last_modified_date = params[:last_modified_date]
        type.last_modified_by = params[:last_modified_by]
        type.source = params[:source]
        type.path_options = PathOptions.build(params[:path_options], context: "#{context}[:path_options]") unless params[:path_options].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.resource_arn = params[:resource_arn]
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

    module DatasetParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetParameter, context: context)
        type = Types::DatasetParameter.new
        type.name = params[:name]
        type.type = params[:type]
        type.datetime_options = DatetimeOptions.build(params[:datetime_options], context: "#{context}[:datetime_options]") unless params[:datetime_options].nil?
        type.create_column = params[:create_column]
        type.filter = FilterExpression.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module DatetimeOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatetimeOptions, context: context)
        type = Types::DatetimeOptions.new
        type.format = params[:format]
        type.timezone_offset = params[:timezone_offset]
        type.locale_code = params[:locale_code]
        type
      end
    end

    module DeleteDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetInput, context: context)
        type = Types::DeleteDatasetInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatasetOutput, context: context)
        type = Types::DeleteDatasetOutput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobInput, context: context)
        type = Types::DeleteJobInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobOutput, context: context)
        type = Types::DeleteJobOutput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectInput, context: context)
        type = Types::DeleteProjectInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectOutput, context: context)
        type = Types::DeleteProjectOutput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteRecipeVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecipeVersionInput, context: context)
        type = Types::DeleteRecipeVersionInput.new
        type.name = params[:name]
        type.recipe_version = params[:recipe_version]
        type
      end
    end

    module DeleteRecipeVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecipeVersionOutput, context: context)
        type = Types::DeleteRecipeVersionOutput.new
        type.name = params[:name]
        type.recipe_version = params[:recipe_version]
        type
      end
    end

    module DeleteRulesetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRulesetInput, context: context)
        type = Types::DeleteRulesetInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteRulesetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRulesetOutput, context: context)
        type = Types::DeleteRulesetOutput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScheduleInput, context: context)
        type = Types::DeleteScheduleInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScheduleOutput, context: context)
        type = Types::DeleteScheduleOutput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetInput, context: context)
        type = Types::DescribeDatasetInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDatasetOutput, context: context)
        type = Types::DescribeDatasetOutput.new
        type.created_by = params[:created_by]
        type.create_date = params[:create_date]
        type.name = params[:name]
        type.format = params[:format]
        type.format_options = FormatOptions.build(params[:format_options], context: "#{context}[:format_options]") unless params[:format_options].nil?
        type.input = Input.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type.last_modified_date = params[:last_modified_date]
        type.last_modified_by = params[:last_modified_by]
        type.source = params[:source]
        type.path_options = PathOptions.build(params[:path_options], context: "#{context}[:path_options]") unless params[:path_options].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DescribeJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobInput, context: context)
        type = Types::DescribeJobInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobOutput, context: context)
        type = Types::DescribeJobOutput.new
        type.create_date = params[:create_date]
        type.created_by = params[:created_by]
        type.dataset_name = params[:dataset_name]
        type.encryption_key_arn = params[:encryption_key_arn]
        type.encryption_mode = params[:encryption_mode]
        type.name = params[:name]
        type.type = params[:type]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.log_subscription = params[:log_subscription]
        type.max_capacity = params[:max_capacity]
        type.max_retries = params[:max_retries]
        type.outputs = OutputList.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.data_catalog_outputs = DataCatalogOutputList.build(params[:data_catalog_outputs], context: "#{context}[:data_catalog_outputs]") unless params[:data_catalog_outputs].nil?
        type.database_outputs = DatabaseOutputList.build(params[:database_outputs], context: "#{context}[:database_outputs]") unless params[:database_outputs].nil?
        type.project_name = params[:project_name]
        type.profile_configuration = ProfileConfiguration.build(params[:profile_configuration], context: "#{context}[:profile_configuration]") unless params[:profile_configuration].nil?
        type.validation_configurations = ValidationConfigurationList.build(params[:validation_configurations], context: "#{context}[:validation_configurations]") unless params[:validation_configurations].nil?
        type.recipe_reference = RecipeReference.build(params[:recipe_reference], context: "#{context}[:recipe_reference]") unless params[:recipe_reference].nil?
        type.resource_arn = params[:resource_arn]
        type.role_arn = params[:role_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.timeout = params[:timeout]
        type.job_sample = JobSample.build(params[:job_sample], context: "#{context}[:job_sample]") unless params[:job_sample].nil?
        type
      end
    end

    module DescribeJobRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobRunInput, context: context)
        type = Types::DescribeJobRunInput.new
        type.name = params[:name]
        type.run_id = params[:run_id]
        type
      end
    end

    module DescribeJobRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobRunOutput, context: context)
        type = Types::DescribeJobRunOutput.new
        type.attempt = params[:attempt]
        type.completed_on = params[:completed_on]
        type.dataset_name = params[:dataset_name]
        type.error_message = params[:error_message]
        type.execution_time = params[:execution_time]
        type.job_name = params[:job_name]
        type.profile_configuration = ProfileConfiguration.build(params[:profile_configuration], context: "#{context}[:profile_configuration]") unless params[:profile_configuration].nil?
        type.validation_configurations = ValidationConfigurationList.build(params[:validation_configurations], context: "#{context}[:validation_configurations]") unless params[:validation_configurations].nil?
        type.run_id = params[:run_id]
        type.state = params[:state]
        type.log_subscription = params[:log_subscription]
        type.log_group_name = params[:log_group_name]
        type.outputs = OutputList.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.data_catalog_outputs = DataCatalogOutputList.build(params[:data_catalog_outputs], context: "#{context}[:data_catalog_outputs]") unless params[:data_catalog_outputs].nil?
        type.database_outputs = DatabaseOutputList.build(params[:database_outputs], context: "#{context}[:database_outputs]") unless params[:database_outputs].nil?
        type.recipe_reference = RecipeReference.build(params[:recipe_reference], context: "#{context}[:recipe_reference]") unless params[:recipe_reference].nil?
        type.started_by = params[:started_by]
        type.started_on = params[:started_on]
        type.job_sample = JobSample.build(params[:job_sample], context: "#{context}[:job_sample]") unless params[:job_sample].nil?
        type
      end
    end

    module DescribeProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectInput, context: context)
        type = Types::DescribeProjectInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectOutput, context: context)
        type = Types::DescribeProjectOutput.new
        type.create_date = params[:create_date]
        type.created_by = params[:created_by]
        type.dataset_name = params[:dataset_name]
        type.last_modified_date = params[:last_modified_date]
        type.last_modified_by = params[:last_modified_by]
        type.name = params[:name]
        type.recipe_name = params[:recipe_name]
        type.resource_arn = params[:resource_arn]
        type.sample = Sample.build(params[:sample], context: "#{context}[:sample]") unless params[:sample].nil?
        type.role_arn = params[:role_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.session_status = params[:session_status]
        type.opened_by = params[:opened_by]
        type.open_date = params[:open_date]
        type
      end
    end

    module DescribeRecipeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecipeInput, context: context)
        type = Types::DescribeRecipeInput.new
        type.name = params[:name]
        type.recipe_version = params[:recipe_version]
        type
      end
    end

    module DescribeRecipeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecipeOutput, context: context)
        type = Types::DescribeRecipeOutput.new
        type.created_by = params[:created_by]
        type.create_date = params[:create_date]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.project_name = params[:project_name]
        type.published_by = params[:published_by]
        type.published_date = params[:published_date]
        type.description = params[:description]
        type.name = params[:name]
        type.steps = RecipeStepList.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.resource_arn = params[:resource_arn]
        type.recipe_version = params[:recipe_version]
        type
      end
    end

    module DescribeRulesetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRulesetInput, context: context)
        type = Types::DescribeRulesetInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeRulesetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRulesetOutput, context: context)
        type = Types::DescribeRulesetOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.target_arn = params[:target_arn]
        type.rules = RuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.create_date = params[:create_date]
        type.created_by = params[:created_by]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DescribeScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduleInput, context: context)
        type = Types::DescribeScheduleInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScheduleOutput, context: context)
        type = Types::DescribeScheduleOutput.new
        type.create_date = params[:create_date]
        type.created_by = params[:created_by]
        type.job_names = JobNameList.build(params[:job_names], context: "#{context}[:job_names]") unless params[:job_names].nil?
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.resource_arn = params[:resource_arn]
        type.cron_expression = params[:cron_expression]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.name = params[:name]
        type
      end
    end

    module EntityDetectorConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityDetectorConfiguration, context: context)
        type = Types::EntityDetectorConfiguration.new
        type.entity_types = EntityTypeList.build(params[:entity_types], context: "#{context}[:entity_types]") unless params[:entity_types].nil?
        type.allowed_statistics = AllowedStatisticList.build(params[:allowed_statistics], context: "#{context}[:allowed_statistics]") unless params[:allowed_statistics].nil?
        type
      end
    end

    module EntityTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExcelOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExcelOptions, context: context)
        type = Types::ExcelOptions.new
        type.sheet_names = SheetNameList.build(params[:sheet_names], context: "#{context}[:sheet_names]") unless params[:sheet_names].nil?
        type.sheet_indexes = SheetIndexList.build(params[:sheet_indexes], context: "#{context}[:sheet_indexes]") unless params[:sheet_indexes].nil?
        type.header_row = params[:header_row]
        type
      end
    end

    module FilesLimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilesLimit, context: context)
        type = Types::FilesLimit.new
        type.max_files = params[:max_files]
        type.ordered_by = params[:ordered_by]
        type.order = params[:order]
        type
      end
    end

    module FilterExpression
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterExpression, context: context)
        type = Types::FilterExpression.new
        type.expression = params[:expression]
        type.values_map = ValuesMap.build(params[:values_map], context: "#{context}[:values_map]") unless params[:values_map].nil?
        type
      end
    end

    module FormatOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FormatOptions, context: context)
        type = Types::FormatOptions.new
        type.json = JsonOptions.build(params[:json], context: "#{context}[:json]") unless params[:json].nil?
        type.excel = ExcelOptions.build(params[:excel], context: "#{context}[:excel]") unless params[:excel].nil?
        type.csv = CsvOptions.build(params[:csv], context: "#{context}[:csv]") unless params[:csv].nil?
        type
      end
    end

    module HiddenColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Input, context: context)
        type = Types::Input.new
        type.s3_input_definition = S3Location.build(params[:s3_input_definition], context: "#{context}[:s3_input_definition]") unless params[:s3_input_definition].nil?
        type.data_catalog_input_definition = DataCatalogInputDefinition.build(params[:data_catalog_input_definition], context: "#{context}[:data_catalog_input_definition]") unless params[:data_catalog_input_definition].nil?
        type.database_input_definition = DatabaseInputDefinition.build(params[:database_input_definition], context: "#{context}[:database_input_definition]") unless params[:database_input_definition].nil?
        type.metadata = Metadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
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

    module Job
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Job, context: context)
        type = Types::Job.new
        type.account_id = params[:account_id]
        type.created_by = params[:created_by]
        type.create_date = params[:create_date]
        type.dataset_name = params[:dataset_name]
        type.encryption_key_arn = params[:encryption_key_arn]
        type.encryption_mode = params[:encryption_mode]
        type.name = params[:name]
        type.type = params[:type]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.log_subscription = params[:log_subscription]
        type.max_capacity = params[:max_capacity]
        type.max_retries = params[:max_retries]
        type.outputs = OutputList.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.data_catalog_outputs = DataCatalogOutputList.build(params[:data_catalog_outputs], context: "#{context}[:data_catalog_outputs]") unless params[:data_catalog_outputs].nil?
        type.database_outputs = DatabaseOutputList.build(params[:database_outputs], context: "#{context}[:database_outputs]") unless params[:database_outputs].nil?
        type.project_name = params[:project_name]
        type.recipe_reference = RecipeReference.build(params[:recipe_reference], context: "#{context}[:recipe_reference]") unless params[:recipe_reference].nil?
        type.resource_arn = params[:resource_arn]
        type.role_arn = params[:role_arn]
        type.timeout = params[:timeout]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.job_sample = JobSample.build(params[:job_sample], context: "#{context}[:job_sample]") unless params[:job_sample].nil?
        type.validation_configurations = ValidationConfigurationList.build(params[:validation_configurations], context: "#{context}[:validation_configurations]") unless params[:validation_configurations].nil?
        type
      end
    end

    module JobList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Job.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module JobRun
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobRun, context: context)
        type = Types::JobRun.new
        type.attempt = params[:attempt]
        type.completed_on = params[:completed_on]
        type.dataset_name = params[:dataset_name]
        type.error_message = params[:error_message]
        type.execution_time = params[:execution_time]
        type.job_name = params[:job_name]
        type.run_id = params[:run_id]
        type.state = params[:state]
        type.log_subscription = params[:log_subscription]
        type.log_group_name = params[:log_group_name]
        type.outputs = OutputList.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.data_catalog_outputs = DataCatalogOutputList.build(params[:data_catalog_outputs], context: "#{context}[:data_catalog_outputs]") unless params[:data_catalog_outputs].nil?
        type.database_outputs = DatabaseOutputList.build(params[:database_outputs], context: "#{context}[:database_outputs]") unless params[:database_outputs].nil?
        type.recipe_reference = RecipeReference.build(params[:recipe_reference], context: "#{context}[:recipe_reference]") unless params[:recipe_reference].nil?
        type.started_by = params[:started_by]
        type.started_on = params[:started_on]
        type.job_sample = JobSample.build(params[:job_sample], context: "#{context}[:job_sample]") unless params[:job_sample].nil?
        type.validation_configurations = ValidationConfigurationList.build(params[:validation_configurations], context: "#{context}[:validation_configurations]") unless params[:validation_configurations].nil?
        type
      end
    end

    module JobRunList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobRun.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobSample
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobSample, context: context)
        type = Types::JobSample.new
        type.mode = params[:mode]
        type.size = params[:size]
        type
      end
    end

    module JsonOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JsonOptions, context: context)
        type = Types::JsonOptions.new
        type.multi_line = params[:multi_line]
        type
      end
    end

    module ListDatasetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDatasetsInput, context: context)
        type = Types::ListDatasetsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
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

    module ListJobRunsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobRunsInput, context: context)
        type = Types::ListJobRunsInput.new
        type.name = params[:name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobRunsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobRunsOutput, context: context)
        type = Types::ListJobRunsOutput.new
        type.job_runs = JobRunList.build(params[:job_runs], context: "#{context}[:job_runs]") unless params[:job_runs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsInput, context: context)
        type = Types::ListJobsInput.new
        type.dataset_name = params[:dataset_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.project_name = params[:project_name]
        type
      end
    end

    module ListJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsOutput, context: context)
        type = Types::ListJobsOutput.new
        type.jobs = JobList.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsInput, context: context)
        type = Types::ListProjectsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListProjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsOutput, context: context)
        type = Types::ListProjectsOutput.new
        type.projects = ProjectList.build(params[:projects], context: "#{context}[:projects]") unless params[:projects].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRecipeVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecipeVersionsInput, context: context)
        type = Types::ListRecipeVersionsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.name = params[:name]
        type
      end
    end

    module ListRecipeVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecipeVersionsOutput, context: context)
        type = Types::ListRecipeVersionsOutput.new
        type.next_token = params[:next_token]
        type.recipes = RecipeList.build(params[:recipes], context: "#{context}[:recipes]") unless params[:recipes].nil?
        type
      end
    end

    module ListRecipesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecipesInput, context: context)
        type = Types::ListRecipesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.recipe_version = params[:recipe_version]
        type
      end
    end

    module ListRecipesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecipesOutput, context: context)
        type = Types::ListRecipesOutput.new
        type.recipes = RecipeList.build(params[:recipes], context: "#{context}[:recipes]") unless params[:recipes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRulesetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRulesetsInput, context: context)
        type = Types::ListRulesetsInput.new
        type.target_arn = params[:target_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRulesetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRulesetsOutput, context: context)
        type = Types::ListRulesetsOutput.new
        type.rulesets = RulesetItemList.build(params[:rulesets], context: "#{context}[:rulesets]") unless params[:rulesets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSchedulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchedulesInput, context: context)
        type = Types::ListSchedulesInput.new
        type.job_name = params[:job_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSchedulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchedulesOutput, context: context)
        type = Types::ListSchedulesOutput.new
        type.schedules = ScheduleList.build(params[:schedules], context: "#{context}[:schedules]") unless params[:schedules].nil?
        type.next_token = params[:next_token]
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
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Metadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Metadata, context: context)
        type = Types::Metadata.new
        type.source_arn = params[:source_arn]
        type
      end
    end

    module Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Output, context: context)
        type = Types::Output.new
        type.compression_format = params[:compression_format]
        type.format = params[:format]
        type.partition_columns = ColumnNameList.build(params[:partition_columns], context: "#{context}[:partition_columns]") unless params[:partition_columns].nil?
        type.location = S3Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.overwrite = params[:overwrite]
        type.format_options = OutputFormatOptions.build(params[:format_options], context: "#{context}[:format_options]") unless params[:format_options].nil?
        type.max_output_files = params[:max_output_files]
        type
      end
    end

    module OutputFormatOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputFormatOptions, context: context)
        type = Types::OutputFormatOptions.new
        type.csv = CsvOutputOptions.build(params[:csv], context: "#{context}[:csv]") unless params[:csv].nil?
        type
      end
    end

    module OutputList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Output.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PathOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PathOptions, context: context)
        type = Types::PathOptions.new
        type.last_modified_date_condition = FilterExpression.build(params[:last_modified_date_condition], context: "#{context}[:last_modified_date_condition]") unless params[:last_modified_date_condition].nil?
        type.files_limit = FilesLimit.build(params[:files_limit], context: "#{context}[:files_limit]") unless params[:files_limit].nil?
        type.parameters = PathParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module PathParametersMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = DatasetParameter.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ProfileConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProfileConfiguration, context: context)
        type = Types::ProfileConfiguration.new
        type.dataset_statistics_configuration = StatisticsConfiguration.build(params[:dataset_statistics_configuration], context: "#{context}[:dataset_statistics_configuration]") unless params[:dataset_statistics_configuration].nil?
        type.profile_columns = ColumnSelectorList.build(params[:profile_columns], context: "#{context}[:profile_columns]") unless params[:profile_columns].nil?
        type.column_statistics_configurations = ColumnStatisticsConfigurationList.build(params[:column_statistics_configurations], context: "#{context}[:column_statistics_configurations]") unless params[:column_statistics_configurations].nil?
        type.entity_detector_configuration = EntityDetectorConfiguration.build(params[:entity_detector_configuration], context: "#{context}[:entity_detector_configuration]") unless params[:entity_detector_configuration].nil?
        type
      end
    end

    module Project
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Project, context: context)
        type = Types::Project.new
        type.account_id = params[:account_id]
        type.create_date = params[:create_date]
        type.created_by = params[:created_by]
        type.dataset_name = params[:dataset_name]
        type.last_modified_date = params[:last_modified_date]
        type.last_modified_by = params[:last_modified_by]
        type.name = params[:name]
        type.recipe_name = params[:recipe_name]
        type.resource_arn = params[:resource_arn]
        type.sample = Sample.build(params[:sample], context: "#{context}[:sample]") unless params[:sample].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.role_arn = params[:role_arn]
        type.opened_by = params[:opened_by]
        type.open_date = params[:open_date]
        type
      end
    end

    module ProjectList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Project.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PublishRecipeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishRecipeInput, context: context)
        type = Types::PublishRecipeInput.new
        type.description = params[:description]
        type.name = params[:name]
        type
      end
    end

    module PublishRecipeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishRecipeOutput, context: context)
        type = Types::PublishRecipeOutput.new
        type.name = params[:name]
        type
      end
    end

    module Recipe
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Recipe, context: context)
        type = Types::Recipe.new
        type.created_by = params[:created_by]
        type.create_date = params[:create_date]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.project_name = params[:project_name]
        type.published_by = params[:published_by]
        type.published_date = params[:published_date]
        type.description = params[:description]
        type.name = params[:name]
        type.resource_arn = params[:resource_arn]
        type.steps = RecipeStepList.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.recipe_version = params[:recipe_version]
        type
      end
    end

    module RecipeAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecipeAction, context: context)
        type = Types::RecipeAction.new
        type.operation = params[:operation]
        type.parameters = ParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module RecipeErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecipeVersionErrorDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecipeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Recipe.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecipeReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecipeReference, context: context)
        type = Types::RecipeReference.new
        type.name = params[:name]
        type.recipe_version = params[:recipe_version]
        type
      end
    end

    module RecipeStep
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecipeStep, context: context)
        type = Types::RecipeStep.new
        type.action = RecipeAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.condition_expressions = ConditionExpressionList.build(params[:condition_expressions], context: "#{context}[:condition_expressions]") unless params[:condition_expressions].nil?
        type
      end
    end

    module RecipeStepList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecipeStep.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecipeVersionErrorDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecipeVersionErrorDetail, context: context)
        type = Types::RecipeVersionErrorDetail.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.recipe_version = params[:recipe_version]
        type
      end
    end

    module RecipeVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Rule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Rule, context: context)
        type = Types::Rule.new
        type.name = params[:name]
        type.disabled = params[:disabled]
        type.check_expression = params[:check_expression]
        type.substitution_map = ValuesMap.build(params[:substitution_map], context: "#{context}[:substitution_map]") unless params[:substitution_map].nil?
        type.threshold = Threshold.build(params[:threshold], context: "#{context}[:threshold]") unless params[:threshold].nil?
        type.column_selectors = ColumnSelectorList.build(params[:column_selectors], context: "#{context}[:column_selectors]") unless params[:column_selectors].nil?
        type
      end
    end

    module RuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Rule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RulesetItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RulesetItem, context: context)
        type = Types::RulesetItem.new
        type.account_id = params[:account_id]
        type.created_by = params[:created_by]
        type.create_date = params[:create_date]
        type.description = params[:description]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.name = params[:name]
        type.resource_arn = params[:resource_arn]
        type.rule_count = params[:rule_count]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.target_arn = params[:target_arn]
        type
      end
    end

    module RulesetItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RulesetItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.bucket_owner = params[:bucket_owner]
        type
      end
    end

    module S3TableOutputOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3TableOutputOptions, context: context)
        type = Types::S3TableOutputOptions.new
        type.location = S3Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type
      end
    end

    module Sample
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Sample, context: context)
        type = Types::Sample.new
        type.size = params[:size]
        type.type = params[:type]
        type
      end
    end

    module Schedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Schedule, context: context)
        type = Types::Schedule.new
        type.account_id = params[:account_id]
        type.created_by = params[:created_by]
        type.create_date = params[:create_date]
        type.job_names = JobNameList.build(params[:job_names], context: "#{context}[:job_names]") unless params[:job_names].nil?
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_date = params[:last_modified_date]
        type.resource_arn = params[:resource_arn]
        type.cron_expression = params[:cron_expression]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.name = params[:name]
        type
      end
    end

    module ScheduleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Schedule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SendProjectSessionActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendProjectSessionActionInput, context: context)
        type = Types::SendProjectSessionActionInput.new
        type.preview = params[:preview]
        type.name = params[:name]
        type.recipe_step = RecipeStep.build(params[:recipe_step], context: "#{context}[:recipe_step]") unless params[:recipe_step].nil?
        type.step_index = params[:step_index]
        type.client_session_id = params[:client_session_id]
        type.view_frame = ViewFrame.build(params[:view_frame], context: "#{context}[:view_frame]") unless params[:view_frame].nil?
        type
      end
    end

    module SendProjectSessionActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendProjectSessionActionOutput, context: context)
        type = Types::SendProjectSessionActionOutput.new
        type.result = params[:result]
        type.name = params[:name]
        type.action_id = params[:action_id]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SheetIndexList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SheetNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StartJobRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartJobRunInput, context: context)
        type = Types::StartJobRunInput.new
        type.name = params[:name]
        type
      end
    end

    module StartJobRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartJobRunOutput, context: context)
        type = Types::StartJobRunOutput.new
        type.run_id = params[:run_id]
        type
      end
    end

    module StartProjectSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartProjectSessionInput, context: context)
        type = Types::StartProjectSessionInput.new
        type.name = params[:name]
        type.assume_control = params[:assume_control]
        type
      end
    end

    module StartProjectSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartProjectSessionOutput, context: context)
        type = Types::StartProjectSessionOutput.new
        type.name = params[:name]
        type.client_session_id = params[:client_session_id]
        type
      end
    end

    module StatisticList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StatisticOverride
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatisticOverride, context: context)
        type = Types::StatisticOverride.new
        type.statistic = params[:statistic]
        type.parameters = ParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module StatisticOverrideList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StatisticOverride.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StatisticsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatisticsConfiguration, context: context)
        type = Types::StatisticsConfiguration.new
        type.included_statistics = StatisticList.build(params[:included_statistics], context: "#{context}[:included_statistics]") unless params[:included_statistics].nil?
        type.overrides = StatisticOverrideList.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type
      end
    end

    module StopJobRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopJobRunInput, context: context)
        type = Types::StopJobRunInput.new
        type.name = params[:name]
        type.run_id = params[:run_id]
        type
      end
    end

    module StopJobRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopJobRunOutput, context: context)
        type = Types::StopJobRunOutput.new
        type.run_id = params[:run_id]
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

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module Threshold
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Threshold, context: context)
        type = Types::Threshold.new
        type.value = params[:value]
        type.type = params[:type]
        type.unit = params[:unit]
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
        type
      end
    end

    module UpdateDatasetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatasetInput, context: context)
        type = Types::UpdateDatasetInput.new
        type.name = params[:name]
        type.format = params[:format]
        type.format_options = FormatOptions.build(params[:format_options], context: "#{context}[:format_options]") unless params[:format_options].nil?
        type.input = Input.build(params[:input], context: "#{context}[:input]") unless params[:input].nil?
        type.path_options = PathOptions.build(params[:path_options], context: "#{context}[:path_options]") unless params[:path_options].nil?
        type
      end
    end

    module UpdateDatasetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatasetOutput, context: context)
        type = Types::UpdateDatasetOutput.new
        type.name = params[:name]
        type
      end
    end

    module UpdateProfileJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProfileJobInput, context: context)
        type = Types::UpdateProfileJobInput.new
        type.configuration = ProfileConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.encryption_key_arn = params[:encryption_key_arn]
        type.encryption_mode = params[:encryption_mode]
        type.name = params[:name]
        type.log_subscription = params[:log_subscription]
        type.max_capacity = params[:max_capacity]
        type.max_retries = params[:max_retries]
        type.output_location = S3Location.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type.validation_configurations = ValidationConfigurationList.build(params[:validation_configurations], context: "#{context}[:validation_configurations]") unless params[:validation_configurations].nil?
        type.role_arn = params[:role_arn]
        type.timeout = params[:timeout]
        type.job_sample = JobSample.build(params[:job_sample], context: "#{context}[:job_sample]") unless params[:job_sample].nil?
        type
      end
    end

    module UpdateProfileJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProfileJobOutput, context: context)
        type = Types::UpdateProfileJobOutput.new
        type.name = params[:name]
        type
      end
    end

    module UpdateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectInput, context: context)
        type = Types::UpdateProjectInput.new
        type.sample = Sample.build(params[:sample], context: "#{context}[:sample]") unless params[:sample].nil?
        type.role_arn = params[:role_arn]
        type.name = params[:name]
        type
      end
    end

    module UpdateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectOutput, context: context)
        type = Types::UpdateProjectOutput.new
        type.last_modified_date = params[:last_modified_date]
        type.name = params[:name]
        type
      end
    end

    module UpdateRecipeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRecipeInput, context: context)
        type = Types::UpdateRecipeInput.new
        type.description = params[:description]
        type.name = params[:name]
        type.steps = RecipeStepList.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type
      end
    end

    module UpdateRecipeJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRecipeJobInput, context: context)
        type = Types::UpdateRecipeJobInput.new
        type.encryption_key_arn = params[:encryption_key_arn]
        type.encryption_mode = params[:encryption_mode]
        type.name = params[:name]
        type.log_subscription = params[:log_subscription]
        type.max_capacity = params[:max_capacity]
        type.max_retries = params[:max_retries]
        type.outputs = OutputList.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.data_catalog_outputs = DataCatalogOutputList.build(params[:data_catalog_outputs], context: "#{context}[:data_catalog_outputs]") unless params[:data_catalog_outputs].nil?
        type.database_outputs = DatabaseOutputList.build(params[:database_outputs], context: "#{context}[:database_outputs]") unless params[:database_outputs].nil?
        type.role_arn = params[:role_arn]
        type.timeout = params[:timeout]
        type
      end
    end

    module UpdateRecipeJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRecipeJobOutput, context: context)
        type = Types::UpdateRecipeJobOutput.new
        type.name = params[:name]
        type
      end
    end

    module UpdateRecipeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRecipeOutput, context: context)
        type = Types::UpdateRecipeOutput.new
        type.name = params[:name]
        type
      end
    end

    module UpdateRulesetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRulesetInput, context: context)
        type = Types::UpdateRulesetInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.rules = RuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module UpdateRulesetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRulesetOutput, context: context)
        type = Types::UpdateRulesetOutput.new
        type.name = params[:name]
        type
      end
    end

    module UpdateScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateScheduleInput, context: context)
        type = Types::UpdateScheduleInput.new
        type.job_names = JobNameList.build(params[:job_names], context: "#{context}[:job_names]") unless params[:job_names].nil?
        type.cron_expression = params[:cron_expression]
        type.name = params[:name]
        type
      end
    end

    module UpdateScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateScheduleOutput, context: context)
        type = Types::UpdateScheduleOutput.new
        type.name = params[:name]
        type
      end
    end

    module ValidationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationConfiguration, context: context)
        type = Types::ValidationConfiguration.new
        type.ruleset_arn = params[:ruleset_arn]
        type.validation_mode = params[:validation_mode]
        type
      end
    end

    module ValidationConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module ValuesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ViewFrame
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ViewFrame, context: context)
        type = Types::ViewFrame.new
        type.start_column_index = params[:start_column_index]
        type.column_range = params[:column_range]
        type.hidden_columns = HiddenColumnList.build(params[:hidden_columns], context: "#{context}[:hidden_columns]") unless params[:hidden_columns].nil?
        type.start_row_index = params[:start_row_index]
        type.row_range = params[:row_range]
        type.analytics = params[:analytics]
        type
      end
    end

  end
end
