# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::FraudDetector
  module Parsers

    # Operation Parser for BatchCreateVariable
    class BatchCreateVariable
      def self.parse(http_resp)
        data = Types::BatchCreateVariableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.errors = (Parsers::BatchCreateVariableErrorList.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class BatchCreateVariableErrorList
      def self.parse(list)
        list.map do |value|
          Parsers::BatchCreateVariableError.parse(value) unless value.nil?
        end
      end
    end

    class BatchCreateVariableError
      def self.parse(map)
        data = Types::BatchCreateVariableError.new
        data.name = map['name']
        data.code = map['code']
        data.message = map['message']
        return data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for BatchGetVariable
    class BatchGetVariable
      def self.parse(http_resp)
        data = Types::BatchGetVariableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.variables = (Parsers::VariableList.parse(map['variables']) unless map['variables'].nil?)
        data.errors = (Parsers::BatchGetVariableErrorList.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class BatchGetVariableErrorList
      def self.parse(list)
        list.map do |value|
          Parsers::BatchGetVariableError.parse(value) unless value.nil?
        end
      end
    end

    class BatchGetVariableError
      def self.parse(map)
        data = Types::BatchGetVariableError.new
        data.name = map['name']
        data.code = map['code']
        data.message = map['message']
        return data
      end
    end

    class VariableList
      def self.parse(list)
        list.map do |value|
          Parsers::Variable.parse(value) unless value.nil?
        end
      end
    end

    class Variable
      def self.parse(map)
        data = Types::Variable.new
        data.name = map['name']
        data.data_type = map['dataType']
        data.data_source = map['dataSource']
        data.default_value = map['defaultValue']
        data.description = map['description']
        data.variable_type = map['variableType']
        data.last_updated_time = map['lastUpdatedTime']
        data.created_time = map['createdTime']
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for CancelBatchImportJob
    class CancelBatchImportJob
      def self.parse(http_resp)
        data = Types::CancelBatchImportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CancelBatchPredictionJob
    class CancelBatchPredictionJob
      def self.parse(http_resp)
        data = Types::CancelBatchPredictionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateBatchImportJob
    class CreateBatchImportJob
      def self.parse(http_resp)
        data = Types::CreateBatchImportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateBatchPredictionJob
    class CreateBatchPredictionJob
      def self.parse(http_resp)
        data = Types::CreateBatchPredictionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateDetectorVersion
    class CreateDetectorVersion
      def self.parse(http_resp)
        data = Types::CreateDetectorVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.detector_id = map['detectorId']
        data.detector_version_id = map['detectorVersionId']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for CreateModel
    class CreateModel
      def self.parse(http_resp)
        data = Types::CreateModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateModelVersion
    class CreateModelVersion
      def self.parse(http_resp)
        data = Types::CreateModelVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_id = map['modelId']
        data.model_type = map['modelType']
        data.model_version_number = map['modelVersionNumber']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for CreateRule
    class CreateRule
      def self.parse(http_resp)
        data = Types::CreateRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rule = (Parsers::Rule.parse(map['rule']) unless map['rule'].nil?)
        data
      end
    end

    class Rule
      def self.parse(map)
        data = Types::Rule.new
        data.detector_id = map['detectorId']
        data.rule_id = map['ruleId']
        data.rule_version = map['ruleVersion']
        return data
      end
    end

    # Operation Parser for CreateVariable
    class CreateVariable
      def self.parse(http_resp)
        data = Types::CreateVariableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteBatchImportJob
    class DeleteBatchImportJob
      def self.parse(http_resp)
        data = Types::DeleteBatchImportJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteBatchPredictionJob
    class DeleteBatchPredictionJob
      def self.parse(http_resp)
        data = Types::DeleteBatchPredictionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteDetector
    class DeleteDetector
      def self.parse(http_resp)
        data = Types::DeleteDetectorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteDetectorVersion
    class DeleteDetectorVersion
      def self.parse(http_resp)
        data = Types::DeleteDetectorVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteEntityType
    class DeleteEntityType
      def self.parse(http_resp)
        data = Types::DeleteEntityTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteEvent
    class DeleteEvent
      def self.parse(http_resp)
        data = Types::DeleteEventOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteEventType
    class DeleteEventType
      def self.parse(http_resp)
        data = Types::DeleteEventTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteEventsByEventType
    class DeleteEventsByEventType
      def self.parse(http_resp)
        data = Types::DeleteEventsByEventTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_type_name = map['eventTypeName']
        data.events_deletion_status = map['eventsDeletionStatus']
        data
      end
    end

    # Operation Parser for DeleteExternalModel
    class DeleteExternalModel
      def self.parse(http_resp)
        data = Types::DeleteExternalModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteLabel
    class DeleteLabel
      def self.parse(http_resp)
        data = Types::DeleteLabelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteModel
    class DeleteModel
      def self.parse(http_resp)
        data = Types::DeleteModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteModelVersion
    class DeleteModelVersion
      def self.parse(http_resp)
        data = Types::DeleteModelVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteOutcome
    class DeleteOutcome
      def self.parse(http_resp)
        data = Types::DeleteOutcomeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteRule
    class DeleteRule
      def self.parse(http_resp)
        data = Types::DeleteRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteVariable
    class DeleteVariable
      def self.parse(http_resp)
        data = Types::DeleteVariableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeDetector
    class DescribeDetector
      def self.parse(http_resp)
        data = Types::DescribeDetectorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.detector_id = map['detectorId']
        data.detector_version_summaries = (Parsers::DetectorVersionSummaryList.parse(map['detectorVersionSummaries']) unless map['detectorVersionSummaries'].nil?)
        data.next_token = map['nextToken']
        data.arn = map['arn']
        data
      end
    end

    class DetectorVersionSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::DetectorVersionSummary.parse(value) unless value.nil?
        end
      end
    end

    class DetectorVersionSummary
      def self.parse(map)
        data = Types::DetectorVersionSummary.new
        data.detector_version_id = map['detectorVersionId']
        data.status = map['status']
        data.description = map['description']
        data.last_updated_time = map['lastUpdatedTime']
        return data
      end
    end

    # Operation Parser for DescribeModelVersions
    class DescribeModelVersions
      def self.parse(http_resp)
        data = Types::DescribeModelVersionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_version_details = (Parsers::ModelVersionDetailList.parse(map['modelVersionDetails']) unless map['modelVersionDetails'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ModelVersionDetailList
      def self.parse(list)
        list.map do |value|
          Parsers::ModelVersionDetail.parse(value) unless value.nil?
        end
      end
    end

    class ModelVersionDetail
      def self.parse(map)
        data = Types::ModelVersionDetail.new
        data.model_id = map['modelId']
        data.model_type = map['modelType']
        data.model_version_number = map['modelVersionNumber']
        data.status = map['status']
        data.training_data_source = map['trainingDataSource']
        data.training_data_schema = (Parsers::TrainingDataSchema.parse(map['trainingDataSchema']) unless map['trainingDataSchema'].nil?)
        data.external_events_detail = (Parsers::ExternalEventsDetail.parse(map['externalEventsDetail']) unless map['externalEventsDetail'].nil?)
        data.ingested_events_detail = (Parsers::IngestedEventsDetail.parse(map['ingestedEventsDetail']) unless map['ingestedEventsDetail'].nil?)
        data.training_result = (Parsers::TrainingResult.parse(map['trainingResult']) unless map['trainingResult'].nil?)
        data.last_updated_time = map['lastUpdatedTime']
        data.created_time = map['createdTime']
        data.arn = map['arn']
        return data
      end
    end

    class TrainingResult
      def self.parse(map)
        data = Types::TrainingResult.new
        data.data_validation_metrics = (Parsers::DataValidationMetrics.parse(map['dataValidationMetrics']) unless map['dataValidationMetrics'].nil?)
        data.training_metrics = (Parsers::TrainingMetrics.parse(map['trainingMetrics']) unless map['trainingMetrics'].nil?)
        data.variable_importance_metrics = (Parsers::VariableImportanceMetrics.parse(map['variableImportanceMetrics']) unless map['variableImportanceMetrics'].nil?)
        return data
      end
    end

    class VariableImportanceMetrics
      def self.parse(map)
        data = Types::VariableImportanceMetrics.new
        data.log_odds_metrics = (Parsers::ListOfLogOddsMetrics.parse(map['logOddsMetrics']) unless map['logOddsMetrics'].nil?)
        return data
      end
    end

    class ListOfLogOddsMetrics
      def self.parse(list)
        list.map do |value|
          Parsers::LogOddsMetric.parse(value) unless value.nil?
        end
      end
    end

    class LogOddsMetric
      def self.parse(map)
        data = Types::LogOddsMetric.new
        data.variable_name = map['variableName']
        data.variable_type = map['variableType']
        data.variable_importance = Hearth::NumberHelper.deserialize(map['variableImportance'])
        return data
      end
    end

    class TrainingMetrics
      def self.parse(map)
        data = Types::TrainingMetrics.new
        data.auc = Hearth::NumberHelper.deserialize(map['auc'])
        data.metric_data_points = (Parsers::MetricDataPointsList.parse(map['metricDataPoints']) unless map['metricDataPoints'].nil?)
        return data
      end
    end

    class MetricDataPointsList
      def self.parse(list)
        list.map do |value|
          Parsers::MetricDataPoint.parse(value) unless value.nil?
        end
      end
    end

    class MetricDataPoint
      def self.parse(map)
        data = Types::MetricDataPoint.new
        data.fpr = Hearth::NumberHelper.deserialize(map['fpr'])
        data.precision = Hearth::NumberHelper.deserialize(map['precision'])
        data.tpr = Hearth::NumberHelper.deserialize(map['tpr'])
        data.threshold = Hearth::NumberHelper.deserialize(map['threshold'])
        return data
      end
    end

    class DataValidationMetrics
      def self.parse(map)
        data = Types::DataValidationMetrics.new
        data.file_level_messages = (Parsers::FileValidationMessageList.parse(map['fileLevelMessages']) unless map['fileLevelMessages'].nil?)
        data.field_level_messages = (Parsers::FieldValidationMessageList.parse(map['fieldLevelMessages']) unless map['fieldLevelMessages'].nil?)
        return data
      end
    end

    class FieldValidationMessageList
      def self.parse(list)
        list.map do |value|
          Parsers::FieldValidationMessage.parse(value) unless value.nil?
        end
      end
    end

    class FieldValidationMessage
      def self.parse(map)
        data = Types::FieldValidationMessage.new
        data.field_name = map['fieldName']
        data.identifier = map['identifier']
        data.title = map['title']
        data.content = map['content']
        data.type = map['type']
        return data
      end
    end

    class FileValidationMessageList
      def self.parse(list)
        list.map do |value|
          Parsers::FileValidationMessage.parse(value) unless value.nil?
        end
      end
    end

    class FileValidationMessage
      def self.parse(map)
        data = Types::FileValidationMessage.new
        data.title = map['title']
        data.content = map['content']
        data.type = map['type']
        return data
      end
    end

    class IngestedEventsDetail
      def self.parse(map)
        data = Types::IngestedEventsDetail.new
        data.ingested_events_time_window = (Parsers::IngestedEventsTimeWindow.parse(map['ingestedEventsTimeWindow']) unless map['ingestedEventsTimeWindow'].nil?)
        return data
      end
    end

    class IngestedEventsTimeWindow
      def self.parse(map)
        data = Types::IngestedEventsTimeWindow.new
        data.start_time = map['startTime']
        data.end_time = map['endTime']
        return data
      end
    end

    class ExternalEventsDetail
      def self.parse(map)
        data = Types::ExternalEventsDetail.new
        data.data_location = map['dataLocation']
        data.data_access_role_arn = map['dataAccessRoleArn']
        return data
      end
    end

    class TrainingDataSchema
      def self.parse(map)
        data = Types::TrainingDataSchema.new
        data.model_variables = (Parsers::ListOfStrings.parse(map['modelVariables']) unless map['modelVariables'].nil?)
        data.label_schema = (Parsers::LabelSchema.parse(map['labelSchema']) unless map['labelSchema'].nil?)
        return data
      end
    end

    class LabelSchema
      def self.parse(map)
        data = Types::LabelSchema.new
        data.label_mapper = (Parsers::LabelMapper.parse(map['labelMapper']) unless map['labelMapper'].nil?)
        data.unlabeled_events_treatment = map['unlabeledEventsTreatment']
        return data
      end
    end

    class LabelMapper
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::NonEmptyListOfStrings.parse(value) unless value.nil?
        end
        data
      end
    end

    class NonEmptyListOfStrings
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ListOfStrings
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetBatchImportJobs
    class GetBatchImportJobs
      def self.parse(http_resp)
        data = Types::GetBatchImportJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.batch_imports = (Parsers::BatchImportList.parse(map['batchImports']) unless map['batchImports'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BatchImportList
      def self.parse(list)
        list.map do |value|
          Parsers::BatchImport.parse(value) unless value.nil?
        end
      end
    end

    class BatchImport
      def self.parse(map)
        data = Types::BatchImport.new
        data.job_id = map['jobId']
        data.status = map['status']
        data.failure_reason = map['failureReason']
        data.start_time = map['startTime']
        data.completion_time = map['completionTime']
        data.input_path = map['inputPath']
        data.output_path = map['outputPath']
        data.event_type_name = map['eventTypeName']
        data.iam_role_arn = map['iamRoleArn']
        data.arn = map['arn']
        data.processed_records_count = map['processedRecordsCount']
        data.failed_records_count = map['failedRecordsCount']
        data.total_records_count = map['totalRecordsCount']
        return data
      end
    end

    # Operation Parser for GetBatchPredictionJobs
    class GetBatchPredictionJobs
      def self.parse(http_resp)
        data = Types::GetBatchPredictionJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.batch_predictions = (Parsers::BatchPredictionList.parse(map['batchPredictions']) unless map['batchPredictions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class BatchPredictionList
      def self.parse(list)
        list.map do |value|
          Parsers::BatchPrediction.parse(value) unless value.nil?
        end
      end
    end

    class BatchPrediction
      def self.parse(map)
        data = Types::BatchPrediction.new
        data.job_id = map['jobId']
        data.status = map['status']
        data.failure_reason = map['failureReason']
        data.start_time = map['startTime']
        data.completion_time = map['completionTime']
        data.last_heartbeat_time = map['lastHeartbeatTime']
        data.input_path = map['inputPath']
        data.output_path = map['outputPath']
        data.event_type_name = map['eventTypeName']
        data.detector_name = map['detectorName']
        data.detector_version = map['detectorVersion']
        data.iam_role_arn = map['iamRoleArn']
        data.arn = map['arn']
        data.processed_records_count = map['processedRecordsCount']
        data.total_records_count = map['totalRecordsCount']
        return data
      end
    end

    # Operation Parser for GetDeleteEventsByEventTypeStatus
    class GetDeleteEventsByEventTypeStatus
      def self.parse(http_resp)
        data = Types::GetDeleteEventsByEventTypeStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_type_name = map['eventTypeName']
        data.events_deletion_status = map['eventsDeletionStatus']
        data
      end
    end

    # Operation Parser for GetDetectorVersion
    class GetDetectorVersion
      def self.parse(http_resp)
        data = Types::GetDetectorVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.detector_id = map['detectorId']
        data.detector_version_id = map['detectorVersionId']
        data.description = map['description']
        data.external_model_endpoints = (Parsers::ListOfStrings.parse(map['externalModelEndpoints']) unless map['externalModelEndpoints'].nil?)
        data.model_versions = (Parsers::ListOfModelVersions.parse(map['modelVersions']) unless map['modelVersions'].nil?)
        data.rules = (Parsers::RuleList.parse(map['rules']) unless map['rules'].nil?)
        data.status = map['status']
        data.last_updated_time = map['lastUpdatedTime']
        data.created_time = map['createdTime']
        data.rule_execution_mode = map['ruleExecutionMode']
        data.arn = map['arn']
        data
      end
    end

    class RuleList
      def self.parse(list)
        list.map do |value|
          Parsers::Rule.parse(value) unless value.nil?
        end
      end
    end

    class ListOfModelVersions
      def self.parse(list)
        list.map do |value|
          Parsers::ModelVersion.parse(value) unless value.nil?
        end
      end
    end

    class ModelVersion
      def self.parse(map)
        data = Types::ModelVersion.new
        data.model_id = map['modelId']
        data.model_type = map['modelType']
        data.model_version_number = map['modelVersionNumber']
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for GetDetectors
    class GetDetectors
      def self.parse(http_resp)
        data = Types::GetDetectorsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.detectors = (Parsers::DetectorList.parse(map['detectors']) unless map['detectors'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DetectorList
      def self.parse(list)
        list.map do |value|
          Parsers::Detector.parse(value) unless value.nil?
        end
      end
    end

    class Detector
      def self.parse(map)
        data = Types::Detector.new
        data.detector_id = map['detectorId']
        data.description = map['description']
        data.event_type_name = map['eventTypeName']
        data.last_updated_time = map['lastUpdatedTime']
        data.created_time = map['createdTime']
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for GetEntityTypes
    class GetEntityTypes
      def self.parse(http_resp)
        data = Types::GetEntityTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entity_types = (Parsers::EntityTypeList.parse(map['entityTypes']) unless map['entityTypes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EntityTypeList
      def self.parse(list)
        list.map do |value|
          Parsers::EntityType.parse(value) unless value.nil?
        end
      end
    end

    class EntityType
      def self.parse(map)
        data = Types::EntityType.new
        data.name = map['name']
        data.description = map['description']
        data.last_updated_time = map['lastUpdatedTime']
        data.created_time = map['createdTime']
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for GetEvent
    class GetEvent
      def self.parse(http_resp)
        data = Types::GetEventOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event = (Parsers::Event.parse(map['event']) unless map['event'].nil?)
        data
      end
    end

    class Event
      def self.parse(map)
        data = Types::Event.new
        data.event_id = map['eventId']
        data.event_type_name = map['eventTypeName']
        data.event_timestamp = map['eventTimestamp']
        data.event_variables = (Parsers::EventAttributeMap.parse(map['eventVariables']) unless map['eventVariables'].nil?)
        data.current_label = map['currentLabel']
        data.label_timestamp = map['labelTimestamp']
        data.entities = (Parsers::ListOfEntities.parse(map['entities']) unless map['entities'].nil?)
        return data
      end
    end

    class ListOfEntities
      def self.parse(list)
        list.map do |value|
          Parsers::Entity.parse(value) unless value.nil?
        end
      end
    end

    class Entity
      def self.parse(map)
        data = Types::Entity.new
        data.entity_type = map['entityType']
        data.entity_id = map['entityId']
        return data
      end
    end

    class EventAttributeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetEventPrediction
    class GetEventPrediction
      def self.parse(http_resp)
        data = Types::GetEventPredictionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_scores = (Parsers::ListOfModelScores.parse(map['modelScores']) unless map['modelScores'].nil?)
        data.rule_results = (Parsers::ListOfRuleResults.parse(map['ruleResults']) unless map['ruleResults'].nil?)
        data.external_model_outputs = (Parsers::ListOfExternalModelOutputs.parse(map['externalModelOutputs']) unless map['externalModelOutputs'].nil?)
        data
      end
    end

    class ListOfExternalModelOutputs
      def self.parse(list)
        list.map do |value|
          Parsers::ExternalModelOutputs.parse(value) unless value.nil?
        end
      end
    end

    class ExternalModelOutputs
      def self.parse(map)
        data = Types::ExternalModelOutputs.new
        data.external_model = (Parsers::ExternalModelSummary.parse(map['externalModel']) unless map['externalModel'].nil?)
        data.outputs = (Parsers::ExternalModelPredictionMap.parse(map['outputs']) unless map['outputs'].nil?)
        return data
      end
    end

    class ExternalModelPredictionMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ExternalModelSummary
      def self.parse(map)
        data = Types::ExternalModelSummary.new
        data.model_endpoint = map['modelEndpoint']
        data.model_source = map['modelSource']
        return data
      end
    end

    class ListOfRuleResults
      def self.parse(list)
        list.map do |value|
          Parsers::RuleResult.parse(value) unless value.nil?
        end
      end
    end

    class RuleResult
      def self.parse(map)
        data = Types::RuleResult.new
        data.rule_id = map['ruleId']
        data.outcomes = (Parsers::ListOfStrings.parse(map['outcomes']) unless map['outcomes'].nil?)
        return data
      end
    end

    class ListOfModelScores
      def self.parse(list)
        list.map do |value|
          Parsers::ModelScores.parse(value) unless value.nil?
        end
      end
    end

    class ModelScores
      def self.parse(map)
        data = Types::ModelScores.new
        data.model_version = (Parsers::ModelVersion.parse(map['modelVersion']) unless map['modelVersion'].nil?)
        data.scores = (Parsers::ModelPredictionMap.parse(map['scores']) unless map['scores'].nil?)
        return data
      end
    end

    class ModelPredictionMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
        data
      end
    end

    # Error Parser for ResourceUnavailableException
    class ResourceUnavailableException
      def self.parse(http_resp)
        data = Types::ResourceUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetEventPredictionMetadata
    class GetEventPredictionMetadata
      def self.parse(http_resp)
        data = Types::GetEventPredictionMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_id = map['eventId']
        data.event_type_name = map['eventTypeName']
        data.entity_id = map['entityId']
        data.entity_type = map['entityType']
        data.event_timestamp = map['eventTimestamp']
        data.detector_id = map['detectorId']
        data.detector_version_id = map['detectorVersionId']
        data.detector_version_status = map['detectorVersionStatus']
        data.event_variables = (Parsers::ListOfEventVariableSummaries.parse(map['eventVariables']) unless map['eventVariables'].nil?)
        data.rules = (Parsers::EvaluatedRuleList.parse(map['rules']) unless map['rules'].nil?)
        data.rule_execution_mode = map['ruleExecutionMode']
        data.outcomes = (Parsers::ListOfStrings.parse(map['outcomes']) unless map['outcomes'].nil?)
        data.evaluated_model_versions = (Parsers::ListOfEvaluatedModelVersions.parse(map['evaluatedModelVersions']) unless map['evaluatedModelVersions'].nil?)
        data.evaluated_external_models = (Parsers::ListOfEvaluatedExternalModels.parse(map['evaluatedExternalModels']) unless map['evaluatedExternalModels'].nil?)
        data.prediction_timestamp = map['predictionTimestamp']
        data
      end
    end

    class ListOfEvaluatedExternalModels
      def self.parse(list)
        list.map do |value|
          Parsers::EvaluatedExternalModel.parse(value) unless value.nil?
        end
      end
    end

    class EvaluatedExternalModel
      def self.parse(map)
        data = Types::EvaluatedExternalModel.new
        data.model_endpoint = map['modelEndpoint']
        data.use_event_variables = map['useEventVariables']
        data.input_variables = (Parsers::MapOfStrings.parse(map['inputVariables']) unless map['inputVariables'].nil?)
        data.output_variables = (Parsers::MapOfStrings.parse(map['outputVariables']) unless map['outputVariables'].nil?)
        return data
      end
    end

    class MapOfStrings
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ListOfEvaluatedModelVersions
      def self.parse(list)
        list.map do |value|
          Parsers::EvaluatedModelVersion.parse(value) unless value.nil?
        end
      end
    end

    class EvaluatedModelVersion
      def self.parse(map)
        data = Types::EvaluatedModelVersion.new
        data.model_id = map['modelId']
        data.model_version = map['modelVersion']
        data.model_type = map['modelType']
        data.evaluations = (Parsers::ListOfModelVersionEvaluations.parse(map['evaluations']) unless map['evaluations'].nil?)
        return data
      end
    end

    class ListOfModelVersionEvaluations
      def self.parse(list)
        list.map do |value|
          Parsers::ModelVersionEvaluation.parse(value) unless value.nil?
        end
      end
    end

    class ModelVersionEvaluation
      def self.parse(map)
        data = Types::ModelVersionEvaluation.new
        data.output_variable_name = map['outputVariableName']
        data.evaluation_score = map['evaluationScore']
        data.prediction_explanations = (Parsers::PredictionExplanations.parse(map['predictionExplanations']) unless map['predictionExplanations'].nil?)
        return data
      end
    end

    class PredictionExplanations
      def self.parse(map)
        data = Types::PredictionExplanations.new
        data.variable_impact_explanations = (Parsers::ListOfVariableImpactExplanations.parse(map['variableImpactExplanations']) unless map['variableImpactExplanations'].nil?)
        return data
      end
    end

    class ListOfVariableImpactExplanations
      def self.parse(list)
        list.map do |value|
          Parsers::VariableImpactExplanation.parse(value) unless value.nil?
        end
      end
    end

    class VariableImpactExplanation
      def self.parse(map)
        data = Types::VariableImpactExplanation.new
        data.event_variable_name = map['eventVariableName']
        data.relative_impact = map['relativeImpact']
        data.log_odds_impact = Hearth::NumberHelper.deserialize(map['logOddsImpact'])
        return data
      end
    end

    class EvaluatedRuleList
      def self.parse(list)
        list.map do |value|
          Parsers::EvaluatedRule.parse(value) unless value.nil?
        end
      end
    end

    class EvaluatedRule
      def self.parse(map)
        data = Types::EvaluatedRule.new
        data.rule_id = map['ruleId']
        data.rule_version = map['ruleVersion']
        data.expression = map['expression']
        data.expression_with_values = map['expressionWithValues']
        data.outcomes = (Parsers::ListOfStrings.parse(map['outcomes']) unless map['outcomes'].nil?)
        data.evaluated = map['evaluated']
        data.matched = map['matched']
        return data
      end
    end

    class ListOfEventVariableSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::EventVariableSummary.parse(value) unless value.nil?
        end
      end
    end

    class EventVariableSummary
      def self.parse(map)
        data = Types::EventVariableSummary.new
        data.name = map['name']
        data.value = map['value']
        data.source = map['source']
        return data
      end
    end

    # Operation Parser for GetEventTypes
    class GetEventTypes
      def self.parse(http_resp)
        data = Types::GetEventTypesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_types = (Parsers::EventTypeList.parse(map['eventTypes']) unless map['eventTypes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EventTypeList
      def self.parse(list)
        list.map do |value|
          Parsers::EventType.parse(value) unless value.nil?
        end
      end
    end

    class EventType
      def self.parse(map)
        data = Types::EventType.new
        data.name = map['name']
        data.description = map['description']
        data.event_variables = (Parsers::ListOfStrings.parse(map['eventVariables']) unless map['eventVariables'].nil?)
        data.labels = (Parsers::ListOfStrings.parse(map['labels']) unless map['labels'].nil?)
        data.entity_types = (Parsers::NonEmptyListOfStrings.parse(map['entityTypes']) unless map['entityTypes'].nil?)
        data.event_ingestion = map['eventIngestion']
        data.ingested_event_statistics = (Parsers::IngestedEventStatistics.parse(map['ingestedEventStatistics']) unless map['ingestedEventStatistics'].nil?)
        data.last_updated_time = map['lastUpdatedTime']
        data.created_time = map['createdTime']
        data.arn = map['arn']
        return data
      end
    end

    class IngestedEventStatistics
      def self.parse(map)
        data = Types::IngestedEventStatistics.new
        data.number_of_events = map['numberOfEvents']
        data.event_data_size_in_bytes = map['eventDataSizeInBytes']
        data.least_recent_event = map['leastRecentEvent']
        data.most_recent_event = map['mostRecentEvent']
        data.last_updated_time = map['lastUpdatedTime']
        return data
      end
    end

    # Operation Parser for GetExternalModels
    class GetExternalModels
      def self.parse(http_resp)
        data = Types::GetExternalModelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.external_models = (Parsers::ExternalModelList.parse(map['externalModels']) unless map['externalModels'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ExternalModelList
      def self.parse(list)
        list.map do |value|
          Parsers::ExternalModel.parse(value) unless value.nil?
        end
      end
    end

    class ExternalModel
      def self.parse(map)
        data = Types::ExternalModel.new
        data.model_endpoint = map['modelEndpoint']
        data.model_source = map['modelSource']
        data.invoke_model_endpoint_role_arn = map['invokeModelEndpointRoleArn']
        data.input_configuration = (Parsers::ModelInputConfiguration.parse(map['inputConfiguration']) unless map['inputConfiguration'].nil?)
        data.output_configuration = (Parsers::ModelOutputConfiguration.parse(map['outputConfiguration']) unless map['outputConfiguration'].nil?)
        data.model_endpoint_status = map['modelEndpointStatus']
        data.last_updated_time = map['lastUpdatedTime']
        data.created_time = map['createdTime']
        data.arn = map['arn']
        return data
      end
    end

    class ModelOutputConfiguration
      def self.parse(map)
        data = Types::ModelOutputConfiguration.new
        data.format = map['format']
        data.json_key_to_variable_map = (Parsers::JsonKeyToVariableMap.parse(map['jsonKeyToVariableMap']) unless map['jsonKeyToVariableMap'].nil?)
        data.csv_index_to_variable_map = (Parsers::CsvIndexToVariableMap.parse(map['csvIndexToVariableMap']) unless map['csvIndexToVariableMap'].nil?)
        return data
      end
    end

    class CsvIndexToVariableMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class JsonKeyToVariableMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ModelInputConfiguration
      def self.parse(map)
        data = Types::ModelInputConfiguration.new
        data.event_type_name = map['eventTypeName']
        data.format = map['format']
        data.use_event_variables = map['useEventVariables']
        data.json_input_template = map['jsonInputTemplate']
        data.csv_input_template = map['csvInputTemplate']
        return data
      end
    end

    # Operation Parser for GetKMSEncryptionKey
    class GetKMSEncryptionKey
      def self.parse(http_resp)
        data = Types::GetKMSEncryptionKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.kms_key = (Parsers::KMSKey.parse(map['kmsKey']) unless map['kmsKey'].nil?)
        data
      end
    end

    class KMSKey
      def self.parse(map)
        data = Types::KMSKey.new
        data.kms_encryption_key_arn = map['kmsEncryptionKeyArn']
        return data
      end
    end

    # Operation Parser for GetLabels
    class GetLabels
      def self.parse(http_resp)
        data = Types::GetLabelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.labels = (Parsers::LabelList.parse(map['labels']) unless map['labels'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class LabelList
      def self.parse(list)
        list.map do |value|
          Parsers::Label.parse(value) unless value.nil?
        end
      end
    end

    class Label
      def self.parse(map)
        data = Types::Label.new
        data.name = map['name']
        data.description = map['description']
        data.last_updated_time = map['lastUpdatedTime']
        data.created_time = map['createdTime']
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for GetModelVersion
    class GetModelVersion
      def self.parse(http_resp)
        data = Types::GetModelVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_id = map['modelId']
        data.model_type = map['modelType']
        data.model_version_number = map['modelVersionNumber']
        data.training_data_source = map['trainingDataSource']
        data.training_data_schema = (Parsers::TrainingDataSchema.parse(map['trainingDataSchema']) unless map['trainingDataSchema'].nil?)
        data.external_events_detail = (Parsers::ExternalEventsDetail.parse(map['externalEventsDetail']) unless map['externalEventsDetail'].nil?)
        data.ingested_events_detail = (Parsers::IngestedEventsDetail.parse(map['ingestedEventsDetail']) unless map['ingestedEventsDetail'].nil?)
        data.status = map['status']
        data.arn = map['arn']
        data
      end
    end

    # Operation Parser for GetModels
    class GetModels
      def self.parse(http_resp)
        data = Types::GetModelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['nextToken']
        data.models = (Parsers::ModelList.parse(map['models']) unless map['models'].nil?)
        data
      end
    end

    class ModelList
      def self.parse(list)
        list.map do |value|
          Parsers::Model.parse(value) unless value.nil?
        end
      end
    end

    class Model
      def self.parse(map)
        data = Types::Model.new
        data.model_id = map['modelId']
        data.model_type = map['modelType']
        data.description = map['description']
        data.event_type_name = map['eventTypeName']
        data.created_time = map['createdTime']
        data.last_updated_time = map['lastUpdatedTime']
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for GetOutcomes
    class GetOutcomes
      def self.parse(http_resp)
        data = Types::GetOutcomesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.outcomes = (Parsers::OutcomeList.parse(map['outcomes']) unless map['outcomes'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class OutcomeList
      def self.parse(list)
        list.map do |value|
          Parsers::Outcome.parse(value) unless value.nil?
        end
      end
    end

    class Outcome
      def self.parse(map)
        data = Types::Outcome.new
        data.name = map['name']
        data.description = map['description']
        data.last_updated_time = map['lastUpdatedTime']
        data.created_time = map['createdTime']
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for GetRules
    class GetRules
      def self.parse(http_resp)
        data = Types::GetRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rule_details = (Parsers::RuleDetailList.parse(map['ruleDetails']) unless map['ruleDetails'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RuleDetailList
      def self.parse(list)
        list.map do |value|
          Parsers::RuleDetail.parse(value) unless value.nil?
        end
      end
    end

    class RuleDetail
      def self.parse(map)
        data = Types::RuleDetail.new
        data.rule_id = map['ruleId']
        data.description = map['description']
        data.detector_id = map['detectorId']
        data.rule_version = map['ruleVersion']
        data.expression = map['expression']
        data.language = map['language']
        data.outcomes = (Parsers::NonEmptyListOfStrings.parse(map['outcomes']) unless map['outcomes'].nil?)
        data.last_updated_time = map['lastUpdatedTime']
        data.created_time = map['createdTime']
        data.arn = map['arn']
        return data
      end
    end

    # Operation Parser for GetVariables
    class GetVariables
      def self.parse(http_resp)
        data = Types::GetVariablesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.variables = (Parsers::VariableList.parse(map['variables']) unless map['variables'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListEventPredictions
    class ListEventPredictions
      def self.parse(http_resp)
        data = Types::ListEventPredictionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.event_prediction_summaries = (Parsers::ListOfEventPredictionSummaries.parse(map['eventPredictionSummaries']) unless map['eventPredictionSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ListOfEventPredictionSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::EventPredictionSummary.parse(value) unless value.nil?
        end
      end
    end

    class EventPredictionSummary
      def self.parse(map)
        data = Types::EventPredictionSummary.new
        data.event_id = map['eventId']
        data.event_type_name = map['eventTypeName']
        data.event_timestamp = map['eventTimestamp']
        data.prediction_timestamp = map['predictionTimestamp']
        data.detector_id = map['detectorId']
        data.detector_version_id = map['detectorVersionId']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for PutDetector
    class PutDetector
      def self.parse(http_resp)
        data = Types::PutDetectorOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutEntityType
    class PutEntityType
      def self.parse(http_resp)
        data = Types::PutEntityTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutEventType
    class PutEventType
      def self.parse(http_resp)
        data = Types::PutEventTypeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutExternalModel
    class PutExternalModel
      def self.parse(http_resp)
        data = Types::PutExternalModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutKMSEncryptionKey
    class PutKMSEncryptionKey
      def self.parse(http_resp)
        data = Types::PutKMSEncryptionKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutLabel
    class PutLabel
      def self.parse(http_resp)
        data = Types::PutLabelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutOutcome
    class PutOutcome
      def self.parse(http_resp)
        data = Types::PutOutcomeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SendEvent
    class SendEvent
      def self.parse(http_resp)
        data = Types::SendEventOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDetectorVersion
    class UpdateDetectorVersion
      def self.parse(http_resp)
        data = Types::UpdateDetectorVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDetectorVersionMetadata
    class UpdateDetectorVersionMetadata
      def self.parse(http_resp)
        data = Types::UpdateDetectorVersionMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDetectorVersionStatus
    class UpdateDetectorVersionStatus
      def self.parse(http_resp)
        data = Types::UpdateDetectorVersionStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateEventLabel
    class UpdateEventLabel
      def self.parse(http_resp)
        data = Types::UpdateEventLabelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateModel
    class UpdateModel
      def self.parse(http_resp)
        data = Types::UpdateModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateModelVersion
    class UpdateModelVersion
      def self.parse(http_resp)
        data = Types::UpdateModelVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.model_id = map['modelId']
        data.model_type = map['modelType']
        data.model_version_number = map['modelVersionNumber']
        data.status = map['status']
        data
      end
    end

    # Operation Parser for UpdateModelVersionStatus
    class UpdateModelVersionStatus
      def self.parse(http_resp)
        data = Types::UpdateModelVersionStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateRuleMetadata
    class UpdateRuleMetadata
      def self.parse(http_resp)
        data = Types::UpdateRuleMetadataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateRuleVersion
    class UpdateRuleVersion
      def self.parse(http_resp)
        data = Types::UpdateRuleVersionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rule = (Parsers::Rule.parse(map['rule']) unless map['rule'].nil?)
        data
      end
    end

    # Operation Parser for UpdateVariable
    class UpdateVariable
      def self.parse(http_resp)
        data = Types::UpdateVariableOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
