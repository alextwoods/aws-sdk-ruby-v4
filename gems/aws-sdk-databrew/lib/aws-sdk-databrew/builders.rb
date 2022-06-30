# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::DataBrew
  module Builders

    # Operation Builder for BatchDeleteRecipeVersion
    class BatchDeleteRecipeVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/recipes/%<Name>s/batchDeleteRecipeVersion',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RecipeVersions'] = Builders::RecipeVersionList.build(input[:recipe_versions]) unless input[:recipe_versions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RecipeVersionList
    class RecipeVersionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDataset
    class CreateDataset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/datasets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        data['FormatOptions'] = Builders::FormatOptions.build(input[:format_options]) unless input[:format_options].nil?
        data['Input'] = Builders::Input.build(input[:input]) unless input[:input].nil?
        data['PathOptions'] = Builders::PathOptions.build(input[:path_options]) unless input[:path_options].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for PathOptions
    class PathOptions
      def self.build(input)
        data = {}
        data['LastModifiedDateCondition'] = Builders::FilterExpression.build(input[:last_modified_date_condition]) unless input[:last_modified_date_condition].nil?
        data['FilesLimit'] = Builders::FilesLimit.build(input[:files_limit]) unless input[:files_limit].nil?
        data['Parameters'] = Builders::PathParametersMap.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # Map Builder for PathParametersMap
    class PathParametersMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::DatasetParameter.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for DatasetParameter
    class DatasetParameter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['DatetimeOptions'] = Builders::DatetimeOptions.build(input[:datetime_options]) unless input[:datetime_options].nil?
        data['CreateColumn'] = input[:create_column] unless input[:create_column].nil?
        data['Filter'] = Builders::FilterExpression.build(input[:filter]) unless input[:filter].nil?
        data
      end
    end

    # Structure Builder for FilterExpression
    class FilterExpression
      def self.build(input)
        data = {}
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data['ValuesMap'] = Builders::ValuesMap.build(input[:values_map]) unless input[:values_map].nil?
        data
      end
    end

    # Map Builder for ValuesMap
    class ValuesMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for DatetimeOptions
    class DatetimeOptions
      def self.build(input)
        data = {}
        data['Format'] = input[:format] unless input[:format].nil?
        data['TimezoneOffset'] = input[:timezone_offset] unless input[:timezone_offset].nil?
        data['LocaleCode'] = input[:locale_code] unless input[:locale_code].nil?
        data
      end
    end

    # Structure Builder for FilesLimit
    class FilesLimit
      def self.build(input)
        data = {}
        data['MaxFiles'] = input[:max_files] unless input[:max_files].nil?
        data['OrderedBy'] = input[:ordered_by] unless input[:ordered_by].nil?
        data['Order'] = input[:order] unless input[:order].nil?
        data
      end
    end

    # Structure Builder for Input
    class Input
      def self.build(input)
        data = {}
        data['S3InputDefinition'] = Builders::S3Location.build(input[:s3_input_definition]) unless input[:s3_input_definition].nil?
        data['DataCatalogInputDefinition'] = Builders::DataCatalogInputDefinition.build(input[:data_catalog_input_definition]) unless input[:data_catalog_input_definition].nil?
        data['DatabaseInputDefinition'] = Builders::DatabaseInputDefinition.build(input[:database_input_definition]) unless input[:database_input_definition].nil?
        data['Metadata'] = Builders::Metadata.build(input[:metadata]) unless input[:metadata].nil?
        data
      end
    end

    # Structure Builder for Metadata
    class Metadata
      def self.build(input)
        data = {}
        data['SourceArn'] = input[:source_arn] unless input[:source_arn].nil?
        data
      end
    end

    # Structure Builder for DatabaseInputDefinition
    class DatabaseInputDefinition
      def self.build(input)
        data = {}
        data['GlueConnectionName'] = input[:glue_connection_name] unless input[:glue_connection_name].nil?
        data['DatabaseTableName'] = input[:database_table_name] unless input[:database_table_name].nil?
        data['TempDirectory'] = Builders::S3Location.build(input[:temp_directory]) unless input[:temp_directory].nil?
        data['QueryString'] = input[:query_string] unless input[:query_string].nil?
        data
      end
    end

    # Structure Builder for S3Location
    class S3Location
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        data['BucketOwner'] = input[:bucket_owner] unless input[:bucket_owner].nil?
        data
      end
    end

    # Structure Builder for DataCatalogInputDefinition
    class DataCatalogInputDefinition
      def self.build(input)
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['TempDirectory'] = Builders::S3Location.build(input[:temp_directory]) unless input[:temp_directory].nil?
        data
      end
    end

    # Structure Builder for FormatOptions
    class FormatOptions
      def self.build(input)
        data = {}
        data['Json'] = Builders::JsonOptions.build(input[:json]) unless input[:json].nil?
        data['Excel'] = Builders::ExcelOptions.build(input[:excel]) unless input[:excel].nil?
        data['Csv'] = Builders::CsvOptions.build(input[:csv]) unless input[:csv].nil?
        data
      end
    end

    # Structure Builder for CsvOptions
    class CsvOptions
      def self.build(input)
        data = {}
        data['Delimiter'] = input[:delimiter] unless input[:delimiter].nil?
        data['HeaderRow'] = input[:header_row] unless input[:header_row].nil?
        data
      end
    end

    # Structure Builder for ExcelOptions
    class ExcelOptions
      def self.build(input)
        data = {}
        data['SheetNames'] = Builders::SheetNameList.build(input[:sheet_names]) unless input[:sheet_names].nil?
        data['SheetIndexes'] = Builders::SheetIndexList.build(input[:sheet_indexes]) unless input[:sheet_indexes].nil?
        data['HeaderRow'] = input[:header_row] unless input[:header_row].nil?
        data
      end
    end

    # List Builder for SheetIndexList
    class SheetIndexList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SheetNameList
    class SheetNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for JsonOptions
    class JsonOptions
      def self.build(input)
        data = {}
        data['MultiLine'] = input[:multi_line] unless input[:multi_line].nil?
        data
      end
    end

    # Operation Builder for CreateProfileJob
    class CreateProfileJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/profileJobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DatasetName'] = input[:dataset_name] unless input[:dataset_name].nil?
        data['EncryptionKeyArn'] = input[:encryption_key_arn] unless input[:encryption_key_arn].nil?
        data['EncryptionMode'] = input[:encryption_mode] unless input[:encryption_mode].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['LogSubscription'] = input[:log_subscription] unless input[:log_subscription].nil?
        data['MaxCapacity'] = input[:max_capacity] unless input[:max_capacity].nil?
        data['MaxRetries'] = input[:max_retries] unless input[:max_retries].nil?
        data['OutputLocation'] = Builders::S3Location.build(input[:output_location]) unless input[:output_location].nil?
        data['Configuration'] = Builders::ProfileConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['ValidationConfigurations'] = Builders::ValidationConfigurationList.build(input[:validation_configurations]) unless input[:validation_configurations].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['JobSample'] = Builders::JobSample.build(input[:job_sample]) unless input[:job_sample].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for JobSample
    class JobSample
      def self.build(input)
        data = {}
        data['Mode'] = input[:mode] unless input[:mode].nil?
        data['Size'] = input[:size] unless input[:size].nil?
        data
      end
    end

    # List Builder for ValidationConfigurationList
    class ValidationConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ValidationConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ValidationConfiguration
    class ValidationConfiguration
      def self.build(input)
        data = {}
        data['RulesetArn'] = input[:ruleset_arn] unless input[:ruleset_arn].nil?
        data['ValidationMode'] = input[:validation_mode] unless input[:validation_mode].nil?
        data
      end
    end

    # Structure Builder for ProfileConfiguration
    class ProfileConfiguration
      def self.build(input)
        data = {}
        data['DatasetStatisticsConfiguration'] = Builders::StatisticsConfiguration.build(input[:dataset_statistics_configuration]) unless input[:dataset_statistics_configuration].nil?
        data['ProfileColumns'] = Builders::ColumnSelectorList.build(input[:profile_columns]) unless input[:profile_columns].nil?
        data['ColumnStatisticsConfigurations'] = Builders::ColumnStatisticsConfigurationList.build(input[:column_statistics_configurations]) unless input[:column_statistics_configurations].nil?
        data['EntityDetectorConfiguration'] = Builders::EntityDetectorConfiguration.build(input[:entity_detector_configuration]) unless input[:entity_detector_configuration].nil?
        data
      end
    end

    # Structure Builder for EntityDetectorConfiguration
    class EntityDetectorConfiguration
      def self.build(input)
        data = {}
        data['EntityTypes'] = Builders::EntityTypeList.build(input[:entity_types]) unless input[:entity_types].nil?
        data['AllowedStatistics'] = Builders::AllowedStatisticList.build(input[:allowed_statistics]) unless input[:allowed_statistics].nil?
        data
      end
    end

    # List Builder for AllowedStatisticList
    class AllowedStatisticList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AllowedStatistics.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AllowedStatistics
    class AllowedStatistics
      def self.build(input)
        data = {}
        data['Statistics'] = Builders::StatisticList.build(input[:statistics]) unless input[:statistics].nil?
        data
      end
    end

    # List Builder for StatisticList
    class StatisticList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for EntityTypeList
    class EntityTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ColumnStatisticsConfigurationList
    class ColumnStatisticsConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ColumnStatisticsConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ColumnStatisticsConfiguration
    class ColumnStatisticsConfiguration
      def self.build(input)
        data = {}
        data['Selectors'] = Builders::ColumnSelectorList.build(input[:selectors]) unless input[:selectors].nil?
        data['Statistics'] = Builders::StatisticsConfiguration.build(input[:statistics]) unless input[:statistics].nil?
        data
      end
    end

    # Structure Builder for StatisticsConfiguration
    class StatisticsConfiguration
      def self.build(input)
        data = {}
        data['IncludedStatistics'] = Builders::StatisticList.build(input[:included_statistics]) unless input[:included_statistics].nil?
        data['Overrides'] = Builders::StatisticOverrideList.build(input[:overrides]) unless input[:overrides].nil?
        data
      end
    end

    # List Builder for StatisticOverrideList
    class StatisticOverrideList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StatisticOverride.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StatisticOverride
    class StatisticOverride
      def self.build(input)
        data = {}
        data['Statistic'] = input[:statistic] unless input[:statistic].nil?
        data['Parameters'] = Builders::ParameterMap.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # Map Builder for ParameterMap
    class ParameterMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for ColumnSelectorList
    class ColumnSelectorList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ColumnSelector.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ColumnSelector
    class ColumnSelector
      def self.build(input)
        data = {}
        data['Regex'] = input[:regex] unless input[:regex].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Operation Builder for CreateProject
    class CreateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/projects')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DatasetName'] = input[:dataset_name] unless input[:dataset_name].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['RecipeName'] = input[:recipe_name] unless input[:recipe_name].nil?
        data['Sample'] = Builders::Sample.build(input[:sample]) unless input[:sample].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Sample
    class Sample
      def self.build(input)
        data = {}
        data['Size'] = input[:size] unless input[:size].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Operation Builder for CreateRecipe
    class CreateRecipe
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/recipes')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Steps'] = Builders::RecipeStepList.build(input[:steps]) unless input[:steps].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RecipeStepList
    class RecipeStepList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RecipeStep.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RecipeStep
    class RecipeStep
      def self.build(input)
        data = {}
        data['Action'] = Builders::RecipeAction.build(input[:action]) unless input[:action].nil?
        data['ConditionExpressions'] = Builders::ConditionExpressionList.build(input[:condition_expressions]) unless input[:condition_expressions].nil?
        data
      end
    end

    # List Builder for ConditionExpressionList
    class ConditionExpressionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ConditionExpression.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConditionExpression
    class ConditionExpression
      def self.build(input)
        data = {}
        data['Condition'] = input[:condition] unless input[:condition].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['TargetColumn'] = input[:target_column] unless input[:target_column].nil?
        data
      end
    end

    # Structure Builder for RecipeAction
    class RecipeAction
      def self.build(input)
        data = {}
        data['Operation'] = input[:operation] unless input[:operation].nil?
        data['Parameters'] = Builders::ParameterMap.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # Operation Builder for CreateRecipeJob
    class CreateRecipeJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/recipeJobs')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DatasetName'] = input[:dataset_name] unless input[:dataset_name].nil?
        data['EncryptionKeyArn'] = input[:encryption_key_arn] unless input[:encryption_key_arn].nil?
        data['EncryptionMode'] = input[:encryption_mode] unless input[:encryption_mode].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['LogSubscription'] = input[:log_subscription] unless input[:log_subscription].nil?
        data['MaxCapacity'] = input[:max_capacity] unless input[:max_capacity].nil?
        data['MaxRetries'] = input[:max_retries] unless input[:max_retries].nil?
        data['Outputs'] = Builders::OutputList.build(input[:outputs]) unless input[:outputs].nil?
        data['DataCatalogOutputs'] = Builders::DataCatalogOutputList.build(input[:data_catalog_outputs]) unless input[:data_catalog_outputs].nil?
        data['DatabaseOutputs'] = Builders::DatabaseOutputList.build(input[:database_outputs]) unless input[:database_outputs].nil?
        data['ProjectName'] = input[:project_name] unless input[:project_name].nil?
        data['RecipeReference'] = Builders::RecipeReference.build(input[:recipe_reference]) unless input[:recipe_reference].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RecipeReference
    class RecipeReference
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['RecipeVersion'] = input[:recipe_version] unless input[:recipe_version].nil?
        data
      end
    end

    # List Builder for DatabaseOutputList
    class DatabaseOutputList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DatabaseOutput.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DatabaseOutput
    class DatabaseOutput
      def self.build(input)
        data = {}
        data['GlueConnectionName'] = input[:glue_connection_name] unless input[:glue_connection_name].nil?
        data['DatabaseOptions'] = Builders::DatabaseTableOutputOptions.build(input[:database_options]) unless input[:database_options].nil?
        data['DatabaseOutputMode'] = input[:database_output_mode] unless input[:database_output_mode].nil?
        data
      end
    end

    # Structure Builder for DatabaseTableOutputOptions
    class DatabaseTableOutputOptions
      def self.build(input)
        data = {}
        data['TempDirectory'] = Builders::S3Location.build(input[:temp_directory]) unless input[:temp_directory].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data
      end
    end

    # List Builder for DataCatalogOutputList
    class DataCatalogOutputList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DataCatalogOutput.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DataCatalogOutput
    class DataCatalogOutput
      def self.build(input)
        data = {}
        data['CatalogId'] = input[:catalog_id] unless input[:catalog_id].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['S3Options'] = Builders::S3TableOutputOptions.build(input[:s3_options]) unless input[:s3_options].nil?
        data['DatabaseOptions'] = Builders::DatabaseTableOutputOptions.build(input[:database_options]) unless input[:database_options].nil?
        data['Overwrite'] = input[:overwrite] unless input[:overwrite].nil?
        data
      end
    end

    # Structure Builder for S3TableOutputOptions
    class S3TableOutputOptions
      def self.build(input)
        data = {}
        data['Location'] = Builders::S3Location.build(input[:location]) unless input[:location].nil?
        data
      end
    end

    # List Builder for OutputList
    class OutputList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Output.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Output
    class Output
      def self.build(input)
        data = {}
        data['CompressionFormat'] = input[:compression_format] unless input[:compression_format].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        data['PartitionColumns'] = Builders::ColumnNameList.build(input[:partition_columns]) unless input[:partition_columns].nil?
        data['Location'] = Builders::S3Location.build(input[:location]) unless input[:location].nil?
        data['Overwrite'] = input[:overwrite] unless input[:overwrite].nil?
        data['FormatOptions'] = Builders::OutputFormatOptions.build(input[:format_options]) unless input[:format_options].nil?
        data['MaxOutputFiles'] = input[:max_output_files] unless input[:max_output_files].nil?
        data
      end
    end

    # Structure Builder for OutputFormatOptions
    class OutputFormatOptions
      def self.build(input)
        data = {}
        data['Csv'] = Builders::CsvOutputOptions.build(input[:csv]) unless input[:csv].nil?
        data
      end
    end

    # Structure Builder for CsvOutputOptions
    class CsvOutputOptions
      def self.build(input)
        data = {}
        data['Delimiter'] = input[:delimiter] unless input[:delimiter].nil?
        data
      end
    end

    # List Builder for ColumnNameList
    class ColumnNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateRuleset
    class CreateRuleset
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/rulesets')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['TargetArn'] = input[:target_arn] unless input[:target_arn].nil?
        data['Rules'] = Builders::RuleList.build(input[:rules]) unless input[:rules].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RuleList
    class RuleList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Rule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Rule
    class Rule
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Disabled'] = input[:disabled] unless input[:disabled].nil?
        data['CheckExpression'] = input[:check_expression] unless input[:check_expression].nil?
        data['SubstitutionMap'] = Builders::ValuesMap.build(input[:substitution_map]) unless input[:substitution_map].nil?
        data['Threshold'] = Builders::Threshold.build(input[:threshold]) unless input[:threshold].nil?
        data['ColumnSelectors'] = Builders::ColumnSelectorList.build(input[:column_selectors]) unless input[:column_selectors].nil?
        data
      end
    end

    # Structure Builder for Threshold
    class Threshold
      def self.build(input)
        data = {}
        data['Value'] = Hearth::NumberHelper.serialize(input[:value]) unless input[:value].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Unit'] = input[:unit] unless input[:unit].nil?
        data
      end
    end

    # Operation Builder for CreateSchedule
    class CreateSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/schedules')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['JobNames'] = Builders::JobNameList.build(input[:job_names]) unless input[:job_names].nil?
        data['CronExpression'] = input[:cron_expression] unless input[:cron_expression].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for JobNameList
    class JobNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteDataset
    class DeleteDataset
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteJob
    class DeleteJob
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteProject
    class DeleteProject
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRecipeVersion
    class DeleteRecipeVersion
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:recipe_version].to_s.empty?
          raise ArgumentError, "HTTP label :recipe_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/recipes/%<Name>s/recipeVersion/%<RecipeVersion>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s),
            RecipeVersion: Hearth::HTTP.uri_escape(input[:recipe_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRuleset
    class DeleteRuleset
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/rulesets/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSchedule
    class DeleteSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/schedules/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDataset
    class DescribeDataset
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeJob
    class DescribeJob
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeJobRun
    class DescribeJobRun
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:run_id].to_s.empty?
          raise ArgumentError, "HTTP label :run_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<Name>s/jobRun/%<RunId>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s),
            RunId: Hearth::HTTP.uri_escape(input[:run_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeProject
    class DescribeProject
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeRecipe
    class DescribeRecipe
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/recipes/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['recipeVersion'] = input[:recipe_version].to_s unless input[:recipe_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeRuleset
    class DescribeRuleset
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/rulesets/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeSchedule
    class DescribeSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/schedules/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDatasets
    class ListDatasets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/datasets')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJobRuns
    class ListJobRuns
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<Name>s/jobRuns',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListJobs
    class ListJobs
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/jobs')
        params = Hearth::Query::ParamList.new
        params['datasetName'] = input[:dataset_name].to_s unless input[:dataset_name].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['projectName'] = input[:project_name].to_s unless input[:project_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProjects
    class ListProjects
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/projects')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRecipeVersions
    class ListRecipeVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/recipeVersions')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['name'] = input[:name].to_s unless input[:name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRecipes
    class ListRecipes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/recipes')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['recipeVersion'] = input[:recipe_version].to_s unless input[:recipe_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRulesets
    class ListRulesets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/rulesets')
        params = Hearth::Query::ParamList.new
        params['targetArn'] = input[:target_arn].to_s unless input[:target_arn].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSchedules
    class ListSchedules
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/schedules')
        params = Hearth::Query::ParamList.new
        params['jobName'] = input[:job_name].to_s unless input[:job_name].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PublishRecipe
    class PublishRecipe
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/recipes/%<Name>s/publishRecipe',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendProjectSessionAction
    class SendProjectSessionAction
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<Name>s/sendProjectSessionAction',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Preview'] = input[:preview] unless input[:preview].nil?
        data['RecipeStep'] = Builders::RecipeStep.build(input[:recipe_step]) unless input[:recipe_step].nil?
        data['StepIndex'] = input[:step_index] unless input[:step_index].nil?
        data['ClientSessionId'] = input[:client_session_id] unless input[:client_session_id].nil?
        data['ViewFrame'] = Builders::ViewFrame.build(input[:view_frame]) unless input[:view_frame].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ViewFrame
    class ViewFrame
      def self.build(input)
        data = {}
        data['StartColumnIndex'] = input[:start_column_index] unless input[:start_column_index].nil?
        data['ColumnRange'] = input[:column_range] unless input[:column_range].nil?
        data['HiddenColumns'] = Builders::HiddenColumnList.build(input[:hidden_columns]) unless input[:hidden_columns].nil?
        data['StartRowIndex'] = input[:start_row_index] unless input[:start_row_index].nil?
        data['RowRange'] = input[:row_range] unless input[:row_range].nil?
        data['Analytics'] = input[:analytics] unless input[:analytics].nil?
        data
      end
    end

    # List Builder for HiddenColumnList
    class HiddenColumnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartJobRun
    class StartJobRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<Name>s/startJobRun',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for StartProjectSession
    class StartProjectSession
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<Name>s/startProjectSession',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AssumeControl'] = input[:assume_control] unless input[:assume_control].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopJobRun
    class StopJobRun
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        if input[:run_id].to_s.empty?
          raise ArgumentError, "HTTP label :run_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/jobs/%<Name>s/jobRun/%<RunId>s/stopJobRun',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s),
            RunId: Hearth::HTTP.uri_escape(input[:run_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDataset
    class UpdateDataset
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/datasets/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Format'] = input[:format] unless input[:format].nil?
        data['FormatOptions'] = Builders::FormatOptions.build(input[:format_options]) unless input[:format_options].nil?
        data['Input'] = Builders::Input.build(input[:input]) unless input[:input].nil?
        data['PathOptions'] = Builders::PathOptions.build(input[:path_options]) unless input[:path_options].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProfileJob
    class UpdateProfileJob
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/profileJobs/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Configuration'] = Builders::ProfileConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['EncryptionKeyArn'] = input[:encryption_key_arn] unless input[:encryption_key_arn].nil?
        data['EncryptionMode'] = input[:encryption_mode] unless input[:encryption_mode].nil?
        data['LogSubscription'] = input[:log_subscription] unless input[:log_subscription].nil?
        data['MaxCapacity'] = input[:max_capacity] unless input[:max_capacity].nil?
        data['MaxRetries'] = input[:max_retries] unless input[:max_retries].nil?
        data['OutputLocation'] = Builders::S3Location.build(input[:output_location]) unless input[:output_location].nil?
        data['ValidationConfigurations'] = Builders::ValidationConfigurationList.build(input[:validation_configurations]) unless input[:validation_configurations].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        data['JobSample'] = Builders::JobSample.build(input[:job_sample]) unless input[:job_sample].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProject
    class UpdateProject
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/projects/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Sample'] = Builders::Sample.build(input[:sample]) unless input[:sample].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRecipe
    class UpdateRecipe
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/recipes/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['Steps'] = Builders::RecipeStepList.build(input[:steps]) unless input[:steps].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRecipeJob
    class UpdateRecipeJob
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/recipeJobs/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['EncryptionKeyArn'] = input[:encryption_key_arn] unless input[:encryption_key_arn].nil?
        data['EncryptionMode'] = input[:encryption_mode] unless input[:encryption_mode].nil?
        data['LogSubscription'] = input[:log_subscription] unless input[:log_subscription].nil?
        data['MaxCapacity'] = input[:max_capacity] unless input[:max_capacity].nil?
        data['MaxRetries'] = input[:max_retries] unless input[:max_retries].nil?
        data['Outputs'] = Builders::OutputList.build(input[:outputs]) unless input[:outputs].nil?
        data['DataCatalogOutputs'] = Builders::DataCatalogOutputList.build(input[:data_catalog_outputs]) unless input[:data_catalog_outputs].nil?
        data['DatabaseOutputs'] = Builders::DatabaseOutputList.build(input[:database_outputs]) unless input[:database_outputs].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Timeout'] = input[:timeout] unless input[:timeout].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRuleset
    class UpdateRuleset
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/rulesets/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        data['Rules'] = Builders::RuleList.build(input[:rules]) unless input[:rules].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSchedule
    class UpdateSchedule
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/schedules/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['JobNames'] = Builders::JobNameList.build(input[:job_names]) unless input[:job_names].nil?
        data['CronExpression'] = input[:cron_expression] unless input[:cron_expression].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
