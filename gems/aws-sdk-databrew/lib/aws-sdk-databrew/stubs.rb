# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataBrew
  module Stubs

    # Operation Stubber for BatchDeleteRecipeVersion
    class BatchDeleteRecipeVersion
      def self.default(visited=[])
        {
          name: 'name',
          errors: Stubs::RecipeErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Errors'] = Stubs::RecipeErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RecipeErrorList
    class RecipeErrorList
      def self.default(visited=[])
        return nil if visited.include?('RecipeErrorList')
        visited = visited + ['RecipeErrorList']
        [
          Stubs::RecipeVersionErrorDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecipeVersionErrorDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecipeVersionErrorDetail
    class RecipeVersionErrorDetail
      def self.default(visited=[])
        return nil if visited.include?('RecipeVersionErrorDetail')
        visited = visited + ['RecipeVersionErrorDetail']
        {
          error_code: 'error_code',
          error_message: 'error_message',
          recipe_version: 'recipe_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecipeVersionErrorDetail.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['RecipeVersion'] = stub[:recipe_version] unless stub[:recipe_version].nil?
        data
      end
    end

    # Operation Stubber for CreateDataset
    class CreateDataset
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateProfileJob
    class CreateProfileJob
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateProject
    class CreateProject
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateRecipe
    class CreateRecipe
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateRecipeJob
    class CreateRecipeJob
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateRuleset
    class CreateRuleset
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateSchedule
    class CreateSchedule
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDataset
    class DeleteDataset
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteJob
    class DeleteJob
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteProject
    class DeleteProject
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteRecipeVersion
    class DeleteRecipeVersion
      def self.default(visited=[])
        {
          name: 'name',
          recipe_version: 'recipe_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RecipeVersion'] = stub[:recipe_version] unless stub[:recipe_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteRuleset
    class DeleteRuleset
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteSchedule
    class DeleteSchedule
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeDataset
    class DescribeDataset
      def self.default(visited=[])
        {
          created_by: 'created_by',
          create_date: Time.now,
          name: 'name',
          format: 'format',
          format_options: Stubs::FormatOptions.default(visited),
          input: Stubs::Input.default(visited),
          last_modified_date: Time.now,
          last_modified_by: 'last_modified_by',
          source: 'source',
          path_options: Stubs::PathOptions.default(visited),
          tags: Stubs::TagMap.default(visited),
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['FormatOptions'] = Stubs::FormatOptions.stub(stub[:format_options]) unless stub[:format_options].nil?
        data['Input'] = Stubs::Input.stub(stub[:input]) unless stub[:input].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['PathOptions'] = Stubs::PathOptions.stub(stub[:path_options]) unless stub[:path_options].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for PathOptions
    class PathOptions
      def self.default(visited=[])
        return nil if visited.include?('PathOptions')
        visited = visited + ['PathOptions']
        {
          last_modified_date_condition: Stubs::FilterExpression.default(visited),
          files_limit: Stubs::FilesLimit.default(visited),
          parameters: Stubs::PathParametersMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PathOptions.new
        data = {}
        data['LastModifiedDateCondition'] = Stubs::FilterExpression.stub(stub[:last_modified_date_condition]) unless stub[:last_modified_date_condition].nil?
        data['FilesLimit'] = Stubs::FilesLimit.stub(stub[:files_limit]) unless stub[:files_limit].nil?
        data['Parameters'] = Stubs::PathParametersMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # Map Stubber for PathParametersMap
    class PathParametersMap
      def self.default(visited=[])
        return nil if visited.include?('PathParametersMap')
        visited = visited + ['PathParametersMap']
        {
          test_key: Stubs::DatasetParameter.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::DatasetParameter.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetParameter
    class DatasetParameter
      def self.default(visited=[])
        return nil if visited.include?('DatasetParameter')
        visited = visited + ['DatasetParameter']
        {
          name: 'name',
          type: 'type',
          datetime_options: Stubs::DatetimeOptions.default(visited),
          create_column: false,
          filter: Stubs::FilterExpression.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetParameter.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['DatetimeOptions'] = Stubs::DatetimeOptions.stub(stub[:datetime_options]) unless stub[:datetime_options].nil?
        data['CreateColumn'] = stub[:create_column] unless stub[:create_column].nil?
        data['Filter'] = Stubs::FilterExpression.stub(stub[:filter]) unless stub[:filter].nil?
        data
      end
    end

    # Structure Stubber for FilterExpression
    class FilterExpression
      def self.default(visited=[])
        return nil if visited.include?('FilterExpression')
        visited = visited + ['FilterExpression']
        {
          expression: 'expression',
          values_map: Stubs::ValuesMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FilterExpression.new
        data = {}
        data['Expression'] = stub[:expression] unless stub[:expression].nil?
        data['ValuesMap'] = Stubs::ValuesMap.stub(stub[:values_map]) unless stub[:values_map].nil?
        data
      end
    end

    # Map Stubber for ValuesMap
    class ValuesMap
      def self.default(visited=[])
        return nil if visited.include?('ValuesMap')
        visited = visited + ['ValuesMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for DatetimeOptions
    class DatetimeOptions
      def self.default(visited=[])
        return nil if visited.include?('DatetimeOptions')
        visited = visited + ['DatetimeOptions']
        {
          format: 'format',
          timezone_offset: 'timezone_offset',
          locale_code: 'locale_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatetimeOptions.new
        data = {}
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['TimezoneOffset'] = stub[:timezone_offset] unless stub[:timezone_offset].nil?
        data['LocaleCode'] = stub[:locale_code] unless stub[:locale_code].nil?
        data
      end
    end

    # Structure Stubber for FilesLimit
    class FilesLimit
      def self.default(visited=[])
        return nil if visited.include?('FilesLimit')
        visited = visited + ['FilesLimit']
        {
          max_files: 1,
          ordered_by: 'ordered_by',
          order: 'order',
        }
      end

      def self.stub(stub)
        stub ||= Types::FilesLimit.new
        data = {}
        data['MaxFiles'] = stub[:max_files] unless stub[:max_files].nil?
        data['OrderedBy'] = stub[:ordered_by] unless stub[:ordered_by].nil?
        data['Order'] = stub[:order] unless stub[:order].nil?
        data
      end
    end

    # Structure Stubber for Input
    class Input
      def self.default(visited=[])
        return nil if visited.include?('Input')
        visited = visited + ['Input']
        {
          s3_input_definition: Stubs::S3Location.default(visited),
          data_catalog_input_definition: Stubs::DataCatalogInputDefinition.default(visited),
          database_input_definition: Stubs::DatabaseInputDefinition.default(visited),
          metadata: Stubs::Metadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Input.new
        data = {}
        data['S3InputDefinition'] = Stubs::S3Location.stub(stub[:s3_input_definition]) unless stub[:s3_input_definition].nil?
        data['DataCatalogInputDefinition'] = Stubs::DataCatalogInputDefinition.stub(stub[:data_catalog_input_definition]) unless stub[:data_catalog_input_definition].nil?
        data['DatabaseInputDefinition'] = Stubs::DatabaseInputDefinition.stub(stub[:database_input_definition]) unless stub[:database_input_definition].nil?
        data['Metadata'] = Stubs::Metadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data
      end
    end

    # Structure Stubber for Metadata
    class Metadata
      def self.default(visited=[])
        return nil if visited.include?('Metadata')
        visited = visited + ['Metadata']
        {
          source_arn: 'source_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Metadata.new
        data = {}
        data['SourceArn'] = stub[:source_arn] unless stub[:source_arn].nil?
        data
      end
    end

    # Structure Stubber for DatabaseInputDefinition
    class DatabaseInputDefinition
      def self.default(visited=[])
        return nil if visited.include?('DatabaseInputDefinition')
        visited = visited + ['DatabaseInputDefinition']
        {
          glue_connection_name: 'glue_connection_name',
          database_table_name: 'database_table_name',
          temp_directory: Stubs::S3Location.default(visited),
          query_string: 'query_string',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatabaseInputDefinition.new
        data = {}
        data['GlueConnectionName'] = stub[:glue_connection_name] unless stub[:glue_connection_name].nil?
        data['DatabaseTableName'] = stub[:database_table_name] unless stub[:database_table_name].nil?
        data['TempDirectory'] = Stubs::S3Location.stub(stub[:temp_directory]) unless stub[:temp_directory].nil?
        data['QueryString'] = stub[:query_string] unless stub[:query_string].nil?
        data
      end
    end

    # Structure Stubber for S3Location
    class S3Location
      def self.default(visited=[])
        return nil if visited.include?('S3Location')
        visited = visited + ['S3Location']
        {
          bucket: 'bucket',
          key: 'key',
          bucket_owner: 'bucket_owner',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Location.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['BucketOwner'] = stub[:bucket_owner] unless stub[:bucket_owner].nil?
        data
      end
    end

    # Structure Stubber for DataCatalogInputDefinition
    class DataCatalogInputDefinition
      def self.default(visited=[])
        return nil if visited.include?('DataCatalogInputDefinition')
        visited = visited + ['DataCatalogInputDefinition']
        {
          catalog_id: 'catalog_id',
          database_name: 'database_name',
          table_name: 'table_name',
          temp_directory: Stubs::S3Location.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataCatalogInputDefinition.new
        data = {}
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['TempDirectory'] = Stubs::S3Location.stub(stub[:temp_directory]) unless stub[:temp_directory].nil?
        data
      end
    end

    # Structure Stubber for FormatOptions
    class FormatOptions
      def self.default(visited=[])
        return nil if visited.include?('FormatOptions')
        visited = visited + ['FormatOptions']
        {
          json: Stubs::JsonOptions.default(visited),
          excel: Stubs::ExcelOptions.default(visited),
          csv: Stubs::CsvOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FormatOptions.new
        data = {}
        data['Json'] = Stubs::JsonOptions.stub(stub[:json]) unless stub[:json].nil?
        data['Excel'] = Stubs::ExcelOptions.stub(stub[:excel]) unless stub[:excel].nil?
        data['Csv'] = Stubs::CsvOptions.stub(stub[:csv]) unless stub[:csv].nil?
        data
      end
    end

    # Structure Stubber for CsvOptions
    class CsvOptions
      def self.default(visited=[])
        return nil if visited.include?('CsvOptions')
        visited = visited + ['CsvOptions']
        {
          delimiter: 'delimiter',
          header_row: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::CsvOptions.new
        data = {}
        data['Delimiter'] = stub[:delimiter] unless stub[:delimiter].nil?
        data['HeaderRow'] = stub[:header_row] unless stub[:header_row].nil?
        data
      end
    end

    # Structure Stubber for ExcelOptions
    class ExcelOptions
      def self.default(visited=[])
        return nil if visited.include?('ExcelOptions')
        visited = visited + ['ExcelOptions']
        {
          sheet_names: Stubs::SheetNameList.default(visited),
          sheet_indexes: Stubs::SheetIndexList.default(visited),
          header_row: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExcelOptions.new
        data = {}
        data['SheetNames'] = Stubs::SheetNameList.stub(stub[:sheet_names]) unless stub[:sheet_names].nil?
        data['SheetIndexes'] = Stubs::SheetIndexList.stub(stub[:sheet_indexes]) unless stub[:sheet_indexes].nil?
        data['HeaderRow'] = stub[:header_row] unless stub[:header_row].nil?
        data
      end
    end

    # List Stubber for SheetIndexList
    class SheetIndexList
      def self.default(visited=[])
        return nil if visited.include?('SheetIndexList')
        visited = visited + ['SheetIndexList']
        [
          1
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for SheetNameList
    class SheetNameList
      def self.default(visited=[])
        return nil if visited.include?('SheetNameList')
        visited = visited + ['SheetNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JsonOptions
    class JsonOptions
      def self.default(visited=[])
        return nil if visited.include?('JsonOptions')
        visited = visited + ['JsonOptions']
        {
          multi_line: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::JsonOptions.new
        data = {}
        data['MultiLine'] = stub[:multi_line] unless stub[:multi_line].nil?
        data
      end
    end

    # Operation Stubber for DescribeJob
    class DescribeJob
      def self.default(visited=[])
        {
          create_date: Time.now,
          created_by: 'created_by',
          dataset_name: 'dataset_name',
          encryption_key_arn: 'encryption_key_arn',
          encryption_mode: 'encryption_mode',
          name: 'name',
          type: 'type',
          last_modified_by: 'last_modified_by',
          last_modified_date: Time.now,
          log_subscription: 'log_subscription',
          max_capacity: 1,
          max_retries: 1,
          outputs: Stubs::OutputList.default(visited),
          data_catalog_outputs: Stubs::DataCatalogOutputList.default(visited),
          database_outputs: Stubs::DatabaseOutputList.default(visited),
          project_name: 'project_name',
          profile_configuration: Stubs::ProfileConfiguration.default(visited),
          validation_configurations: Stubs::ValidationConfigurationList.default(visited),
          recipe_reference: Stubs::RecipeReference.default(visited),
          resource_arn: 'resource_arn',
          role_arn: 'role_arn',
          tags: Stubs::TagMap.default(visited),
          timeout: 1,
          job_sample: Stubs::JobSample.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['DatasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['EncryptionKeyArn'] = stub[:encryption_key_arn] unless stub[:encryption_key_arn].nil?
        data['EncryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['LogSubscription'] = stub[:log_subscription] unless stub[:log_subscription].nil?
        data['MaxCapacity'] = stub[:max_capacity] unless stub[:max_capacity].nil?
        data['MaxRetries'] = stub[:max_retries] unless stub[:max_retries].nil?
        data['Outputs'] = Stubs::OutputList.stub(stub[:outputs]) unless stub[:outputs].nil?
        data['DataCatalogOutputs'] = Stubs::DataCatalogOutputList.stub(stub[:data_catalog_outputs]) unless stub[:data_catalog_outputs].nil?
        data['DatabaseOutputs'] = Stubs::DatabaseOutputList.stub(stub[:database_outputs]) unless stub[:database_outputs].nil?
        data['ProjectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['ProfileConfiguration'] = Stubs::ProfileConfiguration.stub(stub[:profile_configuration]) unless stub[:profile_configuration].nil?
        data['ValidationConfigurations'] = Stubs::ValidationConfigurationList.stub(stub[:validation_configurations]) unless stub[:validation_configurations].nil?
        data['RecipeReference'] = Stubs::RecipeReference.stub(stub[:recipe_reference]) unless stub[:recipe_reference].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['JobSample'] = Stubs::JobSample.stub(stub[:job_sample]) unless stub[:job_sample].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JobSample
    class JobSample
      def self.default(visited=[])
        return nil if visited.include?('JobSample')
        visited = visited + ['JobSample']
        {
          mode: 'mode',
          size: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobSample.new
        data = {}
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data['Size'] = stub[:size] unless stub[:size].nil?
        data
      end
    end

    # Structure Stubber for RecipeReference
    class RecipeReference
      def self.default(visited=[])
        return nil if visited.include?('RecipeReference')
        visited = visited + ['RecipeReference']
        {
          name: 'name',
          recipe_version: 'recipe_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecipeReference.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RecipeVersion'] = stub[:recipe_version] unless stub[:recipe_version].nil?
        data
      end
    end

    # List Stubber for ValidationConfigurationList
    class ValidationConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('ValidationConfigurationList')
        visited = visited + ['ValidationConfigurationList']
        [
          Stubs::ValidationConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ValidationConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ValidationConfiguration
    class ValidationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ValidationConfiguration')
        visited = visited + ['ValidationConfiguration']
        {
          ruleset_arn: 'ruleset_arn',
          validation_mode: 'validation_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::ValidationConfiguration.new
        data = {}
        data['RulesetArn'] = stub[:ruleset_arn] unless stub[:ruleset_arn].nil?
        data['ValidationMode'] = stub[:validation_mode] unless stub[:validation_mode].nil?
        data
      end
    end

    # Structure Stubber for ProfileConfiguration
    class ProfileConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ProfileConfiguration')
        visited = visited + ['ProfileConfiguration']
        {
          dataset_statistics_configuration: Stubs::StatisticsConfiguration.default(visited),
          profile_columns: Stubs::ColumnSelectorList.default(visited),
          column_statistics_configurations: Stubs::ColumnStatisticsConfigurationList.default(visited),
          entity_detector_configuration: Stubs::EntityDetectorConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProfileConfiguration.new
        data = {}
        data['DatasetStatisticsConfiguration'] = Stubs::StatisticsConfiguration.stub(stub[:dataset_statistics_configuration]) unless stub[:dataset_statistics_configuration].nil?
        data['ProfileColumns'] = Stubs::ColumnSelectorList.stub(stub[:profile_columns]) unless stub[:profile_columns].nil?
        data['ColumnStatisticsConfigurations'] = Stubs::ColumnStatisticsConfigurationList.stub(stub[:column_statistics_configurations]) unless stub[:column_statistics_configurations].nil?
        data['EntityDetectorConfiguration'] = Stubs::EntityDetectorConfiguration.stub(stub[:entity_detector_configuration]) unless stub[:entity_detector_configuration].nil?
        data
      end
    end

    # Structure Stubber for EntityDetectorConfiguration
    class EntityDetectorConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EntityDetectorConfiguration')
        visited = visited + ['EntityDetectorConfiguration']
        {
          entity_types: Stubs::EntityTypeList.default(visited),
          allowed_statistics: Stubs::AllowedStatisticList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityDetectorConfiguration.new
        data = {}
        data['EntityTypes'] = Stubs::EntityTypeList.stub(stub[:entity_types]) unless stub[:entity_types].nil?
        data['AllowedStatistics'] = Stubs::AllowedStatisticList.stub(stub[:allowed_statistics]) unless stub[:allowed_statistics].nil?
        data
      end
    end

    # List Stubber for AllowedStatisticList
    class AllowedStatisticList
      def self.default(visited=[])
        return nil if visited.include?('AllowedStatisticList')
        visited = visited + ['AllowedStatisticList']
        [
          Stubs::AllowedStatistics.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AllowedStatistics.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AllowedStatistics
    class AllowedStatistics
      def self.default(visited=[])
        return nil if visited.include?('AllowedStatistics')
        visited = visited + ['AllowedStatistics']
        {
          statistics: Stubs::StatisticList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AllowedStatistics.new
        data = {}
        data['Statistics'] = Stubs::StatisticList.stub(stub[:statistics]) unless stub[:statistics].nil?
        data
      end
    end

    # List Stubber for StatisticList
    class StatisticList
      def self.default(visited=[])
        return nil if visited.include?('StatisticList')
        visited = visited + ['StatisticList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for EntityTypeList
    class EntityTypeList
      def self.default(visited=[])
        return nil if visited.include?('EntityTypeList')
        visited = visited + ['EntityTypeList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for ColumnStatisticsConfigurationList
    class ColumnStatisticsConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('ColumnStatisticsConfigurationList')
        visited = visited + ['ColumnStatisticsConfigurationList']
        [
          Stubs::ColumnStatisticsConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ColumnStatisticsConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnStatisticsConfiguration
    class ColumnStatisticsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ColumnStatisticsConfiguration')
        visited = visited + ['ColumnStatisticsConfiguration']
        {
          selectors: Stubs::ColumnSelectorList.default(visited),
          statistics: Stubs::StatisticsConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnStatisticsConfiguration.new
        data = {}
        data['Selectors'] = Stubs::ColumnSelectorList.stub(stub[:selectors]) unless stub[:selectors].nil?
        data['Statistics'] = Stubs::StatisticsConfiguration.stub(stub[:statistics]) unless stub[:statistics].nil?
        data
      end
    end

    # Structure Stubber for StatisticsConfiguration
    class StatisticsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('StatisticsConfiguration')
        visited = visited + ['StatisticsConfiguration']
        {
          included_statistics: Stubs::StatisticList.default(visited),
          overrides: Stubs::StatisticOverrideList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StatisticsConfiguration.new
        data = {}
        data['IncludedStatistics'] = Stubs::StatisticList.stub(stub[:included_statistics]) unless stub[:included_statistics].nil?
        data['Overrides'] = Stubs::StatisticOverrideList.stub(stub[:overrides]) unless stub[:overrides].nil?
        data
      end
    end

    # List Stubber for StatisticOverrideList
    class StatisticOverrideList
      def self.default(visited=[])
        return nil if visited.include?('StatisticOverrideList')
        visited = visited + ['StatisticOverrideList']
        [
          Stubs::StatisticOverride.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StatisticOverride.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StatisticOverride
    class StatisticOverride
      def self.default(visited=[])
        return nil if visited.include?('StatisticOverride')
        visited = visited + ['StatisticOverride']
        {
          statistic: 'statistic',
          parameters: Stubs::ParameterMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StatisticOverride.new
        data = {}
        data['Statistic'] = stub[:statistic] unless stub[:statistic].nil?
        data['Parameters'] = Stubs::ParameterMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # Map Stubber for ParameterMap
    class ParameterMap
      def self.default(visited=[])
        return nil if visited.include?('ParameterMap')
        visited = visited + ['ParameterMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for ColumnSelectorList
    class ColumnSelectorList
      def self.default(visited=[])
        return nil if visited.include?('ColumnSelectorList')
        visited = visited + ['ColumnSelectorList']
        [
          Stubs::ColumnSelector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ColumnSelector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ColumnSelector
    class ColumnSelector
      def self.default(visited=[])
        return nil if visited.include?('ColumnSelector')
        visited = visited + ['ColumnSelector']
        {
          regex: 'regex',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnSelector.new
        data = {}
        data['Regex'] = stub[:regex] unless stub[:regex].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for DatabaseOutputList
    class DatabaseOutputList
      def self.default(visited=[])
        return nil if visited.include?('DatabaseOutputList')
        visited = visited + ['DatabaseOutputList']
        [
          Stubs::DatabaseOutput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatabaseOutput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatabaseOutput
    class DatabaseOutput
      def self.default(visited=[])
        return nil if visited.include?('DatabaseOutput')
        visited = visited + ['DatabaseOutput']
        {
          glue_connection_name: 'glue_connection_name',
          database_options: Stubs::DatabaseTableOutputOptions.default(visited),
          database_output_mode: 'database_output_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatabaseOutput.new
        data = {}
        data['GlueConnectionName'] = stub[:glue_connection_name] unless stub[:glue_connection_name].nil?
        data['DatabaseOptions'] = Stubs::DatabaseTableOutputOptions.stub(stub[:database_options]) unless stub[:database_options].nil?
        data['DatabaseOutputMode'] = stub[:database_output_mode] unless stub[:database_output_mode].nil?
        data
      end
    end

    # Structure Stubber for DatabaseTableOutputOptions
    class DatabaseTableOutputOptions
      def self.default(visited=[])
        return nil if visited.include?('DatabaseTableOutputOptions')
        visited = visited + ['DatabaseTableOutputOptions']
        {
          temp_directory: Stubs::S3Location.default(visited),
          table_name: 'table_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatabaseTableOutputOptions.new
        data = {}
        data['TempDirectory'] = Stubs::S3Location.stub(stub[:temp_directory]) unless stub[:temp_directory].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data
      end
    end

    # List Stubber for DataCatalogOutputList
    class DataCatalogOutputList
      def self.default(visited=[])
        return nil if visited.include?('DataCatalogOutputList')
        visited = visited + ['DataCatalogOutputList']
        [
          Stubs::DataCatalogOutput.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataCatalogOutput.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataCatalogOutput
    class DataCatalogOutput
      def self.default(visited=[])
        return nil if visited.include?('DataCatalogOutput')
        visited = visited + ['DataCatalogOutput']
        {
          catalog_id: 'catalog_id',
          database_name: 'database_name',
          table_name: 'table_name',
          s3_options: Stubs::S3TableOutputOptions.default(visited),
          database_options: Stubs::DatabaseTableOutputOptions.default(visited),
          overwrite: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataCatalogOutput.new
        data = {}
        data['CatalogId'] = stub[:catalog_id] unless stub[:catalog_id].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['S3Options'] = Stubs::S3TableOutputOptions.stub(stub[:s3_options]) unless stub[:s3_options].nil?
        data['DatabaseOptions'] = Stubs::DatabaseTableOutputOptions.stub(stub[:database_options]) unless stub[:database_options].nil?
        data['Overwrite'] = stub[:overwrite] unless stub[:overwrite].nil?
        data
      end
    end

    # Structure Stubber for S3TableOutputOptions
    class S3TableOutputOptions
      def self.default(visited=[])
        return nil if visited.include?('S3TableOutputOptions')
        visited = visited + ['S3TableOutputOptions']
        {
          location: Stubs::S3Location.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3TableOutputOptions.new
        data = {}
        data['Location'] = Stubs::S3Location.stub(stub[:location]) unless stub[:location].nil?
        data
      end
    end

    # List Stubber for OutputList
    class OutputList
      def self.default(visited=[])
        return nil if visited.include?('OutputList')
        visited = visited + ['OutputList']
        [
          Stubs::Output.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Output.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Output
    class Output
      def self.default(visited=[])
        return nil if visited.include?('Output')
        visited = visited + ['Output']
        {
          compression_format: 'compression_format',
          format: 'format',
          partition_columns: Stubs::ColumnNameList.default(visited),
          location: Stubs::S3Location.default(visited),
          overwrite: false,
          format_options: Stubs::OutputFormatOptions.default(visited),
          max_output_files: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Output.new
        data = {}
        data['CompressionFormat'] = stub[:compression_format] unless stub[:compression_format].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['PartitionColumns'] = Stubs::ColumnNameList.stub(stub[:partition_columns]) unless stub[:partition_columns].nil?
        data['Location'] = Stubs::S3Location.stub(stub[:location]) unless stub[:location].nil?
        data['Overwrite'] = stub[:overwrite] unless stub[:overwrite].nil?
        data['FormatOptions'] = Stubs::OutputFormatOptions.stub(stub[:format_options]) unless stub[:format_options].nil?
        data['MaxOutputFiles'] = stub[:max_output_files] unless stub[:max_output_files].nil?
        data
      end
    end

    # Structure Stubber for OutputFormatOptions
    class OutputFormatOptions
      def self.default(visited=[])
        return nil if visited.include?('OutputFormatOptions')
        visited = visited + ['OutputFormatOptions']
        {
          csv: Stubs::CsvOutputOptions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputFormatOptions.new
        data = {}
        data['Csv'] = Stubs::CsvOutputOptions.stub(stub[:csv]) unless stub[:csv].nil?
        data
      end
    end

    # Structure Stubber for CsvOutputOptions
    class CsvOutputOptions
      def self.default(visited=[])
        return nil if visited.include?('CsvOutputOptions')
        visited = visited + ['CsvOutputOptions']
        {
          delimiter: 'delimiter',
        }
      end

      def self.stub(stub)
        stub ||= Types::CsvOutputOptions.new
        data = {}
        data['Delimiter'] = stub[:delimiter] unless stub[:delimiter].nil?
        data
      end
    end

    # List Stubber for ColumnNameList
    class ColumnNameList
      def self.default(visited=[])
        return nil if visited.include?('ColumnNameList')
        visited = visited + ['ColumnNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeJobRun
    class DescribeJobRun
      def self.default(visited=[])
        {
          attempt: 1,
          completed_on: Time.now,
          dataset_name: 'dataset_name',
          error_message: 'error_message',
          execution_time: 1,
          job_name: 'job_name',
          profile_configuration: Stubs::ProfileConfiguration.default(visited),
          validation_configurations: Stubs::ValidationConfigurationList.default(visited),
          run_id: 'run_id',
          state: 'state',
          log_subscription: 'log_subscription',
          log_group_name: 'log_group_name',
          outputs: Stubs::OutputList.default(visited),
          data_catalog_outputs: Stubs::DataCatalogOutputList.default(visited),
          database_outputs: Stubs::DatabaseOutputList.default(visited),
          recipe_reference: Stubs::RecipeReference.default(visited),
          started_by: 'started_by',
          started_on: Time.now,
          job_sample: Stubs::JobSample.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Attempt'] = stub[:attempt] unless stub[:attempt].nil?
        data['CompletedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_on]).to_i unless stub[:completed_on].nil?
        data['DatasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['ExecutionTime'] = stub[:execution_time] unless stub[:execution_time].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['ProfileConfiguration'] = Stubs::ProfileConfiguration.stub(stub[:profile_configuration]) unless stub[:profile_configuration].nil?
        data['ValidationConfigurations'] = Stubs::ValidationConfigurationList.stub(stub[:validation_configurations]) unless stub[:validation_configurations].nil?
        data['RunId'] = stub[:run_id] unless stub[:run_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['LogSubscription'] = stub[:log_subscription] unless stub[:log_subscription].nil?
        data['LogGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data['Outputs'] = Stubs::OutputList.stub(stub[:outputs]) unless stub[:outputs].nil?
        data['DataCatalogOutputs'] = Stubs::DataCatalogOutputList.stub(stub[:data_catalog_outputs]) unless stub[:data_catalog_outputs].nil?
        data['DatabaseOutputs'] = Stubs::DatabaseOutputList.stub(stub[:database_outputs]) unless stub[:database_outputs].nil?
        data['RecipeReference'] = Stubs::RecipeReference.stub(stub[:recipe_reference]) unless stub[:recipe_reference].nil?
        data['StartedBy'] = stub[:started_by] unless stub[:started_by].nil?
        data['StartedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_on]).to_i unless stub[:started_on].nil?
        data['JobSample'] = Stubs::JobSample.stub(stub[:job_sample]) unless stub[:job_sample].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeProject
    class DescribeProject
      def self.default(visited=[])
        {
          create_date: Time.now,
          created_by: 'created_by',
          dataset_name: 'dataset_name',
          last_modified_date: Time.now,
          last_modified_by: 'last_modified_by',
          name: 'name',
          recipe_name: 'recipe_name',
          resource_arn: 'resource_arn',
          sample: Stubs::Sample.default(visited),
          role_arn: 'role_arn',
          tags: Stubs::TagMap.default(visited),
          session_status: 'session_status',
          opened_by: 'opened_by',
          open_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['DatasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RecipeName'] = stub[:recipe_name] unless stub[:recipe_name].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Sample'] = Stubs::Sample.stub(stub[:sample]) unless stub[:sample].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['SessionStatus'] = stub[:session_status] unless stub[:session_status].nil?
        data['OpenedBy'] = stub[:opened_by] unless stub[:opened_by].nil?
        data['OpenDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:open_date]).to_i unless stub[:open_date].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Sample
    class Sample
      def self.default(visited=[])
        return nil if visited.include?('Sample')
        visited = visited + ['Sample']
        {
          size: 1,
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Sample.new
        data = {}
        data['Size'] = stub[:size] unless stub[:size].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for DescribeRecipe
    class DescribeRecipe
      def self.default(visited=[])
        {
          created_by: 'created_by',
          create_date: Time.now,
          last_modified_by: 'last_modified_by',
          last_modified_date: Time.now,
          project_name: 'project_name',
          published_by: 'published_by',
          published_date: Time.now,
          description: 'description',
          name: 'name',
          steps: Stubs::RecipeStepList.default(visited),
          tags: Stubs::TagMap.default(visited),
          resource_arn: 'resource_arn',
          recipe_version: 'recipe_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['ProjectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['PublishedBy'] = stub[:published_by] unless stub[:published_by].nil?
        data['PublishedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:published_date]).to_i unless stub[:published_date].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Steps'] = Stubs::RecipeStepList.stub(stub[:steps]) unless stub[:steps].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['RecipeVersion'] = stub[:recipe_version] unless stub[:recipe_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RecipeStepList
    class RecipeStepList
      def self.default(visited=[])
        return nil if visited.include?('RecipeStepList')
        visited = visited + ['RecipeStepList']
        [
          Stubs::RecipeStep.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecipeStep.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecipeStep
    class RecipeStep
      def self.default(visited=[])
        return nil if visited.include?('RecipeStep')
        visited = visited + ['RecipeStep']
        {
          action: Stubs::RecipeAction.default(visited),
          condition_expressions: Stubs::ConditionExpressionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecipeStep.new
        data = {}
        data['Action'] = Stubs::RecipeAction.stub(stub[:action]) unless stub[:action].nil?
        data['ConditionExpressions'] = Stubs::ConditionExpressionList.stub(stub[:condition_expressions]) unless stub[:condition_expressions].nil?
        data
      end
    end

    # List Stubber for ConditionExpressionList
    class ConditionExpressionList
      def self.default(visited=[])
        return nil if visited.include?('ConditionExpressionList')
        visited = visited + ['ConditionExpressionList']
        [
          Stubs::ConditionExpression.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ConditionExpression.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConditionExpression
    class ConditionExpression
      def self.default(visited=[])
        return nil if visited.include?('ConditionExpression')
        visited = visited + ['ConditionExpression']
        {
          condition: 'condition',
          value: 'value',
          target_column: 'target_column',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConditionExpression.new
        data = {}
        data['Condition'] = stub[:condition] unless stub[:condition].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['TargetColumn'] = stub[:target_column] unless stub[:target_column].nil?
        data
      end
    end

    # Structure Stubber for RecipeAction
    class RecipeAction
      def self.default(visited=[])
        return nil if visited.include?('RecipeAction')
        visited = visited + ['RecipeAction']
        {
          operation: 'operation',
          parameters: Stubs::ParameterMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecipeAction.new
        data = {}
        data['Operation'] = stub[:operation] unless stub[:operation].nil?
        data['Parameters'] = Stubs::ParameterMap.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # Operation Stubber for DescribeRuleset
    class DescribeRuleset
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          target_arn: 'target_arn',
          rules: Stubs::RuleList.default(visited),
          create_date: Time.now,
          created_by: 'created_by',
          last_modified_by: 'last_modified_by',
          last_modified_date: Time.now,
          resource_arn: 'resource_arn',
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['TargetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['Rules'] = Stubs::RuleList.stub(stub[:rules]) unless stub[:rules].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RuleList
    class RuleList
      def self.default(visited=[])
        return nil if visited.include?('RuleList')
        visited = visited + ['RuleList']
        [
          Stubs::Rule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Rule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Rule
    class Rule
      def self.default(visited=[])
        return nil if visited.include?('Rule')
        visited = visited + ['Rule']
        {
          name: 'name',
          disabled: false,
          check_expression: 'check_expression',
          substitution_map: Stubs::ValuesMap.default(visited),
          threshold: Stubs::Threshold.default(visited),
          column_selectors: Stubs::ColumnSelectorList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Rule.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Disabled'] = stub[:disabled] unless stub[:disabled].nil?
        data['CheckExpression'] = stub[:check_expression] unless stub[:check_expression].nil?
        data['SubstitutionMap'] = Stubs::ValuesMap.stub(stub[:substitution_map]) unless stub[:substitution_map].nil?
        data['Threshold'] = Stubs::Threshold.stub(stub[:threshold]) unless stub[:threshold].nil?
        data['ColumnSelectors'] = Stubs::ColumnSelectorList.stub(stub[:column_selectors]) unless stub[:column_selectors].nil?
        data
      end
    end

    # Structure Stubber for Threshold
    class Threshold
      def self.default(visited=[])
        return nil if visited.include?('Threshold')
        visited = visited + ['Threshold']
        {
          value: 1.0,
          type: 'type',
          unit: 'unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::Threshold.new
        data = {}
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Unit'] = stub[:unit] unless stub[:unit].nil?
        data
      end
    end

    # Operation Stubber for DescribeSchedule
    class DescribeSchedule
      def self.default(visited=[])
        {
          create_date: Time.now,
          created_by: 'created_by',
          job_names: Stubs::JobNameList.default(visited),
          last_modified_by: 'last_modified_by',
          last_modified_date: Time.now,
          resource_arn: 'resource_arn',
          cron_expression: 'cron_expression',
          tags: Stubs::TagMap.default(visited),
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['JobNames'] = Stubs::JobNameList.stub(stub[:job_names]) unless stub[:job_names].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['CronExpression'] = stub[:cron_expression] unless stub[:cron_expression].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobNameList
    class JobNameList
      def self.default(visited=[])
        return nil if visited.include?('JobNameList')
        visited = visited + ['JobNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDatasets
    class ListDatasets
      def self.default(visited=[])
        {
          datasets: Stubs::DatasetList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Datasets'] = Stubs::DatasetList.stub(stub[:datasets]) unless stub[:datasets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DatasetList
    class DatasetList
      def self.default(visited=[])
        return nil if visited.include?('DatasetList')
        visited = visited + ['DatasetList']
        [
          Stubs::Dataset.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Dataset.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Dataset
    class Dataset
      def self.default(visited=[])
        return nil if visited.include?('Dataset')
        visited = visited + ['Dataset']
        {
          account_id: 'account_id',
          created_by: 'created_by',
          create_date: Time.now,
          name: 'name',
          format: 'format',
          format_options: Stubs::FormatOptions.default(visited),
          input: Stubs::Input.default(visited),
          last_modified_date: Time.now,
          last_modified_by: 'last_modified_by',
          source: 'source',
          path_options: Stubs::PathOptions.default(visited),
          tags: Stubs::TagMap.default(visited),
          resource_arn: 'resource_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Dataset.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data['FormatOptions'] = Stubs::FormatOptions.stub(stub[:format_options]) unless stub[:format_options].nil?
        data['Input'] = Stubs::Input.stub(stub[:input]) unless stub[:input].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['Source'] = stub[:source] unless stub[:source].nil?
        data['PathOptions'] = Stubs::PathOptions.stub(stub[:path_options]) unless stub[:path_options].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data
      end
    end

    # Operation Stubber for ListJobRuns
    class ListJobRuns
      def self.default(visited=[])
        {
          job_runs: Stubs::JobRunList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['JobRuns'] = Stubs::JobRunList.stub(stub[:job_runs]) unless stub[:job_runs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobRunList
    class JobRunList
      def self.default(visited=[])
        return nil if visited.include?('JobRunList')
        visited = visited + ['JobRunList']
        [
          Stubs::JobRun.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::JobRun.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for JobRun
    class JobRun
      def self.default(visited=[])
        return nil if visited.include?('JobRun')
        visited = visited + ['JobRun']
        {
          attempt: 1,
          completed_on: Time.now,
          dataset_name: 'dataset_name',
          error_message: 'error_message',
          execution_time: 1,
          job_name: 'job_name',
          run_id: 'run_id',
          state: 'state',
          log_subscription: 'log_subscription',
          log_group_name: 'log_group_name',
          outputs: Stubs::OutputList.default(visited),
          data_catalog_outputs: Stubs::DataCatalogOutputList.default(visited),
          database_outputs: Stubs::DatabaseOutputList.default(visited),
          recipe_reference: Stubs::RecipeReference.default(visited),
          started_by: 'started_by',
          started_on: Time.now,
          job_sample: Stubs::JobSample.default(visited),
          validation_configurations: Stubs::ValidationConfigurationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JobRun.new
        data = {}
        data['Attempt'] = stub[:attempt] unless stub[:attempt].nil?
        data['CompletedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completed_on]).to_i unless stub[:completed_on].nil?
        data['DatasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['ExecutionTime'] = stub[:execution_time] unless stub[:execution_time].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['RunId'] = stub[:run_id] unless stub[:run_id].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['LogSubscription'] = stub[:log_subscription] unless stub[:log_subscription].nil?
        data['LogGroupName'] = stub[:log_group_name] unless stub[:log_group_name].nil?
        data['Outputs'] = Stubs::OutputList.stub(stub[:outputs]) unless stub[:outputs].nil?
        data['DataCatalogOutputs'] = Stubs::DataCatalogOutputList.stub(stub[:data_catalog_outputs]) unless stub[:data_catalog_outputs].nil?
        data['DatabaseOutputs'] = Stubs::DatabaseOutputList.stub(stub[:database_outputs]) unless stub[:database_outputs].nil?
        data['RecipeReference'] = Stubs::RecipeReference.stub(stub[:recipe_reference]) unless stub[:recipe_reference].nil?
        data['StartedBy'] = stub[:started_by] unless stub[:started_by].nil?
        data['StartedOn'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_on]).to_i unless stub[:started_on].nil?
        data['JobSample'] = Stubs::JobSample.stub(stub[:job_sample]) unless stub[:job_sample].nil?
        data['ValidationConfigurations'] = Stubs::ValidationConfigurationList.stub(stub[:validation_configurations]) unless stub[:validation_configurations].nil?
        data
      end
    end

    # Operation Stubber for ListJobs
    class ListJobs
      def self.default(visited=[])
        {
          jobs: Stubs::JobList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Jobs'] = Stubs::JobList.stub(stub[:jobs]) unless stub[:jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for JobList
    class JobList
      def self.default(visited=[])
        return nil if visited.include?('JobList')
        visited = visited + ['JobList']
        [
          Stubs::Job.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Job.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Job
    class Job
      def self.default(visited=[])
        return nil if visited.include?('Job')
        visited = visited + ['Job']
        {
          account_id: 'account_id',
          created_by: 'created_by',
          create_date: Time.now,
          dataset_name: 'dataset_name',
          encryption_key_arn: 'encryption_key_arn',
          encryption_mode: 'encryption_mode',
          name: 'name',
          type: 'type',
          last_modified_by: 'last_modified_by',
          last_modified_date: Time.now,
          log_subscription: 'log_subscription',
          max_capacity: 1,
          max_retries: 1,
          outputs: Stubs::OutputList.default(visited),
          data_catalog_outputs: Stubs::DataCatalogOutputList.default(visited),
          database_outputs: Stubs::DatabaseOutputList.default(visited),
          project_name: 'project_name',
          recipe_reference: Stubs::RecipeReference.default(visited),
          resource_arn: 'resource_arn',
          role_arn: 'role_arn',
          timeout: 1,
          tags: Stubs::TagMap.default(visited),
          job_sample: Stubs::JobSample.default(visited),
          validation_configurations: Stubs::ValidationConfigurationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Job.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['DatasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['EncryptionKeyArn'] = stub[:encryption_key_arn] unless stub[:encryption_key_arn].nil?
        data['EncryptionMode'] = stub[:encryption_mode] unless stub[:encryption_mode].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['LogSubscription'] = stub[:log_subscription] unless stub[:log_subscription].nil?
        data['MaxCapacity'] = stub[:max_capacity] unless stub[:max_capacity].nil?
        data['MaxRetries'] = stub[:max_retries] unless stub[:max_retries].nil?
        data['Outputs'] = Stubs::OutputList.stub(stub[:outputs]) unless stub[:outputs].nil?
        data['DataCatalogOutputs'] = Stubs::DataCatalogOutputList.stub(stub[:data_catalog_outputs]) unless stub[:data_catalog_outputs].nil?
        data['DatabaseOutputs'] = Stubs::DatabaseOutputList.stub(stub[:database_outputs]) unless stub[:database_outputs].nil?
        data['ProjectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['RecipeReference'] = Stubs::RecipeReference.stub(stub[:recipe_reference]) unless stub[:recipe_reference].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['Timeout'] = stub[:timeout] unless stub[:timeout].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['JobSample'] = Stubs::JobSample.stub(stub[:job_sample]) unless stub[:job_sample].nil?
        data['ValidationConfigurations'] = Stubs::ValidationConfigurationList.stub(stub[:validation_configurations]) unless stub[:validation_configurations].nil?
        data
      end
    end

    # Operation Stubber for ListProjects
    class ListProjects
      def self.default(visited=[])
        {
          projects: Stubs::ProjectList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Projects'] = Stubs::ProjectList.stub(stub[:projects]) unless stub[:projects].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProjectList
    class ProjectList
      def self.default(visited=[])
        return nil if visited.include?('ProjectList')
        visited = visited + ['ProjectList']
        [
          Stubs::Project.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Project.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Project
    class Project
      def self.default(visited=[])
        return nil if visited.include?('Project')
        visited = visited + ['Project']
        {
          account_id: 'account_id',
          create_date: Time.now,
          created_by: 'created_by',
          dataset_name: 'dataset_name',
          last_modified_date: Time.now,
          last_modified_by: 'last_modified_by',
          name: 'name',
          recipe_name: 'recipe_name',
          resource_arn: 'resource_arn',
          sample: Stubs::Sample.default(visited),
          tags: Stubs::TagMap.default(visited),
          role_arn: 'role_arn',
          opened_by: 'opened_by',
          open_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Project.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['DatasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RecipeName'] = stub[:recipe_name] unless stub[:recipe_name].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Sample'] = Stubs::Sample.stub(stub[:sample]) unless stub[:sample].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['OpenedBy'] = stub[:opened_by] unless stub[:opened_by].nil?
        data['OpenDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:open_date]).to_i unless stub[:open_date].nil?
        data
      end
    end

    # Operation Stubber for ListRecipeVersions
    class ListRecipeVersions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          recipes: Stubs::RecipeList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Recipes'] = Stubs::RecipeList.stub(stub[:recipes]) unless stub[:recipes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RecipeList
    class RecipeList
      def self.default(visited=[])
        return nil if visited.include?('RecipeList')
        visited = visited + ['RecipeList']
        [
          Stubs::Recipe.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Recipe.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Recipe
    class Recipe
      def self.default(visited=[])
        return nil if visited.include?('Recipe')
        visited = visited + ['Recipe']
        {
          created_by: 'created_by',
          create_date: Time.now,
          last_modified_by: 'last_modified_by',
          last_modified_date: Time.now,
          project_name: 'project_name',
          published_by: 'published_by',
          published_date: Time.now,
          description: 'description',
          name: 'name',
          resource_arn: 'resource_arn',
          steps: Stubs::RecipeStepList.default(visited),
          tags: Stubs::TagMap.default(visited),
          recipe_version: 'recipe_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::Recipe.new
        data = {}
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['ProjectName'] = stub[:project_name] unless stub[:project_name].nil?
        data['PublishedBy'] = stub[:published_by] unless stub[:published_by].nil?
        data['PublishedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:published_date]).to_i unless stub[:published_date].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Steps'] = Stubs::RecipeStepList.stub(stub[:steps]) unless stub[:steps].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['RecipeVersion'] = stub[:recipe_version] unless stub[:recipe_version].nil?
        data
      end
    end

    # Operation Stubber for ListRecipes
    class ListRecipes
      def self.default(visited=[])
        {
          recipes: Stubs::RecipeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Recipes'] = Stubs::RecipeList.stub(stub[:recipes]) unless stub[:recipes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListRulesets
    class ListRulesets
      def self.default(visited=[])
        {
          rulesets: Stubs::RulesetItemList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Rulesets'] = Stubs::RulesetItemList.stub(stub[:rulesets]) unless stub[:rulesets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RulesetItemList
    class RulesetItemList
      def self.default(visited=[])
        return nil if visited.include?('RulesetItemList')
        visited = visited + ['RulesetItemList']
        [
          Stubs::RulesetItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RulesetItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RulesetItem
    class RulesetItem
      def self.default(visited=[])
        return nil if visited.include?('RulesetItem')
        visited = visited + ['RulesetItem']
        {
          account_id: 'account_id',
          created_by: 'created_by',
          create_date: Time.now,
          description: 'description',
          last_modified_by: 'last_modified_by',
          last_modified_date: Time.now,
          name: 'name',
          resource_arn: 'resource_arn',
          rule_count: 1,
          tags: Stubs::TagMap.default(visited),
          target_arn: 'target_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RulesetItem.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['RuleCount'] = stub[:rule_count] unless stub[:rule_count].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['TargetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data
      end
    end

    # Operation Stubber for ListSchedules
    class ListSchedules
      def self.default(visited=[])
        {
          schedules: Stubs::ScheduleList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Schedules'] = Stubs::ScheduleList.stub(stub[:schedules]) unless stub[:schedules].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ScheduleList
    class ScheduleList
      def self.default(visited=[])
        return nil if visited.include?('ScheduleList')
        visited = visited + ['ScheduleList']
        [
          Stubs::Schedule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Schedule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Schedule
    class Schedule
      def self.default(visited=[])
        return nil if visited.include?('Schedule')
        visited = visited + ['Schedule']
        {
          account_id: 'account_id',
          created_by: 'created_by',
          create_date: Time.now,
          job_names: Stubs::JobNameList.default(visited),
          last_modified_by: 'last_modified_by',
          last_modified_date: Time.now,
          resource_arn: 'resource_arn',
          cron_expression: 'cron_expression',
          tags: Stubs::TagMap.default(visited),
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Schedule.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['CreatedBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['CreateDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_date]).to_i unless stub[:create_date].nil?
        data['JobNames'] = Stubs::JobNameList.stub(stub[:job_names]) unless stub[:job_names].nil?
        data['LastModifiedBy'] = stub[:last_modified_by] unless stub[:last_modified_by].nil?
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['CronExpression'] = stub[:cron_expression] unless stub[:cron_expression].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PublishRecipe
    class PublishRecipe
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SendProjectSessionAction
    class SendProjectSessionAction
      def self.default(visited=[])
        {
          result: 'result',
          name: 'name',
          action_id: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Result'] = stub[:result] unless stub[:result].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ActionId'] = stub[:action_id] unless stub[:action_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartJobRun
    class StartJobRun
      def self.default(visited=[])
        {
          run_id: 'run_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RunId'] = stub[:run_id] unless stub[:run_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartProjectSession
    class StartProjectSession
      def self.default(visited=[])
        {
          name: 'name',
          client_session_id: 'client_session_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ClientSessionId'] = stub[:client_session_id] unless stub[:client_session_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopJobRun
    class StopJobRun
      def self.default(visited=[])
        {
          run_id: 'run_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RunId'] = stub[:run_id] unless stub[:run_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDataset
    class UpdateDataset
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateProfileJob
    class UpdateProfileJob
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateProject
    class UpdateProject
      def self.default(visited=[])
        {
          last_modified_date: Time.now,
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['LastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRecipe
    class UpdateRecipe
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRecipeJob
    class UpdateRecipeJob
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRuleset
    class UpdateRuleset
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSchedule
    class UpdateSchedule
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
