# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Glue
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Action
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Action, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        GenericMap.validate!(input[:arguments], context: "#{context}[:arguments]") unless input[:arguments].nil?
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:security_configuration], ::String, context: "#{context}[:security_configuration]")
        NotificationProperty.validate!(input[:notification_property], context: "#{context}[:notification_property]") unless input[:notification_property].nil?
        Hearth::Validator.validate!(input[:crawler_name], ::String, context: "#{context}[:crawler_name]")
      end
    end

    class ActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Action.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AdditionalOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class AdditionalPlanOptionsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Aggregate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Aggregate, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        GlueStudioPathList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        AggregateOperations.validate!(input[:aggs], context: "#{context}[:aggs]") unless input[:aggs].nil?
      end
    end

    class AggregateOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregateOperation, context: context)
        EnclosedInStringProperties.validate!(input[:column], context: "#{context}[:column]") unless input[:column].nil?
        Hearth::Validator.validate!(input[:agg_func], ::String, context: "#{context}[:agg_func]")
      end
    end

    class AggregateOperations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AggregateOperation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApplyMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplyMapping, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Mappings.validate!(input[:mapping], context: "#{context}[:mapping]") unless input[:mapping].nil?
      end
    end

    class AthenaConnectorSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AthenaConnectorSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connector_name], ::String, context: "#{context}[:connector_name]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        Hearth::Validator.validate!(input[:connection_table], ::String, context: "#{context}[:connection_table]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        GlueSchemas.validate!(input[:output_schemas], context: "#{context}[:output_schemas]") unless input[:output_schemas].nil?
      end
    end

    class AuditColumnNamesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AuditContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuditContext, context: context)
        Hearth::Validator.validate!(input[:additional_audit_context], ::String, context: "#{context}[:additional_audit_context]")
        AuditColumnNamesList.validate!(input[:requested_columns], context: "#{context}[:requested_columns]") unless input[:requested_columns].nil?
        Hearth::Validator.validate!(input[:all_columns_requested], ::TrueClass, ::FalseClass, context: "#{context}[:all_columns_requested]")
      end
    end

    class BackfillError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackfillError, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        BackfillErroredPartitionsList.validate!(input[:partitions], context: "#{context}[:partitions]") unless input[:partitions].nil?
      end
    end

    class BackfillErroredPartitionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PartitionValueList.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BackfillErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BackfillError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BasicCatalogTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BasicCatalogTarget, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
      end
    end

    class BatchCreatePartitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreatePartitionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        PartitionInputList.validate!(input[:partition_input_list], context: "#{context}[:partition_input_list]") unless input[:partition_input_list].nil?
      end
    end

    class BatchCreatePartitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchCreatePartitionOutput, context: context)
        PartitionErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchDeleteConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteConnectionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        DeleteConnectionNameList.validate!(input[:connection_name_list], context: "#{context}[:connection_name_list]") unless input[:connection_name_list].nil?
      end
    end

    class BatchDeleteConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteConnectionOutput, context: context)
        NameStringList.validate!(input[:succeeded], context: "#{context}[:succeeded]") unless input[:succeeded].nil?
        ErrorByName.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchDeletePartitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeletePartitionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        BatchDeletePartitionValueList.validate!(input[:partitions_to_delete], context: "#{context}[:partitions_to_delete]") unless input[:partitions_to_delete].nil?
      end
    end

    class BatchDeletePartitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeletePartitionOutput, context: context)
        PartitionErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchDeletePartitionValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PartitionValueList.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchDeleteTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteTableInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        BatchDeleteTableNameList.validate!(input[:tables_to_delete], context: "#{context}[:tables_to_delete]") unless input[:tables_to_delete].nil?
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
      end
    end

    class BatchDeleteTableNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BatchDeleteTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteTableOutput, context: context)
        TableErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchDeleteTableVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteTableVersionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        BatchDeleteTableVersionList.validate!(input[:version_ids], context: "#{context}[:version_ids]") unless input[:version_ids].nil?
      end
    end

    class BatchDeleteTableVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BatchDeleteTableVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteTableVersionOutput, context: context)
        TableVersionErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchGetBlueprintNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BatchGetBlueprintsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetBlueprintsInput, context: context)
        BatchGetBlueprintNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:include_blueprint], ::TrueClass, ::FalseClass, context: "#{context}[:include_blueprint]")
        Hearth::Validator.validate!(input[:include_parameter_spec], ::TrueClass, ::FalseClass, context: "#{context}[:include_parameter_spec]")
      end
    end

    class BatchGetBlueprintsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetBlueprintsOutput, context: context)
        Blueprints.validate!(input[:blueprints], context: "#{context}[:blueprints]") unless input[:blueprints].nil?
        BlueprintNames.validate!(input[:missing_blueprints], context: "#{context}[:missing_blueprints]") unless input[:missing_blueprints].nil?
      end
    end

    class BatchGetCrawlersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetCrawlersInput, context: context)
        CrawlerNameList.validate!(input[:crawler_names], context: "#{context}[:crawler_names]") unless input[:crawler_names].nil?
      end
    end

    class BatchGetCrawlersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetCrawlersOutput, context: context)
        CrawlerList.validate!(input[:crawlers], context: "#{context}[:crawlers]") unless input[:crawlers].nil?
        CrawlerNameList.validate!(input[:crawlers_not_found], context: "#{context}[:crawlers_not_found]") unless input[:crawlers_not_found].nil?
      end
    end

    class BatchGetCustomEntityTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetCustomEntityTypesInput, context: context)
        CustomEntityTypeNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
      end
    end

    class BatchGetCustomEntityTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetCustomEntityTypesOutput, context: context)
        CustomEntityTypes.validate!(input[:custom_entity_types], context: "#{context}[:custom_entity_types]") unless input[:custom_entity_types].nil?
        CustomEntityTypeNames.validate!(input[:custom_entity_types_not_found], context: "#{context}[:custom_entity_types_not_found]") unless input[:custom_entity_types_not_found].nil?
      end
    end

    class BatchGetDevEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDevEndpointsInput, context: context)
        DevEndpointNames.validate!(input[:dev_endpoint_names], context: "#{context}[:dev_endpoint_names]") unless input[:dev_endpoint_names].nil?
      end
    end

    class BatchGetDevEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDevEndpointsOutput, context: context)
        DevEndpointList.validate!(input[:dev_endpoints], context: "#{context}[:dev_endpoints]") unless input[:dev_endpoints].nil?
        DevEndpointNames.validate!(input[:dev_endpoints_not_found], context: "#{context}[:dev_endpoints_not_found]") unless input[:dev_endpoints_not_found].nil?
      end
    end

    class BatchGetJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetJobsInput, context: context)
        JobNameList.validate!(input[:job_names], context: "#{context}[:job_names]") unless input[:job_names].nil?
      end
    end

    class BatchGetJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetJobsOutput, context: context)
        JobList.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
        JobNameList.validate!(input[:jobs_not_found], context: "#{context}[:jobs_not_found]") unless input[:jobs_not_found].nil?
      end
    end

    class BatchGetPartitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetPartitionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        BatchGetPartitionValueList.validate!(input[:partitions_to_get], context: "#{context}[:partitions_to_get]") unless input[:partitions_to_get].nil?
      end
    end

    class BatchGetPartitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetPartitionOutput, context: context)
        PartitionList.validate!(input[:partitions], context: "#{context}[:partitions]") unless input[:partitions].nil?
        BatchGetPartitionValueList.validate!(input[:unprocessed_keys], context: "#{context}[:unprocessed_keys]") unless input[:unprocessed_keys].nil?
      end
    end

    class BatchGetPartitionValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PartitionValueList.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetTriggersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetTriggersInput, context: context)
        TriggerNameList.validate!(input[:trigger_names], context: "#{context}[:trigger_names]") unless input[:trigger_names].nil?
      end
    end

    class BatchGetTriggersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetTriggersOutput, context: context)
        TriggerList.validate!(input[:triggers], context: "#{context}[:triggers]") unless input[:triggers].nil?
        TriggerNameList.validate!(input[:triggers_not_found], context: "#{context}[:triggers_not_found]") unless input[:triggers_not_found].nil?
      end
    end

    class BatchGetWorkflowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetWorkflowsInput, context: context)
        WorkflowNames.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:include_graph], ::TrueClass, ::FalseClass, context: "#{context}[:include_graph]")
      end
    end

    class BatchGetWorkflowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetWorkflowsOutput, context: context)
        Workflows.validate!(input[:workflows], context: "#{context}[:workflows]") unless input[:workflows].nil?
        WorkflowNames.validate!(input[:missing_workflows], context: "#{context}[:missing_workflows]") unless input[:missing_workflows].nil?
      end
    end

    class BatchStopJobRunError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchStopJobRunError, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_run_id], ::String, context: "#{context}[:job_run_id]")
        ErrorDetail.validate!(input[:error_detail], context: "#{context}[:error_detail]") unless input[:error_detail].nil?
      end
    end

    class BatchStopJobRunErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchStopJobRunError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchStopJobRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchStopJobRunInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        BatchStopJobRunJobRunIdList.validate!(input[:job_run_ids], context: "#{context}[:job_run_ids]") unless input[:job_run_ids].nil?
      end
    end

    class BatchStopJobRunJobRunIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BatchStopJobRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchStopJobRunOutput, context: context)
        BatchStopJobRunSuccessfulSubmissionList.validate!(input[:successful_submissions], context: "#{context}[:successful_submissions]") unless input[:successful_submissions].nil?
        BatchStopJobRunErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchStopJobRunSuccessfulSubmission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchStopJobRunSuccessfulSubmission, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_run_id], ::String, context: "#{context}[:job_run_id]")
      end
    end

    class BatchStopJobRunSuccessfulSubmissionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchStopJobRunSuccessfulSubmission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchUpdatePartitionFailureEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdatePartitionFailureEntry, context: context)
        BoundedPartitionValueList.validate!(input[:partition_value_list], context: "#{context}[:partition_value_list]") unless input[:partition_value_list].nil?
        ErrorDetail.validate!(input[:error_detail], context: "#{context}[:error_detail]") unless input[:error_detail].nil?
      end
    end

    class BatchUpdatePartitionFailureList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchUpdatePartitionFailureEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchUpdatePartitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdatePartitionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        BatchUpdatePartitionRequestEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class BatchUpdatePartitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdatePartitionOutput, context: context)
        BatchUpdatePartitionFailureList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchUpdatePartitionRequestEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchUpdatePartitionRequestEntry, context: context)
        BoundedPartitionValueList.validate!(input[:partition_value_list], context: "#{context}[:partition_value_list]") unless input[:partition_value_list].nil?
        PartitionInput.validate!(input[:partition_input], context: "#{context}[:partition_input]") unless input[:partition_input].nil?
      end
    end

    class BatchUpdatePartitionRequestEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchUpdatePartitionRequestEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BinaryColumnStatisticsData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BinaryColumnStatisticsData, context: context)
        Hearth::Validator.validate!(input[:maximum_length], ::Integer, context: "#{context}[:maximum_length]")
        Hearth::Validator.validate!(input[:average_length], ::Float, context: "#{context}[:average_length]")
        Hearth::Validator.validate!(input[:number_of_nulls], ::Integer, context: "#{context}[:number_of_nulls]")
      end
    end

    class Blueprint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Blueprint, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_on], ::Time, context: "#{context}[:created_on]")
        Hearth::Validator.validate!(input[:last_modified_on], ::Time, context: "#{context}[:last_modified_on]")
        Hearth::Validator.validate!(input[:parameter_spec], ::String, context: "#{context}[:parameter_spec]")
        Hearth::Validator.validate!(input[:blueprint_location], ::String, context: "#{context}[:blueprint_location]")
        Hearth::Validator.validate!(input[:blueprint_service_location], ::String, context: "#{context}[:blueprint_service_location]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        LastActiveDefinition.validate!(input[:last_active_definition], context: "#{context}[:last_active_definition]") unless input[:last_active_definition].nil?
      end
    end

    class BlueprintDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlueprintDetails, context: context)
        Hearth::Validator.validate!(input[:blueprint_name], ::String, context: "#{context}[:blueprint_name]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
      end
    end

    class BlueprintNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BlueprintRun
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlueprintRun, context: context)
        Hearth::Validator.validate!(input[:blueprint_name], ::String, context: "#{context}[:blueprint_name]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        Hearth::Validator.validate!(input[:workflow_name], ::String, context: "#{context}[:workflow_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:started_on], ::Time, context: "#{context}[:started_on]")
        Hearth::Validator.validate!(input[:completed_on], ::Time, context: "#{context}[:completed_on]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:rollback_error_message], ::String, context: "#{context}[:rollback_error_message]")
        Hearth::Validator.validate!(input[:parameters], ::String, context: "#{context}[:parameters]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class BlueprintRuns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BlueprintRun.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Blueprints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Blueprint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BooleanColumnStatisticsData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BooleanColumnStatisticsData, context: context)
        Hearth::Validator.validate!(input[:number_of_trues], ::Integer, context: "#{context}[:number_of_trues]")
        Hearth::Validator.validate!(input[:number_of_falses], ::Integer, context: "#{context}[:number_of_falses]")
        Hearth::Validator.validate!(input[:number_of_nulls], ::Integer, context: "#{context}[:number_of_nulls]")
      end
    end

    class BoundedPartitionValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CancelMLTaskRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelMLTaskRunInput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
        Hearth::Validator.validate!(input[:task_run_id], ::String, context: "#{context}[:task_run_id]")
      end
    end

    class CancelMLTaskRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelMLTaskRunOutput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
        Hearth::Validator.validate!(input[:task_run_id], ::String, context: "#{context}[:task_run_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CancelStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelStatementInput, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:request_origin], ::String, context: "#{context}[:request_origin]")
      end
    end

    class CancelStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelStatementOutput, context: context)
      end
    end

    class CatalogEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CatalogEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CatalogEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CatalogEntry, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
      end
    end

    class CatalogImportStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CatalogImportStatus, context: context)
        Hearth::Validator.validate!(input[:import_completed], ::TrueClass, ::FalseClass, context: "#{context}[:import_completed]")
        Hearth::Validator.validate!(input[:import_time], ::Time, context: "#{context}[:import_time]")
        Hearth::Validator.validate!(input[:imported_by], ::String, context: "#{context}[:imported_by]")
      end
    end

    class CatalogKafkaSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CatalogKafkaSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:window_size], ::Integer, context: "#{context}[:window_size]")
        Hearth::Validator.validate!(input[:detect_schema], ::TrueClass, ::FalseClass, context: "#{context}[:detect_schema]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        KafkaStreamingSourceOptions.validate!(input[:streaming_options], context: "#{context}[:streaming_options]") unless input[:streaming_options].nil?
        StreamingDataPreviewOptions.validate!(input[:data_preview_options], context: "#{context}[:data_preview_options]") unless input[:data_preview_options].nil?
      end
    end

    class CatalogKinesisSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CatalogKinesisSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:window_size], ::Integer, context: "#{context}[:window_size]")
        Hearth::Validator.validate!(input[:detect_schema], ::TrueClass, ::FalseClass, context: "#{context}[:detect_schema]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        KinesisStreamingSourceOptions.validate!(input[:streaming_options], context: "#{context}[:streaming_options]") unless input[:streaming_options].nil?
        StreamingDataPreviewOptions.validate!(input[:data_preview_options], context: "#{context}[:data_preview_options]") unless input[:data_preview_options].nil?
      end
    end

    class CatalogSchemaChangePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CatalogSchemaChangePolicy, context: context)
        Hearth::Validator.validate!(input[:enable_update_catalog], ::TrueClass, ::FalseClass, context: "#{context}[:enable_update_catalog]")
        Hearth::Validator.validate!(input[:update_behavior], ::String, context: "#{context}[:update_behavior]")
      end
    end

    class CatalogSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CatalogSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
      end
    end

    class CatalogTablesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CatalogTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CatalogTarget, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        CatalogTablesList.validate!(input[:tables], context: "#{context}[:tables]") unless input[:tables].nil?
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
      end
    end

    class CatalogTargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CatalogTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CheckSchemaVersionValidityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckSchemaVersionValidityInput, context: context)
        Hearth::Validator.validate!(input[:data_format], ::String, context: "#{context}[:data_format]")
        Hearth::Validator.validate!(input[:schema_definition], ::String, context: "#{context}[:schema_definition]")
      end
    end

    class CheckSchemaVersionValidityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckSchemaVersionValidityOutput, context: context)
        Hearth::Validator.validate!(input[:valid], ::TrueClass, ::FalseClass, context: "#{context}[:valid]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
      end
    end

    class Classifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Classifier, context: context)
        GrokClassifier.validate!(input[:grok_classifier], context: "#{context}[:grok_classifier]") unless input[:grok_classifier].nil?
        XMLClassifier.validate!(input[:xml_classifier], context: "#{context}[:xml_classifier]") unless input[:xml_classifier].nil?
        JsonClassifier.validate!(input[:json_classifier], context: "#{context}[:json_classifier]") unless input[:json_classifier].nil?
        CsvClassifier.validate!(input[:csv_classifier], context: "#{context}[:csv_classifier]") unless input[:csv_classifier].nil?
      end
    end

    class ClassifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Classifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClassifierNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CloudWatchEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchEncryption, context: context)
        Hearth::Validator.validate!(input[:cloud_watch_encryption_mode], ::String, context: "#{context}[:cloud_watch_encryption_mode]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class CodeGenConfigurationNode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeGenConfigurationNode, context: context)
        AthenaConnectorSource.validate!(input[:athena_connector_source], context: "#{context}[:athena_connector_source]") unless input[:athena_connector_source].nil?
        JDBCConnectorSource.validate!(input[:jdbc_connector_source], context: "#{context}[:jdbc_connector_source]") unless input[:jdbc_connector_source].nil?
        SparkConnectorSource.validate!(input[:spark_connector_source], context: "#{context}[:spark_connector_source]") unless input[:spark_connector_source].nil?
        CatalogSource.validate!(input[:catalog_source], context: "#{context}[:catalog_source]") unless input[:catalog_source].nil?
        RedshiftSource.validate!(input[:redshift_source], context: "#{context}[:redshift_source]") unless input[:redshift_source].nil?
        S3CatalogSource.validate!(input[:s3_catalog_source], context: "#{context}[:s3_catalog_source]") unless input[:s3_catalog_source].nil?
        S3CsvSource.validate!(input[:s3_csv_source], context: "#{context}[:s3_csv_source]") unless input[:s3_csv_source].nil?
        S3JsonSource.validate!(input[:s3_json_source], context: "#{context}[:s3_json_source]") unless input[:s3_json_source].nil?
        S3ParquetSource.validate!(input[:s3_parquet_source], context: "#{context}[:s3_parquet_source]") unless input[:s3_parquet_source].nil?
        RelationalCatalogSource.validate!(input[:relational_catalog_source], context: "#{context}[:relational_catalog_source]") unless input[:relational_catalog_source].nil?
        DynamoDBCatalogSource.validate!(input[:dynamo_db_catalog_source], context: "#{context}[:dynamo_db_catalog_source]") unless input[:dynamo_db_catalog_source].nil?
        JDBCConnectorTarget.validate!(input[:jdbc_connector_target], context: "#{context}[:jdbc_connector_target]") unless input[:jdbc_connector_target].nil?
        SparkConnectorTarget.validate!(input[:spark_connector_target], context: "#{context}[:spark_connector_target]") unless input[:spark_connector_target].nil?
        BasicCatalogTarget.validate!(input[:catalog_target], context: "#{context}[:catalog_target]") unless input[:catalog_target].nil?
        RedshiftTarget.validate!(input[:redshift_target], context: "#{context}[:redshift_target]") unless input[:redshift_target].nil?
        S3CatalogTarget.validate!(input[:s3_catalog_target], context: "#{context}[:s3_catalog_target]") unless input[:s3_catalog_target].nil?
        S3GlueParquetTarget.validate!(input[:s3_glue_parquet_target], context: "#{context}[:s3_glue_parquet_target]") unless input[:s3_glue_parquet_target].nil?
        S3DirectTarget.validate!(input[:s3_direct_target], context: "#{context}[:s3_direct_target]") unless input[:s3_direct_target].nil?
        ApplyMapping.validate!(input[:apply_mapping], context: "#{context}[:apply_mapping]") unless input[:apply_mapping].nil?
        SelectFields.validate!(input[:select_fields], context: "#{context}[:select_fields]") unless input[:select_fields].nil?
        DropFields.validate!(input[:drop_fields], context: "#{context}[:drop_fields]") unless input[:drop_fields].nil?
        RenameField.validate!(input[:rename_field], context: "#{context}[:rename_field]") unless input[:rename_field].nil?
        Spigot.validate!(input[:spigot], context: "#{context}[:spigot]") unless input[:spigot].nil?
        Join.validate!(input[:join], context: "#{context}[:join]") unless input[:join].nil?
        SplitFields.validate!(input[:split_fields], context: "#{context}[:split_fields]") unless input[:split_fields].nil?
        SelectFromCollection.validate!(input[:select_from_collection], context: "#{context}[:select_from_collection]") unless input[:select_from_collection].nil?
        FillMissingValues.validate!(input[:fill_missing_values], context: "#{context}[:fill_missing_values]") unless input[:fill_missing_values].nil?
        Filter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        CustomCode.validate!(input[:custom_code], context: "#{context}[:custom_code]") unless input[:custom_code].nil?
        SparkSQL.validate!(input[:spark_sql], context: "#{context}[:spark_sql]") unless input[:spark_sql].nil?
        DirectKinesisSource.validate!(input[:direct_kinesis_source], context: "#{context}[:direct_kinesis_source]") unless input[:direct_kinesis_source].nil?
        DirectKafkaSource.validate!(input[:direct_kafka_source], context: "#{context}[:direct_kafka_source]") unless input[:direct_kafka_source].nil?
        CatalogKinesisSource.validate!(input[:catalog_kinesis_source], context: "#{context}[:catalog_kinesis_source]") unless input[:catalog_kinesis_source].nil?
        CatalogKafkaSource.validate!(input[:catalog_kafka_source], context: "#{context}[:catalog_kafka_source]") unless input[:catalog_kafka_source].nil?
        DropNullFields.validate!(input[:drop_null_fields], context: "#{context}[:drop_null_fields]") unless input[:drop_null_fields].nil?
        Merge.validate!(input[:merge], context: "#{context}[:merge]") unless input[:merge].nil?
        Union.validate!(input[:union], context: "#{context}[:union]") unless input[:union].nil?
        PIIDetection.validate!(input[:pii_detection], context: "#{context}[:pii_detection]") unless input[:pii_detection].nil?
        Aggregate.validate!(input[:aggregate], context: "#{context}[:aggregate]") unless input[:aggregate].nil?
        DropDuplicates.validate!(input[:drop_duplicates], context: "#{context}[:drop_duplicates]") unless input[:drop_duplicates].nil?
        GovernedCatalogTarget.validate!(input[:governed_catalog_target], context: "#{context}[:governed_catalog_target]") unless input[:governed_catalog_target].nil?
        GovernedCatalogSource.validate!(input[:governed_catalog_source], context: "#{context}[:governed_catalog_source]") unless input[:governed_catalog_source].nil?
        MicrosoftSQLServerCatalogSource.validate!(input[:microsoft_sql_server_catalog_source], context: "#{context}[:microsoft_sql_server_catalog_source]") unless input[:microsoft_sql_server_catalog_source].nil?
        MySQLCatalogSource.validate!(input[:my_sql_catalog_source], context: "#{context}[:my_sql_catalog_source]") unless input[:my_sql_catalog_source].nil?
        OracleSQLCatalogSource.validate!(input[:oracle_sql_catalog_source], context: "#{context}[:oracle_sql_catalog_source]") unless input[:oracle_sql_catalog_source].nil?
        PostgreSQLCatalogSource.validate!(input[:postgre_sql_catalog_source], context: "#{context}[:postgre_sql_catalog_source]") unless input[:postgre_sql_catalog_source].nil?
        MicrosoftSQLServerCatalogTarget.validate!(input[:microsoft_sql_server_catalog_target], context: "#{context}[:microsoft_sql_server_catalog_target]") unless input[:microsoft_sql_server_catalog_target].nil?
        MySQLCatalogTarget.validate!(input[:my_sql_catalog_target], context: "#{context}[:my_sql_catalog_target]") unless input[:my_sql_catalog_target].nil?
        OracleSQLCatalogTarget.validate!(input[:oracle_sql_catalog_target], context: "#{context}[:oracle_sql_catalog_target]") unless input[:oracle_sql_catalog_target].nil?
        PostgreSQLCatalogTarget.validate!(input[:postgre_sql_catalog_target], context: "#{context}[:postgre_sql_catalog_target]") unless input[:postgre_sql_catalog_target].nil?
      end
    end

    class CodeGenConfigurationNodes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          CodeGenConfigurationNode.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class CodeGenEdge
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeGenEdge, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:target_parameter], ::String, context: "#{context}[:target_parameter]")
      end
    end

    class CodeGenNode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeGenNode, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:node_type], ::String, context: "#{context}[:node_type]")
        CodeGenNodeArgs.validate!(input[:args], context: "#{context}[:args]") unless input[:args].nil?
        Hearth::Validator.validate!(input[:line_number], ::Integer, context: "#{context}[:line_number]")
      end
    end

    class CodeGenNodeArg
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeGenNodeArg, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:param], ::TrueClass, ::FalseClass, context: "#{context}[:param]")
      end
    end

    class CodeGenNodeArgs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CodeGenNodeArg.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Column
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Column, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class ColumnError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnError, context: context)
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
        ErrorDetail.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class ColumnErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ColumnError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnImportance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnImportance, context: context)
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
        Hearth::Validator.validate!(input[:importance], ::Float, context: "#{context}[:importance]")
      end
    end

    class ColumnImportanceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ColumnImportance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Column.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnRowFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnRowFilter, context: context)
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
        Hearth::Validator.validate!(input[:row_filter_expression], ::String, context: "#{context}[:row_filter_expression]")
      end
    end

    class ColumnRowFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ColumnRowFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnStatistics, context: context)
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
        Hearth::Validator.validate!(input[:column_type], ::String, context: "#{context}[:column_type]")
        Hearth::Validator.validate!(input[:analyzed_time], ::Time, context: "#{context}[:analyzed_time]")
        ColumnStatisticsData.validate!(input[:statistics_data], context: "#{context}[:statistics_data]") unless input[:statistics_data].nil?
      end
    end

    class ColumnStatisticsData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnStatisticsData, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        BooleanColumnStatisticsData.validate!(input[:boolean_column_statistics_data], context: "#{context}[:boolean_column_statistics_data]") unless input[:boolean_column_statistics_data].nil?
        DateColumnStatisticsData.validate!(input[:date_column_statistics_data], context: "#{context}[:date_column_statistics_data]") unless input[:date_column_statistics_data].nil?
        DecimalColumnStatisticsData.validate!(input[:decimal_column_statistics_data], context: "#{context}[:decimal_column_statistics_data]") unless input[:decimal_column_statistics_data].nil?
        DoubleColumnStatisticsData.validate!(input[:double_column_statistics_data], context: "#{context}[:double_column_statistics_data]") unless input[:double_column_statistics_data].nil?
        LongColumnStatisticsData.validate!(input[:long_column_statistics_data], context: "#{context}[:long_column_statistics_data]") unless input[:long_column_statistics_data].nil?
        StringColumnStatisticsData.validate!(input[:string_column_statistics_data], context: "#{context}[:string_column_statistics_data]") unless input[:string_column_statistics_data].nil?
        BinaryColumnStatisticsData.validate!(input[:binary_column_statistics_data], context: "#{context}[:binary_column_statistics_data]") unless input[:binary_column_statistics_data].nil?
      end
    end

    class ColumnStatisticsError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnStatisticsError, context: context)
        ColumnStatistics.validate!(input[:column_statistics], context: "#{context}[:column_statistics]") unless input[:column_statistics].nil?
        ErrorDetail.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class ColumnStatisticsErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ColumnStatisticsError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnStatisticsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ColumnStatistics.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnValueStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConcurrentRunsExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentRunsExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Condition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Condition, context: context)
        Hearth::Validator.validate!(input[:logical_operator], ::String, context: "#{context}[:logical_operator]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:crawler_name], ::String, context: "#{context}[:crawler_name]")
        Hearth::Validator.validate!(input[:crawl_state], ::String, context: "#{context}[:crawl_state]")
      end
    end

    class ConditionCheckFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConditionCheckFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConditionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Condition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConfusionMatrix
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfusionMatrix, context: context)
        Hearth::Validator.validate!(input[:num_true_positives], ::Integer, context: "#{context}[:num_true_positives]")
        Hearth::Validator.validate!(input[:num_false_positives], ::Integer, context: "#{context}[:num_false_positives]")
        Hearth::Validator.validate!(input[:num_true_negatives], ::Integer, context: "#{context}[:num_true_negatives]")
        Hearth::Validator.validate!(input[:num_false_negatives], ::Integer, context: "#{context}[:num_false_negatives]")
      end
    end

    class Connection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Connection, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        MatchCriteria.validate!(input[:match_criteria], context: "#{context}[:match_criteria]") unless input[:match_criteria].nil?
        ConnectionProperties.validate!(input[:connection_properties], context: "#{context}[:connection_properties]") unless input[:connection_properties].nil?
        PhysicalConnectionRequirements.validate!(input[:physical_connection_requirements], context: "#{context}[:physical_connection_requirements]") unless input[:physical_connection_requirements].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:last_updated_by], ::String, context: "#{context}[:last_updated_by]")
      end
    end

    class ConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        MatchCriteria.validate!(input[:match_criteria], context: "#{context}[:match_criteria]") unless input[:match_criteria].nil?
        ConnectionProperties.validate!(input[:connection_properties], context: "#{context}[:connection_properties]") unless input[:connection_properties].nil?
        PhysicalConnectionRequirements.validate!(input[:physical_connection_requirements], context: "#{context}[:physical_connection_requirements]") unless input[:physical_connection_requirements].nil?
      end
    end

    class ConnectionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Connection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectionPasswordEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionPasswordEncryption, context: context)
        Hearth::Validator.validate!(input[:return_connection_password_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:return_connection_password_encrypted]")
        Hearth::Validator.validate!(input[:aws_kms_key_id], ::String, context: "#{context}[:aws_kms_key_id]")
      end
    end

    class ConnectionProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ConnectionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionsList, context: context)
        OrchestrationStringList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
      end
    end

    class ContextWords
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Crawl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Crawl, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:started_on], ::Time, context: "#{context}[:started_on]")
        Hearth::Validator.validate!(input[:completed_on], ::Time, context: "#{context}[:completed_on]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:log_group], ::String, context: "#{context}[:log_group]")
        Hearth::Validator.validate!(input[:log_stream], ::String, context: "#{context}[:log_stream]")
      end
    end

    class CrawlList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Crawl.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Crawler
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Crawler, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        CrawlerTargets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ClassifierNameList.validate!(input[:classifiers], context: "#{context}[:classifiers]") unless input[:classifiers].nil?
        RecrawlPolicy.validate!(input[:recrawl_policy], context: "#{context}[:recrawl_policy]") unless input[:recrawl_policy].nil?
        SchemaChangePolicy.validate!(input[:schema_change_policy], context: "#{context}[:schema_change_policy]") unless input[:schema_change_policy].nil?
        LineageConfiguration.validate!(input[:lineage_configuration], context: "#{context}[:lineage_configuration]") unless input[:lineage_configuration].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:table_prefix], ::String, context: "#{context}[:table_prefix]")
        Schedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Hearth::Validator.validate!(input[:crawl_elapsed_time], ::Integer, context: "#{context}[:crawl_elapsed_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        LastCrawlInfo.validate!(input[:last_crawl], context: "#{context}[:last_crawl]") unless input[:last_crawl].nil?
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:configuration], ::String, context: "#{context}[:configuration]")
        Hearth::Validator.validate!(input[:crawler_security_configuration], ::String, context: "#{context}[:crawler_security_configuration]")
        LakeFormationConfiguration.validate!(input[:lake_formation_configuration], context: "#{context}[:lake_formation_configuration]") unless input[:lake_formation_configuration].nil?
      end
    end

    class CrawlerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Crawler.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CrawlerMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CrawlerMetrics, context: context)
        Hearth::Validator.validate!(input[:crawler_name], ::String, context: "#{context}[:crawler_name]")
        Hearth::Validator.validate!(input[:time_left_seconds], ::Float, context: "#{context}[:time_left_seconds]")
        Hearth::Validator.validate!(input[:still_estimating], ::TrueClass, ::FalseClass, context: "#{context}[:still_estimating]")
        Hearth::Validator.validate!(input[:last_runtime_seconds], ::Float, context: "#{context}[:last_runtime_seconds]")
        Hearth::Validator.validate!(input[:median_runtime_seconds], ::Float, context: "#{context}[:median_runtime_seconds]")
        Hearth::Validator.validate!(input[:tables_created], ::Integer, context: "#{context}[:tables_created]")
        Hearth::Validator.validate!(input[:tables_updated], ::Integer, context: "#{context}[:tables_updated]")
        Hearth::Validator.validate!(input[:tables_deleted], ::Integer, context: "#{context}[:tables_deleted]")
      end
    end

    class CrawlerMetricsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CrawlerMetrics.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CrawlerNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CrawlerNodeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CrawlerNodeDetails, context: context)
        CrawlList.validate!(input[:crawls], context: "#{context}[:crawls]") unless input[:crawls].nil?
      end
    end

    class CrawlerNotRunningException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CrawlerNotRunningException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CrawlerRunningException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CrawlerRunningException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CrawlerStoppingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CrawlerStoppingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CrawlerTargets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CrawlerTargets, context: context)
        S3TargetList.validate!(input[:s3_targets], context: "#{context}[:s3_targets]") unless input[:s3_targets].nil?
        JdbcTargetList.validate!(input[:jdbc_targets], context: "#{context}[:jdbc_targets]") unless input[:jdbc_targets].nil?
        MongoDBTargetList.validate!(input[:mongo_db_targets], context: "#{context}[:mongo_db_targets]") unless input[:mongo_db_targets].nil?
        DynamoDBTargetList.validate!(input[:dynamo_db_targets], context: "#{context}[:dynamo_db_targets]") unless input[:dynamo_db_targets].nil?
        CatalogTargetList.validate!(input[:catalog_targets], context: "#{context}[:catalog_targets]") unless input[:catalog_targets].nil?
        DeltaTargetList.validate!(input[:delta_targets], context: "#{context}[:delta_targets]") unless input[:delta_targets].nil?
      end
    end

    class CreateBlueprintInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBlueprintInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:blueprint_location], ::String, context: "#{context}[:blueprint_location]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateBlueprintOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBlueprintOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateClassifierInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClassifierInput, context: context)
        CreateGrokClassifierRequest.validate!(input[:grok_classifier], context: "#{context}[:grok_classifier]") unless input[:grok_classifier].nil?
        CreateXMLClassifierRequest.validate!(input[:xml_classifier], context: "#{context}[:xml_classifier]") unless input[:xml_classifier].nil?
        CreateJsonClassifierRequest.validate!(input[:json_classifier], context: "#{context}[:json_classifier]") unless input[:json_classifier].nil?
        CreateCsvClassifierRequest.validate!(input[:csv_classifier], context: "#{context}[:csv_classifier]") unless input[:csv_classifier].nil?
      end
    end

    class CreateClassifierOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClassifierOutput, context: context)
      end
    end

    class CreateConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        ConnectionInput.validate!(input[:connection_input], context: "#{context}[:connection_input]") unless input[:connection_input].nil?
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectionOutput, context: context)
      end
    end

    class CreateCrawlerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCrawlerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        CrawlerTargets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        ClassifierNameList.validate!(input[:classifiers], context: "#{context}[:classifiers]") unless input[:classifiers].nil?
        Hearth::Validator.validate!(input[:table_prefix], ::String, context: "#{context}[:table_prefix]")
        SchemaChangePolicy.validate!(input[:schema_change_policy], context: "#{context}[:schema_change_policy]") unless input[:schema_change_policy].nil?
        RecrawlPolicy.validate!(input[:recrawl_policy], context: "#{context}[:recrawl_policy]") unless input[:recrawl_policy].nil?
        LineageConfiguration.validate!(input[:lineage_configuration], context: "#{context}[:lineage_configuration]") unless input[:lineage_configuration].nil?
        LakeFormationConfiguration.validate!(input[:lake_formation_configuration], context: "#{context}[:lake_formation_configuration]") unless input[:lake_formation_configuration].nil?
        Hearth::Validator.validate!(input[:configuration], ::String, context: "#{context}[:configuration]")
        Hearth::Validator.validate!(input[:crawler_security_configuration], ::String, context: "#{context}[:crawler_security_configuration]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCrawlerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCrawlerOutput, context: context)
      end
    end

    class CreateCsvClassifierRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCsvClassifierRequest, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:quote_symbol], ::String, context: "#{context}[:quote_symbol]")
        Hearth::Validator.validate!(input[:contains_header], ::String, context: "#{context}[:contains_header]")
        CsvHeader.validate!(input[:header], context: "#{context}[:header]") unless input[:header].nil?
        Hearth::Validator.validate!(input[:disable_value_trimming], ::TrueClass, ::FalseClass, context: "#{context}[:disable_value_trimming]")
        Hearth::Validator.validate!(input[:allow_single_column], ::TrueClass, ::FalseClass, context: "#{context}[:allow_single_column]")
      end
    end

    class CreateCustomEntityTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomEntityTypeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:regex_string], ::String, context: "#{context}[:regex_string]")
        ContextWords.validate!(input[:context_words], context: "#{context}[:context_words]") unless input[:context_words].nil?
      end
    end

    class CreateCustomEntityTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCustomEntityTypeOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        DatabaseInput.validate!(input[:database_input], context: "#{context}[:database_input]") unless input[:database_input].nil?
      end
    end

    class CreateDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDatabaseOutput, context: context)
      end
    end

    class CreateDevEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDevEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        StringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:public_key], ::String, context: "#{context}[:public_key]")
        PublicKeysList.validate!(input[:public_keys], context: "#{context}[:public_keys]") unless input[:public_keys].nil?
        Hearth::Validator.validate!(input[:number_of_nodes], ::Integer, context: "#{context}[:number_of_nodes]")
        Hearth::Validator.validate!(input[:worker_type], ::String, context: "#{context}[:worker_type]")
        Hearth::Validator.validate!(input[:glue_version], ::String, context: "#{context}[:glue_version]")
        Hearth::Validator.validate!(input[:number_of_workers], ::Integer, context: "#{context}[:number_of_workers]")
        Hearth::Validator.validate!(input[:extra_python_libs_s3_path], ::String, context: "#{context}[:extra_python_libs_s3_path]")
        Hearth::Validator.validate!(input[:extra_jars_s3_path], ::String, context: "#{context}[:extra_jars_s3_path]")
        Hearth::Validator.validate!(input[:security_configuration], ::String, context: "#{context}[:security_configuration]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        MapValue.validate!(input[:arguments], context: "#{context}[:arguments]") unless input[:arguments].nil?
      end
    end

    class CreateDevEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDevEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        StringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:yarn_endpoint_address], ::String, context: "#{context}[:yarn_endpoint_address]")
        Hearth::Validator.validate!(input[:zeppelin_remote_spark_interpreter_port], ::Integer, context: "#{context}[:zeppelin_remote_spark_interpreter_port]")
        Hearth::Validator.validate!(input[:number_of_nodes], ::Integer, context: "#{context}[:number_of_nodes]")
        Hearth::Validator.validate!(input[:worker_type], ::String, context: "#{context}[:worker_type]")
        Hearth::Validator.validate!(input[:glue_version], ::String, context: "#{context}[:glue_version]")
        Hearth::Validator.validate!(input[:number_of_workers], ::Integer, context: "#{context}[:number_of_workers]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:extra_python_libs_s3_path], ::String, context: "#{context}[:extra_python_libs_s3_path]")
        Hearth::Validator.validate!(input[:extra_jars_s3_path], ::String, context: "#{context}[:extra_jars_s3_path]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:security_configuration], ::String, context: "#{context}[:security_configuration]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        MapValue.validate!(input[:arguments], context: "#{context}[:arguments]") unless input[:arguments].nil?
      end
    end

    class CreateGrokClassifierRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGrokClassifierRequest, context: context)
        Hearth::Validator.validate!(input[:classification], ::String, context: "#{context}[:classification]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:grok_pattern], ::String, context: "#{context}[:grok_pattern]")
        Hearth::Validator.validate!(input[:custom_patterns], ::String, context: "#{context}[:custom_patterns]")
      end
    end

    class CreateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:log_uri], ::String, context: "#{context}[:log_uri]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        ExecutionProperty.validate!(input[:execution_property], context: "#{context}[:execution_property]") unless input[:execution_property].nil?
        JobCommand.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        GenericMap.validate!(input[:default_arguments], context: "#{context}[:default_arguments]") unless input[:default_arguments].nil?
        GenericMap.validate!(input[:non_overridable_arguments], context: "#{context}[:non_overridable_arguments]") unless input[:non_overridable_arguments].nil?
        ConnectionsList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
        Hearth::Validator.validate!(input[:allocated_capacity], ::Integer, context: "#{context}[:allocated_capacity]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:max_capacity], ::Float, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:security_configuration], ::String, context: "#{context}[:security_configuration]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        NotificationProperty.validate!(input[:notification_property], context: "#{context}[:notification_property]") unless input[:notification_property].nil?
        Hearth::Validator.validate!(input[:glue_version], ::String, context: "#{context}[:glue_version]")
        Hearth::Validator.validate!(input[:number_of_workers], ::Integer, context: "#{context}[:number_of_workers]")
        Hearth::Validator.validate!(input[:worker_type], ::String, context: "#{context}[:worker_type]")
        CodeGenConfigurationNodes.validate!(input[:code_gen_configuration_nodes], context: "#{context}[:code_gen_configuration_nodes]") unless input[:code_gen_configuration_nodes].nil?
      end
    end

    class CreateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateJsonClassifierRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJsonClassifierRequest, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:json_path], ::String, context: "#{context}[:json_path]")
      end
    end

    class CreateMLTransformInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMLTransformInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        GlueTables.validate!(input[:input_record_tables], context: "#{context}[:input_record_tables]") unless input[:input_record_tables].nil?
        TransformParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:glue_version], ::String, context: "#{context}[:glue_version]")
        Hearth::Validator.validate!(input[:max_capacity], ::Float, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:worker_type], ::String, context: "#{context}[:worker_type]")
        Hearth::Validator.validate!(input[:number_of_workers], ::Integer, context: "#{context}[:number_of_workers]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        TransformEncryption.validate!(input[:transform_encryption], context: "#{context}[:transform_encryption]") unless input[:transform_encryption].nil?
      end
    end

    class CreateMLTransformOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMLTransformOutput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
      end
    end

    class CreatePartitionIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePartitionIndexInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        PartitionIndex.validate!(input[:partition_index], context: "#{context}[:partition_index]") unless input[:partition_index].nil?
      end
    end

    class CreatePartitionIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePartitionIndexOutput, context: context)
      end
    end

    class CreatePartitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePartitionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        PartitionInput.validate!(input[:partition_input], context: "#{context}[:partition_input]") unless input[:partition_input].nil?
      end
    end

    class CreatePartitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePartitionOutput, context: context)
      end
    end

    class CreateRegistryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRegistryInput, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRegistryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRegistryOutput, context: context)
        Hearth::Validator.validate!(input[:registry_arn], ::String, context: "#{context}[:registry_arn]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSchemaInput, context: context)
        RegistryId.validate!(input[:registry_id], context: "#{context}[:registry_id]") unless input[:registry_id].nil?
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:data_format], ::String, context: "#{context}[:data_format]")
        Hearth::Validator.validate!(input[:compatibility], ::String, context: "#{context}[:compatibility]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:schema_definition], ::String, context: "#{context}[:schema_definition]")
      end
    end

    class CreateSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:registry_arn], ::String, context: "#{context}[:registry_arn]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:data_format], ::String, context: "#{context}[:data_format]")
        Hearth::Validator.validate!(input[:compatibility], ::String, context: "#{context}[:compatibility]")
        Hearth::Validator.validate!(input[:schema_checkpoint], ::Integer, context: "#{context}[:schema_checkpoint]")
        Hearth::Validator.validate!(input[:latest_schema_version], ::Integer, context: "#{context}[:latest_schema_version]")
        Hearth::Validator.validate!(input[:next_schema_version], ::Integer, context: "#{context}[:next_schema_version]")
        Hearth::Validator.validate!(input[:schema_status], ::String, context: "#{context}[:schema_status]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:schema_version_id], ::String, context: "#{context}[:schema_version_id]")
        Hearth::Validator.validate!(input[:schema_version_status], ::String, context: "#{context}[:schema_version_status]")
      end
    end

    class CreateScriptInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateScriptInput, context: context)
        DagNodes.validate!(input[:dag_nodes], context: "#{context}[:dag_nodes]") unless input[:dag_nodes].nil?
        DagEdges.validate!(input[:dag_edges], context: "#{context}[:dag_edges]") unless input[:dag_edges].nil?
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
      end
    end

    class CreateScriptOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateScriptOutput, context: context)
        Hearth::Validator.validate!(input[:python_script], ::String, context: "#{context}[:python_script]")
        Hearth::Validator.validate!(input[:scala_code], ::String, context: "#{context}[:scala_code]")
      end
    end

    class CreateSecurityConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSecurityConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
      end
    end

    class CreateSecurityConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSecurityConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
      end
    end

    class CreateSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSessionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        SessionCommand.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:idle_timeout], ::Integer, context: "#{context}[:idle_timeout]")
        OrchestrationArgumentsMap.validate!(input[:default_arguments], context: "#{context}[:default_arguments]") unless input[:default_arguments].nil?
        ConnectionsList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
        Hearth::Validator.validate!(input[:max_capacity], ::Float, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:number_of_workers], ::Integer, context: "#{context}[:number_of_workers]")
        Hearth::Validator.validate!(input[:worker_type], ::String, context: "#{context}[:worker_type]")
        Hearth::Validator.validate!(input[:security_configuration], ::String, context: "#{context}[:security_configuration]")
        Hearth::Validator.validate!(input[:glue_version], ::String, context: "#{context}[:glue_version]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:request_origin], ::String, context: "#{context}[:request_origin]")
      end
    end

    class CreateSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSessionOutput, context: context)
        Session.validate!(input[:session], context: "#{context}[:session]") unless input[:session].nil?
      end
    end

    class CreateTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTableInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        TableInput.validate!(input[:table_input], context: "#{context}[:table_input]") unless input[:table_input].nil?
        PartitionIndexList.validate!(input[:partition_indexes], context: "#{context}[:partition_indexes]") unless input[:partition_indexes].nil?
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
      end
    end

    class CreateTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTableOutput, context: context)
      end
    end

    class CreateTriggerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTriggerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:workflow_name], ::String, context: "#{context}[:workflow_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Predicate.validate!(input[:predicate], context: "#{context}[:predicate]") unless input[:predicate].nil?
        ActionList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:start_on_creation], ::TrueClass, ::FalseClass, context: "#{context}[:start_on_creation]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        EventBatchingCondition.validate!(input[:event_batching_condition], context: "#{context}[:event_batching_condition]") unless input[:event_batching_condition].nil?
      end
    end

    class CreateTriggerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTriggerOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateUserDefinedFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserDefinedFunctionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        UserDefinedFunctionInput.validate!(input[:function_input], context: "#{context}[:function_input]") unless input[:function_input].nil?
      end
    end

    class CreateUserDefinedFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserDefinedFunctionOutput, context: context)
      end
    end

    class CreateWorkflowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkflowInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        WorkflowRunProperties.validate!(input[:default_run_properties], context: "#{context}[:default_run_properties]") unless input[:default_run_properties].nil?
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:max_concurrent_runs], ::Integer, context: "#{context}[:max_concurrent_runs]")
      end
    end

    class CreateWorkflowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkflowOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateXMLClassifierRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateXMLClassifierRequest, context: context)
        Hearth::Validator.validate!(input[:classification], ::String, context: "#{context}[:classification]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:row_tag], ::String, context: "#{context}[:row_tag]")
      end
    end

    class CsvClassifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CsvClassifier, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:quote_symbol], ::String, context: "#{context}[:quote_symbol]")
        Hearth::Validator.validate!(input[:contains_header], ::String, context: "#{context}[:contains_header]")
        CsvHeader.validate!(input[:header], context: "#{context}[:header]") unless input[:header].nil?
        Hearth::Validator.validate!(input[:disable_value_trimming], ::TrueClass, ::FalseClass, context: "#{context}[:disable_value_trimming]")
        Hearth::Validator.validate!(input[:allow_single_column], ::TrueClass, ::FalseClass, context: "#{context}[:allow_single_column]")
      end
    end

    class CsvHeader
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CustomCode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomCode, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ManyInputs.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:class_name], ::String, context: "#{context}[:class_name]")
        GlueSchemas.validate!(input[:output_schemas], context: "#{context}[:output_schemas]") unless input[:output_schemas].nil?
      end
    end

    class CustomEntityType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomEntityType, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:regex_string], ::String, context: "#{context}[:regex_string]")
        ContextWords.validate!(input[:context_words], context: "#{context}[:context_words]") unless input[:context_words].nil?
      end
    end

    class CustomEntityTypeNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CustomEntityTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomEntityType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DagEdges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CodeGenEdge.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DagNodes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CodeGenNode.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataCatalogEncryptionSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataCatalogEncryptionSettings, context: context)
        EncryptionAtRest.validate!(input[:encryption_at_rest], context: "#{context}[:encryption_at_rest]") unless input[:encryption_at_rest].nil?
        ConnectionPasswordEncryption.validate!(input[:connection_password_encryption], context: "#{context}[:connection_password_encryption]") unless input[:connection_password_encryption].nil?
      end
    end

    class DataLakePrincipal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataLakePrincipal, context: context)
        Hearth::Validator.validate!(input[:data_lake_principal_identifier], ::String, context: "#{context}[:data_lake_principal_identifier]")
      end
    end

    class Database
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Database, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        PrincipalPermissionsList.validate!(input[:create_table_default_permissions], context: "#{context}[:create_table_default_permissions]") unless input[:create_table_default_permissions].nil?
        DatabaseIdentifier.validate!(input[:target_database], context: "#{context}[:target_database]") unless input[:target_database].nil?
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
      end
    end

    class DatabaseIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatabaseIdentifier, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
      end
    end

    class DatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatabaseInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        PrincipalPermissionsList.validate!(input[:create_table_default_permissions], context: "#{context}[:create_table_default_permissions]") unless input[:create_table_default_permissions].nil?
        DatabaseIdentifier.validate!(input[:target_database], context: "#{context}[:target_database]") unless input[:target_database].nil?
      end
    end

    class DatabaseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Database.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Datatype
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Datatype, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
      end
    end

    class DateColumnStatisticsData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DateColumnStatisticsData, context: context)
        Hearth::Validator.validate!(input[:minimum_value], ::Time, context: "#{context}[:minimum_value]")
        Hearth::Validator.validate!(input[:maximum_value], ::Time, context: "#{context}[:maximum_value]")
        Hearth::Validator.validate!(input[:number_of_nulls], ::Integer, context: "#{context}[:number_of_nulls]")
        Hearth::Validator.validate!(input[:number_of_distinct_values], ::Integer, context: "#{context}[:number_of_distinct_values]")
      end
    end

    class DecimalColumnStatisticsData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecimalColumnStatisticsData, context: context)
        DecimalNumber.validate!(input[:minimum_value], context: "#{context}[:minimum_value]") unless input[:minimum_value].nil?
        DecimalNumber.validate!(input[:maximum_value], context: "#{context}[:maximum_value]") unless input[:maximum_value].nil?
        Hearth::Validator.validate!(input[:number_of_nulls], ::Integer, context: "#{context}[:number_of_nulls]")
        Hearth::Validator.validate!(input[:number_of_distinct_values], ::Integer, context: "#{context}[:number_of_distinct_values]")
      end
    end

    class DecimalNumber
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DecimalNumber, context: context)
        Hearth::Validator.validate!(input[:unscaled_value], ::String, context: "#{context}[:unscaled_value]")
        Hearth::Validator.validate!(input[:scale], ::Integer, context: "#{context}[:scale]")
      end
    end

    class DeleteBlueprintInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBlueprintInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteBlueprintOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBlueprintOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteClassifierInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClassifierInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteClassifierOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClassifierOutput, context: context)
      end
    end

    class DeleteColumnStatisticsForPartitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteColumnStatisticsForPartitionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        ValueStringList.validate!(input[:partition_values], context: "#{context}[:partition_values]") unless input[:partition_values].nil?
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
      end
    end

    class DeleteColumnStatisticsForPartitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteColumnStatisticsForPartitionOutput, context: context)
      end
    end

    class DeleteColumnStatisticsForTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteColumnStatisticsForTableInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:column_name], ::String, context: "#{context}[:column_name]")
      end
    end

    class DeleteColumnStatisticsForTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteColumnStatisticsForTableOutput, context: context)
      end
    end

    class DeleteConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
      end
    end

    class DeleteConnectionNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeleteConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectionOutput, context: context)
      end
    end

    class DeleteCrawlerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCrawlerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteCrawlerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCrawlerOutput, context: context)
      end
    end

    class DeleteCustomEntityTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomEntityTypeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteCustomEntityTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCustomEntityTypeOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDatabaseOutput, context: context)
      end
    end

    class DeleteDevEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDevEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
      end
    end

    class DeleteDevEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDevEndpointOutput, context: context)
      end
    end

    class DeleteJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
      end
    end

    class DeleteJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
      end
    end

    class DeleteMLTransformInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMLTransformInput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
      end
    end

    class DeleteMLTransformOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMLTransformOutput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
      end
    end

    class DeletePartitionIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePartitionIndexInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
      end
    end

    class DeletePartitionIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePartitionIndexOutput, context: context)
      end
    end

    class DeletePartitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePartitionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        ValueStringList.validate!(input[:partition_values], context: "#{context}[:partition_values]") unless input[:partition_values].nil?
      end
    end

    class DeletePartitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePartitionOutput, context: context)
      end
    end

    class DeleteRegistryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRegistryInput, context: context)
        RegistryId.validate!(input[:registry_id], context: "#{context}[:registry_id]") unless input[:registry_id].nil?
      end
    end

    class DeleteRegistryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRegistryOutput, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:registry_arn], ::String, context: "#{context}[:registry_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_hash_condition], ::String, context: "#{context}[:policy_hash_condition]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DeleteResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyOutput, context: context)
      end
    end

    class DeleteSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSchemaInput, context: context)
        SchemaId.validate!(input[:schema_id], context: "#{context}[:schema_id]") unless input[:schema_id].nil?
      end
    end

    class DeleteSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteSchemaVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSchemaVersionsInput, context: context)
        SchemaId.validate!(input[:schema_id], context: "#{context}[:schema_id]") unless input[:schema_id].nil?
        Hearth::Validator.validate!(input[:versions], ::String, context: "#{context}[:versions]")
      end
    end

    class DeleteSchemaVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSchemaVersionsOutput, context: context)
        SchemaVersionErrorList.validate!(input[:schema_version_errors], context: "#{context}[:schema_version_errors]") unless input[:schema_version_errors].nil?
      end
    end

    class DeleteSecurityConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSecurityConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteSecurityConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSecurityConfigurationOutput, context: context)
      end
    end

    class DeleteSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSessionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:request_origin], ::String, context: "#{context}[:request_origin]")
      end
    end

    class DeleteSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSessionOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTableInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
      end
    end

    class DeleteTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTableOutput, context: context)
      end
    end

    class DeleteTableVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTableVersionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class DeleteTableVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTableVersionOutput, context: context)
      end
    end

    class DeleteTriggerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTriggerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteTriggerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTriggerOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteUserDefinedFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserDefinedFunctionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class DeleteUserDefinedFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserDefinedFunctionOutput, context: context)
      end
    end

    class DeleteWorkflowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkflowInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteWorkflowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkflowOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeltaTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeltaTarget, context: context)
        PathList.validate!(input[:delta_tables], context: "#{context}[:delta_tables]") unless input[:delta_tables].nil?
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:write_manifest], ::TrueClass, ::FalseClass, context: "#{context}[:write_manifest]")
      end
    end

    class DeltaTargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeltaTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DevEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DevEndpoint, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        StringList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:yarn_endpoint_address], ::String, context: "#{context}[:yarn_endpoint_address]")
        Hearth::Validator.validate!(input[:private_address], ::String, context: "#{context}[:private_address]")
        Hearth::Validator.validate!(input[:zeppelin_remote_spark_interpreter_port], ::Integer, context: "#{context}[:zeppelin_remote_spark_interpreter_port]")
        Hearth::Validator.validate!(input[:public_address], ::String, context: "#{context}[:public_address]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:worker_type], ::String, context: "#{context}[:worker_type]")
        Hearth::Validator.validate!(input[:glue_version], ::String, context: "#{context}[:glue_version]")
        Hearth::Validator.validate!(input[:number_of_workers], ::Integer, context: "#{context}[:number_of_workers]")
        Hearth::Validator.validate!(input[:number_of_nodes], ::Integer, context: "#{context}[:number_of_nodes]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:extra_python_libs_s3_path], ::String, context: "#{context}[:extra_python_libs_s3_path]")
        Hearth::Validator.validate!(input[:extra_jars_s3_path], ::String, context: "#{context}[:extra_jars_s3_path]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:last_update_status], ::String, context: "#{context}[:last_update_status]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_modified_timestamp], ::Time, context: "#{context}[:last_modified_timestamp]")
        Hearth::Validator.validate!(input[:public_key], ::String, context: "#{context}[:public_key]")
        PublicKeysList.validate!(input[:public_keys], context: "#{context}[:public_keys]") unless input[:public_keys].nil?
        Hearth::Validator.validate!(input[:security_configuration], ::String, context: "#{context}[:security_configuration]")
        MapValue.validate!(input[:arguments], context: "#{context}[:arguments]") unless input[:arguments].nil?
      end
    end

    class DevEndpointCustomLibraries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DevEndpointCustomLibraries, context: context)
        Hearth::Validator.validate!(input[:extra_python_libs_s3_path], ::String, context: "#{context}[:extra_python_libs_s3_path]")
        Hearth::Validator.validate!(input[:extra_jars_s3_path], ::String, context: "#{context}[:extra_jars_s3_path]")
      end
    end

    class DevEndpointList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DevEndpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DevEndpointNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DevEndpointNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DirectKafkaSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectKafkaSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        KafkaStreamingSourceOptions.validate!(input[:streaming_options], context: "#{context}[:streaming_options]") unless input[:streaming_options].nil?
        Hearth::Validator.validate!(input[:window_size], ::Integer, context: "#{context}[:window_size]")
        Hearth::Validator.validate!(input[:detect_schema], ::TrueClass, ::FalseClass, context: "#{context}[:detect_schema]")
        StreamingDataPreviewOptions.validate!(input[:data_preview_options], context: "#{context}[:data_preview_options]") unless input[:data_preview_options].nil?
      end
    end

    class DirectKinesisSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectKinesisSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:window_size], ::Integer, context: "#{context}[:window_size]")
        Hearth::Validator.validate!(input[:detect_schema], ::TrueClass, ::FalseClass, context: "#{context}[:detect_schema]")
        KinesisStreamingSourceOptions.validate!(input[:streaming_options], context: "#{context}[:streaming_options]") unless input[:streaming_options].nil?
        StreamingDataPreviewOptions.validate!(input[:data_preview_options], context: "#{context}[:data_preview_options]") unless input[:data_preview_options].nil?
      end
    end

    class DirectSchemaChangePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectSchemaChangePolicy, context: context)
        Hearth::Validator.validate!(input[:enable_update_catalog], ::TrueClass, ::FalseClass, context: "#{context}[:enable_update_catalog]")
        Hearth::Validator.validate!(input[:update_behavior], ::String, context: "#{context}[:update_behavior]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
      end
    end

    class DoubleColumnStatisticsData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DoubleColumnStatisticsData, context: context)
        Hearth::Validator.validate!(input[:minimum_value], ::Float, context: "#{context}[:minimum_value]")
        Hearth::Validator.validate!(input[:maximum_value], ::Float, context: "#{context}[:maximum_value]")
        Hearth::Validator.validate!(input[:number_of_nulls], ::Integer, context: "#{context}[:number_of_nulls]")
        Hearth::Validator.validate!(input[:number_of_distinct_values], ::Integer, context: "#{context}[:number_of_distinct_values]")
      end
    end

    class DropDuplicates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DropDuplicates, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        LimitedPathList.validate!(input[:columns], context: "#{context}[:columns]") unless input[:columns].nil?
      end
    end

    class DropFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DropFields, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        GlueStudioPathList.validate!(input[:paths], context: "#{context}[:paths]") unless input[:paths].nil?
      end
    end

    class DropNullFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DropNullFields, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        NullCheckBoxList.validate!(input[:null_check_box_list], context: "#{context}[:null_check_box_list]") unless input[:null_check_box_list].nil?
        NullValueFields.validate!(input[:null_text_list], context: "#{context}[:null_text_list]") unless input[:null_text_list].nil?
      end
    end

    class DynamoDBCatalogSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DynamoDBCatalogSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
      end
    end

    class DynamoDBTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DynamoDBTarget, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:scan_all], ::TrueClass, ::FalseClass, context: "#{context}[:scan_all]")
        Hearth::Validator.validate!(input[:scan_rate], ::Float, context: "#{context}[:scan_rate]")
      end
    end

    class DynamoDBTargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DynamoDBTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Edge
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Edge, context: context)
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:destination_id], ::String, context: "#{context}[:destination_id]")
      end
    end

    class EdgeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Edge.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnclosedInStringProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EnclosedInStringPropertiesMinOne
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EncryptionAtRest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionAtRest, context: context)
        Hearth::Validator.validate!(input[:catalog_encryption_mode], ::String, context: "#{context}[:catalog_encryption_mode]")
        Hearth::Validator.validate!(input[:sse_aws_kms_key_id], ::String, context: "#{context}[:sse_aws_kms_key_id]")
      end
    end

    class EncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionConfiguration, context: context)
        S3EncryptionList.validate!(input[:s3_encryption], context: "#{context}[:s3_encryption]") unless input[:s3_encryption].nil?
        CloudWatchEncryption.validate!(input[:cloud_watch_encryption], context: "#{context}[:cloud_watch_encryption]") unless input[:cloud_watch_encryption].nil?
        JobBookmarksEncryption.validate!(input[:job_bookmarks_encryption], context: "#{context}[:job_bookmarks_encryption]") unless input[:job_bookmarks_encryption].nil?
      end
    end

    class EntityNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ErrorByName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ErrorDetail.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ErrorDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorDetail, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class ErrorDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorDetails, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class EvaluationMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluationMetrics, context: context)
        Hearth::Validator.validate!(input[:transform_type], ::String, context: "#{context}[:transform_type]")
        FindMatchesMetrics.validate!(input[:find_matches_metrics], context: "#{context}[:find_matches_metrics]") unless input[:find_matches_metrics].nil?
      end
    end

    class EventBatchingCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventBatchingCondition, context: context)
        Hearth::Validator.validate!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Hearth::Validator.validate!(input[:batch_window], ::Integer, context: "#{context}[:batch_window]")
      end
    end

    class ExecutionProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionProperty, context: context)
        Hearth::Validator.validate!(input[:max_concurrent_runs], ::Integer, context: "#{context}[:max_concurrent_runs]")
      end
    end

    class ExportLabelsTaskRunProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportLabelsTaskRunProperties, context: context)
        Hearth::Validator.validate!(input[:output_s3_path], ::String, context: "#{context}[:output_s3_path]")
      end
    end

    class FillMissingValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FillMissingValues, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:imputed_path], ::String, context: "#{context}[:imputed_path]")
        Hearth::Validator.validate!(input[:filled_path], ::String, context: "#{context}[:filled_path]")
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:logical_operator], ::String, context: "#{context}[:logical_operator]")
        FilterExpressions.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class FilterExpression
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterExpression, context: context)
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:negated], ::TrueClass, ::FalseClass, context: "#{context}[:negated]")
        FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class FilterExpressions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FilterExpression.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FilterValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterValue, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        EnclosedInStringProperties.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class FilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FilterValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FindMatchesMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindMatchesMetrics, context: context)
        Hearth::Validator.validate!(input[:area_under_pr_curve], ::Float, context: "#{context}[:area_under_pr_curve]")
        Hearth::Validator.validate!(input[:precision], ::Float, context: "#{context}[:precision]")
        Hearth::Validator.validate!(input[:recall], ::Float, context: "#{context}[:recall]")
        Hearth::Validator.validate!(input[:f1], ::Float, context: "#{context}[:f1]")
        ConfusionMatrix.validate!(input[:confusion_matrix], context: "#{context}[:confusion_matrix]") unless input[:confusion_matrix].nil?
        ColumnImportanceList.validate!(input[:column_importances], context: "#{context}[:column_importances]") unless input[:column_importances].nil?
      end
    end

    class FindMatchesParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindMatchesParameters, context: context)
        Hearth::Validator.validate!(input[:primary_key_column_name], ::String, context: "#{context}[:primary_key_column_name]")
        Hearth::Validator.validate!(input[:precision_recall_tradeoff], ::Float, context: "#{context}[:precision_recall_tradeoff]")
        Hearth::Validator.validate!(input[:accuracy_cost_tradeoff], ::Float, context: "#{context}[:accuracy_cost_tradeoff]")
        Hearth::Validator.validate!(input[:enforce_provided_labels], ::TrueClass, ::FalseClass, context: "#{context}[:enforce_provided_labels]")
      end
    end

    class FindMatchesTaskRunProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindMatchesTaskRunProperties, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_run_id], ::String, context: "#{context}[:job_run_id]")
      end
    end

    class GenericMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class GetBlueprintInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlueprintInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:include_blueprint], ::TrueClass, ::FalseClass, context: "#{context}[:include_blueprint]")
        Hearth::Validator.validate!(input[:include_parameter_spec], ::TrueClass, ::FalseClass, context: "#{context}[:include_parameter_spec]")
      end
    end

    class GetBlueprintOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlueprintOutput, context: context)
        Blueprint.validate!(input[:blueprint], context: "#{context}[:blueprint]") unless input[:blueprint].nil?
      end
    end

    class GetBlueprintRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlueprintRunInput, context: context)
        Hearth::Validator.validate!(input[:blueprint_name], ::String, context: "#{context}[:blueprint_name]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
      end
    end

    class GetBlueprintRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlueprintRunOutput, context: context)
        BlueprintRun.validate!(input[:blueprint_run], context: "#{context}[:blueprint_run]") unless input[:blueprint_run].nil?
      end
    end

    class GetBlueprintRunsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlueprintRunsInput, context: context)
        Hearth::Validator.validate!(input[:blueprint_name], ::String, context: "#{context}[:blueprint_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetBlueprintRunsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlueprintRunsOutput, context: context)
        BlueprintRuns.validate!(input[:blueprint_runs], context: "#{context}[:blueprint_runs]") unless input[:blueprint_runs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCatalogImportStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCatalogImportStatusInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
      end
    end

    class GetCatalogImportStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCatalogImportStatusOutput, context: context)
        CatalogImportStatus.validate!(input[:import_status], context: "#{context}[:import_status]") unless input[:import_status].nil?
      end
    end

    class GetClassifierInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClassifierInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetClassifierOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClassifierOutput, context: context)
        Classifier.validate!(input[:classifier], context: "#{context}[:classifier]") unless input[:classifier].nil?
      end
    end

    class GetClassifiersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClassifiersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetClassifiersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClassifiersOutput, context: context)
        ClassifierList.validate!(input[:classifiers], context: "#{context}[:classifiers]") unless input[:classifiers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetColumnNamesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetColumnStatisticsForPartitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetColumnStatisticsForPartitionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        ValueStringList.validate!(input[:partition_values], context: "#{context}[:partition_values]") unless input[:partition_values].nil?
        GetColumnNamesList.validate!(input[:column_names], context: "#{context}[:column_names]") unless input[:column_names].nil?
      end
    end

    class GetColumnStatisticsForPartitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetColumnStatisticsForPartitionOutput, context: context)
        ColumnStatisticsList.validate!(input[:column_statistics_list], context: "#{context}[:column_statistics_list]") unless input[:column_statistics_list].nil?
        ColumnErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class GetColumnStatisticsForTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetColumnStatisticsForTableInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        GetColumnNamesList.validate!(input[:column_names], context: "#{context}[:column_names]") unless input[:column_names].nil?
      end
    end

    class GetColumnStatisticsForTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetColumnStatisticsForTableOutput, context: context)
        ColumnStatisticsList.validate!(input[:column_statistics_list], context: "#{context}[:column_statistics_list]") unless input[:column_statistics_list].nil?
        ColumnErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class GetConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:hide_password], ::TrueClass, ::FalseClass, context: "#{context}[:hide_password]")
      end
    end

    class GetConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectionOutput, context: context)
        Connection.validate!(input[:connection], context: "#{context}[:connection]") unless input[:connection].nil?
      end
    end

    class GetConnectionsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectionsFilter, context: context)
        MatchCriteria.validate!(input[:match_criteria], context: "#{context}[:match_criteria]") unless input[:match_criteria].nil?
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
      end
    end

    class GetConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectionsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        GetConnectionsFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:hide_password], ::TrueClass, ::FalseClass, context: "#{context}[:hide_password]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetConnectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectionsOutput, context: context)
        ConnectionList.validate!(input[:connection_list], context: "#{context}[:connection_list]") unless input[:connection_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCrawlerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCrawlerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetCrawlerMetricsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCrawlerMetricsInput, context: context)
        CrawlerNameList.validate!(input[:crawler_name_list], context: "#{context}[:crawler_name_list]") unless input[:crawler_name_list].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCrawlerMetricsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCrawlerMetricsOutput, context: context)
        CrawlerMetricsList.validate!(input[:crawler_metrics_list], context: "#{context}[:crawler_metrics_list]") unless input[:crawler_metrics_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCrawlerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCrawlerOutput, context: context)
        Crawler.validate!(input[:crawler], context: "#{context}[:crawler]") unless input[:crawler].nil?
      end
    end

    class GetCrawlersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCrawlersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCrawlersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCrawlersOutput, context: context)
        CrawlerList.validate!(input[:crawlers], context: "#{context}[:crawlers]") unless input[:crawlers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCustomEntityTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCustomEntityTypeInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetCustomEntityTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCustomEntityTypeOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:regex_string], ::String, context: "#{context}[:regex_string]")
        ContextWords.validate!(input[:context_words], context: "#{context}[:context_words]") unless input[:context_words].nil?
      end
    end

    class GetDataCatalogEncryptionSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataCatalogEncryptionSettingsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
      end
    end

    class GetDataCatalogEncryptionSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataCatalogEncryptionSettingsOutput, context: context)
        DataCatalogEncryptionSettings.validate!(input[:data_catalog_encryption_settings], context: "#{context}[:data_catalog_encryption_settings]") unless input[:data_catalog_encryption_settings].nil?
      end
    end

    class GetDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDatabaseOutput, context: context)
        Database.validate!(input[:database], context: "#{context}[:database]") unless input[:database].nil?
      end
    end

    class GetDatabasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDatabasesInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:resource_share_type], ::String, context: "#{context}[:resource_share_type]")
      end
    end

    class GetDatabasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDatabasesOutput, context: context)
        DatabaseList.validate!(input[:database_list], context: "#{context}[:database_list]") unless input[:database_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDataflowGraphInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataflowGraphInput, context: context)
        Hearth::Validator.validate!(input[:python_script], ::String, context: "#{context}[:python_script]")
      end
    end

    class GetDataflowGraphOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataflowGraphOutput, context: context)
        DagNodes.validate!(input[:dag_nodes], context: "#{context}[:dag_nodes]") unless input[:dag_nodes].nil?
        DagEdges.validate!(input[:dag_edges], context: "#{context}[:dag_edges]") unless input[:dag_edges].nil?
      end
    end

    class GetDevEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
      end
    end

    class GetDevEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevEndpointOutput, context: context)
        DevEndpoint.validate!(input[:dev_endpoint], context: "#{context}[:dev_endpoint]") unless input[:dev_endpoint].nil?
      end
    end

    class GetDevEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDevEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDevEndpointsOutput, context: context)
        DevEndpointList.validate!(input[:dev_endpoints], context: "#{context}[:dev_endpoints]") unless input[:dev_endpoints].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetJobBookmarkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobBookmarkInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
      end
    end

    class GetJobBookmarkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobBookmarkOutput, context: context)
        JobBookmarkEntry.validate!(input[:job_bookmark_entry], context: "#{context}[:job_bookmark_entry]") unless input[:job_bookmark_entry].nil?
      end
    end

    class GetJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
      end
    end

    class GetJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobOutput, context: context)
        Job.validate!(input[:job], context: "#{context}[:job]") unless input[:job].nil?
      end
    end

    class GetJobRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobRunInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        Hearth::Validator.validate!(input[:predecessors_included], ::TrueClass, ::FalseClass, context: "#{context}[:predecessors_included]")
      end
    end

    class GetJobRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobRunOutput, context: context)
        JobRun.validate!(input[:job_run], context: "#{context}[:job_run]") unless input[:job_run].nil?
      end
    end

    class GetJobRunsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobRunsInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetJobRunsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobRunsOutput, context: context)
        JobRunList.validate!(input[:job_runs], context: "#{context}[:job_runs]") unless input[:job_runs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobsOutput, context: context)
        JobList.validate!(input[:jobs], context: "#{context}[:jobs]") unless input[:jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetMLTaskRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMLTaskRunInput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
        Hearth::Validator.validate!(input[:task_run_id], ::String, context: "#{context}[:task_run_id]")
      end
    end

    class GetMLTaskRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMLTaskRunOutput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
        Hearth::Validator.validate!(input[:task_run_id], ::String, context: "#{context}[:task_run_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        TaskRunProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        Hearth::Validator.validate!(input[:error_string], ::String, context: "#{context}[:error_string]")
        Hearth::Validator.validate!(input[:started_on], ::Time, context: "#{context}[:started_on]")
        Hearth::Validator.validate!(input[:last_modified_on], ::Time, context: "#{context}[:last_modified_on]")
        Hearth::Validator.validate!(input[:completed_on], ::Time, context: "#{context}[:completed_on]")
        Hearth::Validator.validate!(input[:execution_time], ::Integer, context: "#{context}[:execution_time]")
      end
    end

    class GetMLTaskRunsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMLTaskRunsInput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        TaskRunFilterCriteria.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        TaskRunSortCriteria.validate!(input[:sort], context: "#{context}[:sort]") unless input[:sort].nil?
      end
    end

    class GetMLTaskRunsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMLTaskRunsOutput, context: context)
        TaskRunList.validate!(input[:task_runs], context: "#{context}[:task_runs]") unless input[:task_runs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetMLTransformInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMLTransformInput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
      end
    end

    class GetMLTransformOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMLTransformOutput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_on], ::Time, context: "#{context}[:created_on]")
        Hearth::Validator.validate!(input[:last_modified_on], ::Time, context: "#{context}[:last_modified_on]")
        GlueTables.validate!(input[:input_record_tables], context: "#{context}[:input_record_tables]") unless input[:input_record_tables].nil?
        TransformParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        EvaluationMetrics.validate!(input[:evaluation_metrics], context: "#{context}[:evaluation_metrics]") unless input[:evaluation_metrics].nil?
        Hearth::Validator.validate!(input[:label_count], ::Integer, context: "#{context}[:label_count]")
        TransformSchema.validate!(input[:schema], context: "#{context}[:schema]") unless input[:schema].nil?
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:glue_version], ::String, context: "#{context}[:glue_version]")
        Hearth::Validator.validate!(input[:max_capacity], ::Float, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:worker_type], ::String, context: "#{context}[:worker_type]")
        Hearth::Validator.validate!(input[:number_of_workers], ::Integer, context: "#{context}[:number_of_workers]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
        TransformEncryption.validate!(input[:transform_encryption], context: "#{context}[:transform_encryption]") unless input[:transform_encryption].nil?
      end
    end

    class GetMLTransformsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMLTransformsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        TransformFilterCriteria.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        TransformSortCriteria.validate!(input[:sort], context: "#{context}[:sort]") unless input[:sort].nil?
      end
    end

    class GetMLTransformsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMLTransformsOutput, context: context)
        TransformList.validate!(input[:transforms], context: "#{context}[:transforms]") unless input[:transforms].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMappingInput, context: context)
        CatalogEntry.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        CatalogEntries.validate!(input[:sinks], context: "#{context}[:sinks]") unless input[:sinks].nil?
        Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
      end
    end

    class GetMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMappingOutput, context: context)
        MappingList.validate!(input[:mapping], context: "#{context}[:mapping]") unless input[:mapping].nil?
      end
    end

    class GetPartitionIndexesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPartitionIndexesInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetPartitionIndexesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPartitionIndexesOutput, context: context)
        PartitionIndexDescriptorList.validate!(input[:partition_index_descriptor_list], context: "#{context}[:partition_index_descriptor_list]") unless input[:partition_index_descriptor_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetPartitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPartitionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        ValueStringList.validate!(input[:partition_values], context: "#{context}[:partition_values]") unless input[:partition_values].nil?
      end
    end

    class GetPartitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPartitionOutput, context: context)
        Partition.validate!(input[:partition], context: "#{context}[:partition]") unless input[:partition].nil?
      end
    end

    class GetPartitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPartitionsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Segment.validate!(input[:segment], context: "#{context}[:segment]") unless input[:segment].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:exclude_column_schema], ::TrueClass, ::FalseClass, context: "#{context}[:exclude_column_schema]")
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        Hearth::Validator.validate!(input[:query_as_of_time], ::Time, context: "#{context}[:query_as_of_time]")
      end
    end

    class GetPartitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPartitionsOutput, context: context)
        PartitionList.validate!(input[:partitions], context: "#{context}[:partitions]") unless input[:partitions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetPlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPlanInput, context: context)
        MappingList.validate!(input[:mapping], context: "#{context}[:mapping]") unless input[:mapping].nil?
        CatalogEntry.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        CatalogEntries.validate!(input[:sinks], context: "#{context}[:sinks]") unless input[:sinks].nil?
        Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        AdditionalPlanOptionsMap.validate!(input[:additional_plan_options_map], context: "#{context}[:additional_plan_options_map]") unless input[:additional_plan_options_map].nil?
      end
    end

    class GetPlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPlanOutput, context: context)
        Hearth::Validator.validate!(input[:python_script], ::String, context: "#{context}[:python_script]")
        Hearth::Validator.validate!(input[:scala_code], ::String, context: "#{context}[:scala_code]")
      end
    end

    class GetRegistryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegistryInput, context: context)
        RegistryId.validate!(input[:registry_id], context: "#{context}[:registry_id]") unless input[:registry_id].nil?
      end
    end

    class GetRegistryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRegistryOutput, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:registry_arn], ::String, context: "#{context}[:registry_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:updated_time], ::String, context: "#{context}[:updated_time]")
      end
    end

    class GetResourcePoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePoliciesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetResourcePoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePoliciesOutput, context: context)
        GetResourcePoliciesResponseList.validate!(input[:get_resource_policies_response_list], context: "#{context}[:get_resource_policies_response_list]") unless input[:get_resource_policies_response_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetResourcePoliciesResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GluePolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class GetResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy_in_json], ::String, context: "#{context}[:policy_in_json]")
        Hearth::Validator.validate!(input[:policy_hash], ::String, context: "#{context}[:policy_hash]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class GetSchemaByDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSchemaByDefinitionInput, context: context)
        SchemaId.validate!(input[:schema_id], context: "#{context}[:schema_id]") unless input[:schema_id].nil?
        Hearth::Validator.validate!(input[:schema_definition], ::String, context: "#{context}[:schema_definition]")
      end
    end

    class GetSchemaByDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSchemaByDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:schema_version_id], ::String, context: "#{context}[:schema_version_id]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:data_format], ::String, context: "#{context}[:data_format]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
      end
    end

    class GetSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSchemaInput, context: context)
        SchemaId.validate!(input[:schema_id], context: "#{context}[:schema_id]") unless input[:schema_id].nil?
      end
    end

    class GetSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:registry_arn], ::String, context: "#{context}[:registry_arn]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:data_format], ::String, context: "#{context}[:data_format]")
        Hearth::Validator.validate!(input[:compatibility], ::String, context: "#{context}[:compatibility]")
        Hearth::Validator.validate!(input[:schema_checkpoint], ::Integer, context: "#{context}[:schema_checkpoint]")
        Hearth::Validator.validate!(input[:latest_schema_version], ::Integer, context: "#{context}[:latest_schema_version]")
        Hearth::Validator.validate!(input[:next_schema_version], ::Integer, context: "#{context}[:next_schema_version]")
        Hearth::Validator.validate!(input[:schema_status], ::String, context: "#{context}[:schema_status]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:updated_time], ::String, context: "#{context}[:updated_time]")
      end
    end

    class GetSchemaVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSchemaVersionInput, context: context)
        SchemaId.validate!(input[:schema_id], context: "#{context}[:schema_id]") unless input[:schema_id].nil?
        Hearth::Validator.validate!(input[:schema_version_id], ::String, context: "#{context}[:schema_version_id]")
        SchemaVersionNumber.validate!(input[:schema_version_number], context: "#{context}[:schema_version_number]") unless input[:schema_version_number].nil?
      end
    end

    class GetSchemaVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSchemaVersionOutput, context: context)
        Hearth::Validator.validate!(input[:schema_version_id], ::String, context: "#{context}[:schema_version_id]")
        Hearth::Validator.validate!(input[:schema_definition], ::String, context: "#{context}[:schema_definition]")
        Hearth::Validator.validate!(input[:data_format], ::String, context: "#{context}[:data_format]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
      end
    end

    class GetSchemaVersionsDiffInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSchemaVersionsDiffInput, context: context)
        SchemaId.validate!(input[:schema_id], context: "#{context}[:schema_id]") unless input[:schema_id].nil?
        SchemaVersionNumber.validate!(input[:first_schema_version_number], context: "#{context}[:first_schema_version_number]") unless input[:first_schema_version_number].nil?
        SchemaVersionNumber.validate!(input[:second_schema_version_number], context: "#{context}[:second_schema_version_number]") unless input[:second_schema_version_number].nil?
        Hearth::Validator.validate!(input[:schema_diff_type], ::String, context: "#{context}[:schema_diff_type]")
      end
    end

    class GetSchemaVersionsDiffOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSchemaVersionsDiffOutput, context: context)
        Hearth::Validator.validate!(input[:diff], ::String, context: "#{context}[:diff]")
      end
    end

    class GetSecurityConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSecurityConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetSecurityConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSecurityConfigurationOutput, context: context)
        SecurityConfiguration.validate!(input[:security_configuration], context: "#{context}[:security_configuration]") unless input[:security_configuration].nil?
      end
    end

    class GetSecurityConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSecurityConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetSecurityConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSecurityConfigurationsOutput, context: context)
        SecurityConfigurationList.validate!(input[:security_configurations], context: "#{context}[:security_configurations]") unless input[:security_configurations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSessionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:request_origin], ::String, context: "#{context}[:request_origin]")
      end
    end

    class GetSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSessionOutput, context: context)
        Session.validate!(input[:session], context: "#{context}[:session]") unless input[:session].nil?
      end
    end

    class GetStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStatementInput, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:request_origin], ::String, context: "#{context}[:request_origin]")
      end
    end

    class GetStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStatementOutput, context: context)
        Statement.validate!(input[:statement], context: "#{context}[:statement]") unless input[:statement].nil?
      end
    end

    class GetTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTableInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        Hearth::Validator.validate!(input[:query_as_of_time], ::Time, context: "#{context}[:query_as_of_time]")
      end
    end

    class GetTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTableOutput, context: context)
        Table.validate!(input[:table], context: "#{context}[:table]") unless input[:table].nil?
      end
    end

    class GetTableVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTableVersionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class GetTableVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTableVersionOutput, context: context)
        TableVersion.validate!(input[:table_version], context: "#{context}[:table_version]") unless input[:table_version].nil?
      end
    end

    class GetTableVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTableVersionsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetTableVersionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TableVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetTableVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTableVersionsOutput, context: context)
        GetTableVersionsList.validate!(input[:table_versions], context: "#{context}[:table_versions]") unless input[:table_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTablesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTablesInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        Hearth::Validator.validate!(input[:query_as_of_time], ::Time, context: "#{context}[:query_as_of_time]")
      end
    end

    class GetTablesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTablesOutput, context: context)
        TableList.validate!(input[:table_list], context: "#{context}[:table_list]") unless input[:table_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class GetTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTagsOutput, context: context)
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetTriggerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTriggerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetTriggerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTriggerOutput, context: context)
        Trigger.validate!(input[:trigger], context: "#{context}[:trigger]") unless input[:trigger].nil?
      end
    end

    class GetTriggersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTriggersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dependent_job_name], ::String, context: "#{context}[:dependent_job_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetTriggersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTriggersOutput, context: context)
        TriggerList.validate!(input[:triggers], context: "#{context}[:triggers]") unless input[:triggers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetUnfilteredPartitionMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUnfilteredPartitionMetadataInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        ValueStringList.validate!(input[:partition_values], context: "#{context}[:partition_values]") unless input[:partition_values].nil?
        AuditContext.validate!(input[:audit_context], context: "#{context}[:audit_context]") unless input[:audit_context].nil?
        PermissionTypeList.validate!(input[:supported_permission_types], context: "#{context}[:supported_permission_types]") unless input[:supported_permission_types].nil?
      end
    end

    class GetUnfilteredPartitionMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUnfilteredPartitionMetadataOutput, context: context)
        Partition.validate!(input[:partition], context: "#{context}[:partition]") unless input[:partition].nil?
        NameStringList.validate!(input[:authorized_columns], context: "#{context}[:authorized_columns]") unless input[:authorized_columns].nil?
        Hearth::Validator.validate!(input[:is_registered_with_lake_formation], ::TrueClass, ::FalseClass, context: "#{context}[:is_registered_with_lake_formation]")
      end
    end

    class GetUnfilteredPartitionsMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUnfilteredPartitionsMetadataInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        AuditContext.validate!(input[:audit_context], context: "#{context}[:audit_context]") unless input[:audit_context].nil?
        PermissionTypeList.validate!(input[:supported_permission_types], context: "#{context}[:supported_permission_types]") unless input[:supported_permission_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Segment.validate!(input[:segment], context: "#{context}[:segment]") unless input[:segment].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetUnfilteredPartitionsMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUnfilteredPartitionsMetadataOutput, context: context)
        UnfilteredPartitionList.validate!(input[:unfiltered_partitions], context: "#{context}[:unfiltered_partitions]") unless input[:unfiltered_partitions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetUnfilteredTableMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUnfilteredTableMetadataInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        AuditContext.validate!(input[:audit_context], context: "#{context}[:audit_context]") unless input[:audit_context].nil?
        PermissionTypeList.validate!(input[:supported_permission_types], context: "#{context}[:supported_permission_types]") unless input[:supported_permission_types].nil?
      end
    end

    class GetUnfilteredTableMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUnfilteredTableMetadataOutput, context: context)
        Table.validate!(input[:table], context: "#{context}[:table]") unless input[:table].nil?
        NameStringList.validate!(input[:authorized_columns], context: "#{context}[:authorized_columns]") unless input[:authorized_columns].nil?
        Hearth::Validator.validate!(input[:is_registered_with_lake_formation], ::TrueClass, ::FalseClass, context: "#{context}[:is_registered_with_lake_formation]")
        ColumnRowFilterList.validate!(input[:cell_filters], context: "#{context}[:cell_filters]") unless input[:cell_filters].nil?
      end
    end

    class GetUserDefinedFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserDefinedFunctionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
      end
    end

    class GetUserDefinedFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserDefinedFunctionOutput, context: context)
        UserDefinedFunction.validate!(input[:user_defined_function], context: "#{context}[:user_defined_function]") unless input[:user_defined_function].nil?
      end
    end

    class GetUserDefinedFunctionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserDefinedFunctionsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:pattern], ::String, context: "#{context}[:pattern]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetUserDefinedFunctionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUserDefinedFunctionsOutput, context: context)
        UserDefinedFunctionList.validate!(input[:user_defined_functions], context: "#{context}[:user_defined_functions]") unless input[:user_defined_functions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetWorkflowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkflowInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:include_graph], ::TrueClass, ::FalseClass, context: "#{context}[:include_graph]")
      end
    end

    class GetWorkflowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkflowOutput, context: context)
        Workflow.validate!(input[:workflow], context: "#{context}[:workflow]") unless input[:workflow].nil?
      end
    end

    class GetWorkflowRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkflowRunInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        Hearth::Validator.validate!(input[:include_graph], ::TrueClass, ::FalseClass, context: "#{context}[:include_graph]")
      end
    end

    class GetWorkflowRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkflowRunOutput, context: context)
        WorkflowRun.validate!(input[:run], context: "#{context}[:run]") unless input[:run].nil?
      end
    end

    class GetWorkflowRunPropertiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkflowRunPropertiesInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
      end
    end

    class GetWorkflowRunPropertiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkflowRunPropertiesOutput, context: context)
        WorkflowRunProperties.validate!(input[:run_properties], context: "#{context}[:run_properties]") unless input[:run_properties].nil?
      end
    end

    class GetWorkflowRunsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkflowRunsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:include_graph], ::TrueClass, ::FalseClass, context: "#{context}[:include_graph]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetWorkflowRunsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkflowRunsOutput, context: context)
        WorkflowRuns.validate!(input[:runs], context: "#{context}[:runs]") unless input[:runs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GlueEncryptionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlueEncryptionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GluePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GluePolicy, context: context)
        Hearth::Validator.validate!(input[:policy_in_json], ::String, context: "#{context}[:policy_in_json]")
        Hearth::Validator.validate!(input[:policy_hash], ::String, context: "#{context}[:policy_hash]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
      end
    end

    class GlueSchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlueSchema, context: context)
        GlueStudioSchemaColumnList.validate!(input[:columns], context: "#{context}[:columns]") unless input[:columns].nil?
      end
    end

    class GlueSchemas
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GlueSchema.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlueStudioPathList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnclosedInStringProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlueStudioSchemaColumn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlueStudioSchemaColumn, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class GlueStudioSchemaColumnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GlueStudioSchemaColumn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GlueTable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GlueTable, context: context)
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
      end
    end

    class GlueTables
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GlueTable.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GovernedCatalogSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GovernedCatalogSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
        Hearth::Validator.validate!(input[:partition_predicate], ::String, context: "#{context}[:partition_predicate]")
        S3SourceAdditionalOptions.validate!(input[:additional_options], context: "#{context}[:additional_options]") unless input[:additional_options].nil?
      end
    end

    class GovernedCatalogTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GovernedCatalogTarget, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        GlueStudioPathList.validate!(input[:partition_keys], context: "#{context}[:partition_keys]") unless input[:partition_keys].nil?
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        CatalogSchemaChangePolicy.validate!(input[:schema_change_policy], context: "#{context}[:schema_change_policy]") unless input[:schema_change_policy].nil?
      end
    end

    class GrokClassifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GrokClassifier, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:classification], ::String, context: "#{context}[:classification]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:grok_pattern], ::String, context: "#{context}[:grok_pattern]")
        Hearth::Validator.validate!(input[:custom_patterns], ::String, context: "#{context}[:custom_patterns]")
      end
    end

    class IdempotentParameterMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdempotentParameterMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IllegalBlueprintStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IllegalBlueprintStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IllegalSessionStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IllegalSessionStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IllegalWorkflowStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IllegalWorkflowStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ImportCatalogToGlueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportCatalogToGlueInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
      end
    end

    class ImportCatalogToGlueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportCatalogToGlueOutput, context: context)
      end
    end

    class ImportLabelsTaskRunProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportLabelsTaskRunProperties, context: context)
        Hearth::Validator.validate!(input[:input_s3_path], ::String, context: "#{context}[:input_s3_path]")
        Hearth::Validator.validate!(input[:replace], ::TrueClass, ::FalseClass, context: "#{context}[:replace]")
      end
    end

    class InternalServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JDBCConnectorOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JDBCConnectorOptions, context: context)
        Hearth::Validator.validate!(input[:filter_predicate], ::String, context: "#{context}[:filter_predicate]")
        Hearth::Validator.validate!(input[:partition_column], ::String, context: "#{context}[:partition_column]")
        Hearth::Validator.validate!(input[:lower_bound], ::Integer, context: "#{context}[:lower_bound]")
        Hearth::Validator.validate!(input[:upper_bound], ::Integer, context: "#{context}[:upper_bound]")
        Hearth::Validator.validate!(input[:num_partitions], ::Integer, context: "#{context}[:num_partitions]")
        EnclosedInStringProperties.validate!(input[:job_bookmark_keys], context: "#{context}[:job_bookmark_keys]") unless input[:job_bookmark_keys].nil?
        Hearth::Validator.validate!(input[:job_bookmark_keys_sort_order], ::String, context: "#{context}[:job_bookmark_keys_sort_order]")
        JDBCDataTypeMapping.validate!(input[:data_type_mapping], context: "#{context}[:data_type_mapping]") unless input[:data_type_mapping].nil?
      end
    end

    class JDBCConnectorSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JDBCConnectorSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connector_name], ::String, context: "#{context}[:connector_name]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        JDBCConnectorOptions.validate!(input[:additional_options], context: "#{context}[:additional_options]") unless input[:additional_options].nil?
        Hearth::Validator.validate!(input[:connection_table], ::String, context: "#{context}[:connection_table]")
        Hearth::Validator.validate!(input[:query], ::String, context: "#{context}[:query]")
        GlueSchemas.validate!(input[:output_schemas], context: "#{context}[:output_schemas]") unless input[:output_schemas].nil?
      end
    end

    class JDBCConnectorTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JDBCConnectorTarget, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connection_table], ::String, context: "#{context}[:connection_table]")
        Hearth::Validator.validate!(input[:connector_name], ::String, context: "#{context}[:connector_name]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        AdditionalOptions.validate!(input[:additional_options], context: "#{context}[:additional_options]") unless input[:additional_options].nil?
        GlueSchemas.validate!(input[:output_schemas], context: "#{context}[:output_schemas]") unless input[:output_schemas].nil?
      end
    end

    class JDBCDataTypeMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class JdbcTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JdbcTarget, context: context)
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        PathList.validate!(input[:exclusions], context: "#{context}[:exclusions]") unless input[:exclusions].nil?
      end
    end

    class JdbcTargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JdbcTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Job
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Job, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:log_uri], ::String, context: "#{context}[:log_uri]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:created_on], ::Time, context: "#{context}[:created_on]")
        Hearth::Validator.validate!(input[:last_modified_on], ::Time, context: "#{context}[:last_modified_on]")
        ExecutionProperty.validate!(input[:execution_property], context: "#{context}[:execution_property]") unless input[:execution_property].nil?
        JobCommand.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        GenericMap.validate!(input[:default_arguments], context: "#{context}[:default_arguments]") unless input[:default_arguments].nil?
        GenericMap.validate!(input[:non_overridable_arguments], context: "#{context}[:non_overridable_arguments]") unless input[:non_overridable_arguments].nil?
        ConnectionsList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
        Hearth::Validator.validate!(input[:allocated_capacity], ::Integer, context: "#{context}[:allocated_capacity]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:max_capacity], ::Float, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:worker_type], ::String, context: "#{context}[:worker_type]")
        Hearth::Validator.validate!(input[:number_of_workers], ::Integer, context: "#{context}[:number_of_workers]")
        Hearth::Validator.validate!(input[:security_configuration], ::String, context: "#{context}[:security_configuration]")
        NotificationProperty.validate!(input[:notification_property], context: "#{context}[:notification_property]") unless input[:notification_property].nil?
        Hearth::Validator.validate!(input[:glue_version], ::String, context: "#{context}[:glue_version]")
        CodeGenConfigurationNodes.validate!(input[:code_gen_configuration_nodes], context: "#{context}[:code_gen_configuration_nodes]") unless input[:code_gen_configuration_nodes].nil?
      end
    end

    class JobBookmarkEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobBookmarkEntry, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:run], ::Integer, context: "#{context}[:run]")
        Hearth::Validator.validate!(input[:attempt], ::Integer, context: "#{context}[:attempt]")
        Hearth::Validator.validate!(input[:previous_run_id], ::String, context: "#{context}[:previous_run_id]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        Hearth::Validator.validate!(input[:job_bookmark], ::String, context: "#{context}[:job_bookmark]")
      end
    end

    class JobBookmarksEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobBookmarksEncryption, context: context)
        Hearth::Validator.validate!(input[:job_bookmarks_encryption_mode], ::String, context: "#{context}[:job_bookmarks_encryption_mode]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class JobCommand
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobCommand, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:script_location], ::String, context: "#{context}[:script_location]")
        Hearth::Validator.validate!(input[:python_version], ::String, context: "#{context}[:python_version]")
      end
    end

    class JobList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Job.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class JobNodeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobNodeDetails, context: context)
        JobRunList.validate!(input[:job_runs], context: "#{context}[:job_runs]") unless input[:job_runs].nil?
      end
    end

    class JobRun
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobRun, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:attempt], ::Integer, context: "#{context}[:attempt]")
        Hearth::Validator.validate!(input[:previous_run_id], ::String, context: "#{context}[:previous_run_id]")
        Hearth::Validator.validate!(input[:trigger_name], ::String, context: "#{context}[:trigger_name]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:started_on], ::Time, context: "#{context}[:started_on]")
        Hearth::Validator.validate!(input[:last_modified_on], ::Time, context: "#{context}[:last_modified_on]")
        Hearth::Validator.validate!(input[:completed_on], ::Time, context: "#{context}[:completed_on]")
        Hearth::Validator.validate!(input[:job_run_state], ::String, context: "#{context}[:job_run_state]")
        GenericMap.validate!(input[:arguments], context: "#{context}[:arguments]") unless input[:arguments].nil?
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        PredecessorList.validate!(input[:predecessor_runs], context: "#{context}[:predecessor_runs]") unless input[:predecessor_runs].nil?
        Hearth::Validator.validate!(input[:allocated_capacity], ::Integer, context: "#{context}[:allocated_capacity]")
        Hearth::Validator.validate!(input[:execution_time], ::Integer, context: "#{context}[:execution_time]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:max_capacity], ::Float, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:worker_type], ::String, context: "#{context}[:worker_type]")
        Hearth::Validator.validate!(input[:number_of_workers], ::Integer, context: "#{context}[:number_of_workers]")
        Hearth::Validator.validate!(input[:security_configuration], ::String, context: "#{context}[:security_configuration]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        NotificationProperty.validate!(input[:notification_property], context: "#{context}[:notification_property]") unless input[:notification_property].nil?
        Hearth::Validator.validate!(input[:glue_version], ::String, context: "#{context}[:glue_version]")
        Hearth::Validator.validate!(input[:dpu_seconds], ::Float, context: "#{context}[:dpu_seconds]")
      end
    end

    class JobRunList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JobRun.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobUpdate, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:log_uri], ::String, context: "#{context}[:log_uri]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        ExecutionProperty.validate!(input[:execution_property], context: "#{context}[:execution_property]") unless input[:execution_property].nil?
        JobCommand.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        GenericMap.validate!(input[:default_arguments], context: "#{context}[:default_arguments]") unless input[:default_arguments].nil?
        GenericMap.validate!(input[:non_overridable_arguments], context: "#{context}[:non_overridable_arguments]") unless input[:non_overridable_arguments].nil?
        ConnectionsList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
        Hearth::Validator.validate!(input[:allocated_capacity], ::Integer, context: "#{context}[:allocated_capacity]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:max_capacity], ::Float, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:worker_type], ::String, context: "#{context}[:worker_type]")
        Hearth::Validator.validate!(input[:number_of_workers], ::Integer, context: "#{context}[:number_of_workers]")
        Hearth::Validator.validate!(input[:security_configuration], ::String, context: "#{context}[:security_configuration]")
        NotificationProperty.validate!(input[:notification_property], context: "#{context}[:notification_property]") unless input[:notification_property].nil?
        Hearth::Validator.validate!(input[:glue_version], ::String, context: "#{context}[:glue_version]")
        CodeGenConfigurationNodes.validate!(input[:code_gen_configuration_nodes], context: "#{context}[:code_gen_configuration_nodes]") unless input[:code_gen_configuration_nodes].nil?
      end
    end

    class Join
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Join, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TwoInputs.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:join_type], ::String, context: "#{context}[:join_type]")
        JoinColumns.validate!(input[:columns], context: "#{context}[:columns]") unless input[:columns].nil?
      end
    end

    class JoinColumn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JoinColumn, context: context)
        Hearth::Validator.validate!(input[:from], ::String, context: "#{context}[:from]")
        GlueStudioPathList.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
      end
    end

    class JoinColumns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JoinColumn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JsonClassifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JsonClassifier, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:json_path], ::String, context: "#{context}[:json_path]")
      end
    end

    class KafkaStreamingSourceOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KafkaStreamingSourceOptions, context: context)
        Hearth::Validator.validate!(input[:bootstrap_servers], ::String, context: "#{context}[:bootstrap_servers]")
        Hearth::Validator.validate!(input[:security_protocol], ::String, context: "#{context}[:security_protocol]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:topic_name], ::String, context: "#{context}[:topic_name]")
        Hearth::Validator.validate!(input[:assign], ::String, context: "#{context}[:assign]")
        Hearth::Validator.validate!(input[:subscribe_pattern], ::String, context: "#{context}[:subscribe_pattern]")
        Hearth::Validator.validate!(input[:classification], ::String, context: "#{context}[:classification]")
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:starting_offsets], ::String, context: "#{context}[:starting_offsets]")
        Hearth::Validator.validate!(input[:ending_offsets], ::String, context: "#{context}[:ending_offsets]")
        Hearth::Validator.validate!(input[:poll_timeout_ms], ::Integer, context: "#{context}[:poll_timeout_ms]")
        Hearth::Validator.validate!(input[:num_retries], ::Integer, context: "#{context}[:num_retries]")
        Hearth::Validator.validate!(input[:retry_interval_ms], ::Integer, context: "#{context}[:retry_interval_ms]")
        Hearth::Validator.validate!(input[:max_offsets_per_trigger], ::Integer, context: "#{context}[:max_offsets_per_trigger]")
        Hearth::Validator.validate!(input[:min_partitions], ::Integer, context: "#{context}[:min_partitions]")
      end
    end

    class KeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class KeySchemaElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeySchemaElement, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class KeySchemaElementList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeySchemaElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KinesisStreamingSourceOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KinesisStreamingSourceOptions, context: context)
        Hearth::Validator.validate!(input[:endpoint_url], ::String, context: "#{context}[:endpoint_url]")
        Hearth::Validator.validate!(input[:stream_name], ::String, context: "#{context}[:stream_name]")
        Hearth::Validator.validate!(input[:classification], ::String, context: "#{context}[:classification]")
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:starting_position], ::String, context: "#{context}[:starting_position]")
        Hearth::Validator.validate!(input[:max_fetch_time_in_ms], ::Integer, context: "#{context}[:max_fetch_time_in_ms]")
        Hearth::Validator.validate!(input[:max_fetch_records_per_shard], ::Integer, context: "#{context}[:max_fetch_records_per_shard]")
        Hearth::Validator.validate!(input[:max_record_per_read], ::Integer, context: "#{context}[:max_record_per_read]")
        Hearth::Validator.validate!(input[:add_idle_time_between_reads], ::TrueClass, ::FalseClass, context: "#{context}[:add_idle_time_between_reads]")
        Hearth::Validator.validate!(input[:idle_time_between_reads_in_ms], ::Integer, context: "#{context}[:idle_time_between_reads_in_ms]")
        Hearth::Validator.validate!(input[:describe_shard_interval], ::Integer, context: "#{context}[:describe_shard_interval]")
        Hearth::Validator.validate!(input[:num_retries], ::Integer, context: "#{context}[:num_retries]")
        Hearth::Validator.validate!(input[:retry_interval_ms], ::Integer, context: "#{context}[:retry_interval_ms]")
        Hearth::Validator.validate!(input[:max_retry_interval_ms], ::Integer, context: "#{context}[:max_retry_interval_ms]")
        Hearth::Validator.validate!(input[:avoid_empty_batches], ::TrueClass, ::FalseClass, context: "#{context}[:avoid_empty_batches]")
        Hearth::Validator.validate!(input[:stream_arn], ::String, context: "#{context}[:stream_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:role_session_name], ::String, context: "#{context}[:role_session_name]")
      end
    end

    class LabelingSetGenerationTaskRunProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelingSetGenerationTaskRunProperties, context: context)
        Hearth::Validator.validate!(input[:output_s3_path], ::String, context: "#{context}[:output_s3_path]")
      end
    end

    class LakeFormationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LakeFormationConfiguration, context: context)
        Hearth::Validator.validate!(input[:use_lake_formation_credentials], ::TrueClass, ::FalseClass, context: "#{context}[:use_lake_formation_credentials]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class LastActiveDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LastActiveDefinition, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_modified_on], ::Time, context: "#{context}[:last_modified_on]")
        Hearth::Validator.validate!(input[:parameter_spec], ::String, context: "#{context}[:parameter_spec]")
        Hearth::Validator.validate!(input[:blueprint_location], ::String, context: "#{context}[:blueprint_location]")
        Hearth::Validator.validate!(input[:blueprint_service_location], ::String, context: "#{context}[:blueprint_service_location]")
      end
    end

    class LastCrawlInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LastCrawlInfo, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:log_group], ::String, context: "#{context}[:log_group]")
        Hearth::Validator.validate!(input[:log_stream], ::String, context: "#{context}[:log_stream]")
        Hearth::Validator.validate!(input[:message_prefix], ::String, context: "#{context}[:message_prefix]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class LimitedPathList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LimitedStringList.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitedStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LineageConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LineageConfiguration, context: context)
        Hearth::Validator.validate!(input[:crawler_lineage_settings], ::String, context: "#{context}[:crawler_lineage_settings]")
      end
    end

    class ListBlueprintsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBlueprintsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListBlueprintsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBlueprintsOutput, context: context)
        BlueprintNames.validate!(input[:blueprints], context: "#{context}[:blueprints]") unless input[:blueprints].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCrawlersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCrawlersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListCrawlersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCrawlersOutput, context: context)
        CrawlerNameList.validate!(input[:crawler_names], context: "#{context}[:crawler_names]") unless input[:crawler_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCustomEntityTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomEntityTypesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListCustomEntityTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCustomEntityTypesOutput, context: context)
        CustomEntityTypes.validate!(input[:custom_entity_types], context: "#{context}[:custom_entity_types]") unless input[:custom_entity_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListDevEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevEndpointsOutput, context: context)
        DevEndpointNameList.validate!(input[:dev_endpoint_names], context: "#{context}[:dev_endpoint_names]") unless input[:dev_endpoint_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsOutput, context: context)
        JobNameList.validate!(input[:job_names], context: "#{context}[:job_names]") unless input[:job_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMLTransformsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMLTransformsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        TransformFilterCriteria.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        TransformSortCriteria.validate!(input[:sort], context: "#{context}[:sort]") unless input[:sort].nil?
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListMLTransformsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMLTransformsOutput, context: context)
        TransformIdList.validate!(input[:transform_ids], context: "#{context}[:transform_ids]") unless input[:transform_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRegistriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRegistriesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRegistriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRegistriesOutput, context: context)
        RegistryListDefinition.validate!(input[:registries], context: "#{context}[:registries]") unless input[:registries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSchemaVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchemaVersionsInput, context: context)
        SchemaId.validate!(input[:schema_id], context: "#{context}[:schema_id]") unless input[:schema_id].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSchemaVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchemaVersionsOutput, context: context)
        SchemaVersionList.validate!(input[:schemas], context: "#{context}[:schemas]") unless input[:schemas].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSchemasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchemasInput, context: context)
        RegistryId.validate!(input[:registry_id], context: "#{context}[:registry_id]") unless input[:registry_id].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSchemasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSchemasOutput, context: context)
        SchemaListDefinition.validate!(input[:schemas], context: "#{context}[:schemas]") unless input[:schemas].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSessionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSessionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:request_origin], ::String, context: "#{context}[:request_origin]")
      end
    end

    class ListSessionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSessionsOutput, context: context)
        SessionIdList.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
        SessionList.validate!(input[:sessions], context: "#{context}[:sessions]") unless input[:sessions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStatementsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStatementsInput, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:request_origin], ::String, context: "#{context}[:request_origin]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStatementsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStatementsOutput, context: context)
        StatementList.validate!(input[:statements], context: "#{context}[:statements]") unless input[:statements].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTriggersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTriggersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:dependent_job_name], ::String, context: "#{context}[:dependent_job_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTriggersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTriggersOutput, context: context)
        TriggerNameList.validate!(input[:trigger_names], context: "#{context}[:trigger_names]") unless input[:trigger_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWorkflowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkflowsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListWorkflowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkflowsOutput, context: context)
        WorkflowNames.validate!(input[:workflows], context: "#{context}[:workflows]") unless input[:workflows].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Location, context: context)
        CodeGenNodeArgs.validate!(input[:jdbc], context: "#{context}[:jdbc]") unless input[:jdbc].nil?
        CodeGenNodeArgs.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
        CodeGenNodeArgs.validate!(input[:dynamo_db], context: "#{context}[:dynamo_db]") unless input[:dynamo_db].nil?
      end
    end

    class LocationMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class LocationStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LongColumnStatisticsData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LongColumnStatisticsData, context: context)
        Hearth::Validator.validate!(input[:minimum_value], ::Integer, context: "#{context}[:minimum_value]")
        Hearth::Validator.validate!(input[:maximum_value], ::Integer, context: "#{context}[:maximum_value]")
        Hearth::Validator.validate!(input[:number_of_nulls], ::Integer, context: "#{context}[:number_of_nulls]")
        Hearth::Validator.validate!(input[:number_of_distinct_values], ::Integer, context: "#{context}[:number_of_distinct_values]")
      end
    end

    class MLTransform
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MLTransform, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_on], ::Time, context: "#{context}[:created_on]")
        Hearth::Validator.validate!(input[:last_modified_on], ::Time, context: "#{context}[:last_modified_on]")
        GlueTables.validate!(input[:input_record_tables], context: "#{context}[:input_record_tables]") unless input[:input_record_tables].nil?
        TransformParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        EvaluationMetrics.validate!(input[:evaluation_metrics], context: "#{context}[:evaluation_metrics]") unless input[:evaluation_metrics].nil?
        Hearth::Validator.validate!(input[:label_count], ::Integer, context: "#{context}[:label_count]")
        TransformSchema.validate!(input[:schema], context: "#{context}[:schema]") unless input[:schema].nil?
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:glue_version], ::String, context: "#{context}[:glue_version]")
        Hearth::Validator.validate!(input[:max_capacity], ::Float, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:worker_type], ::String, context: "#{context}[:worker_type]")
        Hearth::Validator.validate!(input[:number_of_workers], ::Integer, context: "#{context}[:number_of_workers]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
        TransformEncryption.validate!(input[:transform_encryption], context: "#{context}[:transform_encryption]") unless input[:transform_encryption].nil?
      end
    end

    class MLTransformNotReadyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MLTransformNotReadyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MLUserDataEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MLUserDataEncryption, context: context)
        Hearth::Validator.validate!(input[:ml_user_data_encryption_mode], ::String, context: "#{context}[:ml_user_data_encryption_mode]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class ManyInputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MapValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Mapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Mapping, context: context)
        Hearth::Validator.validate!(input[:to_key], ::String, context: "#{context}[:to_key]")
        EnclosedInStringProperties.validate!(input[:from_path], context: "#{context}[:from_path]") unless input[:from_path].nil?
        Hearth::Validator.validate!(input[:from_type], ::String, context: "#{context}[:from_type]")
        Hearth::Validator.validate!(input[:to_type], ::String, context: "#{context}[:to_type]")
        Hearth::Validator.validate!(input[:dropped], ::TrueClass, ::FalseClass, context: "#{context}[:dropped]")
        Mappings.validate!(input[:children], context: "#{context}[:children]") unless input[:children].nil?
      end
    end

    class MappingEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MappingEntry, context: context)
        Hearth::Validator.validate!(input[:source_table], ::String, context: "#{context}[:source_table]")
        Hearth::Validator.validate!(input[:source_path], ::String, context: "#{context}[:source_path]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:target_table], ::String, context: "#{context}[:target_table]")
        Hearth::Validator.validate!(input[:target_path], ::String, context: "#{context}[:target_path]")
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
      end
    end

    class MappingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MappingEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Mappings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Mapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MatchCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Merge
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Merge, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TwoInputs.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        GlueStudioPathList.validate!(input[:primary_keys], context: "#{context}[:primary_keys]") unless input[:primary_keys].nil?
      end
    end

    class MetadataInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetadataInfo, context: context)
        Hearth::Validator.validate!(input[:metadata_value], ::String, context: "#{context}[:metadata_value]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        OtherMetadataValueList.validate!(input[:other_metadata_value_list], context: "#{context}[:other_metadata_value_list]") unless input[:other_metadata_value_list].nil?
      end
    end

    class MetadataInfoMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          MetadataInfo.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MetadataKeyValuePair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetadataKeyValuePair, context: context)
        Hearth::Validator.validate!(input[:metadata_key], ::String, context: "#{context}[:metadata_key]")
        Hearth::Validator.validate!(input[:metadata_value], ::String, context: "#{context}[:metadata_value]")
      end
    end

    class MetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetadataKeyValuePair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MicrosoftSQLServerCatalogSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MicrosoftSQLServerCatalogSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
      end
    end

    class MicrosoftSQLServerCatalogTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MicrosoftSQLServerCatalogTarget, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
      end
    end

    class MongoDBTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MongoDBTarget, context: context)
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:scan_all], ::TrueClass, ::FalseClass, context: "#{context}[:scan_all]")
      end
    end

    class MongoDBTargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MongoDBTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MySQLCatalogSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MySQLCatalogSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
      end
    end

    class MySQLCatalogTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MySQLCatalogTarget, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
      end
    end

    class NameStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NoScheduleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoScheduleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Node
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Node, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:unique_id], ::String, context: "#{context}[:unique_id]")
        TriggerNodeDetails.validate!(input[:trigger_details], context: "#{context}[:trigger_details]") unless input[:trigger_details].nil?
        JobNodeDetails.validate!(input[:job_details], context: "#{context}[:job_details]") unless input[:job_details].nil?
        CrawlerNodeDetails.validate!(input[:crawler_details], context: "#{context}[:crawler_details]") unless input[:crawler_details].nil?
      end
    end

    class NodeIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Node.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotificationProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationProperty, context: context)
        Hearth::Validator.validate!(input[:notify_delay_after], ::Integer, context: "#{context}[:notify_delay_after]")
      end
    end

    class NullCheckBoxList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NullCheckBoxList, context: context)
        Hearth::Validator.validate!(input[:is_empty], ::TrueClass, ::FalseClass, context: "#{context}[:is_empty]")
        Hearth::Validator.validate!(input[:is_null_string], ::TrueClass, ::FalseClass, context: "#{context}[:is_null_string]")
        Hearth::Validator.validate!(input[:is_neg_one], ::TrueClass, ::FalseClass, context: "#{context}[:is_neg_one]")
      end
    end

    class NullValueField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NullValueField, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Datatype.validate!(input[:datatype], context: "#{context}[:datatype]") unless input[:datatype].nil?
      end
    end

    class NullValueFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NullValueField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OneInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OperationTimeoutException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationTimeoutException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OracleSQLCatalogSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OracleSQLCatalogSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
      end
    end

    class OracleSQLCatalogTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OracleSQLCatalogTarget, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
      end
    end

    class OrchestrationArgumentsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class OrchestrationStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Order
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Order, context: context)
        Hearth::Validator.validate!(input[:column], ::String, context: "#{context}[:column]")
        Hearth::Validator.validate!(input[:sort_order], ::Integer, context: "#{context}[:sort_order]")
      end
    end

    class OrderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Order.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OtherMetadataValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OtherMetadataValueListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OtherMetadataValueListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OtherMetadataValueListItem, context: context)
        Hearth::Validator.validate!(input[:metadata_value], ::String, context: "#{context}[:metadata_value]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
      end
    end

    class PIIDetection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PIIDetection, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:pii_type], ::String, context: "#{context}[:pii_type]")
        EnclosedInStringProperties.validate!(input[:entity_types_to_detect], context: "#{context}[:entity_types_to_detect]") unless input[:entity_types_to_detect].nil?
        Hearth::Validator.validate!(input[:output_column_name], ::String, context: "#{context}[:output_column_name]")
        Hearth::Validator.validate!(input[:sample_fraction], ::Float, context: "#{context}[:sample_fraction]")
        Hearth::Validator.validate!(input[:threshold_fraction], ::Float, context: "#{context}[:threshold_fraction]")
        Hearth::Validator.validate!(input[:mask_value], ::String, context: "#{context}[:mask_value]")
      end
    end

    class ParametersMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Partition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Partition, context: context)
        ValueStringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_access_time], ::Time, context: "#{context}[:last_access_time]")
        StorageDescriptor.validate!(input[:storage_descriptor], context: "#{context}[:storage_descriptor]") unless input[:storage_descriptor].nil?
        ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:last_analyzed_time], ::Time, context: "#{context}[:last_analyzed_time]")
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
      end
    end

    class PartitionError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartitionError, context: context)
        ValueStringList.validate!(input[:partition_values], context: "#{context}[:partition_values]") unless input[:partition_values].nil?
        ErrorDetail.validate!(input[:error_detail], context: "#{context}[:error_detail]") unless input[:error_detail].nil?
      end
    end

    class PartitionErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PartitionError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PartitionIndex
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartitionIndex, context: context)
        KeyList.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
      end
    end

    class PartitionIndexDescriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartitionIndexDescriptor, context: context)
        Hearth::Validator.validate!(input[:index_name], ::String, context: "#{context}[:index_name]")
        KeySchemaElementList.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
        Hearth::Validator.validate!(input[:index_status], ::String, context: "#{context}[:index_status]")
        BackfillErrors.validate!(input[:backfill_errors], context: "#{context}[:backfill_errors]") unless input[:backfill_errors].nil?
      end
    end

    class PartitionIndexDescriptorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PartitionIndexDescriptor.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PartitionIndexList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PartitionIndex.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PartitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartitionInput, context: context)
        ValueStringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:last_access_time], ::Time, context: "#{context}[:last_access_time]")
        StorageDescriptor.validate!(input[:storage_descriptor], context: "#{context}[:storage_descriptor]") unless input[:storage_descriptor].nil?
        ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:last_analyzed_time], ::Time, context: "#{context}[:last_analyzed_time]")
      end
    end

    class PartitionInputList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PartitionInput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PartitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Partition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PartitionValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PartitionValueList, context: context)
        ValueStringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class PathList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PermissionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PermissionTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PermissionTypeMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PermissionTypeMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PhysicalConnectionRequirements
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PhysicalConnectionRequirements, context: context)
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        SecurityGroupIdList.validate!(input[:security_group_id_list], context: "#{context}[:security_group_id_list]") unless input[:security_group_id_list].nil?
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
      end
    end

    class PostgreSQLCatalogSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostgreSQLCatalogSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
      end
    end

    class PostgreSQLCatalogTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostgreSQLCatalogTarget, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
      end
    end

    class Predecessor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Predecessor, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
      end
    end

    class PredecessorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Predecessor.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Predicate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Predicate, context: context)
        Hearth::Validator.validate!(input[:logical], ::String, context: "#{context}[:logical]")
        ConditionList.validate!(input[:conditions], context: "#{context}[:conditions]") unless input[:conditions].nil?
      end
    end

    class PrincipalPermissions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrincipalPermissions, context: context)
        DataLakePrincipal.validate!(input[:principal], context: "#{context}[:principal]") unless input[:principal].nil?
        PermissionList.validate!(input[:permissions], context: "#{context}[:permissions]") unless input[:permissions].nil?
      end
    end

    class PrincipalPermissionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PrincipalPermissions.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PropertyPredicate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyPredicate, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:comparator], ::String, context: "#{context}[:comparator]")
      end
    end

    class PublicKeysList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PutDataCatalogEncryptionSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDataCatalogEncryptionSettingsInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        DataCatalogEncryptionSettings.validate!(input[:data_catalog_encryption_settings], context: "#{context}[:data_catalog_encryption_settings]") unless input[:data_catalog_encryption_settings].nil?
      end
    end

    class PutDataCatalogEncryptionSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDataCatalogEncryptionSettingsOutput, context: context)
      end
    end

    class PutResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_in_json], ::String, context: "#{context}[:policy_in_json]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:policy_hash_condition], ::String, context: "#{context}[:policy_hash_condition]")
        Hearth::Validator.validate!(input[:policy_exists_condition], ::String, context: "#{context}[:policy_exists_condition]")
        Hearth::Validator.validate!(input[:enable_hybrid], ::String, context: "#{context}[:enable_hybrid]")
      end
    end

    class PutResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy_hash], ::String, context: "#{context}[:policy_hash]")
      end
    end

    class PutSchemaVersionMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSchemaVersionMetadataInput, context: context)
        SchemaId.validate!(input[:schema_id], context: "#{context}[:schema_id]") unless input[:schema_id].nil?
        SchemaVersionNumber.validate!(input[:schema_version_number], context: "#{context}[:schema_version_number]") unless input[:schema_version_number].nil?
        Hearth::Validator.validate!(input[:schema_version_id], ::String, context: "#{context}[:schema_version_id]")
        MetadataKeyValuePair.validate!(input[:metadata_key_value], context: "#{context}[:metadata_key_value]") unless input[:metadata_key_value].nil?
      end
    end

    class PutSchemaVersionMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutSchemaVersionMetadataOutput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:latest_version], ::TrueClass, ::FalseClass, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:schema_version_id], ::String, context: "#{context}[:schema_version_id]")
        Hearth::Validator.validate!(input[:metadata_key], ::String, context: "#{context}[:metadata_key]")
        Hearth::Validator.validate!(input[:metadata_value], ::String, context: "#{context}[:metadata_value]")
      end
    end

    class PutWorkflowRunPropertiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutWorkflowRunPropertiesInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        WorkflowRunProperties.validate!(input[:run_properties], context: "#{context}[:run_properties]") unless input[:run_properties].nil?
      end
    end

    class PutWorkflowRunPropertiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutWorkflowRunPropertiesOutput, context: context)
      end
    end

    class QuerySchemaVersionMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QuerySchemaVersionMetadataInput, context: context)
        SchemaId.validate!(input[:schema_id], context: "#{context}[:schema_id]") unless input[:schema_id].nil?
        SchemaVersionNumber.validate!(input[:schema_version_number], context: "#{context}[:schema_version_number]") unless input[:schema_version_number].nil?
        Hearth::Validator.validate!(input[:schema_version_id], ::String, context: "#{context}[:schema_version_id]")
        MetadataList.validate!(input[:metadata_list], context: "#{context}[:metadata_list]") unless input[:metadata_list].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class QuerySchemaVersionMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QuerySchemaVersionMetadataOutput, context: context)
        MetadataInfoMap.validate!(input[:metadata_info_map], context: "#{context}[:metadata_info_map]") unless input[:metadata_info_map].nil?
        Hearth::Validator.validate!(input[:schema_version_id], ::String, context: "#{context}[:schema_version_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class RecrawlPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecrawlPolicy, context: context)
        Hearth::Validator.validate!(input[:recrawl_behavior], ::String, context: "#{context}[:recrawl_behavior]")
      end
    end

    class RedshiftSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
        Hearth::Validator.validate!(input[:redshift_tmp_dir], ::String, context: "#{context}[:redshift_tmp_dir]")
        Hearth::Validator.validate!(input[:tmp_dir_iam_role], ::String, context: "#{context}[:tmp_dir_iam_role]")
      end
    end

    class RedshiftTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftTarget, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
        Hearth::Validator.validate!(input[:redshift_tmp_dir], ::String, context: "#{context}[:redshift_tmp_dir]")
        Hearth::Validator.validate!(input[:tmp_dir_iam_role], ::String, context: "#{context}[:tmp_dir_iam_role]")
        UpsertRedshiftTargetOptions.validate!(input[:upsert_redshift_options], context: "#{context}[:upsert_redshift_options]") unless input[:upsert_redshift_options].nil?
      end
    end

    class RegisterSchemaVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterSchemaVersionInput, context: context)
        SchemaId.validate!(input[:schema_id], context: "#{context}[:schema_id]") unless input[:schema_id].nil?
        Hearth::Validator.validate!(input[:schema_definition], ::String, context: "#{context}[:schema_definition]")
      end
    end

    class RegisterSchemaVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterSchemaVersionOutput, context: context)
        Hearth::Validator.validate!(input[:schema_version_id], ::String, context: "#{context}[:schema_version_id]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class RegistryId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegistryId, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:registry_arn], ::String, context: "#{context}[:registry_arn]")
      end
    end

    class RegistryListDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RegistryListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegistryListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegistryListItem, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:registry_arn], ::String, context: "#{context}[:registry_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:updated_time], ::String, context: "#{context}[:updated_time]")
      end
    end

    class RelationalCatalogSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelationalCatalogSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
      end
    end

    class RemoveSchemaVersionMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveSchemaVersionMetadataInput, context: context)
        SchemaId.validate!(input[:schema_id], context: "#{context}[:schema_id]") unless input[:schema_id].nil?
        SchemaVersionNumber.validate!(input[:schema_version_number], context: "#{context}[:schema_version_number]") unless input[:schema_version_number].nil?
        Hearth::Validator.validate!(input[:schema_version_id], ::String, context: "#{context}[:schema_version_id]")
        MetadataKeyValuePair.validate!(input[:metadata_key_value], context: "#{context}[:metadata_key_value]") unless input[:metadata_key_value].nil?
      end
    end

    class RemoveSchemaVersionMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveSchemaVersionMetadataOutput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:latest_version], ::TrueClass, ::FalseClass, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:schema_version_id], ::String, context: "#{context}[:schema_version_id]")
        Hearth::Validator.validate!(input[:metadata_key], ::String, context: "#{context}[:metadata_key]")
        Hearth::Validator.validate!(input[:metadata_value], ::String, context: "#{context}[:metadata_value]")
      end
    end

    class RenameField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenameField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        EnclosedInStringProperties.validate!(input[:source_path], context: "#{context}[:source_path]") unless input[:source_path].nil?
        EnclosedInStringProperties.validate!(input[:target_path], context: "#{context}[:target_path]") unless input[:target_path].nil?
      end
    end

    class ResetJobBookmarkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetJobBookmarkInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
      end
    end

    class ResetJobBookmarkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetJobBookmarkOutput, context: context)
        JobBookmarkEntry.validate!(input[:job_bookmark_entry], context: "#{context}[:job_bookmark_entry]") unless input[:job_bookmark_entry].nil?
      end
    end

    class ResourceNotReadyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotReadyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNumberLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNumberLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceUri
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceUri, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
      end
    end

    class ResourceUriList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceUri.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResumeWorkflowRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeWorkflowRunInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        NodeIdList.validate!(input[:node_ids], context: "#{context}[:node_ids]") unless input[:node_ids].nil?
      end
    end

    class ResumeWorkflowRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeWorkflowRunOutput, context: context)
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
        NodeIdList.validate!(input[:node_ids], context: "#{context}[:node_ids]") unless input[:node_ids].nil?
      end
    end

    class RunStatementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunStatementInput, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:request_origin], ::String, context: "#{context}[:request_origin]")
      end
    end

    class RunStatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunStatementOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
      end
    end

    class S3CatalogSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3CatalogSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
        Hearth::Validator.validate!(input[:partition_predicate], ::String, context: "#{context}[:partition_predicate]")
        S3SourceAdditionalOptions.validate!(input[:additional_options], context: "#{context}[:additional_options]") unless input[:additional_options].nil?
      end
    end

    class S3CatalogTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3CatalogTarget, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        GlueStudioPathList.validate!(input[:partition_keys], context: "#{context}[:partition_keys]") unless input[:partition_keys].nil?
        Hearth::Validator.validate!(input[:table], ::String, context: "#{context}[:table]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        CatalogSchemaChangePolicy.validate!(input[:schema_change_policy], context: "#{context}[:schema_change_policy]") unless input[:schema_change_policy].nil?
      end
    end

    class S3CsvSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3CsvSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        EnclosedInStringProperties.validate!(input[:paths], context: "#{context}[:paths]") unless input[:paths].nil?
        Hearth::Validator.validate!(input[:compression_type], ::String, context: "#{context}[:compression_type]")
        EnclosedInStringProperties.validate!(input[:exclusions], context: "#{context}[:exclusions]") unless input[:exclusions].nil?
        Hearth::Validator.validate!(input[:group_size], ::String, context: "#{context}[:group_size]")
        Hearth::Validator.validate!(input[:group_files], ::String, context: "#{context}[:group_files]")
        Hearth::Validator.validate!(input[:recurse], ::TrueClass, ::FalseClass, context: "#{context}[:recurse]")
        Hearth::Validator.validate!(input[:max_band], ::Integer, context: "#{context}[:max_band]")
        Hearth::Validator.validate!(input[:max_files_in_band], ::Integer, context: "#{context}[:max_files_in_band]")
        S3DirectSourceAdditionalOptions.validate!(input[:additional_options], context: "#{context}[:additional_options]") unless input[:additional_options].nil?
        Hearth::Validator.validate!(input[:separator], ::String, context: "#{context}[:separator]")
        Hearth::Validator.validate!(input[:escaper], ::String, context: "#{context}[:escaper]")
        Hearth::Validator.validate!(input[:quote_char], ::String, context: "#{context}[:quote_char]")
        Hearth::Validator.validate!(input[:multiline], ::TrueClass, ::FalseClass, context: "#{context}[:multiline]")
        Hearth::Validator.validate!(input[:with_header], ::TrueClass, ::FalseClass, context: "#{context}[:with_header]")
        Hearth::Validator.validate!(input[:write_header], ::TrueClass, ::FalseClass, context: "#{context}[:write_header]")
        Hearth::Validator.validate!(input[:skip_first], ::TrueClass, ::FalseClass, context: "#{context}[:skip_first]")
        Hearth::Validator.validate!(input[:optimize_performance], ::TrueClass, ::FalseClass, context: "#{context}[:optimize_performance]")
        GlueSchemas.validate!(input[:output_schemas], context: "#{context}[:output_schemas]") unless input[:output_schemas].nil?
      end
    end

    class S3DirectSourceAdditionalOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DirectSourceAdditionalOptions, context: context)
        Hearth::Validator.validate!(input[:bounded_size], ::Integer, context: "#{context}[:bounded_size]")
        Hearth::Validator.validate!(input[:bounded_files], ::Integer, context: "#{context}[:bounded_files]")
        Hearth::Validator.validate!(input[:enable_sample_path], ::TrueClass, ::FalseClass, context: "#{context}[:enable_sample_path]")
        Hearth::Validator.validate!(input[:sample_path], ::String, context: "#{context}[:sample_path]")
      end
    end

    class S3DirectTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DirectTarget, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        GlueStudioPathList.validate!(input[:partition_keys], context: "#{context}[:partition_keys]") unless input[:partition_keys].nil?
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:compression], ::String, context: "#{context}[:compression]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        DirectSchemaChangePolicy.validate!(input[:schema_change_policy], context: "#{context}[:schema_change_policy]") unless input[:schema_change_policy].nil?
      end
    end

    class S3Encryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Encryption, context: context)
        Hearth::Validator.validate!(input[:s3_encryption_mode], ::String, context: "#{context}[:s3_encryption_mode]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class S3EncryptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          S3Encryption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3GlueParquetTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3GlueParquetTarget, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        GlueStudioPathList.validate!(input[:partition_keys], context: "#{context}[:partition_keys]") unless input[:partition_keys].nil?
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:compression], ::String, context: "#{context}[:compression]")
        DirectSchemaChangePolicy.validate!(input[:schema_change_policy], context: "#{context}[:schema_change_policy]") unless input[:schema_change_policy].nil?
      end
    end

    class S3JsonSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3JsonSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        EnclosedInStringProperties.validate!(input[:paths], context: "#{context}[:paths]") unless input[:paths].nil?
        Hearth::Validator.validate!(input[:compression_type], ::String, context: "#{context}[:compression_type]")
        EnclosedInStringProperties.validate!(input[:exclusions], context: "#{context}[:exclusions]") unless input[:exclusions].nil?
        Hearth::Validator.validate!(input[:group_size], ::String, context: "#{context}[:group_size]")
        Hearth::Validator.validate!(input[:group_files], ::String, context: "#{context}[:group_files]")
        Hearth::Validator.validate!(input[:recurse], ::TrueClass, ::FalseClass, context: "#{context}[:recurse]")
        Hearth::Validator.validate!(input[:max_band], ::Integer, context: "#{context}[:max_band]")
        Hearth::Validator.validate!(input[:max_files_in_band], ::Integer, context: "#{context}[:max_files_in_band]")
        S3DirectSourceAdditionalOptions.validate!(input[:additional_options], context: "#{context}[:additional_options]") unless input[:additional_options].nil?
        Hearth::Validator.validate!(input[:json_path], ::String, context: "#{context}[:json_path]")
        Hearth::Validator.validate!(input[:multiline], ::TrueClass, ::FalseClass, context: "#{context}[:multiline]")
        GlueSchemas.validate!(input[:output_schemas], context: "#{context}[:output_schemas]") unless input[:output_schemas].nil?
      end
    end

    class S3ParquetSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ParquetSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        EnclosedInStringProperties.validate!(input[:paths], context: "#{context}[:paths]") unless input[:paths].nil?
        Hearth::Validator.validate!(input[:compression_type], ::String, context: "#{context}[:compression_type]")
        EnclosedInStringProperties.validate!(input[:exclusions], context: "#{context}[:exclusions]") unless input[:exclusions].nil?
        Hearth::Validator.validate!(input[:group_size], ::String, context: "#{context}[:group_size]")
        Hearth::Validator.validate!(input[:group_files], ::String, context: "#{context}[:group_files]")
        Hearth::Validator.validate!(input[:recurse], ::TrueClass, ::FalseClass, context: "#{context}[:recurse]")
        Hearth::Validator.validate!(input[:max_band], ::Integer, context: "#{context}[:max_band]")
        Hearth::Validator.validate!(input[:max_files_in_band], ::Integer, context: "#{context}[:max_files_in_band]")
        S3DirectSourceAdditionalOptions.validate!(input[:additional_options], context: "#{context}[:additional_options]") unless input[:additional_options].nil?
        GlueSchemas.validate!(input[:output_schemas], context: "#{context}[:output_schemas]") unless input[:output_schemas].nil?
      end
    end

    class S3SourceAdditionalOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3SourceAdditionalOptions, context: context)
        Hearth::Validator.validate!(input[:bounded_size], ::Integer, context: "#{context}[:bounded_size]")
        Hearth::Validator.validate!(input[:bounded_files], ::Integer, context: "#{context}[:bounded_files]")
      end
    end

    class S3Target
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Target, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        PathList.validate!(input[:exclusions], context: "#{context}[:exclusions]") unless input[:exclusions].nil?
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:sample_size], ::Integer, context: "#{context}[:sample_size]")
        Hearth::Validator.validate!(input[:event_queue_arn], ::String, context: "#{context}[:event_queue_arn]")
        Hearth::Validator.validate!(input[:dlq_event_queue_arn], ::String, context: "#{context}[:dlq_event_queue_arn]")
      end
    end

    class S3TargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          S3Target.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Schedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Schedule, context: context)
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class SchedulerNotRunningException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchedulerNotRunningException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SchedulerRunningException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchedulerRunningException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SchedulerTransitioningException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchedulerTransitioningException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SchemaChangePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaChangePolicy, context: context)
        Hearth::Validator.validate!(input[:update_behavior], ::String, context: "#{context}[:update_behavior]")
        Hearth::Validator.validate!(input[:delete_behavior], ::String, context: "#{context}[:delete_behavior]")
      end
    end

    class SchemaColumn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaColumn, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
      end
    end

    class SchemaId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaId, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
      end
    end

    class SchemaListDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SchemaListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SchemaListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaListItem, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:schema_status], ::String, context: "#{context}[:schema_status]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:updated_time], ::String, context: "#{context}[:updated_time]")
      end
    end

    class SchemaReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaReference, context: context)
        SchemaId.validate!(input[:schema_id], context: "#{context}[:schema_id]") unless input[:schema_id].nil?
        Hearth::Validator.validate!(input[:schema_version_id], ::String, context: "#{context}[:schema_version_id]")
        Hearth::Validator.validate!(input[:schema_version_number], ::Integer, context: "#{context}[:schema_version_number]")
      end
    end

    class SchemaVersionErrorItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaVersionErrorItem, context: context)
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        ErrorDetails.validate!(input[:error_details], context: "#{context}[:error_details]") unless input[:error_details].nil?
      end
    end

    class SchemaVersionErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SchemaVersionErrorItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SchemaVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SchemaVersionListItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SchemaVersionListItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaVersionListItem, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:schema_version_id], ::String, context: "#{context}[:schema_version_id]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_time], ::String, context: "#{context}[:created_time]")
      end
    end

    class SchemaVersionNumber
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SchemaVersionNumber, context: context)
        Hearth::Validator.validate!(input[:latest_version], ::TrueClass, ::FalseClass, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:version_number], ::Integer, context: "#{context}[:version_number]")
      end
    end

    class SearchPropertyPredicates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PropertyPredicate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SearchTablesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchTablesInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        SearchPropertyPredicates.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:search_text], ::String, context: "#{context}[:search_text]")
        SortCriteria.validate!(input[:sort_criteria], context: "#{context}[:sort_criteria]") unless input[:sort_criteria].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:resource_share_type], ::String, context: "#{context}[:resource_share_type]")
      end
    end

    class SearchTablesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchTablesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        TableList.validate!(input[:table_list], context: "#{context}[:table_list]") unless input[:table_list].nil?
      end
    end

    class SecurityConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityConfiguration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_time_stamp], ::Time, context: "#{context}[:created_time_stamp]")
        EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
      end
    end

    class SecurityConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SecurityConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecurityGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Segment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Segment, context: context)
        Hearth::Validator.validate!(input[:segment_number], ::Integer, context: "#{context}[:segment_number]")
        Hearth::Validator.validate!(input[:total_segments], ::Integer, context: "#{context}[:total_segments]")
      end
    end

    class SelectFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelectFields, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        GlueStudioPathList.validate!(input[:paths], context: "#{context}[:paths]") unless input[:paths].nil?
      end
    end

    class SelectFromCollection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelectFromCollection, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:index], ::Integer, context: "#{context}[:index]")
      end
    end

    class SerDeInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SerDeInfo, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:serialization_library], ::String, context: "#{context}[:serialization_library]")
        ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class Session
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Session, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:created_on], ::Time, context: "#{context}[:created_on]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        SessionCommand.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
        OrchestrationArgumentsMap.validate!(input[:default_arguments], context: "#{context}[:default_arguments]") unless input[:default_arguments].nil?
        ConnectionsList.validate!(input[:connections], context: "#{context}[:connections]") unless input[:connections].nil?
        Hearth::Validator.validate!(input[:progress], ::Float, context: "#{context}[:progress]")
        Hearth::Validator.validate!(input[:max_capacity], ::Float, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:security_configuration], ::String, context: "#{context}[:security_configuration]")
        Hearth::Validator.validate!(input[:glue_version], ::String, context: "#{context}[:glue_version]")
      end
    end

    class SessionCommand
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SessionCommand, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:python_version], ::String, context: "#{context}[:python_version]")
      end
    end

    class SessionIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SessionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Session.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SkewedInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SkewedInfo, context: context)
        NameStringList.validate!(input[:skewed_column_names], context: "#{context}[:skewed_column_names]") unless input[:skewed_column_names].nil?
        ColumnValueStringList.validate!(input[:skewed_column_values], context: "#{context}[:skewed_column_values]") unless input[:skewed_column_values].nil?
        LocationMap.validate!(input[:skewed_column_value_location_maps], context: "#{context}[:skewed_column_value_location_maps]") unless input[:skewed_column_value_location_maps].nil?
      end
    end

    class SortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SortCriterion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SortCriterion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SortCriterion, context: context)
        Hearth::Validator.validate!(input[:field_name], ::String, context: "#{context}[:field_name]")
        Hearth::Validator.validate!(input[:sort], ::String, context: "#{context}[:sort]")
      end
    end

    class SparkConnectorSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SparkConnectorSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connector_name], ::String, context: "#{context}[:connector_name]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        AdditionalOptions.validate!(input[:additional_options], context: "#{context}[:additional_options]") unless input[:additional_options].nil?
        GlueSchemas.validate!(input[:output_schemas], context: "#{context}[:output_schemas]") unless input[:output_schemas].nil?
      end
    end

    class SparkConnectorTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SparkConnectorTarget, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        Hearth::Validator.validate!(input[:connector_name], ::String, context: "#{context}[:connector_name]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        AdditionalOptions.validate!(input[:additional_options], context: "#{context}[:additional_options]") unless input[:additional_options].nil?
        GlueSchemas.validate!(input[:output_schemas], context: "#{context}[:output_schemas]") unless input[:output_schemas].nil?
      end
    end

    class SparkSQL
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SparkSQL, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ManyInputs.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:sql_query], ::String, context: "#{context}[:sql_query]")
        SqlAliases.validate!(input[:sql_aliases], context: "#{context}[:sql_aliases]") unless input[:sql_aliases].nil?
        GlueSchemas.validate!(input[:output_schemas], context: "#{context}[:output_schemas]") unless input[:output_schemas].nil?
      end
    end

    class Spigot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Spigot, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:topk], ::Integer, context: "#{context}[:topk]")
        Hearth::Validator.validate!(input[:prob], ::Float, context: "#{context}[:prob]")
      end
    end

    class SplitFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SplitFields, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        OneInput.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        GlueStudioPathList.validate!(input[:paths], context: "#{context}[:paths]") unless input[:paths].nil?
      end
    end

    class SqlAlias
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlAlias, context: context)
        Hearth::Validator.validate!(input[:from], ::String, context: "#{context}[:from]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
      end
    end

    class SqlAliases
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SqlAlias.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartBlueprintRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBlueprintRunInput, context: context)
        Hearth::Validator.validate!(input[:blueprint_name], ::String, context: "#{context}[:blueprint_name]")
        Hearth::Validator.validate!(input[:parameters], ::String, context: "#{context}[:parameters]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class StartBlueprintRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBlueprintRunOutput, context: context)
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
      end
    end

    class StartCrawlerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCrawlerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StartCrawlerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCrawlerOutput, context: context)
      end
    end

    class StartCrawlerScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCrawlerScheduleInput, context: context)
        Hearth::Validator.validate!(input[:crawler_name], ::String, context: "#{context}[:crawler_name]")
      end
    end

    class StartCrawlerScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartCrawlerScheduleOutput, context: context)
      end
    end

    class StartExportLabelsTaskRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartExportLabelsTaskRunInput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
        Hearth::Validator.validate!(input[:output_s3_path], ::String, context: "#{context}[:output_s3_path]")
      end
    end

    class StartExportLabelsTaskRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartExportLabelsTaskRunOutput, context: context)
        Hearth::Validator.validate!(input[:task_run_id], ::String, context: "#{context}[:task_run_id]")
      end
    end

    class StartImportLabelsTaskRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImportLabelsTaskRunInput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
        Hearth::Validator.validate!(input[:input_s3_path], ::String, context: "#{context}[:input_s3_path]")
        Hearth::Validator.validate!(input[:replace_all_labels], ::TrueClass, ::FalseClass, context: "#{context}[:replace_all_labels]")
      end
    end

    class StartImportLabelsTaskRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartImportLabelsTaskRunOutput, context: context)
        Hearth::Validator.validate!(input[:task_run_id], ::String, context: "#{context}[:task_run_id]")
      end
    end

    class StartJobRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartJobRunInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_run_id], ::String, context: "#{context}[:job_run_id]")
        GenericMap.validate!(input[:arguments], context: "#{context}[:arguments]") unless input[:arguments].nil?
        Hearth::Validator.validate!(input[:allocated_capacity], ::Integer, context: "#{context}[:allocated_capacity]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:max_capacity], ::Float, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:security_configuration], ::String, context: "#{context}[:security_configuration]")
        NotificationProperty.validate!(input[:notification_property], context: "#{context}[:notification_property]") unless input[:notification_property].nil?
        Hearth::Validator.validate!(input[:worker_type], ::String, context: "#{context}[:worker_type]")
        Hearth::Validator.validate!(input[:number_of_workers], ::Integer, context: "#{context}[:number_of_workers]")
      end
    end

    class StartJobRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartJobRunOutput, context: context)
        Hearth::Validator.validate!(input[:job_run_id], ::String, context: "#{context}[:job_run_id]")
      end
    end

    class StartMLEvaluationTaskRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMLEvaluationTaskRunInput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
      end
    end

    class StartMLEvaluationTaskRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMLEvaluationTaskRunOutput, context: context)
        Hearth::Validator.validate!(input[:task_run_id], ::String, context: "#{context}[:task_run_id]")
      end
    end

    class StartMLLabelingSetGenerationTaskRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMLLabelingSetGenerationTaskRunInput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
        Hearth::Validator.validate!(input[:output_s3_path], ::String, context: "#{context}[:output_s3_path]")
      end
    end

    class StartMLLabelingSetGenerationTaskRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMLLabelingSetGenerationTaskRunOutput, context: context)
        Hearth::Validator.validate!(input[:task_run_id], ::String, context: "#{context}[:task_run_id]")
      end
    end

    class StartTriggerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTriggerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StartTriggerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTriggerOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StartWorkflowRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartWorkflowRunInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        WorkflowRunProperties.validate!(input[:run_properties], context: "#{context}[:run_properties]") unless input[:run_properties].nil?
      end
    end

    class StartWorkflowRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartWorkflowRunOutput, context: context)
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
      end
    end

    class StartingEventBatchCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartingEventBatchCondition, context: context)
        Hearth::Validator.validate!(input[:batch_size], ::Integer, context: "#{context}[:batch_size]")
        Hearth::Validator.validate!(input[:batch_window], ::Integer, context: "#{context}[:batch_window]")
      end
    end

    class Statement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Statement, context: context)
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        StatementOutput.validate!(input[:output], context: "#{context}[:output]") unless input[:output].nil?
        Hearth::Validator.validate!(input[:progress], ::Float, context: "#{context}[:progress]")
        Hearth::Validator.validate!(input[:started_on], ::Integer, context: "#{context}[:started_on]")
        Hearth::Validator.validate!(input[:completed_on], ::Integer, context: "#{context}[:completed_on]")
      end
    end

    class StatementList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Statement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StatementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatementOutput, context: context)
        StatementOutputData.validate!(input[:data], context: "#{context}[:data]") unless input[:data].nil?
        Hearth::Validator.validate!(input[:execution_count], ::Integer, context: "#{context}[:execution_count]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_name], ::String, context: "#{context}[:error_name]")
        Hearth::Validator.validate!(input[:error_value], ::String, context: "#{context}[:error_value]")
        OrchestrationStringList.validate!(input[:traceback], context: "#{context}[:traceback]") unless input[:traceback].nil?
      end
    end

    class StatementOutputData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatementOutputData, context: context)
        Hearth::Validator.validate!(input[:text_plain], ::String, context: "#{context}[:text_plain]")
      end
    end

    class StopCrawlerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopCrawlerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StopCrawlerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopCrawlerOutput, context: context)
      end
    end

    class StopCrawlerScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopCrawlerScheduleInput, context: context)
        Hearth::Validator.validate!(input[:crawler_name], ::String, context: "#{context}[:crawler_name]")
      end
    end

    class StopCrawlerScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopCrawlerScheduleOutput, context: context)
      end
    end

    class StopSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopSessionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:request_origin], ::String, context: "#{context}[:request_origin]")
      end
    end

    class StopSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopSessionOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class StopTriggerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTriggerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StopTriggerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTriggerOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StopWorkflowRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopWorkflowRunInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:run_id], ::String, context: "#{context}[:run_id]")
      end
    end

    class StopWorkflowRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopWorkflowRunOutput, context: context)
      end
    end

    class StorageDescriptor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StorageDescriptor, context: context)
        ColumnList.validate!(input[:columns], context: "#{context}[:columns]") unless input[:columns].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        LocationStringList.validate!(input[:additional_locations], context: "#{context}[:additional_locations]") unless input[:additional_locations].nil?
        Hearth::Validator.validate!(input[:input_format], ::String, context: "#{context}[:input_format]")
        Hearth::Validator.validate!(input[:output_format], ::String, context: "#{context}[:output_format]")
        Hearth::Validator.validate!(input[:compressed], ::TrueClass, ::FalseClass, context: "#{context}[:compressed]")
        Hearth::Validator.validate!(input[:number_of_buckets], ::Integer, context: "#{context}[:number_of_buckets]")
        SerDeInfo.validate!(input[:serde_info], context: "#{context}[:serde_info]") unless input[:serde_info].nil?
        NameStringList.validate!(input[:bucket_columns], context: "#{context}[:bucket_columns]") unless input[:bucket_columns].nil?
        OrderList.validate!(input[:sort_columns], context: "#{context}[:sort_columns]") unless input[:sort_columns].nil?
        ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        SkewedInfo.validate!(input[:skewed_info], context: "#{context}[:skewed_info]") unless input[:skewed_info].nil?
        Hearth::Validator.validate!(input[:stored_as_sub_directories], ::TrueClass, ::FalseClass, context: "#{context}[:stored_as_sub_directories]")
        SchemaReference.validate!(input[:schema_reference], context: "#{context}[:schema_reference]") unless input[:schema_reference].nil?
      end
    end

    class StreamingDataPreviewOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StreamingDataPreviewOptions, context: context)
        Hearth::Validator.validate!(input[:polling_time], ::Integer, context: "#{context}[:polling_time]")
        Hearth::Validator.validate!(input[:record_polling_limit], ::Integer, context: "#{context}[:record_polling_limit]")
      end
    end

    class StringColumnStatisticsData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StringColumnStatisticsData, context: context)
        Hearth::Validator.validate!(input[:maximum_length], ::Integer, context: "#{context}[:maximum_length]")
        Hearth::Validator.validate!(input[:average_length], ::Float, context: "#{context}[:average_length]")
        Hearth::Validator.validate!(input[:number_of_nulls], ::Integer, context: "#{context}[:number_of_nulls]")
        Hearth::Validator.validate!(input[:number_of_distinct_values], ::Integer, context: "#{context}[:number_of_distinct_values]")
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Table
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Table, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:update_time], ::Time, context: "#{context}[:update_time]")
        Hearth::Validator.validate!(input[:last_access_time], ::Time, context: "#{context}[:last_access_time]")
        Hearth::Validator.validate!(input[:last_analyzed_time], ::Time, context: "#{context}[:last_analyzed_time]")
        Hearth::Validator.validate!(input[:retention], ::Integer, context: "#{context}[:retention]")
        StorageDescriptor.validate!(input[:storage_descriptor], context: "#{context}[:storage_descriptor]") unless input[:storage_descriptor].nil?
        ColumnList.validate!(input[:partition_keys], context: "#{context}[:partition_keys]") unless input[:partition_keys].nil?
        Hearth::Validator.validate!(input[:view_original_text], ::String, context: "#{context}[:view_original_text]")
        Hearth::Validator.validate!(input[:view_expanded_text], ::String, context: "#{context}[:view_expanded_text]")
        Hearth::Validator.validate!(input[:table_type], ::String, context: "#{context}[:table_type]")
        ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:is_registered_with_lake_formation], ::TrueClass, ::FalseClass, context: "#{context}[:is_registered_with_lake_formation]")
        TableIdentifier.validate!(input[:target_table], context: "#{context}[:target_table]") unless input[:target_table].nil?
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class TableError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableError, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        ErrorDetail.validate!(input[:error_detail], context: "#{context}[:error_detail]") unless input[:error_detail].nil?
      end
    end

    class TableErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TableError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TableIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableIdentifier, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class TableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:last_access_time], ::Time, context: "#{context}[:last_access_time]")
        Hearth::Validator.validate!(input[:last_analyzed_time], ::Time, context: "#{context}[:last_analyzed_time]")
        Hearth::Validator.validate!(input[:retention], ::Integer, context: "#{context}[:retention]")
        StorageDescriptor.validate!(input[:storage_descriptor], context: "#{context}[:storage_descriptor]") unless input[:storage_descriptor].nil?
        ColumnList.validate!(input[:partition_keys], context: "#{context}[:partition_keys]") unless input[:partition_keys].nil?
        Hearth::Validator.validate!(input[:view_original_text], ::String, context: "#{context}[:view_original_text]")
        Hearth::Validator.validate!(input[:view_expanded_text], ::String, context: "#{context}[:view_expanded_text]")
        Hearth::Validator.validate!(input[:table_type], ::String, context: "#{context}[:table_type]")
        ParametersMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        TableIdentifier.validate!(input[:target_table], context: "#{context}[:target_table]") unless input[:target_table].nil?
      end
    end

    class TableList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Table.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TableVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableVersion, context: context)
        Table.validate!(input[:table], context: "#{context}[:table]") unless input[:table].nil?
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class TableVersionError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TableVersionError, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
        ErrorDetail.validate!(input[:error_detail], context: "#{context}[:error_detail]") unless input[:error_detail].nil?
      end
    end

    class TableVersionErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TableVersionError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagKeysList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagsMap.validate!(input[:tags_to_add], context: "#{context}[:tags_to_add]") unless input[:tags_to_add].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TaskRun
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskRun, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
        Hearth::Validator.validate!(input[:task_run_id], ::String, context: "#{context}[:task_run_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
        TaskRunProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        Hearth::Validator.validate!(input[:error_string], ::String, context: "#{context}[:error_string]")
        Hearth::Validator.validate!(input[:started_on], ::Time, context: "#{context}[:started_on]")
        Hearth::Validator.validate!(input[:last_modified_on], ::Time, context: "#{context}[:last_modified_on]")
        Hearth::Validator.validate!(input[:completed_on], ::Time, context: "#{context}[:completed_on]")
        Hearth::Validator.validate!(input[:execution_time], ::Integer, context: "#{context}[:execution_time]")
      end
    end

    class TaskRunFilterCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskRunFilterCriteria, context: context)
        Hearth::Validator.validate!(input[:task_run_type], ::String, context: "#{context}[:task_run_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:started_before], ::Time, context: "#{context}[:started_before]")
        Hearth::Validator.validate!(input[:started_after], ::Time, context: "#{context}[:started_after]")
      end
    end

    class TaskRunList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TaskRun.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TaskRunProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskRunProperties, context: context)
        Hearth::Validator.validate!(input[:task_type], ::String, context: "#{context}[:task_type]")
        ImportLabelsTaskRunProperties.validate!(input[:import_labels_task_run_properties], context: "#{context}[:import_labels_task_run_properties]") unless input[:import_labels_task_run_properties].nil?
        ExportLabelsTaskRunProperties.validate!(input[:export_labels_task_run_properties], context: "#{context}[:export_labels_task_run_properties]") unless input[:export_labels_task_run_properties].nil?
        LabelingSetGenerationTaskRunProperties.validate!(input[:labeling_set_generation_task_run_properties], context: "#{context}[:labeling_set_generation_task_run_properties]") unless input[:labeling_set_generation_task_run_properties].nil?
        FindMatchesTaskRunProperties.validate!(input[:find_matches_task_run_properties], context: "#{context}[:find_matches_task_run_properties]") unless input[:find_matches_task_run_properties].nil?
      end
    end

    class TaskRunSortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskRunSortCriteria, context: context)
        Hearth::Validator.validate!(input[:column], ::String, context: "#{context}[:column]")
        Hearth::Validator.validate!(input[:sort_direction], ::String, context: "#{context}[:sort_direction]")
      end
    end

    class TransformEncryption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransformEncryption, context: context)
        MLUserDataEncryption.validate!(input[:ml_user_data_encryption], context: "#{context}[:ml_user_data_encryption]") unless input[:ml_user_data_encryption].nil?
        Hearth::Validator.validate!(input[:task_run_security_configuration_name], ::String, context: "#{context}[:task_run_security_configuration_name]")
      end
    end

    class TransformFilterCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransformFilterCriteria, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:transform_type], ::String, context: "#{context}[:transform_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:glue_version], ::String, context: "#{context}[:glue_version]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:last_modified_before], ::Time, context: "#{context}[:last_modified_before]")
        Hearth::Validator.validate!(input[:last_modified_after], ::Time, context: "#{context}[:last_modified_after]")
        TransformSchema.validate!(input[:schema], context: "#{context}[:schema]") unless input[:schema].nil?
      end
    end

    class TransformIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TransformList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MLTransform.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TransformParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransformParameters, context: context)
        Hearth::Validator.validate!(input[:transform_type], ::String, context: "#{context}[:transform_type]")
        FindMatchesParameters.validate!(input[:find_matches_parameters], context: "#{context}[:find_matches_parameters]") unless input[:find_matches_parameters].nil?
      end
    end

    class TransformSchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SchemaColumn.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TransformSortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransformSortCriteria, context: context)
        Hearth::Validator.validate!(input[:column], ::String, context: "#{context}[:column]")
        Hearth::Validator.validate!(input[:sort_direction], ::String, context: "#{context}[:sort_direction]")
      end
    end

    class Trigger
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Trigger, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:workflow_name], ::String, context: "#{context}[:workflow_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        ActionList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Predicate.validate!(input[:predicate], context: "#{context}[:predicate]") unless input[:predicate].nil?
        EventBatchingCondition.validate!(input[:event_batching_condition], context: "#{context}[:event_batching_condition]") unless input[:event_batching_condition].nil?
      end
    end

    class TriggerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Trigger.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TriggerNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TriggerNodeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TriggerNodeDetails, context: context)
        Trigger.validate!(input[:trigger], context: "#{context}[:trigger]") unless input[:trigger].nil?
      end
    end

    class TriggerUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TriggerUpdate, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        ActionList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Predicate.validate!(input[:predicate], context: "#{context}[:predicate]") unless input[:predicate].nil?
        EventBatchingCondition.validate!(input[:event_batching_condition], context: "#{context}[:event_batching_condition]") unless input[:event_batching_condition].nil?
      end
    end

    class TwoInputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UnfilteredPartition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnfilteredPartition, context: context)
        Partition.validate!(input[:partition], context: "#{context}[:partition]") unless input[:partition].nil?
        NameStringList.validate!(input[:authorized_columns], context: "#{context}[:authorized_columns]") unless input[:authorized_columns].nil?
        Hearth::Validator.validate!(input[:is_registered_with_lake_formation], ::TrueClass, ::FalseClass, context: "#{context}[:is_registered_with_lake_formation]")
      end
    end

    class UnfilteredPartitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UnfilteredPartition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Union
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Union, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TwoInputs.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        Hearth::Validator.validate!(input[:union_type], ::String, context: "#{context}[:union_type]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeysList.validate!(input[:tags_to_remove], context: "#{context}[:tags_to_remove]") unless input[:tags_to_remove].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateBlueprintInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBlueprintInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:blueprint_location], ::String, context: "#{context}[:blueprint_location]")
      end
    end

    class UpdateBlueprintOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBlueprintOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateClassifierInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClassifierInput, context: context)
        UpdateGrokClassifierRequest.validate!(input[:grok_classifier], context: "#{context}[:grok_classifier]") unless input[:grok_classifier].nil?
        UpdateXMLClassifierRequest.validate!(input[:xml_classifier], context: "#{context}[:xml_classifier]") unless input[:xml_classifier].nil?
        UpdateJsonClassifierRequest.validate!(input[:json_classifier], context: "#{context}[:json_classifier]") unless input[:json_classifier].nil?
        UpdateCsvClassifierRequest.validate!(input[:csv_classifier], context: "#{context}[:csv_classifier]") unless input[:csv_classifier].nil?
      end
    end

    class UpdateClassifierOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClassifierOutput, context: context)
      end
    end

    class UpdateColumnStatisticsForPartitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateColumnStatisticsForPartitionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        ValueStringList.validate!(input[:partition_values], context: "#{context}[:partition_values]") unless input[:partition_values].nil?
        UpdateColumnStatisticsList.validate!(input[:column_statistics_list], context: "#{context}[:column_statistics_list]") unless input[:column_statistics_list].nil?
      end
    end

    class UpdateColumnStatisticsForPartitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateColumnStatisticsForPartitionOutput, context: context)
        ColumnStatisticsErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class UpdateColumnStatisticsForTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateColumnStatisticsForTableInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        UpdateColumnStatisticsList.validate!(input[:column_statistics_list], context: "#{context}[:column_statistics_list]") unless input[:column_statistics_list].nil?
      end
    end

    class UpdateColumnStatisticsForTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateColumnStatisticsForTableOutput, context: context)
        ColumnStatisticsErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class UpdateColumnStatisticsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ColumnStatistics.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ConnectionInput.validate!(input[:connection_input], context: "#{context}[:connection_input]") unless input[:connection_input].nil?
      end
    end

    class UpdateConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectionOutput, context: context)
      end
    end

    class UpdateCrawlerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCrawlerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        CrawlerTargets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        ClassifierNameList.validate!(input[:classifiers], context: "#{context}[:classifiers]") unless input[:classifiers].nil?
        Hearth::Validator.validate!(input[:table_prefix], ::String, context: "#{context}[:table_prefix]")
        SchemaChangePolicy.validate!(input[:schema_change_policy], context: "#{context}[:schema_change_policy]") unless input[:schema_change_policy].nil?
        RecrawlPolicy.validate!(input[:recrawl_policy], context: "#{context}[:recrawl_policy]") unless input[:recrawl_policy].nil?
        LineageConfiguration.validate!(input[:lineage_configuration], context: "#{context}[:lineage_configuration]") unless input[:lineage_configuration].nil?
        LakeFormationConfiguration.validate!(input[:lake_formation_configuration], context: "#{context}[:lake_formation_configuration]") unless input[:lake_formation_configuration].nil?
        Hearth::Validator.validate!(input[:configuration], ::String, context: "#{context}[:configuration]")
        Hearth::Validator.validate!(input[:crawler_security_configuration], ::String, context: "#{context}[:crawler_security_configuration]")
      end
    end

    class UpdateCrawlerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCrawlerOutput, context: context)
      end
    end

    class UpdateCrawlerScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCrawlerScheduleInput, context: context)
        Hearth::Validator.validate!(input[:crawler_name], ::String, context: "#{context}[:crawler_name]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
      end
    end

    class UpdateCrawlerScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCrawlerScheduleOutput, context: context)
      end
    end

    class UpdateCsvClassifierRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCsvClassifierRequest, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:delimiter], ::String, context: "#{context}[:delimiter]")
        Hearth::Validator.validate!(input[:quote_symbol], ::String, context: "#{context}[:quote_symbol]")
        Hearth::Validator.validate!(input[:contains_header], ::String, context: "#{context}[:contains_header]")
        CsvHeader.validate!(input[:header], context: "#{context}[:header]") unless input[:header].nil?
        Hearth::Validator.validate!(input[:disable_value_trimming], ::TrueClass, ::FalseClass, context: "#{context}[:disable_value_trimming]")
        Hearth::Validator.validate!(input[:allow_single_column], ::TrueClass, ::FalseClass, context: "#{context}[:allow_single_column]")
      end
    end

    class UpdateDatabaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatabaseInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        DatabaseInput.validate!(input[:database_input], context: "#{context}[:database_input]") unless input[:database_input].nil?
      end
    end

    class UpdateDatabaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDatabaseOutput, context: context)
      end
    end

    class UpdateDevEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDevEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:public_key], ::String, context: "#{context}[:public_key]")
        PublicKeysList.validate!(input[:add_public_keys], context: "#{context}[:add_public_keys]") unless input[:add_public_keys].nil?
        PublicKeysList.validate!(input[:delete_public_keys], context: "#{context}[:delete_public_keys]") unless input[:delete_public_keys].nil?
        DevEndpointCustomLibraries.validate!(input[:custom_libraries], context: "#{context}[:custom_libraries]") unless input[:custom_libraries].nil?
        Hearth::Validator.validate!(input[:update_etl_libraries], ::TrueClass, ::FalseClass, context: "#{context}[:update_etl_libraries]")
        StringList.validate!(input[:delete_arguments], context: "#{context}[:delete_arguments]") unless input[:delete_arguments].nil?
        MapValue.validate!(input[:add_arguments], context: "#{context}[:add_arguments]") unless input[:add_arguments].nil?
      end
    end

    class UpdateDevEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDevEndpointOutput, context: context)
      end
    end

    class UpdateGrokClassifierRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGrokClassifierRequest, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:classification], ::String, context: "#{context}[:classification]")
        Hearth::Validator.validate!(input[:grok_pattern], ::String, context: "#{context}[:grok_pattern]")
        Hearth::Validator.validate!(input[:custom_patterns], ::String, context: "#{context}[:custom_patterns]")
      end
    end

    class UpdateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        JobUpdate.validate!(input[:job_update], context: "#{context}[:job_update]") unless input[:job_update].nil?
      end
    end

    class UpdateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
      end
    end

    class UpdateJsonClassifierRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJsonClassifierRequest, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:json_path], ::String, context: "#{context}[:json_path]")
      end
    end

    class UpdateMLTransformInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMLTransformInput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TransformParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:glue_version], ::String, context: "#{context}[:glue_version]")
        Hearth::Validator.validate!(input[:max_capacity], ::Float, context: "#{context}[:max_capacity]")
        Hearth::Validator.validate!(input[:worker_type], ::String, context: "#{context}[:worker_type]")
        Hearth::Validator.validate!(input[:number_of_workers], ::Integer, context: "#{context}[:number_of_workers]")
        Hearth::Validator.validate!(input[:timeout], ::Integer, context: "#{context}[:timeout]")
        Hearth::Validator.validate!(input[:max_retries], ::Integer, context: "#{context}[:max_retries]")
      end
    end

    class UpdateMLTransformOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMLTransformOutput, context: context)
        Hearth::Validator.validate!(input[:transform_id], ::String, context: "#{context}[:transform_id]")
      end
    end

    class UpdatePartitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePartitionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        BoundedPartitionValueList.validate!(input[:partition_value_list], context: "#{context}[:partition_value_list]") unless input[:partition_value_list].nil?
        PartitionInput.validate!(input[:partition_input], context: "#{context}[:partition_input]") unless input[:partition_input].nil?
      end
    end

    class UpdatePartitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePartitionOutput, context: context)
      end
    end

    class UpdateRegistryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRegistryInput, context: context)
        RegistryId.validate!(input[:registry_id], context: "#{context}[:registry_id]") unless input[:registry_id].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateRegistryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRegistryOutput, context: context)
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
        Hearth::Validator.validate!(input[:registry_arn], ::String, context: "#{context}[:registry_arn]")
      end
    end

    class UpdateSchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSchemaInput, context: context)
        SchemaId.validate!(input[:schema_id], context: "#{context}[:schema_id]") unless input[:schema_id].nil?
        SchemaVersionNumber.validate!(input[:schema_version_number], context: "#{context}[:schema_version_number]") unless input[:schema_version_number].nil?
        Hearth::Validator.validate!(input[:compatibility], ::String, context: "#{context}[:compatibility]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateSchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSchemaOutput, context: context)
        Hearth::Validator.validate!(input[:schema_arn], ::String, context: "#{context}[:schema_arn]")
        Hearth::Validator.validate!(input[:schema_name], ::String, context: "#{context}[:schema_name]")
        Hearth::Validator.validate!(input[:registry_name], ::String, context: "#{context}[:registry_name]")
      end
    end

    class UpdateTableInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTableInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        TableInput.validate!(input[:table_input], context: "#{context}[:table_input]") unless input[:table_input].nil?
        Hearth::Validator.validate!(input[:skip_archive], ::TrueClass, ::FalseClass, context: "#{context}[:skip_archive]")
        Hearth::Validator.validate!(input[:transaction_id], ::String, context: "#{context}[:transaction_id]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class UpdateTableOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTableOutput, context: context)
      end
    end

    class UpdateTriggerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTriggerInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        TriggerUpdate.validate!(input[:trigger_update], context: "#{context}[:trigger_update]") unless input[:trigger_update].nil?
      end
    end

    class UpdateTriggerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTriggerOutput, context: context)
        Trigger.validate!(input[:trigger], context: "#{context}[:trigger]") unless input[:trigger].nil?
      end
    end

    class UpdateUserDefinedFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserDefinedFunctionInput, context: context)
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        UserDefinedFunctionInput.validate!(input[:function_input], context: "#{context}[:function_input]") unless input[:function_input].nil?
      end
    end

    class UpdateUserDefinedFunctionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserDefinedFunctionOutput, context: context)
      end
    end

    class UpdateWorkflowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkflowInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        WorkflowRunProperties.validate!(input[:default_run_properties], context: "#{context}[:default_run_properties]") unless input[:default_run_properties].nil?
        Hearth::Validator.validate!(input[:max_concurrent_runs], ::Integer, context: "#{context}[:max_concurrent_runs]")
      end
    end

    class UpdateWorkflowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkflowOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateXMLClassifierRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateXMLClassifierRequest, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:classification], ::String, context: "#{context}[:classification]")
        Hearth::Validator.validate!(input[:row_tag], ::String, context: "#{context}[:row_tag]")
      end
    end

    class UpsertRedshiftTargetOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpsertRedshiftTargetOptions, context: context)
        Hearth::Validator.validate!(input[:table_location], ::String, context: "#{context}[:table_location]")
        Hearth::Validator.validate!(input[:connection_name], ::String, context: "#{context}[:connection_name]")
        EnclosedInStringPropertiesMinOne.validate!(input[:upsert_keys], context: "#{context}[:upsert_keys]") unless input[:upsert_keys].nil?
      end
    end

    class UserDefinedFunction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserDefinedFunction, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:class_name], ::String, context: "#{context}[:class_name]")
        Hearth::Validator.validate!(input[:owner_name], ::String, context: "#{context}[:owner_name]")
        Hearth::Validator.validate!(input[:owner_type], ::String, context: "#{context}[:owner_type]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        ResourceUriList.validate!(input[:resource_uris], context: "#{context}[:resource_uris]") unless input[:resource_uris].nil?
        Hearth::Validator.validate!(input[:catalog_id], ::String, context: "#{context}[:catalog_id]")
      end
    end

    class UserDefinedFunctionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserDefinedFunctionInput, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:class_name], ::String, context: "#{context}[:class_name]")
        Hearth::Validator.validate!(input[:owner_name], ::String, context: "#{context}[:owner_name]")
        Hearth::Validator.validate!(input[:owner_type], ::String, context: "#{context}[:owner_type]")
        ResourceUriList.validate!(input[:resource_uris], context: "#{context}[:resource_uris]") unless input[:resource_uris].nil?
      end
    end

    class UserDefinedFunctionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserDefinedFunction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValueStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VersionMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VersionMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Workflow
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Workflow, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        WorkflowRunProperties.validate!(input[:default_run_properties], context: "#{context}[:default_run_properties]") unless input[:default_run_properties].nil?
        Hearth::Validator.validate!(input[:created_on], ::Time, context: "#{context}[:created_on]")
        Hearth::Validator.validate!(input[:last_modified_on], ::Time, context: "#{context}[:last_modified_on]")
        WorkflowRun.validate!(input[:last_run], context: "#{context}[:last_run]") unless input[:last_run].nil?
        WorkflowGraph.validate!(input[:graph], context: "#{context}[:graph]") unless input[:graph].nil?
        Hearth::Validator.validate!(input[:max_concurrent_runs], ::Integer, context: "#{context}[:max_concurrent_runs]")
        BlueprintDetails.validate!(input[:blueprint_details], context: "#{context}[:blueprint_details]") unless input[:blueprint_details].nil?
      end
    end

    class WorkflowGraph
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowGraph, context: context)
        NodeList.validate!(input[:nodes], context: "#{context}[:nodes]") unless input[:nodes].nil?
        EdgeList.validate!(input[:edges], context: "#{context}[:edges]") unless input[:edges].nil?
      end
    end

    class WorkflowNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class WorkflowRun
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowRun, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:workflow_run_id], ::String, context: "#{context}[:workflow_run_id]")
        Hearth::Validator.validate!(input[:previous_run_id], ::String, context: "#{context}[:previous_run_id]")
        WorkflowRunProperties.validate!(input[:workflow_run_properties], context: "#{context}[:workflow_run_properties]") unless input[:workflow_run_properties].nil?
        Hearth::Validator.validate!(input[:started_on], ::Time, context: "#{context}[:started_on]")
        Hearth::Validator.validate!(input[:completed_on], ::Time, context: "#{context}[:completed_on]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        WorkflowRunStatistics.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
        WorkflowGraph.validate!(input[:graph], context: "#{context}[:graph]") unless input[:graph].nil?
        StartingEventBatchCondition.validate!(input[:starting_event_batch_condition], context: "#{context}[:starting_event_batch_condition]") unless input[:starting_event_batch_condition].nil?
      end
    end

    class WorkflowRunProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class WorkflowRunStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowRunStatistics, context: context)
        Hearth::Validator.validate!(input[:total_actions], ::Integer, context: "#{context}[:total_actions]")
        Hearth::Validator.validate!(input[:timeout_actions], ::Integer, context: "#{context}[:timeout_actions]")
        Hearth::Validator.validate!(input[:failed_actions], ::Integer, context: "#{context}[:failed_actions]")
        Hearth::Validator.validate!(input[:stopped_actions], ::Integer, context: "#{context}[:stopped_actions]")
        Hearth::Validator.validate!(input[:succeeded_actions], ::Integer, context: "#{context}[:succeeded_actions]")
        Hearth::Validator.validate!(input[:running_actions], ::Integer, context: "#{context}[:running_actions]")
      end
    end

    class WorkflowRuns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorkflowRun.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Workflows
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Workflow.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class XMLClassifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::XMLClassifier, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:classification], ::String, context: "#{context}[:classification]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated], ::Time, context: "#{context}[:last_updated]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:row_tag], ::String, context: "#{context}[:row_tag]")
      end
    end

  end
end
