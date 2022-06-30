# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::FraudDetector
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchCreateVariableError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateVariableError, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchCreateVariableErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchCreateVariableError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchCreateVariableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateVariableInput, context: context)
        Validators::VariableEntryList.validate!(input[:variable_entries], context: "#{context}[:variable_entries]") unless input[:variable_entries].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class BatchCreateVariableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreateVariableOutput, context: context)
        Validators::BatchCreateVariableErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchGetVariableError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetVariableError, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:code], ::Integer, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchGetVariableErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchGetVariableError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetVariableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetVariableInput, context: context)
        Validators::NameList.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
      end
    end

    class BatchGetVariableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetVariableOutput, context: context)
        Validators::VariableList.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        Validators::BatchGetVariableErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchImport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchImport, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:completion_time], ::String, context: "#{context}[:completion_time]")
        Hearth::Validator.validate!(input[:input_path], ::String, context: "#{context}[:input_path]")
        Hearth::Validator.validate!(input[:output_path], ::String, context: "#{context}[:output_path]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:processed_records_count], ::Integer, context: "#{context}[:processed_records_count]")
        Hearth::Validator.validate!(input[:failed_records_count], ::Integer, context: "#{context}[:failed_records_count]")
        Hearth::Validator.validate!(input[:total_records_count], ::Integer, context: "#{context}[:total_records_count]")
      end
    end

    class BatchImportList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchImport.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchPrediction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPrediction, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:completion_time], ::String, context: "#{context}[:completion_time]")
        Hearth::Validator.validate!(input[:last_heartbeat_time], ::String, context: "#{context}[:last_heartbeat_time]")
        Hearth::Validator.validate!(input[:input_path], ::String, context: "#{context}[:input_path]")
        Hearth::Validator.validate!(input[:output_path], ::String, context: "#{context}[:output_path]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:detector_name], ::String, context: "#{context}[:detector_name]")
        Hearth::Validator.validate!(input[:detector_version], ::String, context: "#{context}[:detector_version]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:processed_records_count], ::Integer, context: "#{context}[:processed_records_count]")
        Hearth::Validator.validate!(input[:total_records_count], ::Integer, context: "#{context}[:total_records_count]")
      end
    end

    class BatchPredictionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchPrediction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CancelBatchImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelBatchImportJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class CancelBatchImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelBatchImportJobOutput, context: context)
      end
    end

    class CancelBatchPredictionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelBatchPredictionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class CancelBatchPredictionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelBatchPredictionJobOutput, context: context)
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateBatchImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBatchImportJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:input_path], ::String, context: "#{context}[:input_path]")
        Hearth::Validator.validate!(input[:output_path], ::String, context: "#{context}[:output_path]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateBatchImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBatchImportJobOutput, context: context)
      end
    end

    class CreateBatchPredictionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBatchPredictionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:input_path], ::String, context: "#{context}[:input_path]")
        Hearth::Validator.validate!(input[:output_path], ::String, context: "#{context}[:output_path]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:detector_name], ::String, context: "#{context}[:detector_name]")
        Hearth::Validator.validate!(input[:detector_version], ::String, context: "#{context}[:detector_version]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateBatchPredictionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBatchPredictionJobOutput, context: context)
      end
    end

    class CreateDetectorVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDetectorVersionInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ListOfStrings.validate!(input[:external_model_endpoints], context: "#{context}[:external_model_endpoints]") unless input[:external_model_endpoints].nil?
        Validators::RuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Validators::ListOfModelVersions.validate!(input[:model_versions], context: "#{context}[:model_versions]") unless input[:model_versions].nil?
        Hearth::Validator.validate!(input[:rule_execution_mode], ::String, context: "#{context}[:rule_execution_mode]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDetectorVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDetectorVersionOutput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:detector_version_id], ::String, context: "#{context}[:detector_version_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelInput, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelOutput, context: context)
      end
    end

    class CreateModelVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelVersionInput, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Hearth::Validator.validate!(input[:training_data_source], ::String, context: "#{context}[:training_data_source]")
        Validators::TrainingDataSchema.validate!(input[:training_data_schema], context: "#{context}[:training_data_schema]") unless input[:training_data_schema].nil?
        Validators::ExternalEventsDetail.validate!(input[:external_events_detail], context: "#{context}[:external_events_detail]") unless input[:external_events_detail].nil?
        Validators::IngestedEventsDetail.validate!(input[:ingested_events_detail], context: "#{context}[:ingested_events_detail]") unless input[:ingested_events_detail].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateModelVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelVersionOutput, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Hearth::Validator.validate!(input[:model_version_number], ::String, context: "#{context}[:model_version_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleInput, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        Validators::NonEmptyListOfStrings.validate!(input[:outcomes], context: "#{context}[:outcomes]") unless input[:outcomes].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleOutput, context: context)
        Validators::Rule.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
      end
    end

    class CreateVariableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVariableInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:variable_type], ::String, context: "#{context}[:variable_type]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateVariableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVariableOutput, context: context)
      end
    end

    class CsvIndexToVariableMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DataValidationMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataValidationMetrics, context: context)
        Validators::FileValidationMessageList.validate!(input[:file_level_messages], context: "#{context}[:file_level_messages]") unless input[:file_level_messages].nil?
        Validators::FieldValidationMessageList.validate!(input[:field_level_messages], context: "#{context}[:field_level_messages]") unless input[:field_level_messages].nil?
      end
    end

    class DeleteBatchImportJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBatchImportJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DeleteBatchImportJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBatchImportJobOutput, context: context)
      end
    end

    class DeleteBatchPredictionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBatchPredictionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DeleteBatchPredictionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBatchPredictionJobOutput, context: context)
      end
    end

    class DeleteDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDetectorInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
      end
    end

    class DeleteDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDetectorOutput, context: context)
      end
    end

    class DeleteDetectorVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDetectorVersionInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:detector_version_id], ::String, context: "#{context}[:detector_version_id]")
      end
    end

    class DeleteDetectorVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDetectorVersionOutput, context: context)
      end
    end

    class DeleteEntityTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEntityTypeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteEntityTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEntityTypeOutput, context: context)
      end
    end

    class DeleteEventInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventInput, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:delete_audit_history], ::TrueClass, ::FalseClass, context: "#{context}[:delete_audit_history]")
      end
    end

    class DeleteEventOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventOutput, context: context)
      end
    end

    class DeleteEventTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventTypeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteEventTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventTypeOutput, context: context)
      end
    end

    class DeleteEventsByEventTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventsByEventTypeInput, context: context)
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
      end
    end

    class DeleteEventsByEventTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventsByEventTypeOutput, context: context)
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:events_deletion_status], ::String, context: "#{context}[:events_deletion_status]")
      end
    end

    class DeleteExternalModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExternalModelInput, context: context)
        Hearth::Validator.validate!(input[:model_endpoint], ::String, context: "#{context}[:model_endpoint]")
      end
    end

    class DeleteExternalModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExternalModelOutput, context: context)
      end
    end

    class DeleteLabelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLabelInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteLabelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLabelOutput, context: context)
      end
    end

    class DeleteModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelInput, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
      end
    end

    class DeleteModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelOutput, context: context)
      end
    end

    class DeleteModelVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelVersionInput, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Hearth::Validator.validate!(input[:model_version_number], ::String, context: "#{context}[:model_version_number]")
      end
    end

    class DeleteModelVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelVersionOutput, context: context)
      end
    end

    class DeleteOutcomeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOutcomeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteOutcomeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOutcomeOutput, context: context)
      end
    end

    class DeleteRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleInput, context: context)
        Validators::Rule.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
      end
    end

    class DeleteRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleOutput, context: context)
      end
    end

    class DeleteVariableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVariableInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteVariableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVariableOutput, context: context)
      end
    end

    class DescribeDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDetectorInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDetectorOutput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Validators::DetectorVersionSummaryList.validate!(input[:detector_version_summaries], context: "#{context}[:detector_version_summaries]") unless input[:detector_version_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DescribeModelVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelVersionsInput, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_version_number], ::String, context: "#{context}[:model_version_number]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeModelVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelVersionsOutput, context: context)
        Validators::ModelVersionDetailList.validate!(input[:model_version_details], context: "#{context}[:model_version_details]") unless input[:model_version_details].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Detector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Detector, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:last_updated_time], ::String, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DetectorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Detector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DetectorVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectorVersionSummary, context: context)
        Hearth::Validator.validate!(input[:detector_version_id], ::String, context: "#{context}[:detector_version_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_updated_time], ::String, context: "#{context}[:last_updated_time]")
      end
    end

    class DetectorVersionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DetectorVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Entity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Entity, context: context)
        Hearth::Validator.validate!(input[:entity_type], ::String, context: "#{context}[:entity_type]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
      end
    end

    class EntityType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityType, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_updated_time], ::String, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class EvaluatedExternalModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluatedExternalModel, context: context)
        Hearth::Validator.validate!(input[:model_endpoint], ::String, context: "#{context}[:model_endpoint]")
        Hearth::Validator.validate!(input[:use_event_variables], ::TrueClass, ::FalseClass, context: "#{context}[:use_event_variables]")
        Validators::MapOfStrings.validate!(input[:input_variables], context: "#{context}[:input_variables]") unless input[:input_variables].nil?
        Validators::MapOfStrings.validate!(input[:output_variables], context: "#{context}[:output_variables]") unless input[:output_variables].nil?
      end
    end

    class EvaluatedModelVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluatedModelVersion, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Validators::ListOfModelVersionEvaluations.validate!(input[:evaluations], context: "#{context}[:evaluations]") unless input[:evaluations].nil?
      end
    end

    class EvaluatedRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluatedRule, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:rule_version], ::String, context: "#{context}[:rule_version]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:expression_with_values], ::String, context: "#{context}[:expression_with_values]")
        Validators::ListOfStrings.validate!(input[:outcomes], context: "#{context}[:outcomes]") unless input[:outcomes].nil?
        Hearth::Validator.validate!(input[:evaluated], ::TrueClass, ::FalseClass, context: "#{context}[:evaluated]")
        Hearth::Validator.validate!(input[:matched], ::TrueClass, ::FalseClass, context: "#{context}[:matched]")
      end
    end

    class EvaluatedRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EvaluatedRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:event_timestamp], ::String, context: "#{context}[:event_timestamp]")
        Validators::EventAttributeMap.validate!(input[:event_variables], context: "#{context}[:event_variables]") unless input[:event_variables].nil?
        Hearth::Validator.validate!(input[:current_label], ::String, context: "#{context}[:current_label]")
        Hearth::Validator.validate!(input[:label_timestamp], ::String, context: "#{context}[:label_timestamp]")
        Validators::ListOfEntities.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
      end
    end

    class EventAttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class EventPredictionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventPredictionSummary, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:event_timestamp], ::String, context: "#{context}[:event_timestamp]")
        Hearth::Validator.validate!(input[:prediction_timestamp], ::String, context: "#{context}[:prediction_timestamp]")
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:detector_version_id], ::String, context: "#{context}[:detector_version_id]")
      end
    end

    class EventType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventType, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ListOfStrings.validate!(input[:event_variables], context: "#{context}[:event_variables]") unless input[:event_variables].nil?
        Validators::ListOfStrings.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Validators::NonEmptyListOfStrings.validate!(input[:entity_types], context: "#{context}[:entity_types]") unless input[:entity_types].nil?
        Hearth::Validator.validate!(input[:event_ingestion], ::String, context: "#{context}[:event_ingestion]")
        Validators::IngestedEventStatistics.validate!(input[:ingested_event_statistics], context: "#{context}[:ingested_event_statistics]") unless input[:ingested_event_statistics].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::String, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class EventVariableMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class EventVariableSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventVariableSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
      end
    end

    class ExternalEventsDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExternalEventsDetail, context: context)
        Hearth::Validator.validate!(input[:data_location], ::String, context: "#{context}[:data_location]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
      end
    end

    class ExternalModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExternalModel, context: context)
        Hearth::Validator.validate!(input[:model_endpoint], ::String, context: "#{context}[:model_endpoint]")
        Hearth::Validator.validate!(input[:model_source], ::String, context: "#{context}[:model_source]")
        Hearth::Validator.validate!(input[:invoke_model_endpoint_role_arn], ::String, context: "#{context}[:invoke_model_endpoint_role_arn]")
        Validators::ModelInputConfiguration.validate!(input[:input_configuration], context: "#{context}[:input_configuration]") unless input[:input_configuration].nil?
        Validators::ModelOutputConfiguration.validate!(input[:output_configuration], context: "#{context}[:output_configuration]") unless input[:output_configuration].nil?
        Hearth::Validator.validate!(input[:model_endpoint_status], ::String, context: "#{context}[:model_endpoint_status]")
        Hearth::Validator.validate!(input[:last_updated_time], ::String, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ExternalModelEndpointDataBlobMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ModelEndpointDataBlob.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ExternalModelList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExternalModel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExternalModelOutputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExternalModelOutputs, context: context)
        Validators::ExternalModelSummary.validate!(input[:external_model], context: "#{context}[:external_model]") unless input[:external_model].nil?
        Validators::ExternalModelPredictionMap.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
      end
    end

    class ExternalModelPredictionMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ExternalModelSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExternalModelSummary, context: context)
        Hearth::Validator.validate!(input[:model_endpoint], ::String, context: "#{context}[:model_endpoint]")
        Hearth::Validator.validate!(input[:model_source], ::String, context: "#{context}[:model_source]")
      end
    end

    class FieldValidationMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldValidationMessage, context: context)
        Hearth::Validator.validate!(input[:field_name], ::String, context: "#{context}[:field_name]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class FileValidationMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileValidationMessage, context: context)
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class FilterCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterCondition, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class GetBatchImportJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBatchImportJobsInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetBatchImportJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBatchImportJobsOutput, context: context)
        Validators::BatchImportList.validate!(input[:batch_imports], context: "#{context}[:batch_imports]") unless input[:batch_imports].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetBatchPredictionJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBatchPredictionJobsInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetBatchPredictionJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBatchPredictionJobsOutput, context: context)
        Validators::BatchPredictionList.validate!(input[:batch_predictions], context: "#{context}[:batch_predictions]") unless input[:batch_predictions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDeleteEventsByEventTypeStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeleteEventsByEventTypeStatusInput, context: context)
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
      end
    end

    class GetDeleteEventsByEventTypeStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeleteEventsByEventTypeStatusOutput, context: context)
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:events_deletion_status], ::String, context: "#{context}[:events_deletion_status]")
      end
    end

    class GetDetectorVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDetectorVersionInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:detector_version_id], ::String, context: "#{context}[:detector_version_id]")
      end
    end

    class GetDetectorVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDetectorVersionOutput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:detector_version_id], ::String, context: "#{context}[:detector_version_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ListOfStrings.validate!(input[:external_model_endpoints], context: "#{context}[:external_model_endpoints]") unless input[:external_model_endpoints].nil?
        Validators::ListOfModelVersions.validate!(input[:model_versions], context: "#{context}[:model_versions]") unless input[:model_versions].nil?
        Validators::RuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_updated_time], ::String, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:rule_execution_mode], ::String, context: "#{context}[:rule_execution_mode]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetDetectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDetectorsInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetDetectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDetectorsOutput, context: context)
        Validators::DetectorList.validate!(input[:detectors], context: "#{context}[:detectors]") unless input[:detectors].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetEntityTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEntityTypesInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetEntityTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEntityTypesOutput, context: context)
        Validators::EntityTypeList.validate!(input[:entity_types], context: "#{context}[:entity_types]") unless input[:entity_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetEventInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventInput, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
      end
    end

    class GetEventOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventOutput, context: context)
        Validators::Event.validate!(input[:event], context: "#{context}[:event]") unless input[:event].nil?
      end
    end

    class GetEventPredictionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventPredictionInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:detector_version_id], ::String, context: "#{context}[:detector_version_id]")
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Validators::ListOfEntities.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        Hearth::Validator.validate!(input[:event_timestamp], ::String, context: "#{context}[:event_timestamp]")
        Validators::EventVariableMap.validate!(input[:event_variables], context: "#{context}[:event_variables]") unless input[:event_variables].nil?
        Validators::ExternalModelEndpointDataBlobMap.validate!(input[:external_model_endpoint_data_blobs], context: "#{context}[:external_model_endpoint_data_blobs]") unless input[:external_model_endpoint_data_blobs].nil?
      end
    end

    class GetEventPredictionMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventPredictionMetadataInput, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:detector_version_id], ::String, context: "#{context}[:detector_version_id]")
        Hearth::Validator.validate!(input[:prediction_timestamp], ::String, context: "#{context}[:prediction_timestamp]")
      end
    end

    class GetEventPredictionMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventPredictionMetadataOutput, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:entity_type], ::String, context: "#{context}[:entity_type]")
        Hearth::Validator.validate!(input[:event_timestamp], ::String, context: "#{context}[:event_timestamp]")
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:detector_version_id], ::String, context: "#{context}[:detector_version_id]")
        Hearth::Validator.validate!(input[:detector_version_status], ::String, context: "#{context}[:detector_version_status]")
        Validators::ListOfEventVariableSummaries.validate!(input[:event_variables], context: "#{context}[:event_variables]") unless input[:event_variables].nil?
        Validators::EvaluatedRuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:rule_execution_mode], ::String, context: "#{context}[:rule_execution_mode]")
        Validators::ListOfStrings.validate!(input[:outcomes], context: "#{context}[:outcomes]") unless input[:outcomes].nil?
        Validators::ListOfEvaluatedModelVersions.validate!(input[:evaluated_model_versions], context: "#{context}[:evaluated_model_versions]") unless input[:evaluated_model_versions].nil?
        Validators::ListOfEvaluatedExternalModels.validate!(input[:evaluated_external_models], context: "#{context}[:evaluated_external_models]") unless input[:evaluated_external_models].nil?
        Hearth::Validator.validate!(input[:prediction_timestamp], ::String, context: "#{context}[:prediction_timestamp]")
      end
    end

    class GetEventPredictionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventPredictionOutput, context: context)
        Validators::ListOfModelScores.validate!(input[:model_scores], context: "#{context}[:model_scores]") unless input[:model_scores].nil?
        Validators::ListOfRuleResults.validate!(input[:rule_results], context: "#{context}[:rule_results]") unless input[:rule_results].nil?
        Validators::ListOfExternalModelOutputs.validate!(input[:external_model_outputs], context: "#{context}[:external_model_outputs]") unless input[:external_model_outputs].nil?
      end
    end

    class GetEventTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventTypesInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetEventTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventTypesOutput, context: context)
        Validators::EventTypeList.validate!(input[:event_types], context: "#{context}[:event_types]") unless input[:event_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetExternalModelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExternalModelsInput, context: context)
        Hearth::Validator.validate!(input[:model_endpoint], ::String, context: "#{context}[:model_endpoint]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetExternalModelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExternalModelsOutput, context: context)
        Validators::ExternalModelList.validate!(input[:external_models], context: "#{context}[:external_models]") unless input[:external_models].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetKMSEncryptionKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKMSEncryptionKeyInput, context: context)
      end
    end

    class GetKMSEncryptionKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKMSEncryptionKeyOutput, context: context)
        Validators::KMSKey.validate!(input[:kms_key], context: "#{context}[:kms_key]") unless input[:kms_key].nil?
      end
    end

    class GetLabelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLabelsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetLabelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLabelsOutput, context: context)
        Validators::LabelList.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetModelVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelVersionInput, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Hearth::Validator.validate!(input[:model_version_number], ::String, context: "#{context}[:model_version_number]")
      end
    end

    class GetModelVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelVersionOutput, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Hearth::Validator.validate!(input[:model_version_number], ::String, context: "#{context}[:model_version_number]")
        Hearth::Validator.validate!(input[:training_data_source], ::String, context: "#{context}[:training_data_source]")
        Validators::TrainingDataSchema.validate!(input[:training_data_schema], context: "#{context}[:training_data_schema]") unless input[:training_data_schema].nil?
        Validators::ExternalEventsDetail.validate!(input[:external_events_detail], context: "#{context}[:external_events_detail]") unless input[:external_events_detail].nil?
        Validators::IngestedEventsDetail.validate!(input[:ingested_events_detail], context: "#{context}[:ingested_events_detail]") unless input[:ingested_events_detail].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class GetModelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelsInput, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetModelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ModelList.validate!(input[:models], context: "#{context}[:models]") unless input[:models].nil?
      end
    end

    class GetOutcomesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOutcomesInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetOutcomesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOutcomesOutput, context: context)
        Validators::OutcomeList.validate!(input[:outcomes], context: "#{context}[:outcomes]") unless input[:outcomes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRulesInput, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:rule_version], ::String, context: "#{context}[:rule_version]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRulesOutput, context: context)
        Validators::RuleDetailList.validate!(input[:rule_details], context: "#{context}[:rule_details]") unless input[:rule_details].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetVariablesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVariablesInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetVariablesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVariablesOutput, context: context)
        Validators::VariableList.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class IngestedEventStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IngestedEventStatistics, context: context)
        Hearth::Validator.validate!(input[:number_of_events], ::Integer, context: "#{context}[:number_of_events]")
        Hearth::Validator.validate!(input[:event_data_size_in_bytes], ::Integer, context: "#{context}[:event_data_size_in_bytes]")
        Hearth::Validator.validate!(input[:least_recent_event], ::String, context: "#{context}[:least_recent_event]")
        Hearth::Validator.validate!(input[:most_recent_event], ::String, context: "#{context}[:most_recent_event]")
        Hearth::Validator.validate!(input[:last_updated_time], ::String, context: "#{context}[:last_updated_time]")
      end
    end

    class IngestedEventsDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IngestedEventsDetail, context: context)
        Validators::IngestedEventsTimeWindow.validate!(input[:ingested_events_time_window], context: "#{context}[:ingested_events_time_window]") unless input[:ingested_events_time_window].nil?
      end
    end

    class IngestedEventsTimeWindow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IngestedEventsTimeWindow, context: context)
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::String, context: "#{context}[:end_time]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JsonKeyToVariableMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class KMSKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSKey, context: context)
        Hearth::Validator.validate!(input[:kms_encryption_key_arn], ::String, context: "#{context}[:kms_encryption_key_arn]")
      end
    end

    class Label
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Label, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_updated_time], ::String, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class LabelSchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelSchema, context: context)
        Validators::LabelMapper.validate!(input[:label_mapper], context: "#{context}[:label_mapper]") unless input[:label_mapper].nil?
        Hearth::Validator.validate!(input[:unlabeled_events_treatment], ::String, context: "#{context}[:unlabeled_events_treatment]")
      end
    end

    class ListEventPredictionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventPredictionsInput, context: context)
        Validators::FilterCondition.validate!(input[:event_id], context: "#{context}[:event_id]") unless input[:event_id].nil?
        Validators::FilterCondition.validate!(input[:event_type], context: "#{context}[:event_type]") unless input[:event_type].nil?
        Validators::FilterCondition.validate!(input[:detector_id], context: "#{context}[:detector_id]") unless input[:detector_id].nil?
        Validators::FilterCondition.validate!(input[:detector_version_id], context: "#{context}[:detector_version_id]") unless input[:detector_version_id].nil?
        Validators::PredictionTimeRange.validate!(input[:prediction_time_range], context: "#{context}[:prediction_time_range]") unless input[:prediction_time_range].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEventPredictionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventPredictionsOutput, context: context)
        Validators::ListOfEventPredictionSummaries.validate!(input[:event_prediction_summaries], context: "#{context}[:event_prediction_summaries]") unless input[:event_prediction_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfEvaluatedExternalModels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EvaluatedExternalModel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfEvaluatedModelVersions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EvaluatedModelVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfEventPredictionSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventPredictionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfEventVariableSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventVariableSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfExternalModelOutputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExternalModelOutputs.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfLogOddsMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LogOddsMetric.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfModelScores
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ModelScores.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfModelVersionEvaluations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ModelVersionEvaluation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfModelVersions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ModelVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfRuleResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfStrings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LogOddsMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogOddsMetric, context: context)
        Hearth::Validator.validate!(input[:variable_name], ::String, context: "#{context}[:variable_name]")
        Hearth::Validator.validate!(input[:variable_type], ::String, context: "#{context}[:variable_type]")
        Hearth::Validator.validate!(input[:variable_importance], ::Float, context: "#{context}[:variable_importance]")
      end
    end

    class MapOfStrings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class MetricDataPoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDataPoint, context: context)
        Hearth::Validator.validate!(input[:fpr], ::Float, context: "#{context}[:fpr]")
        Hearth::Validator.validate!(input[:precision], ::Float, context: "#{context}[:precision]")
        Hearth::Validator.validate!(input[:tpr], ::Float, context: "#{context}[:tpr]")
        Hearth::Validator.validate!(input[:threshold], ::Float, context: "#{context}[:threshold]")
      end
    end

    class Model
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Model, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::String, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ModelEndpointDataBlob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelEndpointDataBlob, context: context)
        Hearth::Validator.validate!(input[:byte_buffer], ::String, context: "#{context}[:byte_buffer]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class ModelInputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelInputConfiguration, context: context)
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:use_event_variables], ::TrueClass, ::FalseClass, context: "#{context}[:use_event_variables]")
        Hearth::Validator.validate!(input[:json_input_template], ::String, context: "#{context}[:json_input_template]")
        Hearth::Validator.validate!(input[:csv_input_template], ::String, context: "#{context}[:csv_input_template]")
      end
    end

    class ModelOutputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelOutputConfiguration, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Validators::JsonKeyToVariableMap.validate!(input[:json_key_to_variable_map], context: "#{context}[:json_key_to_variable_map]") unless input[:json_key_to_variable_map].nil?
        Validators::CsvIndexToVariableMap.validate!(input[:csv_index_to_variable_map], context: "#{context}[:csv_index_to_variable_map]") unless input[:csv_index_to_variable_map].nil?
      end
    end

    class ModelPredictionMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Float, context: "#{context}[:#{key}]")
        end
      end
    end

    class ModelScores
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelScores, context: context)
        Validators::ModelVersion.validate!(input[:model_version], context: "#{context}[:model_version]") unless input[:model_version].nil?
        Validators::ModelPredictionMap.validate!(input[:scores], context: "#{context}[:scores]") unless input[:scores].nil?
      end
    end

    class ModelVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelVersion, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Hearth::Validator.validate!(input[:model_version_number], ::String, context: "#{context}[:model_version_number]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ModelVersionDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelVersionDetail, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Hearth::Validator.validate!(input[:model_version_number], ::String, context: "#{context}[:model_version_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:training_data_source], ::String, context: "#{context}[:training_data_source]")
        Validators::TrainingDataSchema.validate!(input[:training_data_schema], context: "#{context}[:training_data_schema]") unless input[:training_data_schema].nil?
        Validators::ExternalEventsDetail.validate!(input[:external_events_detail], context: "#{context}[:external_events_detail]") unless input[:external_events_detail].nil?
        Validators::IngestedEventsDetail.validate!(input[:ingested_events_detail], context: "#{context}[:ingested_events_detail]") unless input[:ingested_events_detail].nil?
        Validators::TrainingResult.validate!(input[:training_result], context: "#{context}[:training_result]") unless input[:training_result].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::String, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ModelVersionEvaluation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelVersionEvaluation, context: context)
        Hearth::Validator.validate!(input[:output_variable_name], ::String, context: "#{context}[:output_variable_name]")
        Hearth::Validator.validate!(input[:evaluation_score], ::String, context: "#{context}[:evaluation_score]")
        Validators::PredictionExplanations.validate!(input[:prediction_explanations], context: "#{context}[:prediction_explanations]") unless input[:prediction_explanations].nil?
      end
    end

    class NameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NonEmptyListOfStrings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Outcome
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Outcome, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_updated_time], ::String, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class OutcomeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Outcome.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PredictionExplanations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictionExplanations, context: context)
        Validators::ListOfVariableImpactExplanations.validate!(input[:variable_impact_explanations], context: "#{context}[:variable_impact_explanations]") unless input[:variable_impact_explanations].nil?
      end
    end

    class PredictionTimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictionTimeRange, context: context)
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::String, context: "#{context}[:end_time]")
      end
    end

    class PutDetectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDetectorInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutDetectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDetectorOutput, context: context)
      end
    end

    class PutEntityTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEntityTypeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutEntityTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEntityTypeOutput, context: context)
      end
    end

    class PutEventTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventTypeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::NonEmptyListOfStrings.validate!(input[:event_variables], context: "#{context}[:event_variables]") unless input[:event_variables].nil?
        Validators::ListOfStrings.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Validators::NonEmptyListOfStrings.validate!(input[:entity_types], context: "#{context}[:entity_types]") unless input[:entity_types].nil?
        Hearth::Validator.validate!(input[:event_ingestion], ::String, context: "#{context}[:event_ingestion]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutEventTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventTypeOutput, context: context)
      end
    end

    class PutExternalModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutExternalModelInput, context: context)
        Hearth::Validator.validate!(input[:model_endpoint], ::String, context: "#{context}[:model_endpoint]")
        Hearth::Validator.validate!(input[:model_source], ::String, context: "#{context}[:model_source]")
        Hearth::Validator.validate!(input[:invoke_model_endpoint_role_arn], ::String, context: "#{context}[:invoke_model_endpoint_role_arn]")
        Validators::ModelInputConfiguration.validate!(input[:input_configuration], context: "#{context}[:input_configuration]") unless input[:input_configuration].nil?
        Validators::ModelOutputConfiguration.validate!(input[:output_configuration], context: "#{context}[:output_configuration]") unless input[:output_configuration].nil?
        Hearth::Validator.validate!(input[:model_endpoint_status], ::String, context: "#{context}[:model_endpoint_status]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutExternalModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutExternalModelOutput, context: context)
      end
    end

    class PutKMSEncryptionKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutKMSEncryptionKeyInput, context: context)
        Hearth::Validator.validate!(input[:kms_encryption_key_arn], ::String, context: "#{context}[:kms_encryption_key_arn]")
      end
    end

    class PutKMSEncryptionKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutKMSEncryptionKeyOutput, context: context)
      end
    end

    class PutLabelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLabelInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutLabelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLabelOutput, context: context)
      end
    end

    class PutOutcomeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutOutcomeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutOutcomeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutOutcomeOutput, context: context)
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Rule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Rule, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:rule_version], ::String, context: "#{context}[:rule_version]")
      end
    end

    class RuleDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleDetail, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:rule_version], ::String, context: "#{context}[:rule_version]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        Validators::NonEmptyListOfStrings.validate!(input[:outcomes], context: "#{context}[:outcomes]") unless input[:outcomes].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::String, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class RuleDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class RuleResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleResult, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Validators::ListOfStrings.validate!(input[:outcomes], context: "#{context}[:outcomes]") unless input[:outcomes].nil?
      end
    end

    class SendEventInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendEventInput, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:event_timestamp], ::String, context: "#{context}[:event_timestamp]")
        Validators::EventVariableMap.validate!(input[:event_variables], context: "#{context}[:event_variables]") unless input[:event_variables].nil?
        Hearth::Validator.validate!(input[:assigned_label], ::String, context: "#{context}[:assigned_label]")
        Hearth::Validator.validate!(input[:label_timestamp], ::String, context: "#{context}[:label_timestamp]")
        Validators::ListOfEntities.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
      end
    end

    class SendEventOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendEventOutput, context: context)
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TrainingDataSchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrainingDataSchema, context: context)
        Validators::ListOfStrings.validate!(input[:model_variables], context: "#{context}[:model_variables]") unless input[:model_variables].nil?
        Validators::LabelSchema.validate!(input[:label_schema], context: "#{context}[:label_schema]") unless input[:label_schema].nil?
      end
    end

    class TrainingMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrainingMetrics, context: context)
        Hearth::Validator.validate!(input[:auc], ::Float, context: "#{context}[:auc]")
        Validators::MetricDataPointsList.validate!(input[:metric_data_points], context: "#{context}[:metric_data_points]") unless input[:metric_data_points].nil?
      end
    end

    class TrainingResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrainingResult, context: context)
        Validators::DataValidationMetrics.validate!(input[:data_validation_metrics], context: "#{context}[:data_validation_metrics]") unless input[:data_validation_metrics].nil?
        Validators::TrainingMetrics.validate!(input[:training_metrics], context: "#{context}[:training_metrics]") unless input[:training_metrics].nil?
        Validators::VariableImportanceMetrics.validate!(input[:variable_importance_metrics], context: "#{context}[:variable_importance_metrics]") unless input[:variable_importance_metrics].nil?
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

    class UpdateDetectorVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDetectorVersionInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:detector_version_id], ::String, context: "#{context}[:detector_version_id]")
        Validators::ListOfStrings.validate!(input[:external_model_endpoints], context: "#{context}[:external_model_endpoints]") unless input[:external_model_endpoints].nil?
        Validators::RuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ListOfModelVersions.validate!(input[:model_versions], context: "#{context}[:model_versions]") unless input[:model_versions].nil?
        Hearth::Validator.validate!(input[:rule_execution_mode], ::String, context: "#{context}[:rule_execution_mode]")
      end
    end

    class UpdateDetectorVersionMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDetectorVersionMetadataInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:detector_version_id], ::String, context: "#{context}[:detector_version_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateDetectorVersionMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDetectorVersionMetadataOutput, context: context)
      end
    end

    class UpdateDetectorVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDetectorVersionOutput, context: context)
      end
    end

    class UpdateDetectorVersionStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDetectorVersionStatusInput, context: context)
        Hearth::Validator.validate!(input[:detector_id], ::String, context: "#{context}[:detector_id]")
        Hearth::Validator.validate!(input[:detector_version_id], ::String, context: "#{context}[:detector_version_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateDetectorVersionStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDetectorVersionStatusOutput, context: context)
      end
    end

    class UpdateEventLabelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventLabelInput, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:assigned_label], ::String, context: "#{context}[:assigned_label]")
        Hearth::Validator.validate!(input[:label_timestamp], ::String, context: "#{context}[:label_timestamp]")
      end
    end

    class UpdateEventLabelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventLabelOutput, context: context)
      end
    end

    class UpdateModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateModelInput, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateModelOutput, context: context)
      end
    end

    class UpdateModelVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateModelVersionInput, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Hearth::Validator.validate!(input[:major_version_number], ::String, context: "#{context}[:major_version_number]")
        Validators::ExternalEventsDetail.validate!(input[:external_events_detail], context: "#{context}[:external_events_detail]") unless input[:external_events_detail].nil?
        Validators::IngestedEventsDetail.validate!(input[:ingested_events_detail], context: "#{context}[:ingested_events_detail]") unless input[:ingested_events_detail].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateModelVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateModelVersionOutput, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Hearth::Validator.validate!(input[:model_version_number], ::String, context: "#{context}[:model_version_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateModelVersionStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateModelVersionStatusInput, context: context)
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:model_type], ::String, context: "#{context}[:model_type]")
        Hearth::Validator.validate!(input[:model_version_number], ::String, context: "#{context}[:model_version_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class UpdateModelVersionStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateModelVersionStatusOutput, context: context)
      end
    end

    class UpdateRuleMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuleMetadataInput, context: context)
        Validators::Rule.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateRuleMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuleMetadataOutput, context: context)
      end
    end

    class UpdateRuleVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuleVersionInput, context: context)
        Validators::Rule.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        Validators::NonEmptyListOfStrings.validate!(input[:outcomes], context: "#{context}[:outcomes]") unless input[:outcomes].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateRuleVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuleVersionOutput, context: context)
        Validators::Rule.validate!(input[:rule], context: "#{context}[:rule]") unless input[:rule].nil?
      end
    end

    class UpdateVariableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVariableInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:variable_type], ::String, context: "#{context}[:variable_type]")
      end
    end

    class UpdateVariableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVariableOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Variable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Variable, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:variable_type], ::String, context: "#{context}[:variable_type]")
        Hearth::Validator.validate!(input[:last_updated_time], ::String, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class VariableEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VariableEntry, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:data_source], ::String, context: "#{context}[:data_source]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:variable_type], ::String, context: "#{context}[:variable_type]")
      end
    end

    class VariableEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VariableEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VariableImpactExplanation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VariableImpactExplanation, context: context)
        Hearth::Validator.validate!(input[:event_variable_name], ::String, context: "#{context}[:event_variable_name]")
        Hearth::Validator.validate!(input[:relative_impact], ::String, context: "#{context}[:relative_impact]")
        Hearth::Validator.validate!(input[:log_odds_impact], ::Float, context: "#{context}[:log_odds_impact]")
      end
    end

    class VariableImportanceMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VariableImportanceMetrics, context: context)
        Validators::ListOfLogOddsMetrics.validate!(input[:log_odds_metrics], context: "#{context}[:log_odds_metrics]") unless input[:log_odds_metrics].nil?
      end
    end

    class VariableList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Variable.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntityTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EntityType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FieldValidationMessageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FieldValidationMessage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FileValidationMessageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FileValidationMessage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LabelList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Label.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LabelMapper
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::NonEmptyListOfStrings.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ListOfEntities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Entity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfVariableImpactExplanations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VariableImpactExplanation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDataPointsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricDataPoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModelList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Model.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModelVersionDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ModelVersionDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
