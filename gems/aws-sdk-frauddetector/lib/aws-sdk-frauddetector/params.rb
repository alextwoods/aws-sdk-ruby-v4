# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::FraudDetector
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module BatchCreateVariableError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateVariableError, context: context)
        type = Types::BatchCreateVariableError.new
        type.name = params[:name]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module BatchCreateVariableErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchCreateVariableError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchCreateVariableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateVariableInput, context: context)
        type = Types::BatchCreateVariableInput.new
        type.variable_entries = VariableEntryList.build(params[:variable_entries], context: "#{context}[:variable_entries]") unless params[:variable_entries].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module BatchCreateVariableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreateVariableOutput, context: context)
        type = Types::BatchCreateVariableOutput.new
        type.errors = BatchCreateVariableErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchGetVariableError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetVariableError, context: context)
        type = Types::BatchGetVariableError.new
        type.name = params[:name]
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module BatchGetVariableErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetVariableError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetVariableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetVariableInput, context: context)
        type = Types::BatchGetVariableInput.new
        type.names = NameList.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type
      end
    end

    module BatchGetVariableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetVariableOutput, context: context)
        type = Types::BatchGetVariableOutput.new
        type.variables = VariableList.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.errors = BatchGetVariableErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchImport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchImport, context: context)
        type = Types::BatchImport.new
        type.job_id = params[:job_id]
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type.start_time = params[:start_time]
        type.completion_time = params[:completion_time]
        type.input_path = params[:input_path]
        type.output_path = params[:output_path]
        type.event_type_name = params[:event_type_name]
        type.iam_role_arn = params[:iam_role_arn]
        type.arn = params[:arn]
        type.processed_records_count = params[:processed_records_count]
        type.failed_records_count = params[:failed_records_count]
        type.total_records_count = params[:total_records_count]
        type
      end
    end

    module BatchImportList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchImport.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchPrediction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPrediction, context: context)
        type = Types::BatchPrediction.new
        type.job_id = params[:job_id]
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type.start_time = params[:start_time]
        type.completion_time = params[:completion_time]
        type.last_heartbeat_time = params[:last_heartbeat_time]
        type.input_path = params[:input_path]
        type.output_path = params[:output_path]
        type.event_type_name = params[:event_type_name]
        type.detector_name = params[:detector_name]
        type.detector_version = params[:detector_version]
        type.iam_role_arn = params[:iam_role_arn]
        type.arn = params[:arn]
        type.processed_records_count = params[:processed_records_count]
        type.total_records_count = params[:total_records_count]
        type
      end
    end

    module BatchPredictionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchPrediction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CancelBatchImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelBatchImportJobInput, context: context)
        type = Types::CancelBatchImportJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module CancelBatchImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelBatchImportJobOutput, context: context)
        type = Types::CancelBatchImportJobOutput.new
        type
      end
    end

    module CancelBatchPredictionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelBatchPredictionJobInput, context: context)
        type = Types::CancelBatchPredictionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module CancelBatchPredictionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelBatchPredictionJobOutput, context: context)
        type = Types::CancelBatchPredictionJobOutput.new
        type
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

    module CreateBatchImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBatchImportJobInput, context: context)
        type = Types::CreateBatchImportJobInput.new
        type.job_id = params[:job_id]
        type.input_path = params[:input_path]
        type.output_path = params[:output_path]
        type.event_type_name = params[:event_type_name]
        type.iam_role_arn = params[:iam_role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateBatchImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBatchImportJobOutput, context: context)
        type = Types::CreateBatchImportJobOutput.new
        type
      end
    end

    module CreateBatchPredictionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBatchPredictionJobInput, context: context)
        type = Types::CreateBatchPredictionJobInput.new
        type.job_id = params[:job_id]
        type.input_path = params[:input_path]
        type.output_path = params[:output_path]
        type.event_type_name = params[:event_type_name]
        type.detector_name = params[:detector_name]
        type.detector_version = params[:detector_version]
        type.iam_role_arn = params[:iam_role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateBatchPredictionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBatchPredictionJobOutput, context: context)
        type = Types::CreateBatchPredictionJobOutput.new
        type
      end
    end

    module CreateDetectorVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDetectorVersionInput, context: context)
        type = Types::CreateDetectorVersionInput.new
        type.detector_id = params[:detector_id]
        type.description = params[:description]
        type.external_model_endpoints = ListOfStrings.build(params[:external_model_endpoints], context: "#{context}[:external_model_endpoints]") unless params[:external_model_endpoints].nil?
        type.rules = RuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.model_versions = ListOfModelVersions.build(params[:model_versions], context: "#{context}[:model_versions]") unless params[:model_versions].nil?
        type.rule_execution_mode = params[:rule_execution_mode]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDetectorVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDetectorVersionOutput, context: context)
        type = Types::CreateDetectorVersionOutput.new
        type.detector_id = params[:detector_id]
        type.detector_version_id = params[:detector_version_id]
        type.status = params[:status]
        type
      end
    end

    module CreateModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelInput, context: context)
        type = Types::CreateModelInput.new
        type.model_id = params[:model_id]
        type.model_type = params[:model_type]
        type.description = params[:description]
        type.event_type_name = params[:event_type_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelOutput, context: context)
        type = Types::CreateModelOutput.new
        type
      end
    end

    module CreateModelVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelVersionInput, context: context)
        type = Types::CreateModelVersionInput.new
        type.model_id = params[:model_id]
        type.model_type = params[:model_type]
        type.training_data_source = params[:training_data_source]
        type.training_data_schema = TrainingDataSchema.build(params[:training_data_schema], context: "#{context}[:training_data_schema]") unless params[:training_data_schema].nil?
        type.external_events_detail = ExternalEventsDetail.build(params[:external_events_detail], context: "#{context}[:external_events_detail]") unless params[:external_events_detail].nil?
        type.ingested_events_detail = IngestedEventsDetail.build(params[:ingested_events_detail], context: "#{context}[:ingested_events_detail]") unless params[:ingested_events_detail].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateModelVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelVersionOutput, context: context)
        type = Types::CreateModelVersionOutput.new
        type.model_id = params[:model_id]
        type.model_type = params[:model_type]
        type.model_version_number = params[:model_version_number]
        type.status = params[:status]
        type
      end
    end

    module CreateRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleInput, context: context)
        type = Types::CreateRuleInput.new
        type.rule_id = params[:rule_id]
        type.detector_id = params[:detector_id]
        type.description = params[:description]
        type.expression = params[:expression]
        type.language = params[:language]
        type.outcomes = NonEmptyListOfStrings.build(params[:outcomes], context: "#{context}[:outcomes]") unless params[:outcomes].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleOutput, context: context)
        type = Types::CreateRuleOutput.new
        type.rule = Rule.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type
      end
    end

    module CreateVariableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVariableInput, context: context)
        type = Types::CreateVariableInput.new
        type.name = params[:name]
        type.data_type = params[:data_type]
        type.data_source = params[:data_source]
        type.default_value = params[:default_value]
        type.description = params[:description]
        type.variable_type = params[:variable_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateVariableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVariableOutput, context: context)
        type = Types::CreateVariableOutput.new
        type
      end
    end

    module CsvIndexToVariableMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DataValidationMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataValidationMetrics, context: context)
        type = Types::DataValidationMetrics.new
        type.file_level_messages = FileValidationMessageList.build(params[:file_level_messages], context: "#{context}[:file_level_messages]") unless params[:file_level_messages].nil?
        type.field_level_messages = FieldValidationMessageList.build(params[:field_level_messages], context: "#{context}[:field_level_messages]") unless params[:field_level_messages].nil?
        type
      end
    end

    module DeleteBatchImportJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBatchImportJobInput, context: context)
        type = Types::DeleteBatchImportJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DeleteBatchImportJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBatchImportJobOutput, context: context)
        type = Types::DeleteBatchImportJobOutput.new
        type
      end
    end

    module DeleteBatchPredictionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBatchPredictionJobInput, context: context)
        type = Types::DeleteBatchPredictionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DeleteBatchPredictionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBatchPredictionJobOutput, context: context)
        type = Types::DeleteBatchPredictionJobOutput.new
        type
      end
    end

    module DeleteDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDetectorInput, context: context)
        type = Types::DeleteDetectorInput.new
        type.detector_id = params[:detector_id]
        type
      end
    end

    module DeleteDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDetectorOutput, context: context)
        type = Types::DeleteDetectorOutput.new
        type
      end
    end

    module DeleteDetectorVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDetectorVersionInput, context: context)
        type = Types::DeleteDetectorVersionInput.new
        type.detector_id = params[:detector_id]
        type.detector_version_id = params[:detector_version_id]
        type
      end
    end

    module DeleteDetectorVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDetectorVersionOutput, context: context)
        type = Types::DeleteDetectorVersionOutput.new
        type
      end
    end

    module DeleteEntityTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEntityTypeInput, context: context)
        type = Types::DeleteEntityTypeInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteEntityTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEntityTypeOutput, context: context)
        type = Types::DeleteEntityTypeOutput.new
        type
      end
    end

    module DeleteEventInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventInput, context: context)
        type = Types::DeleteEventInput.new
        type.event_id = params[:event_id]
        type.event_type_name = params[:event_type_name]
        type.delete_audit_history = params[:delete_audit_history]
        type
      end
    end

    module DeleteEventOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventOutput, context: context)
        type = Types::DeleteEventOutput.new
        type
      end
    end

    module DeleteEventTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventTypeInput, context: context)
        type = Types::DeleteEventTypeInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteEventTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventTypeOutput, context: context)
        type = Types::DeleteEventTypeOutput.new
        type
      end
    end

    module DeleteEventsByEventTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventsByEventTypeInput, context: context)
        type = Types::DeleteEventsByEventTypeInput.new
        type.event_type_name = params[:event_type_name]
        type
      end
    end

    module DeleteEventsByEventTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventsByEventTypeOutput, context: context)
        type = Types::DeleteEventsByEventTypeOutput.new
        type.event_type_name = params[:event_type_name]
        type.events_deletion_status = params[:events_deletion_status]
        type
      end
    end

    module DeleteExternalModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExternalModelInput, context: context)
        type = Types::DeleteExternalModelInput.new
        type.model_endpoint = params[:model_endpoint]
        type
      end
    end

    module DeleteExternalModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExternalModelOutput, context: context)
        type = Types::DeleteExternalModelOutput.new
        type
      end
    end

    module DeleteLabelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLabelInput, context: context)
        type = Types::DeleteLabelInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteLabelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLabelOutput, context: context)
        type = Types::DeleteLabelOutput.new
        type
      end
    end

    module DeleteModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelInput, context: context)
        type = Types::DeleteModelInput.new
        type.model_id = params[:model_id]
        type.model_type = params[:model_type]
        type
      end
    end

    module DeleteModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelOutput, context: context)
        type = Types::DeleteModelOutput.new
        type
      end
    end

    module DeleteModelVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelVersionInput, context: context)
        type = Types::DeleteModelVersionInput.new
        type.model_id = params[:model_id]
        type.model_type = params[:model_type]
        type.model_version_number = params[:model_version_number]
        type
      end
    end

    module DeleteModelVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelVersionOutput, context: context)
        type = Types::DeleteModelVersionOutput.new
        type
      end
    end

    module DeleteOutcomeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOutcomeInput, context: context)
        type = Types::DeleteOutcomeInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteOutcomeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOutcomeOutput, context: context)
        type = Types::DeleteOutcomeOutput.new
        type
      end
    end

    module DeleteRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleInput, context: context)
        type = Types::DeleteRuleInput.new
        type.rule = Rule.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type
      end
    end

    module DeleteRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleOutput, context: context)
        type = Types::DeleteRuleOutput.new
        type
      end
    end

    module DeleteVariableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVariableInput, context: context)
        type = Types::DeleteVariableInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteVariableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVariableOutput, context: context)
        type = Types::DeleteVariableOutput.new
        type
      end
    end

    module DescribeDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDetectorInput, context: context)
        type = Types::DescribeDetectorInput.new
        type.detector_id = params[:detector_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDetectorOutput, context: context)
        type = Types::DescribeDetectorOutput.new
        type.detector_id = params[:detector_id]
        type.detector_version_summaries = DetectorVersionSummaryList.build(params[:detector_version_summaries], context: "#{context}[:detector_version_summaries]") unless params[:detector_version_summaries].nil?
        type.next_token = params[:next_token]
        type.arn = params[:arn]
        type
      end
    end

    module DescribeModelVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelVersionsInput, context: context)
        type = Types::DescribeModelVersionsInput.new
        type.model_id = params[:model_id]
        type.model_version_number = params[:model_version_number]
        type.model_type = params[:model_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeModelVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelVersionsOutput, context: context)
        type = Types::DescribeModelVersionsOutput.new
        type.model_version_details = ModelVersionDetailList.build(params[:model_version_details], context: "#{context}[:model_version_details]") unless params[:model_version_details].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Detector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Detector, context: context)
        type = Types::Detector.new
        type.detector_id = params[:detector_id]
        type.description = params[:description]
        type.event_type_name = params[:event_type_name]
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type.arn = params[:arn]
        type
      end
    end

    module DetectorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Detector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DetectorVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectorVersionSummary, context: context)
        type = Types::DetectorVersionSummary.new
        type.detector_version_id = params[:detector_version_id]
        type.status = params[:status]
        type.description = params[:description]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module DetectorVersionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DetectorVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Entity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Entity, context: context)
        type = Types::Entity.new
        type.entity_type = params[:entity_type]
        type.entity_id = params[:entity_id]
        type
      end
    end

    module EntityType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityType, context: context)
        type = Types::EntityType.new
        type.name = params[:name]
        type.description = params[:description]
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type.arn = params[:arn]
        type
      end
    end

    module EvaluatedExternalModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluatedExternalModel, context: context)
        type = Types::EvaluatedExternalModel.new
        type.model_endpoint = params[:model_endpoint]
        type.use_event_variables = params[:use_event_variables]
        type.input_variables = MapOfStrings.build(params[:input_variables], context: "#{context}[:input_variables]") unless params[:input_variables].nil?
        type.output_variables = MapOfStrings.build(params[:output_variables], context: "#{context}[:output_variables]") unless params[:output_variables].nil?
        type
      end
    end

    module EvaluatedModelVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluatedModelVersion, context: context)
        type = Types::EvaluatedModelVersion.new
        type.model_id = params[:model_id]
        type.model_version = params[:model_version]
        type.model_type = params[:model_type]
        type.evaluations = ListOfModelVersionEvaluations.build(params[:evaluations], context: "#{context}[:evaluations]") unless params[:evaluations].nil?
        type
      end
    end

    module EvaluatedRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluatedRule, context: context)
        type = Types::EvaluatedRule.new
        type.rule_id = params[:rule_id]
        type.rule_version = params[:rule_version]
        type.expression = params[:expression]
        type.expression_with_values = params[:expression_with_values]
        type.outcomes = ListOfStrings.build(params[:outcomes], context: "#{context}[:outcomes]") unless params[:outcomes].nil?
        type.evaluated = params[:evaluated]
        type.matched = params[:matched]
        type
      end
    end

    module EvaluatedRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EvaluatedRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.event_id = params[:event_id]
        type.event_type_name = params[:event_type_name]
        type.event_timestamp = params[:event_timestamp]
        type.event_variables = EventAttributeMap.build(params[:event_variables], context: "#{context}[:event_variables]") unless params[:event_variables].nil?
        type.current_label = params[:current_label]
        type.label_timestamp = params[:label_timestamp]
        type.entities = ListOfEntities.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type
      end
    end

    module EventAttributeMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module EventPredictionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventPredictionSummary, context: context)
        type = Types::EventPredictionSummary.new
        type.event_id = params[:event_id]
        type.event_type_name = params[:event_type_name]
        type.event_timestamp = params[:event_timestamp]
        type.prediction_timestamp = params[:prediction_timestamp]
        type.detector_id = params[:detector_id]
        type.detector_version_id = params[:detector_version_id]
        type
      end
    end

    module EventType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventType, context: context)
        type = Types::EventType.new
        type.name = params[:name]
        type.description = params[:description]
        type.event_variables = ListOfStrings.build(params[:event_variables], context: "#{context}[:event_variables]") unless params[:event_variables].nil?
        type.labels = ListOfStrings.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.entity_types = NonEmptyListOfStrings.build(params[:entity_types], context: "#{context}[:entity_types]") unless params[:entity_types].nil?
        type.event_ingestion = params[:event_ingestion]
        type.ingested_event_statistics = IngestedEventStatistics.build(params[:ingested_event_statistics], context: "#{context}[:ingested_event_statistics]") unless params[:ingested_event_statistics].nil?
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type.arn = params[:arn]
        type
      end
    end

    module EventVariableMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module EventVariableSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventVariableSummary, context: context)
        type = Types::EventVariableSummary.new
        type.name = params[:name]
        type.value = params[:value]
        type.source = params[:source]
        type
      end
    end

    module ExternalEventsDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExternalEventsDetail, context: context)
        type = Types::ExternalEventsDetail.new
        type.data_location = params[:data_location]
        type.data_access_role_arn = params[:data_access_role_arn]
        type
      end
    end

    module ExternalModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExternalModel, context: context)
        type = Types::ExternalModel.new
        type.model_endpoint = params[:model_endpoint]
        type.model_source = params[:model_source]
        type.invoke_model_endpoint_role_arn = params[:invoke_model_endpoint_role_arn]
        type.input_configuration = ModelInputConfiguration.build(params[:input_configuration], context: "#{context}[:input_configuration]") unless params[:input_configuration].nil?
        type.output_configuration = ModelOutputConfiguration.build(params[:output_configuration], context: "#{context}[:output_configuration]") unless params[:output_configuration].nil?
        type.model_endpoint_status = params[:model_endpoint_status]
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type.arn = params[:arn]
        type
      end
    end

    module ExternalModelEndpointDataBlobMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ModelEndpointDataBlob.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ExternalModelList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExternalModel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExternalModelOutputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExternalModelOutputs, context: context)
        type = Types::ExternalModelOutputs.new
        type.external_model = ExternalModelSummary.build(params[:external_model], context: "#{context}[:external_model]") unless params[:external_model].nil?
        type.outputs = ExternalModelPredictionMap.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type
      end
    end

    module ExternalModelPredictionMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ExternalModelSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExternalModelSummary, context: context)
        type = Types::ExternalModelSummary.new
        type.model_endpoint = params[:model_endpoint]
        type.model_source = params[:model_source]
        type
      end
    end

    module FieldValidationMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FieldValidationMessage, context: context)
        type = Types::FieldValidationMessage.new
        type.field_name = params[:field_name]
        type.identifier = params[:identifier]
        type.title = params[:title]
        type.content = params[:content]
        type.type = params[:type]
        type
      end
    end

    module FileValidationMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileValidationMessage, context: context)
        type = Types::FileValidationMessage.new
        type.title = params[:title]
        type.content = params[:content]
        type.type = params[:type]
        type
      end
    end

    module FilterCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterCondition, context: context)
        type = Types::FilterCondition.new
        type.value = params[:value]
        type
      end
    end

    module GetBatchImportJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBatchImportJobsInput, context: context)
        type = Types::GetBatchImportJobsInput.new
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetBatchImportJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBatchImportJobsOutput, context: context)
        type = Types::GetBatchImportJobsOutput.new
        type.batch_imports = BatchImportList.build(params[:batch_imports], context: "#{context}[:batch_imports]") unless params[:batch_imports].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetBatchPredictionJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBatchPredictionJobsInput, context: context)
        type = Types::GetBatchPredictionJobsInput.new
        type.job_id = params[:job_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetBatchPredictionJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBatchPredictionJobsOutput, context: context)
        type = Types::GetBatchPredictionJobsOutput.new
        type.batch_predictions = BatchPredictionList.build(params[:batch_predictions], context: "#{context}[:batch_predictions]") unless params[:batch_predictions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDeleteEventsByEventTypeStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeleteEventsByEventTypeStatusInput, context: context)
        type = Types::GetDeleteEventsByEventTypeStatusInput.new
        type.event_type_name = params[:event_type_name]
        type
      end
    end

    module GetDeleteEventsByEventTypeStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeleteEventsByEventTypeStatusOutput, context: context)
        type = Types::GetDeleteEventsByEventTypeStatusOutput.new
        type.event_type_name = params[:event_type_name]
        type.events_deletion_status = params[:events_deletion_status]
        type
      end
    end

    module GetDetectorVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDetectorVersionInput, context: context)
        type = Types::GetDetectorVersionInput.new
        type.detector_id = params[:detector_id]
        type.detector_version_id = params[:detector_version_id]
        type
      end
    end

    module GetDetectorVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDetectorVersionOutput, context: context)
        type = Types::GetDetectorVersionOutput.new
        type.detector_id = params[:detector_id]
        type.detector_version_id = params[:detector_version_id]
        type.description = params[:description]
        type.external_model_endpoints = ListOfStrings.build(params[:external_model_endpoints], context: "#{context}[:external_model_endpoints]") unless params[:external_model_endpoints].nil?
        type.model_versions = ListOfModelVersions.build(params[:model_versions], context: "#{context}[:model_versions]") unless params[:model_versions].nil?
        type.rules = RuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.status = params[:status]
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type.rule_execution_mode = params[:rule_execution_mode]
        type.arn = params[:arn]
        type
      end
    end

    module GetDetectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDetectorsInput, context: context)
        type = Types::GetDetectorsInput.new
        type.detector_id = params[:detector_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetDetectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDetectorsOutput, context: context)
        type = Types::GetDetectorsOutput.new
        type.detectors = DetectorList.build(params[:detectors], context: "#{context}[:detectors]") unless params[:detectors].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetEntityTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEntityTypesInput, context: context)
        type = Types::GetEntityTypesInput.new
        type.name = params[:name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetEntityTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEntityTypesOutput, context: context)
        type = Types::GetEntityTypesOutput.new
        type.entity_types = EntityTypeList.build(params[:entity_types], context: "#{context}[:entity_types]") unless params[:entity_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetEventInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventInput, context: context)
        type = Types::GetEventInput.new
        type.event_id = params[:event_id]
        type.event_type_name = params[:event_type_name]
        type
      end
    end

    module GetEventOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventOutput, context: context)
        type = Types::GetEventOutput.new
        type.event = Event.build(params[:event], context: "#{context}[:event]") unless params[:event].nil?
        type
      end
    end

    module GetEventPredictionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventPredictionInput, context: context)
        type = Types::GetEventPredictionInput.new
        type.detector_id = params[:detector_id]
        type.detector_version_id = params[:detector_version_id]
        type.event_id = params[:event_id]
        type.event_type_name = params[:event_type_name]
        type.entities = ListOfEntities.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.event_timestamp = params[:event_timestamp]
        type.event_variables = EventVariableMap.build(params[:event_variables], context: "#{context}[:event_variables]") unless params[:event_variables].nil?
        type.external_model_endpoint_data_blobs = ExternalModelEndpointDataBlobMap.build(params[:external_model_endpoint_data_blobs], context: "#{context}[:external_model_endpoint_data_blobs]") unless params[:external_model_endpoint_data_blobs].nil?
        type
      end
    end

    module GetEventPredictionMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventPredictionMetadataInput, context: context)
        type = Types::GetEventPredictionMetadataInput.new
        type.event_id = params[:event_id]
        type.event_type_name = params[:event_type_name]
        type.detector_id = params[:detector_id]
        type.detector_version_id = params[:detector_version_id]
        type.prediction_timestamp = params[:prediction_timestamp]
        type
      end
    end

    module GetEventPredictionMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventPredictionMetadataOutput, context: context)
        type = Types::GetEventPredictionMetadataOutput.new
        type.event_id = params[:event_id]
        type.event_type_name = params[:event_type_name]
        type.entity_id = params[:entity_id]
        type.entity_type = params[:entity_type]
        type.event_timestamp = params[:event_timestamp]
        type.detector_id = params[:detector_id]
        type.detector_version_id = params[:detector_version_id]
        type.detector_version_status = params[:detector_version_status]
        type.event_variables = ListOfEventVariableSummaries.build(params[:event_variables], context: "#{context}[:event_variables]") unless params[:event_variables].nil?
        type.rules = EvaluatedRuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.rule_execution_mode = params[:rule_execution_mode]
        type.outcomes = ListOfStrings.build(params[:outcomes], context: "#{context}[:outcomes]") unless params[:outcomes].nil?
        type.evaluated_model_versions = ListOfEvaluatedModelVersions.build(params[:evaluated_model_versions], context: "#{context}[:evaluated_model_versions]") unless params[:evaluated_model_versions].nil?
        type.evaluated_external_models = ListOfEvaluatedExternalModels.build(params[:evaluated_external_models], context: "#{context}[:evaluated_external_models]") unless params[:evaluated_external_models].nil?
        type.prediction_timestamp = params[:prediction_timestamp]
        type
      end
    end

    module GetEventPredictionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventPredictionOutput, context: context)
        type = Types::GetEventPredictionOutput.new
        type.model_scores = ListOfModelScores.build(params[:model_scores], context: "#{context}[:model_scores]") unless params[:model_scores].nil?
        type.rule_results = ListOfRuleResults.build(params[:rule_results], context: "#{context}[:rule_results]") unless params[:rule_results].nil?
        type.external_model_outputs = ListOfExternalModelOutputs.build(params[:external_model_outputs], context: "#{context}[:external_model_outputs]") unless params[:external_model_outputs].nil?
        type
      end
    end

    module GetEventTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventTypesInput, context: context)
        type = Types::GetEventTypesInput.new
        type.name = params[:name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetEventTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventTypesOutput, context: context)
        type = Types::GetEventTypesOutput.new
        type.event_types = EventTypeList.build(params[:event_types], context: "#{context}[:event_types]") unless params[:event_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetExternalModelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExternalModelsInput, context: context)
        type = Types::GetExternalModelsInput.new
        type.model_endpoint = params[:model_endpoint]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetExternalModelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExternalModelsOutput, context: context)
        type = Types::GetExternalModelsOutput.new
        type.external_models = ExternalModelList.build(params[:external_models], context: "#{context}[:external_models]") unless params[:external_models].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetKMSEncryptionKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetKMSEncryptionKeyInput, context: context)
        type = Types::GetKMSEncryptionKeyInput.new
        type
      end
    end

    module GetKMSEncryptionKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetKMSEncryptionKeyOutput, context: context)
        type = Types::GetKMSEncryptionKeyOutput.new
        type.kms_key = KMSKey.build(params[:kms_key], context: "#{context}[:kms_key]") unless params[:kms_key].nil?
        type
      end
    end

    module GetLabelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLabelsInput, context: context)
        type = Types::GetLabelsInput.new
        type.name = params[:name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetLabelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLabelsOutput, context: context)
        type = Types::GetLabelsOutput.new
        type.labels = LabelList.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetModelVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelVersionInput, context: context)
        type = Types::GetModelVersionInput.new
        type.model_id = params[:model_id]
        type.model_type = params[:model_type]
        type.model_version_number = params[:model_version_number]
        type
      end
    end

    module GetModelVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelVersionOutput, context: context)
        type = Types::GetModelVersionOutput.new
        type.model_id = params[:model_id]
        type.model_type = params[:model_type]
        type.model_version_number = params[:model_version_number]
        type.training_data_source = params[:training_data_source]
        type.training_data_schema = TrainingDataSchema.build(params[:training_data_schema], context: "#{context}[:training_data_schema]") unless params[:training_data_schema].nil?
        type.external_events_detail = ExternalEventsDetail.build(params[:external_events_detail], context: "#{context}[:external_events_detail]") unless params[:external_events_detail].nil?
        type.ingested_events_detail = IngestedEventsDetail.build(params[:ingested_events_detail], context: "#{context}[:ingested_events_detail]") unless params[:ingested_events_detail].nil?
        type.status = params[:status]
        type.arn = params[:arn]
        type
      end
    end

    module GetModelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelsInput, context: context)
        type = Types::GetModelsInput.new
        type.model_id = params[:model_id]
        type.model_type = params[:model_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetModelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelsOutput, context: context)
        type = Types::GetModelsOutput.new
        type.next_token = params[:next_token]
        type.models = ModelList.build(params[:models], context: "#{context}[:models]") unless params[:models].nil?
        type
      end
    end

    module GetOutcomesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOutcomesInput, context: context)
        type = Types::GetOutcomesInput.new
        type.name = params[:name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetOutcomesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOutcomesOutput, context: context)
        type = Types::GetOutcomesOutput.new
        type.outcomes = OutcomeList.build(params[:outcomes], context: "#{context}[:outcomes]") unless params[:outcomes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRulesInput, context: context)
        type = Types::GetRulesInput.new
        type.rule_id = params[:rule_id]
        type.detector_id = params[:detector_id]
        type.rule_version = params[:rule_version]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRulesOutput, context: context)
        type = Types::GetRulesOutput.new
        type.rule_details = RuleDetailList.build(params[:rule_details], context: "#{context}[:rule_details]") unless params[:rule_details].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetVariablesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVariablesInput, context: context)
        type = Types::GetVariablesInput.new
        type.name = params[:name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetVariablesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVariablesOutput, context: context)
        type = Types::GetVariablesOutput.new
        type.variables = VariableList.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module IngestedEventStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IngestedEventStatistics, context: context)
        type = Types::IngestedEventStatistics.new
        type.number_of_events = params[:number_of_events]
        type.event_data_size_in_bytes = params[:event_data_size_in_bytes]
        type.least_recent_event = params[:least_recent_event]
        type.most_recent_event = params[:most_recent_event]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module IngestedEventsDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IngestedEventsDetail, context: context)
        type = Types::IngestedEventsDetail.new
        type.ingested_events_time_window = IngestedEventsTimeWindow.build(params[:ingested_events_time_window], context: "#{context}[:ingested_events_time_window]") unless params[:ingested_events_time_window].nil?
        type
      end
    end

    module IngestedEventsTimeWindow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IngestedEventsTimeWindow, context: context)
        type = Types::IngestedEventsTimeWindow.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
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

    module JsonKeyToVariableMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module KMSKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSKey, context: context)
        type = Types::KMSKey.new
        type.kms_encryption_key_arn = params[:kms_encryption_key_arn]
        type
      end
    end

    module Label
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Label, context: context)
        type = Types::Label.new
        type.name = params[:name]
        type.description = params[:description]
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type.arn = params[:arn]
        type
      end
    end

    module LabelSchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelSchema, context: context)
        type = Types::LabelSchema.new
        type.label_mapper = LabelMapper.build(params[:label_mapper], context: "#{context}[:label_mapper]") unless params[:label_mapper].nil?
        type.unlabeled_events_treatment = params[:unlabeled_events_treatment]
        type
      end
    end

    module ListEventPredictionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventPredictionsInput, context: context)
        type = Types::ListEventPredictionsInput.new
        type.event_id = FilterCondition.build(params[:event_id], context: "#{context}[:event_id]") unless params[:event_id].nil?
        type.event_type = FilterCondition.build(params[:event_type], context: "#{context}[:event_type]") unless params[:event_type].nil?
        type.detector_id = FilterCondition.build(params[:detector_id], context: "#{context}[:detector_id]") unless params[:detector_id].nil?
        type.detector_version_id = FilterCondition.build(params[:detector_version_id], context: "#{context}[:detector_version_id]") unless params[:detector_version_id].nil?
        type.prediction_time_range = PredictionTimeRange.build(params[:prediction_time_range], context: "#{context}[:prediction_time_range]") unless params[:prediction_time_range].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEventPredictionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventPredictionsOutput, context: context)
        type = Types::ListEventPredictionsOutput.new
        type.event_prediction_summaries = ListOfEventPredictionSummaries.build(params[:event_prediction_summaries], context: "#{context}[:event_prediction_summaries]") unless params[:event_prediction_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfEvaluatedExternalModels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EvaluatedExternalModel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfEvaluatedModelVersions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EvaluatedModelVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfEventPredictionSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventPredictionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfEventVariableSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventVariableSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfExternalModelOutputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExternalModelOutputs.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfLogOddsMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogOddsMetric.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfModelScores
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelScores.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfModelVersionEvaluations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelVersionEvaluation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfModelVersions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfRuleResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfStrings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LogOddsMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogOddsMetric, context: context)
        type = Types::LogOddsMetric.new
        type.variable_name = params[:variable_name]
        type.variable_type = params[:variable_type]
        type.variable_importance = params[:variable_importance]
        type
      end
    end

    module MapOfStrings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module MetricDataPoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricDataPoint, context: context)
        type = Types::MetricDataPoint.new
        type.fpr = params[:fpr]
        type.precision = params[:precision]
        type.tpr = params[:tpr]
        type.threshold = params[:threshold]
        type
      end
    end

    module Model
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Model, context: context)
        type = Types::Model.new
        type.model_id = params[:model_id]
        type.model_type = params[:model_type]
        type.description = params[:description]
        type.event_type_name = params[:event_type_name]
        type.created_time = params[:created_time]
        type.last_updated_time = params[:last_updated_time]
        type.arn = params[:arn]
        type
      end
    end

    module ModelEndpointDataBlob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelEndpointDataBlob, context: context)
        type = Types::ModelEndpointDataBlob.new
        type.byte_buffer = params[:byte_buffer]
        type.content_type = params[:content_type]
        type
      end
    end

    module ModelInputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelInputConfiguration, context: context)
        type = Types::ModelInputConfiguration.new
        type.event_type_name = params[:event_type_name]
        type.format = params[:format]
        type.use_event_variables = params[:use_event_variables]
        type.json_input_template = params[:json_input_template]
        type.csv_input_template = params[:csv_input_template]
        type
      end
    end

    module ModelOutputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelOutputConfiguration, context: context)
        type = Types::ModelOutputConfiguration.new
        type.format = params[:format]
        type.json_key_to_variable_map = JsonKeyToVariableMap.build(params[:json_key_to_variable_map], context: "#{context}[:json_key_to_variable_map]") unless params[:json_key_to_variable_map].nil?
        type.csv_index_to_variable_map = CsvIndexToVariableMap.build(params[:csv_index_to_variable_map], context: "#{context}[:csv_index_to_variable_map]") unless params[:csv_index_to_variable_map].nil?
        type
      end
    end

    module ModelPredictionMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ModelScores
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelScores, context: context)
        type = Types::ModelScores.new
        type.model_version = ModelVersion.build(params[:model_version], context: "#{context}[:model_version]") unless params[:model_version].nil?
        type.scores = ModelPredictionMap.build(params[:scores], context: "#{context}[:scores]") unless params[:scores].nil?
        type
      end
    end

    module ModelVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelVersion, context: context)
        type = Types::ModelVersion.new
        type.model_id = params[:model_id]
        type.model_type = params[:model_type]
        type.model_version_number = params[:model_version_number]
        type.arn = params[:arn]
        type
      end
    end

    module ModelVersionDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelVersionDetail, context: context)
        type = Types::ModelVersionDetail.new
        type.model_id = params[:model_id]
        type.model_type = params[:model_type]
        type.model_version_number = params[:model_version_number]
        type.status = params[:status]
        type.training_data_source = params[:training_data_source]
        type.training_data_schema = TrainingDataSchema.build(params[:training_data_schema], context: "#{context}[:training_data_schema]") unless params[:training_data_schema].nil?
        type.external_events_detail = ExternalEventsDetail.build(params[:external_events_detail], context: "#{context}[:external_events_detail]") unless params[:external_events_detail].nil?
        type.ingested_events_detail = IngestedEventsDetail.build(params[:ingested_events_detail], context: "#{context}[:ingested_events_detail]") unless params[:ingested_events_detail].nil?
        type.training_result = TrainingResult.build(params[:training_result], context: "#{context}[:training_result]") unless params[:training_result].nil?
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type.arn = params[:arn]
        type
      end
    end

    module ModelVersionEvaluation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelVersionEvaluation, context: context)
        type = Types::ModelVersionEvaluation.new
        type.output_variable_name = params[:output_variable_name]
        type.evaluation_score = params[:evaluation_score]
        type.prediction_explanations = PredictionExplanations.build(params[:prediction_explanations], context: "#{context}[:prediction_explanations]") unless params[:prediction_explanations].nil?
        type
      end
    end

    module NameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NonEmptyListOfStrings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Outcome
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Outcome, context: context)
        type = Types::Outcome.new
        type.name = params[:name]
        type.description = params[:description]
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type.arn = params[:arn]
        type
      end
    end

    module OutcomeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Outcome.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PredictionExplanations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictionExplanations, context: context)
        type = Types::PredictionExplanations.new
        type.variable_impact_explanations = ListOfVariableImpactExplanations.build(params[:variable_impact_explanations], context: "#{context}[:variable_impact_explanations]") unless params[:variable_impact_explanations].nil?
        type
      end
    end

    module PredictionTimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictionTimeRange, context: context)
        type = Types::PredictionTimeRange.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module PutDetectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDetectorInput, context: context)
        type = Types::PutDetectorInput.new
        type.detector_id = params[:detector_id]
        type.description = params[:description]
        type.event_type_name = params[:event_type_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutDetectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDetectorOutput, context: context)
        type = Types::PutDetectorOutput.new
        type
      end
    end

    module PutEntityTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEntityTypeInput, context: context)
        type = Types::PutEntityTypeInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutEntityTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEntityTypeOutput, context: context)
        type = Types::PutEntityTypeOutput.new
        type
      end
    end

    module PutEventTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventTypeInput, context: context)
        type = Types::PutEventTypeInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.event_variables = NonEmptyListOfStrings.build(params[:event_variables], context: "#{context}[:event_variables]") unless params[:event_variables].nil?
        type.labels = ListOfStrings.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.entity_types = NonEmptyListOfStrings.build(params[:entity_types], context: "#{context}[:entity_types]") unless params[:entity_types].nil?
        type.event_ingestion = params[:event_ingestion]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutEventTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventTypeOutput, context: context)
        type = Types::PutEventTypeOutput.new
        type
      end
    end

    module PutExternalModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutExternalModelInput, context: context)
        type = Types::PutExternalModelInput.new
        type.model_endpoint = params[:model_endpoint]
        type.model_source = params[:model_source]
        type.invoke_model_endpoint_role_arn = params[:invoke_model_endpoint_role_arn]
        type.input_configuration = ModelInputConfiguration.build(params[:input_configuration], context: "#{context}[:input_configuration]") unless params[:input_configuration].nil?
        type.output_configuration = ModelOutputConfiguration.build(params[:output_configuration], context: "#{context}[:output_configuration]") unless params[:output_configuration].nil?
        type.model_endpoint_status = params[:model_endpoint_status]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutExternalModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutExternalModelOutput, context: context)
        type = Types::PutExternalModelOutput.new
        type
      end
    end

    module PutKMSEncryptionKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutKMSEncryptionKeyInput, context: context)
        type = Types::PutKMSEncryptionKeyInput.new
        type.kms_encryption_key_arn = params[:kms_encryption_key_arn]
        type
      end
    end

    module PutKMSEncryptionKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutKMSEncryptionKeyOutput, context: context)
        type = Types::PutKMSEncryptionKeyOutput.new
        type
      end
    end

    module PutLabelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLabelInput, context: context)
        type = Types::PutLabelInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutLabelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLabelOutput, context: context)
        type = Types::PutLabelOutput.new
        type
      end
    end

    module PutOutcomeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutOutcomeInput, context: context)
        type = Types::PutOutcomeInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutOutcomeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutOutcomeOutput, context: context)
        type = Types::PutOutcomeOutput.new
        type
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

    module ResourceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceUnavailableException, context: context)
        type = Types::ResourceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module Rule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Rule, context: context)
        type = Types::Rule.new
        type.detector_id = params[:detector_id]
        type.rule_id = params[:rule_id]
        type.rule_version = params[:rule_version]
        type
      end
    end

    module RuleDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleDetail, context: context)
        type = Types::RuleDetail.new
        type.rule_id = params[:rule_id]
        type.description = params[:description]
        type.detector_id = params[:detector_id]
        type.rule_version = params[:rule_version]
        type.expression = params[:expression]
        type.language = params[:language]
        type.outcomes = NonEmptyListOfStrings.build(params[:outcomes], context: "#{context}[:outcomes]") unless params[:outcomes].nil?
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type.arn = params[:arn]
        type
      end
    end

    module RuleDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module RuleResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleResult, context: context)
        type = Types::RuleResult.new
        type.rule_id = params[:rule_id]
        type.outcomes = ListOfStrings.build(params[:outcomes], context: "#{context}[:outcomes]") unless params[:outcomes].nil?
        type
      end
    end

    module SendEventInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendEventInput, context: context)
        type = Types::SendEventInput.new
        type.event_id = params[:event_id]
        type.event_type_name = params[:event_type_name]
        type.event_timestamp = params[:event_timestamp]
        type.event_variables = EventVariableMap.build(params[:event_variables], context: "#{context}[:event_variables]") unless params[:event_variables].nil?
        type.assigned_label = params[:assigned_label]
        type.label_timestamp = params[:label_timestamp]
        type.entities = ListOfEntities.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type
      end
    end

    module SendEventOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendEventOutput, context: context)
        type = Types::SendEventOutput.new
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TrainingDataSchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrainingDataSchema, context: context)
        type = Types::TrainingDataSchema.new
        type.model_variables = ListOfStrings.build(params[:model_variables], context: "#{context}[:model_variables]") unless params[:model_variables].nil?
        type.label_schema = LabelSchema.build(params[:label_schema], context: "#{context}[:label_schema]") unless params[:label_schema].nil?
        type
      end
    end

    module TrainingMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrainingMetrics, context: context)
        type = Types::TrainingMetrics.new
        type.auc = params[:auc]
        type.metric_data_points = MetricDataPointsList.build(params[:metric_data_points], context: "#{context}[:metric_data_points]") unless params[:metric_data_points].nil?
        type
      end
    end

    module TrainingResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrainingResult, context: context)
        type = Types::TrainingResult.new
        type.data_validation_metrics = DataValidationMetrics.build(params[:data_validation_metrics], context: "#{context}[:data_validation_metrics]") unless params[:data_validation_metrics].nil?
        type.training_metrics = TrainingMetrics.build(params[:training_metrics], context: "#{context}[:training_metrics]") unless params[:training_metrics].nil?
        type.variable_importance_metrics = VariableImportanceMetrics.build(params[:variable_importance_metrics], context: "#{context}[:variable_importance_metrics]") unless params[:variable_importance_metrics].nil?
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

    module UpdateDetectorVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDetectorVersionInput, context: context)
        type = Types::UpdateDetectorVersionInput.new
        type.detector_id = params[:detector_id]
        type.detector_version_id = params[:detector_version_id]
        type.external_model_endpoints = ListOfStrings.build(params[:external_model_endpoints], context: "#{context}[:external_model_endpoints]") unless params[:external_model_endpoints].nil?
        type.rules = RuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.description = params[:description]
        type.model_versions = ListOfModelVersions.build(params[:model_versions], context: "#{context}[:model_versions]") unless params[:model_versions].nil?
        type.rule_execution_mode = params[:rule_execution_mode]
        type
      end
    end

    module UpdateDetectorVersionMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDetectorVersionMetadataInput, context: context)
        type = Types::UpdateDetectorVersionMetadataInput.new
        type.detector_id = params[:detector_id]
        type.detector_version_id = params[:detector_version_id]
        type.description = params[:description]
        type
      end
    end

    module UpdateDetectorVersionMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDetectorVersionMetadataOutput, context: context)
        type = Types::UpdateDetectorVersionMetadataOutput.new
        type
      end
    end

    module UpdateDetectorVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDetectorVersionOutput, context: context)
        type = Types::UpdateDetectorVersionOutput.new
        type
      end
    end

    module UpdateDetectorVersionStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDetectorVersionStatusInput, context: context)
        type = Types::UpdateDetectorVersionStatusInput.new
        type.detector_id = params[:detector_id]
        type.detector_version_id = params[:detector_version_id]
        type.status = params[:status]
        type
      end
    end

    module UpdateDetectorVersionStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDetectorVersionStatusOutput, context: context)
        type = Types::UpdateDetectorVersionStatusOutput.new
        type
      end
    end

    module UpdateEventLabelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventLabelInput, context: context)
        type = Types::UpdateEventLabelInput.new
        type.event_id = params[:event_id]
        type.event_type_name = params[:event_type_name]
        type.assigned_label = params[:assigned_label]
        type.label_timestamp = params[:label_timestamp]
        type
      end
    end

    module UpdateEventLabelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventLabelOutput, context: context)
        type = Types::UpdateEventLabelOutput.new
        type
      end
    end

    module UpdateModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateModelInput, context: context)
        type = Types::UpdateModelInput.new
        type.model_id = params[:model_id]
        type.model_type = params[:model_type]
        type.description = params[:description]
        type
      end
    end

    module UpdateModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateModelOutput, context: context)
        type = Types::UpdateModelOutput.new
        type
      end
    end

    module UpdateModelVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateModelVersionInput, context: context)
        type = Types::UpdateModelVersionInput.new
        type.model_id = params[:model_id]
        type.model_type = params[:model_type]
        type.major_version_number = params[:major_version_number]
        type.external_events_detail = ExternalEventsDetail.build(params[:external_events_detail], context: "#{context}[:external_events_detail]") unless params[:external_events_detail].nil?
        type.ingested_events_detail = IngestedEventsDetail.build(params[:ingested_events_detail], context: "#{context}[:ingested_events_detail]") unless params[:ingested_events_detail].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateModelVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateModelVersionOutput, context: context)
        type = Types::UpdateModelVersionOutput.new
        type.model_id = params[:model_id]
        type.model_type = params[:model_type]
        type.model_version_number = params[:model_version_number]
        type.status = params[:status]
        type
      end
    end

    module UpdateModelVersionStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateModelVersionStatusInput, context: context)
        type = Types::UpdateModelVersionStatusInput.new
        type.model_id = params[:model_id]
        type.model_type = params[:model_type]
        type.model_version_number = params[:model_version_number]
        type.status = params[:status]
        type
      end
    end

    module UpdateModelVersionStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateModelVersionStatusOutput, context: context)
        type = Types::UpdateModelVersionStatusOutput.new
        type
      end
    end

    module UpdateRuleMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuleMetadataInput, context: context)
        type = Types::UpdateRuleMetadataInput.new
        type.rule = Rule.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type.description = params[:description]
        type
      end
    end

    module UpdateRuleMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuleMetadataOutput, context: context)
        type = Types::UpdateRuleMetadataOutput.new
        type
      end
    end

    module UpdateRuleVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuleVersionInput, context: context)
        type = Types::UpdateRuleVersionInput.new
        type.rule = Rule.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type.description = params[:description]
        type.expression = params[:expression]
        type.language = params[:language]
        type.outcomes = NonEmptyListOfStrings.build(params[:outcomes], context: "#{context}[:outcomes]") unless params[:outcomes].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateRuleVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuleVersionOutput, context: context)
        type = Types::UpdateRuleVersionOutput.new
        type.rule = Rule.build(params[:rule], context: "#{context}[:rule]") unless params[:rule].nil?
        type
      end
    end

    module UpdateVariableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVariableInput, context: context)
        type = Types::UpdateVariableInput.new
        type.name = params[:name]
        type.default_value = params[:default_value]
        type.description = params[:description]
        type.variable_type = params[:variable_type]
        type
      end
    end

    module UpdateVariableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVariableOutput, context: context)
        type = Types::UpdateVariableOutput.new
        type
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

    module Variable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Variable, context: context)
        type = Types::Variable.new
        type.name = params[:name]
        type.data_type = params[:data_type]
        type.data_source = params[:data_source]
        type.default_value = params[:default_value]
        type.description = params[:description]
        type.variable_type = params[:variable_type]
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type.arn = params[:arn]
        type
      end
    end

    module VariableEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VariableEntry, context: context)
        type = Types::VariableEntry.new
        type.name = params[:name]
        type.data_type = params[:data_type]
        type.data_source = params[:data_source]
        type.default_value = params[:default_value]
        type.description = params[:description]
        type.variable_type = params[:variable_type]
        type
      end
    end

    module VariableEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VariableEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VariableImpactExplanation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VariableImpactExplanation, context: context)
        type = Types::VariableImpactExplanation.new
        type.event_variable_name = params[:event_variable_name]
        type.relative_impact = params[:relative_impact]
        type.log_odds_impact = params[:log_odds_impact]
        type
      end
    end

    module VariableImportanceMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VariableImportanceMetrics, context: context)
        type = Types::VariableImportanceMetrics.new
        type.log_odds_metrics = ListOfLogOddsMetrics.build(params[:log_odds_metrics], context: "#{context}[:log_odds_metrics]") unless params[:log_odds_metrics].nil?
        type
      end
    end

    module VariableList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Variable.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntityTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntityType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FieldValidationMessageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FieldValidationMessage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FileValidationMessageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FileValidationMessage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LabelList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Label.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LabelMapper
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = NonEmptyListOfStrings.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ListOfEntities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Entity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfVariableImpactExplanations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VariableImpactExplanation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricDataPointsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDataPoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModelList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Model.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModelVersionDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelVersionDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
