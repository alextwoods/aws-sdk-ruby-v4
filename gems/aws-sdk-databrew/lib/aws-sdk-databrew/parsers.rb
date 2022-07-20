# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataBrew
  module Parsers

    # Operation Parser for BatchDeleteRecipeVersion
    class BatchDeleteRecipeVersion
      def self.parse(http_resp)
        data = Types::BatchDeleteRecipeVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.errors = (Parsers::RecipeErrorList.parse(map['Errors']) unless map['Errors'].nil?)
        data
      end
    end

    class RecipeErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecipeVersionErrorDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecipeVersionErrorDetail
      def self.parse(map)
        data = Types::RecipeVersionErrorDetail.new
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        data.recipe_version = map['RecipeVersion']
        return data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateDataset
    class CreateDataset
      def self.parse(http_resp)
        data = Types::CreateDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateProfileJob
    class CreateProfileJob
      def self.parse(http_resp)
        data = Types::CreateProfileJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateProject
    class CreateProject
      def self.parse(http_resp)
        data = Types::CreateProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateRecipe
    class CreateRecipe
      def self.parse(http_resp)
        data = Types::CreateRecipeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateRecipeJob
    class CreateRecipeJob
      def self.parse(http_resp)
        data = Types::CreateRecipeJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateRuleset
    class CreateRuleset
      def self.parse(http_resp)
        data = Types::CreateRulesetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for CreateSchedule
    class CreateSchedule
      def self.parse(http_resp)
        data = Types::CreateScheduleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for DeleteDataset
    class DeleteDataset
      def self.parse(http_resp)
        data = Types::DeleteDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for DeleteJob
    class DeleteJob
      def self.parse(http_resp)
        data = Types::DeleteJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for DeleteProject
    class DeleteProject
      def self.parse(http_resp)
        data = Types::DeleteProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for DeleteRecipeVersion
    class DeleteRecipeVersion
      def self.parse(http_resp)
        data = Types::DeleteRecipeVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.recipe_version = map['RecipeVersion']
        data
      end
    end

    # Operation Parser for DeleteRuleset
    class DeleteRuleset
      def self.parse(http_resp)
        data = Types::DeleteRulesetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for DeleteSchedule
    class DeleteSchedule
      def self.parse(http_resp)
        data = Types::DeleteScheduleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for DescribeDataset
    class DescribeDataset
      def self.parse(http_resp)
        data = Types::DescribeDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.created_by = map['CreatedBy']
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.name = map['Name']
        data.format = map['Format']
        data.format_options = (Parsers::FormatOptions.parse(map['FormatOptions']) unless map['FormatOptions'].nil?)
        data.input = (Parsers::Input.parse(map['Input']) unless map['Input'].nil?)
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.last_modified_by = map['LastModifiedBy']
        data.source = map['Source']
        data.path_options = (Parsers::PathOptions.parse(map['PathOptions']) unless map['PathOptions'].nil?)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.resource_arn = map['ResourceArn']
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class PathOptions
      def self.parse(map)
        data = Types::PathOptions.new
        data.last_modified_date_condition = (Parsers::FilterExpression.parse(map['LastModifiedDateCondition']) unless map['LastModifiedDateCondition'].nil?)
        data.files_limit = (Parsers::FilesLimit.parse(map['FilesLimit']) unless map['FilesLimit'].nil?)
        data.parameters = (Parsers::PathParametersMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    class PathParametersMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::DatasetParameter.parse(value) unless value.nil?
        end
        data
      end
    end

    class DatasetParameter
      def self.parse(map)
        data = Types::DatasetParameter.new
        data.name = map['Name']
        data.type = map['Type']
        data.datetime_options = (Parsers::DatetimeOptions.parse(map['DatetimeOptions']) unless map['DatetimeOptions'].nil?)
        data.create_column = map['CreateColumn']
        data.filter = (Parsers::FilterExpression.parse(map['Filter']) unless map['Filter'].nil?)
        return data
      end
    end

    class FilterExpression
      def self.parse(map)
        data = Types::FilterExpression.new
        data.expression = map['Expression']
        data.values_map = (Parsers::ValuesMap.parse(map['ValuesMap']) unless map['ValuesMap'].nil?)
        return data
      end
    end

    class ValuesMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class DatetimeOptions
      def self.parse(map)
        data = Types::DatetimeOptions.new
        data.format = map['Format']
        data.timezone_offset = map['TimezoneOffset']
        data.locale_code = map['LocaleCode']
        return data
      end
    end

    class FilesLimit
      def self.parse(map)
        data = Types::FilesLimit.new
        data.max_files = map['MaxFiles']
        data.ordered_by = map['OrderedBy']
        data.order = map['Order']
        return data
      end
    end

    class Input
      def self.parse(map)
        data = Types::Input.new
        data.s3_input_definition = (Parsers::S3Location.parse(map['S3InputDefinition']) unless map['S3InputDefinition'].nil?)
        data.data_catalog_input_definition = (Parsers::DataCatalogInputDefinition.parse(map['DataCatalogInputDefinition']) unless map['DataCatalogInputDefinition'].nil?)
        data.database_input_definition = (Parsers::DatabaseInputDefinition.parse(map['DatabaseInputDefinition']) unless map['DatabaseInputDefinition'].nil?)
        data.metadata = (Parsers::Metadata.parse(map['Metadata']) unless map['Metadata'].nil?)
        return data
      end
    end

    class Metadata
      def self.parse(map)
        data = Types::Metadata.new
        data.source_arn = map['SourceArn']
        return data
      end
    end

    class DatabaseInputDefinition
      def self.parse(map)
        data = Types::DatabaseInputDefinition.new
        data.glue_connection_name = map['GlueConnectionName']
        data.database_table_name = map['DatabaseTableName']
        data.temp_directory = (Parsers::S3Location.parse(map['TempDirectory']) unless map['TempDirectory'].nil?)
        data.query_string = map['QueryString']
        return data
      end
    end

    class S3Location
      def self.parse(map)
        data = Types::S3Location.new
        data.bucket = map['Bucket']
        data.key = map['Key']
        data.bucket_owner = map['BucketOwner']
        return data
      end
    end

    class DataCatalogInputDefinition
      def self.parse(map)
        data = Types::DataCatalogInputDefinition.new
        data.catalog_id = map['CatalogId']
        data.database_name = map['DatabaseName']
        data.table_name = map['TableName']
        data.temp_directory = (Parsers::S3Location.parse(map['TempDirectory']) unless map['TempDirectory'].nil?)
        return data
      end
    end

    class FormatOptions
      def self.parse(map)
        data = Types::FormatOptions.new
        data.json = (Parsers::JsonOptions.parse(map['Json']) unless map['Json'].nil?)
        data.excel = (Parsers::ExcelOptions.parse(map['Excel']) unless map['Excel'].nil?)
        data.csv = (Parsers::CsvOptions.parse(map['Csv']) unless map['Csv'].nil?)
        return data
      end
    end

    class CsvOptions
      def self.parse(map)
        data = Types::CsvOptions.new
        data.delimiter = map['Delimiter']
        data.header_row = map['HeaderRow']
        return data
      end
    end

    class ExcelOptions
      def self.parse(map)
        data = Types::ExcelOptions.new
        data.sheet_names = (Parsers::SheetNameList.parse(map['SheetNames']) unless map['SheetNames'].nil?)
        data.sheet_indexes = (Parsers::SheetIndexList.parse(map['SheetIndexes']) unless map['SheetIndexes'].nil?)
        data.header_row = map['HeaderRow']
        return data
      end
    end

    class SheetIndexList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SheetNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class JsonOptions
      def self.parse(map)
        data = Types::JsonOptions.new
        data.multi_line = map['MultiLine']
        return data
      end
    end

    # Operation Parser for DescribeJob
    class DescribeJob
      def self.parse(http_resp)
        data = Types::DescribeJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.created_by = map['CreatedBy']
        data.dataset_name = map['DatasetName']
        data.encryption_key_arn = map['EncryptionKeyArn']
        data.encryption_mode = map['EncryptionMode']
        data.name = map['Name']
        data.type = map['Type']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.log_subscription = map['LogSubscription']
        data.max_capacity = map['MaxCapacity']
        data.max_retries = map['MaxRetries']
        data.outputs = (Parsers::OutputList.parse(map['Outputs']) unless map['Outputs'].nil?)
        data.data_catalog_outputs = (Parsers::DataCatalogOutputList.parse(map['DataCatalogOutputs']) unless map['DataCatalogOutputs'].nil?)
        data.database_outputs = (Parsers::DatabaseOutputList.parse(map['DatabaseOutputs']) unless map['DatabaseOutputs'].nil?)
        data.project_name = map['ProjectName']
        data.profile_configuration = (Parsers::ProfileConfiguration.parse(map['ProfileConfiguration']) unless map['ProfileConfiguration'].nil?)
        data.validation_configurations = (Parsers::ValidationConfigurationList.parse(map['ValidationConfigurations']) unless map['ValidationConfigurations'].nil?)
        data.recipe_reference = (Parsers::RecipeReference.parse(map['RecipeReference']) unless map['RecipeReference'].nil?)
        data.resource_arn = map['ResourceArn']
        data.role_arn = map['RoleArn']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.timeout = map['Timeout']
        data.job_sample = (Parsers::JobSample.parse(map['JobSample']) unless map['JobSample'].nil?)
        data
      end
    end

    class JobSample
      def self.parse(map)
        data = Types::JobSample.new
        data.mode = map['Mode']
        data.size = map['Size']
        return data
      end
    end

    class RecipeReference
      def self.parse(map)
        data = Types::RecipeReference.new
        data.name = map['Name']
        data.recipe_version = map['RecipeVersion']
        return data
      end
    end

    class ValidationConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidationConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationConfiguration
      def self.parse(map)
        data = Types::ValidationConfiguration.new
        data.ruleset_arn = map['RulesetArn']
        data.validation_mode = map['ValidationMode']
        return data
      end
    end

    class ProfileConfiguration
      def self.parse(map)
        data = Types::ProfileConfiguration.new
        data.dataset_statistics_configuration = (Parsers::StatisticsConfiguration.parse(map['DatasetStatisticsConfiguration']) unless map['DatasetStatisticsConfiguration'].nil?)
        data.profile_columns = (Parsers::ColumnSelectorList.parse(map['ProfileColumns']) unless map['ProfileColumns'].nil?)
        data.column_statistics_configurations = (Parsers::ColumnStatisticsConfigurationList.parse(map['ColumnStatisticsConfigurations']) unless map['ColumnStatisticsConfigurations'].nil?)
        data.entity_detector_configuration = (Parsers::EntityDetectorConfiguration.parse(map['EntityDetectorConfiguration']) unless map['EntityDetectorConfiguration'].nil?)
        return data
      end
    end

    class EntityDetectorConfiguration
      def self.parse(map)
        data = Types::EntityDetectorConfiguration.new
        data.entity_types = (Parsers::EntityTypeList.parse(map['EntityTypes']) unless map['EntityTypes'].nil?)
        data.allowed_statistics = (Parsers::AllowedStatisticList.parse(map['AllowedStatistics']) unless map['AllowedStatistics'].nil?)
        return data
      end
    end

    class AllowedStatisticList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AllowedStatistics.parse(value) unless value.nil?
        end
        data
      end
    end

    class AllowedStatistics
      def self.parse(map)
        data = Types::AllowedStatistics.new
        data.statistics = (Parsers::StatisticList.parse(map['Statistics']) unless map['Statistics'].nil?)
        return data
      end
    end

    class StatisticList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class EntityTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ColumnStatisticsConfigurationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ColumnStatisticsConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class ColumnStatisticsConfiguration
      def self.parse(map)
        data = Types::ColumnStatisticsConfiguration.new
        data.selectors = (Parsers::ColumnSelectorList.parse(map['Selectors']) unless map['Selectors'].nil?)
        data.statistics = (Parsers::StatisticsConfiguration.parse(map['Statistics']) unless map['Statistics'].nil?)
        return data
      end
    end

    class StatisticsConfiguration
      def self.parse(map)
        data = Types::StatisticsConfiguration.new
        data.included_statistics = (Parsers::StatisticList.parse(map['IncludedStatistics']) unless map['IncludedStatistics'].nil?)
        data.overrides = (Parsers::StatisticOverrideList.parse(map['Overrides']) unless map['Overrides'].nil?)
        return data
      end
    end

    class StatisticOverrideList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StatisticOverride.parse(value) unless value.nil?
        end
        data
      end
    end

    class StatisticOverride
      def self.parse(map)
        data = Types::StatisticOverride.new
        data.statistic = map['Statistic']
        data.parameters = (Parsers::ParameterMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    class ParameterMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ColumnSelectorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ColumnSelector.parse(value) unless value.nil?
        end
        data
      end
    end

    class ColumnSelector
      def self.parse(map)
        data = Types::ColumnSelector.new
        data.regex = map['Regex']
        data.name = map['Name']
        return data
      end
    end

    class DatabaseOutputList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DatabaseOutput.parse(value) unless value.nil?
        end
        data
      end
    end

    class DatabaseOutput
      def self.parse(map)
        data = Types::DatabaseOutput.new
        data.glue_connection_name = map['GlueConnectionName']
        data.database_options = (Parsers::DatabaseTableOutputOptions.parse(map['DatabaseOptions']) unless map['DatabaseOptions'].nil?)
        data.database_output_mode = map['DatabaseOutputMode']
        return data
      end
    end

    class DatabaseTableOutputOptions
      def self.parse(map)
        data = Types::DatabaseTableOutputOptions.new
        data.temp_directory = (Parsers::S3Location.parse(map['TempDirectory']) unless map['TempDirectory'].nil?)
        data.table_name = map['TableName']
        return data
      end
    end

    class DataCatalogOutputList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataCatalogOutput.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataCatalogOutput
      def self.parse(map)
        data = Types::DataCatalogOutput.new
        data.catalog_id = map['CatalogId']
        data.database_name = map['DatabaseName']
        data.table_name = map['TableName']
        data.s3_options = (Parsers::S3TableOutputOptions.parse(map['S3Options']) unless map['S3Options'].nil?)
        data.database_options = (Parsers::DatabaseTableOutputOptions.parse(map['DatabaseOptions']) unless map['DatabaseOptions'].nil?)
        data.overwrite = map['Overwrite']
        return data
      end
    end

    class S3TableOutputOptions
      def self.parse(map)
        data = Types::S3TableOutputOptions.new
        data.location = (Parsers::S3Location.parse(map['Location']) unless map['Location'].nil?)
        return data
      end
    end

    class OutputList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Output.parse(value) unless value.nil?
        end
        data
      end
    end

    class Output
      def self.parse(map)
        data = Types::Output.new
        data.compression_format = map['CompressionFormat']
        data.format = map['Format']
        data.partition_columns = (Parsers::ColumnNameList.parse(map['PartitionColumns']) unless map['PartitionColumns'].nil?)
        data.location = (Parsers::S3Location.parse(map['Location']) unless map['Location'].nil?)
        data.overwrite = map['Overwrite']
        data.format_options = (Parsers::OutputFormatOptions.parse(map['FormatOptions']) unless map['FormatOptions'].nil?)
        data.max_output_files = map['MaxOutputFiles']
        return data
      end
    end

    class OutputFormatOptions
      def self.parse(map)
        data = Types::OutputFormatOptions.new
        data.csv = (Parsers::CsvOutputOptions.parse(map['Csv']) unless map['Csv'].nil?)
        return data
      end
    end

    class CsvOutputOptions
      def self.parse(map)
        data = Types::CsvOutputOptions.new
        data.delimiter = map['Delimiter']
        return data
      end
    end

    class ColumnNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeJobRun
    class DescribeJobRun
      def self.parse(http_resp)
        data = Types::DescribeJobRunOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attempt = map['Attempt']
        data.completed_on = Time.at(map['CompletedOn'].to_i) if map['CompletedOn']
        data.dataset_name = map['DatasetName']
        data.error_message = map['ErrorMessage']
        data.execution_time = map['ExecutionTime']
        data.job_name = map['JobName']
        data.profile_configuration = (Parsers::ProfileConfiguration.parse(map['ProfileConfiguration']) unless map['ProfileConfiguration'].nil?)
        data.validation_configurations = (Parsers::ValidationConfigurationList.parse(map['ValidationConfigurations']) unless map['ValidationConfigurations'].nil?)
        data.run_id = map['RunId']
        data.state = map['State']
        data.log_subscription = map['LogSubscription']
        data.log_group_name = map['LogGroupName']
        data.outputs = (Parsers::OutputList.parse(map['Outputs']) unless map['Outputs'].nil?)
        data.data_catalog_outputs = (Parsers::DataCatalogOutputList.parse(map['DataCatalogOutputs']) unless map['DataCatalogOutputs'].nil?)
        data.database_outputs = (Parsers::DatabaseOutputList.parse(map['DatabaseOutputs']) unless map['DatabaseOutputs'].nil?)
        data.recipe_reference = (Parsers::RecipeReference.parse(map['RecipeReference']) unless map['RecipeReference'].nil?)
        data.started_by = map['StartedBy']
        data.started_on = Time.at(map['StartedOn'].to_i) if map['StartedOn']
        data.job_sample = (Parsers::JobSample.parse(map['JobSample']) unless map['JobSample'].nil?)
        data
      end
    end

    # Operation Parser for DescribeProject
    class DescribeProject
      def self.parse(http_resp)
        data = Types::DescribeProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.created_by = map['CreatedBy']
        data.dataset_name = map['DatasetName']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.last_modified_by = map['LastModifiedBy']
        data.name = map['Name']
        data.recipe_name = map['RecipeName']
        data.resource_arn = map['ResourceArn']
        data.sample = (Parsers::Sample.parse(map['Sample']) unless map['Sample'].nil?)
        data.role_arn = map['RoleArn']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.session_status = map['SessionStatus']
        data.opened_by = map['OpenedBy']
        data.open_date = Time.at(map['OpenDate'].to_i) if map['OpenDate']
        data
      end
    end

    class Sample
      def self.parse(map)
        data = Types::Sample.new
        data.size = map['Size']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for DescribeRecipe
    class DescribeRecipe
      def self.parse(http_resp)
        data = Types::DescribeRecipeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.created_by = map['CreatedBy']
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.project_name = map['ProjectName']
        data.published_by = map['PublishedBy']
        data.published_date = Time.at(map['PublishedDate'].to_i) if map['PublishedDate']
        data.description = map['Description']
        data.name = map['Name']
        data.steps = (Parsers::RecipeStepList.parse(map['Steps']) unless map['Steps'].nil?)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.resource_arn = map['ResourceArn']
        data.recipe_version = map['RecipeVersion']
        data
      end
    end

    class RecipeStepList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecipeStep.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecipeStep
      def self.parse(map)
        data = Types::RecipeStep.new
        data.action = (Parsers::RecipeAction.parse(map['Action']) unless map['Action'].nil?)
        data.condition_expressions = (Parsers::ConditionExpressionList.parse(map['ConditionExpressions']) unless map['ConditionExpressions'].nil?)
        return data
      end
    end

    class ConditionExpressionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ConditionExpression.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConditionExpression
      def self.parse(map)
        data = Types::ConditionExpression.new
        data.condition = map['Condition']
        data.value = map['Value']
        data.target_column = map['TargetColumn']
        return data
      end
    end

    class RecipeAction
      def self.parse(map)
        data = Types::RecipeAction.new
        data.operation = map['Operation']
        data.parameters = (Parsers::ParameterMap.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeRuleset
    class DescribeRuleset
      def self.parse(http_resp)
        data = Types::DescribeRulesetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.description = map['Description']
        data.target_arn = map['TargetArn']
        data.rules = (Parsers::RuleList.parse(map['Rules']) unless map['Rules'].nil?)
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.created_by = map['CreatedBy']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.resource_arn = map['ResourceArn']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class RuleList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Rule.parse(value) unless value.nil?
        end
        data
      end
    end

    class Rule
      def self.parse(map)
        data = Types::Rule.new
        data.name = map['Name']
        data.disabled = map['Disabled']
        data.check_expression = map['CheckExpression']
        data.substitution_map = (Parsers::ValuesMap.parse(map['SubstitutionMap']) unless map['SubstitutionMap'].nil?)
        data.threshold = (Parsers::Threshold.parse(map['Threshold']) unless map['Threshold'].nil?)
        data.column_selectors = (Parsers::ColumnSelectorList.parse(map['ColumnSelectors']) unless map['ColumnSelectors'].nil?)
        return data
      end
    end

    class Threshold
      def self.parse(map)
        data = Types::Threshold.new
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        data.type = map['Type']
        data.unit = map['Unit']
        return data
      end
    end

    # Operation Parser for DescribeSchedule
    class DescribeSchedule
      def self.parse(http_resp)
        data = Types::DescribeScheduleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.created_by = map['CreatedBy']
        data.job_names = (Parsers::JobNameList.parse(map['JobNames']) unless map['JobNames'].nil?)
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.resource_arn = map['ResourceArn']
        data.cron_expression = map['CronExpression']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.name = map['Name']
        data
      end
    end

    class JobNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListDatasets
    class ListDatasets
      def self.parse(http_resp)
        data = Types::ListDatasetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.datasets = (Parsers::DatasetList.parse(map['Datasets']) unless map['Datasets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DatasetList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Dataset.parse(value) unless value.nil?
        end
        data
      end
    end

    class Dataset
      def self.parse(map)
        data = Types::Dataset.new
        data.account_id = map['AccountId']
        data.created_by = map['CreatedBy']
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.name = map['Name']
        data.format = map['Format']
        data.format_options = (Parsers::FormatOptions.parse(map['FormatOptions']) unless map['FormatOptions'].nil?)
        data.input = (Parsers::Input.parse(map['Input']) unless map['Input'].nil?)
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.last_modified_by = map['LastModifiedBy']
        data.source = map['Source']
        data.path_options = (Parsers::PathOptions.parse(map['PathOptions']) unless map['PathOptions'].nil?)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.resource_arn = map['ResourceArn']
        return data
      end
    end

    # Operation Parser for ListJobRuns
    class ListJobRuns
      def self.parse(http_resp)
        data = Types::ListJobRunsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.job_runs = (Parsers::JobRunList.parse(map['JobRuns']) unless map['JobRuns'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class JobRunList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::JobRun.parse(value) unless value.nil?
        end
        data
      end
    end

    class JobRun
      def self.parse(map)
        data = Types::JobRun.new
        data.attempt = map['Attempt']
        data.completed_on = Time.at(map['CompletedOn'].to_i) if map['CompletedOn']
        data.dataset_name = map['DatasetName']
        data.error_message = map['ErrorMessage']
        data.execution_time = map['ExecutionTime']
        data.job_name = map['JobName']
        data.run_id = map['RunId']
        data.state = map['State']
        data.log_subscription = map['LogSubscription']
        data.log_group_name = map['LogGroupName']
        data.outputs = (Parsers::OutputList.parse(map['Outputs']) unless map['Outputs'].nil?)
        data.data_catalog_outputs = (Parsers::DataCatalogOutputList.parse(map['DataCatalogOutputs']) unless map['DataCatalogOutputs'].nil?)
        data.database_outputs = (Parsers::DatabaseOutputList.parse(map['DatabaseOutputs']) unless map['DatabaseOutputs'].nil?)
        data.recipe_reference = (Parsers::RecipeReference.parse(map['RecipeReference']) unless map['RecipeReference'].nil?)
        data.started_by = map['StartedBy']
        data.started_on = Time.at(map['StartedOn'].to_i) if map['StartedOn']
        data.job_sample = (Parsers::JobSample.parse(map['JobSample']) unless map['JobSample'].nil?)
        data.validation_configurations = (Parsers::ValidationConfigurationList.parse(map['ValidationConfigurations']) unless map['ValidationConfigurations'].nil?)
        return data
      end
    end

    # Operation Parser for ListJobs
    class ListJobs
      def self.parse(http_resp)
        data = Types::ListJobsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.jobs = (Parsers::JobList.parse(map['Jobs']) unless map['Jobs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class JobList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Job.parse(value) unless value.nil?
        end
        data
      end
    end

    class Job
      def self.parse(map)
        data = Types::Job.new
        data.account_id = map['AccountId']
        data.created_by = map['CreatedBy']
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.dataset_name = map['DatasetName']
        data.encryption_key_arn = map['EncryptionKeyArn']
        data.encryption_mode = map['EncryptionMode']
        data.name = map['Name']
        data.type = map['Type']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.log_subscription = map['LogSubscription']
        data.max_capacity = map['MaxCapacity']
        data.max_retries = map['MaxRetries']
        data.outputs = (Parsers::OutputList.parse(map['Outputs']) unless map['Outputs'].nil?)
        data.data_catalog_outputs = (Parsers::DataCatalogOutputList.parse(map['DataCatalogOutputs']) unless map['DataCatalogOutputs'].nil?)
        data.database_outputs = (Parsers::DatabaseOutputList.parse(map['DatabaseOutputs']) unless map['DatabaseOutputs'].nil?)
        data.project_name = map['ProjectName']
        data.recipe_reference = (Parsers::RecipeReference.parse(map['RecipeReference']) unless map['RecipeReference'].nil?)
        data.resource_arn = map['ResourceArn']
        data.role_arn = map['RoleArn']
        data.timeout = map['Timeout']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.job_sample = (Parsers::JobSample.parse(map['JobSample']) unless map['JobSample'].nil?)
        data.validation_configurations = (Parsers::ValidationConfigurationList.parse(map['ValidationConfigurations']) unless map['ValidationConfigurations'].nil?)
        return data
      end
    end

    # Operation Parser for ListProjects
    class ListProjects
      def self.parse(http_resp)
        data = Types::ListProjectsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.projects = (Parsers::ProjectList.parse(map['Projects']) unless map['Projects'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProjectList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Project.parse(value) unless value.nil?
        end
        data
      end
    end

    class Project
      def self.parse(map)
        data = Types::Project.new
        data.account_id = map['AccountId']
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.created_by = map['CreatedBy']
        data.dataset_name = map['DatasetName']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.last_modified_by = map['LastModifiedBy']
        data.name = map['Name']
        data.recipe_name = map['RecipeName']
        data.resource_arn = map['ResourceArn']
        data.sample = (Parsers::Sample.parse(map['Sample']) unless map['Sample'].nil?)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.role_arn = map['RoleArn']
        data.opened_by = map['OpenedBy']
        data.open_date = Time.at(map['OpenDate'].to_i) if map['OpenDate']
        return data
      end
    end

    # Operation Parser for ListRecipeVersions
    class ListRecipeVersions
      def self.parse(http_resp)
        data = Types::ListRecipeVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.recipes = (Parsers::RecipeList.parse(map['Recipes']) unless map['Recipes'].nil?)
        data
      end
    end

    class RecipeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Recipe.parse(value) unless value.nil?
        end
        data
      end
    end

    class Recipe
      def self.parse(map)
        data = Types::Recipe.new
        data.created_by = map['CreatedBy']
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.project_name = map['ProjectName']
        data.published_by = map['PublishedBy']
        data.published_date = Time.at(map['PublishedDate'].to_i) if map['PublishedDate']
        data.description = map['Description']
        data.name = map['Name']
        data.resource_arn = map['ResourceArn']
        data.steps = (Parsers::RecipeStepList.parse(map['Steps']) unless map['Steps'].nil?)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.recipe_version = map['RecipeVersion']
        return data
      end
    end

    # Operation Parser for ListRecipes
    class ListRecipes
      def self.parse(http_resp)
        data = Types::ListRecipesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recipes = (Parsers::RecipeList.parse(map['Recipes']) unless map['Recipes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListRulesets
    class ListRulesets
      def self.parse(http_resp)
        data = Types::ListRulesetsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.rulesets = (Parsers::RulesetItemList.parse(map['Rulesets']) unless map['Rulesets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RulesetItemList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RulesetItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class RulesetItem
      def self.parse(map)
        data = Types::RulesetItem.new
        data.account_id = map['AccountId']
        data.created_by = map['CreatedBy']
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.description = map['Description']
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.name = map['Name']
        data.resource_arn = map['ResourceArn']
        data.rule_count = map['RuleCount']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.target_arn = map['TargetArn']
        return data
      end
    end

    # Operation Parser for ListSchedules
    class ListSchedules
      def self.parse(http_resp)
        data = Types::ListSchedulesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.schedules = (Parsers::ScheduleList.parse(map['Schedules']) unless map['Schedules'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ScheduleList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Schedule.parse(value) unless value.nil?
        end
        data
      end
    end

    class Schedule
      def self.parse(map)
        data = Types::Schedule.new
        data.account_id = map['AccountId']
        data.created_by = map['CreatedBy']
        data.create_date = Time.at(map['CreateDate'].to_i) if map['CreateDate']
        data.job_names = (Parsers::JobNameList.parse(map['JobNames']) unless map['JobNames'].nil?)
        data.last_modified_by = map['LastModifiedBy']
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.resource_arn = map['ResourceArn']
        data.cron_expression = map['CronExpression']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.name = map['Name']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for PublishRecipe
    class PublishRecipe
      def self.parse(http_resp)
        data = Types::PublishRecipeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for SendProjectSessionAction
    class SendProjectSessionAction
      def self.parse(http_resp)
        data = Types::SendProjectSessionActionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.result = map['Result']
        data.name = map['Name']
        data.action_id = map['ActionId']
        data
      end
    end

    # Operation Parser for StartJobRun
    class StartJobRun
      def self.parse(http_resp)
        data = Types::StartJobRunOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.run_id = map['RunId']
        data
      end
    end

    # Operation Parser for StartProjectSession
    class StartProjectSession
      def self.parse(http_resp)
        data = Types::StartProjectSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.client_session_id = map['ClientSessionId']
        data
      end
    end

    # Operation Parser for StopJobRun
    class StopJobRun
      def self.parse(http_resp)
        data = Types::StopJobRunOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.run_id = map['RunId']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDataset
    class UpdateDataset
      def self.parse(http_resp)
        data = Types::UpdateDatasetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for UpdateProfileJob
    class UpdateProfileJob
      def self.parse(http_resp)
        data = Types::UpdateProfileJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for UpdateProject
    class UpdateProject
      def self.parse(http_resp)
        data = Types::UpdateProjectOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.last_modified_date = Time.at(map['LastModifiedDate'].to_i) if map['LastModifiedDate']
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for UpdateRecipe
    class UpdateRecipe
      def self.parse(http_resp)
        data = Types::UpdateRecipeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for UpdateRecipeJob
    class UpdateRecipeJob
      def self.parse(http_resp)
        data = Types::UpdateRecipeJobOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for UpdateRuleset
    class UpdateRuleset
      def self.parse(http_resp)
        data = Types::UpdateRulesetOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for UpdateSchedule
    class UpdateSchedule
      def self.parse(http_resp)
        data = Types::UpdateScheduleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data
      end
    end
  end
end
