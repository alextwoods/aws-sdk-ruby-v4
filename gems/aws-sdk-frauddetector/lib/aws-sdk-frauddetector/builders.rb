# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::FraudDetector
  module Builders

    # Operation Builder for BatchCreateVariable
    class BatchCreateVariable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.BatchCreateVariable'
        data = {}
        data['variableEntries'] = VariableEntryList.build(input[:variable_entries]) unless input[:variable_entries].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for tagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for VariableEntryList
    class VariableEntryList
      def self.build(input)
        data = []
        input.each do |element|
          data << VariableEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for VariableEntry
    class VariableEntry
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['dataType'] = input[:data_type] unless input[:data_type].nil?
        data['dataSource'] = input[:data_source] unless input[:data_source].nil?
        data['defaultValue'] = input[:default_value] unless input[:default_value].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['variableType'] = input[:variable_type] unless input[:variable_type].nil?
        data
      end
    end

    # Operation Builder for BatchGetVariable
    class BatchGetVariable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.BatchGetVariable'
        data = {}
        data['names'] = NameList.build(input[:names]) unless input[:names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for NameList
    class NameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CancelBatchImportJob
    class CancelBatchImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.CancelBatchImportJob'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelBatchPredictionJob
    class CancelBatchPredictionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.CancelBatchPredictionJob'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateBatchImportJob
    class CreateBatchImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.CreateBatchImportJob'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['inputPath'] = input[:input_path] unless input[:input_path].nil?
        data['outputPath'] = input[:output_path] unless input[:output_path].nil?
        data['eventTypeName'] = input[:event_type_name] unless input[:event_type_name].nil?
        data['iamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateBatchPredictionJob
    class CreateBatchPredictionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.CreateBatchPredictionJob'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['inputPath'] = input[:input_path] unless input[:input_path].nil?
        data['outputPath'] = input[:output_path] unless input[:output_path].nil?
        data['eventTypeName'] = input[:event_type_name] unless input[:event_type_name].nil?
        data['detectorName'] = input[:detector_name] unless input[:detector_name].nil?
        data['detectorVersion'] = input[:detector_version] unless input[:detector_version].nil?
        data['iamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDetectorVersion
    class CreateDetectorVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.CreateDetectorVersion'
        data = {}
        data['detectorId'] = input[:detector_id] unless input[:detector_id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['externalModelEndpoints'] = ListOfStrings.build(input[:external_model_endpoints]) unless input[:external_model_endpoints].nil?
        data['rules'] = RuleList.build(input[:rules]) unless input[:rules].nil?
        data['modelVersions'] = ListOfModelVersions.build(input[:model_versions]) unless input[:model_versions].nil?
        data['ruleExecutionMode'] = input[:rule_execution_mode] unless input[:rule_execution_mode].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ListOfModelVersions
    class ListOfModelVersions
      def self.build(input)
        data = []
        input.each do |element|
          data << ModelVersion.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ModelVersion
    class ModelVersion
      def self.build(input)
        data = {}
        data['modelId'] = input[:model_id] unless input[:model_id].nil?
        data['modelType'] = input[:model_type] unless input[:model_type].nil?
        data['modelVersionNumber'] = input[:model_version_number] unless input[:model_version_number].nil?
        data['arn'] = input[:arn] unless input[:arn].nil?
        data
      end
    end

    # List Builder for RuleList
    class RuleList
      def self.build(input)
        data = []
        input.each do |element|
          data << Rule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Rule
    class Rule
      def self.build(input)
        data = {}
        data['detectorId'] = input[:detector_id] unless input[:detector_id].nil?
        data['ruleId'] = input[:rule_id] unless input[:rule_id].nil?
        data['ruleVersion'] = input[:rule_version] unless input[:rule_version].nil?
        data
      end
    end

    # List Builder for ListOfStrings
    class ListOfStrings
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateModel
    class CreateModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.CreateModel'
        data = {}
        data['modelId'] = input[:model_id] unless input[:model_id].nil?
        data['modelType'] = input[:model_type] unless input[:model_type].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['eventTypeName'] = input[:event_type_name] unless input[:event_type_name].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateModelVersion
    class CreateModelVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.CreateModelVersion'
        data = {}
        data['modelId'] = input[:model_id] unless input[:model_id].nil?
        data['modelType'] = input[:model_type] unless input[:model_type].nil?
        data['trainingDataSource'] = input[:training_data_source] unless input[:training_data_source].nil?
        data['trainingDataSchema'] = TrainingDataSchema.build(input[:training_data_schema]) unless input[:training_data_schema].nil?
        data['externalEventsDetail'] = ExternalEventsDetail.build(input[:external_events_detail]) unless input[:external_events_detail].nil?
        data['ingestedEventsDetail'] = IngestedEventsDetail.build(input[:ingested_events_detail]) unless input[:ingested_events_detail].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for IngestedEventsDetail
    class IngestedEventsDetail
      def self.build(input)
        data = {}
        data['ingestedEventsTimeWindow'] = IngestedEventsTimeWindow.build(input[:ingested_events_time_window]) unless input[:ingested_events_time_window].nil?
        data
      end
    end

    # Structure Builder for IngestedEventsTimeWindow
    class IngestedEventsTimeWindow
      def self.build(input)
        data = {}
        data['startTime'] = input[:start_time] unless input[:start_time].nil?
        data['endTime'] = input[:end_time] unless input[:end_time].nil?
        data
      end
    end

    # Structure Builder for ExternalEventsDetail
    class ExternalEventsDetail
      def self.build(input)
        data = {}
        data['dataLocation'] = input[:data_location] unless input[:data_location].nil?
        data['dataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data
      end
    end

    # Structure Builder for TrainingDataSchema
    class TrainingDataSchema
      def self.build(input)
        data = {}
        data['modelVariables'] = ListOfStrings.build(input[:model_variables]) unless input[:model_variables].nil?
        data['labelSchema'] = LabelSchema.build(input[:label_schema]) unless input[:label_schema].nil?
        data
      end
    end

    # Structure Builder for LabelSchema
    class LabelSchema
      def self.build(input)
        data = {}
        data['labelMapper'] = LabelMapper.build(input[:label_mapper]) unless input[:label_mapper].nil?
        data['unlabeledEventsTreatment'] = input[:unlabeled_events_treatment] unless input[:unlabeled_events_treatment].nil?
        data
      end
    end

    # Map Builder for labelMapper
    class LabelMapper
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = NonEmptyListOfStrings.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for NonEmptyListOfStrings
    class NonEmptyListOfStrings
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateRule
    class CreateRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.CreateRule'
        data = {}
        data['ruleId'] = input[:rule_id] unless input[:rule_id].nil?
        data['detectorId'] = input[:detector_id] unless input[:detector_id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['expression'] = input[:expression] unless input[:expression].nil?
        data['language'] = input[:language] unless input[:language].nil?
        data['outcomes'] = NonEmptyListOfStrings.build(input[:outcomes]) unless input[:outcomes].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateVariable
    class CreateVariable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.CreateVariable'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['dataType'] = input[:data_type] unless input[:data_type].nil?
        data['dataSource'] = input[:data_source] unless input[:data_source].nil?
        data['defaultValue'] = input[:default_value] unless input[:default_value].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['variableType'] = input[:variable_type] unless input[:variable_type].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBatchImportJob
    class DeleteBatchImportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DeleteBatchImportJob'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBatchPredictionJob
    class DeleteBatchPredictionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DeleteBatchPredictionJob'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDetector
    class DeleteDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DeleteDetector'
        data = {}
        data['detectorId'] = input[:detector_id] unless input[:detector_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDetectorVersion
    class DeleteDetectorVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DeleteDetectorVersion'
        data = {}
        data['detectorId'] = input[:detector_id] unless input[:detector_id].nil?
        data['detectorVersionId'] = input[:detector_version_id] unless input[:detector_version_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEntityType
    class DeleteEntityType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DeleteEntityType'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEvent
    class DeleteEvent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DeleteEvent'
        data = {}
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        data['eventTypeName'] = input[:event_type_name] unless input[:event_type_name].nil?
        data['deleteAuditHistory'] = input[:delete_audit_history] unless input[:delete_audit_history].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEventType
    class DeleteEventType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DeleteEventType'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEventsByEventType
    class DeleteEventsByEventType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DeleteEventsByEventType'
        data = {}
        data['eventTypeName'] = input[:event_type_name] unless input[:event_type_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteExternalModel
    class DeleteExternalModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DeleteExternalModel'
        data = {}
        data['modelEndpoint'] = input[:model_endpoint] unless input[:model_endpoint].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLabel
    class DeleteLabel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DeleteLabel'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteModel
    class DeleteModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DeleteModel'
        data = {}
        data['modelId'] = input[:model_id] unless input[:model_id].nil?
        data['modelType'] = input[:model_type] unless input[:model_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteModelVersion
    class DeleteModelVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DeleteModelVersion'
        data = {}
        data['modelId'] = input[:model_id] unless input[:model_id].nil?
        data['modelType'] = input[:model_type] unless input[:model_type].nil?
        data['modelVersionNumber'] = input[:model_version_number] unless input[:model_version_number].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteOutcome
    class DeleteOutcome
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DeleteOutcome'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRule
    class DeleteRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DeleteRule'
        data = {}
        data['rule'] = Rule.build(input[:rule]) unless input[:rule].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteVariable
    class DeleteVariable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DeleteVariable'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDetector
    class DescribeDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DescribeDetector'
        data = {}
        data['detectorId'] = input[:detector_id] unless input[:detector_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeModelVersions
    class DescribeModelVersions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.DescribeModelVersions'
        data = {}
        data['modelId'] = input[:model_id] unless input[:model_id].nil?
        data['modelVersionNumber'] = input[:model_version_number] unless input[:model_version_number].nil?
        data['modelType'] = input[:model_type] unless input[:model_type].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBatchImportJobs
    class GetBatchImportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetBatchImportJobs'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBatchPredictionJobs
    class GetBatchPredictionJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetBatchPredictionJobs'
        data = {}
        data['jobId'] = input[:job_id] unless input[:job_id].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDeleteEventsByEventTypeStatus
    class GetDeleteEventsByEventTypeStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetDeleteEventsByEventTypeStatus'
        data = {}
        data['eventTypeName'] = input[:event_type_name] unless input[:event_type_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDetectorVersion
    class GetDetectorVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetDetectorVersion'
        data = {}
        data['detectorId'] = input[:detector_id] unless input[:detector_id].nil?
        data['detectorVersionId'] = input[:detector_version_id] unless input[:detector_version_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDetectors
    class GetDetectors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetDetectors'
        data = {}
        data['detectorId'] = input[:detector_id] unless input[:detector_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEntityTypes
    class GetEntityTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetEntityTypes'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEvent
    class GetEvent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetEvent'
        data = {}
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        data['eventTypeName'] = input[:event_type_name] unless input[:event_type_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEventPrediction
    class GetEventPrediction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetEventPrediction'
        data = {}
        data['detectorId'] = input[:detector_id] unless input[:detector_id].nil?
        data['detectorVersionId'] = input[:detector_version_id] unless input[:detector_version_id].nil?
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        data['eventTypeName'] = input[:event_type_name] unless input[:event_type_name].nil?
        data['entities'] = ListOfEntities.build(input[:entities]) unless input[:entities].nil?
        data['eventTimestamp'] = input[:event_timestamp] unless input[:event_timestamp].nil?
        data['eventVariables'] = EventVariableMap.build(input[:event_variables]) unless input[:event_variables].nil?
        data['externalModelEndpointDataBlobs'] = ExternalModelEndpointDataBlobMap.build(input[:external_model_endpoint_data_blobs]) unless input[:external_model_endpoint_data_blobs].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ExternalModelEndpointDataBlobMap
    class ExternalModelEndpointDataBlobMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = ModelEndpointDataBlob.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ModelEndpointDataBlob
    class ModelEndpointDataBlob
      def self.build(input)
        data = {}
        data['byteBuffer'] = ::Base64::encode64(input[:byte_buffer]).strip unless input[:byte_buffer].nil?
        data['contentType'] = input[:content_type] unless input[:content_type].nil?
        data
      end
    end

    # Map Builder for EventVariableMap
    class EventVariableMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for listOfEntities
    class ListOfEntities
      def self.build(input)
        data = []
        input.each do |element|
          data << Entity.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Entity
    class Entity
      def self.build(input)
        data = {}
        data['entityType'] = input[:entity_type] unless input[:entity_type].nil?
        data['entityId'] = input[:entity_id] unless input[:entity_id].nil?
        data
      end
    end

    # Operation Builder for GetEventPredictionMetadata
    class GetEventPredictionMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetEventPredictionMetadata'
        data = {}
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        data['eventTypeName'] = input[:event_type_name] unless input[:event_type_name].nil?
        data['detectorId'] = input[:detector_id] unless input[:detector_id].nil?
        data['detectorVersionId'] = input[:detector_version_id] unless input[:detector_version_id].nil?
        data['predictionTimestamp'] = input[:prediction_timestamp] unless input[:prediction_timestamp].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEventTypes
    class GetEventTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetEventTypes'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetExternalModels
    class GetExternalModels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetExternalModels'
        data = {}
        data['modelEndpoint'] = input[:model_endpoint] unless input[:model_endpoint].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetKMSEncryptionKey
    class GetKMSEncryptionKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetKMSEncryptionKey'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetLabels
    class GetLabels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetLabels'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetModelVersion
    class GetModelVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetModelVersion'
        data = {}
        data['modelId'] = input[:model_id] unless input[:model_id].nil?
        data['modelType'] = input[:model_type] unless input[:model_type].nil?
        data['modelVersionNumber'] = input[:model_version_number] unless input[:model_version_number].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetModels
    class GetModels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetModels'
        data = {}
        data['modelId'] = input[:model_id] unless input[:model_id].nil?
        data['modelType'] = input[:model_type] unless input[:model_type].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetOutcomes
    class GetOutcomes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetOutcomes'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRules
    class GetRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetRules'
        data = {}
        data['ruleId'] = input[:rule_id] unless input[:rule_id].nil?
        data['detectorId'] = input[:detector_id] unless input[:detector_id].nil?
        data['ruleVersion'] = input[:rule_version] unless input[:rule_version].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetVariables
    class GetVariables
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.GetVariables'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEventPredictions
    class ListEventPredictions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.ListEventPredictions'
        data = {}
        data['eventId'] = FilterCondition.build(input[:event_id]) unless input[:event_id].nil?
        data['eventType'] = FilterCondition.build(input[:event_type]) unless input[:event_type].nil?
        data['detectorId'] = FilterCondition.build(input[:detector_id]) unless input[:detector_id].nil?
        data['detectorVersionId'] = FilterCondition.build(input[:detector_version_id]) unless input[:detector_version_id].nil?
        data['predictionTimeRange'] = PredictionTimeRange.build(input[:prediction_time_range]) unless input[:prediction_time_range].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PredictionTimeRange
    class PredictionTimeRange
      def self.build(input)
        data = {}
        data['startTime'] = input[:start_time] unless input[:start_time].nil?
        data['endTime'] = input[:end_time] unless input[:end_time].nil?
        data
      end
    end

    # Structure Builder for FilterCondition
    class FilterCondition
      def self.build(input)
        data = {}
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.ListTagsForResource'
        data = {}
        data['resourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutDetector
    class PutDetector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.PutDetector'
        data = {}
        data['detectorId'] = input[:detector_id] unless input[:detector_id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['eventTypeName'] = input[:event_type_name] unless input[:event_type_name].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutEntityType
    class PutEntityType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.PutEntityType'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutEventType
    class PutEventType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.PutEventType'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['eventVariables'] = NonEmptyListOfStrings.build(input[:event_variables]) unless input[:event_variables].nil?
        data['labels'] = ListOfStrings.build(input[:labels]) unless input[:labels].nil?
        data['entityTypes'] = NonEmptyListOfStrings.build(input[:entity_types]) unless input[:entity_types].nil?
        data['eventIngestion'] = input[:event_ingestion] unless input[:event_ingestion].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutExternalModel
    class PutExternalModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.PutExternalModel'
        data = {}
        data['modelEndpoint'] = input[:model_endpoint] unless input[:model_endpoint].nil?
        data['modelSource'] = input[:model_source] unless input[:model_source].nil?
        data['invokeModelEndpointRoleArn'] = input[:invoke_model_endpoint_role_arn] unless input[:invoke_model_endpoint_role_arn].nil?
        data['inputConfiguration'] = ModelInputConfiguration.build(input[:input_configuration]) unless input[:input_configuration].nil?
        data['outputConfiguration'] = ModelOutputConfiguration.build(input[:output_configuration]) unless input[:output_configuration].nil?
        data['modelEndpointStatus'] = input[:model_endpoint_status] unless input[:model_endpoint_status].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ModelOutputConfiguration
    class ModelOutputConfiguration
      def self.build(input)
        data = {}
        data['format'] = input[:format] unless input[:format].nil?
        data['jsonKeyToVariableMap'] = JsonKeyToVariableMap.build(input[:json_key_to_variable_map]) unless input[:json_key_to_variable_map].nil?
        data['csvIndexToVariableMap'] = CsvIndexToVariableMap.build(input[:csv_index_to_variable_map]) unless input[:csv_index_to_variable_map].nil?
        data
      end
    end

    # Map Builder for CsvIndexToVariableMap
    class CsvIndexToVariableMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for JsonKeyToVariableMap
    class JsonKeyToVariableMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ModelInputConfiguration
    class ModelInputConfiguration
      def self.build(input)
        data = {}
        data['eventTypeName'] = input[:event_type_name] unless input[:event_type_name].nil?
        data['format'] = input[:format] unless input[:format].nil?
        data['useEventVariables'] = input[:use_event_variables] unless input[:use_event_variables].nil?
        data['jsonInputTemplate'] = input[:json_input_template] unless input[:json_input_template].nil?
        data['csvInputTemplate'] = input[:csv_input_template] unless input[:csv_input_template].nil?
        data
      end
    end

    # Operation Builder for PutKMSEncryptionKey
    class PutKMSEncryptionKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.PutKMSEncryptionKey'
        data = {}
        data['kmsEncryptionKeyArn'] = input[:kms_encryption_key_arn] unless input[:kms_encryption_key_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutLabel
    class PutLabel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.PutLabel'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutOutcome
    class PutOutcome
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.PutOutcome'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendEvent
    class SendEvent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.SendEvent'
        data = {}
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        data['eventTypeName'] = input[:event_type_name] unless input[:event_type_name].nil?
        data['eventTimestamp'] = input[:event_timestamp] unless input[:event_timestamp].nil?
        data['eventVariables'] = EventVariableMap.build(input[:event_variables]) unless input[:event_variables].nil?
        data['assignedLabel'] = input[:assigned_label] unless input[:assigned_label].nil?
        data['labelTimestamp'] = input[:label_timestamp] unless input[:label_timestamp].nil?
        data['entities'] = ListOfEntities.build(input[:entities]) unless input[:entities].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.TagResource'
        data = {}
        data['resourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.UntagResource'
        data = {}
        data['resourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for tagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDetectorVersion
    class UpdateDetectorVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.UpdateDetectorVersion'
        data = {}
        data['detectorId'] = input[:detector_id] unless input[:detector_id].nil?
        data['detectorVersionId'] = input[:detector_version_id] unless input[:detector_version_id].nil?
        data['externalModelEndpoints'] = ListOfStrings.build(input[:external_model_endpoints]) unless input[:external_model_endpoints].nil?
        data['rules'] = RuleList.build(input[:rules]) unless input[:rules].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['modelVersions'] = ListOfModelVersions.build(input[:model_versions]) unless input[:model_versions].nil?
        data['ruleExecutionMode'] = input[:rule_execution_mode] unless input[:rule_execution_mode].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDetectorVersionMetadata
    class UpdateDetectorVersionMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.UpdateDetectorVersionMetadata'
        data = {}
        data['detectorId'] = input[:detector_id] unless input[:detector_id].nil?
        data['detectorVersionId'] = input[:detector_version_id] unless input[:detector_version_id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDetectorVersionStatus
    class UpdateDetectorVersionStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.UpdateDetectorVersionStatus'
        data = {}
        data['detectorId'] = input[:detector_id] unless input[:detector_id].nil?
        data['detectorVersionId'] = input[:detector_version_id] unless input[:detector_version_id].nil?
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEventLabel
    class UpdateEventLabel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.UpdateEventLabel'
        data = {}
        data['eventId'] = input[:event_id] unless input[:event_id].nil?
        data['eventTypeName'] = input[:event_type_name] unless input[:event_type_name].nil?
        data['assignedLabel'] = input[:assigned_label] unless input[:assigned_label].nil?
        data['labelTimestamp'] = input[:label_timestamp] unless input[:label_timestamp].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateModel
    class UpdateModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.UpdateModel'
        data = {}
        data['modelId'] = input[:model_id] unless input[:model_id].nil?
        data['modelType'] = input[:model_type] unless input[:model_type].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateModelVersion
    class UpdateModelVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.UpdateModelVersion'
        data = {}
        data['modelId'] = input[:model_id] unless input[:model_id].nil?
        data['modelType'] = input[:model_type] unless input[:model_type].nil?
        data['majorVersionNumber'] = input[:major_version_number] unless input[:major_version_number].nil?
        data['externalEventsDetail'] = ExternalEventsDetail.build(input[:external_events_detail]) unless input[:external_events_detail].nil?
        data['ingestedEventsDetail'] = IngestedEventsDetail.build(input[:ingested_events_detail]) unless input[:ingested_events_detail].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateModelVersionStatus
    class UpdateModelVersionStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.UpdateModelVersionStatus'
        data = {}
        data['modelId'] = input[:model_id] unless input[:model_id].nil?
        data['modelType'] = input[:model_type] unless input[:model_type].nil?
        data['modelVersionNumber'] = input[:model_version_number] unless input[:model_version_number].nil?
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRuleMetadata
    class UpdateRuleMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.UpdateRuleMetadata'
        data = {}
        data['rule'] = Rule.build(input[:rule]) unless input[:rule].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRuleVersion
    class UpdateRuleVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.UpdateRuleVersion'
        data = {}
        data['rule'] = Rule.build(input[:rule]) unless input[:rule].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['expression'] = input[:expression] unless input[:expression].nil?
        data['language'] = input[:language] unless input[:language].nil?
        data['outcomes'] = NonEmptyListOfStrings.build(input[:outcomes]) unless input[:outcomes].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateVariable
    class UpdateVariable
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSHawksNestServiceFacade.UpdateVariable'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['defaultValue'] = input[:default_value] unless input[:default_value].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['variableType'] = input[:variable_type] unless input[:variable_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
