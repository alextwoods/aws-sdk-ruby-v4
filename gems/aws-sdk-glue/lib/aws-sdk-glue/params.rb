# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Glue
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module Action
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Action, context: context)
        type = Types::Action.new
        type.job_name = params[:job_name]
        type.arguments = GenericMap.build(params[:arguments], context: "#{context}[:arguments]") unless params[:arguments].nil?
        type.timeout = params[:timeout]
        type.security_configuration = params[:security_configuration]
        type.notification_property = NotificationProperty.build(params[:notification_property], context: "#{context}[:notification_property]") unless params[:notification_property].nil?
        type.crawler_name = params[:crawler_name]
        type
      end
    end

    module ActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Action.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AdditionalOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AdditionalPlanOptionsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Aggregate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Aggregate, context: context)
        type = Types::Aggregate.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.groups = GlueStudioPathList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.aggs = AggregateOperations.build(params[:aggs], context: "#{context}[:aggs]") unless params[:aggs].nil?
        type
      end
    end

    module AggregateOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregateOperation, context: context)
        type = Types::AggregateOperation.new
        type.column = EnclosedInStringProperties.build(params[:column], context: "#{context}[:column]") unless params[:column].nil?
        type.agg_func = params[:agg_func]
        type
      end
    end

    module AggregateOperations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AggregateOperation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlreadyExistsException, context: context)
        type = Types::AlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ApplyMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplyMapping, context: context)
        type = Types::ApplyMapping.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.mapping = Mappings.build(params[:mapping], context: "#{context}[:mapping]") unless params[:mapping].nil?
        type
      end
    end

    module AthenaConnectorSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AthenaConnectorSource, context: context)
        type = Types::AthenaConnectorSource.new
        type.name = params[:name]
        type.connection_name = params[:connection_name]
        type.connector_name = params[:connector_name]
        type.connection_type = params[:connection_type]
        type.connection_table = params[:connection_table]
        type.schema_name = params[:schema_name]
        type.output_schemas = GlueSchemas.build(params[:output_schemas], context: "#{context}[:output_schemas]") unless params[:output_schemas].nil?
        type
      end
    end

    module AuditColumnNamesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AuditContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuditContext, context: context)
        type = Types::AuditContext.new
        type.additional_audit_context = params[:additional_audit_context]
        type.requested_columns = AuditColumnNamesList.build(params[:requested_columns], context: "#{context}[:requested_columns]") unless params[:requested_columns].nil?
        type.all_columns_requested = params[:all_columns_requested]
        type
      end
    end

    module BackfillError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackfillError, context: context)
        type = Types::BackfillError.new
        type.code = params[:code]
        type.partitions = BackfillErroredPartitionsList.build(params[:partitions], context: "#{context}[:partitions]") unless params[:partitions].nil?
        type
      end
    end

    module BackfillErroredPartitionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartitionValueList.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BackfillErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BackfillError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BasicCatalogTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BasicCatalogTarget, context: context)
        type = Types::BasicCatalogTarget.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.database = params[:database]
        type.table = params[:table]
        type
      end
    end

    module BatchCreatePartitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreatePartitionInput, context: context)
        type = Types::BatchCreatePartitionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.partition_input_list = PartitionInputList.build(params[:partition_input_list], context: "#{context}[:partition_input_list]") unless params[:partition_input_list].nil?
        type
      end
    end

    module BatchCreatePartitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchCreatePartitionOutput, context: context)
        type = Types::BatchCreatePartitionOutput.new
        type.errors = PartitionErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchDeleteConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteConnectionInput, context: context)
        type = Types::BatchDeleteConnectionInput.new
        type.catalog_id = params[:catalog_id]
        type.connection_name_list = DeleteConnectionNameList.build(params[:connection_name_list], context: "#{context}[:connection_name_list]") unless params[:connection_name_list].nil?
        type
      end
    end

    module BatchDeleteConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteConnectionOutput, context: context)
        type = Types::BatchDeleteConnectionOutput.new
        type.succeeded = NameStringList.build(params[:succeeded], context: "#{context}[:succeeded]") unless params[:succeeded].nil?
        type.errors = ErrorByName.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchDeletePartitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeletePartitionInput, context: context)
        type = Types::BatchDeletePartitionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.partitions_to_delete = BatchDeletePartitionValueList.build(params[:partitions_to_delete], context: "#{context}[:partitions_to_delete]") unless params[:partitions_to_delete].nil?
        type
      end
    end

    module BatchDeletePartitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeletePartitionOutput, context: context)
        type = Types::BatchDeletePartitionOutput.new
        type.errors = PartitionErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchDeletePartitionValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartitionValueList.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchDeleteTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteTableInput, context: context)
        type = Types::BatchDeleteTableInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.tables_to_delete = BatchDeleteTableNameList.build(params[:tables_to_delete], context: "#{context}[:tables_to_delete]") unless params[:tables_to_delete].nil?
        type.transaction_id = params[:transaction_id]
        type
      end
    end

    module BatchDeleteTableNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BatchDeleteTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteTableOutput, context: context)
        type = Types::BatchDeleteTableOutput.new
        type.errors = TableErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchDeleteTableVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteTableVersionInput, context: context)
        type = Types::BatchDeleteTableVersionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.version_ids = BatchDeleteTableVersionList.build(params[:version_ids], context: "#{context}[:version_ids]") unless params[:version_ids].nil?
        type
      end
    end

    module BatchDeleteTableVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BatchDeleteTableVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteTableVersionOutput, context: context)
        type = Types::BatchDeleteTableVersionOutput.new
        type.errors = TableVersionErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchGetBlueprintNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BatchGetBlueprintsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetBlueprintsInput, context: context)
        type = Types::BatchGetBlueprintsInput.new
        type.names = BatchGetBlueprintNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.include_blueprint = params[:include_blueprint]
        type.include_parameter_spec = params[:include_parameter_spec]
        type
      end
    end

    module BatchGetBlueprintsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetBlueprintsOutput, context: context)
        type = Types::BatchGetBlueprintsOutput.new
        type.blueprints = Blueprints.build(params[:blueprints], context: "#{context}[:blueprints]") unless params[:blueprints].nil?
        type.missing_blueprints = BlueprintNames.build(params[:missing_blueprints], context: "#{context}[:missing_blueprints]") unless params[:missing_blueprints].nil?
        type
      end
    end

    module BatchGetCrawlersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetCrawlersInput, context: context)
        type = Types::BatchGetCrawlersInput.new
        type.crawler_names = CrawlerNameList.build(params[:crawler_names], context: "#{context}[:crawler_names]") unless params[:crawler_names].nil?
        type
      end
    end

    module BatchGetCrawlersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetCrawlersOutput, context: context)
        type = Types::BatchGetCrawlersOutput.new
        type.crawlers = CrawlerList.build(params[:crawlers], context: "#{context}[:crawlers]") unless params[:crawlers].nil?
        type.crawlers_not_found = CrawlerNameList.build(params[:crawlers_not_found], context: "#{context}[:crawlers_not_found]") unless params[:crawlers_not_found].nil?
        type
      end
    end

    module BatchGetCustomEntityTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetCustomEntityTypesInput, context: context)
        type = Types::BatchGetCustomEntityTypesInput.new
        type.names = CustomEntityTypeNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type
      end
    end

    module BatchGetCustomEntityTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetCustomEntityTypesOutput, context: context)
        type = Types::BatchGetCustomEntityTypesOutput.new
        type.custom_entity_types = CustomEntityTypes.build(params[:custom_entity_types], context: "#{context}[:custom_entity_types]") unless params[:custom_entity_types].nil?
        type.custom_entity_types_not_found = CustomEntityTypeNames.build(params[:custom_entity_types_not_found], context: "#{context}[:custom_entity_types_not_found]") unless params[:custom_entity_types_not_found].nil?
        type
      end
    end

    module BatchGetDevEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDevEndpointsInput, context: context)
        type = Types::BatchGetDevEndpointsInput.new
        type.dev_endpoint_names = DevEndpointNames.build(params[:dev_endpoint_names], context: "#{context}[:dev_endpoint_names]") unless params[:dev_endpoint_names].nil?
        type
      end
    end

    module BatchGetDevEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDevEndpointsOutput, context: context)
        type = Types::BatchGetDevEndpointsOutput.new
        type.dev_endpoints = DevEndpointList.build(params[:dev_endpoints], context: "#{context}[:dev_endpoints]") unless params[:dev_endpoints].nil?
        type.dev_endpoints_not_found = DevEndpointNames.build(params[:dev_endpoints_not_found], context: "#{context}[:dev_endpoints_not_found]") unless params[:dev_endpoints_not_found].nil?
        type
      end
    end

    module BatchGetJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetJobsInput, context: context)
        type = Types::BatchGetJobsInput.new
        type.job_names = JobNameList.build(params[:job_names], context: "#{context}[:job_names]") unless params[:job_names].nil?
        type
      end
    end

    module BatchGetJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetJobsOutput, context: context)
        type = Types::BatchGetJobsOutput.new
        type.jobs = JobList.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type.jobs_not_found = JobNameList.build(params[:jobs_not_found], context: "#{context}[:jobs_not_found]") unless params[:jobs_not_found].nil?
        type
      end
    end

    module BatchGetPartitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetPartitionInput, context: context)
        type = Types::BatchGetPartitionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.partitions_to_get = BatchGetPartitionValueList.build(params[:partitions_to_get], context: "#{context}[:partitions_to_get]") unless params[:partitions_to_get].nil?
        type
      end
    end

    module BatchGetPartitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetPartitionOutput, context: context)
        type = Types::BatchGetPartitionOutput.new
        type.partitions = PartitionList.build(params[:partitions], context: "#{context}[:partitions]") unless params[:partitions].nil?
        type.unprocessed_keys = BatchGetPartitionValueList.build(params[:unprocessed_keys], context: "#{context}[:unprocessed_keys]") unless params[:unprocessed_keys].nil?
        type
      end
    end

    module BatchGetPartitionValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartitionValueList.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetTriggersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetTriggersInput, context: context)
        type = Types::BatchGetTriggersInput.new
        type.trigger_names = TriggerNameList.build(params[:trigger_names], context: "#{context}[:trigger_names]") unless params[:trigger_names].nil?
        type
      end
    end

    module BatchGetTriggersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetTriggersOutput, context: context)
        type = Types::BatchGetTriggersOutput.new
        type.triggers = TriggerList.build(params[:triggers], context: "#{context}[:triggers]") unless params[:triggers].nil?
        type.triggers_not_found = TriggerNameList.build(params[:triggers_not_found], context: "#{context}[:triggers_not_found]") unless params[:triggers_not_found].nil?
        type
      end
    end

    module BatchGetWorkflowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetWorkflowsInput, context: context)
        type = Types::BatchGetWorkflowsInput.new
        type.names = WorkflowNames.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.include_graph = params[:include_graph]
        type
      end
    end

    module BatchGetWorkflowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetWorkflowsOutput, context: context)
        type = Types::BatchGetWorkflowsOutput.new
        type.workflows = Workflows.build(params[:workflows], context: "#{context}[:workflows]") unless params[:workflows].nil?
        type.missing_workflows = WorkflowNames.build(params[:missing_workflows], context: "#{context}[:missing_workflows]") unless params[:missing_workflows].nil?
        type
      end
    end

    module BatchStopJobRunError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchStopJobRunError, context: context)
        type = Types::BatchStopJobRunError.new
        type.job_name = params[:job_name]
        type.job_run_id = params[:job_run_id]
        type.error_detail = ErrorDetail.build(params[:error_detail], context: "#{context}[:error_detail]") unless params[:error_detail].nil?
        type
      end
    end

    module BatchStopJobRunErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchStopJobRunError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchStopJobRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchStopJobRunInput, context: context)
        type = Types::BatchStopJobRunInput.new
        type.job_name = params[:job_name]
        type.job_run_ids = BatchStopJobRunJobRunIdList.build(params[:job_run_ids], context: "#{context}[:job_run_ids]") unless params[:job_run_ids].nil?
        type
      end
    end

    module BatchStopJobRunJobRunIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BatchStopJobRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchStopJobRunOutput, context: context)
        type = Types::BatchStopJobRunOutput.new
        type.successful_submissions = BatchStopJobRunSuccessfulSubmissionList.build(params[:successful_submissions], context: "#{context}[:successful_submissions]") unless params[:successful_submissions].nil?
        type.errors = BatchStopJobRunErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchStopJobRunSuccessfulSubmission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchStopJobRunSuccessfulSubmission, context: context)
        type = Types::BatchStopJobRunSuccessfulSubmission.new
        type.job_name = params[:job_name]
        type.job_run_id = params[:job_run_id]
        type
      end
    end

    module BatchStopJobRunSuccessfulSubmissionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchStopJobRunSuccessfulSubmission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchUpdatePartitionFailureEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdatePartitionFailureEntry, context: context)
        type = Types::BatchUpdatePartitionFailureEntry.new
        type.partition_value_list = BoundedPartitionValueList.build(params[:partition_value_list], context: "#{context}[:partition_value_list]") unless params[:partition_value_list].nil?
        type.error_detail = ErrorDetail.build(params[:error_detail], context: "#{context}[:error_detail]") unless params[:error_detail].nil?
        type
      end
    end

    module BatchUpdatePartitionFailureList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchUpdatePartitionFailureEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchUpdatePartitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdatePartitionInput, context: context)
        type = Types::BatchUpdatePartitionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.entries = BatchUpdatePartitionRequestEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module BatchUpdatePartitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdatePartitionOutput, context: context)
        type = Types::BatchUpdatePartitionOutput.new
        type.errors = BatchUpdatePartitionFailureList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchUpdatePartitionRequestEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchUpdatePartitionRequestEntry, context: context)
        type = Types::BatchUpdatePartitionRequestEntry.new
        type.partition_value_list = BoundedPartitionValueList.build(params[:partition_value_list], context: "#{context}[:partition_value_list]") unless params[:partition_value_list].nil?
        type.partition_input = PartitionInput.build(params[:partition_input], context: "#{context}[:partition_input]") unless params[:partition_input].nil?
        type
      end
    end

    module BatchUpdatePartitionRequestEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchUpdatePartitionRequestEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BinaryColumnStatisticsData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BinaryColumnStatisticsData, context: context)
        type = Types::BinaryColumnStatisticsData.new
        type.maximum_length = params[:maximum_length]
        type.average_length = params[:average_length]
        type.number_of_nulls = params[:number_of_nulls]
        type
      end
    end

    module Blueprint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Blueprint, context: context)
        type = Types::Blueprint.new
        type.name = params[:name]
        type.description = params[:description]
        type.created_on = params[:created_on]
        type.last_modified_on = params[:last_modified_on]
        type.parameter_spec = params[:parameter_spec]
        type.blueprint_location = params[:blueprint_location]
        type.blueprint_service_location = params[:blueprint_service_location]
        type.status = params[:status]
        type.error_message = params[:error_message]
        type.last_active_definition = LastActiveDefinition.build(params[:last_active_definition], context: "#{context}[:last_active_definition]") unless params[:last_active_definition].nil?
        type
      end
    end

    module BlueprintDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlueprintDetails, context: context)
        type = Types::BlueprintDetails.new
        type.blueprint_name = params[:blueprint_name]
        type.run_id = params[:run_id]
        type
      end
    end

    module BlueprintNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BlueprintRun
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlueprintRun, context: context)
        type = Types::BlueprintRun.new
        type.blueprint_name = params[:blueprint_name]
        type.run_id = params[:run_id]
        type.workflow_name = params[:workflow_name]
        type.state = params[:state]
        type.started_on = params[:started_on]
        type.completed_on = params[:completed_on]
        type.error_message = params[:error_message]
        type.rollback_error_message = params[:rollback_error_message]
        type.parameters = params[:parameters]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module BlueprintRuns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BlueprintRun.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Blueprints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Blueprint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BooleanColumnStatisticsData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BooleanColumnStatisticsData, context: context)
        type = Types::BooleanColumnStatisticsData.new
        type.number_of_trues = params[:number_of_trues]
        type.number_of_falses = params[:number_of_falses]
        type.number_of_nulls = params[:number_of_nulls]
        type
      end
    end

    module BoundedPartitionValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CancelMLTaskRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelMLTaskRunInput, context: context)
        type = Types::CancelMLTaskRunInput.new
        type.transform_id = params[:transform_id]
        type.task_run_id = params[:task_run_id]
        type
      end
    end

    module CancelMLTaskRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelMLTaskRunOutput, context: context)
        type = Types::CancelMLTaskRunOutput.new
        type.transform_id = params[:transform_id]
        type.task_run_id = params[:task_run_id]
        type.status = params[:status]
        type
      end
    end

    module CancelStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelStatementInput, context: context)
        type = Types::CancelStatementInput.new
        type.session_id = params[:session_id]
        type.id = params[:id]
        type.request_origin = params[:request_origin]
        type
      end
    end

    module CancelStatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelStatementOutput, context: context)
        type = Types::CancelStatementOutput.new
        type
      end
    end

    module CatalogEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CatalogEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CatalogEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CatalogEntry, context: context)
        type = Types::CatalogEntry.new
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type
      end
    end

    module CatalogImportStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CatalogImportStatus, context: context)
        type = Types::CatalogImportStatus.new
        type.import_completed = params[:import_completed]
        type.import_time = params[:import_time]
        type.imported_by = params[:imported_by]
        type
      end
    end

    module CatalogKafkaSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CatalogKafkaSource, context: context)
        type = Types::CatalogKafkaSource.new
        type.name = params[:name]
        type.window_size = params[:window_size]
        type.detect_schema = params[:detect_schema]
        type.table = params[:table]
        type.database = params[:database]
        type.streaming_options = KafkaStreamingSourceOptions.build(params[:streaming_options], context: "#{context}[:streaming_options]") unless params[:streaming_options].nil?
        type.data_preview_options = StreamingDataPreviewOptions.build(params[:data_preview_options], context: "#{context}[:data_preview_options]") unless params[:data_preview_options].nil?
        type
      end
    end

    module CatalogKinesisSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CatalogKinesisSource, context: context)
        type = Types::CatalogKinesisSource.new
        type.name = params[:name]
        type.window_size = params[:window_size]
        type.detect_schema = params[:detect_schema]
        type.table = params[:table]
        type.database = params[:database]
        type.streaming_options = KinesisStreamingSourceOptions.build(params[:streaming_options], context: "#{context}[:streaming_options]") unless params[:streaming_options].nil?
        type.data_preview_options = StreamingDataPreviewOptions.build(params[:data_preview_options], context: "#{context}[:data_preview_options]") unless params[:data_preview_options].nil?
        type
      end
    end

    module CatalogSchemaChangePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CatalogSchemaChangePolicy, context: context)
        type = Types::CatalogSchemaChangePolicy.new
        type.enable_update_catalog = params[:enable_update_catalog]
        type.update_behavior = params[:update_behavior]
        type
      end
    end

    module CatalogSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CatalogSource, context: context)
        type = Types::CatalogSource.new
        type.name = params[:name]
        type.database = params[:database]
        type.table = params[:table]
        type
      end
    end

    module CatalogTablesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CatalogTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CatalogTarget, context: context)
        type = Types::CatalogTarget.new
        type.database_name = params[:database_name]
        type.tables = CatalogTablesList.build(params[:tables], context: "#{context}[:tables]") unless params[:tables].nil?
        type.connection_name = params[:connection_name]
        type
      end
    end

    module CatalogTargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CatalogTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CheckSchemaVersionValidityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckSchemaVersionValidityInput, context: context)
        type = Types::CheckSchemaVersionValidityInput.new
        type.data_format = params[:data_format]
        type.schema_definition = params[:schema_definition]
        type
      end
    end

    module CheckSchemaVersionValidityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckSchemaVersionValidityOutput, context: context)
        type = Types::CheckSchemaVersionValidityOutput.new
        type.valid = params[:valid]
        type.error = params[:error]
        type
      end
    end

    module Classifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Classifier, context: context)
        type = Types::Classifier.new
        type.grok_classifier = GrokClassifier.build(params[:grok_classifier], context: "#{context}[:grok_classifier]") unless params[:grok_classifier].nil?
        type.xml_classifier = XMLClassifier.build(params[:xml_classifier], context: "#{context}[:xml_classifier]") unless params[:xml_classifier].nil?
        type.json_classifier = JsonClassifier.build(params[:json_classifier], context: "#{context}[:json_classifier]") unless params[:json_classifier].nil?
        type.csv_classifier = CsvClassifier.build(params[:csv_classifier], context: "#{context}[:csv_classifier]") unless params[:csv_classifier].nil?
        type
      end
    end

    module ClassifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Classifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClassifierNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CloudWatchEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchEncryption, context: context)
        type = Types::CloudWatchEncryption.new
        type.cloud_watch_encryption_mode = params[:cloud_watch_encryption_mode]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module CodeGenConfigurationNode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeGenConfigurationNode, context: context)
        type = Types::CodeGenConfigurationNode.new
        type.athena_connector_source = AthenaConnectorSource.build(params[:athena_connector_source], context: "#{context}[:athena_connector_source]") unless params[:athena_connector_source].nil?
        type.jdbc_connector_source = JDBCConnectorSource.build(params[:jdbc_connector_source], context: "#{context}[:jdbc_connector_source]") unless params[:jdbc_connector_source].nil?
        type.spark_connector_source = SparkConnectorSource.build(params[:spark_connector_source], context: "#{context}[:spark_connector_source]") unless params[:spark_connector_source].nil?
        type.catalog_source = CatalogSource.build(params[:catalog_source], context: "#{context}[:catalog_source]") unless params[:catalog_source].nil?
        type.redshift_source = RedshiftSource.build(params[:redshift_source], context: "#{context}[:redshift_source]") unless params[:redshift_source].nil?
        type.s3_catalog_source = S3CatalogSource.build(params[:s3_catalog_source], context: "#{context}[:s3_catalog_source]") unless params[:s3_catalog_source].nil?
        type.s3_csv_source = S3CsvSource.build(params[:s3_csv_source], context: "#{context}[:s3_csv_source]") unless params[:s3_csv_source].nil?
        type.s3_json_source = S3JsonSource.build(params[:s3_json_source], context: "#{context}[:s3_json_source]") unless params[:s3_json_source].nil?
        type.s3_parquet_source = S3ParquetSource.build(params[:s3_parquet_source], context: "#{context}[:s3_parquet_source]") unless params[:s3_parquet_source].nil?
        type.relational_catalog_source = RelationalCatalogSource.build(params[:relational_catalog_source], context: "#{context}[:relational_catalog_source]") unless params[:relational_catalog_source].nil?
        type.dynamo_db_catalog_source = DynamoDBCatalogSource.build(params[:dynamo_db_catalog_source], context: "#{context}[:dynamo_db_catalog_source]") unless params[:dynamo_db_catalog_source].nil?
        type.jdbc_connector_target = JDBCConnectorTarget.build(params[:jdbc_connector_target], context: "#{context}[:jdbc_connector_target]") unless params[:jdbc_connector_target].nil?
        type.spark_connector_target = SparkConnectorTarget.build(params[:spark_connector_target], context: "#{context}[:spark_connector_target]") unless params[:spark_connector_target].nil?
        type.catalog_target = BasicCatalogTarget.build(params[:catalog_target], context: "#{context}[:catalog_target]") unless params[:catalog_target].nil?
        type.redshift_target = RedshiftTarget.build(params[:redshift_target], context: "#{context}[:redshift_target]") unless params[:redshift_target].nil?
        type.s3_catalog_target = S3CatalogTarget.build(params[:s3_catalog_target], context: "#{context}[:s3_catalog_target]") unless params[:s3_catalog_target].nil?
        type.s3_glue_parquet_target = S3GlueParquetTarget.build(params[:s3_glue_parquet_target], context: "#{context}[:s3_glue_parquet_target]") unless params[:s3_glue_parquet_target].nil?
        type.s3_direct_target = S3DirectTarget.build(params[:s3_direct_target], context: "#{context}[:s3_direct_target]") unless params[:s3_direct_target].nil?
        type.apply_mapping = ApplyMapping.build(params[:apply_mapping], context: "#{context}[:apply_mapping]") unless params[:apply_mapping].nil?
        type.select_fields = SelectFields.build(params[:select_fields], context: "#{context}[:select_fields]") unless params[:select_fields].nil?
        type.drop_fields = DropFields.build(params[:drop_fields], context: "#{context}[:drop_fields]") unless params[:drop_fields].nil?
        type.rename_field = RenameField.build(params[:rename_field], context: "#{context}[:rename_field]") unless params[:rename_field].nil?
        type.spigot = Spigot.build(params[:spigot], context: "#{context}[:spigot]") unless params[:spigot].nil?
        type.join = Join.build(params[:join], context: "#{context}[:join]") unless params[:join].nil?
        type.split_fields = SplitFields.build(params[:split_fields], context: "#{context}[:split_fields]") unless params[:split_fields].nil?
        type.select_from_collection = SelectFromCollection.build(params[:select_from_collection], context: "#{context}[:select_from_collection]") unless params[:select_from_collection].nil?
        type.fill_missing_values = FillMissingValues.build(params[:fill_missing_values], context: "#{context}[:fill_missing_values]") unless params[:fill_missing_values].nil?
        type.filter = Filter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.custom_code = CustomCode.build(params[:custom_code], context: "#{context}[:custom_code]") unless params[:custom_code].nil?
        type.spark_sql = SparkSQL.build(params[:spark_sql], context: "#{context}[:spark_sql]") unless params[:spark_sql].nil?
        type.direct_kinesis_source = DirectKinesisSource.build(params[:direct_kinesis_source], context: "#{context}[:direct_kinesis_source]") unless params[:direct_kinesis_source].nil?
        type.direct_kafka_source = DirectKafkaSource.build(params[:direct_kafka_source], context: "#{context}[:direct_kafka_source]") unless params[:direct_kafka_source].nil?
        type.catalog_kinesis_source = CatalogKinesisSource.build(params[:catalog_kinesis_source], context: "#{context}[:catalog_kinesis_source]") unless params[:catalog_kinesis_source].nil?
        type.catalog_kafka_source = CatalogKafkaSource.build(params[:catalog_kafka_source], context: "#{context}[:catalog_kafka_source]") unless params[:catalog_kafka_source].nil?
        type.drop_null_fields = DropNullFields.build(params[:drop_null_fields], context: "#{context}[:drop_null_fields]") unless params[:drop_null_fields].nil?
        type.merge = Merge.build(params[:merge], context: "#{context}[:merge]") unless params[:merge].nil?
        type.union = Union.build(params[:union], context: "#{context}[:union]") unless params[:union].nil?
        type.pii_detection = PIIDetection.build(params[:pii_detection], context: "#{context}[:pii_detection]") unless params[:pii_detection].nil?
        type.aggregate = Aggregate.build(params[:aggregate], context: "#{context}[:aggregate]") unless params[:aggregate].nil?
        type.drop_duplicates = DropDuplicates.build(params[:drop_duplicates], context: "#{context}[:drop_duplicates]") unless params[:drop_duplicates].nil?
        type.governed_catalog_target = GovernedCatalogTarget.build(params[:governed_catalog_target], context: "#{context}[:governed_catalog_target]") unless params[:governed_catalog_target].nil?
        type.governed_catalog_source = GovernedCatalogSource.build(params[:governed_catalog_source], context: "#{context}[:governed_catalog_source]") unless params[:governed_catalog_source].nil?
        type.microsoft_sql_server_catalog_source = MicrosoftSQLServerCatalogSource.build(params[:microsoft_sql_server_catalog_source], context: "#{context}[:microsoft_sql_server_catalog_source]") unless params[:microsoft_sql_server_catalog_source].nil?
        type.my_sql_catalog_source = MySQLCatalogSource.build(params[:my_sql_catalog_source], context: "#{context}[:my_sql_catalog_source]") unless params[:my_sql_catalog_source].nil?
        type.oracle_sql_catalog_source = OracleSQLCatalogSource.build(params[:oracle_sql_catalog_source], context: "#{context}[:oracle_sql_catalog_source]") unless params[:oracle_sql_catalog_source].nil?
        type.postgre_sql_catalog_source = PostgreSQLCatalogSource.build(params[:postgre_sql_catalog_source], context: "#{context}[:postgre_sql_catalog_source]") unless params[:postgre_sql_catalog_source].nil?
        type.microsoft_sql_server_catalog_target = MicrosoftSQLServerCatalogTarget.build(params[:microsoft_sql_server_catalog_target], context: "#{context}[:microsoft_sql_server_catalog_target]") unless params[:microsoft_sql_server_catalog_target].nil?
        type.my_sql_catalog_target = MySQLCatalogTarget.build(params[:my_sql_catalog_target], context: "#{context}[:my_sql_catalog_target]") unless params[:my_sql_catalog_target].nil?
        type.oracle_sql_catalog_target = OracleSQLCatalogTarget.build(params[:oracle_sql_catalog_target], context: "#{context}[:oracle_sql_catalog_target]") unless params[:oracle_sql_catalog_target].nil?
        type.postgre_sql_catalog_target = PostgreSQLCatalogTarget.build(params[:postgre_sql_catalog_target], context: "#{context}[:postgre_sql_catalog_target]") unless params[:postgre_sql_catalog_target].nil?
        type
      end
    end

    module CodeGenConfigurationNodes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = CodeGenConfigurationNode.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module CodeGenEdge
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeGenEdge, context: context)
        type = Types::CodeGenEdge.new
        type.source = params[:source]
        type.target = params[:target]
        type.target_parameter = params[:target_parameter]
        type
      end
    end

    module CodeGenNode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeGenNode, context: context)
        type = Types::CodeGenNode.new
        type.id = params[:id]
        type.node_type = params[:node_type]
        type.args = CodeGenNodeArgs.build(params[:args], context: "#{context}[:args]") unless params[:args].nil?
        type.line_number = params[:line_number]
        type
      end
    end

    module CodeGenNodeArg
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeGenNodeArg, context: context)
        type = Types::CodeGenNodeArg.new
        type.name = params[:name]
        type.value = params[:value]
        type.param = params[:param]
        type
      end
    end

    module CodeGenNodeArgs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CodeGenNodeArg.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Column
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Column, context: context)
        type = Types::Column.new
        type.name = params[:name]
        type.type = params[:type]
        type.comment = params[:comment]
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module ColumnError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnError, context: context)
        type = Types::ColumnError.new
        type.column_name = params[:column_name]
        type.error = ErrorDetail.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module ColumnErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnImportance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnImportance, context: context)
        type = Types::ColumnImportance.new
        type.column_name = params[:column_name]
        type.importance = params[:importance]
        type
      end
    end

    module ColumnImportanceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnImportance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Column.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnRowFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnRowFilter, context: context)
        type = Types::ColumnRowFilter.new
        type.column_name = params[:column_name]
        type.row_filter_expression = params[:row_filter_expression]
        type
      end
    end

    module ColumnRowFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnRowFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnStatistics, context: context)
        type = Types::ColumnStatistics.new
        type.column_name = params[:column_name]
        type.column_type = params[:column_type]
        type.analyzed_time = params[:analyzed_time]
        type.statistics_data = ColumnStatisticsData.build(params[:statistics_data], context: "#{context}[:statistics_data]") unless params[:statistics_data].nil?
        type
      end
    end

    module ColumnStatisticsData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnStatisticsData, context: context)
        type = Types::ColumnStatisticsData.new
        type.type = params[:type]
        type.boolean_column_statistics_data = BooleanColumnStatisticsData.build(params[:boolean_column_statistics_data], context: "#{context}[:boolean_column_statistics_data]") unless params[:boolean_column_statistics_data].nil?
        type.date_column_statistics_data = DateColumnStatisticsData.build(params[:date_column_statistics_data], context: "#{context}[:date_column_statistics_data]") unless params[:date_column_statistics_data].nil?
        type.decimal_column_statistics_data = DecimalColumnStatisticsData.build(params[:decimal_column_statistics_data], context: "#{context}[:decimal_column_statistics_data]") unless params[:decimal_column_statistics_data].nil?
        type.double_column_statistics_data = DoubleColumnStatisticsData.build(params[:double_column_statistics_data], context: "#{context}[:double_column_statistics_data]") unless params[:double_column_statistics_data].nil?
        type.long_column_statistics_data = LongColumnStatisticsData.build(params[:long_column_statistics_data], context: "#{context}[:long_column_statistics_data]") unless params[:long_column_statistics_data].nil?
        type.string_column_statistics_data = StringColumnStatisticsData.build(params[:string_column_statistics_data], context: "#{context}[:string_column_statistics_data]") unless params[:string_column_statistics_data].nil?
        type.binary_column_statistics_data = BinaryColumnStatisticsData.build(params[:binary_column_statistics_data], context: "#{context}[:binary_column_statistics_data]") unless params[:binary_column_statistics_data].nil?
        type
      end
    end

    module ColumnStatisticsError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnStatisticsError, context: context)
        type = Types::ColumnStatisticsError.new
        type.column_statistics = ColumnStatistics.build(params[:column_statistics], context: "#{context}[:column_statistics]") unless params[:column_statistics].nil?
        type.error = ErrorDetail.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module ColumnStatisticsErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnStatisticsError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnStatisticsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnStatistics.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnValueStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module ConcurrentRunsExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentRunsExceededException, context: context)
        type = Types::ConcurrentRunsExceededException.new
        type.message = params[:message]
        type
      end
    end

    module Condition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Condition, context: context)
        type = Types::Condition.new
        type.logical_operator = params[:logical_operator]
        type.job_name = params[:job_name]
        type.state = params[:state]
        type.crawler_name = params[:crawler_name]
        type.crawl_state = params[:crawl_state]
        type
      end
    end

    module ConditionCheckFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConditionCheckFailureException, context: context)
        type = Types::ConditionCheckFailureException.new
        type.message = params[:message]
        type
      end
    end

    module ConditionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Condition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module ConfusionMatrix
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfusionMatrix, context: context)
        type = Types::ConfusionMatrix.new
        type.num_true_positives = params[:num_true_positives]
        type.num_false_positives = params[:num_false_positives]
        type.num_true_negatives = params[:num_true_negatives]
        type.num_false_negatives = params[:num_false_negatives]
        type
      end
    end

    module Connection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Connection, context: context)
        type = Types::Connection.new
        type.name = params[:name]
        type.description = params[:description]
        type.connection_type = params[:connection_type]
        type.match_criteria = MatchCriteria.build(params[:match_criteria], context: "#{context}[:match_criteria]") unless params[:match_criteria].nil?
        type.connection_properties = ConnectionProperties.build(params[:connection_properties], context: "#{context}[:connection_properties]") unless params[:connection_properties].nil?
        type.physical_connection_requirements = PhysicalConnectionRequirements.build(params[:physical_connection_requirements], context: "#{context}[:physical_connection_requirements]") unless params[:physical_connection_requirements].nil?
        type.creation_time = params[:creation_time]
        type.last_updated_time = params[:last_updated_time]
        type.last_updated_by = params[:last_updated_by]
        type
      end
    end

    module ConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionInput, context: context)
        type = Types::ConnectionInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.connection_type = params[:connection_type]
        type.match_criteria = MatchCriteria.build(params[:match_criteria], context: "#{context}[:match_criteria]") unless params[:match_criteria].nil?
        type.connection_properties = ConnectionProperties.build(params[:connection_properties], context: "#{context}[:connection_properties]") unless params[:connection_properties].nil?
        type.physical_connection_requirements = PhysicalConnectionRequirements.build(params[:physical_connection_requirements], context: "#{context}[:physical_connection_requirements]") unless params[:physical_connection_requirements].nil?
        type
      end
    end

    module ConnectionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Connection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectionPasswordEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionPasswordEncryption, context: context)
        type = Types::ConnectionPasswordEncryption.new
        type.return_connection_password_encrypted = params[:return_connection_password_encrypted]
        type.aws_kms_key_id = params[:aws_kms_key_id]
        type
      end
    end

    module ConnectionProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ConnectionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionsList, context: context)
        type = Types::ConnectionsList.new
        type.connections = OrchestrationStringList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type
      end
    end

    module ContextWords
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Crawl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Crawl, context: context)
        type = Types::Crawl.new
        type.state = params[:state]
        type.started_on = params[:started_on]
        type.completed_on = params[:completed_on]
        type.error_message = params[:error_message]
        type.log_group = params[:log_group]
        type.log_stream = params[:log_stream]
        type
      end
    end

    module CrawlList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Crawl.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Crawler
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Crawler, context: context)
        type = Types::Crawler.new
        type.name = params[:name]
        type.role = params[:role]
        type.targets = CrawlerTargets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.database_name = params[:database_name]
        type.description = params[:description]
        type.classifiers = ClassifierNameList.build(params[:classifiers], context: "#{context}[:classifiers]") unless params[:classifiers].nil?
        type.recrawl_policy = RecrawlPolicy.build(params[:recrawl_policy], context: "#{context}[:recrawl_policy]") unless params[:recrawl_policy].nil?
        type.schema_change_policy = SchemaChangePolicy.build(params[:schema_change_policy], context: "#{context}[:schema_change_policy]") unless params[:schema_change_policy].nil?
        type.lineage_configuration = LineageConfiguration.build(params[:lineage_configuration], context: "#{context}[:lineage_configuration]") unless params[:lineage_configuration].nil?
        type.state = params[:state]
        type.table_prefix = params[:table_prefix]
        type.schedule = Schedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.crawl_elapsed_time = params[:crawl_elapsed_time]
        type.creation_time = params[:creation_time]
        type.last_updated = params[:last_updated]
        type.last_crawl = LastCrawlInfo.build(params[:last_crawl], context: "#{context}[:last_crawl]") unless params[:last_crawl].nil?
        type.version = params[:version]
        type.configuration = params[:configuration]
        type.crawler_security_configuration = params[:crawler_security_configuration]
        type.lake_formation_configuration = LakeFormationConfiguration.build(params[:lake_formation_configuration], context: "#{context}[:lake_formation_configuration]") unless params[:lake_formation_configuration].nil?
        type
      end
    end

    module CrawlerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Crawler.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CrawlerMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CrawlerMetrics, context: context)
        type = Types::CrawlerMetrics.new
        type.crawler_name = params[:crawler_name]
        type.time_left_seconds = params[:time_left_seconds]
        type.still_estimating = params[:still_estimating]
        type.last_runtime_seconds = params[:last_runtime_seconds]
        type.median_runtime_seconds = params[:median_runtime_seconds]
        type.tables_created = params[:tables_created]
        type.tables_updated = params[:tables_updated]
        type.tables_deleted = params[:tables_deleted]
        type
      end
    end

    module CrawlerMetricsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CrawlerMetrics.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CrawlerNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CrawlerNodeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CrawlerNodeDetails, context: context)
        type = Types::CrawlerNodeDetails.new
        type.crawls = CrawlList.build(params[:crawls], context: "#{context}[:crawls]") unless params[:crawls].nil?
        type
      end
    end

    module CrawlerNotRunningException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CrawlerNotRunningException, context: context)
        type = Types::CrawlerNotRunningException.new
        type.message = params[:message]
        type
      end
    end

    module CrawlerRunningException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CrawlerRunningException, context: context)
        type = Types::CrawlerRunningException.new
        type.message = params[:message]
        type
      end
    end

    module CrawlerStoppingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CrawlerStoppingException, context: context)
        type = Types::CrawlerStoppingException.new
        type.message = params[:message]
        type
      end
    end

    module CrawlerTargets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CrawlerTargets, context: context)
        type = Types::CrawlerTargets.new
        type.s3_targets = S3TargetList.build(params[:s3_targets], context: "#{context}[:s3_targets]") unless params[:s3_targets].nil?
        type.jdbc_targets = JdbcTargetList.build(params[:jdbc_targets], context: "#{context}[:jdbc_targets]") unless params[:jdbc_targets].nil?
        type.mongo_db_targets = MongoDBTargetList.build(params[:mongo_db_targets], context: "#{context}[:mongo_db_targets]") unless params[:mongo_db_targets].nil?
        type.dynamo_db_targets = DynamoDBTargetList.build(params[:dynamo_db_targets], context: "#{context}[:dynamo_db_targets]") unless params[:dynamo_db_targets].nil?
        type.catalog_targets = CatalogTargetList.build(params[:catalog_targets], context: "#{context}[:catalog_targets]") unless params[:catalog_targets].nil?
        type.delta_targets = DeltaTargetList.build(params[:delta_targets], context: "#{context}[:delta_targets]") unless params[:delta_targets].nil?
        type
      end
    end

    module CreateBlueprintInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBlueprintInput, context: context)
        type = Types::CreateBlueprintInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.blueprint_location = params[:blueprint_location]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateBlueprintOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBlueprintOutput, context: context)
        type = Types::CreateBlueprintOutput.new
        type.name = params[:name]
        type
      end
    end

    module CreateClassifierInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClassifierInput, context: context)
        type = Types::CreateClassifierInput.new
        type.grok_classifier = CreateGrokClassifierRequest.build(params[:grok_classifier], context: "#{context}[:grok_classifier]") unless params[:grok_classifier].nil?
        type.xml_classifier = CreateXMLClassifierRequest.build(params[:xml_classifier], context: "#{context}[:xml_classifier]") unless params[:xml_classifier].nil?
        type.json_classifier = CreateJsonClassifierRequest.build(params[:json_classifier], context: "#{context}[:json_classifier]") unless params[:json_classifier].nil?
        type.csv_classifier = CreateCsvClassifierRequest.build(params[:csv_classifier], context: "#{context}[:csv_classifier]") unless params[:csv_classifier].nil?
        type
      end
    end

    module CreateClassifierOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClassifierOutput, context: context)
        type = Types::CreateClassifierOutput.new
        type
      end
    end

    module CreateConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionInput, context: context)
        type = Types::CreateConnectionInput.new
        type.catalog_id = params[:catalog_id]
        type.connection_input = ConnectionInput.build(params[:connection_input], context: "#{context}[:connection_input]") unless params[:connection_input].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectionOutput, context: context)
        type = Types::CreateConnectionOutput.new
        type
      end
    end

    module CreateCrawlerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCrawlerInput, context: context)
        type = Types::CreateCrawlerInput.new
        type.name = params[:name]
        type.role = params[:role]
        type.database_name = params[:database_name]
        type.description = params[:description]
        type.targets = CrawlerTargets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.schedule = params[:schedule]
        type.classifiers = ClassifierNameList.build(params[:classifiers], context: "#{context}[:classifiers]") unless params[:classifiers].nil?
        type.table_prefix = params[:table_prefix]
        type.schema_change_policy = SchemaChangePolicy.build(params[:schema_change_policy], context: "#{context}[:schema_change_policy]") unless params[:schema_change_policy].nil?
        type.recrawl_policy = RecrawlPolicy.build(params[:recrawl_policy], context: "#{context}[:recrawl_policy]") unless params[:recrawl_policy].nil?
        type.lineage_configuration = LineageConfiguration.build(params[:lineage_configuration], context: "#{context}[:lineage_configuration]") unless params[:lineage_configuration].nil?
        type.lake_formation_configuration = LakeFormationConfiguration.build(params[:lake_formation_configuration], context: "#{context}[:lake_formation_configuration]") unless params[:lake_formation_configuration].nil?
        type.configuration = params[:configuration]
        type.crawler_security_configuration = params[:crawler_security_configuration]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCrawlerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCrawlerOutput, context: context)
        type = Types::CreateCrawlerOutput.new
        type
      end
    end

    module CreateCsvClassifierRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCsvClassifierRequest, context: context)
        type = Types::CreateCsvClassifierRequest.new
        type.name = params[:name]
        type.delimiter = params[:delimiter]
        type.quote_symbol = params[:quote_symbol]
        type.contains_header = params[:contains_header]
        type.header = CsvHeader.build(params[:header], context: "#{context}[:header]") unless params[:header].nil?
        type.disable_value_trimming = params[:disable_value_trimming]
        type.allow_single_column = params[:allow_single_column]
        type
      end
    end

    module CreateCustomEntityTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomEntityTypeInput, context: context)
        type = Types::CreateCustomEntityTypeInput.new
        type.name = params[:name]
        type.regex_string = params[:regex_string]
        type.context_words = ContextWords.build(params[:context_words], context: "#{context}[:context_words]") unless params[:context_words].nil?
        type
      end
    end

    module CreateCustomEntityTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCustomEntityTypeOutput, context: context)
        type = Types::CreateCustomEntityTypeOutput.new
        type.name = params[:name]
        type
      end
    end

    module CreateDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatabaseInput, context: context)
        type = Types::CreateDatabaseInput.new
        type.catalog_id = params[:catalog_id]
        type.database_input = DatabaseInput.build(params[:database_input], context: "#{context}[:database_input]") unless params[:database_input].nil?
        type
      end
    end

    module CreateDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDatabaseOutput, context: context)
        type = Types::CreateDatabaseOutput.new
        type
      end
    end

    module CreateDevEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDevEndpointInput, context: context)
        type = Types::CreateDevEndpointInput.new
        type.endpoint_name = params[:endpoint_name]
        type.role_arn = params[:role_arn]
        type.security_group_ids = StringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_id = params[:subnet_id]
        type.public_key = params[:public_key]
        type.public_keys = PublicKeysList.build(params[:public_keys], context: "#{context}[:public_keys]") unless params[:public_keys].nil?
        type.number_of_nodes = params[:number_of_nodes]
        type.worker_type = params[:worker_type]
        type.glue_version = params[:glue_version]
        type.number_of_workers = params[:number_of_workers]
        type.extra_python_libs_s3_path = params[:extra_python_libs_s3_path]
        type.extra_jars_s3_path = params[:extra_jars_s3_path]
        type.security_configuration = params[:security_configuration]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.arguments = MapValue.build(params[:arguments], context: "#{context}[:arguments]") unless params[:arguments].nil?
        type
      end
    end

    module CreateDevEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDevEndpointOutput, context: context)
        type = Types::CreateDevEndpointOutput.new
        type.endpoint_name = params[:endpoint_name]
        type.status = params[:status]
        type.security_group_ids = StringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_id = params[:subnet_id]
        type.role_arn = params[:role_arn]
        type.yarn_endpoint_address = params[:yarn_endpoint_address]
        type.zeppelin_remote_spark_interpreter_port = params[:zeppelin_remote_spark_interpreter_port]
        type.number_of_nodes = params[:number_of_nodes]
        type.worker_type = params[:worker_type]
        type.glue_version = params[:glue_version]
        type.number_of_workers = params[:number_of_workers]
        type.availability_zone = params[:availability_zone]
        type.vpc_id = params[:vpc_id]
        type.extra_python_libs_s3_path = params[:extra_python_libs_s3_path]
        type.extra_jars_s3_path = params[:extra_jars_s3_path]
        type.failure_reason = params[:failure_reason]
        type.security_configuration = params[:security_configuration]
        type.created_timestamp = params[:created_timestamp]
        type.arguments = MapValue.build(params[:arguments], context: "#{context}[:arguments]") unless params[:arguments].nil?
        type
      end
    end

    module CreateGrokClassifierRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGrokClassifierRequest, context: context)
        type = Types::CreateGrokClassifierRequest.new
        type.classification = params[:classification]
        type.name = params[:name]
        type.grok_pattern = params[:grok_pattern]
        type.custom_patterns = params[:custom_patterns]
        type
      end
    end

    module CreateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobInput, context: context)
        type = Types::CreateJobInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.log_uri = params[:log_uri]
        type.role = params[:role]
        type.execution_property = ExecutionProperty.build(params[:execution_property], context: "#{context}[:execution_property]") unless params[:execution_property].nil?
        type.command = JobCommand.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.default_arguments = GenericMap.build(params[:default_arguments], context: "#{context}[:default_arguments]") unless params[:default_arguments].nil?
        type.non_overridable_arguments = GenericMap.build(params[:non_overridable_arguments], context: "#{context}[:non_overridable_arguments]") unless params[:non_overridable_arguments].nil?
        type.connections = ConnectionsList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type.max_retries = params[:max_retries]
        type.allocated_capacity = params[:allocated_capacity]
        type.timeout = params[:timeout]
        type.max_capacity = params[:max_capacity]
        type.security_configuration = params[:security_configuration]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.notification_property = NotificationProperty.build(params[:notification_property], context: "#{context}[:notification_property]") unless params[:notification_property].nil?
        type.glue_version = params[:glue_version]
        type.number_of_workers = params[:number_of_workers]
        type.worker_type = params[:worker_type]
        type.code_gen_configuration_nodes = CodeGenConfigurationNodes.build(params[:code_gen_configuration_nodes], context: "#{context}[:code_gen_configuration_nodes]") unless params[:code_gen_configuration_nodes].nil?
        type
      end
    end

    module CreateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobOutput, context: context)
        type = Types::CreateJobOutput.new
        type.name = params[:name]
        type
      end
    end

    module CreateJsonClassifierRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJsonClassifierRequest, context: context)
        type = Types::CreateJsonClassifierRequest.new
        type.name = params[:name]
        type.json_path = params[:json_path]
        type
      end
    end

    module CreateMLTransformInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMLTransformInput, context: context)
        type = Types::CreateMLTransformInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.input_record_tables = GlueTables.build(params[:input_record_tables], context: "#{context}[:input_record_tables]") unless params[:input_record_tables].nil?
        type.parameters = TransformParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.role = params[:role]
        type.glue_version = params[:glue_version]
        type.max_capacity = params[:max_capacity]
        type.worker_type = params[:worker_type]
        type.number_of_workers = params[:number_of_workers]
        type.timeout = params[:timeout]
        type.max_retries = params[:max_retries]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.transform_encryption = TransformEncryption.build(params[:transform_encryption], context: "#{context}[:transform_encryption]") unless params[:transform_encryption].nil?
        type
      end
    end

    module CreateMLTransformOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMLTransformOutput, context: context)
        type = Types::CreateMLTransformOutput.new
        type.transform_id = params[:transform_id]
        type
      end
    end

    module CreatePartitionIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePartitionIndexInput, context: context)
        type = Types::CreatePartitionIndexInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.partition_index = PartitionIndex.build(params[:partition_index], context: "#{context}[:partition_index]") unless params[:partition_index].nil?
        type
      end
    end

    module CreatePartitionIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePartitionIndexOutput, context: context)
        type = Types::CreatePartitionIndexOutput.new
        type
      end
    end

    module CreatePartitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePartitionInput, context: context)
        type = Types::CreatePartitionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.partition_input = PartitionInput.build(params[:partition_input], context: "#{context}[:partition_input]") unless params[:partition_input].nil?
        type
      end
    end

    module CreatePartitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePartitionOutput, context: context)
        type = Types::CreatePartitionOutput.new
        type
      end
    end

    module CreateRegistryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRegistryInput, context: context)
        type = Types::CreateRegistryInput.new
        type.registry_name = params[:registry_name]
        type.description = params[:description]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRegistryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRegistryOutput, context: context)
        type = Types::CreateRegistryOutput.new
        type.registry_arn = params[:registry_arn]
        type.registry_name = params[:registry_name]
        type.description = params[:description]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSchemaInput, context: context)
        type = Types::CreateSchemaInput.new
        type.registry_id = RegistryId.build(params[:registry_id], context: "#{context}[:registry_id]") unless params[:registry_id].nil?
        type.schema_name = params[:schema_name]
        type.data_format = params[:data_format]
        type.compatibility = params[:compatibility]
        type.description = params[:description]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.schema_definition = params[:schema_definition]
        type
      end
    end

    module CreateSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSchemaOutput, context: context)
        type = Types::CreateSchemaOutput.new
        type.registry_name = params[:registry_name]
        type.registry_arn = params[:registry_arn]
        type.schema_name = params[:schema_name]
        type.schema_arn = params[:schema_arn]
        type.description = params[:description]
        type.data_format = params[:data_format]
        type.compatibility = params[:compatibility]
        type.schema_checkpoint = params[:schema_checkpoint]
        type.latest_schema_version = params[:latest_schema_version]
        type.next_schema_version = params[:next_schema_version]
        type.schema_status = params[:schema_status]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.schema_version_id = params[:schema_version_id]
        type.schema_version_status = params[:schema_version_status]
        type
      end
    end

    module CreateScriptInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateScriptInput, context: context)
        type = Types::CreateScriptInput.new
        type.dag_nodes = DagNodes.build(params[:dag_nodes], context: "#{context}[:dag_nodes]") unless params[:dag_nodes].nil?
        type.dag_edges = DagEdges.build(params[:dag_edges], context: "#{context}[:dag_edges]") unless params[:dag_edges].nil?
        type.language = params[:language]
        type
      end
    end

    module CreateScriptOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateScriptOutput, context: context)
        type = Types::CreateScriptOutput.new
        type.python_script = params[:python_script]
        type.scala_code = params[:scala_code]
        type
      end
    end

    module CreateSecurityConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSecurityConfigurationInput, context: context)
        type = Types::CreateSecurityConfigurationInput.new
        type.name = params[:name]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type
      end
    end

    module CreateSecurityConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSecurityConfigurationOutput, context: context)
        type = Types::CreateSecurityConfigurationOutput.new
        type.name = params[:name]
        type.created_timestamp = params[:created_timestamp]
        type
      end
    end

    module CreateSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSessionInput, context: context)
        type = Types::CreateSessionInput.new
        type.id = params[:id]
        type.description = params[:description]
        type.role = params[:role]
        type.command = SessionCommand.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.timeout = params[:timeout]
        type.idle_timeout = params[:idle_timeout]
        type.default_arguments = OrchestrationArgumentsMap.build(params[:default_arguments], context: "#{context}[:default_arguments]") unless params[:default_arguments].nil?
        type.connections = ConnectionsList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type.max_capacity = params[:max_capacity]
        type.number_of_workers = params[:number_of_workers]
        type.worker_type = params[:worker_type]
        type.security_configuration = params[:security_configuration]
        type.glue_version = params[:glue_version]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.request_origin = params[:request_origin]
        type
      end
    end

    module CreateSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSessionOutput, context: context)
        type = Types::CreateSessionOutput.new
        type.session = Session.build(params[:session], context: "#{context}[:session]") unless params[:session].nil?
        type
      end
    end

    module CreateTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTableInput, context: context)
        type = Types::CreateTableInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_input = TableInput.build(params[:table_input], context: "#{context}[:table_input]") unless params[:table_input].nil?
        type.partition_indexes = PartitionIndexList.build(params[:partition_indexes], context: "#{context}[:partition_indexes]") unless params[:partition_indexes].nil?
        type.transaction_id = params[:transaction_id]
        type
      end
    end

    module CreateTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTableOutput, context: context)
        type = Types::CreateTableOutput.new
        type
      end
    end

    module CreateTriggerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTriggerInput, context: context)
        type = Types::CreateTriggerInput.new
        type.name = params[:name]
        type.workflow_name = params[:workflow_name]
        type.type = params[:type]
        type.schedule = params[:schedule]
        type.predicate = Predicate.build(params[:predicate], context: "#{context}[:predicate]") unless params[:predicate].nil?
        type.actions = ActionList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.description = params[:description]
        type.start_on_creation = params[:start_on_creation]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.event_batching_condition = EventBatchingCondition.build(params[:event_batching_condition], context: "#{context}[:event_batching_condition]") unless params[:event_batching_condition].nil?
        type
      end
    end

    module CreateTriggerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTriggerOutput, context: context)
        type = Types::CreateTriggerOutput.new
        type.name = params[:name]
        type
      end
    end

    module CreateUserDefinedFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserDefinedFunctionInput, context: context)
        type = Types::CreateUserDefinedFunctionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.function_input = UserDefinedFunctionInput.build(params[:function_input], context: "#{context}[:function_input]") unless params[:function_input].nil?
        type
      end
    end

    module CreateUserDefinedFunctionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserDefinedFunctionOutput, context: context)
        type = Types::CreateUserDefinedFunctionOutput.new
        type
      end
    end

    module CreateWorkflowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkflowInput, context: context)
        type = Types::CreateWorkflowInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.default_run_properties = WorkflowRunProperties.build(params[:default_run_properties], context: "#{context}[:default_run_properties]") unless params[:default_run_properties].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.max_concurrent_runs = params[:max_concurrent_runs]
        type
      end
    end

    module CreateWorkflowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkflowOutput, context: context)
        type = Types::CreateWorkflowOutput.new
        type.name = params[:name]
        type
      end
    end

    module CreateXMLClassifierRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateXMLClassifierRequest, context: context)
        type = Types::CreateXMLClassifierRequest.new
        type.classification = params[:classification]
        type.name = params[:name]
        type.row_tag = params[:row_tag]
        type
      end
    end

    module CsvClassifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CsvClassifier, context: context)
        type = Types::CsvClassifier.new
        type.name = params[:name]
        type.creation_time = params[:creation_time]
        type.last_updated = params[:last_updated]
        type.version = params[:version]
        type.delimiter = params[:delimiter]
        type.quote_symbol = params[:quote_symbol]
        type.contains_header = params[:contains_header]
        type.header = CsvHeader.build(params[:header], context: "#{context}[:header]") unless params[:header].nil?
        type.disable_value_trimming = params[:disable_value_trimming]
        type.allow_single_column = params[:allow_single_column]
        type
      end
    end

    module CsvHeader
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CustomCode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomCode, context: context)
        type = Types::CustomCode.new
        type.name = params[:name]
        type.inputs = ManyInputs.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.code = params[:code]
        type.class_name = params[:class_name]
        type.output_schemas = GlueSchemas.build(params[:output_schemas], context: "#{context}[:output_schemas]") unless params[:output_schemas].nil?
        type
      end
    end

    module CustomEntityType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomEntityType, context: context)
        type = Types::CustomEntityType.new
        type.name = params[:name]
        type.regex_string = params[:regex_string]
        type.context_words = ContextWords.build(params[:context_words], context: "#{context}[:context_words]") unless params[:context_words].nil?
        type
      end
    end

    module CustomEntityTypeNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CustomEntityTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomEntityType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DagEdges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CodeGenEdge.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DagNodes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CodeGenNode.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataCatalogEncryptionSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataCatalogEncryptionSettings, context: context)
        type = Types::DataCatalogEncryptionSettings.new
        type.encryption_at_rest = EncryptionAtRest.build(params[:encryption_at_rest], context: "#{context}[:encryption_at_rest]") unless params[:encryption_at_rest].nil?
        type.connection_password_encryption = ConnectionPasswordEncryption.build(params[:connection_password_encryption], context: "#{context}[:connection_password_encryption]") unless params[:connection_password_encryption].nil?
        type
      end
    end

    module DataLakePrincipal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataLakePrincipal, context: context)
        type = Types::DataLakePrincipal.new
        type.data_lake_principal_identifier = params[:data_lake_principal_identifier]
        type
      end
    end

    module Database
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Database, context: context)
        type = Types::Database.new
        type.name = params[:name]
        type.description = params[:description]
        type.location_uri = params[:location_uri]
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.create_time = params[:create_time]
        type.create_table_default_permissions = PrincipalPermissionsList.build(params[:create_table_default_permissions], context: "#{context}[:create_table_default_permissions]") unless params[:create_table_default_permissions].nil?
        type.target_database = DatabaseIdentifier.build(params[:target_database], context: "#{context}[:target_database]") unless params[:target_database].nil?
        type.catalog_id = params[:catalog_id]
        type
      end
    end

    module DatabaseIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatabaseIdentifier, context: context)
        type = Types::DatabaseIdentifier.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type
      end
    end

    module DatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatabaseInput, context: context)
        type = Types::DatabaseInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.location_uri = params[:location_uri]
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.create_table_default_permissions = PrincipalPermissionsList.build(params[:create_table_default_permissions], context: "#{context}[:create_table_default_permissions]") unless params[:create_table_default_permissions].nil?
        type.target_database = DatabaseIdentifier.build(params[:target_database], context: "#{context}[:target_database]") unless params[:target_database].nil?
        type
      end
    end

    module DatabaseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Database.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Datatype
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Datatype, context: context)
        type = Types::Datatype.new
        type.id = params[:id]
        type.label = params[:label]
        type
      end
    end

    module DateColumnStatisticsData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DateColumnStatisticsData, context: context)
        type = Types::DateColumnStatisticsData.new
        type.minimum_value = params[:minimum_value]
        type.maximum_value = params[:maximum_value]
        type.number_of_nulls = params[:number_of_nulls]
        type.number_of_distinct_values = params[:number_of_distinct_values]
        type
      end
    end

    module DecimalColumnStatisticsData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecimalColumnStatisticsData, context: context)
        type = Types::DecimalColumnStatisticsData.new
        type.minimum_value = DecimalNumber.build(params[:minimum_value], context: "#{context}[:minimum_value]") unless params[:minimum_value].nil?
        type.maximum_value = DecimalNumber.build(params[:maximum_value], context: "#{context}[:maximum_value]") unless params[:maximum_value].nil?
        type.number_of_nulls = params[:number_of_nulls]
        type.number_of_distinct_values = params[:number_of_distinct_values]
        type
      end
    end

    module DecimalNumber
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DecimalNumber, context: context)
        type = Types::DecimalNumber.new
        type.unscaled_value = params[:unscaled_value]
        type.scale = params[:scale]
        type
      end
    end

    module DeleteBlueprintInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBlueprintInput, context: context)
        type = Types::DeleteBlueprintInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteBlueprintOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBlueprintOutput, context: context)
        type = Types::DeleteBlueprintOutput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteClassifierInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClassifierInput, context: context)
        type = Types::DeleteClassifierInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteClassifierOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClassifierOutput, context: context)
        type = Types::DeleteClassifierOutput.new
        type
      end
    end

    module DeleteColumnStatisticsForPartitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteColumnStatisticsForPartitionInput, context: context)
        type = Types::DeleteColumnStatisticsForPartitionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.partition_values = ValueStringList.build(params[:partition_values], context: "#{context}[:partition_values]") unless params[:partition_values].nil?
        type.column_name = params[:column_name]
        type
      end
    end

    module DeleteColumnStatisticsForPartitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteColumnStatisticsForPartitionOutput, context: context)
        type = Types::DeleteColumnStatisticsForPartitionOutput.new
        type
      end
    end

    module DeleteColumnStatisticsForTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteColumnStatisticsForTableInput, context: context)
        type = Types::DeleteColumnStatisticsForTableInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.column_name = params[:column_name]
        type
      end
    end

    module DeleteColumnStatisticsForTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteColumnStatisticsForTableOutput, context: context)
        type = Types::DeleteColumnStatisticsForTableOutput.new
        type
      end
    end

    module DeleteConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionInput, context: context)
        type = Types::DeleteConnectionInput.new
        type.catalog_id = params[:catalog_id]
        type.connection_name = params[:connection_name]
        type
      end
    end

    module DeleteConnectionNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeleteConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectionOutput, context: context)
        type = Types::DeleteConnectionOutput.new
        type
      end
    end

    module DeleteCrawlerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCrawlerInput, context: context)
        type = Types::DeleteCrawlerInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteCrawlerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCrawlerOutput, context: context)
        type = Types::DeleteCrawlerOutput.new
        type
      end
    end

    module DeleteCustomEntityTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomEntityTypeInput, context: context)
        type = Types::DeleteCustomEntityTypeInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteCustomEntityTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCustomEntityTypeOutput, context: context)
        type = Types::DeleteCustomEntityTypeOutput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatabaseInput, context: context)
        type = Types::DeleteDatabaseInput.new
        type.catalog_id = params[:catalog_id]
        type.name = params[:name]
        type
      end
    end

    module DeleteDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDatabaseOutput, context: context)
        type = Types::DeleteDatabaseOutput.new
        type
      end
    end

    module DeleteDevEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDevEndpointInput, context: context)
        type = Types::DeleteDevEndpointInput.new
        type.endpoint_name = params[:endpoint_name]
        type
      end
    end

    module DeleteDevEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDevEndpointOutput, context: context)
        type = Types::DeleteDevEndpointOutput.new
        type
      end
    end

    module DeleteJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobInput, context: context)
        type = Types::DeleteJobInput.new
        type.job_name = params[:job_name]
        type
      end
    end

    module DeleteJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteJobOutput, context: context)
        type = Types::DeleteJobOutput.new
        type.job_name = params[:job_name]
        type
      end
    end

    module DeleteMLTransformInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMLTransformInput, context: context)
        type = Types::DeleteMLTransformInput.new
        type.transform_id = params[:transform_id]
        type
      end
    end

    module DeleteMLTransformOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMLTransformOutput, context: context)
        type = Types::DeleteMLTransformOutput.new
        type.transform_id = params[:transform_id]
        type
      end
    end

    module DeletePartitionIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePartitionIndexInput, context: context)
        type = Types::DeletePartitionIndexInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.index_name = params[:index_name]
        type
      end
    end

    module DeletePartitionIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePartitionIndexOutput, context: context)
        type = Types::DeletePartitionIndexOutput.new
        type
      end
    end

    module DeletePartitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePartitionInput, context: context)
        type = Types::DeletePartitionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.partition_values = ValueStringList.build(params[:partition_values], context: "#{context}[:partition_values]") unless params[:partition_values].nil?
        type
      end
    end

    module DeletePartitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePartitionOutput, context: context)
        type = Types::DeletePartitionOutput.new
        type
      end
    end

    module DeleteRegistryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRegistryInput, context: context)
        type = Types::DeleteRegistryInput.new
        type.registry_id = RegistryId.build(params[:registry_id], context: "#{context}[:registry_id]") unless params[:registry_id].nil?
        type
      end
    end

    module DeleteRegistryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRegistryOutput, context: context)
        type = Types::DeleteRegistryOutput.new
        type.registry_name = params[:registry_name]
        type.registry_arn = params[:registry_arn]
        type.status = params[:status]
        type
      end
    end

    module DeleteResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyInput, context: context)
        type = Types::DeleteResourcePolicyInput.new
        type.policy_hash_condition = params[:policy_hash_condition]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DeleteResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyOutput, context: context)
        type = Types::DeleteResourcePolicyOutput.new
        type
      end
    end

    module DeleteSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSchemaInput, context: context)
        type = Types::DeleteSchemaInput.new
        type.schema_id = SchemaId.build(params[:schema_id], context: "#{context}[:schema_id]") unless params[:schema_id].nil?
        type
      end
    end

    module DeleteSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSchemaOutput, context: context)
        type = Types::DeleteSchemaOutput.new
        type.schema_arn = params[:schema_arn]
        type.schema_name = params[:schema_name]
        type.status = params[:status]
        type
      end
    end

    module DeleteSchemaVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSchemaVersionsInput, context: context)
        type = Types::DeleteSchemaVersionsInput.new
        type.schema_id = SchemaId.build(params[:schema_id], context: "#{context}[:schema_id]") unless params[:schema_id].nil?
        type.versions = params[:versions]
        type
      end
    end

    module DeleteSchemaVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSchemaVersionsOutput, context: context)
        type = Types::DeleteSchemaVersionsOutput.new
        type.schema_version_errors = SchemaVersionErrorList.build(params[:schema_version_errors], context: "#{context}[:schema_version_errors]") unless params[:schema_version_errors].nil?
        type
      end
    end

    module DeleteSecurityConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSecurityConfigurationInput, context: context)
        type = Types::DeleteSecurityConfigurationInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteSecurityConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSecurityConfigurationOutput, context: context)
        type = Types::DeleteSecurityConfigurationOutput.new
        type
      end
    end

    module DeleteSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSessionInput, context: context)
        type = Types::DeleteSessionInput.new
        type.id = params[:id]
        type.request_origin = params[:request_origin]
        type
      end
    end

    module DeleteSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSessionOutput, context: context)
        type = Types::DeleteSessionOutput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTableInput, context: context)
        type = Types::DeleteTableInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.name = params[:name]
        type.transaction_id = params[:transaction_id]
        type
      end
    end

    module DeleteTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTableOutput, context: context)
        type = Types::DeleteTableOutput.new
        type
      end
    end

    module DeleteTableVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTableVersionInput, context: context)
        type = Types::DeleteTableVersionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.version_id = params[:version_id]
        type
      end
    end

    module DeleteTableVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTableVersionOutput, context: context)
        type = Types::DeleteTableVersionOutput.new
        type
      end
    end

    module DeleteTriggerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTriggerInput, context: context)
        type = Types::DeleteTriggerInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteTriggerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTriggerOutput, context: context)
        type = Types::DeleteTriggerOutput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteUserDefinedFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserDefinedFunctionInput, context: context)
        type = Types::DeleteUserDefinedFunctionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.function_name = params[:function_name]
        type
      end
    end

    module DeleteUserDefinedFunctionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserDefinedFunctionOutput, context: context)
        type = Types::DeleteUserDefinedFunctionOutput.new
        type
      end
    end

    module DeleteWorkflowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkflowInput, context: context)
        type = Types::DeleteWorkflowInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteWorkflowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkflowOutput, context: context)
        type = Types::DeleteWorkflowOutput.new
        type.name = params[:name]
        type
      end
    end

    module DeltaTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeltaTarget, context: context)
        type = Types::DeltaTarget.new
        type.delta_tables = PathList.build(params[:delta_tables], context: "#{context}[:delta_tables]") unless params[:delta_tables].nil?
        type.connection_name = params[:connection_name]
        type.write_manifest = params[:write_manifest]
        type
      end
    end

    module DeltaTargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeltaTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DevEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DevEndpoint, context: context)
        type = Types::DevEndpoint.new
        type.endpoint_name = params[:endpoint_name]
        type.role_arn = params[:role_arn]
        type.security_group_ids = StringList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_id = params[:subnet_id]
        type.yarn_endpoint_address = params[:yarn_endpoint_address]
        type.private_address = params[:private_address]
        type.zeppelin_remote_spark_interpreter_port = params[:zeppelin_remote_spark_interpreter_port]
        type.public_address = params[:public_address]
        type.status = params[:status]
        type.worker_type = params[:worker_type]
        type.glue_version = params[:glue_version]
        type.number_of_workers = params[:number_of_workers]
        type.number_of_nodes = params[:number_of_nodes]
        type.availability_zone = params[:availability_zone]
        type.vpc_id = params[:vpc_id]
        type.extra_python_libs_s3_path = params[:extra_python_libs_s3_path]
        type.extra_jars_s3_path = params[:extra_jars_s3_path]
        type.failure_reason = params[:failure_reason]
        type.last_update_status = params[:last_update_status]
        type.created_timestamp = params[:created_timestamp]
        type.last_modified_timestamp = params[:last_modified_timestamp]
        type.public_key = params[:public_key]
        type.public_keys = PublicKeysList.build(params[:public_keys], context: "#{context}[:public_keys]") unless params[:public_keys].nil?
        type.security_configuration = params[:security_configuration]
        type.arguments = MapValue.build(params[:arguments], context: "#{context}[:arguments]") unless params[:arguments].nil?
        type
      end
    end

    module DevEndpointCustomLibraries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DevEndpointCustomLibraries, context: context)
        type = Types::DevEndpointCustomLibraries.new
        type.extra_python_libs_s3_path = params[:extra_python_libs_s3_path]
        type.extra_jars_s3_path = params[:extra_jars_s3_path]
        type
      end
    end

    module DevEndpointList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DevEndpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DevEndpointNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DevEndpointNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DirectKafkaSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectKafkaSource, context: context)
        type = Types::DirectKafkaSource.new
        type.name = params[:name]
        type.streaming_options = KafkaStreamingSourceOptions.build(params[:streaming_options], context: "#{context}[:streaming_options]") unless params[:streaming_options].nil?
        type.window_size = params[:window_size]
        type.detect_schema = params[:detect_schema]
        type.data_preview_options = StreamingDataPreviewOptions.build(params[:data_preview_options], context: "#{context}[:data_preview_options]") unless params[:data_preview_options].nil?
        type
      end
    end

    module DirectKinesisSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectKinesisSource, context: context)
        type = Types::DirectKinesisSource.new
        type.name = params[:name]
        type.window_size = params[:window_size]
        type.detect_schema = params[:detect_schema]
        type.streaming_options = KinesisStreamingSourceOptions.build(params[:streaming_options], context: "#{context}[:streaming_options]") unless params[:streaming_options].nil?
        type.data_preview_options = StreamingDataPreviewOptions.build(params[:data_preview_options], context: "#{context}[:data_preview_options]") unless params[:data_preview_options].nil?
        type
      end
    end

    module DirectSchemaChangePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectSchemaChangePolicy, context: context)
        type = Types::DirectSchemaChangePolicy.new
        type.enable_update_catalog = params[:enable_update_catalog]
        type.update_behavior = params[:update_behavior]
        type.table = params[:table]
        type.database = params[:database]
        type
      end
    end

    module DoubleColumnStatisticsData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DoubleColumnStatisticsData, context: context)
        type = Types::DoubleColumnStatisticsData.new
        type.minimum_value = params[:minimum_value]
        type.maximum_value = params[:maximum_value]
        type.number_of_nulls = params[:number_of_nulls]
        type.number_of_distinct_values = params[:number_of_distinct_values]
        type
      end
    end

    module DropDuplicates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DropDuplicates, context: context)
        type = Types::DropDuplicates.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.columns = LimitedPathList.build(params[:columns], context: "#{context}[:columns]") unless params[:columns].nil?
        type
      end
    end

    module DropFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DropFields, context: context)
        type = Types::DropFields.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.paths = GlueStudioPathList.build(params[:paths], context: "#{context}[:paths]") unless params[:paths].nil?
        type
      end
    end

    module DropNullFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DropNullFields, context: context)
        type = Types::DropNullFields.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.null_check_box_list = NullCheckBoxList.build(params[:null_check_box_list], context: "#{context}[:null_check_box_list]") unless params[:null_check_box_list].nil?
        type.null_text_list = NullValueFields.build(params[:null_text_list], context: "#{context}[:null_text_list]") unless params[:null_text_list].nil?
        type
      end
    end

    module DynamoDBCatalogSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DynamoDBCatalogSource, context: context)
        type = Types::DynamoDBCatalogSource.new
        type.name = params[:name]
        type.database = params[:database]
        type.table = params[:table]
        type
      end
    end

    module DynamoDBTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DynamoDBTarget, context: context)
        type = Types::DynamoDBTarget.new
        type.path = params[:path]
        type.scan_all = params[:scan_all]
        type.scan_rate = params[:scan_rate]
        type
      end
    end

    module DynamoDBTargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DynamoDBTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Edge
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Edge, context: context)
        type = Types::Edge.new
        type.source_id = params[:source_id]
        type.destination_id = params[:destination_id]
        type
      end
    end

    module EdgeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Edge.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnclosedInStringProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EnclosedInStringPropertiesMinOne
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EncryptionAtRest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionAtRest, context: context)
        type = Types::EncryptionAtRest.new
        type.catalog_encryption_mode = params[:catalog_encryption_mode]
        type.sse_aws_kms_key_id = params[:sse_aws_kms_key_id]
        type
      end
    end

    module EncryptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionConfiguration, context: context)
        type = Types::EncryptionConfiguration.new
        type.s3_encryption = S3EncryptionList.build(params[:s3_encryption], context: "#{context}[:s3_encryption]") unless params[:s3_encryption].nil?
        type.cloud_watch_encryption = CloudWatchEncryption.build(params[:cloud_watch_encryption], context: "#{context}[:cloud_watch_encryption]") unless params[:cloud_watch_encryption].nil?
        type.job_bookmarks_encryption = JobBookmarksEncryption.build(params[:job_bookmarks_encryption], context: "#{context}[:job_bookmarks_encryption]") unless params[:job_bookmarks_encryption].nil?
        type
      end
    end

    module EntityNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityNotFoundException, context: context)
        type = Types::EntityNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ErrorByName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ErrorDetail.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ErrorDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorDetail, context: context)
        type = Types::ErrorDetail.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module ErrorDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorDetails, context: context)
        type = Types::ErrorDetails.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module EvaluationMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluationMetrics, context: context)
        type = Types::EvaluationMetrics.new
        type.transform_type = params[:transform_type]
        type.find_matches_metrics = FindMatchesMetrics.build(params[:find_matches_metrics], context: "#{context}[:find_matches_metrics]") unless params[:find_matches_metrics].nil?
        type
      end
    end

    module EventBatchingCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventBatchingCondition, context: context)
        type = Types::EventBatchingCondition.new
        type.batch_size = params[:batch_size]
        type.batch_window = params[:batch_window]
        type
      end
    end

    module ExecutionProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionProperty, context: context)
        type = Types::ExecutionProperty.new
        type.max_concurrent_runs = params[:max_concurrent_runs]
        type
      end
    end

    module ExportLabelsTaskRunProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportLabelsTaskRunProperties, context: context)
        type = Types::ExportLabelsTaskRunProperties.new
        type.output_s3_path = params[:output_s3_path]
        type
      end
    end

    module FillMissingValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FillMissingValues, context: context)
        type = Types::FillMissingValues.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.imputed_path = params[:imputed_path]
        type.filled_path = params[:filled_path]
        type
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.logical_operator = params[:logical_operator]
        type.filters = FilterExpressions.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module FilterExpression
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterExpression, context: context)
        type = Types::FilterExpression.new
        type.operation = params[:operation]
        type.negated = params[:negated]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module FilterExpressions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FilterExpression.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FilterValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterValue, context: context)
        type = Types::FilterValue.new
        type.type = params[:type]
        type.value = EnclosedInStringProperties.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module FilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FilterValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FindMatchesMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindMatchesMetrics, context: context)
        type = Types::FindMatchesMetrics.new
        type.area_under_pr_curve = params[:area_under_pr_curve]
        type.precision = params[:precision]
        type.recall = params[:recall]
        type.f1 = params[:f1]
        type.confusion_matrix = ConfusionMatrix.build(params[:confusion_matrix], context: "#{context}[:confusion_matrix]") unless params[:confusion_matrix].nil?
        type.column_importances = ColumnImportanceList.build(params[:column_importances], context: "#{context}[:column_importances]") unless params[:column_importances].nil?
        type
      end
    end

    module FindMatchesParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindMatchesParameters, context: context)
        type = Types::FindMatchesParameters.new
        type.primary_key_column_name = params[:primary_key_column_name]
        type.precision_recall_tradeoff = params[:precision_recall_tradeoff]
        type.accuracy_cost_tradeoff = params[:accuracy_cost_tradeoff]
        type.enforce_provided_labels = params[:enforce_provided_labels]
        type
      end
    end

    module FindMatchesTaskRunProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindMatchesTaskRunProperties, context: context)
        type = Types::FindMatchesTaskRunProperties.new
        type.job_id = params[:job_id]
        type.job_name = params[:job_name]
        type.job_run_id = params[:job_run_id]
        type
      end
    end

    module GenericMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GetBlueprintInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlueprintInput, context: context)
        type = Types::GetBlueprintInput.new
        type.name = params[:name]
        type.include_blueprint = params[:include_blueprint]
        type.include_parameter_spec = params[:include_parameter_spec]
        type
      end
    end

    module GetBlueprintOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlueprintOutput, context: context)
        type = Types::GetBlueprintOutput.new
        type.blueprint = Blueprint.build(params[:blueprint], context: "#{context}[:blueprint]") unless params[:blueprint].nil?
        type
      end
    end

    module GetBlueprintRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlueprintRunInput, context: context)
        type = Types::GetBlueprintRunInput.new
        type.blueprint_name = params[:blueprint_name]
        type.run_id = params[:run_id]
        type
      end
    end

    module GetBlueprintRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlueprintRunOutput, context: context)
        type = Types::GetBlueprintRunOutput.new
        type.blueprint_run = BlueprintRun.build(params[:blueprint_run], context: "#{context}[:blueprint_run]") unless params[:blueprint_run].nil?
        type
      end
    end

    module GetBlueprintRunsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlueprintRunsInput, context: context)
        type = Types::GetBlueprintRunsInput.new
        type.blueprint_name = params[:blueprint_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetBlueprintRunsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlueprintRunsOutput, context: context)
        type = Types::GetBlueprintRunsOutput.new
        type.blueprint_runs = BlueprintRuns.build(params[:blueprint_runs], context: "#{context}[:blueprint_runs]") unless params[:blueprint_runs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCatalogImportStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCatalogImportStatusInput, context: context)
        type = Types::GetCatalogImportStatusInput.new
        type.catalog_id = params[:catalog_id]
        type
      end
    end

    module GetCatalogImportStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCatalogImportStatusOutput, context: context)
        type = Types::GetCatalogImportStatusOutput.new
        type.import_status = CatalogImportStatus.build(params[:import_status], context: "#{context}[:import_status]") unless params[:import_status].nil?
        type
      end
    end

    module GetClassifierInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClassifierInput, context: context)
        type = Types::GetClassifierInput.new
        type.name = params[:name]
        type
      end
    end

    module GetClassifierOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClassifierOutput, context: context)
        type = Types::GetClassifierOutput.new
        type.classifier = Classifier.build(params[:classifier], context: "#{context}[:classifier]") unless params[:classifier].nil?
        type
      end
    end

    module GetClassifiersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClassifiersInput, context: context)
        type = Types::GetClassifiersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetClassifiersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClassifiersOutput, context: context)
        type = Types::GetClassifiersOutput.new
        type.classifiers = ClassifierList.build(params[:classifiers], context: "#{context}[:classifiers]") unless params[:classifiers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetColumnNamesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetColumnStatisticsForPartitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetColumnStatisticsForPartitionInput, context: context)
        type = Types::GetColumnStatisticsForPartitionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.partition_values = ValueStringList.build(params[:partition_values], context: "#{context}[:partition_values]") unless params[:partition_values].nil?
        type.column_names = GetColumnNamesList.build(params[:column_names], context: "#{context}[:column_names]") unless params[:column_names].nil?
        type
      end
    end

    module GetColumnStatisticsForPartitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetColumnStatisticsForPartitionOutput, context: context)
        type = Types::GetColumnStatisticsForPartitionOutput.new
        type.column_statistics_list = ColumnStatisticsList.build(params[:column_statistics_list], context: "#{context}[:column_statistics_list]") unless params[:column_statistics_list].nil?
        type.errors = ColumnErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module GetColumnStatisticsForTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetColumnStatisticsForTableInput, context: context)
        type = Types::GetColumnStatisticsForTableInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.column_names = GetColumnNamesList.build(params[:column_names], context: "#{context}[:column_names]") unless params[:column_names].nil?
        type
      end
    end

    module GetColumnStatisticsForTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetColumnStatisticsForTableOutput, context: context)
        type = Types::GetColumnStatisticsForTableOutput.new
        type.column_statistics_list = ColumnStatisticsList.build(params[:column_statistics_list], context: "#{context}[:column_statistics_list]") unless params[:column_statistics_list].nil?
        type.errors = ColumnErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module GetConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectionInput, context: context)
        type = Types::GetConnectionInput.new
        type.catalog_id = params[:catalog_id]
        type.name = params[:name]
        type.hide_password = params[:hide_password]
        type
      end
    end

    module GetConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectionOutput, context: context)
        type = Types::GetConnectionOutput.new
        type.connection = Connection.build(params[:connection], context: "#{context}[:connection]") unless params[:connection].nil?
        type
      end
    end

    module GetConnectionsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectionsFilter, context: context)
        type = Types::GetConnectionsFilter.new
        type.match_criteria = MatchCriteria.build(params[:match_criteria], context: "#{context}[:match_criteria]") unless params[:match_criteria].nil?
        type.connection_type = params[:connection_type]
        type
      end
    end

    module GetConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectionsInput, context: context)
        type = Types::GetConnectionsInput.new
        type.catalog_id = params[:catalog_id]
        type.filter = GetConnectionsFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.hide_password = params[:hide_password]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetConnectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectionsOutput, context: context)
        type = Types::GetConnectionsOutput.new
        type.connection_list = ConnectionList.build(params[:connection_list], context: "#{context}[:connection_list]") unless params[:connection_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCrawlerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCrawlerInput, context: context)
        type = Types::GetCrawlerInput.new
        type.name = params[:name]
        type
      end
    end

    module GetCrawlerMetricsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCrawlerMetricsInput, context: context)
        type = Types::GetCrawlerMetricsInput.new
        type.crawler_name_list = CrawlerNameList.build(params[:crawler_name_list], context: "#{context}[:crawler_name_list]") unless params[:crawler_name_list].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCrawlerMetricsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCrawlerMetricsOutput, context: context)
        type = Types::GetCrawlerMetricsOutput.new
        type.crawler_metrics_list = CrawlerMetricsList.build(params[:crawler_metrics_list], context: "#{context}[:crawler_metrics_list]") unless params[:crawler_metrics_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCrawlerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCrawlerOutput, context: context)
        type = Types::GetCrawlerOutput.new
        type.crawler = Crawler.build(params[:crawler], context: "#{context}[:crawler]") unless params[:crawler].nil?
        type
      end
    end

    module GetCrawlersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCrawlersInput, context: context)
        type = Types::GetCrawlersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCrawlersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCrawlersOutput, context: context)
        type = Types::GetCrawlersOutput.new
        type.crawlers = CrawlerList.build(params[:crawlers], context: "#{context}[:crawlers]") unless params[:crawlers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCustomEntityTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCustomEntityTypeInput, context: context)
        type = Types::GetCustomEntityTypeInput.new
        type.name = params[:name]
        type
      end
    end

    module GetCustomEntityTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCustomEntityTypeOutput, context: context)
        type = Types::GetCustomEntityTypeOutput.new
        type.name = params[:name]
        type.regex_string = params[:regex_string]
        type.context_words = ContextWords.build(params[:context_words], context: "#{context}[:context_words]") unless params[:context_words].nil?
        type
      end
    end

    module GetDataCatalogEncryptionSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataCatalogEncryptionSettingsInput, context: context)
        type = Types::GetDataCatalogEncryptionSettingsInput.new
        type.catalog_id = params[:catalog_id]
        type
      end
    end

    module GetDataCatalogEncryptionSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataCatalogEncryptionSettingsOutput, context: context)
        type = Types::GetDataCatalogEncryptionSettingsOutput.new
        type.data_catalog_encryption_settings = DataCatalogEncryptionSettings.build(params[:data_catalog_encryption_settings], context: "#{context}[:data_catalog_encryption_settings]") unless params[:data_catalog_encryption_settings].nil?
        type
      end
    end

    module GetDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDatabaseInput, context: context)
        type = Types::GetDatabaseInput.new
        type.catalog_id = params[:catalog_id]
        type.name = params[:name]
        type
      end
    end

    module GetDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDatabaseOutput, context: context)
        type = Types::GetDatabaseOutput.new
        type.database = Database.build(params[:database], context: "#{context}[:database]") unless params[:database].nil?
        type
      end
    end

    module GetDatabasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDatabasesInput, context: context)
        type = Types::GetDatabasesInput.new
        type.catalog_id = params[:catalog_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.resource_share_type = params[:resource_share_type]
        type
      end
    end

    module GetDatabasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDatabasesOutput, context: context)
        type = Types::GetDatabasesOutput.new
        type.database_list = DatabaseList.build(params[:database_list], context: "#{context}[:database_list]") unless params[:database_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDataflowGraphInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataflowGraphInput, context: context)
        type = Types::GetDataflowGraphInput.new
        type.python_script = params[:python_script]
        type
      end
    end

    module GetDataflowGraphOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataflowGraphOutput, context: context)
        type = Types::GetDataflowGraphOutput.new
        type.dag_nodes = DagNodes.build(params[:dag_nodes], context: "#{context}[:dag_nodes]") unless params[:dag_nodes].nil?
        type.dag_edges = DagEdges.build(params[:dag_edges], context: "#{context}[:dag_edges]") unless params[:dag_edges].nil?
        type
      end
    end

    module GetDevEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevEndpointInput, context: context)
        type = Types::GetDevEndpointInput.new
        type.endpoint_name = params[:endpoint_name]
        type
      end
    end

    module GetDevEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevEndpointOutput, context: context)
        type = Types::GetDevEndpointOutput.new
        type.dev_endpoint = DevEndpoint.build(params[:dev_endpoint], context: "#{context}[:dev_endpoint]") unless params[:dev_endpoint].nil?
        type
      end
    end

    module GetDevEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevEndpointsInput, context: context)
        type = Types::GetDevEndpointsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDevEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDevEndpointsOutput, context: context)
        type = Types::GetDevEndpointsOutput.new
        type.dev_endpoints = DevEndpointList.build(params[:dev_endpoints], context: "#{context}[:dev_endpoints]") unless params[:dev_endpoints].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetJobBookmarkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobBookmarkInput, context: context)
        type = Types::GetJobBookmarkInput.new
        type.job_name = params[:job_name]
        type.run_id = params[:run_id]
        type
      end
    end

    module GetJobBookmarkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobBookmarkOutput, context: context)
        type = Types::GetJobBookmarkOutput.new
        type.job_bookmark_entry = JobBookmarkEntry.build(params[:job_bookmark_entry], context: "#{context}[:job_bookmark_entry]") unless params[:job_bookmark_entry].nil?
        type
      end
    end

    module GetJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobInput, context: context)
        type = Types::GetJobInput.new
        type.job_name = params[:job_name]
        type
      end
    end

    module GetJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobOutput, context: context)
        type = Types::GetJobOutput.new
        type.job = Job.build(params[:job], context: "#{context}[:job]") unless params[:job].nil?
        type
      end
    end

    module GetJobRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobRunInput, context: context)
        type = Types::GetJobRunInput.new
        type.job_name = params[:job_name]
        type.run_id = params[:run_id]
        type.predecessors_included = params[:predecessors_included]
        type
      end
    end

    module GetJobRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobRunOutput, context: context)
        type = Types::GetJobRunOutput.new
        type.job_run = JobRun.build(params[:job_run], context: "#{context}[:job_run]") unless params[:job_run].nil?
        type
      end
    end

    module GetJobRunsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobRunsInput, context: context)
        type = Types::GetJobRunsInput.new
        type.job_name = params[:job_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetJobRunsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobRunsOutput, context: context)
        type = Types::GetJobRunsOutput.new
        type.job_runs = JobRunList.build(params[:job_runs], context: "#{context}[:job_runs]") unless params[:job_runs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobsInput, context: context)
        type = Types::GetJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobsOutput, context: context)
        type = Types::GetJobsOutput.new
        type.jobs = JobList.build(params[:jobs], context: "#{context}[:jobs]") unless params[:jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetMLTaskRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMLTaskRunInput, context: context)
        type = Types::GetMLTaskRunInput.new
        type.transform_id = params[:transform_id]
        type.task_run_id = params[:task_run_id]
        type
      end
    end

    module GetMLTaskRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMLTaskRunOutput, context: context)
        type = Types::GetMLTaskRunOutput.new
        type.transform_id = params[:transform_id]
        type.task_run_id = params[:task_run_id]
        type.status = params[:status]
        type.log_group_name = params[:log_group_name]
        type.properties = TaskRunProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.error_string = params[:error_string]
        type.started_on = params[:started_on]
        type.last_modified_on = params[:last_modified_on]
        type.completed_on = params[:completed_on]
        type.execution_time = params[:execution_time]
        type
      end
    end

    module GetMLTaskRunsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMLTaskRunsInput, context: context)
        type = Types::GetMLTaskRunsInput.new
        type.transform_id = params[:transform_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filter = TaskRunFilterCriteria.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.sort = TaskRunSortCriteria.build(params[:sort], context: "#{context}[:sort]") unless params[:sort].nil?
        type
      end
    end

    module GetMLTaskRunsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMLTaskRunsOutput, context: context)
        type = Types::GetMLTaskRunsOutput.new
        type.task_runs = TaskRunList.build(params[:task_runs], context: "#{context}[:task_runs]") unless params[:task_runs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetMLTransformInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMLTransformInput, context: context)
        type = Types::GetMLTransformInput.new
        type.transform_id = params[:transform_id]
        type
      end
    end

    module GetMLTransformOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMLTransformOutput, context: context)
        type = Types::GetMLTransformOutput.new
        type.transform_id = params[:transform_id]
        type.name = params[:name]
        type.description = params[:description]
        type.status = params[:status]
        type.created_on = params[:created_on]
        type.last_modified_on = params[:last_modified_on]
        type.input_record_tables = GlueTables.build(params[:input_record_tables], context: "#{context}[:input_record_tables]") unless params[:input_record_tables].nil?
        type.parameters = TransformParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.evaluation_metrics = EvaluationMetrics.build(params[:evaluation_metrics], context: "#{context}[:evaluation_metrics]") unless params[:evaluation_metrics].nil?
        type.label_count = params[:label_count]
        type.schema = TransformSchema.build(params[:schema], context: "#{context}[:schema]") unless params[:schema].nil?
        type.role = params[:role]
        type.glue_version = params[:glue_version]
        type.max_capacity = params[:max_capacity]
        type.worker_type = params[:worker_type]
        type.number_of_workers = params[:number_of_workers]
        type.timeout = params[:timeout]
        type.max_retries = params[:max_retries]
        type.transform_encryption = TransformEncryption.build(params[:transform_encryption], context: "#{context}[:transform_encryption]") unless params[:transform_encryption].nil?
        type
      end
    end

    module GetMLTransformsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMLTransformsInput, context: context)
        type = Types::GetMLTransformsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filter = TransformFilterCriteria.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.sort = TransformSortCriteria.build(params[:sort], context: "#{context}[:sort]") unless params[:sort].nil?
        type
      end
    end

    module GetMLTransformsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMLTransformsOutput, context: context)
        type = Types::GetMLTransformsOutput.new
        type.transforms = TransformList.build(params[:transforms], context: "#{context}[:transforms]") unless params[:transforms].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMappingInput, context: context)
        type = Types::GetMappingInput.new
        type.source = CatalogEntry.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.sinks = CatalogEntries.build(params[:sinks], context: "#{context}[:sinks]") unless params[:sinks].nil?
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type
      end
    end

    module GetMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMappingOutput, context: context)
        type = Types::GetMappingOutput.new
        type.mapping = MappingList.build(params[:mapping], context: "#{context}[:mapping]") unless params[:mapping].nil?
        type
      end
    end

    module GetPartitionIndexesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPartitionIndexesInput, context: context)
        type = Types::GetPartitionIndexesInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetPartitionIndexesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPartitionIndexesOutput, context: context)
        type = Types::GetPartitionIndexesOutput.new
        type.partition_index_descriptor_list = PartitionIndexDescriptorList.build(params[:partition_index_descriptor_list], context: "#{context}[:partition_index_descriptor_list]") unless params[:partition_index_descriptor_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetPartitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPartitionInput, context: context)
        type = Types::GetPartitionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.partition_values = ValueStringList.build(params[:partition_values], context: "#{context}[:partition_values]") unless params[:partition_values].nil?
        type
      end
    end

    module GetPartitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPartitionOutput, context: context)
        type = Types::GetPartitionOutput.new
        type.partition = Partition.build(params[:partition], context: "#{context}[:partition]") unless params[:partition].nil?
        type
      end
    end

    module GetPartitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPartitionsInput, context: context)
        type = Types::GetPartitionsInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.expression = params[:expression]
        type.next_token = params[:next_token]
        type.segment = Segment.build(params[:segment], context: "#{context}[:segment]") unless params[:segment].nil?
        type.max_results = params[:max_results]
        type.exclude_column_schema = params[:exclude_column_schema]
        type.transaction_id = params[:transaction_id]
        type.query_as_of_time = params[:query_as_of_time]
        type
      end
    end

    module GetPartitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPartitionsOutput, context: context)
        type = Types::GetPartitionsOutput.new
        type.partitions = PartitionList.build(params[:partitions], context: "#{context}[:partitions]") unless params[:partitions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetPlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPlanInput, context: context)
        type = Types::GetPlanInput.new
        type.mapping = MappingList.build(params[:mapping], context: "#{context}[:mapping]") unless params[:mapping].nil?
        type.source = CatalogEntry.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.sinks = CatalogEntries.build(params[:sinks], context: "#{context}[:sinks]") unless params[:sinks].nil?
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.language = params[:language]
        type.additional_plan_options_map = AdditionalPlanOptionsMap.build(params[:additional_plan_options_map], context: "#{context}[:additional_plan_options_map]") unless params[:additional_plan_options_map].nil?
        type
      end
    end

    module GetPlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPlanOutput, context: context)
        type = Types::GetPlanOutput.new
        type.python_script = params[:python_script]
        type.scala_code = params[:scala_code]
        type
      end
    end

    module GetRegistryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegistryInput, context: context)
        type = Types::GetRegistryInput.new
        type.registry_id = RegistryId.build(params[:registry_id], context: "#{context}[:registry_id]") unless params[:registry_id].nil?
        type
      end
    end

    module GetRegistryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRegistryOutput, context: context)
        type = Types::GetRegistryOutput.new
        type.registry_name = params[:registry_name]
        type.registry_arn = params[:registry_arn]
        type.description = params[:description]
        type.status = params[:status]
        type.created_time = params[:created_time]
        type.updated_time = params[:updated_time]
        type
      end
    end

    module GetResourcePoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePoliciesInput, context: context)
        type = Types::GetResourcePoliciesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetResourcePoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePoliciesOutput, context: context)
        type = Types::GetResourcePoliciesOutput.new
        type.get_resource_policies_response_list = GetResourcePoliciesResponseList.build(params[:get_resource_policies_response_list], context: "#{context}[:get_resource_policies_response_list]") unless params[:get_resource_policies_response_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetResourcePoliciesResponseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GluePolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePolicyInput, context: context)
        type = Types::GetResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module GetResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePolicyOutput, context: context)
        type = Types::GetResourcePolicyOutput.new
        type.policy_in_json = params[:policy_in_json]
        type.policy_hash = params[:policy_hash]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type
      end
    end

    module GetSchemaByDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSchemaByDefinitionInput, context: context)
        type = Types::GetSchemaByDefinitionInput.new
        type.schema_id = SchemaId.build(params[:schema_id], context: "#{context}[:schema_id]") unless params[:schema_id].nil?
        type.schema_definition = params[:schema_definition]
        type
      end
    end

    module GetSchemaByDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSchemaByDefinitionOutput, context: context)
        type = Types::GetSchemaByDefinitionOutput.new
        type.schema_version_id = params[:schema_version_id]
        type.schema_arn = params[:schema_arn]
        type.data_format = params[:data_format]
        type.status = params[:status]
        type.created_time = params[:created_time]
        type
      end
    end

    module GetSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSchemaInput, context: context)
        type = Types::GetSchemaInput.new
        type.schema_id = SchemaId.build(params[:schema_id], context: "#{context}[:schema_id]") unless params[:schema_id].nil?
        type
      end
    end

    module GetSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSchemaOutput, context: context)
        type = Types::GetSchemaOutput.new
        type.registry_name = params[:registry_name]
        type.registry_arn = params[:registry_arn]
        type.schema_name = params[:schema_name]
        type.schema_arn = params[:schema_arn]
        type.description = params[:description]
        type.data_format = params[:data_format]
        type.compatibility = params[:compatibility]
        type.schema_checkpoint = params[:schema_checkpoint]
        type.latest_schema_version = params[:latest_schema_version]
        type.next_schema_version = params[:next_schema_version]
        type.schema_status = params[:schema_status]
        type.created_time = params[:created_time]
        type.updated_time = params[:updated_time]
        type
      end
    end

    module GetSchemaVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSchemaVersionInput, context: context)
        type = Types::GetSchemaVersionInput.new
        type.schema_id = SchemaId.build(params[:schema_id], context: "#{context}[:schema_id]") unless params[:schema_id].nil?
        type.schema_version_id = params[:schema_version_id]
        type.schema_version_number = SchemaVersionNumber.build(params[:schema_version_number], context: "#{context}[:schema_version_number]") unless params[:schema_version_number].nil?
        type
      end
    end

    module GetSchemaVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSchemaVersionOutput, context: context)
        type = Types::GetSchemaVersionOutput.new
        type.schema_version_id = params[:schema_version_id]
        type.schema_definition = params[:schema_definition]
        type.data_format = params[:data_format]
        type.schema_arn = params[:schema_arn]
        type.version_number = params[:version_number]
        type.status = params[:status]
        type.created_time = params[:created_time]
        type
      end
    end

    module GetSchemaVersionsDiffInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSchemaVersionsDiffInput, context: context)
        type = Types::GetSchemaVersionsDiffInput.new
        type.schema_id = SchemaId.build(params[:schema_id], context: "#{context}[:schema_id]") unless params[:schema_id].nil?
        type.first_schema_version_number = SchemaVersionNumber.build(params[:first_schema_version_number], context: "#{context}[:first_schema_version_number]") unless params[:first_schema_version_number].nil?
        type.second_schema_version_number = SchemaVersionNumber.build(params[:second_schema_version_number], context: "#{context}[:second_schema_version_number]") unless params[:second_schema_version_number].nil?
        type.schema_diff_type = params[:schema_diff_type]
        type
      end
    end

    module GetSchemaVersionsDiffOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSchemaVersionsDiffOutput, context: context)
        type = Types::GetSchemaVersionsDiffOutput.new
        type.diff = params[:diff]
        type
      end
    end

    module GetSecurityConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSecurityConfigurationInput, context: context)
        type = Types::GetSecurityConfigurationInput.new
        type.name = params[:name]
        type
      end
    end

    module GetSecurityConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSecurityConfigurationOutput, context: context)
        type = Types::GetSecurityConfigurationOutput.new
        type.security_configuration = SecurityConfiguration.build(params[:security_configuration], context: "#{context}[:security_configuration]") unless params[:security_configuration].nil?
        type
      end
    end

    module GetSecurityConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSecurityConfigurationsInput, context: context)
        type = Types::GetSecurityConfigurationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetSecurityConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSecurityConfigurationsOutput, context: context)
        type = Types::GetSecurityConfigurationsOutput.new
        type.security_configurations = SecurityConfigurationList.build(params[:security_configurations], context: "#{context}[:security_configurations]") unless params[:security_configurations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSessionInput, context: context)
        type = Types::GetSessionInput.new
        type.id = params[:id]
        type.request_origin = params[:request_origin]
        type
      end
    end

    module GetSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSessionOutput, context: context)
        type = Types::GetSessionOutput.new
        type.session = Session.build(params[:session], context: "#{context}[:session]") unless params[:session].nil?
        type
      end
    end

    module GetStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStatementInput, context: context)
        type = Types::GetStatementInput.new
        type.session_id = params[:session_id]
        type.id = params[:id]
        type.request_origin = params[:request_origin]
        type
      end
    end

    module GetStatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStatementOutput, context: context)
        type = Types::GetStatementOutput.new
        type.statement = Statement.build(params[:statement], context: "#{context}[:statement]") unless params[:statement].nil?
        type
      end
    end

    module GetTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTableInput, context: context)
        type = Types::GetTableInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.name = params[:name]
        type.transaction_id = params[:transaction_id]
        type.query_as_of_time = params[:query_as_of_time]
        type
      end
    end

    module GetTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTableOutput, context: context)
        type = Types::GetTableOutput.new
        type.table = Table.build(params[:table], context: "#{context}[:table]") unless params[:table].nil?
        type
      end
    end

    module GetTableVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTableVersionInput, context: context)
        type = Types::GetTableVersionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.version_id = params[:version_id]
        type
      end
    end

    module GetTableVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTableVersionOutput, context: context)
        type = Types::GetTableVersionOutput.new
        type.table_version = TableVersion.build(params[:table_version], context: "#{context}[:table_version]") unless params[:table_version].nil?
        type
      end
    end

    module GetTableVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTableVersionsInput, context: context)
        type = Types::GetTableVersionsInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetTableVersionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TableVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetTableVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTableVersionsOutput, context: context)
        type = Types::GetTableVersionsOutput.new
        type.table_versions = GetTableVersionsList.build(params[:table_versions], context: "#{context}[:table_versions]") unless params[:table_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTablesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTablesInput, context: context)
        type = Types::GetTablesInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.expression = params[:expression]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.transaction_id = params[:transaction_id]
        type.query_as_of_time = params[:query_as_of_time]
        type
      end
    end

    module GetTablesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTablesOutput, context: context)
        type = Types::GetTablesOutput.new
        type.table_list = TableList.build(params[:table_list], context: "#{context}[:table_list]") unless params[:table_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTagsInput, context: context)
        type = Types::GetTagsInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module GetTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTagsOutput, context: context)
        type = Types::GetTagsOutput.new
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetTriggerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTriggerInput, context: context)
        type = Types::GetTriggerInput.new
        type.name = params[:name]
        type
      end
    end

    module GetTriggerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTriggerOutput, context: context)
        type = Types::GetTriggerOutput.new
        type.trigger = Trigger.build(params[:trigger], context: "#{context}[:trigger]") unless params[:trigger].nil?
        type
      end
    end

    module GetTriggersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTriggersInput, context: context)
        type = Types::GetTriggersInput.new
        type.next_token = params[:next_token]
        type.dependent_job_name = params[:dependent_job_name]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetTriggersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTriggersOutput, context: context)
        type = Types::GetTriggersOutput.new
        type.triggers = TriggerList.build(params[:triggers], context: "#{context}[:triggers]") unless params[:triggers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetUnfilteredPartitionMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUnfilteredPartitionMetadataInput, context: context)
        type = Types::GetUnfilteredPartitionMetadataInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.partition_values = ValueStringList.build(params[:partition_values], context: "#{context}[:partition_values]") unless params[:partition_values].nil?
        type.audit_context = AuditContext.build(params[:audit_context], context: "#{context}[:audit_context]") unless params[:audit_context].nil?
        type.supported_permission_types = PermissionTypeList.build(params[:supported_permission_types], context: "#{context}[:supported_permission_types]") unless params[:supported_permission_types].nil?
        type
      end
    end

    module GetUnfilteredPartitionMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUnfilteredPartitionMetadataOutput, context: context)
        type = Types::GetUnfilteredPartitionMetadataOutput.new
        type.partition = Partition.build(params[:partition], context: "#{context}[:partition]") unless params[:partition].nil?
        type.authorized_columns = NameStringList.build(params[:authorized_columns], context: "#{context}[:authorized_columns]") unless params[:authorized_columns].nil?
        type.is_registered_with_lake_formation = params[:is_registered_with_lake_formation]
        type
      end
    end

    module GetUnfilteredPartitionsMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUnfilteredPartitionsMetadataInput, context: context)
        type = Types::GetUnfilteredPartitionsMetadataInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.expression = params[:expression]
        type.audit_context = AuditContext.build(params[:audit_context], context: "#{context}[:audit_context]") unless params[:audit_context].nil?
        type.supported_permission_types = PermissionTypeList.build(params[:supported_permission_types], context: "#{context}[:supported_permission_types]") unless params[:supported_permission_types].nil?
        type.next_token = params[:next_token]
        type.segment = Segment.build(params[:segment], context: "#{context}[:segment]") unless params[:segment].nil?
        type.max_results = params[:max_results]
        type
      end
    end

    module GetUnfilteredPartitionsMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUnfilteredPartitionsMetadataOutput, context: context)
        type = Types::GetUnfilteredPartitionsMetadataOutput.new
        type.unfiltered_partitions = UnfilteredPartitionList.build(params[:unfiltered_partitions], context: "#{context}[:unfiltered_partitions]") unless params[:unfiltered_partitions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetUnfilteredTableMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUnfilteredTableMetadataInput, context: context)
        type = Types::GetUnfilteredTableMetadataInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.name = params[:name]
        type.audit_context = AuditContext.build(params[:audit_context], context: "#{context}[:audit_context]") unless params[:audit_context].nil?
        type.supported_permission_types = PermissionTypeList.build(params[:supported_permission_types], context: "#{context}[:supported_permission_types]") unless params[:supported_permission_types].nil?
        type
      end
    end

    module GetUnfilteredTableMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUnfilteredTableMetadataOutput, context: context)
        type = Types::GetUnfilteredTableMetadataOutput.new
        type.table = Table.build(params[:table], context: "#{context}[:table]") unless params[:table].nil?
        type.authorized_columns = NameStringList.build(params[:authorized_columns], context: "#{context}[:authorized_columns]") unless params[:authorized_columns].nil?
        type.is_registered_with_lake_formation = params[:is_registered_with_lake_formation]
        type.cell_filters = ColumnRowFilterList.build(params[:cell_filters], context: "#{context}[:cell_filters]") unless params[:cell_filters].nil?
        type
      end
    end

    module GetUserDefinedFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserDefinedFunctionInput, context: context)
        type = Types::GetUserDefinedFunctionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.function_name = params[:function_name]
        type
      end
    end

    module GetUserDefinedFunctionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserDefinedFunctionOutput, context: context)
        type = Types::GetUserDefinedFunctionOutput.new
        type.user_defined_function = UserDefinedFunction.build(params[:user_defined_function], context: "#{context}[:user_defined_function]") unless params[:user_defined_function].nil?
        type
      end
    end

    module GetUserDefinedFunctionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserDefinedFunctionsInput, context: context)
        type = Types::GetUserDefinedFunctionsInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.pattern = params[:pattern]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetUserDefinedFunctionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUserDefinedFunctionsOutput, context: context)
        type = Types::GetUserDefinedFunctionsOutput.new
        type.user_defined_functions = UserDefinedFunctionList.build(params[:user_defined_functions], context: "#{context}[:user_defined_functions]") unless params[:user_defined_functions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetWorkflowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkflowInput, context: context)
        type = Types::GetWorkflowInput.new
        type.name = params[:name]
        type.include_graph = params[:include_graph]
        type
      end
    end

    module GetWorkflowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkflowOutput, context: context)
        type = Types::GetWorkflowOutput.new
        type.workflow = Workflow.build(params[:workflow], context: "#{context}[:workflow]") unless params[:workflow].nil?
        type
      end
    end

    module GetWorkflowRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkflowRunInput, context: context)
        type = Types::GetWorkflowRunInput.new
        type.name = params[:name]
        type.run_id = params[:run_id]
        type.include_graph = params[:include_graph]
        type
      end
    end

    module GetWorkflowRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkflowRunOutput, context: context)
        type = Types::GetWorkflowRunOutput.new
        type.run = WorkflowRun.build(params[:run], context: "#{context}[:run]") unless params[:run].nil?
        type
      end
    end

    module GetWorkflowRunPropertiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkflowRunPropertiesInput, context: context)
        type = Types::GetWorkflowRunPropertiesInput.new
        type.name = params[:name]
        type.run_id = params[:run_id]
        type
      end
    end

    module GetWorkflowRunPropertiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkflowRunPropertiesOutput, context: context)
        type = Types::GetWorkflowRunPropertiesOutput.new
        type.run_properties = WorkflowRunProperties.build(params[:run_properties], context: "#{context}[:run_properties]") unless params[:run_properties].nil?
        type
      end
    end

    module GetWorkflowRunsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkflowRunsInput, context: context)
        type = Types::GetWorkflowRunsInput.new
        type.name = params[:name]
        type.include_graph = params[:include_graph]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetWorkflowRunsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkflowRunsOutput, context: context)
        type = Types::GetWorkflowRunsOutput.new
        type.runs = WorkflowRuns.build(params[:runs], context: "#{context}[:runs]") unless params[:runs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GlueEncryptionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlueEncryptionException, context: context)
        type = Types::GlueEncryptionException.new
        type.message = params[:message]
        type
      end
    end

    module GluePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GluePolicy, context: context)
        type = Types::GluePolicy.new
        type.policy_in_json = params[:policy_in_json]
        type.policy_hash = params[:policy_hash]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type
      end
    end

    module GlueSchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlueSchema, context: context)
        type = Types::GlueSchema.new
        type.columns = GlueStudioSchemaColumnList.build(params[:columns], context: "#{context}[:columns]") unless params[:columns].nil?
        type
      end
    end

    module GlueSchemas
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlueSchema.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GlueStudioPathList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnclosedInStringProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GlueStudioSchemaColumn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlueStudioSchemaColumn, context: context)
        type = Types::GlueStudioSchemaColumn.new
        type.name = params[:name]
        type.type = params[:type]
        type
      end
    end

    module GlueStudioSchemaColumnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlueStudioSchemaColumn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GlueTable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GlueTable, context: context)
        type = Types::GlueTable.new
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.catalog_id = params[:catalog_id]
        type.connection_name = params[:connection_name]
        type
      end
    end

    module GlueTables
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GlueTable.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GovernedCatalogSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GovernedCatalogSource, context: context)
        type = Types::GovernedCatalogSource.new
        type.name = params[:name]
        type.database = params[:database]
        type.table = params[:table]
        type.partition_predicate = params[:partition_predicate]
        type.additional_options = S3SourceAdditionalOptions.build(params[:additional_options], context: "#{context}[:additional_options]") unless params[:additional_options].nil?
        type
      end
    end

    module GovernedCatalogTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GovernedCatalogTarget, context: context)
        type = Types::GovernedCatalogTarget.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.partition_keys = GlueStudioPathList.build(params[:partition_keys], context: "#{context}[:partition_keys]") unless params[:partition_keys].nil?
        type.table = params[:table]
        type.database = params[:database]
        type.schema_change_policy = CatalogSchemaChangePolicy.build(params[:schema_change_policy], context: "#{context}[:schema_change_policy]") unless params[:schema_change_policy].nil?
        type
      end
    end

    module GrokClassifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GrokClassifier, context: context)
        type = Types::GrokClassifier.new
        type.name = params[:name]
        type.classification = params[:classification]
        type.creation_time = params[:creation_time]
        type.last_updated = params[:last_updated]
        type.version = params[:version]
        type.grok_pattern = params[:grok_pattern]
        type.custom_patterns = params[:custom_patterns]
        type
      end
    end

    module IdempotentParameterMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdempotentParameterMismatchException, context: context)
        type = Types::IdempotentParameterMismatchException.new
        type.message = params[:message]
        type
      end
    end

    module IllegalBlueprintStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IllegalBlueprintStateException, context: context)
        type = Types::IllegalBlueprintStateException.new
        type.message = params[:message]
        type
      end
    end

    module IllegalSessionStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IllegalSessionStateException, context: context)
        type = Types::IllegalSessionStateException.new
        type.message = params[:message]
        type
      end
    end

    module IllegalWorkflowStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IllegalWorkflowStateException, context: context)
        type = Types::IllegalWorkflowStateException.new
        type.message = params[:message]
        type
      end
    end

    module ImportCatalogToGlueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportCatalogToGlueInput, context: context)
        type = Types::ImportCatalogToGlueInput.new
        type.catalog_id = params[:catalog_id]
        type
      end
    end

    module ImportCatalogToGlueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportCatalogToGlueOutput, context: context)
        type = Types::ImportCatalogToGlueOutput.new
        type
      end
    end

    module ImportLabelsTaskRunProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportLabelsTaskRunProperties, context: context)
        type = Types::ImportLabelsTaskRunProperties.new
        type.input_s3_path = params[:input_s3_path]
        type.replace = params[:replace]
        type
      end
    end

    module InternalServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceException, context: context)
        type = Types::InternalServiceException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidStateException, context: context)
        type = Types::InvalidStateException.new
        type.message = params[:message]
        type
      end
    end

    module JDBCConnectorOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JDBCConnectorOptions, context: context)
        type = Types::JDBCConnectorOptions.new
        type.filter_predicate = params[:filter_predicate]
        type.partition_column = params[:partition_column]
        type.lower_bound = params[:lower_bound]
        type.upper_bound = params[:upper_bound]
        type.num_partitions = params[:num_partitions]
        type.job_bookmark_keys = EnclosedInStringProperties.build(params[:job_bookmark_keys], context: "#{context}[:job_bookmark_keys]") unless params[:job_bookmark_keys].nil?
        type.job_bookmark_keys_sort_order = params[:job_bookmark_keys_sort_order]
        type.data_type_mapping = JDBCDataTypeMapping.build(params[:data_type_mapping], context: "#{context}[:data_type_mapping]") unless params[:data_type_mapping].nil?
        type
      end
    end

    module JDBCConnectorSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JDBCConnectorSource, context: context)
        type = Types::JDBCConnectorSource.new
        type.name = params[:name]
        type.connection_name = params[:connection_name]
        type.connector_name = params[:connector_name]
        type.connection_type = params[:connection_type]
        type.additional_options = JDBCConnectorOptions.build(params[:additional_options], context: "#{context}[:additional_options]") unless params[:additional_options].nil?
        type.connection_table = params[:connection_table]
        type.query = params[:query]
        type.output_schemas = GlueSchemas.build(params[:output_schemas], context: "#{context}[:output_schemas]") unless params[:output_schemas].nil?
        type
      end
    end

    module JDBCConnectorTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JDBCConnectorTarget, context: context)
        type = Types::JDBCConnectorTarget.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.connection_name = params[:connection_name]
        type.connection_table = params[:connection_table]
        type.connector_name = params[:connector_name]
        type.connection_type = params[:connection_type]
        type.additional_options = AdditionalOptions.build(params[:additional_options], context: "#{context}[:additional_options]") unless params[:additional_options].nil?
        type.output_schemas = GlueSchemas.build(params[:output_schemas], context: "#{context}[:output_schemas]") unless params[:output_schemas].nil?
        type
      end
    end

    module JDBCDataTypeMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module JdbcTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JdbcTarget, context: context)
        type = Types::JdbcTarget.new
        type.connection_name = params[:connection_name]
        type.path = params[:path]
        type.exclusions = PathList.build(params[:exclusions], context: "#{context}[:exclusions]") unless params[:exclusions].nil?
        type
      end
    end

    module JdbcTargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JdbcTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Job
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Job, context: context)
        type = Types::Job.new
        type.name = params[:name]
        type.description = params[:description]
        type.log_uri = params[:log_uri]
        type.role = params[:role]
        type.created_on = params[:created_on]
        type.last_modified_on = params[:last_modified_on]
        type.execution_property = ExecutionProperty.build(params[:execution_property], context: "#{context}[:execution_property]") unless params[:execution_property].nil?
        type.command = JobCommand.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.default_arguments = GenericMap.build(params[:default_arguments], context: "#{context}[:default_arguments]") unless params[:default_arguments].nil?
        type.non_overridable_arguments = GenericMap.build(params[:non_overridable_arguments], context: "#{context}[:non_overridable_arguments]") unless params[:non_overridable_arguments].nil?
        type.connections = ConnectionsList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type.max_retries = params[:max_retries]
        type.allocated_capacity = params[:allocated_capacity]
        type.timeout = params[:timeout]
        type.max_capacity = params[:max_capacity]
        type.worker_type = params[:worker_type]
        type.number_of_workers = params[:number_of_workers]
        type.security_configuration = params[:security_configuration]
        type.notification_property = NotificationProperty.build(params[:notification_property], context: "#{context}[:notification_property]") unless params[:notification_property].nil?
        type.glue_version = params[:glue_version]
        type.code_gen_configuration_nodes = CodeGenConfigurationNodes.build(params[:code_gen_configuration_nodes], context: "#{context}[:code_gen_configuration_nodes]") unless params[:code_gen_configuration_nodes].nil?
        type
      end
    end

    module JobBookmarkEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobBookmarkEntry, context: context)
        type = Types::JobBookmarkEntry.new
        type.job_name = params[:job_name]
        type.version = params[:version]
        type.run = params[:run]
        type.attempt = params[:attempt]
        type.previous_run_id = params[:previous_run_id]
        type.run_id = params[:run_id]
        type.job_bookmark = params[:job_bookmark]
        type
      end
    end

    module JobBookmarksEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobBookmarksEncryption, context: context)
        type = Types::JobBookmarksEncryption.new
        type.job_bookmarks_encryption_mode = params[:job_bookmarks_encryption_mode]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module JobCommand
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobCommand, context: context)
        type = Types::JobCommand.new
        type.name = params[:name]
        type.script_location = params[:script_location]
        type.python_version = params[:python_version]
        type
      end
    end

    module JobList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Job.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module JobNodeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobNodeDetails, context: context)
        type = Types::JobNodeDetails.new
        type.job_runs = JobRunList.build(params[:job_runs], context: "#{context}[:job_runs]") unless params[:job_runs].nil?
        type
      end
    end

    module JobRun
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobRun, context: context)
        type = Types::JobRun.new
        type.id = params[:id]
        type.attempt = params[:attempt]
        type.previous_run_id = params[:previous_run_id]
        type.trigger_name = params[:trigger_name]
        type.job_name = params[:job_name]
        type.started_on = params[:started_on]
        type.last_modified_on = params[:last_modified_on]
        type.completed_on = params[:completed_on]
        type.job_run_state = params[:job_run_state]
        type.arguments = GenericMap.build(params[:arguments], context: "#{context}[:arguments]") unless params[:arguments].nil?
        type.error_message = params[:error_message]
        type.predecessor_runs = PredecessorList.build(params[:predecessor_runs], context: "#{context}[:predecessor_runs]") unless params[:predecessor_runs].nil?
        type.allocated_capacity = params[:allocated_capacity]
        type.execution_time = params[:execution_time]
        type.timeout = params[:timeout]
        type.max_capacity = params[:max_capacity]
        type.worker_type = params[:worker_type]
        type.number_of_workers = params[:number_of_workers]
        type.security_configuration = params[:security_configuration]
        type.log_group_name = params[:log_group_name]
        type.notification_property = NotificationProperty.build(params[:notification_property], context: "#{context}[:notification_property]") unless params[:notification_property].nil?
        type.glue_version = params[:glue_version]
        type.dpu_seconds = params[:dpu_seconds]
        type
      end
    end

    module JobRunList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobRun.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobUpdate, context: context)
        type = Types::JobUpdate.new
        type.description = params[:description]
        type.log_uri = params[:log_uri]
        type.role = params[:role]
        type.execution_property = ExecutionProperty.build(params[:execution_property], context: "#{context}[:execution_property]") unless params[:execution_property].nil?
        type.command = JobCommand.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.default_arguments = GenericMap.build(params[:default_arguments], context: "#{context}[:default_arguments]") unless params[:default_arguments].nil?
        type.non_overridable_arguments = GenericMap.build(params[:non_overridable_arguments], context: "#{context}[:non_overridable_arguments]") unless params[:non_overridable_arguments].nil?
        type.connections = ConnectionsList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type.max_retries = params[:max_retries]
        type.allocated_capacity = params[:allocated_capacity]
        type.timeout = params[:timeout]
        type.max_capacity = params[:max_capacity]
        type.worker_type = params[:worker_type]
        type.number_of_workers = params[:number_of_workers]
        type.security_configuration = params[:security_configuration]
        type.notification_property = NotificationProperty.build(params[:notification_property], context: "#{context}[:notification_property]") unless params[:notification_property].nil?
        type.glue_version = params[:glue_version]
        type.code_gen_configuration_nodes = CodeGenConfigurationNodes.build(params[:code_gen_configuration_nodes], context: "#{context}[:code_gen_configuration_nodes]") unless params[:code_gen_configuration_nodes].nil?
        type
      end
    end

    module Join
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Join, context: context)
        type = Types::Join.new
        type.name = params[:name]
        type.inputs = TwoInputs.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.join_type = params[:join_type]
        type.columns = JoinColumns.build(params[:columns], context: "#{context}[:columns]") unless params[:columns].nil?
        type
      end
    end

    module JoinColumn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JoinColumn, context: context)
        type = Types::JoinColumn.new
        type.from = params[:from]
        type.keys = GlueStudioPathList.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type
      end
    end

    module JoinColumns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JoinColumn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JsonClassifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JsonClassifier, context: context)
        type = Types::JsonClassifier.new
        type.name = params[:name]
        type.creation_time = params[:creation_time]
        type.last_updated = params[:last_updated]
        type.version = params[:version]
        type.json_path = params[:json_path]
        type
      end
    end

    module KafkaStreamingSourceOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KafkaStreamingSourceOptions, context: context)
        type = Types::KafkaStreamingSourceOptions.new
        type.bootstrap_servers = params[:bootstrap_servers]
        type.security_protocol = params[:security_protocol]
        type.connection_name = params[:connection_name]
        type.topic_name = params[:topic_name]
        type.assign = params[:assign]
        type.subscribe_pattern = params[:subscribe_pattern]
        type.classification = params[:classification]
        type.delimiter = params[:delimiter]
        type.starting_offsets = params[:starting_offsets]
        type.ending_offsets = params[:ending_offsets]
        type.poll_timeout_ms = params[:poll_timeout_ms]
        type.num_retries = params[:num_retries]
        type.retry_interval_ms = params[:retry_interval_ms]
        type.max_offsets_per_trigger = params[:max_offsets_per_trigger]
        type.min_partitions = params[:min_partitions]
        type
      end
    end

    module KeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module KeySchemaElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeySchemaElement, context: context)
        type = Types::KeySchemaElement.new
        type.name = params[:name]
        type.type = params[:type]
        type
      end
    end

    module KeySchemaElementList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeySchemaElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KinesisStreamingSourceOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KinesisStreamingSourceOptions, context: context)
        type = Types::KinesisStreamingSourceOptions.new
        type.endpoint_url = params[:endpoint_url]
        type.stream_name = params[:stream_name]
        type.classification = params[:classification]
        type.delimiter = params[:delimiter]
        type.starting_position = params[:starting_position]
        type.max_fetch_time_in_ms = params[:max_fetch_time_in_ms]
        type.max_fetch_records_per_shard = params[:max_fetch_records_per_shard]
        type.max_record_per_read = params[:max_record_per_read]
        type.add_idle_time_between_reads = params[:add_idle_time_between_reads]
        type.idle_time_between_reads_in_ms = params[:idle_time_between_reads_in_ms]
        type.describe_shard_interval = params[:describe_shard_interval]
        type.num_retries = params[:num_retries]
        type.retry_interval_ms = params[:retry_interval_ms]
        type.max_retry_interval_ms = params[:max_retry_interval_ms]
        type.avoid_empty_batches = params[:avoid_empty_batches]
        type.stream_arn = params[:stream_arn]
        type.role_arn = params[:role_arn]
        type.role_session_name = params[:role_session_name]
        type
      end
    end

    module LabelingSetGenerationTaskRunProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelingSetGenerationTaskRunProperties, context: context)
        type = Types::LabelingSetGenerationTaskRunProperties.new
        type.output_s3_path = params[:output_s3_path]
        type
      end
    end

    module LakeFormationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LakeFormationConfiguration, context: context)
        type = Types::LakeFormationConfiguration.new
        type.use_lake_formation_credentials = params[:use_lake_formation_credentials]
        type.account_id = params[:account_id]
        type
      end
    end

    module LastActiveDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LastActiveDefinition, context: context)
        type = Types::LastActiveDefinition.new
        type.description = params[:description]
        type.last_modified_on = params[:last_modified_on]
        type.parameter_spec = params[:parameter_spec]
        type.blueprint_location = params[:blueprint_location]
        type.blueprint_service_location = params[:blueprint_service_location]
        type
      end
    end

    module LastCrawlInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LastCrawlInfo, context: context)
        type = Types::LastCrawlInfo.new
        type.status = params[:status]
        type.error_message = params[:error_message]
        type.log_group = params[:log_group]
        type.log_stream = params[:log_stream]
        type.message_prefix = params[:message_prefix]
        type.start_time = params[:start_time]
        type
      end
    end

    module LimitedPathList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LimitedStringList.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LimitedStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LineageConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LineageConfiguration, context: context)
        type = Types::LineageConfiguration.new
        type.crawler_lineage_settings = params[:crawler_lineage_settings]
        type
      end
    end

    module ListBlueprintsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBlueprintsInput, context: context)
        type = Types::ListBlueprintsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListBlueprintsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBlueprintsOutput, context: context)
        type = Types::ListBlueprintsOutput.new
        type.blueprints = BlueprintNames.build(params[:blueprints], context: "#{context}[:blueprints]") unless params[:blueprints].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCrawlersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCrawlersInput, context: context)
        type = Types::ListCrawlersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListCrawlersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCrawlersOutput, context: context)
        type = Types::ListCrawlersOutput.new
        type.crawler_names = CrawlerNameList.build(params[:crawler_names], context: "#{context}[:crawler_names]") unless params[:crawler_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCustomEntityTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomEntityTypesInput, context: context)
        type = Types::ListCustomEntityTypesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListCustomEntityTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCustomEntityTypesOutput, context: context)
        type = Types::ListCustomEntityTypesOutput.new
        type.custom_entity_types = CustomEntityTypes.build(params[:custom_entity_types], context: "#{context}[:custom_entity_types]") unless params[:custom_entity_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDevEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevEndpointsInput, context: context)
        type = Types::ListDevEndpointsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListDevEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevEndpointsOutput, context: context)
        type = Types::ListDevEndpointsOutput.new
        type.dev_endpoint_names = DevEndpointNameList.build(params[:dev_endpoint_names], context: "#{context}[:dev_endpoint_names]") unless params[:dev_endpoint_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsInput, context: context)
        type = Types::ListJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsOutput, context: context)
        type = Types::ListJobsOutput.new
        type.job_names = JobNameList.build(params[:job_names], context: "#{context}[:job_names]") unless params[:job_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMLTransformsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMLTransformsInput, context: context)
        type = Types::ListMLTransformsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filter = TransformFilterCriteria.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.sort = TransformSortCriteria.build(params[:sort], context: "#{context}[:sort]") unless params[:sort].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListMLTransformsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMLTransformsOutput, context: context)
        type = Types::ListMLTransformsOutput.new
        type.transform_ids = TransformIdList.build(params[:transform_ids], context: "#{context}[:transform_ids]") unless params[:transform_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRegistriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRegistriesInput, context: context)
        type = Types::ListRegistriesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRegistriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRegistriesOutput, context: context)
        type = Types::ListRegistriesOutput.new
        type.registries = RegistryListDefinition.build(params[:registries], context: "#{context}[:registries]") unless params[:registries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSchemaVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchemaVersionsInput, context: context)
        type = Types::ListSchemaVersionsInput.new
        type.schema_id = SchemaId.build(params[:schema_id], context: "#{context}[:schema_id]") unless params[:schema_id].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSchemaVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchemaVersionsOutput, context: context)
        type = Types::ListSchemaVersionsOutput.new
        type.schemas = SchemaVersionList.build(params[:schemas], context: "#{context}[:schemas]") unless params[:schemas].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSchemasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchemasInput, context: context)
        type = Types::ListSchemasInput.new
        type.registry_id = RegistryId.build(params[:registry_id], context: "#{context}[:registry_id]") unless params[:registry_id].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSchemasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSchemasOutput, context: context)
        type = Types::ListSchemasOutput.new
        type.schemas = SchemaListDefinition.build(params[:schemas], context: "#{context}[:schemas]") unless params[:schemas].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSessionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSessionsInput, context: context)
        type = Types::ListSessionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.request_origin = params[:request_origin]
        type
      end
    end

    module ListSessionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSessionsOutput, context: context)
        type = Types::ListSessionsOutput.new
        type.ids = SessionIdList.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type.sessions = SessionList.build(params[:sessions], context: "#{context}[:sessions]") unless params[:sessions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStatementsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStatementsInput, context: context)
        type = Types::ListStatementsInput.new
        type.session_id = params[:session_id]
        type.request_origin = params[:request_origin]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStatementsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStatementsOutput, context: context)
        type = Types::ListStatementsOutput.new
        type.statements = StatementList.build(params[:statements], context: "#{context}[:statements]") unless params[:statements].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTriggersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTriggersInput, context: context)
        type = Types::ListTriggersInput.new
        type.next_token = params[:next_token]
        type.dependent_job_name = params[:dependent_job_name]
        type.max_results = params[:max_results]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTriggersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTriggersOutput, context: context)
        type = Types::ListTriggersOutput.new
        type.trigger_names = TriggerNameList.build(params[:trigger_names], context: "#{context}[:trigger_names]") unless params[:trigger_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWorkflowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkflowsInput, context: context)
        type = Types::ListWorkflowsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListWorkflowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkflowsOutput, context: context)
        type = Types::ListWorkflowsOutput.new
        type.workflows = WorkflowNames.build(params[:workflows], context: "#{context}[:workflows]") unless params[:workflows].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Location, context: context)
        type = Types::Location.new
        type.jdbc = CodeGenNodeArgs.build(params[:jdbc], context: "#{context}[:jdbc]") unless params[:jdbc].nil?
        type.s3 = CodeGenNodeArgs.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type.dynamo_db = CodeGenNodeArgs.build(params[:dynamo_db], context: "#{context}[:dynamo_db]") unless params[:dynamo_db].nil?
        type
      end
    end

    module LocationMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module LocationStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LongColumnStatisticsData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LongColumnStatisticsData, context: context)
        type = Types::LongColumnStatisticsData.new
        type.minimum_value = params[:minimum_value]
        type.maximum_value = params[:maximum_value]
        type.number_of_nulls = params[:number_of_nulls]
        type.number_of_distinct_values = params[:number_of_distinct_values]
        type
      end
    end

    module MLTransform
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MLTransform, context: context)
        type = Types::MLTransform.new
        type.transform_id = params[:transform_id]
        type.name = params[:name]
        type.description = params[:description]
        type.status = params[:status]
        type.created_on = params[:created_on]
        type.last_modified_on = params[:last_modified_on]
        type.input_record_tables = GlueTables.build(params[:input_record_tables], context: "#{context}[:input_record_tables]") unless params[:input_record_tables].nil?
        type.parameters = TransformParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.evaluation_metrics = EvaluationMetrics.build(params[:evaluation_metrics], context: "#{context}[:evaluation_metrics]") unless params[:evaluation_metrics].nil?
        type.label_count = params[:label_count]
        type.schema = TransformSchema.build(params[:schema], context: "#{context}[:schema]") unless params[:schema].nil?
        type.role = params[:role]
        type.glue_version = params[:glue_version]
        type.max_capacity = params[:max_capacity]
        type.worker_type = params[:worker_type]
        type.number_of_workers = params[:number_of_workers]
        type.timeout = params[:timeout]
        type.max_retries = params[:max_retries]
        type.transform_encryption = TransformEncryption.build(params[:transform_encryption], context: "#{context}[:transform_encryption]") unless params[:transform_encryption].nil?
        type
      end
    end

    module MLTransformNotReadyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MLTransformNotReadyException, context: context)
        type = Types::MLTransformNotReadyException.new
        type.message = params[:message]
        type
      end
    end

    module MLUserDataEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MLUserDataEncryption, context: context)
        type = Types::MLUserDataEncryption.new
        type.ml_user_data_encryption_mode = params[:ml_user_data_encryption_mode]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module ManyInputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MapValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Mapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Mapping, context: context)
        type = Types::Mapping.new
        type.to_key = params[:to_key]
        type.from_path = EnclosedInStringProperties.build(params[:from_path], context: "#{context}[:from_path]") unless params[:from_path].nil?
        type.from_type = params[:from_type]
        type.to_type = params[:to_type]
        type.dropped = params[:dropped]
        type.children = Mappings.build(params[:children], context: "#{context}[:children]") unless params[:children].nil?
        type
      end
    end

    module MappingEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MappingEntry, context: context)
        type = Types::MappingEntry.new
        type.source_table = params[:source_table]
        type.source_path = params[:source_path]
        type.source_type = params[:source_type]
        type.target_table = params[:target_table]
        type.target_path = params[:target_path]
        type.target_type = params[:target_type]
        type
      end
    end

    module MappingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MappingEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Mappings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Mapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MatchCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Merge
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Merge, context: context)
        type = Types::Merge.new
        type.name = params[:name]
        type.inputs = TwoInputs.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.source = params[:source]
        type.primary_keys = GlueStudioPathList.build(params[:primary_keys], context: "#{context}[:primary_keys]") unless params[:primary_keys].nil?
        type
      end
    end

    module MetadataInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetadataInfo, context: context)
        type = Types::MetadataInfo.new
        type.metadata_value = params[:metadata_value]
        type.created_time = params[:created_time]
        type.other_metadata_value_list = OtherMetadataValueList.build(params[:other_metadata_value_list], context: "#{context}[:other_metadata_value_list]") unless params[:other_metadata_value_list].nil?
        type
      end
    end

    module MetadataInfoMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = MetadataInfo.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MetadataKeyValuePair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetadataKeyValuePair, context: context)
        type = Types::MetadataKeyValuePair.new
        type.metadata_key = params[:metadata_key]
        type.metadata_value = params[:metadata_value]
        type
      end
    end

    module MetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetadataKeyValuePair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MicrosoftSQLServerCatalogSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MicrosoftSQLServerCatalogSource, context: context)
        type = Types::MicrosoftSQLServerCatalogSource.new
        type.name = params[:name]
        type.database = params[:database]
        type.table = params[:table]
        type
      end
    end

    module MicrosoftSQLServerCatalogTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MicrosoftSQLServerCatalogTarget, context: context)
        type = Types::MicrosoftSQLServerCatalogTarget.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.database = params[:database]
        type.table = params[:table]
        type
      end
    end

    module MongoDBTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MongoDBTarget, context: context)
        type = Types::MongoDBTarget.new
        type.connection_name = params[:connection_name]
        type.path = params[:path]
        type.scan_all = params[:scan_all]
        type
      end
    end

    module MongoDBTargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MongoDBTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MySQLCatalogSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MySQLCatalogSource, context: context)
        type = Types::MySQLCatalogSource.new
        type.name = params[:name]
        type.database = params[:database]
        type.table = params[:table]
        type
      end
    end

    module MySQLCatalogTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MySQLCatalogTarget, context: context)
        type = Types::MySQLCatalogTarget.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.database = params[:database]
        type.table = params[:table]
        type
      end
    end

    module NameStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NoScheduleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoScheduleException, context: context)
        type = Types::NoScheduleException.new
        type.message = params[:message]
        type
      end
    end

    module Node
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Node, context: context)
        type = Types::Node.new
        type.type = params[:type]
        type.name = params[:name]
        type.unique_id = params[:unique_id]
        type.trigger_details = TriggerNodeDetails.build(params[:trigger_details], context: "#{context}[:trigger_details]") unless params[:trigger_details].nil?
        type.job_details = JobNodeDetails.build(params[:job_details], context: "#{context}[:job_details]") unless params[:job_details].nil?
        type.crawler_details = CrawlerNodeDetails.build(params[:crawler_details], context: "#{context}[:crawler_details]") unless params[:crawler_details].nil?
        type
      end
    end

    module NodeIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Node.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotificationProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationProperty, context: context)
        type = Types::NotificationProperty.new
        type.notify_delay_after = params[:notify_delay_after]
        type
      end
    end

    module NullCheckBoxList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NullCheckBoxList, context: context)
        type = Types::NullCheckBoxList.new
        type.is_empty = params[:is_empty]
        type.is_null_string = params[:is_null_string]
        type.is_neg_one = params[:is_neg_one]
        type
      end
    end

    module NullValueField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NullValueField, context: context)
        type = Types::NullValueField.new
        type.value = params[:value]
        type.datatype = Datatype.build(params[:datatype], context: "#{context}[:datatype]") unless params[:datatype].nil?
        type
      end
    end

    module NullValueFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NullValueField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OneInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OperationTimeoutException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationTimeoutException, context: context)
        type = Types::OperationTimeoutException.new
        type.message = params[:message]
        type
      end
    end

    module OracleSQLCatalogSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OracleSQLCatalogSource, context: context)
        type = Types::OracleSQLCatalogSource.new
        type.name = params[:name]
        type.database = params[:database]
        type.table = params[:table]
        type
      end
    end

    module OracleSQLCatalogTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OracleSQLCatalogTarget, context: context)
        type = Types::OracleSQLCatalogTarget.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.database = params[:database]
        type.table = params[:table]
        type
      end
    end

    module OrchestrationArgumentsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module OrchestrationStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Order
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Order, context: context)
        type = Types::Order.new
        type.column = params[:column]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module OrderList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Order.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OtherMetadataValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OtherMetadataValueListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OtherMetadataValueListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OtherMetadataValueListItem, context: context)
        type = Types::OtherMetadataValueListItem.new
        type.metadata_value = params[:metadata_value]
        type.created_time = params[:created_time]
        type
      end
    end

    module PIIDetection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PIIDetection, context: context)
        type = Types::PIIDetection.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.pii_type = params[:pii_type]
        type.entity_types_to_detect = EnclosedInStringProperties.build(params[:entity_types_to_detect], context: "#{context}[:entity_types_to_detect]") unless params[:entity_types_to_detect].nil?
        type.output_column_name = params[:output_column_name]
        type.sample_fraction = params[:sample_fraction]
        type.threshold_fraction = params[:threshold_fraction]
        type.mask_value = params[:mask_value]
        type
      end
    end

    module ParametersMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Partition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Partition, context: context)
        type = Types::Partition.new
        type.values = ValueStringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.creation_time = params[:creation_time]
        type.last_access_time = params[:last_access_time]
        type.storage_descriptor = StorageDescriptor.build(params[:storage_descriptor], context: "#{context}[:storage_descriptor]") unless params[:storage_descriptor].nil?
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.last_analyzed_time = params[:last_analyzed_time]
        type.catalog_id = params[:catalog_id]
        type
      end
    end

    module PartitionError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartitionError, context: context)
        type = Types::PartitionError.new
        type.partition_values = ValueStringList.build(params[:partition_values], context: "#{context}[:partition_values]") unless params[:partition_values].nil?
        type.error_detail = ErrorDetail.build(params[:error_detail], context: "#{context}[:error_detail]") unless params[:error_detail].nil?
        type
      end
    end

    module PartitionErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartitionError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PartitionIndex
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartitionIndex, context: context)
        type = Types::PartitionIndex.new
        type.keys = KeyList.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type.index_name = params[:index_name]
        type
      end
    end

    module PartitionIndexDescriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartitionIndexDescriptor, context: context)
        type = Types::PartitionIndexDescriptor.new
        type.index_name = params[:index_name]
        type.keys = KeySchemaElementList.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type.index_status = params[:index_status]
        type.backfill_errors = BackfillErrors.build(params[:backfill_errors], context: "#{context}[:backfill_errors]") unless params[:backfill_errors].nil?
        type
      end
    end

    module PartitionIndexDescriptorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartitionIndexDescriptor.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PartitionIndexList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartitionIndex.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PartitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartitionInput, context: context)
        type = Types::PartitionInput.new
        type.values = ValueStringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.last_access_time = params[:last_access_time]
        type.storage_descriptor = StorageDescriptor.build(params[:storage_descriptor], context: "#{context}[:storage_descriptor]") unless params[:storage_descriptor].nil?
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.last_analyzed_time = params[:last_analyzed_time]
        type
      end
    end

    module PartitionInputList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PartitionInput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PartitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Partition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PartitionValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PartitionValueList, context: context)
        type = Types::PartitionValueList.new
        type.values = ValueStringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module PathList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PermissionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PermissionTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PermissionTypeMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PermissionTypeMismatchException, context: context)
        type = Types::PermissionTypeMismatchException.new
        type.message = params[:message]
        type
      end
    end

    module PhysicalConnectionRequirements
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PhysicalConnectionRequirements, context: context)
        type = Types::PhysicalConnectionRequirements.new
        type.subnet_id = params[:subnet_id]
        type.security_group_id_list = SecurityGroupIdList.build(params[:security_group_id_list], context: "#{context}[:security_group_id_list]") unless params[:security_group_id_list].nil?
        type.availability_zone = params[:availability_zone]
        type
      end
    end

    module PostgreSQLCatalogSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostgreSQLCatalogSource, context: context)
        type = Types::PostgreSQLCatalogSource.new
        type.name = params[:name]
        type.database = params[:database]
        type.table = params[:table]
        type
      end
    end

    module PostgreSQLCatalogTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostgreSQLCatalogTarget, context: context)
        type = Types::PostgreSQLCatalogTarget.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.database = params[:database]
        type.table = params[:table]
        type
      end
    end

    module Predecessor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Predecessor, context: context)
        type = Types::Predecessor.new
        type.job_name = params[:job_name]
        type.run_id = params[:run_id]
        type
      end
    end

    module PredecessorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Predecessor.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Predicate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Predicate, context: context)
        type = Types::Predicate.new
        type.logical = params[:logical]
        type.conditions = ConditionList.build(params[:conditions], context: "#{context}[:conditions]") unless params[:conditions].nil?
        type
      end
    end

    module PrincipalPermissions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrincipalPermissions, context: context)
        type = Types::PrincipalPermissions.new
        type.principal = DataLakePrincipal.build(params[:principal], context: "#{context}[:principal]") unless params[:principal].nil?
        type.permissions = PermissionList.build(params[:permissions], context: "#{context}[:permissions]") unless params[:permissions].nil?
        type
      end
    end

    module PrincipalPermissionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PrincipalPermissions.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PropertyPredicate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyPredicate, context: context)
        type = Types::PropertyPredicate.new
        type.key = params[:key]
        type.value = params[:value]
        type.comparator = params[:comparator]
        type
      end
    end

    module PublicKeysList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PutDataCatalogEncryptionSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDataCatalogEncryptionSettingsInput, context: context)
        type = Types::PutDataCatalogEncryptionSettingsInput.new
        type.catalog_id = params[:catalog_id]
        type.data_catalog_encryption_settings = DataCatalogEncryptionSettings.build(params[:data_catalog_encryption_settings], context: "#{context}[:data_catalog_encryption_settings]") unless params[:data_catalog_encryption_settings].nil?
        type
      end
    end

    module PutDataCatalogEncryptionSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDataCatalogEncryptionSettingsOutput, context: context)
        type = Types::PutDataCatalogEncryptionSettingsOutput.new
        type
      end
    end

    module PutResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyInput, context: context)
        type = Types::PutResourcePolicyInput.new
        type.policy_in_json = params[:policy_in_json]
        type.resource_arn = params[:resource_arn]
        type.policy_hash_condition = params[:policy_hash_condition]
        type.policy_exists_condition = params[:policy_exists_condition]
        type.enable_hybrid = params[:enable_hybrid]
        type
      end
    end

    module PutResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyOutput, context: context)
        type = Types::PutResourcePolicyOutput.new
        type.policy_hash = params[:policy_hash]
        type
      end
    end

    module PutSchemaVersionMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSchemaVersionMetadataInput, context: context)
        type = Types::PutSchemaVersionMetadataInput.new
        type.schema_id = SchemaId.build(params[:schema_id], context: "#{context}[:schema_id]") unless params[:schema_id].nil?
        type.schema_version_number = SchemaVersionNumber.build(params[:schema_version_number], context: "#{context}[:schema_version_number]") unless params[:schema_version_number].nil?
        type.schema_version_id = params[:schema_version_id]
        type.metadata_key_value = MetadataKeyValuePair.build(params[:metadata_key_value], context: "#{context}[:metadata_key_value]") unless params[:metadata_key_value].nil?
        type
      end
    end

    module PutSchemaVersionMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutSchemaVersionMetadataOutput, context: context)
        type = Types::PutSchemaVersionMetadataOutput.new
        type.schema_arn = params[:schema_arn]
        type.schema_name = params[:schema_name]
        type.registry_name = params[:registry_name]
        type.latest_version = params[:latest_version]
        type.version_number = params[:version_number]
        type.schema_version_id = params[:schema_version_id]
        type.metadata_key = params[:metadata_key]
        type.metadata_value = params[:metadata_value]
        type
      end
    end

    module PutWorkflowRunPropertiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutWorkflowRunPropertiesInput, context: context)
        type = Types::PutWorkflowRunPropertiesInput.new
        type.name = params[:name]
        type.run_id = params[:run_id]
        type.run_properties = WorkflowRunProperties.build(params[:run_properties], context: "#{context}[:run_properties]") unless params[:run_properties].nil?
        type
      end
    end

    module PutWorkflowRunPropertiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutWorkflowRunPropertiesOutput, context: context)
        type = Types::PutWorkflowRunPropertiesOutput.new
        type
      end
    end

    module QuerySchemaVersionMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QuerySchemaVersionMetadataInput, context: context)
        type = Types::QuerySchemaVersionMetadataInput.new
        type.schema_id = SchemaId.build(params[:schema_id], context: "#{context}[:schema_id]") unless params[:schema_id].nil?
        type.schema_version_number = SchemaVersionNumber.build(params[:schema_version_number], context: "#{context}[:schema_version_number]") unless params[:schema_version_number].nil?
        type.schema_version_id = params[:schema_version_id]
        type.metadata_list = MetadataList.build(params[:metadata_list], context: "#{context}[:metadata_list]") unless params[:metadata_list].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module QuerySchemaVersionMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QuerySchemaVersionMetadataOutput, context: context)
        type = Types::QuerySchemaVersionMetadataOutput.new
        type.metadata_info_map = MetadataInfoMap.build(params[:metadata_info_map], context: "#{context}[:metadata_info_map]") unless params[:metadata_info_map].nil?
        type.schema_version_id = params[:schema_version_id]
        type.next_token = params[:next_token]
        type
      end
    end

    module RecrawlPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecrawlPolicy, context: context)
        type = Types::RecrawlPolicy.new
        type.recrawl_behavior = params[:recrawl_behavior]
        type
      end
    end

    module RedshiftSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftSource, context: context)
        type = Types::RedshiftSource.new
        type.name = params[:name]
        type.database = params[:database]
        type.table = params[:table]
        type.redshift_tmp_dir = params[:redshift_tmp_dir]
        type.tmp_dir_iam_role = params[:tmp_dir_iam_role]
        type
      end
    end

    module RedshiftTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftTarget, context: context)
        type = Types::RedshiftTarget.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.database = params[:database]
        type.table = params[:table]
        type.redshift_tmp_dir = params[:redshift_tmp_dir]
        type.tmp_dir_iam_role = params[:tmp_dir_iam_role]
        type.upsert_redshift_options = UpsertRedshiftTargetOptions.build(params[:upsert_redshift_options], context: "#{context}[:upsert_redshift_options]") unless params[:upsert_redshift_options].nil?
        type
      end
    end

    module RegisterSchemaVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterSchemaVersionInput, context: context)
        type = Types::RegisterSchemaVersionInput.new
        type.schema_id = SchemaId.build(params[:schema_id], context: "#{context}[:schema_id]") unless params[:schema_id].nil?
        type.schema_definition = params[:schema_definition]
        type
      end
    end

    module RegisterSchemaVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterSchemaVersionOutput, context: context)
        type = Types::RegisterSchemaVersionOutput.new
        type.schema_version_id = params[:schema_version_id]
        type.version_number = params[:version_number]
        type.status = params[:status]
        type
      end
    end

    module RegistryId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegistryId, context: context)
        type = Types::RegistryId.new
        type.registry_name = params[:registry_name]
        type.registry_arn = params[:registry_arn]
        type
      end
    end

    module RegistryListDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RegistryListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegistryListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegistryListItem, context: context)
        type = Types::RegistryListItem.new
        type.registry_name = params[:registry_name]
        type.registry_arn = params[:registry_arn]
        type.description = params[:description]
        type.status = params[:status]
        type.created_time = params[:created_time]
        type.updated_time = params[:updated_time]
        type
      end
    end

    module RelationalCatalogSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelationalCatalogSource, context: context)
        type = Types::RelationalCatalogSource.new
        type.name = params[:name]
        type.database = params[:database]
        type.table = params[:table]
        type
      end
    end

    module RemoveSchemaVersionMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveSchemaVersionMetadataInput, context: context)
        type = Types::RemoveSchemaVersionMetadataInput.new
        type.schema_id = SchemaId.build(params[:schema_id], context: "#{context}[:schema_id]") unless params[:schema_id].nil?
        type.schema_version_number = SchemaVersionNumber.build(params[:schema_version_number], context: "#{context}[:schema_version_number]") unless params[:schema_version_number].nil?
        type.schema_version_id = params[:schema_version_id]
        type.metadata_key_value = MetadataKeyValuePair.build(params[:metadata_key_value], context: "#{context}[:metadata_key_value]") unless params[:metadata_key_value].nil?
        type
      end
    end

    module RemoveSchemaVersionMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveSchemaVersionMetadataOutput, context: context)
        type = Types::RemoveSchemaVersionMetadataOutput.new
        type.schema_arn = params[:schema_arn]
        type.schema_name = params[:schema_name]
        type.registry_name = params[:registry_name]
        type.latest_version = params[:latest_version]
        type.version_number = params[:version_number]
        type.schema_version_id = params[:schema_version_id]
        type.metadata_key = params[:metadata_key]
        type.metadata_value = params[:metadata_value]
        type
      end
    end

    module RenameField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenameField, context: context)
        type = Types::RenameField.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.source_path = EnclosedInStringProperties.build(params[:source_path], context: "#{context}[:source_path]") unless params[:source_path].nil?
        type.target_path = EnclosedInStringProperties.build(params[:target_path], context: "#{context}[:target_path]") unless params[:target_path].nil?
        type
      end
    end

    module ResetJobBookmarkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetJobBookmarkInput, context: context)
        type = Types::ResetJobBookmarkInput.new
        type.job_name = params[:job_name]
        type.run_id = params[:run_id]
        type
      end
    end

    module ResetJobBookmarkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetJobBookmarkOutput, context: context)
        type = Types::ResetJobBookmarkOutput.new
        type.job_bookmark_entry = JobBookmarkEntry.build(params[:job_bookmark_entry], context: "#{context}[:job_bookmark_entry]") unless params[:job_bookmark_entry].nil?
        type
      end
    end

    module ResourceNotReadyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotReadyException, context: context)
        type = Types::ResourceNotReadyException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNumberLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNumberLimitExceededException, context: context)
        type = Types::ResourceNumberLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceUri
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceUri, context: context)
        type = Types::ResourceUri.new
        type.resource_type = params[:resource_type]
        type.uri = params[:uri]
        type
      end
    end

    module ResourceUriList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceUri.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResumeWorkflowRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeWorkflowRunInput, context: context)
        type = Types::ResumeWorkflowRunInput.new
        type.name = params[:name]
        type.run_id = params[:run_id]
        type.node_ids = NodeIdList.build(params[:node_ids], context: "#{context}[:node_ids]") unless params[:node_ids].nil?
        type
      end
    end

    module ResumeWorkflowRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeWorkflowRunOutput, context: context)
        type = Types::ResumeWorkflowRunOutput.new
        type.run_id = params[:run_id]
        type.node_ids = NodeIdList.build(params[:node_ids], context: "#{context}[:node_ids]") unless params[:node_ids].nil?
        type
      end
    end

    module RunStatementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunStatementInput, context: context)
        type = Types::RunStatementInput.new
        type.session_id = params[:session_id]
        type.code = params[:code]
        type.request_origin = params[:request_origin]
        type
      end
    end

    module RunStatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunStatementOutput, context: context)
        type = Types::RunStatementOutput.new
        type.id = params[:id]
        type
      end
    end

    module S3CatalogSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3CatalogSource, context: context)
        type = Types::S3CatalogSource.new
        type.name = params[:name]
        type.database = params[:database]
        type.table = params[:table]
        type.partition_predicate = params[:partition_predicate]
        type.additional_options = S3SourceAdditionalOptions.build(params[:additional_options], context: "#{context}[:additional_options]") unless params[:additional_options].nil?
        type
      end
    end

    module S3CatalogTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3CatalogTarget, context: context)
        type = Types::S3CatalogTarget.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.partition_keys = GlueStudioPathList.build(params[:partition_keys], context: "#{context}[:partition_keys]") unless params[:partition_keys].nil?
        type.table = params[:table]
        type.database = params[:database]
        type.schema_change_policy = CatalogSchemaChangePolicy.build(params[:schema_change_policy], context: "#{context}[:schema_change_policy]") unless params[:schema_change_policy].nil?
        type
      end
    end

    module S3CsvSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3CsvSource, context: context)
        type = Types::S3CsvSource.new
        type.name = params[:name]
        type.paths = EnclosedInStringProperties.build(params[:paths], context: "#{context}[:paths]") unless params[:paths].nil?
        type.compression_type = params[:compression_type]
        type.exclusions = EnclosedInStringProperties.build(params[:exclusions], context: "#{context}[:exclusions]") unless params[:exclusions].nil?
        type.group_size = params[:group_size]
        type.group_files = params[:group_files]
        type.recurse = params[:recurse]
        type.max_band = params[:max_band]
        type.max_files_in_band = params[:max_files_in_band]
        type.additional_options = S3DirectSourceAdditionalOptions.build(params[:additional_options], context: "#{context}[:additional_options]") unless params[:additional_options].nil?
        type.separator = params[:separator]
        type.escaper = params[:escaper]
        type.quote_char = params[:quote_char]
        type.multiline = params[:multiline]
        type.with_header = params[:with_header]
        type.write_header = params[:write_header]
        type.skip_first = params[:skip_first]
        type.optimize_performance = params[:optimize_performance]
        type.output_schemas = GlueSchemas.build(params[:output_schemas], context: "#{context}[:output_schemas]") unless params[:output_schemas].nil?
        type
      end
    end

    module S3DirectSourceAdditionalOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DirectSourceAdditionalOptions, context: context)
        type = Types::S3DirectSourceAdditionalOptions.new
        type.bounded_size = params[:bounded_size]
        type.bounded_files = params[:bounded_files]
        type.enable_sample_path = params[:enable_sample_path]
        type.sample_path = params[:sample_path]
        type
      end
    end

    module S3DirectTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DirectTarget, context: context)
        type = Types::S3DirectTarget.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.partition_keys = GlueStudioPathList.build(params[:partition_keys], context: "#{context}[:partition_keys]") unless params[:partition_keys].nil?
        type.path = params[:path]
        type.compression = params[:compression]
        type.format = params[:format]
        type.schema_change_policy = DirectSchemaChangePolicy.build(params[:schema_change_policy], context: "#{context}[:schema_change_policy]") unless params[:schema_change_policy].nil?
        type
      end
    end

    module S3Encryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Encryption, context: context)
        type = Types::S3Encryption.new
        type.s3_encryption_mode = params[:s3_encryption_mode]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module S3EncryptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3Encryption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3GlueParquetTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3GlueParquetTarget, context: context)
        type = Types::S3GlueParquetTarget.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.partition_keys = GlueStudioPathList.build(params[:partition_keys], context: "#{context}[:partition_keys]") unless params[:partition_keys].nil?
        type.path = params[:path]
        type.compression = params[:compression]
        type.schema_change_policy = DirectSchemaChangePolicy.build(params[:schema_change_policy], context: "#{context}[:schema_change_policy]") unless params[:schema_change_policy].nil?
        type
      end
    end

    module S3JsonSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3JsonSource, context: context)
        type = Types::S3JsonSource.new
        type.name = params[:name]
        type.paths = EnclosedInStringProperties.build(params[:paths], context: "#{context}[:paths]") unless params[:paths].nil?
        type.compression_type = params[:compression_type]
        type.exclusions = EnclosedInStringProperties.build(params[:exclusions], context: "#{context}[:exclusions]") unless params[:exclusions].nil?
        type.group_size = params[:group_size]
        type.group_files = params[:group_files]
        type.recurse = params[:recurse]
        type.max_band = params[:max_band]
        type.max_files_in_band = params[:max_files_in_band]
        type.additional_options = S3DirectSourceAdditionalOptions.build(params[:additional_options], context: "#{context}[:additional_options]") unless params[:additional_options].nil?
        type.json_path = params[:json_path]
        type.multiline = params[:multiline]
        type.output_schemas = GlueSchemas.build(params[:output_schemas], context: "#{context}[:output_schemas]") unless params[:output_schemas].nil?
        type
      end
    end

    module S3ParquetSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ParquetSource, context: context)
        type = Types::S3ParquetSource.new
        type.name = params[:name]
        type.paths = EnclosedInStringProperties.build(params[:paths], context: "#{context}[:paths]") unless params[:paths].nil?
        type.compression_type = params[:compression_type]
        type.exclusions = EnclosedInStringProperties.build(params[:exclusions], context: "#{context}[:exclusions]") unless params[:exclusions].nil?
        type.group_size = params[:group_size]
        type.group_files = params[:group_files]
        type.recurse = params[:recurse]
        type.max_band = params[:max_band]
        type.max_files_in_band = params[:max_files_in_band]
        type.additional_options = S3DirectSourceAdditionalOptions.build(params[:additional_options], context: "#{context}[:additional_options]") unless params[:additional_options].nil?
        type.output_schemas = GlueSchemas.build(params[:output_schemas], context: "#{context}[:output_schemas]") unless params[:output_schemas].nil?
        type
      end
    end

    module S3SourceAdditionalOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3SourceAdditionalOptions, context: context)
        type = Types::S3SourceAdditionalOptions.new
        type.bounded_size = params[:bounded_size]
        type.bounded_files = params[:bounded_files]
        type
      end
    end

    module S3Target
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Target, context: context)
        type = Types::S3Target.new
        type.path = params[:path]
        type.exclusions = PathList.build(params[:exclusions], context: "#{context}[:exclusions]") unless params[:exclusions].nil?
        type.connection_name = params[:connection_name]
        type.sample_size = params[:sample_size]
        type.event_queue_arn = params[:event_queue_arn]
        type.dlq_event_queue_arn = params[:dlq_event_queue_arn]
        type
      end
    end

    module S3TargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3Target.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Schedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Schedule, context: context)
        type = Types::Schedule.new
        type.schedule_expression = params[:schedule_expression]
        type.state = params[:state]
        type
      end
    end

    module SchedulerNotRunningException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchedulerNotRunningException, context: context)
        type = Types::SchedulerNotRunningException.new
        type.message = params[:message]
        type
      end
    end

    module SchedulerRunningException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchedulerRunningException, context: context)
        type = Types::SchedulerRunningException.new
        type.message = params[:message]
        type
      end
    end

    module SchedulerTransitioningException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchedulerTransitioningException, context: context)
        type = Types::SchedulerTransitioningException.new
        type.message = params[:message]
        type
      end
    end

    module SchemaChangePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaChangePolicy, context: context)
        type = Types::SchemaChangePolicy.new
        type.update_behavior = params[:update_behavior]
        type.delete_behavior = params[:delete_behavior]
        type
      end
    end

    module SchemaColumn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaColumn, context: context)
        type = Types::SchemaColumn.new
        type.name = params[:name]
        type.data_type = params[:data_type]
        type
      end
    end

    module SchemaId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaId, context: context)
        type = Types::SchemaId.new
        type.schema_arn = params[:schema_arn]
        type.schema_name = params[:schema_name]
        type.registry_name = params[:registry_name]
        type
      end
    end

    module SchemaListDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SchemaListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SchemaListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaListItem, context: context)
        type = Types::SchemaListItem.new
        type.registry_name = params[:registry_name]
        type.schema_name = params[:schema_name]
        type.schema_arn = params[:schema_arn]
        type.description = params[:description]
        type.schema_status = params[:schema_status]
        type.created_time = params[:created_time]
        type.updated_time = params[:updated_time]
        type
      end
    end

    module SchemaReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaReference, context: context)
        type = Types::SchemaReference.new
        type.schema_id = SchemaId.build(params[:schema_id], context: "#{context}[:schema_id]") unless params[:schema_id].nil?
        type.schema_version_id = params[:schema_version_id]
        type.schema_version_number = params[:schema_version_number]
        type
      end
    end

    module SchemaVersionErrorItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaVersionErrorItem, context: context)
        type = Types::SchemaVersionErrorItem.new
        type.version_number = params[:version_number]
        type.error_details = ErrorDetails.build(params[:error_details], context: "#{context}[:error_details]") unless params[:error_details].nil?
        type
      end
    end

    module SchemaVersionErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SchemaVersionErrorItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SchemaVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SchemaVersionListItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SchemaVersionListItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaVersionListItem, context: context)
        type = Types::SchemaVersionListItem.new
        type.schema_arn = params[:schema_arn]
        type.schema_version_id = params[:schema_version_id]
        type.version_number = params[:version_number]
        type.status = params[:status]
        type.created_time = params[:created_time]
        type
      end
    end

    module SchemaVersionNumber
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SchemaVersionNumber, context: context)
        type = Types::SchemaVersionNumber.new
        type.latest_version = params[:latest_version]
        type.version_number = params[:version_number]
        type
      end
    end

    module SearchPropertyPredicates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PropertyPredicate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SearchTablesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchTablesInput, context: context)
        type = Types::SearchTablesInput.new
        type.catalog_id = params[:catalog_id]
        type.next_token = params[:next_token]
        type.filters = SearchPropertyPredicates.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.search_text = params[:search_text]
        type.sort_criteria = SortCriteria.build(params[:sort_criteria], context: "#{context}[:sort_criteria]") unless params[:sort_criteria].nil?
        type.max_results = params[:max_results]
        type.resource_share_type = params[:resource_share_type]
        type
      end
    end

    module SearchTablesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchTablesOutput, context: context)
        type = Types::SearchTablesOutput.new
        type.next_token = params[:next_token]
        type.table_list = TableList.build(params[:table_list], context: "#{context}[:table_list]") unless params[:table_list].nil?
        type
      end
    end

    module SecurityConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityConfiguration, context: context)
        type = Types::SecurityConfiguration.new
        type.name = params[:name]
        type.created_time_stamp = params[:created_time_stamp]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type
      end
    end

    module SecurityConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecurityConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecurityGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Segment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Segment, context: context)
        type = Types::Segment.new
        type.segment_number = params[:segment_number]
        type.total_segments = params[:total_segments]
        type
      end
    end

    module SelectFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelectFields, context: context)
        type = Types::SelectFields.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.paths = GlueStudioPathList.build(params[:paths], context: "#{context}[:paths]") unless params[:paths].nil?
        type
      end
    end

    module SelectFromCollection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelectFromCollection, context: context)
        type = Types::SelectFromCollection.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.index = params[:index]
        type
      end
    end

    module SerDeInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SerDeInfo, context: context)
        type = Types::SerDeInfo.new
        type.name = params[:name]
        type.serialization_library = params[:serialization_library]
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module Session
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Session, context: context)
        type = Types::Session.new
        type.id = params[:id]
        type.created_on = params[:created_on]
        type.status = params[:status]
        type.error_message = params[:error_message]
        type.description = params[:description]
        type.role = params[:role]
        type.command = SessionCommand.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type.default_arguments = OrchestrationArgumentsMap.build(params[:default_arguments], context: "#{context}[:default_arguments]") unless params[:default_arguments].nil?
        type.connections = ConnectionsList.build(params[:connections], context: "#{context}[:connections]") unless params[:connections].nil?
        type.progress = params[:progress]
        type.max_capacity = params[:max_capacity]
        type.security_configuration = params[:security_configuration]
        type.glue_version = params[:glue_version]
        type
      end
    end

    module SessionCommand
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionCommand, context: context)
        type = Types::SessionCommand.new
        type.name = params[:name]
        type.python_version = params[:python_version]
        type
      end
    end

    module SessionIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SessionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Session.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SkewedInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SkewedInfo, context: context)
        type = Types::SkewedInfo.new
        type.skewed_column_names = NameStringList.build(params[:skewed_column_names], context: "#{context}[:skewed_column_names]") unless params[:skewed_column_names].nil?
        type.skewed_column_values = ColumnValueStringList.build(params[:skewed_column_values], context: "#{context}[:skewed_column_values]") unless params[:skewed_column_values].nil?
        type.skewed_column_value_location_maps = LocationMap.build(params[:skewed_column_value_location_maps], context: "#{context}[:skewed_column_value_location_maps]") unless params[:skewed_column_value_location_maps].nil?
        type
      end
    end

    module SortCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SortCriterion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SortCriterion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SortCriterion, context: context)
        type = Types::SortCriterion.new
        type.field_name = params[:field_name]
        type.sort = params[:sort]
        type
      end
    end

    module SparkConnectorSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SparkConnectorSource, context: context)
        type = Types::SparkConnectorSource.new
        type.name = params[:name]
        type.connection_name = params[:connection_name]
        type.connector_name = params[:connector_name]
        type.connection_type = params[:connection_type]
        type.additional_options = AdditionalOptions.build(params[:additional_options], context: "#{context}[:additional_options]") unless params[:additional_options].nil?
        type.output_schemas = GlueSchemas.build(params[:output_schemas], context: "#{context}[:output_schemas]") unless params[:output_schemas].nil?
        type
      end
    end

    module SparkConnectorTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SparkConnectorTarget, context: context)
        type = Types::SparkConnectorTarget.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.connection_name = params[:connection_name]
        type.connector_name = params[:connector_name]
        type.connection_type = params[:connection_type]
        type.additional_options = AdditionalOptions.build(params[:additional_options], context: "#{context}[:additional_options]") unless params[:additional_options].nil?
        type.output_schemas = GlueSchemas.build(params[:output_schemas], context: "#{context}[:output_schemas]") unless params[:output_schemas].nil?
        type
      end
    end

    module SparkSQL
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SparkSQL, context: context)
        type = Types::SparkSQL.new
        type.name = params[:name]
        type.inputs = ManyInputs.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.sql_query = params[:sql_query]
        type.sql_aliases = SqlAliases.build(params[:sql_aliases], context: "#{context}[:sql_aliases]") unless params[:sql_aliases].nil?
        type.output_schemas = GlueSchemas.build(params[:output_schemas], context: "#{context}[:output_schemas]") unless params[:output_schemas].nil?
        type
      end
    end

    module Spigot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Spigot, context: context)
        type = Types::Spigot.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.path = params[:path]
        type.topk = params[:topk]
        type.prob = params[:prob]
        type
      end
    end

    module SplitFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SplitFields, context: context)
        type = Types::SplitFields.new
        type.name = params[:name]
        type.inputs = OneInput.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.paths = GlueStudioPathList.build(params[:paths], context: "#{context}[:paths]") unless params[:paths].nil?
        type
      end
    end

    module SqlAlias
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlAlias, context: context)
        type = Types::SqlAlias.new
        type.from = params[:from]
        type.alias = params[:alias]
        type
      end
    end

    module SqlAliases
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SqlAlias.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartBlueprintRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBlueprintRunInput, context: context)
        type = Types::StartBlueprintRunInput.new
        type.blueprint_name = params[:blueprint_name]
        type.parameters = params[:parameters]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module StartBlueprintRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBlueprintRunOutput, context: context)
        type = Types::StartBlueprintRunOutput.new
        type.run_id = params[:run_id]
        type
      end
    end

    module StartCrawlerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartCrawlerInput, context: context)
        type = Types::StartCrawlerInput.new
        type.name = params[:name]
        type
      end
    end

    module StartCrawlerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartCrawlerOutput, context: context)
        type = Types::StartCrawlerOutput.new
        type
      end
    end

    module StartCrawlerScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartCrawlerScheduleInput, context: context)
        type = Types::StartCrawlerScheduleInput.new
        type.crawler_name = params[:crawler_name]
        type
      end
    end

    module StartCrawlerScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartCrawlerScheduleOutput, context: context)
        type = Types::StartCrawlerScheduleOutput.new
        type
      end
    end

    module StartExportLabelsTaskRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartExportLabelsTaskRunInput, context: context)
        type = Types::StartExportLabelsTaskRunInput.new
        type.transform_id = params[:transform_id]
        type.output_s3_path = params[:output_s3_path]
        type
      end
    end

    module StartExportLabelsTaskRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartExportLabelsTaskRunOutput, context: context)
        type = Types::StartExportLabelsTaskRunOutput.new
        type.task_run_id = params[:task_run_id]
        type
      end
    end

    module StartImportLabelsTaskRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImportLabelsTaskRunInput, context: context)
        type = Types::StartImportLabelsTaskRunInput.new
        type.transform_id = params[:transform_id]
        type.input_s3_path = params[:input_s3_path]
        type.replace_all_labels = params[:replace_all_labels]
        type
      end
    end

    module StartImportLabelsTaskRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartImportLabelsTaskRunOutput, context: context)
        type = Types::StartImportLabelsTaskRunOutput.new
        type.task_run_id = params[:task_run_id]
        type
      end
    end

    module StartJobRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartJobRunInput, context: context)
        type = Types::StartJobRunInput.new
        type.job_name = params[:job_name]
        type.job_run_id = params[:job_run_id]
        type.arguments = GenericMap.build(params[:arguments], context: "#{context}[:arguments]") unless params[:arguments].nil?
        type.allocated_capacity = params[:allocated_capacity]
        type.timeout = params[:timeout]
        type.max_capacity = params[:max_capacity]
        type.security_configuration = params[:security_configuration]
        type.notification_property = NotificationProperty.build(params[:notification_property], context: "#{context}[:notification_property]") unless params[:notification_property].nil?
        type.worker_type = params[:worker_type]
        type.number_of_workers = params[:number_of_workers]
        type
      end
    end

    module StartJobRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartJobRunOutput, context: context)
        type = Types::StartJobRunOutput.new
        type.job_run_id = params[:job_run_id]
        type
      end
    end

    module StartMLEvaluationTaskRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMLEvaluationTaskRunInput, context: context)
        type = Types::StartMLEvaluationTaskRunInput.new
        type.transform_id = params[:transform_id]
        type
      end
    end

    module StartMLEvaluationTaskRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMLEvaluationTaskRunOutput, context: context)
        type = Types::StartMLEvaluationTaskRunOutput.new
        type.task_run_id = params[:task_run_id]
        type
      end
    end

    module StartMLLabelingSetGenerationTaskRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMLLabelingSetGenerationTaskRunInput, context: context)
        type = Types::StartMLLabelingSetGenerationTaskRunInput.new
        type.transform_id = params[:transform_id]
        type.output_s3_path = params[:output_s3_path]
        type
      end
    end

    module StartMLLabelingSetGenerationTaskRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMLLabelingSetGenerationTaskRunOutput, context: context)
        type = Types::StartMLLabelingSetGenerationTaskRunOutput.new
        type.task_run_id = params[:task_run_id]
        type
      end
    end

    module StartTriggerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTriggerInput, context: context)
        type = Types::StartTriggerInput.new
        type.name = params[:name]
        type
      end
    end

    module StartTriggerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTriggerOutput, context: context)
        type = Types::StartTriggerOutput.new
        type.name = params[:name]
        type
      end
    end

    module StartWorkflowRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartWorkflowRunInput, context: context)
        type = Types::StartWorkflowRunInput.new
        type.name = params[:name]
        type.run_properties = WorkflowRunProperties.build(params[:run_properties], context: "#{context}[:run_properties]") unless params[:run_properties].nil?
        type
      end
    end

    module StartWorkflowRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartWorkflowRunOutput, context: context)
        type = Types::StartWorkflowRunOutput.new
        type.run_id = params[:run_id]
        type
      end
    end

    module StartingEventBatchCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartingEventBatchCondition, context: context)
        type = Types::StartingEventBatchCondition.new
        type.batch_size = params[:batch_size]
        type.batch_window = params[:batch_window]
        type
      end
    end

    module Statement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Statement, context: context)
        type = Types::Statement.new
        type.id = params[:id]
        type.code = params[:code]
        type.state = params[:state]
        type.output = StatementOutput.build(params[:output], context: "#{context}[:output]") unless params[:output].nil?
        type.progress = params[:progress]
        type.started_on = params[:started_on]
        type.completed_on = params[:completed_on]
        type
      end
    end

    module StatementList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Statement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StatementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatementOutput, context: context)
        type = Types::StatementOutput.new
        type.data = StatementOutputData.build(params[:data], context: "#{context}[:data]") unless params[:data].nil?
        type.execution_count = params[:execution_count]
        type.status = params[:status]
        type.error_name = params[:error_name]
        type.error_value = params[:error_value]
        type.traceback = OrchestrationStringList.build(params[:traceback], context: "#{context}[:traceback]") unless params[:traceback].nil?
        type
      end
    end

    module StatementOutputData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatementOutputData, context: context)
        type = Types::StatementOutputData.new
        type.text_plain = params[:text_plain]
        type
      end
    end

    module StopCrawlerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopCrawlerInput, context: context)
        type = Types::StopCrawlerInput.new
        type.name = params[:name]
        type
      end
    end

    module StopCrawlerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopCrawlerOutput, context: context)
        type = Types::StopCrawlerOutput.new
        type
      end
    end

    module StopCrawlerScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopCrawlerScheduleInput, context: context)
        type = Types::StopCrawlerScheduleInput.new
        type.crawler_name = params[:crawler_name]
        type
      end
    end

    module StopCrawlerScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopCrawlerScheduleOutput, context: context)
        type = Types::StopCrawlerScheduleOutput.new
        type
      end
    end

    module StopSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopSessionInput, context: context)
        type = Types::StopSessionInput.new
        type.id = params[:id]
        type.request_origin = params[:request_origin]
        type
      end
    end

    module StopSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopSessionOutput, context: context)
        type = Types::StopSessionOutput.new
        type.id = params[:id]
        type
      end
    end

    module StopTriggerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTriggerInput, context: context)
        type = Types::StopTriggerInput.new
        type.name = params[:name]
        type
      end
    end

    module StopTriggerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTriggerOutput, context: context)
        type = Types::StopTriggerOutput.new
        type.name = params[:name]
        type
      end
    end

    module StopWorkflowRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopWorkflowRunInput, context: context)
        type = Types::StopWorkflowRunInput.new
        type.name = params[:name]
        type.run_id = params[:run_id]
        type
      end
    end

    module StopWorkflowRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopWorkflowRunOutput, context: context)
        type = Types::StopWorkflowRunOutput.new
        type
      end
    end

    module StorageDescriptor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StorageDescriptor, context: context)
        type = Types::StorageDescriptor.new
        type.columns = ColumnList.build(params[:columns], context: "#{context}[:columns]") unless params[:columns].nil?
        type.location = params[:location]
        type.additional_locations = LocationStringList.build(params[:additional_locations], context: "#{context}[:additional_locations]") unless params[:additional_locations].nil?
        type.input_format = params[:input_format]
        type.output_format = params[:output_format]
        type.compressed = params[:compressed]
        type.number_of_buckets = params[:number_of_buckets]
        type.serde_info = SerDeInfo.build(params[:serde_info], context: "#{context}[:serde_info]") unless params[:serde_info].nil?
        type.bucket_columns = NameStringList.build(params[:bucket_columns], context: "#{context}[:bucket_columns]") unless params[:bucket_columns].nil?
        type.sort_columns = OrderList.build(params[:sort_columns], context: "#{context}[:sort_columns]") unless params[:sort_columns].nil?
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.skewed_info = SkewedInfo.build(params[:skewed_info], context: "#{context}[:skewed_info]") unless params[:skewed_info].nil?
        type.stored_as_sub_directories = params[:stored_as_sub_directories]
        type.schema_reference = SchemaReference.build(params[:schema_reference], context: "#{context}[:schema_reference]") unless params[:schema_reference].nil?
        type
      end
    end

    module StreamingDataPreviewOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StreamingDataPreviewOptions, context: context)
        type = Types::StreamingDataPreviewOptions.new
        type.polling_time = params[:polling_time]
        type.record_polling_limit = params[:record_polling_limit]
        type
      end
    end

    module StringColumnStatisticsData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StringColumnStatisticsData, context: context)
        type = Types::StringColumnStatisticsData.new
        type.maximum_length = params[:maximum_length]
        type.average_length = params[:average_length]
        type.number_of_nulls = params[:number_of_nulls]
        type.number_of_distinct_values = params[:number_of_distinct_values]
        type
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Table
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Table, context: context)
        type = Types::Table.new
        type.name = params[:name]
        type.database_name = params[:database_name]
        type.description = params[:description]
        type.owner = params[:owner]
        type.create_time = params[:create_time]
        type.update_time = params[:update_time]
        type.last_access_time = params[:last_access_time]
        type.last_analyzed_time = params[:last_analyzed_time]
        type.retention = params[:retention]
        type.storage_descriptor = StorageDescriptor.build(params[:storage_descriptor], context: "#{context}[:storage_descriptor]") unless params[:storage_descriptor].nil?
        type.partition_keys = ColumnList.build(params[:partition_keys], context: "#{context}[:partition_keys]") unless params[:partition_keys].nil?
        type.view_original_text = params[:view_original_text]
        type.view_expanded_text = params[:view_expanded_text]
        type.table_type = params[:table_type]
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.created_by = params[:created_by]
        type.is_registered_with_lake_formation = params[:is_registered_with_lake_formation]
        type.target_table = TableIdentifier.build(params[:target_table], context: "#{context}[:target_table]") unless params[:target_table].nil?
        type.catalog_id = params[:catalog_id]
        type.version_id = params[:version_id]
        type
      end
    end

    module TableError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableError, context: context)
        type = Types::TableError.new
        type.table_name = params[:table_name]
        type.error_detail = ErrorDetail.build(params[:error_detail], context: "#{context}[:error_detail]") unless params[:error_detail].nil?
        type
      end
    end

    module TableErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TableError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TableIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableIdentifier, context: context)
        type = Types::TableIdentifier.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.name = params[:name]
        type
      end
    end

    module TableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableInput, context: context)
        type = Types::TableInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.owner = params[:owner]
        type.last_access_time = params[:last_access_time]
        type.last_analyzed_time = params[:last_analyzed_time]
        type.retention = params[:retention]
        type.storage_descriptor = StorageDescriptor.build(params[:storage_descriptor], context: "#{context}[:storage_descriptor]") unless params[:storage_descriptor].nil?
        type.partition_keys = ColumnList.build(params[:partition_keys], context: "#{context}[:partition_keys]") unless params[:partition_keys].nil?
        type.view_original_text = params[:view_original_text]
        type.view_expanded_text = params[:view_expanded_text]
        type.table_type = params[:table_type]
        type.parameters = ParametersMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.target_table = TableIdentifier.build(params[:target_table], context: "#{context}[:target_table]") unless params[:target_table].nil?
        type
      end
    end

    module TableList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Table.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TableVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableVersion, context: context)
        type = Types::TableVersion.new
        type.table = Table.build(params[:table], context: "#{context}[:table]") unless params[:table].nil?
        type.version_id = params[:version_id]
        type
      end
    end

    module TableVersionError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TableVersionError, context: context)
        type = Types::TableVersionError.new
        type.table_name = params[:table_name]
        type.version_id = params[:version_id]
        type.error_detail = ErrorDetail.build(params[:error_detail], context: "#{context}[:error_detail]") unless params[:error_detail].nil?
        type
      end
    end

    module TableVersionErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TableVersionError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagKeysList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags_to_add = TagsMap.build(params[:tags_to_add], context: "#{context}[:tags_to_add]") unless params[:tags_to_add].nil?
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

    module TagsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TaskRun
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskRun, context: context)
        type = Types::TaskRun.new
        type.transform_id = params[:transform_id]
        type.task_run_id = params[:task_run_id]
        type.status = params[:status]
        type.log_group_name = params[:log_group_name]
        type.properties = TaskRunProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.error_string = params[:error_string]
        type.started_on = params[:started_on]
        type.last_modified_on = params[:last_modified_on]
        type.completed_on = params[:completed_on]
        type.execution_time = params[:execution_time]
        type
      end
    end

    module TaskRunFilterCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskRunFilterCriteria, context: context)
        type = Types::TaskRunFilterCriteria.new
        type.task_run_type = params[:task_run_type]
        type.status = params[:status]
        type.started_before = params[:started_before]
        type.started_after = params[:started_after]
        type
      end
    end

    module TaskRunList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TaskRun.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TaskRunProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskRunProperties, context: context)
        type = Types::TaskRunProperties.new
        type.task_type = params[:task_type]
        type.import_labels_task_run_properties = ImportLabelsTaskRunProperties.build(params[:import_labels_task_run_properties], context: "#{context}[:import_labels_task_run_properties]") unless params[:import_labels_task_run_properties].nil?
        type.export_labels_task_run_properties = ExportLabelsTaskRunProperties.build(params[:export_labels_task_run_properties], context: "#{context}[:export_labels_task_run_properties]") unless params[:export_labels_task_run_properties].nil?
        type.labeling_set_generation_task_run_properties = LabelingSetGenerationTaskRunProperties.build(params[:labeling_set_generation_task_run_properties], context: "#{context}[:labeling_set_generation_task_run_properties]") unless params[:labeling_set_generation_task_run_properties].nil?
        type.find_matches_task_run_properties = FindMatchesTaskRunProperties.build(params[:find_matches_task_run_properties], context: "#{context}[:find_matches_task_run_properties]") unless params[:find_matches_task_run_properties].nil?
        type
      end
    end

    module TaskRunSortCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskRunSortCriteria, context: context)
        type = Types::TaskRunSortCriteria.new
        type.column = params[:column]
        type.sort_direction = params[:sort_direction]
        type
      end
    end

    module TransformEncryption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransformEncryption, context: context)
        type = Types::TransformEncryption.new
        type.ml_user_data_encryption = MLUserDataEncryption.build(params[:ml_user_data_encryption], context: "#{context}[:ml_user_data_encryption]") unless params[:ml_user_data_encryption].nil?
        type.task_run_security_configuration_name = params[:task_run_security_configuration_name]
        type
      end
    end

    module TransformFilterCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransformFilterCriteria, context: context)
        type = Types::TransformFilterCriteria.new
        type.name = params[:name]
        type.transform_type = params[:transform_type]
        type.status = params[:status]
        type.glue_version = params[:glue_version]
        type.created_before = params[:created_before]
        type.created_after = params[:created_after]
        type.last_modified_before = params[:last_modified_before]
        type.last_modified_after = params[:last_modified_after]
        type.schema = TransformSchema.build(params[:schema], context: "#{context}[:schema]") unless params[:schema].nil?
        type
      end
    end

    module TransformIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TransformList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MLTransform.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TransformParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransformParameters, context: context)
        type = Types::TransformParameters.new
        type.transform_type = params[:transform_type]
        type.find_matches_parameters = FindMatchesParameters.build(params[:find_matches_parameters], context: "#{context}[:find_matches_parameters]") unless params[:find_matches_parameters].nil?
        type
      end
    end

    module TransformSchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SchemaColumn.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TransformSortCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransformSortCriteria, context: context)
        type = Types::TransformSortCriteria.new
        type.column = params[:column]
        type.sort_direction = params[:sort_direction]
        type
      end
    end

    module Trigger
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Trigger, context: context)
        type = Types::Trigger.new
        type.name = params[:name]
        type.workflow_name = params[:workflow_name]
        type.id = params[:id]
        type.type = params[:type]
        type.state = params[:state]
        type.description = params[:description]
        type.schedule = params[:schedule]
        type.actions = ActionList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.predicate = Predicate.build(params[:predicate], context: "#{context}[:predicate]") unless params[:predicate].nil?
        type.event_batching_condition = EventBatchingCondition.build(params[:event_batching_condition], context: "#{context}[:event_batching_condition]") unless params[:event_batching_condition].nil?
        type
      end
    end

    module TriggerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Trigger.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TriggerNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TriggerNodeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TriggerNodeDetails, context: context)
        type = Types::TriggerNodeDetails.new
        type.trigger = Trigger.build(params[:trigger], context: "#{context}[:trigger]") unless params[:trigger].nil?
        type
      end
    end

    module TriggerUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TriggerUpdate, context: context)
        type = Types::TriggerUpdate.new
        type.name = params[:name]
        type.description = params[:description]
        type.schedule = params[:schedule]
        type.actions = ActionList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.predicate = Predicate.build(params[:predicate], context: "#{context}[:predicate]") unless params[:predicate].nil?
        type.event_batching_condition = EventBatchingCondition.build(params[:event_batching_condition], context: "#{context}[:event_batching_condition]") unless params[:event_batching_condition].nil?
        type
      end
    end

    module TwoInputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UnfilteredPartition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnfilteredPartition, context: context)
        type = Types::UnfilteredPartition.new
        type.partition = Partition.build(params[:partition], context: "#{context}[:partition]") unless params[:partition].nil?
        type.authorized_columns = NameStringList.build(params[:authorized_columns], context: "#{context}[:authorized_columns]") unless params[:authorized_columns].nil?
        type.is_registered_with_lake_formation = params[:is_registered_with_lake_formation]
        type
      end
    end

    module UnfilteredPartitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UnfilteredPartition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Union
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Union, context: context)
        type = Types::Union.new
        type.name = params[:name]
        type.inputs = TwoInputs.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.union_type = params[:union_type]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags_to_remove = TagKeysList.build(params[:tags_to_remove], context: "#{context}[:tags_to_remove]") unless params[:tags_to_remove].nil?
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

    module UpdateBlueprintInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBlueprintInput, context: context)
        type = Types::UpdateBlueprintInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.blueprint_location = params[:blueprint_location]
        type
      end
    end

    module UpdateBlueprintOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBlueprintOutput, context: context)
        type = Types::UpdateBlueprintOutput.new
        type.name = params[:name]
        type
      end
    end

    module UpdateClassifierInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClassifierInput, context: context)
        type = Types::UpdateClassifierInput.new
        type.grok_classifier = UpdateGrokClassifierRequest.build(params[:grok_classifier], context: "#{context}[:grok_classifier]") unless params[:grok_classifier].nil?
        type.xml_classifier = UpdateXMLClassifierRequest.build(params[:xml_classifier], context: "#{context}[:xml_classifier]") unless params[:xml_classifier].nil?
        type.json_classifier = UpdateJsonClassifierRequest.build(params[:json_classifier], context: "#{context}[:json_classifier]") unless params[:json_classifier].nil?
        type.csv_classifier = UpdateCsvClassifierRequest.build(params[:csv_classifier], context: "#{context}[:csv_classifier]") unless params[:csv_classifier].nil?
        type
      end
    end

    module UpdateClassifierOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClassifierOutput, context: context)
        type = Types::UpdateClassifierOutput.new
        type
      end
    end

    module UpdateColumnStatisticsForPartitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateColumnStatisticsForPartitionInput, context: context)
        type = Types::UpdateColumnStatisticsForPartitionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.partition_values = ValueStringList.build(params[:partition_values], context: "#{context}[:partition_values]") unless params[:partition_values].nil?
        type.column_statistics_list = UpdateColumnStatisticsList.build(params[:column_statistics_list], context: "#{context}[:column_statistics_list]") unless params[:column_statistics_list].nil?
        type
      end
    end

    module UpdateColumnStatisticsForPartitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateColumnStatisticsForPartitionOutput, context: context)
        type = Types::UpdateColumnStatisticsForPartitionOutput.new
        type.errors = ColumnStatisticsErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module UpdateColumnStatisticsForTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateColumnStatisticsForTableInput, context: context)
        type = Types::UpdateColumnStatisticsForTableInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.column_statistics_list = UpdateColumnStatisticsList.build(params[:column_statistics_list], context: "#{context}[:column_statistics_list]") unless params[:column_statistics_list].nil?
        type
      end
    end

    module UpdateColumnStatisticsForTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateColumnStatisticsForTableOutput, context: context)
        type = Types::UpdateColumnStatisticsForTableOutput.new
        type.errors = ColumnStatisticsErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module UpdateColumnStatisticsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ColumnStatistics.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectionInput, context: context)
        type = Types::UpdateConnectionInput.new
        type.catalog_id = params[:catalog_id]
        type.name = params[:name]
        type.connection_input = ConnectionInput.build(params[:connection_input], context: "#{context}[:connection_input]") unless params[:connection_input].nil?
        type
      end
    end

    module UpdateConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectionOutput, context: context)
        type = Types::UpdateConnectionOutput.new
        type
      end
    end

    module UpdateCrawlerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCrawlerInput, context: context)
        type = Types::UpdateCrawlerInput.new
        type.name = params[:name]
        type.role = params[:role]
        type.database_name = params[:database_name]
        type.description = params[:description]
        type.targets = CrawlerTargets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.schedule = params[:schedule]
        type.classifiers = ClassifierNameList.build(params[:classifiers], context: "#{context}[:classifiers]") unless params[:classifiers].nil?
        type.table_prefix = params[:table_prefix]
        type.schema_change_policy = SchemaChangePolicy.build(params[:schema_change_policy], context: "#{context}[:schema_change_policy]") unless params[:schema_change_policy].nil?
        type.recrawl_policy = RecrawlPolicy.build(params[:recrawl_policy], context: "#{context}[:recrawl_policy]") unless params[:recrawl_policy].nil?
        type.lineage_configuration = LineageConfiguration.build(params[:lineage_configuration], context: "#{context}[:lineage_configuration]") unless params[:lineage_configuration].nil?
        type.lake_formation_configuration = LakeFormationConfiguration.build(params[:lake_formation_configuration], context: "#{context}[:lake_formation_configuration]") unless params[:lake_formation_configuration].nil?
        type.configuration = params[:configuration]
        type.crawler_security_configuration = params[:crawler_security_configuration]
        type
      end
    end

    module UpdateCrawlerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCrawlerOutput, context: context)
        type = Types::UpdateCrawlerOutput.new
        type
      end
    end

    module UpdateCrawlerScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCrawlerScheduleInput, context: context)
        type = Types::UpdateCrawlerScheduleInput.new
        type.crawler_name = params[:crawler_name]
        type.schedule = params[:schedule]
        type
      end
    end

    module UpdateCrawlerScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCrawlerScheduleOutput, context: context)
        type = Types::UpdateCrawlerScheduleOutput.new
        type
      end
    end

    module UpdateCsvClassifierRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCsvClassifierRequest, context: context)
        type = Types::UpdateCsvClassifierRequest.new
        type.name = params[:name]
        type.delimiter = params[:delimiter]
        type.quote_symbol = params[:quote_symbol]
        type.contains_header = params[:contains_header]
        type.header = CsvHeader.build(params[:header], context: "#{context}[:header]") unless params[:header].nil?
        type.disable_value_trimming = params[:disable_value_trimming]
        type.allow_single_column = params[:allow_single_column]
        type
      end
    end

    module UpdateDatabaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatabaseInput, context: context)
        type = Types::UpdateDatabaseInput.new
        type.catalog_id = params[:catalog_id]
        type.name = params[:name]
        type.database_input = DatabaseInput.build(params[:database_input], context: "#{context}[:database_input]") unless params[:database_input].nil?
        type
      end
    end

    module UpdateDatabaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDatabaseOutput, context: context)
        type = Types::UpdateDatabaseOutput.new
        type
      end
    end

    module UpdateDevEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDevEndpointInput, context: context)
        type = Types::UpdateDevEndpointInput.new
        type.endpoint_name = params[:endpoint_name]
        type.public_key = params[:public_key]
        type.add_public_keys = PublicKeysList.build(params[:add_public_keys], context: "#{context}[:add_public_keys]") unless params[:add_public_keys].nil?
        type.delete_public_keys = PublicKeysList.build(params[:delete_public_keys], context: "#{context}[:delete_public_keys]") unless params[:delete_public_keys].nil?
        type.custom_libraries = DevEndpointCustomLibraries.build(params[:custom_libraries], context: "#{context}[:custom_libraries]") unless params[:custom_libraries].nil?
        type.update_etl_libraries = params[:update_etl_libraries]
        type.delete_arguments = StringList.build(params[:delete_arguments], context: "#{context}[:delete_arguments]") unless params[:delete_arguments].nil?
        type.add_arguments = MapValue.build(params[:add_arguments], context: "#{context}[:add_arguments]") unless params[:add_arguments].nil?
        type
      end
    end

    module UpdateDevEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDevEndpointOutput, context: context)
        type = Types::UpdateDevEndpointOutput.new
        type
      end
    end

    module UpdateGrokClassifierRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGrokClassifierRequest, context: context)
        type = Types::UpdateGrokClassifierRequest.new
        type.name = params[:name]
        type.classification = params[:classification]
        type.grok_pattern = params[:grok_pattern]
        type.custom_patterns = params[:custom_patterns]
        type
      end
    end

    module UpdateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobInput, context: context)
        type = Types::UpdateJobInput.new
        type.job_name = params[:job_name]
        type.job_update = JobUpdate.build(params[:job_update], context: "#{context}[:job_update]") unless params[:job_update].nil?
        type
      end
    end

    module UpdateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobOutput, context: context)
        type = Types::UpdateJobOutput.new
        type.job_name = params[:job_name]
        type
      end
    end

    module UpdateJsonClassifierRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJsonClassifierRequest, context: context)
        type = Types::UpdateJsonClassifierRequest.new
        type.name = params[:name]
        type.json_path = params[:json_path]
        type
      end
    end

    module UpdateMLTransformInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMLTransformInput, context: context)
        type = Types::UpdateMLTransformInput.new
        type.transform_id = params[:transform_id]
        type.name = params[:name]
        type.description = params[:description]
        type.parameters = TransformParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.role = params[:role]
        type.glue_version = params[:glue_version]
        type.max_capacity = params[:max_capacity]
        type.worker_type = params[:worker_type]
        type.number_of_workers = params[:number_of_workers]
        type.timeout = params[:timeout]
        type.max_retries = params[:max_retries]
        type
      end
    end

    module UpdateMLTransformOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMLTransformOutput, context: context)
        type = Types::UpdateMLTransformOutput.new
        type.transform_id = params[:transform_id]
        type
      end
    end

    module UpdatePartitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePartitionInput, context: context)
        type = Types::UpdatePartitionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.partition_value_list = BoundedPartitionValueList.build(params[:partition_value_list], context: "#{context}[:partition_value_list]") unless params[:partition_value_list].nil?
        type.partition_input = PartitionInput.build(params[:partition_input], context: "#{context}[:partition_input]") unless params[:partition_input].nil?
        type
      end
    end

    module UpdatePartitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePartitionOutput, context: context)
        type = Types::UpdatePartitionOutput.new
        type
      end
    end

    module UpdateRegistryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRegistryInput, context: context)
        type = Types::UpdateRegistryInput.new
        type.registry_id = RegistryId.build(params[:registry_id], context: "#{context}[:registry_id]") unless params[:registry_id].nil?
        type.description = params[:description]
        type
      end
    end

    module UpdateRegistryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRegistryOutput, context: context)
        type = Types::UpdateRegistryOutput.new
        type.registry_name = params[:registry_name]
        type.registry_arn = params[:registry_arn]
        type
      end
    end

    module UpdateSchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSchemaInput, context: context)
        type = Types::UpdateSchemaInput.new
        type.schema_id = SchemaId.build(params[:schema_id], context: "#{context}[:schema_id]") unless params[:schema_id].nil?
        type.schema_version_number = SchemaVersionNumber.build(params[:schema_version_number], context: "#{context}[:schema_version_number]") unless params[:schema_version_number].nil?
        type.compatibility = params[:compatibility]
        type.description = params[:description]
        type
      end
    end

    module UpdateSchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSchemaOutput, context: context)
        type = Types::UpdateSchemaOutput.new
        type.schema_arn = params[:schema_arn]
        type.schema_name = params[:schema_name]
        type.registry_name = params[:registry_name]
        type
      end
    end

    module UpdateTableInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTableInput, context: context)
        type = Types::UpdateTableInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.table_input = TableInput.build(params[:table_input], context: "#{context}[:table_input]") unless params[:table_input].nil?
        type.skip_archive = params[:skip_archive]
        type.transaction_id = params[:transaction_id]
        type.version_id = params[:version_id]
        type
      end
    end

    module UpdateTableOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTableOutput, context: context)
        type = Types::UpdateTableOutput.new
        type
      end
    end

    module UpdateTriggerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTriggerInput, context: context)
        type = Types::UpdateTriggerInput.new
        type.name = params[:name]
        type.trigger_update = TriggerUpdate.build(params[:trigger_update], context: "#{context}[:trigger_update]") unless params[:trigger_update].nil?
        type
      end
    end

    module UpdateTriggerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTriggerOutput, context: context)
        type = Types::UpdateTriggerOutput.new
        type.trigger = Trigger.build(params[:trigger], context: "#{context}[:trigger]") unless params[:trigger].nil?
        type
      end
    end

    module UpdateUserDefinedFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserDefinedFunctionInput, context: context)
        type = Types::UpdateUserDefinedFunctionInput.new
        type.catalog_id = params[:catalog_id]
        type.database_name = params[:database_name]
        type.function_name = params[:function_name]
        type.function_input = UserDefinedFunctionInput.build(params[:function_input], context: "#{context}[:function_input]") unless params[:function_input].nil?
        type
      end
    end

    module UpdateUserDefinedFunctionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserDefinedFunctionOutput, context: context)
        type = Types::UpdateUserDefinedFunctionOutput.new
        type
      end
    end

    module UpdateWorkflowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkflowInput, context: context)
        type = Types::UpdateWorkflowInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.default_run_properties = WorkflowRunProperties.build(params[:default_run_properties], context: "#{context}[:default_run_properties]") unless params[:default_run_properties].nil?
        type.max_concurrent_runs = params[:max_concurrent_runs]
        type
      end
    end

    module UpdateWorkflowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkflowOutput, context: context)
        type = Types::UpdateWorkflowOutput.new
        type.name = params[:name]
        type
      end
    end

    module UpdateXMLClassifierRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateXMLClassifierRequest, context: context)
        type = Types::UpdateXMLClassifierRequest.new
        type.name = params[:name]
        type.classification = params[:classification]
        type.row_tag = params[:row_tag]
        type
      end
    end

    module UpsertRedshiftTargetOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpsertRedshiftTargetOptions, context: context)
        type = Types::UpsertRedshiftTargetOptions.new
        type.table_location = params[:table_location]
        type.connection_name = params[:connection_name]
        type.upsert_keys = EnclosedInStringPropertiesMinOne.build(params[:upsert_keys], context: "#{context}[:upsert_keys]") unless params[:upsert_keys].nil?
        type
      end
    end

    module UserDefinedFunction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserDefinedFunction, context: context)
        type = Types::UserDefinedFunction.new
        type.function_name = params[:function_name]
        type.database_name = params[:database_name]
        type.class_name = params[:class_name]
        type.owner_name = params[:owner_name]
        type.owner_type = params[:owner_type]
        type.create_time = params[:create_time]
        type.resource_uris = ResourceUriList.build(params[:resource_uris], context: "#{context}[:resource_uris]") unless params[:resource_uris].nil?
        type.catalog_id = params[:catalog_id]
        type
      end
    end

    module UserDefinedFunctionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserDefinedFunctionInput, context: context)
        type = Types::UserDefinedFunctionInput.new
        type.function_name = params[:function_name]
        type.class_name = params[:class_name]
        type.owner_name = params[:owner_name]
        type.owner_type = params[:owner_type]
        type.resource_uris = ResourceUriList.build(params[:resource_uris], context: "#{context}[:resource_uris]") unless params[:resource_uris].nil?
        type
      end
    end

    module UserDefinedFunctionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserDefinedFunction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module ValueStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VersionMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VersionMismatchException, context: context)
        type = Types::VersionMismatchException.new
        type.message = params[:message]
        type
      end
    end

    module Workflow
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Workflow, context: context)
        type = Types::Workflow.new
        type.name = params[:name]
        type.description = params[:description]
        type.default_run_properties = WorkflowRunProperties.build(params[:default_run_properties], context: "#{context}[:default_run_properties]") unless params[:default_run_properties].nil?
        type.created_on = params[:created_on]
        type.last_modified_on = params[:last_modified_on]
        type.last_run = WorkflowRun.build(params[:last_run], context: "#{context}[:last_run]") unless params[:last_run].nil?
        type.graph = WorkflowGraph.build(params[:graph], context: "#{context}[:graph]") unless params[:graph].nil?
        type.max_concurrent_runs = params[:max_concurrent_runs]
        type.blueprint_details = BlueprintDetails.build(params[:blueprint_details], context: "#{context}[:blueprint_details]") unless params[:blueprint_details].nil?
        type
      end
    end

    module WorkflowGraph
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowGraph, context: context)
        type = Types::WorkflowGraph.new
        type.nodes = NodeList.build(params[:nodes], context: "#{context}[:nodes]") unless params[:nodes].nil?
        type.edges = EdgeList.build(params[:edges], context: "#{context}[:edges]") unless params[:edges].nil?
        type
      end
    end

    module WorkflowNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module WorkflowRun
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowRun, context: context)
        type = Types::WorkflowRun.new
        type.name = params[:name]
        type.workflow_run_id = params[:workflow_run_id]
        type.previous_run_id = params[:previous_run_id]
        type.workflow_run_properties = WorkflowRunProperties.build(params[:workflow_run_properties], context: "#{context}[:workflow_run_properties]") unless params[:workflow_run_properties].nil?
        type.started_on = params[:started_on]
        type.completed_on = params[:completed_on]
        type.status = params[:status]
        type.error_message = params[:error_message]
        type.statistics = WorkflowRunStatistics.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type.graph = WorkflowGraph.build(params[:graph], context: "#{context}[:graph]") unless params[:graph].nil?
        type.starting_event_batch_condition = StartingEventBatchCondition.build(params[:starting_event_batch_condition], context: "#{context}[:starting_event_batch_condition]") unless params[:starting_event_batch_condition].nil?
        type
      end
    end

    module WorkflowRunProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module WorkflowRunStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowRunStatistics, context: context)
        type = Types::WorkflowRunStatistics.new
        type.total_actions = params[:total_actions]
        type.timeout_actions = params[:timeout_actions]
        type.failed_actions = params[:failed_actions]
        type.stopped_actions = params[:stopped_actions]
        type.succeeded_actions = params[:succeeded_actions]
        type.running_actions = params[:running_actions]
        type
      end
    end

    module WorkflowRuns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkflowRun.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Workflows
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Workflow.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module XMLClassifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::XMLClassifier, context: context)
        type = Types::XMLClassifier.new
        type.name = params[:name]
        type.classification = params[:classification]
        type.creation_time = params[:creation_time]
        type.last_updated = params[:last_updated]
        type.version = params[:version]
        type.row_tag = params[:row_tag]
        type
      end
    end

  end
end
