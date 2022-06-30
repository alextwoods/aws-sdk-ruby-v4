# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Forecast
  module Stubs

    # Operation Stubber for CreateAutoPredictor
    class CreateAutoPredictor
      def self.default(visited=[])
        {
          predictor_arn: 'predictor_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PredictorArn'] = stub[:predictor_arn] unless stub[:predictor_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDataset
    class CreateDataset
      def self.default(visited=[])
        {
          dataset_arn: 'dataset_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDatasetGroup
    class CreateDatasetGroup
      def self.default(visited=[])
        {
          dataset_group_arn: 'dataset_group_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDatasetImportJob
    class CreateDatasetImportJob
      def self.default(visited=[])
        {
          dataset_import_job_arn: 'dataset_import_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatasetImportJobArn'] = stub[:dataset_import_job_arn] unless stub[:dataset_import_job_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateExplainability
    class CreateExplainability
      def self.default(visited=[])
        {
          explainability_arn: 'explainability_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExplainabilityArn'] = stub[:explainability_arn] unless stub[:explainability_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateExplainabilityExport
    class CreateExplainabilityExport
      def self.default(visited=[])
        {
          explainability_export_arn: 'explainability_export_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExplainabilityExportArn'] = stub[:explainability_export_arn] unless stub[:explainability_export_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateForecast
    class CreateForecast
      def self.default(visited=[])
        {
          forecast_arn: 'forecast_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ForecastArn'] = stub[:forecast_arn] unless stub[:forecast_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateForecastExportJob
    class CreateForecastExportJob
      def self.default(visited=[])
        {
          forecast_export_job_arn: 'forecast_export_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ForecastExportJobArn'] = stub[:forecast_export_job_arn] unless stub[:forecast_export_job_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateMonitor
    class CreateMonitor
      def self.default(visited=[])
        {
          monitor_arn: 'monitor_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MonitorArn'] = stub[:monitor_arn] unless stub[:monitor_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePredictor
    class CreatePredictor
      def self.default(visited=[])
        {
          predictor_arn: 'predictor_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PredictorArn'] = stub[:predictor_arn] unless stub[:predictor_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePredictorBacktestExportJob
    class CreatePredictorBacktestExportJob
      def self.default(visited=[])
        {
          predictor_backtest_export_job_arn: 'predictor_backtest_export_job_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PredictorBacktestExportJobArn'] = stub[:predictor_backtest_export_job_arn] unless stub[:predictor_backtest_export_job_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDataset
    class DeleteDataset
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDatasetGroup
    class DeleteDatasetGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDatasetImportJob
    class DeleteDatasetImportJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteExplainability
    class DeleteExplainability
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteExplainabilityExport
    class DeleteExplainabilityExport
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteForecast
    class DeleteForecast
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteForecastExportJob
    class DeleteForecastExportJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMonitor
    class DeleteMonitor
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePredictor
    class DeletePredictor
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePredictorBacktestExportJob
    class DeletePredictorBacktestExportJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResourceTree
    class DeleteResourceTree
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAutoPredictor
    class DescribeAutoPredictor
      def self.default(visited=[])
        {
          predictor_arn: 'predictor_arn',
          predictor_name: 'predictor_name',
          forecast_horizon: 1,
          forecast_types: Stubs::ForecastTypes.default(visited),
          forecast_frequency: 'forecast_frequency',
          forecast_dimensions: Stubs::ForecastDimensions.default(visited),
          dataset_import_job_arns: Stubs::ArnList.default(visited),
          data_config: Stubs::DataConfig.default(visited),
          encryption_config: Stubs::EncryptionConfig.default(visited),
          reference_predictor_summary: Stubs::ReferencePredictorSummary.default(visited),
          estimated_time_remaining_in_minutes: 1,
          status: 'status',
          message: 'message',
          creation_time: Time.now,
          last_modification_time: Time.now,
          optimization_metric: 'optimization_metric',
          explainability_info: Stubs::ExplainabilityInfo.default(visited),
          monitor_info: Stubs::MonitorInfo.default(visited),
          time_alignment_boundary: Stubs::TimeAlignmentBoundary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PredictorArn'] = stub[:predictor_arn] unless stub[:predictor_arn].nil?
        data['PredictorName'] = stub[:predictor_name] unless stub[:predictor_name].nil?
        data['ForecastHorizon'] = stub[:forecast_horizon] unless stub[:forecast_horizon].nil?
        data['ForecastTypes'] = Stubs::ForecastTypes.stub(stub[:forecast_types]) unless stub[:forecast_types].nil?
        data['ForecastFrequency'] = stub[:forecast_frequency] unless stub[:forecast_frequency].nil?
        data['ForecastDimensions'] = Stubs::ForecastDimensions.stub(stub[:forecast_dimensions]) unless stub[:forecast_dimensions].nil?
        data['DatasetImportJobArns'] = Stubs::ArnList.stub(stub[:dataset_import_job_arns]) unless stub[:dataset_import_job_arns].nil?
        data['DataConfig'] = Stubs::DataConfig.stub(stub[:data_config]) unless stub[:data_config].nil?
        data['EncryptionConfig'] = Stubs::EncryptionConfig.stub(stub[:encryption_config]) unless stub[:encryption_config].nil?
        data['ReferencePredictorSummary'] = Stubs::ReferencePredictorSummary.stub(stub[:reference_predictor_summary]) unless stub[:reference_predictor_summary].nil?
        data['EstimatedTimeRemainingInMinutes'] = stub[:estimated_time_remaining_in_minutes] unless stub[:estimated_time_remaining_in_minutes].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data['OptimizationMetric'] = stub[:optimization_metric] unless stub[:optimization_metric].nil?
        data['ExplainabilityInfo'] = Stubs::ExplainabilityInfo.stub(stub[:explainability_info]) unless stub[:explainability_info].nil?
        data['MonitorInfo'] = Stubs::MonitorInfo.stub(stub[:monitor_info]) unless stub[:monitor_info].nil?
        data['TimeAlignmentBoundary'] = Stubs::TimeAlignmentBoundary.stub(stub[:time_alignment_boundary]) unless stub[:time_alignment_boundary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TimeAlignmentBoundary
    class TimeAlignmentBoundary
      def self.default(visited=[])
        return nil if visited.include?('TimeAlignmentBoundary')
        visited = visited + ['TimeAlignmentBoundary']
        {
          month: 'month',
          day_of_month: 1,
          day_of_week: 'day_of_week',
          hour: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeAlignmentBoundary.new
        data = {}
        data['Month'] = stub[:month] unless stub[:month].nil?
        data['DayOfMonth'] = stub[:day_of_month] unless stub[:day_of_month].nil?
        data['DayOfWeek'] = stub[:day_of_week] unless stub[:day_of_week].nil?
        data['Hour'] = stub[:hour] unless stub[:hour].nil?
        data
      end
    end

    # Structure Stubber for MonitorInfo
    class MonitorInfo
      def self.default(visited=[])
        return nil if visited.include?('MonitorInfo')
        visited = visited + ['MonitorInfo']
        {
          monitor_arn: 'monitor_arn',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitorInfo.new
        data = {}
        data['MonitorArn'] = stub[:monitor_arn] unless stub[:monitor_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for ExplainabilityInfo
    class ExplainabilityInfo
      def self.default(visited=[])
        return nil if visited.include?('ExplainabilityInfo')
        visited = visited + ['ExplainabilityInfo']
        {
          explainability_arn: 'explainability_arn',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExplainabilityInfo.new
        data = {}
        data['ExplainabilityArn'] = stub[:explainability_arn] unless stub[:explainability_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for ReferencePredictorSummary
    class ReferencePredictorSummary
      def self.default(visited=[])
        return nil if visited.include?('ReferencePredictorSummary')
        visited = visited + ['ReferencePredictorSummary']
        {
          arn: 'arn',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReferencePredictorSummary.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Structure Stubber for EncryptionConfig
    class EncryptionConfig
      def self.default(visited=[])
        return nil if visited.include?('EncryptionConfig')
        visited = visited + ['EncryptionConfig']
        {
          role_arn: 'role_arn',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionConfig.new
        data = {}
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['KMSKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # Structure Stubber for DataConfig
    class DataConfig
      def self.default(visited=[])
        return nil if visited.include?('DataConfig')
        visited = visited + ['DataConfig']
        {
          dataset_group_arn: 'dataset_group_arn',
          attribute_configs: Stubs::AttributeConfigs.default(visited),
          additional_datasets: Stubs::AdditionalDatasets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataConfig.new
        data = {}
        data['DatasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['AttributeConfigs'] = Stubs::AttributeConfigs.stub(stub[:attribute_configs]) unless stub[:attribute_configs].nil?
        data['AdditionalDatasets'] = Stubs::AdditionalDatasets.stub(stub[:additional_datasets]) unless stub[:additional_datasets].nil?
        data
      end
    end

    # List Stubber for AdditionalDatasets
    class AdditionalDatasets
      def self.default(visited=[])
        return nil if visited.include?('AdditionalDatasets')
        visited = visited + ['AdditionalDatasets']
        [
          Stubs::AdditionalDataset.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AdditionalDataset.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AdditionalDataset
    class AdditionalDataset
      def self.default(visited=[])
        return nil if visited.include?('AdditionalDataset')
        visited = visited + ['AdditionalDataset']
        {
          name: 'name',
          configuration: Stubs::Configuration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AdditionalDataset.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Configuration'] = Stubs::Configuration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data
      end
    end

    # Map Stubber for Configuration
    class Configuration
      def self.default(visited=[])
        return nil if visited.include?('Configuration')
        visited = visited + ['Configuration']
        {
          test_key: Stubs::Values.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::Values.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for Values
    class Values
      def self.default(visited=[])
        return nil if visited.include?('Values')
        visited = visited + ['Values']
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

    # List Stubber for AttributeConfigs
    class AttributeConfigs
      def self.default(visited=[])
        return nil if visited.include?('AttributeConfigs')
        visited = visited + ['AttributeConfigs']
        [
          Stubs::AttributeConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AttributeConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttributeConfig
    class AttributeConfig
      def self.default(visited=[])
        return nil if visited.include?('AttributeConfig')
        visited = visited + ['AttributeConfig']
        {
          attribute_name: 'attribute_name',
          transformations: Stubs::Transformations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AttributeConfig.new
        data = {}
        data['AttributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data['Transformations'] = Stubs::Transformations.stub(stub[:transformations]) unless stub[:transformations].nil?
        data
      end
    end

    # Map Stubber for Transformations
    class Transformations
      def self.default(visited=[])
        return nil if visited.include?('Transformations')
        visited = visited + ['Transformations']
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

    # List Stubber for ArnList
    class ArnList
      def self.default(visited=[])
        return nil if visited.include?('ArnList')
        visited = visited + ['ArnList']
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

    # List Stubber for ForecastDimensions
    class ForecastDimensions
      def self.default(visited=[])
        return nil if visited.include?('ForecastDimensions')
        visited = visited + ['ForecastDimensions']
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

    # List Stubber for ForecastTypes
    class ForecastTypes
      def self.default(visited=[])
        return nil if visited.include?('ForecastTypes')
        visited = visited + ['ForecastTypes']
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

    # Operation Stubber for DescribeDataset
    class DescribeDataset
      def self.default(visited=[])
        {
          dataset_arn: 'dataset_arn',
          dataset_name: 'dataset_name',
          domain: 'domain',
          dataset_type: 'dataset_type',
          data_frequency: 'data_frequency',
          schema: Stubs::Schema.default(visited),
          encryption_config: Stubs::EncryptionConfig.default(visited),
          status: 'status',
          creation_time: Time.now,
          last_modification_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['DatasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['DatasetType'] = stub[:dataset_type] unless stub[:dataset_type].nil?
        data['DataFrequency'] = stub[:data_frequency] unless stub[:data_frequency].nil?
        data['Schema'] = Stubs::Schema.stub(stub[:schema]) unless stub[:schema].nil?
        data['EncryptionConfig'] = Stubs::EncryptionConfig.stub(stub[:encryption_config]) unless stub[:encryption_config].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Schema
    class Schema
      def self.default(visited=[])
        return nil if visited.include?('Schema')
        visited = visited + ['Schema']
        {
          attributes: Stubs::SchemaAttributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Schema.new
        data = {}
        data['Attributes'] = Stubs::SchemaAttributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # List Stubber for SchemaAttributes
    class SchemaAttributes
      def self.default(visited=[])
        return nil if visited.include?('SchemaAttributes')
        visited = visited + ['SchemaAttributes']
        [
          Stubs::SchemaAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SchemaAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SchemaAttribute
    class SchemaAttribute
      def self.default(visited=[])
        return nil if visited.include?('SchemaAttribute')
        visited = visited + ['SchemaAttribute']
        {
          attribute_name: 'attribute_name',
          attribute_type: 'attribute_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::SchemaAttribute.new
        data = {}
        data['AttributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data['AttributeType'] = stub[:attribute_type] unless stub[:attribute_type].nil?
        data
      end
    end

    # Operation Stubber for DescribeDatasetGroup
    class DescribeDatasetGroup
      def self.default(visited=[])
        {
          dataset_group_name: 'dataset_group_name',
          dataset_group_arn: 'dataset_group_arn',
          dataset_arns: Stubs::ArnList.default(visited),
          domain: 'domain',
          status: 'status',
          creation_time: Time.now,
          last_modification_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatasetGroupName'] = stub[:dataset_group_name] unless stub[:dataset_group_name].nil?
        data['DatasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['DatasetArns'] = Stubs::ArnList.stub(stub[:dataset_arns]) unless stub[:dataset_arns].nil?
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeDatasetImportJob
    class DescribeDatasetImportJob
      def self.default(visited=[])
        {
          dataset_import_job_name: 'dataset_import_job_name',
          dataset_import_job_arn: 'dataset_import_job_arn',
          dataset_arn: 'dataset_arn',
          timestamp_format: 'timestamp_format',
          time_zone: 'time_zone',
          use_geolocation_for_time_zone: false,
          geolocation_format: 'geolocation_format',
          data_source: Stubs::DataSource.default(visited),
          estimated_time_remaining_in_minutes: 1,
          field_statistics: Stubs::FieldStatistics.default(visited),
          data_size: 1.0,
          status: 'status',
          message: 'message',
          creation_time: Time.now,
          last_modification_time: Time.now,
          format: 'format',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatasetImportJobName'] = stub[:dataset_import_job_name] unless stub[:dataset_import_job_name].nil?
        data['DatasetImportJobArn'] = stub[:dataset_import_job_arn] unless stub[:dataset_import_job_arn].nil?
        data['DatasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['TimestampFormat'] = stub[:timestamp_format] unless stub[:timestamp_format].nil?
        data['TimeZone'] = stub[:time_zone] unless stub[:time_zone].nil?
        data['UseGeolocationForTimeZone'] = stub[:use_geolocation_for_time_zone] unless stub[:use_geolocation_for_time_zone].nil?
        data['GeolocationFormat'] = stub[:geolocation_format] unless stub[:geolocation_format].nil?
        data['DataSource'] = Stubs::DataSource.stub(stub[:data_source]) unless stub[:data_source].nil?
        data['EstimatedTimeRemainingInMinutes'] = stub[:estimated_time_remaining_in_minutes] unless stub[:estimated_time_remaining_in_minutes].nil?
        data['FieldStatistics'] = Stubs::FieldStatistics.stub(stub[:field_statistics]) unless stub[:field_statistics].nil?
        data['DataSize'] = Hearth::NumberHelper.serialize(stub[:data_size])
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for FieldStatistics
    class FieldStatistics
      def self.default(visited=[])
        return nil if visited.include?('FieldStatistics')
        visited = visited + ['FieldStatistics']
        {
          test_key: Stubs::Statistics.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::Statistics.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for Statistics
    class Statistics
      def self.default(visited=[])
        return nil if visited.include?('Statistics')
        visited = visited + ['Statistics']
        {
          count: 1,
          count_distinct: 1,
          count_null: 1,
          count_nan: 1,
          min: 'min',
          max: 'max',
          avg: 1.0,
          stddev: 1.0,
          count_long: 1,
          count_distinct_long: 1,
          count_null_long: 1,
          count_nan_long: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Statistics.new
        data = {}
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['CountDistinct'] = stub[:count_distinct] unless stub[:count_distinct].nil?
        data['CountNull'] = stub[:count_null] unless stub[:count_null].nil?
        data['CountNan'] = stub[:count_nan] unless stub[:count_nan].nil?
        data['Min'] = stub[:min] unless stub[:min].nil?
        data['Max'] = stub[:max] unless stub[:max].nil?
        data['Avg'] = Hearth::NumberHelper.serialize(stub[:avg])
        data['Stddev'] = Hearth::NumberHelper.serialize(stub[:stddev])
        data['CountLong'] = stub[:count_long] unless stub[:count_long].nil?
        data['CountDistinctLong'] = stub[:count_distinct_long] unless stub[:count_distinct_long].nil?
        data['CountNullLong'] = stub[:count_null_long] unless stub[:count_null_long].nil?
        data['CountNanLong'] = stub[:count_nan_long] unless stub[:count_nan_long].nil?
        data
      end
    end

    # Structure Stubber for DataSource
    class DataSource
      def self.default(visited=[])
        return nil if visited.include?('DataSource')
        visited = visited + ['DataSource']
        {
          s3_config: Stubs::S3Config.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSource.new
        data = {}
        data['S3Config'] = Stubs::S3Config.stub(stub[:s3_config]) unless stub[:s3_config].nil?
        data
      end
    end

    # Structure Stubber for S3Config
    class S3Config
      def self.default(visited=[])
        return nil if visited.include?('S3Config')
        visited = visited + ['S3Config']
        {
          path: 'path',
          role_arn: 'role_arn',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Config.new
        data = {}
        data['Path'] = stub[:path] unless stub[:path].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['KMSKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # Operation Stubber for DescribeExplainability
    class DescribeExplainability
      def self.default(visited=[])
        {
          explainability_arn: 'explainability_arn',
          explainability_name: 'explainability_name',
          resource_arn: 'resource_arn',
          explainability_config: Stubs::ExplainabilityConfig.default(visited),
          enable_visualization: false,
          data_source: Stubs::DataSource.default(visited),
          schema: Stubs::Schema.default(visited),
          start_date_time: 'start_date_time',
          end_date_time: 'end_date_time',
          estimated_time_remaining_in_minutes: 1,
          message: 'message',
          status: 'status',
          creation_time: Time.now,
          last_modification_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExplainabilityArn'] = stub[:explainability_arn] unless stub[:explainability_arn].nil?
        data['ExplainabilityName'] = stub[:explainability_name] unless stub[:explainability_name].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['ExplainabilityConfig'] = Stubs::ExplainabilityConfig.stub(stub[:explainability_config]) unless stub[:explainability_config].nil?
        data['EnableVisualization'] = stub[:enable_visualization] unless stub[:enable_visualization].nil?
        data['DataSource'] = Stubs::DataSource.stub(stub[:data_source]) unless stub[:data_source].nil?
        data['Schema'] = Stubs::Schema.stub(stub[:schema]) unless stub[:schema].nil?
        data['StartDateTime'] = stub[:start_date_time] unless stub[:start_date_time].nil?
        data['EndDateTime'] = stub[:end_date_time] unless stub[:end_date_time].nil?
        data['EstimatedTimeRemainingInMinutes'] = stub[:estimated_time_remaining_in_minutes] unless stub[:estimated_time_remaining_in_minutes].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ExplainabilityConfig
    class ExplainabilityConfig
      def self.default(visited=[])
        return nil if visited.include?('ExplainabilityConfig')
        visited = visited + ['ExplainabilityConfig']
        {
          time_series_granularity: 'time_series_granularity',
          time_point_granularity: 'time_point_granularity',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExplainabilityConfig.new
        data = {}
        data['TimeSeriesGranularity'] = stub[:time_series_granularity] unless stub[:time_series_granularity].nil?
        data['TimePointGranularity'] = stub[:time_point_granularity] unless stub[:time_point_granularity].nil?
        data
      end
    end

    # Operation Stubber for DescribeExplainabilityExport
    class DescribeExplainabilityExport
      def self.default(visited=[])
        {
          explainability_export_arn: 'explainability_export_arn',
          explainability_export_name: 'explainability_export_name',
          explainability_arn: 'explainability_arn',
          destination: Stubs::DataDestination.default(visited),
          message: 'message',
          status: 'status',
          creation_time: Time.now,
          last_modification_time: Time.now,
          format: 'format',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExplainabilityExportArn'] = stub[:explainability_export_arn] unless stub[:explainability_export_arn].nil?
        data['ExplainabilityExportName'] = stub[:explainability_export_name] unless stub[:explainability_export_name].nil?
        data['ExplainabilityArn'] = stub[:explainability_arn] unless stub[:explainability_arn].nil?
        data['Destination'] = Stubs::DataDestination.stub(stub[:destination]) unless stub[:destination].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DataDestination
    class DataDestination
      def self.default(visited=[])
        return nil if visited.include?('DataDestination')
        visited = visited + ['DataDestination']
        {
          s3_config: Stubs::S3Config.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataDestination.new
        data = {}
        data['S3Config'] = Stubs::S3Config.stub(stub[:s3_config]) unless stub[:s3_config].nil?
        data
      end
    end

    # Operation Stubber for DescribeForecast
    class DescribeForecast
      def self.default(visited=[])
        {
          forecast_arn: 'forecast_arn',
          forecast_name: 'forecast_name',
          forecast_types: Stubs::ForecastTypes.default(visited),
          predictor_arn: 'predictor_arn',
          dataset_group_arn: 'dataset_group_arn',
          estimated_time_remaining_in_minutes: 1,
          status: 'status',
          message: 'message',
          creation_time: Time.now,
          last_modification_time: Time.now,
          time_series_selector: Stubs::TimeSeriesSelector.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ForecastArn'] = stub[:forecast_arn] unless stub[:forecast_arn].nil?
        data['ForecastName'] = stub[:forecast_name] unless stub[:forecast_name].nil?
        data['ForecastTypes'] = Stubs::ForecastTypes.stub(stub[:forecast_types]) unless stub[:forecast_types].nil?
        data['PredictorArn'] = stub[:predictor_arn] unless stub[:predictor_arn].nil?
        data['DatasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['EstimatedTimeRemainingInMinutes'] = stub[:estimated_time_remaining_in_minutes] unless stub[:estimated_time_remaining_in_minutes].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data['TimeSeriesSelector'] = Stubs::TimeSeriesSelector.stub(stub[:time_series_selector]) unless stub[:time_series_selector].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TimeSeriesSelector
    class TimeSeriesSelector
      def self.default(visited=[])
        return nil if visited.include?('TimeSeriesSelector')
        visited = visited + ['TimeSeriesSelector']
        {
          time_series_identifiers: Stubs::TimeSeriesIdentifiers.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeSeriesSelector.new
        data = {}
        data['TimeSeriesIdentifiers'] = Stubs::TimeSeriesIdentifiers.stub(stub[:time_series_identifiers]) unless stub[:time_series_identifiers].nil?
        data
      end
    end

    # Structure Stubber for TimeSeriesIdentifiers
    class TimeSeriesIdentifiers
      def self.default(visited=[])
        return nil if visited.include?('TimeSeriesIdentifiers')
        visited = visited + ['TimeSeriesIdentifiers']
        {
          data_source: Stubs::DataSource.default(visited),
          schema: Stubs::Schema.default(visited),
          format: 'format',
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeSeriesIdentifiers.new
        data = {}
        data['DataSource'] = Stubs::DataSource.stub(stub[:data_source]) unless stub[:data_source].nil?
        data['Schema'] = Stubs::Schema.stub(stub[:schema]) unless stub[:schema].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data
      end
    end

    # Operation Stubber for DescribeForecastExportJob
    class DescribeForecastExportJob
      def self.default(visited=[])
        {
          forecast_export_job_arn: 'forecast_export_job_arn',
          forecast_export_job_name: 'forecast_export_job_name',
          forecast_arn: 'forecast_arn',
          destination: Stubs::DataDestination.default(visited),
          message: 'message',
          status: 'status',
          creation_time: Time.now,
          last_modification_time: Time.now,
          format: 'format',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ForecastExportJobArn'] = stub[:forecast_export_job_arn] unless stub[:forecast_export_job_arn].nil?
        data['ForecastExportJobName'] = stub[:forecast_export_job_name] unless stub[:forecast_export_job_name].nil?
        data['ForecastArn'] = stub[:forecast_arn] unless stub[:forecast_arn].nil?
        data['Destination'] = Stubs::DataDestination.stub(stub[:destination]) unless stub[:destination].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeMonitor
    class DescribeMonitor
      def self.default(visited=[])
        {
          monitor_name: 'monitor_name',
          monitor_arn: 'monitor_arn',
          resource_arn: 'resource_arn',
          status: 'status',
          last_evaluation_time: Time.now,
          last_evaluation_state: 'last_evaluation_state',
          baseline: Stubs::Baseline.default(visited),
          message: 'message',
          creation_time: Time.now,
          last_modification_time: Time.now,
          estimated_evaluation_time_remaining_in_minutes: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MonitorName'] = stub[:monitor_name] unless stub[:monitor_name].nil?
        data['MonitorArn'] = stub[:monitor_arn] unless stub[:monitor_arn].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LastEvaluationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_evaluation_time]).to_i unless stub[:last_evaluation_time].nil?
        data['LastEvaluationState'] = stub[:last_evaluation_state] unless stub[:last_evaluation_state].nil?
        data['Baseline'] = Stubs::Baseline.stub(stub[:baseline]) unless stub[:baseline].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data['EstimatedEvaluationTimeRemainingInMinutes'] = stub[:estimated_evaluation_time_remaining_in_minutes] unless stub[:estimated_evaluation_time_remaining_in_minutes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Baseline
    class Baseline
      def self.default(visited=[])
        return nil if visited.include?('Baseline')
        visited = visited + ['Baseline']
        {
          predictor_baseline: Stubs::PredictorBaseline.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Baseline.new
        data = {}
        data['PredictorBaseline'] = Stubs::PredictorBaseline.stub(stub[:predictor_baseline]) unless stub[:predictor_baseline].nil?
        data
      end
    end

    # Structure Stubber for PredictorBaseline
    class PredictorBaseline
      def self.default(visited=[])
        return nil if visited.include?('PredictorBaseline')
        visited = visited + ['PredictorBaseline']
        {
          baseline_metrics: Stubs::BaselineMetrics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PredictorBaseline.new
        data = {}
        data['BaselineMetrics'] = Stubs::BaselineMetrics.stub(stub[:baseline_metrics]) unless stub[:baseline_metrics].nil?
        data
      end
    end

    # List Stubber for BaselineMetrics
    class BaselineMetrics
      def self.default(visited=[])
        return nil if visited.include?('BaselineMetrics')
        visited = visited + ['BaselineMetrics']
        [
          Stubs::BaselineMetric.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BaselineMetric.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BaselineMetric
    class BaselineMetric
      def self.default(visited=[])
        return nil if visited.include?('BaselineMetric')
        visited = visited + ['BaselineMetric']
        {
          name: 'name',
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::BaselineMetric.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end

    # Operation Stubber for DescribePredictor
    class DescribePredictor
      def self.default(visited=[])
        {
          predictor_arn: 'predictor_arn',
          predictor_name: 'predictor_name',
          algorithm_arn: 'algorithm_arn',
          auto_ml_algorithm_arns: Stubs::ArnList.default(visited),
          forecast_horizon: 1,
          forecast_types: Stubs::ForecastTypes.default(visited),
          perform_auto_ml: false,
          auto_ml_override_strategy: 'auto_ml_override_strategy',
          perform_hpo: false,
          training_parameters: Stubs::TrainingParameters.default(visited),
          evaluation_parameters: Stubs::EvaluationParameters.default(visited),
          hpo_config: Stubs::HyperParameterTuningJobConfig.default(visited),
          input_data_config: Stubs::InputDataConfig.default(visited),
          featurization_config: Stubs::FeaturizationConfig.default(visited),
          encryption_config: Stubs::EncryptionConfig.default(visited),
          predictor_execution_details: Stubs::PredictorExecutionDetails.default(visited),
          estimated_time_remaining_in_minutes: 1,
          is_auto_predictor: false,
          dataset_import_job_arns: Stubs::ArnList.default(visited),
          status: 'status',
          message: 'message',
          creation_time: Time.now,
          last_modification_time: Time.now,
          optimization_metric: 'optimization_metric',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PredictorArn'] = stub[:predictor_arn] unless stub[:predictor_arn].nil?
        data['PredictorName'] = stub[:predictor_name] unless stub[:predictor_name].nil?
        data['AlgorithmArn'] = stub[:algorithm_arn] unless stub[:algorithm_arn].nil?
        data['AutoMLAlgorithmArns'] = Stubs::ArnList.stub(stub[:auto_ml_algorithm_arns]) unless stub[:auto_ml_algorithm_arns].nil?
        data['ForecastHorizon'] = stub[:forecast_horizon] unless stub[:forecast_horizon].nil?
        data['ForecastTypes'] = Stubs::ForecastTypes.stub(stub[:forecast_types]) unless stub[:forecast_types].nil?
        data['PerformAutoML'] = stub[:perform_auto_ml] unless stub[:perform_auto_ml].nil?
        data['AutoMLOverrideStrategy'] = stub[:auto_ml_override_strategy] unless stub[:auto_ml_override_strategy].nil?
        data['PerformHPO'] = stub[:perform_hpo] unless stub[:perform_hpo].nil?
        data['TrainingParameters'] = Stubs::TrainingParameters.stub(stub[:training_parameters]) unless stub[:training_parameters].nil?
        data['EvaluationParameters'] = Stubs::EvaluationParameters.stub(stub[:evaluation_parameters]) unless stub[:evaluation_parameters].nil?
        data['HPOConfig'] = Stubs::HyperParameterTuningJobConfig.stub(stub[:hpo_config]) unless stub[:hpo_config].nil?
        data['InputDataConfig'] = Stubs::InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['FeaturizationConfig'] = Stubs::FeaturizationConfig.stub(stub[:featurization_config]) unless stub[:featurization_config].nil?
        data['EncryptionConfig'] = Stubs::EncryptionConfig.stub(stub[:encryption_config]) unless stub[:encryption_config].nil?
        data['PredictorExecutionDetails'] = Stubs::PredictorExecutionDetails.stub(stub[:predictor_execution_details]) unless stub[:predictor_execution_details].nil?
        data['EstimatedTimeRemainingInMinutes'] = stub[:estimated_time_remaining_in_minutes] unless stub[:estimated_time_remaining_in_minutes].nil?
        data['IsAutoPredictor'] = stub[:is_auto_predictor] unless stub[:is_auto_predictor].nil?
        data['DatasetImportJobArns'] = Stubs::ArnList.stub(stub[:dataset_import_job_arns]) unless stub[:dataset_import_job_arns].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data['OptimizationMetric'] = stub[:optimization_metric] unless stub[:optimization_metric].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for PredictorExecutionDetails
    class PredictorExecutionDetails
      def self.default(visited=[])
        return nil if visited.include?('PredictorExecutionDetails')
        visited = visited + ['PredictorExecutionDetails']
        {
          predictor_executions: Stubs::PredictorExecutions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PredictorExecutionDetails.new
        data = {}
        data['PredictorExecutions'] = Stubs::PredictorExecutions.stub(stub[:predictor_executions]) unless stub[:predictor_executions].nil?
        data
      end
    end

    # List Stubber for PredictorExecutions
    class PredictorExecutions
      def self.default(visited=[])
        return nil if visited.include?('PredictorExecutions')
        visited = visited + ['PredictorExecutions']
        [
          Stubs::PredictorExecution.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PredictorExecution.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PredictorExecution
    class PredictorExecution
      def self.default(visited=[])
        return nil if visited.include?('PredictorExecution')
        visited = visited + ['PredictorExecution']
        {
          algorithm_arn: 'algorithm_arn',
          test_windows: Stubs::TestWindowDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PredictorExecution.new
        data = {}
        data['AlgorithmArn'] = stub[:algorithm_arn] unless stub[:algorithm_arn].nil?
        data['TestWindows'] = Stubs::TestWindowDetails.stub(stub[:test_windows]) unless stub[:test_windows].nil?
        data
      end
    end

    # List Stubber for TestWindowDetails
    class TestWindowDetails
      def self.default(visited=[])
        return nil if visited.include?('TestWindowDetails')
        visited = visited + ['TestWindowDetails']
        [
          Stubs::TestWindowSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TestWindowSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TestWindowSummary
    class TestWindowSummary
      def self.default(visited=[])
        return nil if visited.include?('TestWindowSummary')
        visited = visited + ['TestWindowSummary']
        {
          test_window_start: Time.now,
          test_window_end: Time.now,
          status: 'status',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::TestWindowSummary.new
        data = {}
        data['TestWindowStart'] = Hearth::TimeHelper.to_epoch_seconds(stub[:test_window_start]).to_i unless stub[:test_window_start].nil?
        data['TestWindowEnd'] = Hearth::TimeHelper.to_epoch_seconds(stub[:test_window_end]).to_i unless stub[:test_window_end].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Structure Stubber for FeaturizationConfig
    class FeaturizationConfig
      def self.default(visited=[])
        return nil if visited.include?('FeaturizationConfig')
        visited = visited + ['FeaturizationConfig']
        {
          forecast_frequency: 'forecast_frequency',
          forecast_dimensions: Stubs::ForecastDimensions.default(visited),
          featurizations: Stubs::Featurizations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FeaturizationConfig.new
        data = {}
        data['ForecastFrequency'] = stub[:forecast_frequency] unless stub[:forecast_frequency].nil?
        data['ForecastDimensions'] = Stubs::ForecastDimensions.stub(stub[:forecast_dimensions]) unless stub[:forecast_dimensions].nil?
        data['Featurizations'] = Stubs::Featurizations.stub(stub[:featurizations]) unless stub[:featurizations].nil?
        data
      end
    end

    # List Stubber for Featurizations
    class Featurizations
      def self.default(visited=[])
        return nil if visited.include?('Featurizations')
        visited = visited + ['Featurizations']
        [
          Stubs::Featurization.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Featurization.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Featurization
    class Featurization
      def self.default(visited=[])
        return nil if visited.include?('Featurization')
        visited = visited + ['Featurization']
        {
          attribute_name: 'attribute_name',
          featurization_pipeline: Stubs::FeaturizationPipeline.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Featurization.new
        data = {}
        data['AttributeName'] = stub[:attribute_name] unless stub[:attribute_name].nil?
        data['FeaturizationPipeline'] = Stubs::FeaturizationPipeline.stub(stub[:featurization_pipeline]) unless stub[:featurization_pipeline].nil?
        data
      end
    end

    # List Stubber for FeaturizationPipeline
    class FeaturizationPipeline
      def self.default(visited=[])
        return nil if visited.include?('FeaturizationPipeline')
        visited = visited + ['FeaturizationPipeline']
        [
          Stubs::FeaturizationMethod.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FeaturizationMethod.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FeaturizationMethod
    class FeaturizationMethod
      def self.default(visited=[])
        return nil if visited.include?('FeaturizationMethod')
        visited = visited + ['FeaturizationMethod']
        {
          featurization_method_name: 'featurization_method_name',
          featurization_method_parameters: Stubs::FeaturizationMethodParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FeaturizationMethod.new
        data = {}
        data['FeaturizationMethodName'] = stub[:featurization_method_name] unless stub[:featurization_method_name].nil?
        data['FeaturizationMethodParameters'] = Stubs::FeaturizationMethodParameters.stub(stub[:featurization_method_parameters]) unless stub[:featurization_method_parameters].nil?
        data
      end
    end

    # Map Stubber for FeaturizationMethodParameters
    class FeaturizationMethodParameters
      def self.default(visited=[])
        return nil if visited.include?('FeaturizationMethodParameters')
        visited = visited + ['FeaturizationMethodParameters']
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

    # Structure Stubber for InputDataConfig
    class InputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('InputDataConfig')
        visited = visited + ['InputDataConfig']
        {
          dataset_group_arn: 'dataset_group_arn',
          supplementary_features: Stubs::SupplementaryFeatures.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDataConfig.new
        data = {}
        data['DatasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['SupplementaryFeatures'] = Stubs::SupplementaryFeatures.stub(stub[:supplementary_features]) unless stub[:supplementary_features].nil?
        data
      end
    end

    # List Stubber for SupplementaryFeatures
    class SupplementaryFeatures
      def self.default(visited=[])
        return nil if visited.include?('SupplementaryFeatures')
        visited = visited + ['SupplementaryFeatures']
        [
          Stubs::SupplementaryFeature.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SupplementaryFeature.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SupplementaryFeature
    class SupplementaryFeature
      def self.default(visited=[])
        return nil if visited.include?('SupplementaryFeature')
        visited = visited + ['SupplementaryFeature']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SupplementaryFeature.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for HyperParameterTuningJobConfig
    class HyperParameterTuningJobConfig
      def self.default(visited=[])
        return nil if visited.include?('HyperParameterTuningJobConfig')
        visited = visited + ['HyperParameterTuningJobConfig']
        {
          parameter_ranges: Stubs::ParameterRanges.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HyperParameterTuningJobConfig.new
        data = {}
        data['ParameterRanges'] = Stubs::ParameterRanges.stub(stub[:parameter_ranges]) unless stub[:parameter_ranges].nil?
        data
      end
    end

    # Structure Stubber for ParameterRanges
    class ParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('ParameterRanges')
        visited = visited + ['ParameterRanges']
        {
          categorical_parameter_ranges: Stubs::CategoricalParameterRanges.default(visited),
          continuous_parameter_ranges: Stubs::ContinuousParameterRanges.default(visited),
          integer_parameter_ranges: Stubs::IntegerParameterRanges.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterRanges.new
        data = {}
        data['CategoricalParameterRanges'] = Stubs::CategoricalParameterRanges.stub(stub[:categorical_parameter_ranges]) unless stub[:categorical_parameter_ranges].nil?
        data['ContinuousParameterRanges'] = Stubs::ContinuousParameterRanges.stub(stub[:continuous_parameter_ranges]) unless stub[:continuous_parameter_ranges].nil?
        data['IntegerParameterRanges'] = Stubs::IntegerParameterRanges.stub(stub[:integer_parameter_ranges]) unless stub[:integer_parameter_ranges].nil?
        data
      end
    end

    # List Stubber for IntegerParameterRanges
    class IntegerParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('IntegerParameterRanges')
        visited = visited + ['IntegerParameterRanges']
        [
          Stubs::IntegerParameterRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IntegerParameterRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IntegerParameterRange
    class IntegerParameterRange
      def self.default(visited=[])
        return nil if visited.include?('IntegerParameterRange')
        visited = visited + ['IntegerParameterRange']
        {
          name: 'name',
          max_value: 1,
          min_value: 1,
          scaling_type: 'scaling_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::IntegerParameterRange.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['MaxValue'] = stub[:max_value] unless stub[:max_value].nil?
        data['MinValue'] = stub[:min_value] unless stub[:min_value].nil?
        data['ScalingType'] = stub[:scaling_type] unless stub[:scaling_type].nil?
        data
      end
    end

    # List Stubber for ContinuousParameterRanges
    class ContinuousParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('ContinuousParameterRanges')
        visited = visited + ['ContinuousParameterRanges']
        [
          Stubs::ContinuousParameterRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ContinuousParameterRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ContinuousParameterRange
    class ContinuousParameterRange
      def self.default(visited=[])
        return nil if visited.include?('ContinuousParameterRange')
        visited = visited + ['ContinuousParameterRange']
        {
          name: 'name',
          max_value: 1.0,
          min_value: 1.0,
          scaling_type: 'scaling_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContinuousParameterRange.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['MaxValue'] = Hearth::NumberHelper.serialize(stub[:max_value])
        data['MinValue'] = Hearth::NumberHelper.serialize(stub[:min_value])
        data['ScalingType'] = stub[:scaling_type] unless stub[:scaling_type].nil?
        data
      end
    end

    # List Stubber for CategoricalParameterRanges
    class CategoricalParameterRanges
      def self.default(visited=[])
        return nil if visited.include?('CategoricalParameterRanges')
        visited = visited + ['CategoricalParameterRanges']
        [
          Stubs::CategoricalParameterRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CategoricalParameterRange.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CategoricalParameterRange
    class CategoricalParameterRange
      def self.default(visited=[])
        return nil if visited.include?('CategoricalParameterRange')
        visited = visited + ['CategoricalParameterRange']
        {
          name: 'name',
          values: Stubs::Values.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CategoricalParameterRange.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Values'] = Stubs::Values.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # Structure Stubber for EvaluationParameters
    class EvaluationParameters
      def self.default(visited=[])
        return nil if visited.include?('EvaluationParameters')
        visited = visited + ['EvaluationParameters']
        {
          number_of_backtest_windows: 1,
          back_test_window_offset: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EvaluationParameters.new
        data = {}
        data['NumberOfBacktestWindows'] = stub[:number_of_backtest_windows] unless stub[:number_of_backtest_windows].nil?
        data['BackTestWindowOffset'] = stub[:back_test_window_offset] unless stub[:back_test_window_offset].nil?
        data
      end
    end

    # Map Stubber for TrainingParameters
    class TrainingParameters
      def self.default(visited=[])
        return nil if visited.include?('TrainingParameters')
        visited = visited + ['TrainingParameters']
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

    # Operation Stubber for DescribePredictorBacktestExportJob
    class DescribePredictorBacktestExportJob
      def self.default(visited=[])
        {
          predictor_backtest_export_job_arn: 'predictor_backtest_export_job_arn',
          predictor_backtest_export_job_name: 'predictor_backtest_export_job_name',
          predictor_arn: 'predictor_arn',
          destination: Stubs::DataDestination.default(visited),
          message: 'message',
          status: 'status',
          creation_time: Time.now,
          last_modification_time: Time.now,
          format: 'format',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PredictorBacktestExportJobArn'] = stub[:predictor_backtest_export_job_arn] unless stub[:predictor_backtest_export_job_arn].nil?
        data['PredictorBacktestExportJobName'] = stub[:predictor_backtest_export_job_name] unless stub[:predictor_backtest_export_job_name].nil?
        data['PredictorArn'] = stub[:predictor_arn] unless stub[:predictor_arn].nil?
        data['Destination'] = Stubs::DataDestination.stub(stub[:destination]) unless stub[:destination].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAccuracyMetrics
    class GetAccuracyMetrics
      def self.default(visited=[])
        {
          predictor_evaluation_results: Stubs::PredictorEvaluationResults.default(visited),
          is_auto_predictor: false,
          auto_ml_override_strategy: 'auto_ml_override_strategy',
          optimization_metric: 'optimization_metric',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PredictorEvaluationResults'] = Stubs::PredictorEvaluationResults.stub(stub[:predictor_evaluation_results]) unless stub[:predictor_evaluation_results].nil?
        data['IsAutoPredictor'] = stub[:is_auto_predictor] unless stub[:is_auto_predictor].nil?
        data['AutoMLOverrideStrategy'] = stub[:auto_ml_override_strategy] unless stub[:auto_ml_override_strategy].nil?
        data['OptimizationMetric'] = stub[:optimization_metric] unless stub[:optimization_metric].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PredictorEvaluationResults
    class PredictorEvaluationResults
      def self.default(visited=[])
        return nil if visited.include?('PredictorEvaluationResults')
        visited = visited + ['PredictorEvaluationResults']
        [
          Stubs::EvaluationResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EvaluationResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EvaluationResult
    class EvaluationResult
      def self.default(visited=[])
        return nil if visited.include?('EvaluationResult')
        visited = visited + ['EvaluationResult']
        {
          algorithm_arn: 'algorithm_arn',
          test_windows: Stubs::TestWindows.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EvaluationResult.new
        data = {}
        data['AlgorithmArn'] = stub[:algorithm_arn] unless stub[:algorithm_arn].nil?
        data['TestWindows'] = Stubs::TestWindows.stub(stub[:test_windows]) unless stub[:test_windows].nil?
        data
      end
    end

    # List Stubber for TestWindows
    class TestWindows
      def self.default(visited=[])
        return nil if visited.include?('TestWindows')
        visited = visited + ['TestWindows']
        [
          Stubs::WindowSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WindowSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WindowSummary
    class WindowSummary
      def self.default(visited=[])
        return nil if visited.include?('WindowSummary')
        visited = visited + ['WindowSummary']
        {
          test_window_start: Time.now,
          test_window_end: Time.now,
          item_count: 1,
          evaluation_type: 'evaluation_type',
          metrics: Stubs::Metrics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WindowSummary.new
        data = {}
        data['TestWindowStart'] = Hearth::TimeHelper.to_epoch_seconds(stub[:test_window_start]).to_i unless stub[:test_window_start].nil?
        data['TestWindowEnd'] = Hearth::TimeHelper.to_epoch_seconds(stub[:test_window_end]).to_i unless stub[:test_window_end].nil?
        data['ItemCount'] = stub[:item_count] unless stub[:item_count].nil?
        data['EvaluationType'] = stub[:evaluation_type] unless stub[:evaluation_type].nil?
        data['Metrics'] = Stubs::Metrics.stub(stub[:metrics]) unless stub[:metrics].nil?
        data
      end
    end

    # Structure Stubber for Metrics
    class Metrics
      def self.default(visited=[])
        return nil if visited.include?('Metrics')
        visited = visited + ['Metrics']
        {
          rmse: 1.0,
          weighted_quantile_losses: Stubs::WeightedQuantileLosses.default(visited),
          error_metrics: Stubs::ErrorMetrics.default(visited),
          average_weighted_quantile_loss: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Metrics.new
        data = {}
        data['RMSE'] = Hearth::NumberHelper.serialize(stub[:rmse])
        data['WeightedQuantileLosses'] = Stubs::WeightedQuantileLosses.stub(stub[:weighted_quantile_losses]) unless stub[:weighted_quantile_losses].nil?
        data['ErrorMetrics'] = Stubs::ErrorMetrics.stub(stub[:error_metrics]) unless stub[:error_metrics].nil?
        data['AverageWeightedQuantileLoss'] = Hearth::NumberHelper.serialize(stub[:average_weighted_quantile_loss])
        data
      end
    end

    # List Stubber for ErrorMetrics
    class ErrorMetrics
      def self.default(visited=[])
        return nil if visited.include?('ErrorMetrics')
        visited = visited + ['ErrorMetrics']
        [
          Stubs::ErrorMetric.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ErrorMetric.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ErrorMetric
    class ErrorMetric
      def self.default(visited=[])
        return nil if visited.include?('ErrorMetric')
        visited = visited + ['ErrorMetric']
        {
          forecast_type: 'forecast_type',
          wape: 1.0,
          rmse: 1.0,
          mase: 1.0,
          mape: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorMetric.new
        data = {}
        data['ForecastType'] = stub[:forecast_type] unless stub[:forecast_type].nil?
        data['WAPE'] = Hearth::NumberHelper.serialize(stub[:wape])
        data['RMSE'] = Hearth::NumberHelper.serialize(stub[:rmse])
        data['MASE'] = Hearth::NumberHelper.serialize(stub[:mase])
        data['MAPE'] = Hearth::NumberHelper.serialize(stub[:mape])
        data
      end
    end

    # List Stubber for WeightedQuantileLosses
    class WeightedQuantileLosses
      def self.default(visited=[])
        return nil if visited.include?('WeightedQuantileLosses')
        visited = visited + ['WeightedQuantileLosses']
        [
          Stubs::WeightedQuantileLoss.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WeightedQuantileLoss.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WeightedQuantileLoss
    class WeightedQuantileLoss
      def self.default(visited=[])
        return nil if visited.include?('WeightedQuantileLoss')
        visited = visited + ['WeightedQuantileLoss']
        {
          quantile: 1.0,
          loss_value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::WeightedQuantileLoss.new
        data = {}
        data['Quantile'] = Hearth::NumberHelper.serialize(stub[:quantile])
        data['LossValue'] = Hearth::NumberHelper.serialize(stub[:loss_value])
        data
      end
    end

    # Operation Stubber for ListDatasetGroups
    class ListDatasetGroups
      def self.default(visited=[])
        {
          dataset_groups: Stubs::DatasetGroups.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatasetGroups'] = Stubs::DatasetGroups.stub(stub[:dataset_groups]) unless stub[:dataset_groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DatasetGroups
    class DatasetGroups
      def self.default(visited=[])
        return nil if visited.include?('DatasetGroups')
        visited = visited + ['DatasetGroups']
        [
          Stubs::DatasetGroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatasetGroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetGroupSummary
    class DatasetGroupSummary
      def self.default(visited=[])
        return nil if visited.include?('DatasetGroupSummary')
        visited = visited + ['DatasetGroupSummary']
        {
          dataset_group_arn: 'dataset_group_arn',
          dataset_group_name: 'dataset_group_name',
          creation_time: Time.now,
          last_modification_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetGroupSummary.new
        data = {}
        data['DatasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['DatasetGroupName'] = stub[:dataset_group_name] unless stub[:dataset_group_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data
      end
    end

    # Operation Stubber for ListDatasetImportJobs
    class ListDatasetImportJobs
      def self.default(visited=[])
        {
          dataset_import_jobs: Stubs::DatasetImportJobs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DatasetImportJobs'] = Stubs::DatasetImportJobs.stub(stub[:dataset_import_jobs]) unless stub[:dataset_import_jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DatasetImportJobs
    class DatasetImportJobs
      def self.default(visited=[])
        return nil if visited.include?('DatasetImportJobs')
        visited = visited + ['DatasetImportJobs']
        [
          Stubs::DatasetImportJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatasetImportJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetImportJobSummary
    class DatasetImportJobSummary
      def self.default(visited=[])
        return nil if visited.include?('DatasetImportJobSummary')
        visited = visited + ['DatasetImportJobSummary']
        {
          dataset_import_job_arn: 'dataset_import_job_arn',
          dataset_import_job_name: 'dataset_import_job_name',
          data_source: Stubs::DataSource.default(visited),
          status: 'status',
          message: 'message',
          creation_time: Time.now,
          last_modification_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetImportJobSummary.new
        data = {}
        data['DatasetImportJobArn'] = stub[:dataset_import_job_arn] unless stub[:dataset_import_job_arn].nil?
        data['DatasetImportJobName'] = stub[:dataset_import_job_name] unless stub[:dataset_import_job_name].nil?
        data['DataSource'] = Stubs::DataSource.stub(stub[:data_source]) unless stub[:data_source].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data
      end
    end

    # Operation Stubber for ListDatasets
    class ListDatasets
      def self.default(visited=[])
        {
          datasets: Stubs::Datasets.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Datasets'] = Stubs::Datasets.stub(stub[:datasets]) unless stub[:datasets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Datasets
    class Datasets
      def self.default(visited=[])
        return nil if visited.include?('Datasets')
        visited = visited + ['Datasets']
        [
          Stubs::DatasetSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DatasetSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DatasetSummary
    class DatasetSummary
      def self.default(visited=[])
        return nil if visited.include?('DatasetSummary')
        visited = visited + ['DatasetSummary']
        {
          dataset_arn: 'dataset_arn',
          dataset_name: 'dataset_name',
          dataset_type: 'dataset_type',
          domain: 'domain',
          creation_time: Time.now,
          last_modification_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DatasetSummary.new
        data = {}
        data['DatasetArn'] = stub[:dataset_arn] unless stub[:dataset_arn].nil?
        data['DatasetName'] = stub[:dataset_name] unless stub[:dataset_name].nil?
        data['DatasetType'] = stub[:dataset_type] unless stub[:dataset_type].nil?
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data
      end
    end

    # Operation Stubber for ListExplainabilities
    class ListExplainabilities
      def self.default(visited=[])
        {
          explainabilities: Stubs::Explainabilities.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Explainabilities'] = Stubs::Explainabilities.stub(stub[:explainabilities]) unless stub[:explainabilities].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Explainabilities
    class Explainabilities
      def self.default(visited=[])
        return nil if visited.include?('Explainabilities')
        visited = visited + ['Explainabilities']
        [
          Stubs::ExplainabilitySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExplainabilitySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExplainabilitySummary
    class ExplainabilitySummary
      def self.default(visited=[])
        return nil if visited.include?('ExplainabilitySummary')
        visited = visited + ['ExplainabilitySummary']
        {
          explainability_arn: 'explainability_arn',
          explainability_name: 'explainability_name',
          resource_arn: 'resource_arn',
          explainability_config: Stubs::ExplainabilityConfig.default(visited),
          status: 'status',
          message: 'message',
          creation_time: Time.now,
          last_modification_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExplainabilitySummary.new
        data = {}
        data['ExplainabilityArn'] = stub[:explainability_arn] unless stub[:explainability_arn].nil?
        data['ExplainabilityName'] = stub[:explainability_name] unless stub[:explainability_name].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['ExplainabilityConfig'] = Stubs::ExplainabilityConfig.stub(stub[:explainability_config]) unless stub[:explainability_config].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data
      end
    end

    # Operation Stubber for ListExplainabilityExports
    class ListExplainabilityExports
      def self.default(visited=[])
        {
          explainability_exports: Stubs::ExplainabilityExports.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExplainabilityExports'] = Stubs::ExplainabilityExports.stub(stub[:explainability_exports]) unless stub[:explainability_exports].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ExplainabilityExports
    class ExplainabilityExports
      def self.default(visited=[])
        return nil if visited.include?('ExplainabilityExports')
        visited = visited + ['ExplainabilityExports']
        [
          Stubs::ExplainabilityExportSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ExplainabilityExportSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExplainabilityExportSummary
    class ExplainabilityExportSummary
      def self.default(visited=[])
        return nil if visited.include?('ExplainabilityExportSummary')
        visited = visited + ['ExplainabilityExportSummary']
        {
          explainability_export_arn: 'explainability_export_arn',
          explainability_export_name: 'explainability_export_name',
          destination: Stubs::DataDestination.default(visited),
          status: 'status',
          message: 'message',
          creation_time: Time.now,
          last_modification_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExplainabilityExportSummary.new
        data = {}
        data['ExplainabilityExportArn'] = stub[:explainability_export_arn] unless stub[:explainability_export_arn].nil?
        data['ExplainabilityExportName'] = stub[:explainability_export_name] unless stub[:explainability_export_name].nil?
        data['Destination'] = Stubs::DataDestination.stub(stub[:destination]) unless stub[:destination].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data
      end
    end

    # Operation Stubber for ListForecastExportJobs
    class ListForecastExportJobs
      def self.default(visited=[])
        {
          forecast_export_jobs: Stubs::ForecastExportJobs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ForecastExportJobs'] = Stubs::ForecastExportJobs.stub(stub[:forecast_export_jobs]) unless stub[:forecast_export_jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ForecastExportJobs
    class ForecastExportJobs
      def self.default(visited=[])
        return nil if visited.include?('ForecastExportJobs')
        visited = visited + ['ForecastExportJobs']
        [
          Stubs::ForecastExportJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ForecastExportJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ForecastExportJobSummary
    class ForecastExportJobSummary
      def self.default(visited=[])
        return nil if visited.include?('ForecastExportJobSummary')
        visited = visited + ['ForecastExportJobSummary']
        {
          forecast_export_job_arn: 'forecast_export_job_arn',
          forecast_export_job_name: 'forecast_export_job_name',
          destination: Stubs::DataDestination.default(visited),
          status: 'status',
          message: 'message',
          creation_time: Time.now,
          last_modification_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ForecastExportJobSummary.new
        data = {}
        data['ForecastExportJobArn'] = stub[:forecast_export_job_arn] unless stub[:forecast_export_job_arn].nil?
        data['ForecastExportJobName'] = stub[:forecast_export_job_name] unless stub[:forecast_export_job_name].nil?
        data['Destination'] = Stubs::DataDestination.stub(stub[:destination]) unless stub[:destination].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data
      end
    end

    # Operation Stubber for ListForecasts
    class ListForecasts
      def self.default(visited=[])
        {
          forecasts: Stubs::Forecasts.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Forecasts'] = Stubs::Forecasts.stub(stub[:forecasts]) unless stub[:forecasts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Forecasts
    class Forecasts
      def self.default(visited=[])
        return nil if visited.include?('Forecasts')
        visited = visited + ['Forecasts']
        [
          Stubs::ForecastSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ForecastSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ForecastSummary
    class ForecastSummary
      def self.default(visited=[])
        return nil if visited.include?('ForecastSummary')
        visited = visited + ['ForecastSummary']
        {
          forecast_arn: 'forecast_arn',
          forecast_name: 'forecast_name',
          predictor_arn: 'predictor_arn',
          created_using_auto_predictor: false,
          dataset_group_arn: 'dataset_group_arn',
          status: 'status',
          message: 'message',
          creation_time: Time.now,
          last_modification_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ForecastSummary.new
        data = {}
        data['ForecastArn'] = stub[:forecast_arn] unless stub[:forecast_arn].nil?
        data['ForecastName'] = stub[:forecast_name] unless stub[:forecast_name].nil?
        data['PredictorArn'] = stub[:predictor_arn] unless stub[:predictor_arn].nil?
        data['CreatedUsingAutoPredictor'] = stub[:created_using_auto_predictor] unless stub[:created_using_auto_predictor].nil?
        data['DatasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data
      end
    end

    # Operation Stubber for ListMonitorEvaluations
    class ListMonitorEvaluations
      def self.default(visited=[])
        {
          next_token: 'next_token',
          predictor_monitor_evaluations: Stubs::PredictorMonitorEvaluations.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['PredictorMonitorEvaluations'] = Stubs::PredictorMonitorEvaluations.stub(stub[:predictor_monitor_evaluations]) unless stub[:predictor_monitor_evaluations].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PredictorMonitorEvaluations
    class PredictorMonitorEvaluations
      def self.default(visited=[])
        return nil if visited.include?('PredictorMonitorEvaluations')
        visited = visited + ['PredictorMonitorEvaluations']
        [
          Stubs::PredictorMonitorEvaluation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PredictorMonitorEvaluation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PredictorMonitorEvaluation
    class PredictorMonitorEvaluation
      def self.default(visited=[])
        return nil if visited.include?('PredictorMonitorEvaluation')
        visited = visited + ['PredictorMonitorEvaluation']
        {
          resource_arn: 'resource_arn',
          monitor_arn: 'monitor_arn',
          evaluation_time: Time.now,
          evaluation_state: 'evaluation_state',
          window_start_datetime: Time.now,
          window_end_datetime: Time.now,
          predictor_event: Stubs::PredictorEvent.default(visited),
          monitor_data_source: Stubs::MonitorDataSource.default(visited),
          metric_results: Stubs::MetricResults.default(visited),
          num_items_evaluated: 1,
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::PredictorMonitorEvaluation.new
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['MonitorArn'] = stub[:monitor_arn] unless stub[:monitor_arn].nil?
        data['EvaluationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:evaluation_time]).to_i unless stub[:evaluation_time].nil?
        data['EvaluationState'] = stub[:evaluation_state] unless stub[:evaluation_state].nil?
        data['WindowStartDatetime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:window_start_datetime]).to_i unless stub[:window_start_datetime].nil?
        data['WindowEndDatetime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:window_end_datetime]).to_i unless stub[:window_end_datetime].nil?
        data['PredictorEvent'] = Stubs::PredictorEvent.stub(stub[:predictor_event]) unless stub[:predictor_event].nil?
        data['MonitorDataSource'] = Stubs::MonitorDataSource.stub(stub[:monitor_data_source]) unless stub[:monitor_data_source].nil?
        data['MetricResults'] = Stubs::MetricResults.stub(stub[:metric_results]) unless stub[:metric_results].nil?
        data['NumItemsEvaluated'] = stub[:num_items_evaluated] unless stub[:num_items_evaluated].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # List Stubber for MetricResults
    class MetricResults
      def self.default(visited=[])
        return nil if visited.include?('MetricResults')
        visited = visited + ['MetricResults']
        [
          Stubs::MetricResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MetricResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricResult
    class MetricResult
      def self.default(visited=[])
        return nil if visited.include?('MetricResult')
        visited = visited + ['MetricResult']
        {
          metric_name: 'metric_name',
          metric_value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricResult.new
        data = {}
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['MetricValue'] = Hearth::NumberHelper.serialize(stub[:metric_value])
        data
      end
    end

    # Structure Stubber for MonitorDataSource
    class MonitorDataSource
      def self.default(visited=[])
        return nil if visited.include?('MonitorDataSource')
        visited = visited + ['MonitorDataSource']
        {
          dataset_import_job_arn: 'dataset_import_job_arn',
          forecast_arn: 'forecast_arn',
          predictor_arn: 'predictor_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitorDataSource.new
        data = {}
        data['DatasetImportJobArn'] = stub[:dataset_import_job_arn] unless stub[:dataset_import_job_arn].nil?
        data['ForecastArn'] = stub[:forecast_arn] unless stub[:forecast_arn].nil?
        data['PredictorArn'] = stub[:predictor_arn] unless stub[:predictor_arn].nil?
        data
      end
    end

    # Structure Stubber for PredictorEvent
    class PredictorEvent
      def self.default(visited=[])
        return nil if visited.include?('PredictorEvent')
        visited = visited + ['PredictorEvent']
        {
          detail: 'detail',
          datetime: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PredictorEvent.new
        data = {}
        data['Detail'] = stub[:detail] unless stub[:detail].nil?
        data['Datetime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:datetime]).to_i unless stub[:datetime].nil?
        data
      end
    end

    # Operation Stubber for ListMonitors
    class ListMonitors
      def self.default(visited=[])
        {
          monitors: Stubs::Monitors.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Monitors'] = Stubs::Monitors.stub(stub[:monitors]) unless stub[:monitors].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Monitors
    class Monitors
      def self.default(visited=[])
        return nil if visited.include?('Monitors')
        visited = visited + ['Monitors']
        [
          Stubs::MonitorSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MonitorSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MonitorSummary
    class MonitorSummary
      def self.default(visited=[])
        return nil if visited.include?('MonitorSummary')
        visited = visited + ['MonitorSummary']
        {
          monitor_arn: 'monitor_arn',
          monitor_name: 'monitor_name',
          resource_arn: 'resource_arn',
          status: 'status',
          creation_time: Time.now,
          last_modification_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::MonitorSummary.new
        data = {}
        data['MonitorArn'] = stub[:monitor_arn] unless stub[:monitor_arn].nil?
        data['MonitorName'] = stub[:monitor_name] unless stub[:monitor_name].nil?
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data
      end
    end

    # Operation Stubber for ListPredictorBacktestExportJobs
    class ListPredictorBacktestExportJobs
      def self.default(visited=[])
        {
          predictor_backtest_export_jobs: Stubs::PredictorBacktestExportJobs.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PredictorBacktestExportJobs'] = Stubs::PredictorBacktestExportJobs.stub(stub[:predictor_backtest_export_jobs]) unless stub[:predictor_backtest_export_jobs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PredictorBacktestExportJobs
    class PredictorBacktestExportJobs
      def self.default(visited=[])
        return nil if visited.include?('PredictorBacktestExportJobs')
        visited = visited + ['PredictorBacktestExportJobs']
        [
          Stubs::PredictorBacktestExportJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PredictorBacktestExportJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PredictorBacktestExportJobSummary
    class PredictorBacktestExportJobSummary
      def self.default(visited=[])
        return nil if visited.include?('PredictorBacktestExportJobSummary')
        visited = visited + ['PredictorBacktestExportJobSummary']
        {
          predictor_backtest_export_job_arn: 'predictor_backtest_export_job_arn',
          predictor_backtest_export_job_name: 'predictor_backtest_export_job_name',
          destination: Stubs::DataDestination.default(visited),
          status: 'status',
          message: 'message',
          creation_time: Time.now,
          last_modification_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PredictorBacktestExportJobSummary.new
        data = {}
        data['PredictorBacktestExportJobArn'] = stub[:predictor_backtest_export_job_arn] unless stub[:predictor_backtest_export_job_arn].nil?
        data['PredictorBacktestExportJobName'] = stub[:predictor_backtest_export_job_name] unless stub[:predictor_backtest_export_job_name].nil?
        data['Destination'] = Stubs::DataDestination.stub(stub[:destination]) unless stub[:destination].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data
      end
    end

    # Operation Stubber for ListPredictors
    class ListPredictors
      def self.default(visited=[])
        {
          predictors: Stubs::Predictors.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Predictors'] = Stubs::Predictors.stub(stub[:predictors]) unless stub[:predictors].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Predictors
    class Predictors
      def self.default(visited=[])
        return nil if visited.include?('Predictors')
        visited = visited + ['Predictors']
        [
          Stubs::PredictorSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PredictorSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PredictorSummary
    class PredictorSummary
      def self.default(visited=[])
        return nil if visited.include?('PredictorSummary')
        visited = visited + ['PredictorSummary']
        {
          predictor_arn: 'predictor_arn',
          predictor_name: 'predictor_name',
          dataset_group_arn: 'dataset_group_arn',
          is_auto_predictor: false,
          reference_predictor_summary: Stubs::ReferencePredictorSummary.default(visited),
          status: 'status',
          message: 'message',
          creation_time: Time.now,
          last_modification_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PredictorSummary.new
        data = {}
        data['PredictorArn'] = stub[:predictor_arn] unless stub[:predictor_arn].nil?
        data['PredictorName'] = stub[:predictor_name] unless stub[:predictor_name].nil?
        data['DatasetGroupArn'] = stub[:dataset_group_arn] unless stub[:dataset_group_arn].nil?
        data['IsAutoPredictor'] = stub[:is_auto_predictor] unless stub[:is_auto_predictor].nil?
        data['ReferencePredictorSummary'] = Stubs::ReferencePredictorSummary.stub(stub[:reference_predictor_summary]) unless stub[:reference_predictor_summary].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modification_time]).to_i unless stub[:last_modification_time].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ResumeResource
    class ResumeResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopResource
    class StopResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDatasetGroup
    class UpdateDatasetGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
