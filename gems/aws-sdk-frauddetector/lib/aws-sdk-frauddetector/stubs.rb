# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::FraudDetector
  module Stubs

    # Operation Stubber for BatchCreateVariable
    class BatchCreateVariable
      def self.default(visited=[])
        {
          errors: BatchCreateVariableErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['errors'] = BatchCreateVariableErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchCreateVariableErrorList
    class BatchCreateVariableErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchCreateVariableErrorList')
        visited = visited + ['BatchCreateVariableErrorList']
        [
          BatchCreateVariableError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchCreateVariableError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchCreateVariableError
    class BatchCreateVariableError
      def self.default(visited=[])
        return nil if visited.include?('BatchCreateVariableError')
        visited = visited + ['BatchCreateVariableError']
        {
          name: 'name',
          code: 1,
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchCreateVariableError.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for BatchGetVariable
    class BatchGetVariable
      def self.default(visited=[])
        {
          variables: VariableList.default(visited),
          errors: BatchGetVariableErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['variables'] = VariableList.stub(stub[:variables]) unless stub[:variables].nil?
        data['errors'] = BatchGetVariableErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchGetVariableErrorList
    class BatchGetVariableErrorList
      def self.default(visited=[])
        return nil if visited.include?('BatchGetVariableErrorList')
        visited = visited + ['BatchGetVariableErrorList']
        [
          BatchGetVariableError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetVariableError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetVariableError
    class BatchGetVariableError
      def self.default(visited=[])
        return nil if visited.include?('BatchGetVariableError')
        visited = visited + ['BatchGetVariableError']
        {
          name: 'name',
          code: 1,
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetVariableError.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # List Stubber for VariableList
    class VariableList
      def self.default(visited=[])
        return nil if visited.include?('VariableList')
        visited = visited + ['VariableList']
        [
          Variable.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Variable.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Variable
    class Variable
      def self.default(visited=[])
        return nil if visited.include?('Variable')
        visited = visited + ['Variable']
        {
          name: 'name',
          data_type: 'data_type',
          data_source: 'data_source',
          default_value: 'default_value',
          description: 'description',
          variable_type: 'variable_type',
          last_updated_time: 'last_updated_time',
          created_time: 'created_time',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Variable.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['dataType'] = stub[:data_type] unless stub[:data_type].nil?
        data['dataSource'] = stub[:data_source] unless stub[:data_source].nil?
        data['defaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['variableType'] = stub[:variable_type] unless stub[:variable_type].nil?
        data['lastUpdatedTime'] = stub[:last_updated_time] unless stub[:last_updated_time].nil?
        data['createdTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for CancelBatchImportJob
    class CancelBatchImportJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelBatchPredictionJob
    class CancelBatchPredictionJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateBatchImportJob
    class CreateBatchImportJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateBatchPredictionJob
    class CreateBatchPredictionJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDetectorVersion
    class CreateDetectorVersion
      def self.default(visited=[])
        {
          detector_id: 'detector_id',
          detector_version_id: 'detector_version_id',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['detectorId'] = stub[:detector_id] unless stub[:detector_id].nil?
        data['detectorVersionId'] = stub[:detector_version_id] unless stub[:detector_version_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateModel
    class CreateModel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateModelVersion
    class CreateModelVersion
      def self.default(visited=[])
        {
          model_id: 'model_id',
          model_type: 'model_type',
          model_version_number: 'model_version_number',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['modelId'] = stub[:model_id] unless stub[:model_id].nil?
        data['modelType'] = stub[:model_type] unless stub[:model_type].nil?
        data['modelVersionNumber'] = stub[:model_version_number] unless stub[:model_version_number].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateRule
    class CreateRule
      def self.default(visited=[])
        {
          rule: Rule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['rule'] = Rule.stub(stub[:rule]) unless stub[:rule].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Rule
    class Rule
      def self.default(visited=[])
        return nil if visited.include?('Rule')
        visited = visited + ['Rule']
        {
          detector_id: 'detector_id',
          rule_id: 'rule_id',
          rule_version: 'rule_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::Rule.new
        data = {}
        data['detectorId'] = stub[:detector_id] unless stub[:detector_id].nil?
        data['ruleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['ruleVersion'] = stub[:rule_version] unless stub[:rule_version].nil?
        data
      end
    end

    # Operation Stubber for CreateVariable
    class CreateVariable
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBatchImportJob
    class DeleteBatchImportJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBatchPredictionJob
    class DeleteBatchPredictionJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDetector
    class DeleteDetector
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDetectorVersion
    class DeleteDetectorVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEntityType
    class DeleteEntityType
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEvent
    class DeleteEvent
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEventType
    class DeleteEventType
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEventsByEventType
    class DeleteEventsByEventType
      def self.default(visited=[])
        {
          event_type_name: 'event_type_name',
          events_deletion_status: 'events_deletion_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['eventTypeName'] = stub[:event_type_name] unless stub[:event_type_name].nil?
        data['eventsDeletionStatus'] = stub[:events_deletion_status] unless stub[:events_deletion_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteExternalModel
    class DeleteExternalModel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLabel
    class DeleteLabel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteModel
    class DeleteModel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteModelVersion
    class DeleteModelVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteOutcome
    class DeleteOutcome
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRule
    class DeleteRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteVariable
    class DeleteVariable
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeDetector
    class DescribeDetector
      def self.default(visited=[])
        {
          detector_id: 'detector_id',
          detector_version_summaries: DetectorVersionSummaryList.default(visited),
          next_token: 'next_token',
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['detectorId'] = stub[:detector_id] unless stub[:detector_id].nil?
        data['detectorVersionSummaries'] = DetectorVersionSummaryList.stub(stub[:detector_version_summaries]) unless stub[:detector_version_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DetectorVersionSummaryList
    class DetectorVersionSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DetectorVersionSummaryList')
        visited = visited + ['DetectorVersionSummaryList']
        [
          DetectorVersionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DetectorVersionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DetectorVersionSummary
    class DetectorVersionSummary
      def self.default(visited=[])
        return nil if visited.include?('DetectorVersionSummary')
        visited = visited + ['DetectorVersionSummary']
        {
          detector_version_id: 'detector_version_id',
          status: 'status',
          description: 'description',
          last_updated_time: 'last_updated_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::DetectorVersionSummary.new
        data = {}
        data['detectorVersionId'] = stub[:detector_version_id] unless stub[:detector_version_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['lastUpdatedTime'] = stub[:last_updated_time] unless stub[:last_updated_time].nil?
        data
      end
    end

    # Operation Stubber for DescribeModelVersions
    class DescribeModelVersions
      def self.default(visited=[])
        {
          model_version_details: ModelVersionDetailList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['modelVersionDetails'] = ModelVersionDetailList.stub(stub[:model_version_details]) unless stub[:model_version_details].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for modelVersionDetailList
    class ModelVersionDetailList
      def self.default(visited=[])
        return nil if visited.include?('ModelVersionDetailList')
        visited = visited + ['ModelVersionDetailList']
        [
          ModelVersionDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ModelVersionDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModelVersionDetail
    class ModelVersionDetail
      def self.default(visited=[])
        return nil if visited.include?('ModelVersionDetail')
        visited = visited + ['ModelVersionDetail']
        {
          model_id: 'model_id',
          model_type: 'model_type',
          model_version_number: 'model_version_number',
          status: 'status',
          training_data_source: 'training_data_source',
          training_data_schema: TrainingDataSchema.default(visited),
          external_events_detail: ExternalEventsDetail.default(visited),
          ingested_events_detail: IngestedEventsDetail.default(visited),
          training_result: TrainingResult.default(visited),
          last_updated_time: 'last_updated_time',
          created_time: 'created_time',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelVersionDetail.new
        data = {}
        data['modelId'] = stub[:model_id] unless stub[:model_id].nil?
        data['modelType'] = stub[:model_type] unless stub[:model_type].nil?
        data['modelVersionNumber'] = stub[:model_version_number] unless stub[:model_version_number].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['trainingDataSource'] = stub[:training_data_source] unless stub[:training_data_source].nil?
        data['trainingDataSchema'] = TrainingDataSchema.stub(stub[:training_data_schema]) unless stub[:training_data_schema].nil?
        data['externalEventsDetail'] = ExternalEventsDetail.stub(stub[:external_events_detail]) unless stub[:external_events_detail].nil?
        data['ingestedEventsDetail'] = IngestedEventsDetail.stub(stub[:ingested_events_detail]) unless stub[:ingested_events_detail].nil?
        data['trainingResult'] = TrainingResult.stub(stub[:training_result]) unless stub[:training_result].nil?
        data['lastUpdatedTime'] = stub[:last_updated_time] unless stub[:last_updated_time].nil?
        data['createdTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for TrainingResult
    class TrainingResult
      def self.default(visited=[])
        return nil if visited.include?('TrainingResult')
        visited = visited + ['TrainingResult']
        {
          data_validation_metrics: DataValidationMetrics.default(visited),
          training_metrics: TrainingMetrics.default(visited),
          variable_importance_metrics: VariableImportanceMetrics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrainingResult.new
        data = {}
        data['dataValidationMetrics'] = DataValidationMetrics.stub(stub[:data_validation_metrics]) unless stub[:data_validation_metrics].nil?
        data['trainingMetrics'] = TrainingMetrics.stub(stub[:training_metrics]) unless stub[:training_metrics].nil?
        data['variableImportanceMetrics'] = VariableImportanceMetrics.stub(stub[:variable_importance_metrics]) unless stub[:variable_importance_metrics].nil?
        data
      end
    end

    # Structure Stubber for VariableImportanceMetrics
    class VariableImportanceMetrics
      def self.default(visited=[])
        return nil if visited.include?('VariableImportanceMetrics')
        visited = visited + ['VariableImportanceMetrics']
        {
          log_odds_metrics: ListOfLogOddsMetrics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VariableImportanceMetrics.new
        data = {}
        data['logOddsMetrics'] = ListOfLogOddsMetrics.stub(stub[:log_odds_metrics]) unless stub[:log_odds_metrics].nil?
        data
      end
    end

    # List Stubber for ListOfLogOddsMetrics
    class ListOfLogOddsMetrics
      def self.default(visited=[])
        return nil if visited.include?('ListOfLogOddsMetrics')
        visited = visited + ['ListOfLogOddsMetrics']
        [
          LogOddsMetric.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LogOddsMetric.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LogOddsMetric
    class LogOddsMetric
      def self.default(visited=[])
        return nil if visited.include?('LogOddsMetric')
        visited = visited + ['LogOddsMetric']
        {
          variable_name: 'variable_name',
          variable_type: 'variable_type',
          variable_importance: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::LogOddsMetric.new
        data = {}
        data['variableName'] = stub[:variable_name] unless stub[:variable_name].nil?
        data['variableType'] = stub[:variable_type] unless stub[:variable_type].nil?
        data['variableImportance'] = Hearth::NumberHelper.serialize(stub[:variable_importance])
        data
      end
    end

    # Structure Stubber for TrainingMetrics
    class TrainingMetrics
      def self.default(visited=[])
        return nil if visited.include?('TrainingMetrics')
        visited = visited + ['TrainingMetrics']
        {
          auc: 1.0,
          metric_data_points: MetricDataPointsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrainingMetrics.new
        data = {}
        data['auc'] = Hearth::NumberHelper.serialize(stub[:auc])
        data['metricDataPoints'] = MetricDataPointsList.stub(stub[:metric_data_points]) unless stub[:metric_data_points].nil?
        data
      end
    end

    # List Stubber for metricDataPointsList
    class MetricDataPointsList
      def self.default(visited=[])
        return nil if visited.include?('MetricDataPointsList')
        visited = visited + ['MetricDataPointsList']
        [
          MetricDataPoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MetricDataPoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MetricDataPoint
    class MetricDataPoint
      def self.default(visited=[])
        return nil if visited.include?('MetricDataPoint')
        visited = visited + ['MetricDataPoint']
        {
          fpr: 1.0,
          precision: 1.0,
          tpr: 1.0,
          threshold: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricDataPoint.new
        data = {}
        data['fpr'] = Hearth::NumberHelper.serialize(stub[:fpr])
        data['precision'] = Hearth::NumberHelper.serialize(stub[:precision])
        data['tpr'] = Hearth::NumberHelper.serialize(stub[:tpr])
        data['threshold'] = Hearth::NumberHelper.serialize(stub[:threshold])
        data
      end
    end

    # Structure Stubber for DataValidationMetrics
    class DataValidationMetrics
      def self.default(visited=[])
        return nil if visited.include?('DataValidationMetrics')
        visited = visited + ['DataValidationMetrics']
        {
          file_level_messages: FileValidationMessageList.default(visited),
          field_level_messages: FieldValidationMessageList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataValidationMetrics.new
        data = {}
        data['fileLevelMessages'] = FileValidationMessageList.stub(stub[:file_level_messages]) unless stub[:file_level_messages].nil?
        data['fieldLevelMessages'] = FieldValidationMessageList.stub(stub[:field_level_messages]) unless stub[:field_level_messages].nil?
        data
      end
    end

    # List Stubber for fieldValidationMessageList
    class FieldValidationMessageList
      def self.default(visited=[])
        return nil if visited.include?('FieldValidationMessageList')
        visited = visited + ['FieldValidationMessageList']
        [
          FieldValidationMessage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FieldValidationMessage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FieldValidationMessage
    class FieldValidationMessage
      def self.default(visited=[])
        return nil if visited.include?('FieldValidationMessage')
        visited = visited + ['FieldValidationMessage']
        {
          field_name: 'field_name',
          identifier: 'identifier',
          title: 'title',
          content: 'content',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::FieldValidationMessage.new
        data = {}
        data['fieldName'] = stub[:field_name] unless stub[:field_name].nil?
        data['identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['title'] = stub[:title] unless stub[:title].nil?
        data['content'] = stub[:content] unless stub[:content].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for fileValidationMessageList
    class FileValidationMessageList
      def self.default(visited=[])
        return nil if visited.include?('FileValidationMessageList')
        visited = visited + ['FileValidationMessageList']
        [
          FileValidationMessage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FileValidationMessage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FileValidationMessage
    class FileValidationMessage
      def self.default(visited=[])
        return nil if visited.include?('FileValidationMessage')
        visited = visited + ['FileValidationMessage']
        {
          title: 'title',
          content: 'content',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::FileValidationMessage.new
        data = {}
        data['title'] = stub[:title] unless stub[:title].nil?
        data['content'] = stub[:content] unless stub[:content].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for IngestedEventsDetail
    class IngestedEventsDetail
      def self.default(visited=[])
        return nil if visited.include?('IngestedEventsDetail')
        visited = visited + ['IngestedEventsDetail']
        {
          ingested_events_time_window: IngestedEventsTimeWindow.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IngestedEventsDetail.new
        data = {}
        data['ingestedEventsTimeWindow'] = IngestedEventsTimeWindow.stub(stub[:ingested_events_time_window]) unless stub[:ingested_events_time_window].nil?
        data
      end
    end

    # Structure Stubber for IngestedEventsTimeWindow
    class IngestedEventsTimeWindow
      def self.default(visited=[])
        return nil if visited.include?('IngestedEventsTimeWindow')
        visited = visited + ['IngestedEventsTimeWindow']
        {
          start_time: 'start_time',
          end_time: 'end_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::IngestedEventsTimeWindow.new
        data = {}
        data['startTime'] = stub[:start_time] unless stub[:start_time].nil?
        data['endTime'] = stub[:end_time] unless stub[:end_time].nil?
        data
      end
    end

    # Structure Stubber for ExternalEventsDetail
    class ExternalEventsDetail
      def self.default(visited=[])
        return nil if visited.include?('ExternalEventsDetail')
        visited = visited + ['ExternalEventsDetail']
        {
          data_location: 'data_location',
          data_access_role_arn: 'data_access_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExternalEventsDetail.new
        data = {}
        data['dataLocation'] = stub[:data_location] unless stub[:data_location].nil?
        data['dataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data
      end
    end

    # Structure Stubber for TrainingDataSchema
    class TrainingDataSchema
      def self.default(visited=[])
        return nil if visited.include?('TrainingDataSchema')
        visited = visited + ['TrainingDataSchema']
        {
          model_variables: ListOfStrings.default(visited),
          label_schema: LabelSchema.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrainingDataSchema.new
        data = {}
        data['modelVariables'] = ListOfStrings.stub(stub[:model_variables]) unless stub[:model_variables].nil?
        data['labelSchema'] = LabelSchema.stub(stub[:label_schema]) unless stub[:label_schema].nil?
        data
      end
    end

    # Structure Stubber for LabelSchema
    class LabelSchema
      def self.default(visited=[])
        return nil if visited.include?('LabelSchema')
        visited = visited + ['LabelSchema']
        {
          label_mapper: LabelMapper.default(visited),
          unlabeled_events_treatment: 'unlabeled_events_treatment',
        }
      end

      def self.stub(stub)
        stub ||= Types::LabelSchema.new
        data = {}
        data['labelMapper'] = LabelMapper.stub(stub[:label_mapper]) unless stub[:label_mapper].nil?
        data['unlabeledEventsTreatment'] = stub[:unlabeled_events_treatment] unless stub[:unlabeled_events_treatment].nil?
        data
      end
    end

    # Map Stubber for labelMapper
    class LabelMapper
      def self.default(visited=[])
        return nil if visited.include?('LabelMapper')
        visited = visited + ['LabelMapper']
        {
          test_key: NonEmptyListOfStrings.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = NonEmptyListOfStrings.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for NonEmptyListOfStrings
    class NonEmptyListOfStrings
      def self.default(visited=[])
        return nil if visited.include?('NonEmptyListOfStrings')
        visited = visited + ['NonEmptyListOfStrings']
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

    # List Stubber for ListOfStrings
    class ListOfStrings
      def self.default(visited=[])
        return nil if visited.include?('ListOfStrings')
        visited = visited + ['ListOfStrings']
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

    # Operation Stubber for GetBatchImportJobs
    class GetBatchImportJobs
      def self.default(visited=[])
        {
          batch_imports: BatchImportList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['batchImports'] = BatchImportList.stub(stub[:batch_imports]) unless stub[:batch_imports].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchImportList
    class BatchImportList
      def self.default(visited=[])
        return nil if visited.include?('BatchImportList')
        visited = visited + ['BatchImportList']
        [
          BatchImport.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchImport.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchImport
    class BatchImport
      def self.default(visited=[])
        return nil if visited.include?('BatchImport')
        visited = visited + ['BatchImport']
        {
          job_id: 'job_id',
          status: 'status',
          failure_reason: 'failure_reason',
          start_time: 'start_time',
          completion_time: 'completion_time',
          input_path: 'input_path',
          output_path: 'output_path',
          event_type_name: 'event_type_name',
          iam_role_arn: 'iam_role_arn',
          arn: 'arn',
          processed_records_count: 1,
          failed_records_count: 1,
          total_records_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchImport.new
        data = {}
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['startTime'] = stub[:start_time] unless stub[:start_time].nil?
        data['completionTime'] = stub[:completion_time] unless stub[:completion_time].nil?
        data['inputPath'] = stub[:input_path] unless stub[:input_path].nil?
        data['outputPath'] = stub[:output_path] unless stub[:output_path].nil?
        data['eventTypeName'] = stub[:event_type_name] unless stub[:event_type_name].nil?
        data['iamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['processedRecordsCount'] = stub[:processed_records_count] unless stub[:processed_records_count].nil?
        data['failedRecordsCount'] = stub[:failed_records_count] unless stub[:failed_records_count].nil?
        data['totalRecordsCount'] = stub[:total_records_count] unless stub[:total_records_count].nil?
        data
      end
    end

    # Operation Stubber for GetBatchPredictionJobs
    class GetBatchPredictionJobs
      def self.default(visited=[])
        {
          batch_predictions: BatchPredictionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['batchPredictions'] = BatchPredictionList.stub(stub[:batch_predictions]) unless stub[:batch_predictions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchPredictionList
    class BatchPredictionList
      def self.default(visited=[])
        return nil if visited.include?('BatchPredictionList')
        visited = visited + ['BatchPredictionList']
        [
          BatchPrediction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchPrediction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchPrediction
    class BatchPrediction
      def self.default(visited=[])
        return nil if visited.include?('BatchPrediction')
        visited = visited + ['BatchPrediction']
        {
          job_id: 'job_id',
          status: 'status',
          failure_reason: 'failure_reason',
          start_time: 'start_time',
          completion_time: 'completion_time',
          last_heartbeat_time: 'last_heartbeat_time',
          input_path: 'input_path',
          output_path: 'output_path',
          event_type_name: 'event_type_name',
          detector_name: 'detector_name',
          detector_version: 'detector_version',
          iam_role_arn: 'iam_role_arn',
          arn: 'arn',
          processed_records_count: 1,
          total_records_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchPrediction.new
        data = {}
        data['jobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['startTime'] = stub[:start_time] unless stub[:start_time].nil?
        data['completionTime'] = stub[:completion_time] unless stub[:completion_time].nil?
        data['lastHeartbeatTime'] = stub[:last_heartbeat_time] unless stub[:last_heartbeat_time].nil?
        data['inputPath'] = stub[:input_path] unless stub[:input_path].nil?
        data['outputPath'] = stub[:output_path] unless stub[:output_path].nil?
        data['eventTypeName'] = stub[:event_type_name] unless stub[:event_type_name].nil?
        data['detectorName'] = stub[:detector_name] unless stub[:detector_name].nil?
        data['detectorVersion'] = stub[:detector_version] unless stub[:detector_version].nil?
        data['iamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['processedRecordsCount'] = stub[:processed_records_count] unless stub[:processed_records_count].nil?
        data['totalRecordsCount'] = stub[:total_records_count] unless stub[:total_records_count].nil?
        data
      end
    end

    # Operation Stubber for GetDeleteEventsByEventTypeStatus
    class GetDeleteEventsByEventTypeStatus
      def self.default(visited=[])
        {
          event_type_name: 'event_type_name',
          events_deletion_status: 'events_deletion_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['eventTypeName'] = stub[:event_type_name] unless stub[:event_type_name].nil?
        data['eventsDeletionStatus'] = stub[:events_deletion_status] unless stub[:events_deletion_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDetectorVersion
    class GetDetectorVersion
      def self.default(visited=[])
        {
          detector_id: 'detector_id',
          detector_version_id: 'detector_version_id',
          description: 'description',
          external_model_endpoints: ListOfStrings.default(visited),
          model_versions: ListOfModelVersions.default(visited),
          rules: RuleList.default(visited),
          status: 'status',
          last_updated_time: 'last_updated_time',
          created_time: 'created_time',
          rule_execution_mode: 'rule_execution_mode',
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['detectorId'] = stub[:detector_id] unless stub[:detector_id].nil?
        data['detectorVersionId'] = stub[:detector_version_id] unless stub[:detector_version_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['externalModelEndpoints'] = ListOfStrings.stub(stub[:external_model_endpoints]) unless stub[:external_model_endpoints].nil?
        data['modelVersions'] = ListOfModelVersions.stub(stub[:model_versions]) unless stub[:model_versions].nil?
        data['rules'] = RuleList.stub(stub[:rules]) unless stub[:rules].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['lastUpdatedTime'] = stub[:last_updated_time] unless stub[:last_updated_time].nil?
        data['createdTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['ruleExecutionMode'] = stub[:rule_execution_mode] unless stub[:rule_execution_mode].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RuleList
    class RuleList
      def self.default(visited=[])
        return nil if visited.include?('RuleList')
        visited = visited + ['RuleList']
        [
          Rule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Rule.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for ListOfModelVersions
    class ListOfModelVersions
      def self.default(visited=[])
        return nil if visited.include?('ListOfModelVersions')
        visited = visited + ['ListOfModelVersions']
        [
          ModelVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ModelVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModelVersion
    class ModelVersion
      def self.default(visited=[])
        return nil if visited.include?('ModelVersion')
        visited = visited + ['ModelVersion']
        {
          model_id: 'model_id',
          model_type: 'model_type',
          model_version_number: 'model_version_number',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelVersion.new
        data = {}
        data['modelId'] = stub[:model_id] unless stub[:model_id].nil?
        data['modelType'] = stub[:model_type] unless stub[:model_type].nil?
        data['modelVersionNumber'] = stub[:model_version_number] unless stub[:model_version_number].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for GetDetectors
    class GetDetectors
      def self.default(visited=[])
        {
          detectors: DetectorList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['detectors'] = DetectorList.stub(stub[:detectors]) unless stub[:detectors].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DetectorList
    class DetectorList
      def self.default(visited=[])
        return nil if visited.include?('DetectorList')
        visited = visited + ['DetectorList']
        [
          Detector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Detector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Detector
    class Detector
      def self.default(visited=[])
        return nil if visited.include?('Detector')
        visited = visited + ['Detector']
        {
          detector_id: 'detector_id',
          description: 'description',
          event_type_name: 'event_type_name',
          last_updated_time: 'last_updated_time',
          created_time: 'created_time',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Detector.new
        data = {}
        data['detectorId'] = stub[:detector_id] unless stub[:detector_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['eventTypeName'] = stub[:event_type_name] unless stub[:event_type_name].nil?
        data['lastUpdatedTime'] = stub[:last_updated_time] unless stub[:last_updated_time].nil?
        data['createdTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for GetEntityTypes
    class GetEntityTypes
      def self.default(visited=[])
        {
          entity_types: EntityTypeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['entityTypes'] = EntityTypeList.stub(stub[:entity_types]) unless stub[:entity_types].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for entityTypeList
    class EntityTypeList
      def self.default(visited=[])
        return nil if visited.include?('EntityTypeList')
        visited = visited + ['EntityTypeList']
        [
          EntityType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EntityType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EntityType
    class EntityType
      def self.default(visited=[])
        return nil if visited.include?('EntityType')
        visited = visited + ['EntityType']
        {
          name: 'name',
          description: 'description',
          last_updated_time: 'last_updated_time',
          created_time: 'created_time',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityType.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['lastUpdatedTime'] = stub[:last_updated_time] unless stub[:last_updated_time].nil?
        data['createdTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for GetEvent
    class GetEvent
      def self.default(visited=[])
        {
          event: Event.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['event'] = Event.stub(stub[:event]) unless stub[:event].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Event
    class Event
      def self.default(visited=[])
        return nil if visited.include?('Event')
        visited = visited + ['Event']
        {
          event_id: 'event_id',
          event_type_name: 'event_type_name',
          event_timestamp: 'event_timestamp',
          event_variables: EventAttributeMap.default(visited),
          current_label: 'current_label',
          label_timestamp: 'label_timestamp',
          entities: ListOfEntities.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Event.new
        data = {}
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        data['eventTypeName'] = stub[:event_type_name] unless stub[:event_type_name].nil?
        data['eventTimestamp'] = stub[:event_timestamp] unless stub[:event_timestamp].nil?
        data['eventVariables'] = EventAttributeMap.stub(stub[:event_variables]) unless stub[:event_variables].nil?
        data['currentLabel'] = stub[:current_label] unless stub[:current_label].nil?
        data['labelTimestamp'] = stub[:label_timestamp] unless stub[:label_timestamp].nil?
        data['entities'] = ListOfEntities.stub(stub[:entities]) unless stub[:entities].nil?
        data
      end
    end

    # List Stubber for listOfEntities
    class ListOfEntities
      def self.default(visited=[])
        return nil if visited.include?('ListOfEntities')
        visited = visited + ['ListOfEntities']
        [
          Entity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Entity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Entity
    class Entity
      def self.default(visited=[])
        return nil if visited.include?('Entity')
        visited = visited + ['Entity']
        {
          entity_type: 'entity_type',
          entity_id: 'entity_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Entity.new
        data = {}
        data['entityType'] = stub[:entity_type] unless stub[:entity_type].nil?
        data['entityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data
      end
    end

    # Map Stubber for EventAttributeMap
    class EventAttributeMap
      def self.default(visited=[])
        return nil if visited.include?('EventAttributeMap')
        visited = visited + ['EventAttributeMap']
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

    # Operation Stubber for GetEventPrediction
    class GetEventPrediction
      def self.default(visited=[])
        {
          model_scores: ListOfModelScores.default(visited),
          rule_results: ListOfRuleResults.default(visited),
          external_model_outputs: ListOfExternalModelOutputs.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['modelScores'] = ListOfModelScores.stub(stub[:model_scores]) unless stub[:model_scores].nil?
        data['ruleResults'] = ListOfRuleResults.stub(stub[:rule_results]) unless stub[:rule_results].nil?
        data['externalModelOutputs'] = ListOfExternalModelOutputs.stub(stub[:external_model_outputs]) unless stub[:external_model_outputs].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListOfExternalModelOutputs
    class ListOfExternalModelOutputs
      def self.default(visited=[])
        return nil if visited.include?('ListOfExternalModelOutputs')
        visited = visited + ['ListOfExternalModelOutputs']
        [
          ExternalModelOutputs.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExternalModelOutputs.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExternalModelOutputs
    class ExternalModelOutputs
      def self.default(visited=[])
        return nil if visited.include?('ExternalModelOutputs')
        visited = visited + ['ExternalModelOutputs']
        {
          external_model: ExternalModelSummary.default(visited),
          outputs: ExternalModelPredictionMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExternalModelOutputs.new
        data = {}
        data['externalModel'] = ExternalModelSummary.stub(stub[:external_model]) unless stub[:external_model].nil?
        data['outputs'] = ExternalModelPredictionMap.stub(stub[:outputs]) unless stub[:outputs].nil?
        data
      end
    end

    # Map Stubber for ExternalModelPredictionMap
    class ExternalModelPredictionMap
      def self.default(visited=[])
        return nil if visited.include?('ExternalModelPredictionMap')
        visited = visited + ['ExternalModelPredictionMap']
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

    # Structure Stubber for ExternalModelSummary
    class ExternalModelSummary
      def self.default(visited=[])
        return nil if visited.include?('ExternalModelSummary')
        visited = visited + ['ExternalModelSummary']
        {
          model_endpoint: 'model_endpoint',
          model_source: 'model_source',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExternalModelSummary.new
        data = {}
        data['modelEndpoint'] = stub[:model_endpoint] unless stub[:model_endpoint].nil?
        data['modelSource'] = stub[:model_source] unless stub[:model_source].nil?
        data
      end
    end

    # List Stubber for ListOfRuleResults
    class ListOfRuleResults
      def self.default(visited=[])
        return nil if visited.include?('ListOfRuleResults')
        visited = visited + ['ListOfRuleResults']
        [
          RuleResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuleResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleResult
    class RuleResult
      def self.default(visited=[])
        return nil if visited.include?('RuleResult')
        visited = visited + ['RuleResult']
        {
          rule_id: 'rule_id',
          outcomes: ListOfStrings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleResult.new
        data = {}
        data['ruleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['outcomes'] = ListOfStrings.stub(stub[:outcomes]) unless stub[:outcomes].nil?
        data
      end
    end

    # List Stubber for ListOfModelScores
    class ListOfModelScores
      def self.default(visited=[])
        return nil if visited.include?('ListOfModelScores')
        visited = visited + ['ListOfModelScores']
        [
          ModelScores.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ModelScores.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModelScores
    class ModelScores
      def self.default(visited=[])
        return nil if visited.include?('ModelScores')
        visited = visited + ['ModelScores']
        {
          model_version: ModelVersion.default(visited),
          scores: ModelPredictionMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelScores.new
        data = {}
        data['modelVersion'] = ModelVersion.stub(stub[:model_version]) unless stub[:model_version].nil?
        data['scores'] = ModelPredictionMap.stub(stub[:scores]) unless stub[:scores].nil?
        data
      end
    end

    # Map Stubber for ModelPredictionMap
    class ModelPredictionMap
      def self.default(visited=[])
        return nil if visited.include?('ModelPredictionMap')
        visited = visited + ['ModelPredictionMap']
        {
          test_key: 1.0
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Hearth::NumberHelper.serialize(value)
        end
        data
      end
    end

    # Operation Stubber for GetEventPredictionMetadata
    class GetEventPredictionMetadata
      def self.default(visited=[])
        {
          event_id: 'event_id',
          event_type_name: 'event_type_name',
          entity_id: 'entity_id',
          entity_type: 'entity_type',
          event_timestamp: 'event_timestamp',
          detector_id: 'detector_id',
          detector_version_id: 'detector_version_id',
          detector_version_status: 'detector_version_status',
          event_variables: ListOfEventVariableSummaries.default(visited),
          rules: EvaluatedRuleList.default(visited),
          rule_execution_mode: 'rule_execution_mode',
          outcomes: ListOfStrings.default(visited),
          evaluated_model_versions: ListOfEvaluatedModelVersions.default(visited),
          evaluated_external_models: ListOfEvaluatedExternalModels.default(visited),
          prediction_timestamp: 'prediction_timestamp',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        data['eventTypeName'] = stub[:event_type_name] unless stub[:event_type_name].nil?
        data['entityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data['entityType'] = stub[:entity_type] unless stub[:entity_type].nil?
        data['eventTimestamp'] = stub[:event_timestamp] unless stub[:event_timestamp].nil?
        data['detectorId'] = stub[:detector_id] unless stub[:detector_id].nil?
        data['detectorVersionId'] = stub[:detector_version_id] unless stub[:detector_version_id].nil?
        data['detectorVersionStatus'] = stub[:detector_version_status] unless stub[:detector_version_status].nil?
        data['eventVariables'] = ListOfEventVariableSummaries.stub(stub[:event_variables]) unless stub[:event_variables].nil?
        data['rules'] = EvaluatedRuleList.stub(stub[:rules]) unless stub[:rules].nil?
        data['ruleExecutionMode'] = stub[:rule_execution_mode] unless stub[:rule_execution_mode].nil?
        data['outcomes'] = ListOfStrings.stub(stub[:outcomes]) unless stub[:outcomes].nil?
        data['evaluatedModelVersions'] = ListOfEvaluatedModelVersions.stub(stub[:evaluated_model_versions]) unless stub[:evaluated_model_versions].nil?
        data['evaluatedExternalModels'] = ListOfEvaluatedExternalModels.stub(stub[:evaluated_external_models]) unless stub[:evaluated_external_models].nil?
        data['predictionTimestamp'] = stub[:prediction_timestamp] unless stub[:prediction_timestamp].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListOfEvaluatedExternalModels
    class ListOfEvaluatedExternalModels
      def self.default(visited=[])
        return nil if visited.include?('ListOfEvaluatedExternalModels')
        visited = visited + ['ListOfEvaluatedExternalModels']
        [
          EvaluatedExternalModel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EvaluatedExternalModel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EvaluatedExternalModel
    class EvaluatedExternalModel
      def self.default(visited=[])
        return nil if visited.include?('EvaluatedExternalModel')
        visited = visited + ['EvaluatedExternalModel']
        {
          model_endpoint: 'model_endpoint',
          use_event_variables: false,
          input_variables: MapOfStrings.default(visited),
          output_variables: MapOfStrings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EvaluatedExternalModel.new
        data = {}
        data['modelEndpoint'] = stub[:model_endpoint] unless stub[:model_endpoint].nil?
        data['useEventVariables'] = stub[:use_event_variables] unless stub[:use_event_variables].nil?
        data['inputVariables'] = MapOfStrings.stub(stub[:input_variables]) unless stub[:input_variables].nil?
        data['outputVariables'] = MapOfStrings.stub(stub[:output_variables]) unless stub[:output_variables].nil?
        data
      end
    end

    # Map Stubber for MapOfStrings
    class MapOfStrings
      def self.default(visited=[])
        return nil if visited.include?('MapOfStrings')
        visited = visited + ['MapOfStrings']
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

    # List Stubber for ListOfEvaluatedModelVersions
    class ListOfEvaluatedModelVersions
      def self.default(visited=[])
        return nil if visited.include?('ListOfEvaluatedModelVersions')
        visited = visited + ['ListOfEvaluatedModelVersions']
        [
          EvaluatedModelVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EvaluatedModelVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EvaluatedModelVersion
    class EvaluatedModelVersion
      def self.default(visited=[])
        return nil if visited.include?('EvaluatedModelVersion')
        visited = visited + ['EvaluatedModelVersion']
        {
          model_id: 'model_id',
          model_version: 'model_version',
          model_type: 'model_type',
          evaluations: ListOfModelVersionEvaluations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EvaluatedModelVersion.new
        data = {}
        data['modelId'] = stub[:model_id] unless stub[:model_id].nil?
        data['modelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        data['modelType'] = stub[:model_type] unless stub[:model_type].nil?
        data['evaluations'] = ListOfModelVersionEvaluations.stub(stub[:evaluations]) unless stub[:evaluations].nil?
        data
      end
    end

    # List Stubber for ListOfModelVersionEvaluations
    class ListOfModelVersionEvaluations
      def self.default(visited=[])
        return nil if visited.include?('ListOfModelVersionEvaluations')
        visited = visited + ['ListOfModelVersionEvaluations']
        [
          ModelVersionEvaluation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ModelVersionEvaluation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ModelVersionEvaluation
    class ModelVersionEvaluation
      def self.default(visited=[])
        return nil if visited.include?('ModelVersionEvaluation')
        visited = visited + ['ModelVersionEvaluation']
        {
          output_variable_name: 'output_variable_name',
          evaluation_score: 'evaluation_score',
          prediction_explanations: PredictionExplanations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelVersionEvaluation.new
        data = {}
        data['outputVariableName'] = stub[:output_variable_name] unless stub[:output_variable_name].nil?
        data['evaluationScore'] = stub[:evaluation_score] unless stub[:evaluation_score].nil?
        data['predictionExplanations'] = PredictionExplanations.stub(stub[:prediction_explanations]) unless stub[:prediction_explanations].nil?
        data
      end
    end

    # Structure Stubber for PredictionExplanations
    class PredictionExplanations
      def self.default(visited=[])
        return nil if visited.include?('PredictionExplanations')
        visited = visited + ['PredictionExplanations']
        {
          variable_impact_explanations: ListOfVariableImpactExplanations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PredictionExplanations.new
        data = {}
        data['variableImpactExplanations'] = ListOfVariableImpactExplanations.stub(stub[:variable_impact_explanations]) unless stub[:variable_impact_explanations].nil?
        data
      end
    end

    # List Stubber for listOfVariableImpactExplanations
    class ListOfVariableImpactExplanations
      def self.default(visited=[])
        return nil if visited.include?('ListOfVariableImpactExplanations')
        visited = visited + ['ListOfVariableImpactExplanations']
        [
          VariableImpactExplanation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VariableImpactExplanation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VariableImpactExplanation
    class VariableImpactExplanation
      def self.default(visited=[])
        return nil if visited.include?('VariableImpactExplanation')
        visited = visited + ['VariableImpactExplanation']
        {
          event_variable_name: 'event_variable_name',
          relative_impact: 'relative_impact',
          log_odds_impact: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::VariableImpactExplanation.new
        data = {}
        data['eventVariableName'] = stub[:event_variable_name] unless stub[:event_variable_name].nil?
        data['relativeImpact'] = stub[:relative_impact] unless stub[:relative_impact].nil?
        data['logOddsImpact'] = Hearth::NumberHelper.serialize(stub[:log_odds_impact])
        data
      end
    end

    # List Stubber for EvaluatedRuleList
    class EvaluatedRuleList
      def self.default(visited=[])
        return nil if visited.include?('EvaluatedRuleList')
        visited = visited + ['EvaluatedRuleList']
        [
          EvaluatedRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EvaluatedRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EvaluatedRule
    class EvaluatedRule
      def self.default(visited=[])
        return nil if visited.include?('EvaluatedRule')
        visited = visited + ['EvaluatedRule']
        {
          rule_id: 'rule_id',
          rule_version: 'rule_version',
          expression: 'expression',
          expression_with_values: 'expression_with_values',
          outcomes: ListOfStrings.default(visited),
          evaluated: false,
          matched: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::EvaluatedRule.new
        data = {}
        data['ruleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['ruleVersion'] = stub[:rule_version] unless stub[:rule_version].nil?
        data['expression'] = stub[:expression] unless stub[:expression].nil?
        data['expressionWithValues'] = stub[:expression_with_values] unless stub[:expression_with_values].nil?
        data['outcomes'] = ListOfStrings.stub(stub[:outcomes]) unless stub[:outcomes].nil?
        data['evaluated'] = stub[:evaluated] unless stub[:evaluated].nil?
        data['matched'] = stub[:matched] unless stub[:matched].nil?
        data
      end
    end

    # List Stubber for ListOfEventVariableSummaries
    class ListOfEventVariableSummaries
      def self.default(visited=[])
        return nil if visited.include?('ListOfEventVariableSummaries')
        visited = visited + ['ListOfEventVariableSummaries']
        [
          EventVariableSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventVariableSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventVariableSummary
    class EventVariableSummary
      def self.default(visited=[])
        return nil if visited.include?('EventVariableSummary')
        visited = visited + ['EventVariableSummary']
        {
          name: 'name',
          value: 'value',
          source: 'source',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventVariableSummary.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data['source'] = stub[:source] unless stub[:source].nil?
        data
      end
    end

    # Operation Stubber for GetEventTypes
    class GetEventTypes
      def self.default(visited=[])
        {
          event_types: EventTypeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['eventTypes'] = EventTypeList.stub(stub[:event_types]) unless stub[:event_types].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for eventTypeList
    class EventTypeList
      def self.default(visited=[])
        return nil if visited.include?('EventTypeList')
        visited = visited + ['EventTypeList']
        [
          EventType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventType
    class EventType
      def self.default(visited=[])
        return nil if visited.include?('EventType')
        visited = visited + ['EventType']
        {
          name: 'name',
          description: 'description',
          event_variables: ListOfStrings.default(visited),
          labels: ListOfStrings.default(visited),
          entity_types: NonEmptyListOfStrings.default(visited),
          event_ingestion: 'event_ingestion',
          ingested_event_statistics: IngestedEventStatistics.default(visited),
          last_updated_time: 'last_updated_time',
          created_time: 'created_time',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventType.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['eventVariables'] = ListOfStrings.stub(stub[:event_variables]) unless stub[:event_variables].nil?
        data['labels'] = ListOfStrings.stub(stub[:labels]) unless stub[:labels].nil?
        data['entityTypes'] = NonEmptyListOfStrings.stub(stub[:entity_types]) unless stub[:entity_types].nil?
        data['eventIngestion'] = stub[:event_ingestion] unless stub[:event_ingestion].nil?
        data['ingestedEventStatistics'] = IngestedEventStatistics.stub(stub[:ingested_event_statistics]) unless stub[:ingested_event_statistics].nil?
        data['lastUpdatedTime'] = stub[:last_updated_time] unless stub[:last_updated_time].nil?
        data['createdTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for IngestedEventStatistics
    class IngestedEventStatistics
      def self.default(visited=[])
        return nil if visited.include?('IngestedEventStatistics')
        visited = visited + ['IngestedEventStatistics']
        {
          number_of_events: 1,
          event_data_size_in_bytes: 1,
          least_recent_event: 'least_recent_event',
          most_recent_event: 'most_recent_event',
          last_updated_time: 'last_updated_time',
        }
      end

      def self.stub(stub)
        stub ||= Types::IngestedEventStatistics.new
        data = {}
        data['numberOfEvents'] = stub[:number_of_events] unless stub[:number_of_events].nil?
        data['eventDataSizeInBytes'] = stub[:event_data_size_in_bytes] unless stub[:event_data_size_in_bytes].nil?
        data['leastRecentEvent'] = stub[:least_recent_event] unless stub[:least_recent_event].nil?
        data['mostRecentEvent'] = stub[:most_recent_event] unless stub[:most_recent_event].nil?
        data['lastUpdatedTime'] = stub[:last_updated_time] unless stub[:last_updated_time].nil?
        data
      end
    end

    # Operation Stubber for GetExternalModels
    class GetExternalModels
      def self.default(visited=[])
        {
          external_models: ExternalModelList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['externalModels'] = ExternalModelList.stub(stub[:external_models]) unless stub[:external_models].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ExternalModelList
    class ExternalModelList
      def self.default(visited=[])
        return nil if visited.include?('ExternalModelList')
        visited = visited + ['ExternalModelList']
        [
          ExternalModel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExternalModel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExternalModel
    class ExternalModel
      def self.default(visited=[])
        return nil if visited.include?('ExternalModel')
        visited = visited + ['ExternalModel']
        {
          model_endpoint: 'model_endpoint',
          model_source: 'model_source',
          invoke_model_endpoint_role_arn: 'invoke_model_endpoint_role_arn',
          input_configuration: ModelInputConfiguration.default(visited),
          output_configuration: ModelOutputConfiguration.default(visited),
          model_endpoint_status: 'model_endpoint_status',
          last_updated_time: 'last_updated_time',
          created_time: 'created_time',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExternalModel.new
        data = {}
        data['modelEndpoint'] = stub[:model_endpoint] unless stub[:model_endpoint].nil?
        data['modelSource'] = stub[:model_source] unless stub[:model_source].nil?
        data['invokeModelEndpointRoleArn'] = stub[:invoke_model_endpoint_role_arn] unless stub[:invoke_model_endpoint_role_arn].nil?
        data['inputConfiguration'] = ModelInputConfiguration.stub(stub[:input_configuration]) unless stub[:input_configuration].nil?
        data['outputConfiguration'] = ModelOutputConfiguration.stub(stub[:output_configuration]) unless stub[:output_configuration].nil?
        data['modelEndpointStatus'] = stub[:model_endpoint_status] unless stub[:model_endpoint_status].nil?
        data['lastUpdatedTime'] = stub[:last_updated_time] unless stub[:last_updated_time].nil?
        data['createdTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for ModelOutputConfiguration
    class ModelOutputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ModelOutputConfiguration')
        visited = visited + ['ModelOutputConfiguration']
        {
          format: 'format',
          json_key_to_variable_map: JsonKeyToVariableMap.default(visited),
          csv_index_to_variable_map: CsvIndexToVariableMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelOutputConfiguration.new
        data = {}
        data['format'] = stub[:format] unless stub[:format].nil?
        data['jsonKeyToVariableMap'] = JsonKeyToVariableMap.stub(stub[:json_key_to_variable_map]) unless stub[:json_key_to_variable_map].nil?
        data['csvIndexToVariableMap'] = CsvIndexToVariableMap.stub(stub[:csv_index_to_variable_map]) unless stub[:csv_index_to_variable_map].nil?
        data
      end
    end

    # Map Stubber for CsvIndexToVariableMap
    class CsvIndexToVariableMap
      def self.default(visited=[])
        return nil if visited.include?('CsvIndexToVariableMap')
        visited = visited + ['CsvIndexToVariableMap']
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

    # Map Stubber for JsonKeyToVariableMap
    class JsonKeyToVariableMap
      def self.default(visited=[])
        return nil if visited.include?('JsonKeyToVariableMap')
        visited = visited + ['JsonKeyToVariableMap']
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

    # Structure Stubber for ModelInputConfiguration
    class ModelInputConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ModelInputConfiguration')
        visited = visited + ['ModelInputConfiguration']
        {
          event_type_name: 'event_type_name',
          format: 'format',
          use_event_variables: false,
          json_input_template: 'json_input_template',
          csv_input_template: 'csv_input_template',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelInputConfiguration.new
        data = {}
        data['eventTypeName'] = stub[:event_type_name] unless stub[:event_type_name].nil?
        data['format'] = stub[:format] unless stub[:format].nil?
        data['useEventVariables'] = stub[:use_event_variables] unless stub[:use_event_variables].nil?
        data['jsonInputTemplate'] = stub[:json_input_template] unless stub[:json_input_template].nil?
        data['csvInputTemplate'] = stub[:csv_input_template] unless stub[:csv_input_template].nil?
        data
      end
    end

    # Operation Stubber for GetKMSEncryptionKey
    class GetKMSEncryptionKey
      def self.default(visited=[])
        {
          kms_key: KMSKey.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['kmsKey'] = KMSKey.stub(stub[:kms_key]) unless stub[:kms_key].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for KMSKey
    class KMSKey
      def self.default(visited=[])
        return nil if visited.include?('KMSKey')
        visited = visited + ['KMSKey']
        {
          kms_encryption_key_arn: 'kms_encryption_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KMSKey.new
        data = {}
        data['kmsEncryptionKeyArn'] = stub[:kms_encryption_key_arn] unless stub[:kms_encryption_key_arn].nil?
        data
      end
    end

    # Operation Stubber for GetLabels
    class GetLabels
      def self.default(visited=[])
        {
          labels: LabelList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['labels'] = LabelList.stub(stub[:labels]) unless stub[:labels].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for labelList
    class LabelList
      def self.default(visited=[])
        return nil if visited.include?('LabelList')
        visited = visited + ['LabelList']
        [
          Label.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Label.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Label
    class Label
      def self.default(visited=[])
        return nil if visited.include?('Label')
        visited = visited + ['Label']
        {
          name: 'name',
          description: 'description',
          last_updated_time: 'last_updated_time',
          created_time: 'created_time',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Label.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['lastUpdatedTime'] = stub[:last_updated_time] unless stub[:last_updated_time].nil?
        data['createdTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for GetModelVersion
    class GetModelVersion
      def self.default(visited=[])
        {
          model_id: 'model_id',
          model_type: 'model_type',
          model_version_number: 'model_version_number',
          training_data_source: 'training_data_source',
          training_data_schema: TrainingDataSchema.default(visited),
          external_events_detail: ExternalEventsDetail.default(visited),
          ingested_events_detail: IngestedEventsDetail.default(visited),
          status: 'status',
          arn: 'arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['modelId'] = stub[:model_id] unless stub[:model_id].nil?
        data['modelType'] = stub[:model_type] unless stub[:model_type].nil?
        data['modelVersionNumber'] = stub[:model_version_number] unless stub[:model_version_number].nil?
        data['trainingDataSource'] = stub[:training_data_source] unless stub[:training_data_source].nil?
        data['trainingDataSchema'] = TrainingDataSchema.stub(stub[:training_data_schema]) unless stub[:training_data_schema].nil?
        data['externalEventsDetail'] = ExternalEventsDetail.stub(stub[:external_events_detail]) unless stub[:external_events_detail].nil?
        data['ingestedEventsDetail'] = IngestedEventsDetail.stub(stub[:ingested_events_detail]) unless stub[:ingested_events_detail].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetModels
    class GetModels
      def self.default(visited=[])
        {
          next_token: 'next_token',
          models: ModelList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['models'] = ModelList.stub(stub[:models]) unless stub[:models].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for modelList
    class ModelList
      def self.default(visited=[])
        return nil if visited.include?('ModelList')
        visited = visited + ['ModelList']
        [
          Model.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Model.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Model
    class Model
      def self.default(visited=[])
        return nil if visited.include?('Model')
        visited = visited + ['Model']
        {
          model_id: 'model_id',
          model_type: 'model_type',
          description: 'description',
          event_type_name: 'event_type_name',
          created_time: 'created_time',
          last_updated_time: 'last_updated_time',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Model.new
        data = {}
        data['modelId'] = stub[:model_id] unless stub[:model_id].nil?
        data['modelType'] = stub[:model_type] unless stub[:model_type].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['eventTypeName'] = stub[:event_type_name] unless stub[:event_type_name].nil?
        data['createdTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['lastUpdatedTime'] = stub[:last_updated_time] unless stub[:last_updated_time].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for GetOutcomes
    class GetOutcomes
      def self.default(visited=[])
        {
          outcomes: OutcomeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['outcomes'] = OutcomeList.stub(stub[:outcomes]) unless stub[:outcomes].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for OutcomeList
    class OutcomeList
      def self.default(visited=[])
        return nil if visited.include?('OutcomeList')
        visited = visited + ['OutcomeList']
        [
          Outcome.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Outcome.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Outcome
    class Outcome
      def self.default(visited=[])
        return nil if visited.include?('Outcome')
        visited = visited + ['Outcome']
        {
          name: 'name',
          description: 'description',
          last_updated_time: 'last_updated_time',
          created_time: 'created_time',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Outcome.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['lastUpdatedTime'] = stub[:last_updated_time] unless stub[:last_updated_time].nil?
        data['createdTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for GetRules
    class GetRules
      def self.default(visited=[])
        {
          rule_details: RuleDetailList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ruleDetails'] = RuleDetailList.stub(stub[:rule_details]) unless stub[:rule_details].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RuleDetailList
    class RuleDetailList
      def self.default(visited=[])
        return nil if visited.include?('RuleDetailList')
        visited = visited + ['RuleDetailList']
        [
          RuleDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuleDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleDetail
    class RuleDetail
      def self.default(visited=[])
        return nil if visited.include?('RuleDetail')
        visited = visited + ['RuleDetail']
        {
          rule_id: 'rule_id',
          description: 'description',
          detector_id: 'detector_id',
          rule_version: 'rule_version',
          expression: 'expression',
          language: 'language',
          outcomes: NonEmptyListOfStrings.default(visited),
          last_updated_time: 'last_updated_time',
          created_time: 'created_time',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleDetail.new
        data = {}
        data['ruleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['detectorId'] = stub[:detector_id] unless stub[:detector_id].nil?
        data['ruleVersion'] = stub[:rule_version] unless stub[:rule_version].nil?
        data['expression'] = stub[:expression] unless stub[:expression].nil?
        data['language'] = stub[:language] unless stub[:language].nil?
        data['outcomes'] = NonEmptyListOfStrings.stub(stub[:outcomes]) unless stub[:outcomes].nil?
        data['lastUpdatedTime'] = stub[:last_updated_time] unless stub[:last_updated_time].nil?
        data['createdTime'] = stub[:created_time] unless stub[:created_time].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for GetVariables
    class GetVariables
      def self.default(visited=[])
        {
          variables: VariableList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['variables'] = VariableList.stub(stub[:variables]) unless stub[:variables].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListEventPredictions
    class ListEventPredictions
      def self.default(visited=[])
        {
          event_prediction_summaries: ListOfEventPredictionSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['eventPredictionSummaries'] = ListOfEventPredictionSummaries.stub(stub[:event_prediction_summaries]) unless stub[:event_prediction_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListOfEventPredictionSummaries
    class ListOfEventPredictionSummaries
      def self.default(visited=[])
        return nil if visited.include?('ListOfEventPredictionSummaries')
        visited = visited + ['ListOfEventPredictionSummaries']
        [
          EventPredictionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventPredictionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventPredictionSummary
    class EventPredictionSummary
      def self.default(visited=[])
        return nil if visited.include?('EventPredictionSummary')
        visited = visited + ['EventPredictionSummary']
        {
          event_id: 'event_id',
          event_type_name: 'event_type_name',
          event_timestamp: 'event_timestamp',
          prediction_timestamp: 'prediction_timestamp',
          detector_id: 'detector_id',
          detector_version_id: 'detector_version_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventPredictionSummary.new
        data = {}
        data['eventId'] = stub[:event_id] unless stub[:event_id].nil?
        data['eventTypeName'] = stub[:event_type_name] unless stub[:event_type_name].nil?
        data['eventTimestamp'] = stub[:event_timestamp] unless stub[:event_timestamp].nil?
        data['predictionTimestamp'] = stub[:prediction_timestamp] unless stub[:prediction_timestamp].nil?
        data['detectorId'] = stub[:detector_id] unless stub[:detector_id].nil?
        data['detectorVersionId'] = stub[:detector_version_id] unless stub[:detector_version_id].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for tagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
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
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for PutDetector
    class PutDetector
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutEntityType
    class PutEntityType
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutEventType
    class PutEventType
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutExternalModel
    class PutExternalModel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutKMSEncryptionKey
    class PutKMSEncryptionKey
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutLabel
    class PutLabel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutOutcome
    class PutOutcome
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendEvent
    class SendEvent
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDetectorVersion
    class UpdateDetectorVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDetectorVersionMetadata
    class UpdateDetectorVersionMetadata
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDetectorVersionStatus
    class UpdateDetectorVersionStatus
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEventLabel
    class UpdateEventLabel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateModel
    class UpdateModel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateModelVersion
    class UpdateModelVersion
      def self.default(visited=[])
        {
          model_id: 'model_id',
          model_type: 'model_type',
          model_version_number: 'model_version_number',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['modelId'] = stub[:model_id] unless stub[:model_id].nil?
        data['modelType'] = stub[:model_type] unless stub[:model_type].nil?
        data['modelVersionNumber'] = stub[:model_version_number] unless stub[:model_version_number].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateModelVersionStatus
    class UpdateModelVersionStatus
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRuleMetadata
    class UpdateRuleMetadata
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRuleVersion
    class UpdateRuleVersion
      def self.default(visited=[])
        {
          rule: Rule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['rule'] = Rule.stub(stub[:rule]) unless stub[:rule].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateVariable
    class UpdateVariable
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
