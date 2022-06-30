# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::SSM
  module Params

    module AccountIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AccountSharingInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountSharingInfo, context: context)
        type = Types::AccountSharingInfo.new
        type.account_id = params[:account_id]
        type.shared_document_version = params[:shared_document_version]
        type
      end
    end

    module AccountSharingInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountSharingInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Accounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Activation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Activation, context: context)
        type = Types::Activation.new
        type.activation_id = params[:activation_id]
        type.description = params[:description]
        type.default_instance_name = params[:default_instance_name]
        type.iam_role = params[:iam_role]
        type.registration_limit = params[:registration_limit]
        type.registrations_count = params[:registrations_count]
        type.expiration_date = params[:expiration_date]
        type.expired = params[:expired]
        type.created_date = params[:created_date]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ActivationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Activation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AddTagsToResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToResourceInput, context: context)
        type = Types::AddTagsToResourceInput.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AddTagsToResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToResourceOutput, context: context)
        type = Types::AddTagsToResourceOutput.new
        type
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

    module AssociateOpsItemRelatedItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateOpsItemRelatedItemInput, context: context)
        type = Types::AssociateOpsItemRelatedItemInput.new
        type.ops_item_id = params[:ops_item_id]
        type.association_type = params[:association_type]
        type.resource_type = params[:resource_type]
        type.resource_uri = params[:resource_uri]
        type
      end
    end

    module AssociateOpsItemRelatedItemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateOpsItemRelatedItemOutput, context: context)
        type = Types::AssociateOpsItemRelatedItemOutput.new
        type.association_id = params[:association_id]
        type
      end
    end

    module AssociatedInstances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatedInstances, context: context)
        type = Types::AssociatedInstances.new
        type
      end
    end

    module Association
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Association, context: context)
        type = Types::Association.new
        type.name = params[:name]
        type.instance_id = params[:instance_id]
        type.association_id = params[:association_id]
        type.association_version = params[:association_version]
        type.document_version = params[:document_version]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.last_execution_date = params[:last_execution_date]
        type.overview = AssociationOverview.build(params[:overview], context: "#{context}[:overview]") unless params[:overview].nil?
        type.schedule_expression = params[:schedule_expression]
        type.association_name = params[:association_name]
        type.schedule_offset = params[:schedule_offset]
        type.target_maps = TargetMaps.build(params[:target_maps], context: "#{context}[:target_maps]") unless params[:target_maps].nil?
        type
      end
    end

    module AssociationAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociationAlreadyExists, context: context)
        type = Types::AssociationAlreadyExists.new
        type
      end
    end

    module AssociationDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociationDescription, context: context)
        type = Types::AssociationDescription.new
        type.name = params[:name]
        type.instance_id = params[:instance_id]
        type.association_version = params[:association_version]
        type.date = params[:date]
        type.last_update_association_date = params[:last_update_association_date]
        type.status = AssociationStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.overview = AssociationOverview.build(params[:overview], context: "#{context}[:overview]") unless params[:overview].nil?
        type.document_version = params[:document_version]
        type.automation_target_parameter_name = params[:automation_target_parameter_name]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.association_id = params[:association_id]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.schedule_expression = params[:schedule_expression]
        type.output_location = InstanceAssociationOutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type.last_execution_date = params[:last_execution_date]
        type.last_successful_execution_date = params[:last_successful_execution_date]
        type.association_name = params[:association_name]
        type.max_errors = params[:max_errors]
        type.max_concurrency = params[:max_concurrency]
        type.compliance_severity = params[:compliance_severity]
        type.sync_compliance = params[:sync_compliance]
        type.apply_only_at_cron_interval = params[:apply_only_at_cron_interval]
        type.calendar_names = CalendarNameOrARNList.build(params[:calendar_names], context: "#{context}[:calendar_names]") unless params[:calendar_names].nil?
        type.target_locations = TargetLocations.build(params[:target_locations], context: "#{context}[:target_locations]") unless params[:target_locations].nil?
        type.schedule_offset = params[:schedule_offset]
        type.target_maps = TargetMaps.build(params[:target_maps], context: "#{context}[:target_maps]") unless params[:target_maps].nil?
        type
      end
    end

    module AssociationDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociationDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociationDoesNotExist
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociationDoesNotExist, context: context)
        type = Types::AssociationDoesNotExist.new
        type.message = params[:message]
        type
      end
    end

    module AssociationExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociationExecution, context: context)
        type = Types::AssociationExecution.new
        type.association_id = params[:association_id]
        type.association_version = params[:association_version]
        type.execution_id = params[:execution_id]
        type.status = params[:status]
        type.detailed_status = params[:detailed_status]
        type.created_time = params[:created_time]
        type.last_execution_date = params[:last_execution_date]
        type.resource_count_by_status = params[:resource_count_by_status]
        type
      end
    end

    module AssociationExecutionDoesNotExist
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociationExecutionDoesNotExist, context: context)
        type = Types::AssociationExecutionDoesNotExist.new
        type.message = params[:message]
        type
      end
    end

    module AssociationExecutionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociationExecutionFilter, context: context)
        type = Types::AssociationExecutionFilter.new
        type.key = params[:key]
        type.value = params[:value]
        type.type = params[:type]
        type
      end
    end

    module AssociationExecutionFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociationExecutionFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociationExecutionTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociationExecutionTarget, context: context)
        type = Types::AssociationExecutionTarget.new
        type.association_id = params[:association_id]
        type.association_version = params[:association_version]
        type.execution_id = params[:execution_id]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.status = params[:status]
        type.detailed_status = params[:detailed_status]
        type.last_execution_date = params[:last_execution_date]
        type.output_source = OutputSource.build(params[:output_source], context: "#{context}[:output_source]") unless params[:output_source].nil?
        type
      end
    end

    module AssociationExecutionTargetsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociationExecutionTargetsFilter, context: context)
        type = Types::AssociationExecutionTargetsFilter.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module AssociationExecutionTargetsFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociationExecutionTargetsFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociationExecutionTargetsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociationExecutionTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociationExecutionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociationExecution.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociationFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociationFilter, context: context)
        type = Types::AssociationFilter.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module AssociationFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociationFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociationIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssociationLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociationLimitExceeded, context: context)
        type = Types::AssociationLimitExceeded.new
        type
      end
    end

    module AssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Association.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociationOverview
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociationOverview, context: context)
        type = Types::AssociationOverview.new
        type.status = params[:status]
        type.detailed_status = params[:detailed_status]
        type.association_status_aggregated_count = AssociationStatusAggregatedCount.build(params[:association_status_aggregated_count], context: "#{context}[:association_status_aggregated_count]") unless params[:association_status_aggregated_count].nil?
        type
      end
    end

    module AssociationStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociationStatus, context: context)
        type = Types::AssociationStatus.new
        type.date = params[:date]
        type.name = params[:name]
        type.message = params[:message]
        type.additional_info = params[:additional_info]
        type
      end
    end

    module AssociationStatusAggregatedCount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AssociationVersionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociationVersionInfo, context: context)
        type = Types::AssociationVersionInfo.new
        type.association_id = params[:association_id]
        type.association_version = params[:association_version]
        type.created_date = params[:created_date]
        type.name = params[:name]
        type.document_version = params[:document_version]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.schedule_expression = params[:schedule_expression]
        type.output_location = InstanceAssociationOutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type.association_name = params[:association_name]
        type.max_errors = params[:max_errors]
        type.max_concurrency = params[:max_concurrency]
        type.compliance_severity = params[:compliance_severity]
        type.sync_compliance = params[:sync_compliance]
        type.apply_only_at_cron_interval = params[:apply_only_at_cron_interval]
        type.calendar_names = CalendarNameOrARNList.build(params[:calendar_names], context: "#{context}[:calendar_names]") unless params[:calendar_names].nil?
        type.target_locations = TargetLocations.build(params[:target_locations], context: "#{context}[:target_locations]") unless params[:target_locations].nil?
        type.schedule_offset = params[:schedule_offset]
        type.target_maps = TargetMaps.build(params[:target_maps], context: "#{context}[:target_maps]") unless params[:target_maps].nil?
        type
      end
    end

    module AssociationVersionLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociationVersionLimitExceeded, context: context)
        type = Types::AssociationVersionLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module AssociationVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociationVersionInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttachmentContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachmentContent, context: context)
        type = Types::AttachmentContent.new
        type.name = params[:name]
        type.size = params[:size]
        type.member_hash = params[:member_hash]
        type.hash_type = params[:hash_type]
        type.url = params[:url]
        type
      end
    end

    module AttachmentContentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttachmentContent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttachmentInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachmentInformation, context: context)
        type = Types::AttachmentInformation.new
        type.name = params[:name]
        type
      end
    end

    module AttachmentInformationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttachmentInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttachmentsSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachmentsSource, context: context)
        type = Types::AttachmentsSource.new
        type.key = params[:key]
        type.values = AttachmentsSourceValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.name = params[:name]
        type
      end
    end

    module AttachmentsSourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttachmentsSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttachmentsSourceValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AutomationDefinitionNotApprovedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomationDefinitionNotApprovedException, context: context)
        type = Types::AutomationDefinitionNotApprovedException.new
        type.message = params[:message]
        type
      end
    end

    module AutomationDefinitionNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomationDefinitionNotFoundException, context: context)
        type = Types::AutomationDefinitionNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module AutomationDefinitionVersionNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomationDefinitionVersionNotFoundException, context: context)
        type = Types::AutomationDefinitionVersionNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module AutomationExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomationExecution, context: context)
        type = Types::AutomationExecution.new
        type.automation_execution_id = params[:automation_execution_id]
        type.document_name = params[:document_name]
        type.document_version = params[:document_version]
        type.execution_start_time = params[:execution_start_time]
        type.execution_end_time = params[:execution_end_time]
        type.automation_execution_status = params[:automation_execution_status]
        type.step_executions = StepExecutionList.build(params[:step_executions], context: "#{context}[:step_executions]") unless params[:step_executions].nil?
        type.step_executions_truncated = params[:step_executions_truncated]
        type.parameters = AutomationParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.outputs = AutomationParameterMap.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.failure_message = params[:failure_message]
        type.mode = params[:mode]
        type.parent_automation_execution_id = params[:parent_automation_execution_id]
        type.executed_by = params[:executed_by]
        type.current_step_name = params[:current_step_name]
        type.current_action = params[:current_action]
        type.target_parameter_name = params[:target_parameter_name]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.target_maps = TargetMaps.build(params[:target_maps], context: "#{context}[:target_maps]") unless params[:target_maps].nil?
        type.resolved_targets = ResolvedTargets.build(params[:resolved_targets], context: "#{context}[:resolved_targets]") unless params[:resolved_targets].nil?
        type.max_concurrency = params[:max_concurrency]
        type.max_errors = params[:max_errors]
        type.target = params[:target]
        type.target_locations = TargetLocations.build(params[:target_locations], context: "#{context}[:target_locations]") unless params[:target_locations].nil?
        type.progress_counters = ProgressCounters.build(params[:progress_counters], context: "#{context}[:progress_counters]") unless params[:progress_counters].nil?
        type.automation_subtype = params[:automation_subtype]
        type.scheduled_time = params[:scheduled_time]
        type.runbooks = Runbooks.build(params[:runbooks], context: "#{context}[:runbooks]") unless params[:runbooks].nil?
        type.ops_item_id = params[:ops_item_id]
        type.association_id = params[:association_id]
        type.change_request_name = params[:change_request_name]
        type
      end
    end

    module AutomationExecutionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomationExecutionFilter, context: context)
        type = Types::AutomationExecutionFilter.new
        type.key = params[:key]
        type.values = AutomationExecutionFilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module AutomationExecutionFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutomationExecutionFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutomationExecutionFilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AutomationExecutionLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomationExecutionLimitExceededException, context: context)
        type = Types::AutomationExecutionLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module AutomationExecutionMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomationExecutionMetadata, context: context)
        type = Types::AutomationExecutionMetadata.new
        type.automation_execution_id = params[:automation_execution_id]
        type.document_name = params[:document_name]
        type.document_version = params[:document_version]
        type.automation_execution_status = params[:automation_execution_status]
        type.execution_start_time = params[:execution_start_time]
        type.execution_end_time = params[:execution_end_time]
        type.executed_by = params[:executed_by]
        type.log_file = params[:log_file]
        type.outputs = AutomationParameterMap.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.mode = params[:mode]
        type.parent_automation_execution_id = params[:parent_automation_execution_id]
        type.current_step_name = params[:current_step_name]
        type.current_action = params[:current_action]
        type.failure_message = params[:failure_message]
        type.target_parameter_name = params[:target_parameter_name]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.target_maps = TargetMaps.build(params[:target_maps], context: "#{context}[:target_maps]") unless params[:target_maps].nil?
        type.resolved_targets = ResolvedTargets.build(params[:resolved_targets], context: "#{context}[:resolved_targets]") unless params[:resolved_targets].nil?
        type.max_concurrency = params[:max_concurrency]
        type.max_errors = params[:max_errors]
        type.target = params[:target]
        type.automation_type = params[:automation_type]
        type.automation_subtype = params[:automation_subtype]
        type.scheduled_time = params[:scheduled_time]
        type.runbooks = Runbooks.build(params[:runbooks], context: "#{context}[:runbooks]") unless params[:runbooks].nil?
        type.ops_item_id = params[:ops_item_id]
        type.association_id = params[:association_id]
        type.change_request_name = params[:change_request_name]
        type
      end
    end

    module AutomationExecutionMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutomationExecutionMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutomationExecutionNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomationExecutionNotFoundException, context: context)
        type = Types::AutomationExecutionNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module AutomationParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AutomationParameterValueList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module AutomationParameterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AutomationStepNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutomationStepNotFoundException, context: context)
        type = Types::AutomationStepNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module BaselineOverride
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BaselineOverride, context: context)
        type = Types::BaselineOverride.new
        type.operating_system = params[:operating_system]
        type.global_filters = PatchFilterGroup.build(params[:global_filters], context: "#{context}[:global_filters]") unless params[:global_filters].nil?
        type.approval_rules = PatchRuleGroup.build(params[:approval_rules], context: "#{context}[:approval_rules]") unless params[:approval_rules].nil?
        type.approved_patches = PatchIdList.build(params[:approved_patches], context: "#{context}[:approved_patches]") unless params[:approved_patches].nil?
        type.approved_patches_compliance_level = params[:approved_patches_compliance_level]
        type.rejected_patches = PatchIdList.build(params[:rejected_patches], context: "#{context}[:rejected_patches]") unless params[:rejected_patches].nil?
        type.rejected_patches_action = params[:rejected_patches_action]
        type.approved_patches_enable_non_security = params[:approved_patches_enable_non_security]
        type.sources = PatchSourceList.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type
      end
    end

    module CalendarNameOrARNList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CancelCommandInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelCommandInput, context: context)
        type = Types::CancelCommandInput.new
        type.command_id = params[:command_id]
        type.instance_ids = InstanceIdList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type
      end
    end

    module CancelCommandOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelCommandOutput, context: context)
        type = Types::CancelCommandOutput.new
        type
      end
    end

    module CancelMaintenanceWindowExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelMaintenanceWindowExecutionInput, context: context)
        type = Types::CancelMaintenanceWindowExecutionInput.new
        type.window_execution_id = params[:window_execution_id]
        type
      end
    end

    module CancelMaintenanceWindowExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelMaintenanceWindowExecutionOutput, context: context)
        type = Types::CancelMaintenanceWindowExecutionOutput.new
        type.window_execution_id = params[:window_execution_id]
        type
      end
    end

    module CategoryEnumList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CategoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CloudWatchOutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchOutputConfig, context: context)
        type = Types::CloudWatchOutputConfig.new
        type.cloud_watch_log_group_name = params[:cloud_watch_log_group_name]
        type.cloud_watch_output_enabled = params[:cloud_watch_output_enabled]
        type
      end
    end

    module Command
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Command, context: context)
        type = Types::Command.new
        type.command_id = params[:command_id]
        type.document_name = params[:document_name]
        type.document_version = params[:document_version]
        type.comment = params[:comment]
        type.expires_after = params[:expires_after]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.instance_ids = InstanceIdList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.requested_date_time = params[:requested_date_time]
        type.status = params[:status]
        type.status_details = params[:status_details]
        type.output_s3_region = params[:output_s3_region]
        type.output_s3_bucket_name = params[:output_s3_bucket_name]
        type.output_s3_key_prefix = params[:output_s3_key_prefix]
        type.max_concurrency = params[:max_concurrency]
        type.max_errors = params[:max_errors]
        type.target_count = params[:target_count]
        type.completed_count = params[:completed_count]
        type.error_count = params[:error_count]
        type.delivery_timed_out_count = params[:delivery_timed_out_count]
        type.service_role = params[:service_role]
        type.notification_config = NotificationConfig.build(params[:notification_config], context: "#{context}[:notification_config]") unless params[:notification_config].nil?
        type.cloud_watch_output_config = CloudWatchOutputConfig.build(params[:cloud_watch_output_config], context: "#{context}[:cloud_watch_output_config]") unless params[:cloud_watch_output_config].nil?
        type.timeout_seconds = params[:timeout_seconds]
        type
      end
    end

    module CommandFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommandFilter, context: context)
        type = Types::CommandFilter.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module CommandFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CommandFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CommandInvocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommandInvocation, context: context)
        type = Types::CommandInvocation.new
        type.command_id = params[:command_id]
        type.instance_id = params[:instance_id]
        type.instance_name = params[:instance_name]
        type.comment = params[:comment]
        type.document_name = params[:document_name]
        type.document_version = params[:document_version]
        type.requested_date_time = params[:requested_date_time]
        type.status = params[:status]
        type.status_details = params[:status_details]
        type.trace_output = params[:trace_output]
        type.standard_output_url = params[:standard_output_url]
        type.standard_error_url = params[:standard_error_url]
        type.command_plugins = CommandPluginList.build(params[:command_plugins], context: "#{context}[:command_plugins]") unless params[:command_plugins].nil?
        type.service_role = params[:service_role]
        type.notification_config = NotificationConfig.build(params[:notification_config], context: "#{context}[:notification_config]") unless params[:notification_config].nil?
        type.cloud_watch_output_config = CloudWatchOutputConfig.build(params[:cloud_watch_output_config], context: "#{context}[:cloud_watch_output_config]") unless params[:cloud_watch_output_config].nil?
        type
      end
    end

    module CommandInvocationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CommandInvocation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CommandList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Command.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CommandPlugin
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommandPlugin, context: context)
        type = Types::CommandPlugin.new
        type.name = params[:name]
        type.status = params[:status]
        type.status_details = params[:status_details]
        type.response_code = params[:response_code]
        type.response_start_date_time = params[:response_start_date_time]
        type.response_finish_date_time = params[:response_finish_date_time]
        type.output = params[:output]
        type.standard_output_url = params[:standard_output_url]
        type.standard_error_url = params[:standard_error_url]
        type.output_s3_region = params[:output_s3_region]
        type.output_s3_bucket_name = params[:output_s3_bucket_name]
        type.output_s3_key_prefix = params[:output_s3_key_prefix]
        type
      end
    end

    module CommandPluginList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CommandPlugin.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComplianceExecutionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComplianceExecutionSummary, context: context)
        type = Types::ComplianceExecutionSummary.new
        type.execution_time = params[:execution_time]
        type.execution_id = params[:execution_id]
        type.execution_type = params[:execution_type]
        type
      end
    end

    module ComplianceItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComplianceItem, context: context)
        type = Types::ComplianceItem.new
        type.compliance_type = params[:compliance_type]
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.id = params[:id]
        type.title = params[:title]
        type.status = params[:status]
        type.severity = params[:severity]
        type.execution_summary = ComplianceExecutionSummary.build(params[:execution_summary], context: "#{context}[:execution_summary]") unless params[:execution_summary].nil?
        type.details = ComplianceItemDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module ComplianceItemDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ComplianceItemEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComplianceItemEntry, context: context)
        type = Types::ComplianceItemEntry.new
        type.id = params[:id]
        type.title = params[:title]
        type.severity = params[:severity]
        type.status = params[:status]
        type.details = ComplianceItemDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module ComplianceItemEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComplianceItemEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComplianceItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComplianceItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComplianceResourceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ComplianceResourceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ComplianceStringFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComplianceStringFilter, context: context)
        type = Types::ComplianceStringFilter.new
        type.key = params[:key]
        type.values = ComplianceStringFilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.type = params[:type]
        type
      end
    end

    module ComplianceStringFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComplianceStringFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComplianceStringFilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ComplianceSummaryItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComplianceSummaryItem, context: context)
        type = Types::ComplianceSummaryItem.new
        type.compliance_type = params[:compliance_type]
        type.compliant_summary = CompliantSummary.build(params[:compliant_summary], context: "#{context}[:compliant_summary]") unless params[:compliant_summary].nil?
        type.non_compliant_summary = NonCompliantSummary.build(params[:non_compliant_summary], context: "#{context}[:non_compliant_summary]") unless params[:non_compliant_summary].nil?
        type
      end
    end

    module ComplianceSummaryItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComplianceSummaryItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComplianceTypeCountLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComplianceTypeCountLimitExceededException, context: context)
        type = Types::ComplianceTypeCountLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module CompliantSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompliantSummary, context: context)
        type = Types::CompliantSummary.new
        type.compliant_count = params[:compliant_count]
        type.severity_summary = SeveritySummary.build(params[:severity_summary], context: "#{context}[:severity_summary]") unless params[:severity_summary].nil?
        type
      end
    end

    module CreateActivationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateActivationInput, context: context)
        type = Types::CreateActivationInput.new
        type.description = params[:description]
        type.default_instance_name = params[:default_instance_name]
        type.iam_role = params[:iam_role]
        type.registration_limit = params[:registration_limit]
        type.expiration_date = params[:expiration_date]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.registration_metadata = RegistrationMetadataList.build(params[:registration_metadata], context: "#{context}[:registration_metadata]") unless params[:registration_metadata].nil?
        type
      end
    end

    module CreateActivationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateActivationOutput, context: context)
        type = Types::CreateActivationOutput.new
        type.activation_id = params[:activation_id]
        type.activation_code = params[:activation_code]
        type
      end
    end

    module CreateAssociationBatchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssociationBatchInput, context: context)
        type = Types::CreateAssociationBatchInput.new
        type.entries = CreateAssociationBatchRequestEntries.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module CreateAssociationBatchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssociationBatchOutput, context: context)
        type = Types::CreateAssociationBatchOutput.new
        type.successful = AssociationDescriptionList.build(params[:successful], context: "#{context}[:successful]") unless params[:successful].nil?
        type.failed = FailedCreateAssociationList.build(params[:failed], context: "#{context}[:failed]") unless params[:failed].nil?
        type
      end
    end

    module CreateAssociationBatchRequestEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreateAssociationBatchRequestEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateAssociationBatchRequestEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssociationBatchRequestEntry, context: context)
        type = Types::CreateAssociationBatchRequestEntry.new
        type.name = params[:name]
        type.instance_id = params[:instance_id]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.automation_target_parameter_name = params[:automation_target_parameter_name]
        type.document_version = params[:document_version]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.schedule_expression = params[:schedule_expression]
        type.output_location = InstanceAssociationOutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type.association_name = params[:association_name]
        type.max_errors = params[:max_errors]
        type.max_concurrency = params[:max_concurrency]
        type.compliance_severity = params[:compliance_severity]
        type.sync_compliance = params[:sync_compliance]
        type.apply_only_at_cron_interval = params[:apply_only_at_cron_interval]
        type.calendar_names = CalendarNameOrARNList.build(params[:calendar_names], context: "#{context}[:calendar_names]") unless params[:calendar_names].nil?
        type.target_locations = TargetLocations.build(params[:target_locations], context: "#{context}[:target_locations]") unless params[:target_locations].nil?
        type.schedule_offset = params[:schedule_offset]
        type.target_maps = TargetMaps.build(params[:target_maps], context: "#{context}[:target_maps]") unless params[:target_maps].nil?
        type
      end
    end

    module CreateAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssociationInput, context: context)
        type = Types::CreateAssociationInput.new
        type.name = params[:name]
        type.document_version = params[:document_version]
        type.instance_id = params[:instance_id]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.schedule_expression = params[:schedule_expression]
        type.output_location = InstanceAssociationOutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type.association_name = params[:association_name]
        type.automation_target_parameter_name = params[:automation_target_parameter_name]
        type.max_errors = params[:max_errors]
        type.max_concurrency = params[:max_concurrency]
        type.compliance_severity = params[:compliance_severity]
        type.sync_compliance = params[:sync_compliance]
        type.apply_only_at_cron_interval = params[:apply_only_at_cron_interval]
        type.calendar_names = CalendarNameOrARNList.build(params[:calendar_names], context: "#{context}[:calendar_names]") unless params[:calendar_names].nil?
        type.target_locations = TargetLocations.build(params[:target_locations], context: "#{context}[:target_locations]") unless params[:target_locations].nil?
        type.schedule_offset = params[:schedule_offset]
        type.target_maps = TargetMaps.build(params[:target_maps], context: "#{context}[:target_maps]") unless params[:target_maps].nil?
        type
      end
    end

    module CreateAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssociationOutput, context: context)
        type = Types::CreateAssociationOutput.new
        type.association_description = AssociationDescription.build(params[:association_description], context: "#{context}[:association_description]") unless params[:association_description].nil?
        type
      end
    end

    module CreateDocumentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDocumentInput, context: context)
        type = Types::CreateDocumentInput.new
        type.content = params[:content]
        type.requires = DocumentRequiresList.build(params[:requires], context: "#{context}[:requires]") unless params[:requires].nil?
        type.attachments = AttachmentsSourceList.build(params[:attachments], context: "#{context}[:attachments]") unless params[:attachments].nil?
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.version_name = params[:version_name]
        type.document_type = params[:document_type]
        type.document_format = params[:document_format]
        type.target_type = params[:target_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDocumentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDocumentOutput, context: context)
        type = Types::CreateDocumentOutput.new
        type.document_description = DocumentDescription.build(params[:document_description], context: "#{context}[:document_description]") unless params[:document_description].nil?
        type
      end
    end

    module CreateMaintenanceWindowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMaintenanceWindowInput, context: context)
        type = Types::CreateMaintenanceWindowInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.schedule = params[:schedule]
        type.schedule_timezone = params[:schedule_timezone]
        type.schedule_offset = params[:schedule_offset]
        type.duration = params[:duration]
        type.cutoff = params[:cutoff]
        type.allow_unassociated_targets = params[:allow_unassociated_targets]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMaintenanceWindowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMaintenanceWindowOutput, context: context)
        type = Types::CreateMaintenanceWindowOutput.new
        type.window_id = params[:window_id]
        type
      end
    end

    module CreateOpsItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOpsItemInput, context: context)
        type = Types::CreateOpsItemInput.new
        type.description = params[:description]
        type.ops_item_type = params[:ops_item_type]
        type.operational_data = OpsItemOperationalData.build(params[:operational_data], context: "#{context}[:operational_data]") unless params[:operational_data].nil?
        type.notifications = OpsItemNotifications.build(params[:notifications], context: "#{context}[:notifications]") unless params[:notifications].nil?
        type.priority = params[:priority]
        type.related_ops_items = RelatedOpsItems.build(params[:related_ops_items], context: "#{context}[:related_ops_items]") unless params[:related_ops_items].nil?
        type.source = params[:source]
        type.title = params[:title]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.category = params[:category]
        type.severity = params[:severity]
        type.actual_start_time = params[:actual_start_time]
        type.actual_end_time = params[:actual_end_time]
        type.planned_start_time = params[:planned_start_time]
        type.planned_end_time = params[:planned_end_time]
        type
      end
    end

    module CreateOpsItemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOpsItemOutput, context: context)
        type = Types::CreateOpsItemOutput.new
        type.ops_item_id = params[:ops_item_id]
        type
      end
    end

    module CreateOpsMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOpsMetadataInput, context: context)
        type = Types::CreateOpsMetadataInput.new
        type.resource_id = params[:resource_id]
        type.metadata = MetadataMap.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateOpsMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateOpsMetadataOutput, context: context)
        type = Types::CreateOpsMetadataOutput.new
        type.ops_metadata_arn = params[:ops_metadata_arn]
        type
      end
    end

    module CreatePatchBaselineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePatchBaselineInput, context: context)
        type = Types::CreatePatchBaselineInput.new
        type.operating_system = params[:operating_system]
        type.name = params[:name]
        type.global_filters = PatchFilterGroup.build(params[:global_filters], context: "#{context}[:global_filters]") unless params[:global_filters].nil?
        type.approval_rules = PatchRuleGroup.build(params[:approval_rules], context: "#{context}[:approval_rules]") unless params[:approval_rules].nil?
        type.approved_patches = PatchIdList.build(params[:approved_patches], context: "#{context}[:approved_patches]") unless params[:approved_patches].nil?
        type.approved_patches_compliance_level = params[:approved_patches_compliance_level]
        type.approved_patches_enable_non_security = params[:approved_patches_enable_non_security]
        type.rejected_patches = PatchIdList.build(params[:rejected_patches], context: "#{context}[:rejected_patches]") unless params[:rejected_patches].nil?
        type.rejected_patches_action = params[:rejected_patches_action]
        type.description = params[:description]
        type.sources = PatchSourceList.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePatchBaselineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePatchBaselineOutput, context: context)
        type = Types::CreatePatchBaselineOutput.new
        type.baseline_id = params[:baseline_id]
        type
      end
    end

    module CreateResourceDataSyncInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceDataSyncInput, context: context)
        type = Types::CreateResourceDataSyncInput.new
        type.sync_name = params[:sync_name]
        type.s3_destination = ResourceDataSyncS3Destination.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type.sync_type = params[:sync_type]
        type.sync_source = ResourceDataSyncSource.build(params[:sync_source], context: "#{context}[:sync_source]") unless params[:sync_source].nil?
        type
      end
    end

    module CreateResourceDataSyncOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceDataSyncOutput, context: context)
        type = Types::CreateResourceDataSyncOutput.new
        type
      end
    end

    module CustomSchemaCountLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomSchemaCountLimitExceededException, context: context)
        type = Types::CustomSchemaCountLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module DeleteActivationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteActivationInput, context: context)
        type = Types::DeleteActivationInput.new
        type.activation_id = params[:activation_id]
        type
      end
    end

    module DeleteActivationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteActivationOutput, context: context)
        type = Types::DeleteActivationOutput.new
        type
      end
    end

    module DeleteAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssociationInput, context: context)
        type = Types::DeleteAssociationInput.new
        type.name = params[:name]
        type.instance_id = params[:instance_id]
        type.association_id = params[:association_id]
        type
      end
    end

    module DeleteAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssociationOutput, context: context)
        type = Types::DeleteAssociationOutput.new
        type
      end
    end

    module DeleteDocumentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDocumentInput, context: context)
        type = Types::DeleteDocumentInput.new
        type.name = params[:name]
        type.document_version = params[:document_version]
        type.version_name = params[:version_name]
        type.force = params[:force]
        type
      end
    end

    module DeleteDocumentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDocumentOutput, context: context)
        type = Types::DeleteDocumentOutput.new
        type
      end
    end

    module DeleteInventoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInventoryInput, context: context)
        type = Types::DeleteInventoryInput.new
        type.type_name = params[:type_name]
        type.schema_delete_option = params[:schema_delete_option]
        type.dry_run = params[:dry_run]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module DeleteInventoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteInventoryOutput, context: context)
        type = Types::DeleteInventoryOutput.new
        type.deletion_id = params[:deletion_id]
        type.type_name = params[:type_name]
        type.deletion_summary = InventoryDeletionSummary.build(params[:deletion_summary], context: "#{context}[:deletion_summary]") unless params[:deletion_summary].nil?
        type
      end
    end

    module DeleteMaintenanceWindowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMaintenanceWindowInput, context: context)
        type = Types::DeleteMaintenanceWindowInput.new
        type.window_id = params[:window_id]
        type
      end
    end

    module DeleteMaintenanceWindowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMaintenanceWindowOutput, context: context)
        type = Types::DeleteMaintenanceWindowOutput.new
        type.window_id = params[:window_id]
        type
      end
    end

    module DeleteOpsMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOpsMetadataInput, context: context)
        type = Types::DeleteOpsMetadataInput.new
        type.ops_metadata_arn = params[:ops_metadata_arn]
        type
      end
    end

    module DeleteOpsMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOpsMetadataOutput, context: context)
        type = Types::DeleteOpsMetadataOutput.new
        type
      end
    end

    module DeleteParameterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteParameterInput, context: context)
        type = Types::DeleteParameterInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteParameterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteParameterOutput, context: context)
        type = Types::DeleteParameterOutput.new
        type
      end
    end

    module DeleteParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteParametersInput, context: context)
        type = Types::DeleteParametersInput.new
        type.names = ParameterNameList.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type
      end
    end

    module DeleteParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteParametersOutput, context: context)
        type = Types::DeleteParametersOutput.new
        type.deleted_parameters = ParameterNameList.build(params[:deleted_parameters], context: "#{context}[:deleted_parameters]") unless params[:deleted_parameters].nil?
        type.invalid_parameters = ParameterNameList.build(params[:invalid_parameters], context: "#{context}[:invalid_parameters]") unless params[:invalid_parameters].nil?
        type
      end
    end

    module DeletePatchBaselineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePatchBaselineInput, context: context)
        type = Types::DeletePatchBaselineInput.new
        type.baseline_id = params[:baseline_id]
        type
      end
    end

    module DeletePatchBaselineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePatchBaselineOutput, context: context)
        type = Types::DeletePatchBaselineOutput.new
        type.baseline_id = params[:baseline_id]
        type
      end
    end

    module DeleteResourceDataSyncInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceDataSyncInput, context: context)
        type = Types::DeleteResourceDataSyncInput.new
        type.sync_name = params[:sync_name]
        type.sync_type = params[:sync_type]
        type
      end
    end

    module DeleteResourceDataSyncOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceDataSyncOutput, context: context)
        type = Types::DeleteResourceDataSyncOutput.new
        type
      end
    end

    module DeregisterManagedInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterManagedInstanceInput, context: context)
        type = Types::DeregisterManagedInstanceInput.new
        type.instance_id = params[:instance_id]
        type
      end
    end

    module DeregisterManagedInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterManagedInstanceOutput, context: context)
        type = Types::DeregisterManagedInstanceOutput.new
        type
      end
    end

    module DeregisterPatchBaselineForPatchGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterPatchBaselineForPatchGroupInput, context: context)
        type = Types::DeregisterPatchBaselineForPatchGroupInput.new
        type.baseline_id = params[:baseline_id]
        type.patch_group = params[:patch_group]
        type
      end
    end

    module DeregisterPatchBaselineForPatchGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterPatchBaselineForPatchGroupOutput, context: context)
        type = Types::DeregisterPatchBaselineForPatchGroupOutput.new
        type.baseline_id = params[:baseline_id]
        type.patch_group = params[:patch_group]
        type
      end
    end

    module DeregisterTargetFromMaintenanceWindowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterTargetFromMaintenanceWindowInput, context: context)
        type = Types::DeregisterTargetFromMaintenanceWindowInput.new
        type.window_id = params[:window_id]
        type.window_target_id = params[:window_target_id]
        type.safe = params[:safe]
        type
      end
    end

    module DeregisterTargetFromMaintenanceWindowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterTargetFromMaintenanceWindowOutput, context: context)
        type = Types::DeregisterTargetFromMaintenanceWindowOutput.new
        type.window_id = params[:window_id]
        type.window_target_id = params[:window_target_id]
        type
      end
    end

    module DeregisterTaskFromMaintenanceWindowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterTaskFromMaintenanceWindowInput, context: context)
        type = Types::DeregisterTaskFromMaintenanceWindowInput.new
        type.window_id = params[:window_id]
        type.window_task_id = params[:window_task_id]
        type
      end
    end

    module DeregisterTaskFromMaintenanceWindowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterTaskFromMaintenanceWindowOutput, context: context)
        type = Types::DeregisterTaskFromMaintenanceWindowOutput.new
        type.window_id = params[:window_id]
        type.window_task_id = params[:window_task_id]
        type
      end
    end

    module DescribeActivationsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeActivationsFilter, context: context)
        type = Types::DescribeActivationsFilter.new
        type.filter_key = params[:filter_key]
        type.filter_values = StringList.build(params[:filter_values], context: "#{context}[:filter_values]") unless params[:filter_values].nil?
        type
      end
    end

    module DescribeActivationsFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DescribeActivationsFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribeActivationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeActivationsInput, context: context)
        type = Types::DescribeActivationsInput.new
        type.filters = DescribeActivationsFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeActivationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeActivationsOutput, context: context)
        type = Types::DescribeActivationsOutput.new
        type.activation_list = ActivationList.build(params[:activation_list], context: "#{context}[:activation_list]") unless params[:activation_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAssociationExecutionTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssociationExecutionTargetsInput, context: context)
        type = Types::DescribeAssociationExecutionTargetsInput.new
        type.association_id = params[:association_id]
        type.execution_id = params[:execution_id]
        type.filters = AssociationExecutionTargetsFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAssociationExecutionTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssociationExecutionTargetsOutput, context: context)
        type = Types::DescribeAssociationExecutionTargetsOutput.new
        type.association_execution_targets = AssociationExecutionTargetsList.build(params[:association_execution_targets], context: "#{context}[:association_execution_targets]") unless params[:association_execution_targets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAssociationExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssociationExecutionsInput, context: context)
        type = Types::DescribeAssociationExecutionsInput.new
        type.association_id = params[:association_id]
        type.filters = AssociationExecutionFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAssociationExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssociationExecutionsOutput, context: context)
        type = Types::DescribeAssociationExecutionsOutput.new
        type.association_executions = AssociationExecutionsList.build(params[:association_executions], context: "#{context}[:association_executions]") unless params[:association_executions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssociationInput, context: context)
        type = Types::DescribeAssociationInput.new
        type.name = params[:name]
        type.instance_id = params[:instance_id]
        type.association_id = params[:association_id]
        type.association_version = params[:association_version]
        type
      end
    end

    module DescribeAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssociationOutput, context: context)
        type = Types::DescribeAssociationOutput.new
        type.association_description = AssociationDescription.build(params[:association_description], context: "#{context}[:association_description]") unless params[:association_description].nil?
        type
      end
    end

    module DescribeAutomationExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutomationExecutionsInput, context: context)
        type = Types::DescribeAutomationExecutionsInput.new
        type.filters = AutomationExecutionFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAutomationExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutomationExecutionsOutput, context: context)
        type = Types::DescribeAutomationExecutionsOutput.new
        type.automation_execution_metadata_list = AutomationExecutionMetadataList.build(params[:automation_execution_metadata_list], context: "#{context}[:automation_execution_metadata_list]") unless params[:automation_execution_metadata_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAutomationStepExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutomationStepExecutionsInput, context: context)
        type = Types::DescribeAutomationStepExecutionsInput.new
        type.automation_execution_id = params[:automation_execution_id]
        type.filters = StepExecutionFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.reverse_order = params[:reverse_order]
        type
      end
    end

    module DescribeAutomationStepExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutomationStepExecutionsOutput, context: context)
        type = Types::DescribeAutomationStepExecutionsOutput.new
        type.step_executions = StepExecutionList.build(params[:step_executions], context: "#{context}[:step_executions]") unless params[:step_executions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAvailablePatchesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAvailablePatchesInput, context: context)
        type = Types::DescribeAvailablePatchesInput.new
        type.filters = PatchOrchestratorFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAvailablePatchesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAvailablePatchesOutput, context: context)
        type = Types::DescribeAvailablePatchesOutput.new
        type.patches = PatchList.build(params[:patches], context: "#{context}[:patches]") unless params[:patches].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDocumentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDocumentInput, context: context)
        type = Types::DescribeDocumentInput.new
        type.name = params[:name]
        type.document_version = params[:document_version]
        type.version_name = params[:version_name]
        type
      end
    end

    module DescribeDocumentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDocumentOutput, context: context)
        type = Types::DescribeDocumentOutput.new
        type.document = DocumentDescription.build(params[:document], context: "#{context}[:document]") unless params[:document].nil?
        type
      end
    end

    module DescribeDocumentPermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDocumentPermissionInput, context: context)
        type = Types::DescribeDocumentPermissionInput.new
        type.name = params[:name]
        type.permission_type = params[:permission_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDocumentPermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDocumentPermissionOutput, context: context)
        type = Types::DescribeDocumentPermissionOutput.new
        type.account_ids = AccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.account_sharing_info_list = AccountSharingInfoList.build(params[:account_sharing_info_list], context: "#{context}[:account_sharing_info_list]") unless params[:account_sharing_info_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEffectiveInstanceAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEffectiveInstanceAssociationsInput, context: context)
        type = Types::DescribeEffectiveInstanceAssociationsInput.new
        type.instance_id = params[:instance_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEffectiveInstanceAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEffectiveInstanceAssociationsOutput, context: context)
        type = Types::DescribeEffectiveInstanceAssociationsOutput.new
        type.associations = InstanceAssociationList.build(params[:associations], context: "#{context}[:associations]") unless params[:associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEffectivePatchesForPatchBaselineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEffectivePatchesForPatchBaselineInput, context: context)
        type = Types::DescribeEffectivePatchesForPatchBaselineInput.new
        type.baseline_id = params[:baseline_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeEffectivePatchesForPatchBaselineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEffectivePatchesForPatchBaselineOutput, context: context)
        type = Types::DescribeEffectivePatchesForPatchBaselineOutput.new
        type.effective_patches = EffectivePatchList.build(params[:effective_patches], context: "#{context}[:effective_patches]") unless params[:effective_patches].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInstanceAssociationsStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceAssociationsStatusInput, context: context)
        type = Types::DescribeInstanceAssociationsStatusInput.new
        type.instance_id = params[:instance_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInstanceAssociationsStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceAssociationsStatusOutput, context: context)
        type = Types::DescribeInstanceAssociationsStatusOutput.new
        type.instance_association_status_infos = InstanceAssociationStatusInfos.build(params[:instance_association_status_infos], context: "#{context}[:instance_association_status_infos]") unless params[:instance_association_status_infos].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInstanceInformationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceInformationInput, context: context)
        type = Types::DescribeInstanceInformationInput.new
        type.instance_information_filter_list = InstanceInformationFilterList.build(params[:instance_information_filter_list], context: "#{context}[:instance_information_filter_list]") unless params[:instance_information_filter_list].nil?
        type.filters = InstanceInformationStringFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInstanceInformationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstanceInformationOutput, context: context)
        type = Types::DescribeInstanceInformationOutput.new
        type.instance_information_list = InstanceInformationList.build(params[:instance_information_list], context: "#{context}[:instance_information_list]") unless params[:instance_information_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInstancePatchStatesForPatchGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstancePatchStatesForPatchGroupInput, context: context)
        type = Types::DescribeInstancePatchStatesForPatchGroupInput.new
        type.patch_group = params[:patch_group]
        type.filters = InstancePatchStateFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeInstancePatchStatesForPatchGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstancePatchStatesForPatchGroupOutput, context: context)
        type = Types::DescribeInstancePatchStatesForPatchGroupOutput.new
        type.instance_patch_states = InstancePatchStatesList.build(params[:instance_patch_states], context: "#{context}[:instance_patch_states]") unless params[:instance_patch_states].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInstancePatchStatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstancePatchStatesInput, context: context)
        type = Types::DescribeInstancePatchStatesInput.new
        type.instance_ids = InstanceIdList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeInstancePatchStatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstancePatchStatesOutput, context: context)
        type = Types::DescribeInstancePatchStatesOutput.new
        type.instance_patch_states = InstancePatchStateList.build(params[:instance_patch_states], context: "#{context}[:instance_patch_states]") unless params[:instance_patch_states].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInstancePatchesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstancePatchesInput, context: context)
        type = Types::DescribeInstancePatchesInput.new
        type.instance_id = params[:instance_id]
        type.filters = PatchOrchestratorFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeInstancePatchesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstancePatchesOutput, context: context)
        type = Types::DescribeInstancePatchesOutput.new
        type.patches = PatchComplianceDataList.build(params[:patches], context: "#{context}[:patches]") unless params[:patches].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInventoryDeletionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInventoryDeletionsInput, context: context)
        type = Types::DescribeInventoryDeletionsInput.new
        type.deletion_id = params[:deletion_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeInventoryDeletionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInventoryDeletionsOutput, context: context)
        type = Types::DescribeInventoryDeletionsOutput.new
        type.inventory_deletions = InventoryDeletionsList.build(params[:inventory_deletions], context: "#{context}[:inventory_deletions]") unless params[:inventory_deletions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowExecutionTaskInvocationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowExecutionTaskInvocationsInput, context: context)
        type = Types::DescribeMaintenanceWindowExecutionTaskInvocationsInput.new
        type.window_execution_id = params[:window_execution_id]
        type.task_id = params[:task_id]
        type.filters = MaintenanceWindowFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowExecutionTaskInvocationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowExecutionTaskInvocationsOutput, context: context)
        type = Types::DescribeMaintenanceWindowExecutionTaskInvocationsOutput.new
        type.window_execution_task_invocation_identities = MaintenanceWindowExecutionTaskInvocationIdentityList.build(params[:window_execution_task_invocation_identities], context: "#{context}[:window_execution_task_invocation_identities]") unless params[:window_execution_task_invocation_identities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowExecutionTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowExecutionTasksInput, context: context)
        type = Types::DescribeMaintenanceWindowExecutionTasksInput.new
        type.window_execution_id = params[:window_execution_id]
        type.filters = MaintenanceWindowFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowExecutionTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowExecutionTasksOutput, context: context)
        type = Types::DescribeMaintenanceWindowExecutionTasksOutput.new
        type.window_execution_task_identities = MaintenanceWindowExecutionTaskIdentityList.build(params[:window_execution_task_identities], context: "#{context}[:window_execution_task_identities]") unless params[:window_execution_task_identities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowExecutionsInput, context: context)
        type = Types::DescribeMaintenanceWindowExecutionsInput.new
        type.window_id = params[:window_id]
        type.filters = MaintenanceWindowFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowExecutionsOutput, context: context)
        type = Types::DescribeMaintenanceWindowExecutionsOutput.new
        type.window_executions = MaintenanceWindowExecutionList.build(params[:window_executions], context: "#{context}[:window_executions]") unless params[:window_executions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowScheduleInput, context: context)
        type = Types::DescribeMaintenanceWindowScheduleInput.new
        type.window_id = params[:window_id]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.resource_type = params[:resource_type]
        type.filters = PatchOrchestratorFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowScheduleOutput, context: context)
        type = Types::DescribeMaintenanceWindowScheduleOutput.new
        type.scheduled_window_executions = ScheduledWindowExecutionList.build(params[:scheduled_window_executions], context: "#{context}[:scheduled_window_executions]") unless params[:scheduled_window_executions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowTargetsInput, context: context)
        type = Types::DescribeMaintenanceWindowTargetsInput.new
        type.window_id = params[:window_id]
        type.filters = MaintenanceWindowFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowTargetsOutput, context: context)
        type = Types::DescribeMaintenanceWindowTargetsOutput.new
        type.targets = MaintenanceWindowTargetList.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowTasksInput, context: context)
        type = Types::DescribeMaintenanceWindowTasksInput.new
        type.window_id = params[:window_id]
        type.filters = MaintenanceWindowFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowTasksOutput, context: context)
        type = Types::DescribeMaintenanceWindowTasksOutput.new
        type.tasks = MaintenanceWindowTaskList.build(params[:tasks], context: "#{context}[:tasks]") unless params[:tasks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowsForTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowsForTargetInput, context: context)
        type = Types::DescribeMaintenanceWindowsForTargetInput.new
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.resource_type = params[:resource_type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowsForTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowsForTargetOutput, context: context)
        type = Types::DescribeMaintenanceWindowsForTargetOutput.new
        type.window_identities = MaintenanceWindowsForTargetList.build(params[:window_identities], context: "#{context}[:window_identities]") unless params[:window_identities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowsInput, context: context)
        type = Types::DescribeMaintenanceWindowsInput.new
        type.filters = MaintenanceWindowFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMaintenanceWindowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMaintenanceWindowsOutput, context: context)
        type = Types::DescribeMaintenanceWindowsOutput.new
        type.window_identities = MaintenanceWindowIdentityList.build(params[:window_identities], context: "#{context}[:window_identities]") unless params[:window_identities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeOpsItemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOpsItemsInput, context: context)
        type = Types::DescribeOpsItemsInput.new
        type.ops_item_filters = OpsItemFilters.build(params[:ops_item_filters], context: "#{context}[:ops_item_filters]") unless params[:ops_item_filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeOpsItemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOpsItemsOutput, context: context)
        type = Types::DescribeOpsItemsOutput.new
        type.next_token = params[:next_token]
        type.ops_item_summaries = OpsItemSummaries.build(params[:ops_item_summaries], context: "#{context}[:ops_item_summaries]") unless params[:ops_item_summaries].nil?
        type
      end
    end

    module DescribeParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeParametersInput, context: context)
        type = Types::DescribeParametersInput.new
        type.filters = ParametersFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.parameter_filters = ParameterStringFilterList.build(params[:parameter_filters], context: "#{context}[:parameter_filters]") unless params[:parameter_filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeParametersOutput, context: context)
        type = Types::DescribeParametersOutput.new
        type.parameters = ParameterMetadataList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePatchBaselinesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePatchBaselinesInput, context: context)
        type = Types::DescribePatchBaselinesInput.new
        type.filters = PatchOrchestratorFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePatchBaselinesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePatchBaselinesOutput, context: context)
        type = Types::DescribePatchBaselinesOutput.new
        type.baseline_identities = PatchBaselineIdentityList.build(params[:baseline_identities], context: "#{context}[:baseline_identities]") unless params[:baseline_identities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePatchGroupStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePatchGroupStateInput, context: context)
        type = Types::DescribePatchGroupStateInput.new
        type.patch_group = params[:patch_group]
        type
      end
    end

    module DescribePatchGroupStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePatchGroupStateOutput, context: context)
        type = Types::DescribePatchGroupStateOutput.new
        type.instances = params[:instances]
        type.instances_with_installed_patches = params[:instances_with_installed_patches]
        type.instances_with_installed_other_patches = params[:instances_with_installed_other_patches]
        type.instances_with_installed_pending_reboot_patches = params[:instances_with_installed_pending_reboot_patches]
        type.instances_with_installed_rejected_patches = params[:instances_with_installed_rejected_patches]
        type.instances_with_missing_patches = params[:instances_with_missing_patches]
        type.instances_with_failed_patches = params[:instances_with_failed_patches]
        type.instances_with_not_applicable_patches = params[:instances_with_not_applicable_patches]
        type.instances_with_unreported_not_applicable_patches = params[:instances_with_unreported_not_applicable_patches]
        type.instances_with_critical_non_compliant_patches = params[:instances_with_critical_non_compliant_patches]
        type.instances_with_security_non_compliant_patches = params[:instances_with_security_non_compliant_patches]
        type.instances_with_other_non_compliant_patches = params[:instances_with_other_non_compliant_patches]
        type
      end
    end

    module DescribePatchGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePatchGroupsInput, context: context)
        type = Types::DescribePatchGroupsInput.new
        type.max_results = params[:max_results]
        type.filters = PatchOrchestratorFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePatchGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePatchGroupsOutput, context: context)
        type = Types::DescribePatchGroupsOutput.new
        type.mappings = PatchGroupPatchBaselineMappingList.build(params[:mappings], context: "#{context}[:mappings]") unless params[:mappings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePatchPropertiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePatchPropertiesInput, context: context)
        type = Types::DescribePatchPropertiesInput.new
        type.operating_system = params[:operating_system]
        type.property = params[:property]
        type.patch_set = params[:patch_set]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePatchPropertiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePatchPropertiesOutput, context: context)
        type = Types::DescribePatchPropertiesOutput.new
        type.properties = PatchPropertiesList.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeSessionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSessionsInput, context: context)
        type = Types::DescribeSessionsInput.new
        type.state = params[:state]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = SessionFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module DescribeSessionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSessionsOutput, context: context)
        type = Types::DescribeSessionsOutput.new
        type.sessions = SessionList.build(params[:sessions], context: "#{context}[:sessions]") unless params[:sessions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DisassociateOpsItemRelatedItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateOpsItemRelatedItemInput, context: context)
        type = Types::DisassociateOpsItemRelatedItemInput.new
        type.ops_item_id = params[:ops_item_id]
        type.association_id = params[:association_id]
        type
      end
    end

    module DisassociateOpsItemRelatedItemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateOpsItemRelatedItemOutput, context: context)
        type = Types::DisassociateOpsItemRelatedItemOutput.new
        type
      end
    end

    module DocumentAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentAlreadyExists, context: context)
        type = Types::DocumentAlreadyExists.new
        type.message = params[:message]
        type
      end
    end

    module DocumentDefaultVersionDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentDefaultVersionDescription, context: context)
        type = Types::DocumentDefaultVersionDescription.new
        type.name = params[:name]
        type.default_version = params[:default_version]
        type.default_version_name = params[:default_version_name]
        type
      end
    end

    module DocumentDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentDescription, context: context)
        type = Types::DocumentDescription.new
        type.sha1 = params[:sha1]
        type.member_hash = params[:member_hash]
        type.hash_type = params[:hash_type]
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.version_name = params[:version_name]
        type.owner = params[:owner]
        type.created_date = params[:created_date]
        type.status = params[:status]
        type.status_information = params[:status_information]
        type.document_version = params[:document_version]
        type.description = params[:description]
        type.parameters = DocumentParameterList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.platform_types = PlatformTypeList.build(params[:platform_types], context: "#{context}[:platform_types]") unless params[:platform_types].nil?
        type.document_type = params[:document_type]
        type.schema_version = params[:schema_version]
        type.latest_version = params[:latest_version]
        type.default_version = params[:default_version]
        type.document_format = params[:document_format]
        type.target_type = params[:target_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.attachments_information = AttachmentInformationList.build(params[:attachments_information], context: "#{context}[:attachments_information]") unless params[:attachments_information].nil?
        type.requires = DocumentRequiresList.build(params[:requires], context: "#{context}[:requires]") unless params[:requires].nil?
        type.author = params[:author]
        type.review_information = ReviewInformationList.build(params[:review_information], context: "#{context}[:review_information]") unless params[:review_information].nil?
        type.approved_version = params[:approved_version]
        type.pending_review_version = params[:pending_review_version]
        type.review_status = params[:review_status]
        type.category = CategoryList.build(params[:category], context: "#{context}[:category]") unless params[:category].nil?
        type.category_enum = CategoryEnumList.build(params[:category_enum], context: "#{context}[:category_enum]") unless params[:category_enum].nil?
        type
      end
    end

    module DocumentFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentFilter, context: context)
        type = Types::DocumentFilter.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module DocumentFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentIdentifier, context: context)
        type = Types::DocumentIdentifier.new
        type.name = params[:name]
        type.created_date = params[:created_date]
        type.display_name = params[:display_name]
        type.owner = params[:owner]
        type.version_name = params[:version_name]
        type.platform_types = PlatformTypeList.build(params[:platform_types], context: "#{context}[:platform_types]") unless params[:platform_types].nil?
        type.document_version = params[:document_version]
        type.document_type = params[:document_type]
        type.schema_version = params[:schema_version]
        type.document_format = params[:document_format]
        type.target_type = params[:target_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.requires = DocumentRequiresList.build(params[:requires], context: "#{context}[:requires]") unless params[:requires].nil?
        type.review_status = params[:review_status]
        type.author = params[:author]
        type
      end
    end

    module DocumentIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentKeyValuesFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentKeyValuesFilter, context: context)
        type = Types::DocumentKeyValuesFilter.new
        type.key = params[:key]
        type.values = DocumentKeyValuesFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module DocumentKeyValuesFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentKeyValuesFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentKeyValuesFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DocumentLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentLimitExceeded, context: context)
        type = Types::DocumentLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module DocumentMetadataResponseInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentMetadataResponseInfo, context: context)
        type = Types::DocumentMetadataResponseInfo.new
        type.reviewer_response = DocumentReviewerResponseList.build(params[:reviewer_response], context: "#{context}[:reviewer_response]") unless params[:reviewer_response].nil?
        type
      end
    end

    module DocumentParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentParameter, context: context)
        type = Types::DocumentParameter.new
        type.name = params[:name]
        type.type = params[:type]
        type.description = params[:description]
        type.default_value = params[:default_value]
        type
      end
    end

    module DocumentParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentPermissionLimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentPermissionLimit, context: context)
        type = Types::DocumentPermissionLimit.new
        type.message = params[:message]
        type
      end
    end

    module DocumentRequires
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentRequires, context: context)
        type = Types::DocumentRequires.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module DocumentRequiresList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentRequires.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentReviewCommentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentReviewCommentSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentReviewCommentSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentReviewCommentSource, context: context)
        type = Types::DocumentReviewCommentSource.new
        type.type = params[:type]
        type.content = params[:content]
        type
      end
    end

    module DocumentReviewerResponseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentReviewerResponseSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentReviewerResponseSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentReviewerResponseSource, context: context)
        type = Types::DocumentReviewerResponseSource.new
        type.create_time = params[:create_time]
        type.updated_time = params[:updated_time]
        type.review_status = params[:review_status]
        type.comment = DocumentReviewCommentList.build(params[:comment], context: "#{context}[:comment]") unless params[:comment].nil?
        type.reviewer = params[:reviewer]
        type
      end
    end

    module DocumentReviews
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentReviews, context: context)
        type = Types::DocumentReviews.new
        type.action = params[:action]
        type.comment = DocumentReviewCommentList.build(params[:comment], context: "#{context}[:comment]") unless params[:comment].nil?
        type
      end
    end

    module DocumentVersionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentVersionInfo, context: context)
        type = Types::DocumentVersionInfo.new
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.document_version = params[:document_version]
        type.version_name = params[:version_name]
        type.created_date = params[:created_date]
        type.is_default_version = params[:is_default_version]
        type.document_format = params[:document_format]
        type.status = params[:status]
        type.status_information = params[:status_information]
        type.review_status = params[:review_status]
        type
      end
    end

    module DocumentVersionLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentVersionLimitExceeded, context: context)
        type = Types::DocumentVersionLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module DocumentVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentVersionInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DoesNotExistException, context: context)
        type = Types::DoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module DuplicateDocumentContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateDocumentContent, context: context)
        type = Types::DuplicateDocumentContent.new
        type.message = params[:message]
        type
      end
    end

    module DuplicateDocumentVersionName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateDocumentVersionName, context: context)
        type = Types::DuplicateDocumentVersionName.new
        type.message = params[:message]
        type
      end
    end

    module DuplicateInstanceId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateInstanceId, context: context)
        type = Types::DuplicateInstanceId.new
        type
      end
    end

    module EffectivePatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EffectivePatch, context: context)
        type = Types::EffectivePatch.new
        type.patch = Patch.build(params[:patch], context: "#{context}[:patch]") unless params[:patch].nil?
        type.patch_status = PatchStatus.build(params[:patch_status], context: "#{context}[:patch_status]") unless params[:patch_status].nil?
        type
      end
    end

    module EffectivePatchList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EffectivePatch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailedCreateAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedCreateAssociation, context: context)
        type = Types::FailedCreateAssociation.new
        type.entry = CreateAssociationBatchRequestEntry.build(params[:entry], context: "#{context}[:entry]") unless params[:entry].nil?
        type.message = params[:message]
        type.fault = params[:fault]
        type
      end
    end

    module FailedCreateAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedCreateAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailureDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailureDetails, context: context)
        type = Types::FailureDetails.new
        type.failure_stage = params[:failure_stage]
        type.failure_type = params[:failure_type]
        type.details = AutomationParameterMap.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module FeatureNotAvailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FeatureNotAvailableException, context: context)
        type = Types::FeatureNotAvailableException.new
        type.message = params[:message]
        type
      end
    end

    module GetAutomationExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAutomationExecutionInput, context: context)
        type = Types::GetAutomationExecutionInput.new
        type.automation_execution_id = params[:automation_execution_id]
        type
      end
    end

    module GetAutomationExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAutomationExecutionOutput, context: context)
        type = Types::GetAutomationExecutionOutput.new
        type.automation_execution = AutomationExecution.build(params[:automation_execution], context: "#{context}[:automation_execution]") unless params[:automation_execution].nil?
        type
      end
    end

    module GetCalendarStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCalendarStateInput, context: context)
        type = Types::GetCalendarStateInput.new
        type.calendar_names = CalendarNameOrARNList.build(params[:calendar_names], context: "#{context}[:calendar_names]") unless params[:calendar_names].nil?
        type.at_time = params[:at_time]
        type
      end
    end

    module GetCalendarStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCalendarStateOutput, context: context)
        type = Types::GetCalendarStateOutput.new
        type.state = params[:state]
        type.at_time = params[:at_time]
        type.next_transition_time = params[:next_transition_time]
        type
      end
    end

    module GetCommandInvocationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCommandInvocationInput, context: context)
        type = Types::GetCommandInvocationInput.new
        type.command_id = params[:command_id]
        type.instance_id = params[:instance_id]
        type.plugin_name = params[:plugin_name]
        type
      end
    end

    module GetCommandInvocationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCommandInvocationOutput, context: context)
        type = Types::GetCommandInvocationOutput.new
        type.command_id = params[:command_id]
        type.instance_id = params[:instance_id]
        type.comment = params[:comment]
        type.document_name = params[:document_name]
        type.document_version = params[:document_version]
        type.plugin_name = params[:plugin_name]
        type.response_code = params[:response_code]
        type.execution_start_date_time = params[:execution_start_date_time]
        type.execution_elapsed_time = params[:execution_elapsed_time]
        type.execution_end_date_time = params[:execution_end_date_time]
        type.status = params[:status]
        type.status_details = params[:status_details]
        type.standard_output_content = params[:standard_output_content]
        type.standard_output_url = params[:standard_output_url]
        type.standard_error_content = params[:standard_error_content]
        type.standard_error_url = params[:standard_error_url]
        type.cloud_watch_output_config = CloudWatchOutputConfig.build(params[:cloud_watch_output_config], context: "#{context}[:cloud_watch_output_config]") unless params[:cloud_watch_output_config].nil?
        type
      end
    end

    module GetConnectionStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectionStatusInput, context: context)
        type = Types::GetConnectionStatusInput.new
        type.target = params[:target]
        type
      end
    end

    module GetConnectionStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConnectionStatusOutput, context: context)
        type = Types::GetConnectionStatusOutput.new
        type.target = params[:target]
        type.status = params[:status]
        type
      end
    end

    module GetDefaultPatchBaselineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDefaultPatchBaselineInput, context: context)
        type = Types::GetDefaultPatchBaselineInput.new
        type.operating_system = params[:operating_system]
        type
      end
    end

    module GetDefaultPatchBaselineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDefaultPatchBaselineOutput, context: context)
        type = Types::GetDefaultPatchBaselineOutput.new
        type.baseline_id = params[:baseline_id]
        type.operating_system = params[:operating_system]
        type
      end
    end

    module GetDeployablePatchSnapshotForInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeployablePatchSnapshotForInstanceInput, context: context)
        type = Types::GetDeployablePatchSnapshotForInstanceInput.new
        type.instance_id = params[:instance_id]
        type.snapshot_id = params[:snapshot_id]
        type.baseline_override = BaselineOverride.build(params[:baseline_override], context: "#{context}[:baseline_override]") unless params[:baseline_override].nil?
        type
      end
    end

    module GetDeployablePatchSnapshotForInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeployablePatchSnapshotForInstanceOutput, context: context)
        type = Types::GetDeployablePatchSnapshotForInstanceOutput.new
        type.instance_id = params[:instance_id]
        type.snapshot_id = params[:snapshot_id]
        type.snapshot_download_url = params[:snapshot_download_url]
        type.product = params[:product]
        type
      end
    end

    module GetDocumentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentInput, context: context)
        type = Types::GetDocumentInput.new
        type.name = params[:name]
        type.version_name = params[:version_name]
        type.document_version = params[:document_version]
        type.document_format = params[:document_format]
        type
      end
    end

    module GetDocumentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentOutput, context: context)
        type = Types::GetDocumentOutput.new
        type.name = params[:name]
        type.created_date = params[:created_date]
        type.display_name = params[:display_name]
        type.version_name = params[:version_name]
        type.document_version = params[:document_version]
        type.status = params[:status]
        type.status_information = params[:status_information]
        type.content = params[:content]
        type.document_type = params[:document_type]
        type.document_format = params[:document_format]
        type.requires = DocumentRequiresList.build(params[:requires], context: "#{context}[:requires]") unless params[:requires].nil?
        type.attachments_content = AttachmentContentList.build(params[:attachments_content], context: "#{context}[:attachments_content]") unless params[:attachments_content].nil?
        type.review_status = params[:review_status]
        type
      end
    end

    module GetInventoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInventoryInput, context: context)
        type = Types::GetInventoryInput.new
        type.filters = InventoryFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.aggregators = InventoryAggregatorList.build(params[:aggregators], context: "#{context}[:aggregators]") unless params[:aggregators].nil?
        type.result_attributes = ResultAttributeList.build(params[:result_attributes], context: "#{context}[:result_attributes]") unless params[:result_attributes].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetInventoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInventoryOutput, context: context)
        type = Types::GetInventoryOutput.new
        type.entities = InventoryResultEntityList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetInventorySchemaInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInventorySchemaInput, context: context)
        type = Types::GetInventorySchemaInput.new
        type.type_name = params[:type_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.aggregator = params[:aggregator]
        type.sub_type = params[:sub_type]
        type
      end
    end

    module GetInventorySchemaOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInventorySchemaOutput, context: context)
        type = Types::GetInventorySchemaOutput.new
        type.schemas = InventoryItemSchemaResultList.build(params[:schemas], context: "#{context}[:schemas]") unless params[:schemas].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetMaintenanceWindowExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMaintenanceWindowExecutionInput, context: context)
        type = Types::GetMaintenanceWindowExecutionInput.new
        type.window_execution_id = params[:window_execution_id]
        type
      end
    end

    module GetMaintenanceWindowExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMaintenanceWindowExecutionOutput, context: context)
        type = Types::GetMaintenanceWindowExecutionOutput.new
        type.window_execution_id = params[:window_execution_id]
        type.task_ids = MaintenanceWindowExecutionTaskIdList.build(params[:task_ids], context: "#{context}[:task_ids]") unless params[:task_ids].nil?
        type.status = params[:status]
        type.status_details = params[:status_details]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module GetMaintenanceWindowExecutionTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMaintenanceWindowExecutionTaskInput, context: context)
        type = Types::GetMaintenanceWindowExecutionTaskInput.new
        type.window_execution_id = params[:window_execution_id]
        type.task_id = params[:task_id]
        type
      end
    end

    module GetMaintenanceWindowExecutionTaskInvocationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMaintenanceWindowExecutionTaskInvocationInput, context: context)
        type = Types::GetMaintenanceWindowExecutionTaskInvocationInput.new
        type.window_execution_id = params[:window_execution_id]
        type.task_id = params[:task_id]
        type.invocation_id = params[:invocation_id]
        type
      end
    end

    module GetMaintenanceWindowExecutionTaskInvocationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMaintenanceWindowExecutionTaskInvocationOutput, context: context)
        type = Types::GetMaintenanceWindowExecutionTaskInvocationOutput.new
        type.window_execution_id = params[:window_execution_id]
        type.task_execution_id = params[:task_execution_id]
        type.invocation_id = params[:invocation_id]
        type.execution_id = params[:execution_id]
        type.task_type = params[:task_type]
        type.parameters = params[:parameters]
        type.status = params[:status]
        type.status_details = params[:status_details]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.owner_information = params[:owner_information]
        type.window_target_id = params[:window_target_id]
        type
      end
    end

    module GetMaintenanceWindowExecutionTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMaintenanceWindowExecutionTaskOutput, context: context)
        type = Types::GetMaintenanceWindowExecutionTaskOutput.new
        type.window_execution_id = params[:window_execution_id]
        type.task_execution_id = params[:task_execution_id]
        type.task_arn = params[:task_arn]
        type.service_role = params[:service_role]
        type.type = params[:type]
        type.task_parameters = MaintenanceWindowTaskParametersList.build(params[:task_parameters], context: "#{context}[:task_parameters]") unless params[:task_parameters].nil?
        type.priority = params[:priority]
        type.max_concurrency = params[:max_concurrency]
        type.max_errors = params[:max_errors]
        type.status = params[:status]
        type.status_details = params[:status_details]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module GetMaintenanceWindowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMaintenanceWindowInput, context: context)
        type = Types::GetMaintenanceWindowInput.new
        type.window_id = params[:window_id]
        type
      end
    end

    module GetMaintenanceWindowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMaintenanceWindowOutput, context: context)
        type = Types::GetMaintenanceWindowOutput.new
        type.window_id = params[:window_id]
        type.name = params[:name]
        type.description = params[:description]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.schedule = params[:schedule]
        type.schedule_timezone = params[:schedule_timezone]
        type.schedule_offset = params[:schedule_offset]
        type.next_execution_time = params[:next_execution_time]
        type.duration = params[:duration]
        type.cutoff = params[:cutoff]
        type.allow_unassociated_targets = params[:allow_unassociated_targets]
        type.enabled = params[:enabled]
        type.created_date = params[:created_date]
        type.modified_date = params[:modified_date]
        type
      end
    end

    module GetMaintenanceWindowTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMaintenanceWindowTaskInput, context: context)
        type = Types::GetMaintenanceWindowTaskInput.new
        type.window_id = params[:window_id]
        type.window_task_id = params[:window_task_id]
        type
      end
    end

    module GetMaintenanceWindowTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMaintenanceWindowTaskOutput, context: context)
        type = Types::GetMaintenanceWindowTaskOutput.new
        type.window_id = params[:window_id]
        type.window_task_id = params[:window_task_id]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.task_arn = params[:task_arn]
        type.service_role_arn = params[:service_role_arn]
        type.task_type = params[:task_type]
        type.task_parameters = MaintenanceWindowTaskParameters.build(params[:task_parameters], context: "#{context}[:task_parameters]") unless params[:task_parameters].nil?
        type.task_invocation_parameters = MaintenanceWindowTaskInvocationParameters.build(params[:task_invocation_parameters], context: "#{context}[:task_invocation_parameters]") unless params[:task_invocation_parameters].nil?
        type.priority = params[:priority]
        type.max_concurrency = params[:max_concurrency]
        type.max_errors = params[:max_errors]
        type.logging_info = LoggingInfo.build(params[:logging_info], context: "#{context}[:logging_info]") unless params[:logging_info].nil?
        type.name = params[:name]
        type.description = params[:description]
        type.cutoff_behavior = params[:cutoff_behavior]
        type
      end
    end

    module GetOpsItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOpsItemInput, context: context)
        type = Types::GetOpsItemInput.new
        type.ops_item_id = params[:ops_item_id]
        type
      end
    end

    module GetOpsItemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOpsItemOutput, context: context)
        type = Types::GetOpsItemOutput.new
        type.ops_item = OpsItem.build(params[:ops_item], context: "#{context}[:ops_item]") unless params[:ops_item].nil?
        type
      end
    end

    module GetOpsMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOpsMetadataInput, context: context)
        type = Types::GetOpsMetadataInput.new
        type.ops_metadata_arn = params[:ops_metadata_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetOpsMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOpsMetadataOutput, context: context)
        type = Types::GetOpsMetadataOutput.new
        type.resource_id = params[:resource_id]
        type.metadata = MetadataMap.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetOpsSummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOpsSummaryInput, context: context)
        type = Types::GetOpsSummaryInput.new
        type.sync_name = params[:sync_name]
        type.filters = OpsFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.aggregators = OpsAggregatorList.build(params[:aggregators], context: "#{context}[:aggregators]") unless params[:aggregators].nil?
        type.result_attributes = OpsResultAttributeList.build(params[:result_attributes], context: "#{context}[:result_attributes]") unless params[:result_attributes].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetOpsSummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOpsSummaryOutput, context: context)
        type = Types::GetOpsSummaryOutput.new
        type.entities = OpsEntityList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetParameterHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetParameterHistoryInput, context: context)
        type = Types::GetParameterHistoryInput.new
        type.name = params[:name]
        type.with_decryption = params[:with_decryption]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetParameterHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetParameterHistoryOutput, context: context)
        type = Types::GetParameterHistoryOutput.new
        type.parameters = ParameterHistoryList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetParameterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetParameterInput, context: context)
        type = Types::GetParameterInput.new
        type.name = params[:name]
        type.with_decryption = params[:with_decryption]
        type
      end
    end

    module GetParameterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetParameterOutput, context: context)
        type = Types::GetParameterOutput.new
        type.parameter = Parameter.build(params[:parameter], context: "#{context}[:parameter]") unless params[:parameter].nil?
        type
      end
    end

    module GetParametersByPathInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetParametersByPathInput, context: context)
        type = Types::GetParametersByPathInput.new
        type.path = params[:path]
        type.recursive = params[:recursive]
        type.parameter_filters = ParameterStringFilterList.build(params[:parameter_filters], context: "#{context}[:parameter_filters]") unless params[:parameter_filters].nil?
        type.with_decryption = params[:with_decryption]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetParametersByPathOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetParametersByPathOutput, context: context)
        type = Types::GetParametersByPathOutput.new
        type.parameters = ParameterList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetParametersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetParametersInput, context: context)
        type = Types::GetParametersInput.new
        type.names = ParameterNameList.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.with_decryption = params[:with_decryption]
        type
      end
    end

    module GetParametersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetParametersOutput, context: context)
        type = Types::GetParametersOutput.new
        type.parameters = ParameterList.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.invalid_parameters = ParameterNameList.build(params[:invalid_parameters], context: "#{context}[:invalid_parameters]") unless params[:invalid_parameters].nil?
        type
      end
    end

    module GetPatchBaselineForPatchGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPatchBaselineForPatchGroupInput, context: context)
        type = Types::GetPatchBaselineForPatchGroupInput.new
        type.patch_group = params[:patch_group]
        type.operating_system = params[:operating_system]
        type
      end
    end

    module GetPatchBaselineForPatchGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPatchBaselineForPatchGroupOutput, context: context)
        type = Types::GetPatchBaselineForPatchGroupOutput.new
        type.baseline_id = params[:baseline_id]
        type.patch_group = params[:patch_group]
        type.operating_system = params[:operating_system]
        type
      end
    end

    module GetPatchBaselineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPatchBaselineInput, context: context)
        type = Types::GetPatchBaselineInput.new
        type.baseline_id = params[:baseline_id]
        type
      end
    end

    module GetPatchBaselineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPatchBaselineOutput, context: context)
        type = Types::GetPatchBaselineOutput.new
        type.baseline_id = params[:baseline_id]
        type.name = params[:name]
        type.operating_system = params[:operating_system]
        type.global_filters = PatchFilterGroup.build(params[:global_filters], context: "#{context}[:global_filters]") unless params[:global_filters].nil?
        type.approval_rules = PatchRuleGroup.build(params[:approval_rules], context: "#{context}[:approval_rules]") unless params[:approval_rules].nil?
        type.approved_patches = PatchIdList.build(params[:approved_patches], context: "#{context}[:approved_patches]") unless params[:approved_patches].nil?
        type.approved_patches_compliance_level = params[:approved_patches_compliance_level]
        type.approved_patches_enable_non_security = params[:approved_patches_enable_non_security]
        type.rejected_patches = PatchIdList.build(params[:rejected_patches], context: "#{context}[:rejected_patches]") unless params[:rejected_patches].nil?
        type.rejected_patches_action = params[:rejected_patches_action]
        type.patch_groups = PatchGroupList.build(params[:patch_groups], context: "#{context}[:patch_groups]") unless params[:patch_groups].nil?
        type.created_date = params[:created_date]
        type.modified_date = params[:modified_date]
        type.description = params[:description]
        type.sources = PatchSourceList.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type
      end
    end

    module GetServiceSettingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceSettingInput, context: context)
        type = Types::GetServiceSettingInput.new
        type.setting_id = params[:setting_id]
        type
      end
    end

    module GetServiceSettingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceSettingOutput, context: context)
        type = Types::GetServiceSettingOutput.new
        type.service_setting = ServiceSetting.build(params[:service_setting], context: "#{context}[:service_setting]") unless params[:service_setting].nil?
        type
      end
    end

    module HierarchyLevelLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HierarchyLevelLimitExceededException, context: context)
        type = Types::HierarchyLevelLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module HierarchyTypeMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HierarchyTypeMismatchException, context: context)
        type = Types::HierarchyTypeMismatchException.new
        type.message = params[:message]
        type
      end
    end

    module IdempotentParameterMismatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdempotentParameterMismatch, context: context)
        type = Types::IdempotentParameterMismatch.new
        type.message = params[:message]
        type
      end
    end

    module IncompatiblePolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncompatiblePolicyException, context: context)
        type = Types::IncompatiblePolicyException.new
        type.message = params[:message]
        type
      end
    end

    module InstanceAggregatedAssociationOverview
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceAggregatedAssociationOverview, context: context)
        type = Types::InstanceAggregatedAssociationOverview.new
        type.detailed_status = params[:detailed_status]
        type.instance_association_status_aggregated_count = InstanceAssociationStatusAggregatedCount.build(params[:instance_association_status_aggregated_count], context: "#{context}[:instance_association_status_aggregated_count]") unless params[:instance_association_status_aggregated_count].nil?
        type
      end
    end

    module InstanceAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceAssociation, context: context)
        type = Types::InstanceAssociation.new
        type.association_id = params[:association_id]
        type.instance_id = params[:instance_id]
        type.content = params[:content]
        type.association_version = params[:association_version]
        type
      end
    end

    module InstanceAssociationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceAssociationOutputLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceAssociationOutputLocation, context: context)
        type = Types::InstanceAssociationOutputLocation.new
        type.s3_location = S3OutputLocation.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type
      end
    end

    module InstanceAssociationOutputUrl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceAssociationOutputUrl, context: context)
        type = Types::InstanceAssociationOutputUrl.new
        type.s3_output_url = S3OutputUrl.build(params[:s3_output_url], context: "#{context}[:s3_output_url]") unless params[:s3_output_url].nil?
        type
      end
    end

    module InstanceAssociationStatusAggregatedCount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module InstanceAssociationStatusInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceAssociationStatusInfo, context: context)
        type = Types::InstanceAssociationStatusInfo.new
        type.association_id = params[:association_id]
        type.name = params[:name]
        type.document_version = params[:document_version]
        type.association_version = params[:association_version]
        type.instance_id = params[:instance_id]
        type.execution_date = params[:execution_date]
        type.status = params[:status]
        type.detailed_status = params[:detailed_status]
        type.execution_summary = params[:execution_summary]
        type.error_code = params[:error_code]
        type.output_url = InstanceAssociationOutputUrl.build(params[:output_url], context: "#{context}[:output_url]") unless params[:output_url].nil?
        type.association_name = params[:association_name]
        type
      end
    end

    module InstanceAssociationStatusInfos
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceAssociationStatusInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceInformation, context: context)
        type = Types::InstanceInformation.new
        type.instance_id = params[:instance_id]
        type.ping_status = params[:ping_status]
        type.last_ping_date_time = params[:last_ping_date_time]
        type.agent_version = params[:agent_version]
        type.is_latest_version = params[:is_latest_version]
        type.platform_type = params[:platform_type]
        type.platform_name = params[:platform_name]
        type.platform_version = params[:platform_version]
        type.activation_id = params[:activation_id]
        type.iam_role = params[:iam_role]
        type.registration_date = params[:registration_date]
        type.resource_type = params[:resource_type]
        type.name = params[:name]
        type.ip_address = params[:ip_address]
        type.computer_name = params[:computer_name]
        type.association_status = params[:association_status]
        type.last_association_execution_date = params[:last_association_execution_date]
        type.last_successful_association_execution_date = params[:last_successful_association_execution_date]
        type.association_overview = InstanceAggregatedAssociationOverview.build(params[:association_overview], context: "#{context}[:association_overview]") unless params[:association_overview].nil?
        type.source_id = params[:source_id]
        type.source_type = params[:source_type]
        type
      end
    end

    module InstanceInformationFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceInformationFilter, context: context)
        type = Types::InstanceInformationFilter.new
        type.key = params[:key]
        type.value_set = InstanceInformationFilterValueSet.build(params[:value_set], context: "#{context}[:value_set]") unless params[:value_set].nil?
        type
      end
    end

    module InstanceInformationFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceInformationFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceInformationFilterValueSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceInformationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceInformationStringFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceInformationStringFilter, context: context)
        type = Types::InstanceInformationStringFilter.new
        type.key = params[:key]
        type.values = InstanceInformationFilterValueSet.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module InstanceInformationStringFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceInformationStringFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstancePatchState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstancePatchState, context: context)
        type = Types::InstancePatchState.new
        type.instance_id = params[:instance_id]
        type.patch_group = params[:patch_group]
        type.baseline_id = params[:baseline_id]
        type.snapshot_id = params[:snapshot_id]
        type.install_override_list = params[:install_override_list]
        type.owner_information = params[:owner_information]
        type.installed_count = params[:installed_count]
        type.installed_other_count = params[:installed_other_count]
        type.installed_pending_reboot_count = params[:installed_pending_reboot_count]
        type.installed_rejected_count = params[:installed_rejected_count]
        type.missing_count = params[:missing_count]
        type.failed_count = params[:failed_count]
        type.unreported_not_applicable_count = params[:unreported_not_applicable_count]
        type.not_applicable_count = params[:not_applicable_count]
        type.operation_start_time = params[:operation_start_time]
        type.operation_end_time = params[:operation_end_time]
        type.operation = params[:operation]
        type.last_no_reboot_install_operation_time = params[:last_no_reboot_install_operation_time]
        type.reboot_option = params[:reboot_option]
        type.critical_non_compliant_count = params[:critical_non_compliant_count]
        type.security_non_compliant_count = params[:security_non_compliant_count]
        type.other_non_compliant_count = params[:other_non_compliant_count]
        type
      end
    end

    module InstancePatchStateFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstancePatchStateFilter, context: context)
        type = Types::InstancePatchStateFilter.new
        type.key = params[:key]
        type.values = InstancePatchStateFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.type = params[:type]
        type
      end
    end

    module InstancePatchStateFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstancePatchStateFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstancePatchStateFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstancePatchStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstancePatchState.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstancePatchStatesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstancePatchState.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerError, context: context)
        type = Types::InternalServerError.new
        type.message = params[:message]
        type
      end
    end

    module InvalidActivation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidActivation, context: context)
        type = Types::InvalidActivation.new
        type.message = params[:message]
        type
      end
    end

    module InvalidActivationId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidActivationId, context: context)
        type = Types::InvalidActivationId.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAggregatorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAggregatorException, context: context)
        type = Types::InvalidAggregatorException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAllowedPatternException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAllowedPatternException, context: context)
        type = Types::InvalidAllowedPatternException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAssociation, context: context)
        type = Types::InvalidAssociation.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAssociationVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAssociationVersion, context: context)
        type = Types::InvalidAssociationVersion.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAutomationExecutionParametersException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAutomationExecutionParametersException, context: context)
        type = Types::InvalidAutomationExecutionParametersException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAutomationSignalException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAutomationSignalException, context: context)
        type = Types::InvalidAutomationSignalException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAutomationStatusUpdateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAutomationStatusUpdateException, context: context)
        type = Types::InvalidAutomationStatusUpdateException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCommandId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCommandId, context: context)
        type = Types::InvalidCommandId.new
        type
      end
    end

    module InvalidDeleteInventoryParametersException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeleteInventoryParametersException, context: context)
        type = Types::InvalidDeleteInventoryParametersException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDeletionIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeletionIdException, context: context)
        type = Types::InvalidDeletionIdException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDocument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDocument, context: context)
        type = Types::InvalidDocument.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDocumentContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDocumentContent, context: context)
        type = Types::InvalidDocumentContent.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDocumentOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDocumentOperation, context: context)
        type = Types::InvalidDocumentOperation.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDocumentSchemaVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDocumentSchemaVersion, context: context)
        type = Types::InvalidDocumentSchemaVersion.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDocumentType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDocumentType, context: context)
        type = Types::InvalidDocumentType.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDocumentVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDocumentVersion, context: context)
        type = Types::InvalidDocumentVersion.new
        type.message = params[:message]
        type
      end
    end

    module InvalidFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidFilter, context: context)
        type = Types::InvalidFilter.new
        type.message = params[:message]
        type
      end
    end

    module InvalidFilterKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidFilterKey, context: context)
        type = Types::InvalidFilterKey.new
        type
      end
    end

    module InvalidFilterOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidFilterOption, context: context)
        type = Types::InvalidFilterOption.new
        type.message = params[:message]
        type
      end
    end

    module InvalidFilterValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidFilterValue, context: context)
        type = Types::InvalidFilterValue.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInstanceId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInstanceId, context: context)
        type = Types::InvalidInstanceId.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInstanceInformationFilterValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInstanceInformationFilterValue, context: context)
        type = Types::InvalidInstanceInformationFilterValue.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInventoryGroupException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInventoryGroupException, context: context)
        type = Types::InvalidInventoryGroupException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInventoryItemContextException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInventoryItemContextException, context: context)
        type = Types::InvalidInventoryItemContextException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInventoryRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInventoryRequestException, context: context)
        type = Types::InvalidInventoryRequestException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidItemContentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidItemContentException, context: context)
        type = Types::InvalidItemContentException.new
        type.type_name = params[:type_name]
        type.message = params[:message]
        type
      end
    end

    module InvalidKeyId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidKeyId, context: context)
        type = Types::InvalidKeyId.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextToken
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextToken, context: context)
        type = Types::InvalidNextToken.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNotificationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNotificationConfig, context: context)
        type = Types::InvalidNotificationConfig.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOptionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOptionException, context: context)
        type = Types::InvalidOptionException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOutputFolder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOutputFolder, context: context)
        type = Types::InvalidOutputFolder.new
        type
      end
    end

    module InvalidOutputLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOutputLocation, context: context)
        type = Types::InvalidOutputLocation.new
        type
      end
    end

    module InvalidParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameters, context: context)
        type = Types::InvalidParameters.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPermissionType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPermissionType, context: context)
        type = Types::InvalidPermissionType.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPluginName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPluginName, context: context)
        type = Types::InvalidPluginName.new
        type
      end
    end

    module InvalidPolicyAttributeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPolicyAttributeException, context: context)
        type = Types::InvalidPolicyAttributeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPolicyTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPolicyTypeException, context: context)
        type = Types::InvalidPolicyTypeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidResourceId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResourceId, context: context)
        type = Types::InvalidResourceId.new
        type
      end
    end

    module InvalidResourceType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResourceType, context: context)
        type = Types::InvalidResourceType.new
        type
      end
    end

    module InvalidResultAttributeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResultAttributeException, context: context)
        type = Types::InvalidResultAttributeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRole
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRole, context: context)
        type = Types::InvalidRole.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSchedule, context: context)
        type = Types::InvalidSchedule.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTarget, context: context)
        type = Types::InvalidTarget.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTargetMaps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTargetMaps, context: context)
        type = Types::InvalidTargetMaps.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTypeNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTypeNameException, context: context)
        type = Types::InvalidTypeNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidUpdate, context: context)
        type = Types::InvalidUpdate.new
        type.message = params[:message]
        type
      end
    end

    module InventoryAggregator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InventoryAggregator, context: context)
        type = Types::InventoryAggregator.new
        type.expression = params[:expression]
        type.aggregators = InventoryAggregatorList.build(params[:aggregators], context: "#{context}[:aggregators]") unless params[:aggregators].nil?
        type.groups = InventoryGroupList.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type
      end
    end

    module InventoryAggregatorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InventoryAggregator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InventoryDeletionStatusItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InventoryDeletionStatusItem, context: context)
        type = Types::InventoryDeletionStatusItem.new
        type.deletion_id = params[:deletion_id]
        type.type_name = params[:type_name]
        type.deletion_start_time = params[:deletion_start_time]
        type.last_status = params[:last_status]
        type.last_status_message = params[:last_status_message]
        type.deletion_summary = InventoryDeletionSummary.build(params[:deletion_summary], context: "#{context}[:deletion_summary]") unless params[:deletion_summary].nil?
        type.last_status_update_time = params[:last_status_update_time]
        type
      end
    end

    module InventoryDeletionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InventoryDeletionSummary, context: context)
        type = Types::InventoryDeletionSummary.new
        type.total_count = params[:total_count]
        type.remaining_count = params[:remaining_count]
        type.summary_items = InventoryDeletionSummaryItems.build(params[:summary_items], context: "#{context}[:summary_items]") unless params[:summary_items].nil?
        type
      end
    end

    module InventoryDeletionSummaryItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InventoryDeletionSummaryItem, context: context)
        type = Types::InventoryDeletionSummaryItem.new
        type.version = params[:version]
        type.count = params[:count]
        type.remaining_count = params[:remaining_count]
        type
      end
    end

    module InventoryDeletionSummaryItems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InventoryDeletionSummaryItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InventoryDeletionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InventoryDeletionStatusItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InventoryFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InventoryFilter, context: context)
        type = Types::InventoryFilter.new
        type.key = params[:key]
        type.values = InventoryFilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.type = params[:type]
        type
      end
    end

    module InventoryFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InventoryFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InventoryFilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InventoryGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InventoryGroup, context: context)
        type = Types::InventoryGroup.new
        type.name = params[:name]
        type.filters = InventoryFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module InventoryGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InventoryGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InventoryItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InventoryItem, context: context)
        type = Types::InventoryItem.new
        type.type_name = params[:type_name]
        type.schema_version = params[:schema_version]
        type.capture_time = params[:capture_time]
        type.content_hash = params[:content_hash]
        type.content = InventoryItemEntryList.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type.context = InventoryItemContentContext.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type
      end
    end

    module InventoryItemAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InventoryItemAttribute, context: context)
        type = Types::InventoryItemAttribute.new
        type.name = params[:name]
        type.data_type = params[:data_type]
        type
      end
    end

    module InventoryItemAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InventoryItemAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InventoryItemContentContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module InventoryItemEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module InventoryItemEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InventoryItemEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InventoryItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InventoryItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InventoryItemSchema
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InventoryItemSchema, context: context)
        type = Types::InventoryItemSchema.new
        type.type_name = params[:type_name]
        type.version = params[:version]
        type.attributes = InventoryItemAttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.display_name = params[:display_name]
        type
      end
    end

    module InventoryItemSchemaResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InventoryItemSchema.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InventoryResultEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InventoryResultEntity, context: context)
        type = Types::InventoryResultEntity.new
        type.id = params[:id]
        type.data = InventoryResultItemMap.build(params[:data], context: "#{context}[:data]") unless params[:data].nil?
        type
      end
    end

    module InventoryResultEntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InventoryResultEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InventoryResultItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InventoryResultItem, context: context)
        type = Types::InventoryResultItem.new
        type.type_name = params[:type_name]
        type.schema_version = params[:schema_version]
        type.capture_time = params[:capture_time]
        type.content_hash = params[:content_hash]
        type.content = InventoryItemEntryList.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type
      end
    end

    module InventoryResultItemMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = InventoryResultItem.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module InvocationDoesNotExist
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvocationDoesNotExist, context: context)
        type = Types::InvocationDoesNotExist.new
        type
      end
    end

    module ItemContentMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ItemContentMismatchException, context: context)
        type = Types::ItemContentMismatchException.new
        type.type_name = params[:type_name]
        type.message = params[:message]
        type
      end
    end

    module ItemSizeLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ItemSizeLimitExceededException, context: context)
        type = Types::ItemSizeLimitExceededException.new
        type.type_name = params[:type_name]
        type.message = params[:message]
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

    module LabelParameterVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelParameterVersionInput, context: context)
        type = Types::LabelParameterVersionInput.new
        type.name = params[:name]
        type.parameter_version = params[:parameter_version]
        type.labels = ParameterLabelList.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type
      end
    end

    module LabelParameterVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelParameterVersionOutput, context: context)
        type = Types::LabelParameterVersionOutput.new
        type.invalid_labels = ParameterLabelList.build(params[:invalid_labels], context: "#{context}[:invalid_labels]") unless params[:invalid_labels].nil?
        type.parameter_version = params[:parameter_version]
        type
      end
    end

    module ListAssociationVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociationVersionsInput, context: context)
        type = Types::ListAssociationVersionsInput.new
        type.association_id = params[:association_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssociationVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociationVersionsOutput, context: context)
        type = Types::ListAssociationVersionsOutput.new
        type.association_versions = AssociationVersionList.build(params[:association_versions], context: "#{context}[:association_versions]") unless params[:association_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociationsInput, context: context)
        type = Types::ListAssociationsInput.new
        type.association_filter_list = AssociationFilterList.build(params[:association_filter_list], context: "#{context}[:association_filter_list]") unless params[:association_filter_list].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociationsOutput, context: context)
        type = Types::ListAssociationsOutput.new
        type.associations = AssociationList.build(params[:associations], context: "#{context}[:associations]") unless params[:associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCommandInvocationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCommandInvocationsInput, context: context)
        type = Types::ListCommandInvocationsInput.new
        type.command_id = params[:command_id]
        type.instance_id = params[:instance_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = CommandFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.details = params[:details]
        type
      end
    end

    module ListCommandInvocationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCommandInvocationsOutput, context: context)
        type = Types::ListCommandInvocationsOutput.new
        type.command_invocations = CommandInvocationList.build(params[:command_invocations], context: "#{context}[:command_invocations]") unless params[:command_invocations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCommandsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCommandsInput, context: context)
        type = Types::ListCommandsInput.new
        type.command_id = params[:command_id]
        type.instance_id = params[:instance_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = CommandFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListCommandsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCommandsOutput, context: context)
        type = Types::ListCommandsOutput.new
        type.commands = CommandList.build(params[:commands], context: "#{context}[:commands]") unless params[:commands].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListComplianceItemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComplianceItemsInput, context: context)
        type = Types::ListComplianceItemsInput.new
        type.filters = ComplianceStringFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.resource_ids = ComplianceResourceIdList.build(params[:resource_ids], context: "#{context}[:resource_ids]") unless params[:resource_ids].nil?
        type.resource_types = ComplianceResourceTypeList.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListComplianceItemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComplianceItemsOutput, context: context)
        type = Types::ListComplianceItemsOutput.new
        type.compliance_items = ComplianceItemList.build(params[:compliance_items], context: "#{context}[:compliance_items]") unless params[:compliance_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListComplianceSummariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComplianceSummariesInput, context: context)
        type = Types::ListComplianceSummariesInput.new
        type.filters = ComplianceStringFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListComplianceSummariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComplianceSummariesOutput, context: context)
        type = Types::ListComplianceSummariesOutput.new
        type.compliance_summary_items = ComplianceSummaryItemList.build(params[:compliance_summary_items], context: "#{context}[:compliance_summary_items]") unless params[:compliance_summary_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDocumentMetadataHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDocumentMetadataHistoryInput, context: context)
        type = Types::ListDocumentMetadataHistoryInput.new
        type.name = params[:name]
        type.document_version = params[:document_version]
        type.metadata = params[:metadata]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDocumentMetadataHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDocumentMetadataHistoryOutput, context: context)
        type = Types::ListDocumentMetadataHistoryOutput.new
        type.name = params[:name]
        type.document_version = params[:document_version]
        type.author = params[:author]
        type.metadata = DocumentMetadataResponseInfo.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDocumentVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDocumentVersionsInput, context: context)
        type = Types::ListDocumentVersionsInput.new
        type.name = params[:name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDocumentVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDocumentVersionsOutput, context: context)
        type = Types::ListDocumentVersionsOutput.new
        type.document_versions = DocumentVersionList.build(params[:document_versions], context: "#{context}[:document_versions]") unless params[:document_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDocumentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDocumentsInput, context: context)
        type = Types::ListDocumentsInput.new
        type.document_filter_list = DocumentFilterList.build(params[:document_filter_list], context: "#{context}[:document_filter_list]") unless params[:document_filter_list].nil?
        type.filters = DocumentKeyValuesFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDocumentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDocumentsOutput, context: context)
        type = Types::ListDocumentsOutput.new
        type.document_identifiers = DocumentIdentifierList.build(params[:document_identifiers], context: "#{context}[:document_identifiers]") unless params[:document_identifiers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInventoryEntriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInventoryEntriesInput, context: context)
        type = Types::ListInventoryEntriesInput.new
        type.instance_id = params[:instance_id]
        type.type_name = params[:type_name]
        type.filters = InventoryFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListInventoryEntriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInventoryEntriesOutput, context: context)
        type = Types::ListInventoryEntriesOutput.new
        type.type_name = params[:type_name]
        type.instance_id = params[:instance_id]
        type.schema_version = params[:schema_version]
        type.capture_time = params[:capture_time]
        type.entries = InventoryItemEntryList.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOpsItemEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOpsItemEventsInput, context: context)
        type = Types::ListOpsItemEventsInput.new
        type.filters = OpsItemEventFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOpsItemEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOpsItemEventsOutput, context: context)
        type = Types::ListOpsItemEventsOutput.new
        type.next_token = params[:next_token]
        type.summaries = OpsItemEventSummaries.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type
      end
    end

    module ListOpsItemRelatedItemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOpsItemRelatedItemsInput, context: context)
        type = Types::ListOpsItemRelatedItemsInput.new
        type.ops_item_id = params[:ops_item_id]
        type.filters = OpsItemRelatedItemsFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOpsItemRelatedItemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOpsItemRelatedItemsOutput, context: context)
        type = Types::ListOpsItemRelatedItemsOutput.new
        type.next_token = params[:next_token]
        type.summaries = OpsItemRelatedItemSummaries.build(params[:summaries], context: "#{context}[:summaries]") unless params[:summaries].nil?
        type
      end
    end

    module ListOpsMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOpsMetadataInput, context: context)
        type = Types::ListOpsMetadataInput.new
        type.filters = OpsMetadataFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOpsMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOpsMetadataOutput, context: context)
        type = Types::ListOpsMetadataOutput.new
        type.ops_metadata_list = OpsMetadataList.build(params[:ops_metadata_list], context: "#{context}[:ops_metadata_list]") unless params[:ops_metadata_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourceComplianceSummariesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceComplianceSummariesInput, context: context)
        type = Types::ListResourceComplianceSummariesInput.new
        type.filters = ComplianceStringFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListResourceComplianceSummariesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceComplianceSummariesOutput, context: context)
        type = Types::ListResourceComplianceSummariesOutput.new
        type.resource_compliance_summary_items = ResourceComplianceSummaryItemList.build(params[:resource_compliance_summary_items], context: "#{context}[:resource_compliance_summary_items]") unless params[:resource_compliance_summary_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourceDataSyncInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceDataSyncInput, context: context)
        type = Types::ListResourceDataSyncInput.new
        type.sync_type = params[:sync_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListResourceDataSyncOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceDataSyncOutput, context: context)
        type = Types::ListResourceDataSyncOutput.new
        type.resource_data_sync_items = ResourceDataSyncItemList.build(params[:resource_data_sync_items], context: "#{context}[:resource_data_sync_items]") unless params[:resource_data_sync_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module LoggingInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingInfo, context: context)
        type = Types::LoggingInfo.new
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.s3_region = params[:s3_region]
        type
      end
    end

    module MaintenanceWindowAutomationParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceWindowAutomationParameters, context: context)
        type = Types::MaintenanceWindowAutomationParameters.new
        type.document_version = params[:document_version]
        type.parameters = AutomationParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module MaintenanceWindowExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceWindowExecution, context: context)
        type = Types::MaintenanceWindowExecution.new
        type.window_id = params[:window_id]
        type.window_execution_id = params[:window_execution_id]
        type.status = params[:status]
        type.status_details = params[:status_details]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module MaintenanceWindowExecutionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MaintenanceWindowExecution.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MaintenanceWindowExecutionTaskIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MaintenanceWindowExecutionTaskIdentity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceWindowExecutionTaskIdentity, context: context)
        type = Types::MaintenanceWindowExecutionTaskIdentity.new
        type.window_execution_id = params[:window_execution_id]
        type.task_execution_id = params[:task_execution_id]
        type.status = params[:status]
        type.status_details = params[:status_details]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.task_arn = params[:task_arn]
        type.task_type = params[:task_type]
        type
      end
    end

    module MaintenanceWindowExecutionTaskIdentityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MaintenanceWindowExecutionTaskIdentity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MaintenanceWindowExecutionTaskInvocationIdentity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceWindowExecutionTaskInvocationIdentity, context: context)
        type = Types::MaintenanceWindowExecutionTaskInvocationIdentity.new
        type.window_execution_id = params[:window_execution_id]
        type.task_execution_id = params[:task_execution_id]
        type.invocation_id = params[:invocation_id]
        type.execution_id = params[:execution_id]
        type.task_type = params[:task_type]
        type.parameters = params[:parameters]
        type.status = params[:status]
        type.status_details = params[:status_details]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.owner_information = params[:owner_information]
        type.window_target_id = params[:window_target_id]
        type
      end
    end

    module MaintenanceWindowExecutionTaskInvocationIdentityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MaintenanceWindowExecutionTaskInvocationIdentity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MaintenanceWindowFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceWindowFilter, context: context)
        type = Types::MaintenanceWindowFilter.new
        type.key = params[:key]
        type.values = MaintenanceWindowFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module MaintenanceWindowFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MaintenanceWindowFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MaintenanceWindowFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MaintenanceWindowIdentity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceWindowIdentity, context: context)
        type = Types::MaintenanceWindowIdentity.new
        type.window_id = params[:window_id]
        type.name = params[:name]
        type.description = params[:description]
        type.enabled = params[:enabled]
        type.duration = params[:duration]
        type.cutoff = params[:cutoff]
        type.schedule = params[:schedule]
        type.schedule_timezone = params[:schedule_timezone]
        type.schedule_offset = params[:schedule_offset]
        type.end_date = params[:end_date]
        type.start_date = params[:start_date]
        type.next_execution_time = params[:next_execution_time]
        type
      end
    end

    module MaintenanceWindowIdentityForTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceWindowIdentityForTarget, context: context)
        type = Types::MaintenanceWindowIdentityForTarget.new
        type.window_id = params[:window_id]
        type.name = params[:name]
        type
      end
    end

    module MaintenanceWindowIdentityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MaintenanceWindowIdentity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MaintenanceWindowLambdaParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceWindowLambdaParameters, context: context)
        type = Types::MaintenanceWindowLambdaParameters.new
        type.client_context = params[:client_context]
        type.qualifier = params[:qualifier]
        type.payload = params[:payload]
        type
      end
    end

    module MaintenanceWindowRunCommandParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceWindowRunCommandParameters, context: context)
        type = Types::MaintenanceWindowRunCommandParameters.new
        type.comment = params[:comment]
        type.cloud_watch_output_config = CloudWatchOutputConfig.build(params[:cloud_watch_output_config], context: "#{context}[:cloud_watch_output_config]") unless params[:cloud_watch_output_config].nil?
        type.document_hash = params[:document_hash]
        type.document_hash_type = params[:document_hash_type]
        type.document_version = params[:document_version]
        type.notification_config = NotificationConfig.build(params[:notification_config], context: "#{context}[:notification_config]") unless params[:notification_config].nil?
        type.output_s3_bucket_name = params[:output_s3_bucket_name]
        type.output_s3_key_prefix = params[:output_s3_key_prefix]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.service_role_arn = params[:service_role_arn]
        type.timeout_seconds = params[:timeout_seconds]
        type
      end
    end

    module MaintenanceWindowStepFunctionsParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceWindowStepFunctionsParameters, context: context)
        type = Types::MaintenanceWindowStepFunctionsParameters.new
        type.input = params[:input]
        type.name = params[:name]
        type
      end
    end

    module MaintenanceWindowTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceWindowTarget, context: context)
        type = Types::MaintenanceWindowTarget.new
        type.window_id = params[:window_id]
        type.window_target_id = params[:window_target_id]
        type.resource_type = params[:resource_type]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.owner_information = params[:owner_information]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module MaintenanceWindowTargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MaintenanceWindowTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MaintenanceWindowTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceWindowTask, context: context)
        type = Types::MaintenanceWindowTask.new
        type.window_id = params[:window_id]
        type.window_task_id = params[:window_task_id]
        type.task_arn = params[:task_arn]
        type.type = params[:type]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.task_parameters = MaintenanceWindowTaskParameters.build(params[:task_parameters], context: "#{context}[:task_parameters]") unless params[:task_parameters].nil?
        type.priority = params[:priority]
        type.logging_info = LoggingInfo.build(params[:logging_info], context: "#{context}[:logging_info]") unless params[:logging_info].nil?
        type.service_role_arn = params[:service_role_arn]
        type.max_concurrency = params[:max_concurrency]
        type.max_errors = params[:max_errors]
        type.name = params[:name]
        type.description = params[:description]
        type.cutoff_behavior = params[:cutoff_behavior]
        type
      end
    end

    module MaintenanceWindowTaskInvocationParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceWindowTaskInvocationParameters, context: context)
        type = Types::MaintenanceWindowTaskInvocationParameters.new
        type.run_command = MaintenanceWindowRunCommandParameters.build(params[:run_command], context: "#{context}[:run_command]") unless params[:run_command].nil?
        type.automation = MaintenanceWindowAutomationParameters.build(params[:automation], context: "#{context}[:automation]") unless params[:automation].nil?
        type.step_functions = MaintenanceWindowStepFunctionsParameters.build(params[:step_functions], context: "#{context}[:step_functions]") unless params[:step_functions].nil?
        type.lambda = MaintenanceWindowLambdaParameters.build(params[:lambda], context: "#{context}[:lambda]") unless params[:lambda].nil?
        type
      end
    end

    module MaintenanceWindowTaskList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MaintenanceWindowTask.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MaintenanceWindowTaskParameterValueExpression
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceWindowTaskParameterValueExpression, context: context)
        type = Types::MaintenanceWindowTaskParameterValueExpression.new
        type.values = MaintenanceWindowTaskParameterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module MaintenanceWindowTaskParameterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MaintenanceWindowTaskParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = MaintenanceWindowTaskParameterValueExpression.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MaintenanceWindowTaskParametersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MaintenanceWindowTaskParameters.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MaintenanceWindowsForTargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MaintenanceWindowIdentityForTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MaxDocumentSizeExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaxDocumentSizeExceeded, context: context)
        type = Types::MaxDocumentSizeExceeded.new
        type.message = params[:message]
        type
      end
    end

    module MetadataKeysToDeleteList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MetadataMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = MetadataValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MetadataValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetadataValue, context: context)
        type = Types::MetadataValue.new
        type.value = params[:value]
        type
      end
    end

    module ModifyDocumentPermissionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDocumentPermissionInput, context: context)
        type = Types::ModifyDocumentPermissionInput.new
        type.name = params[:name]
        type.permission_type = params[:permission_type]
        type.account_ids_to_add = AccountIdList.build(params[:account_ids_to_add], context: "#{context}[:account_ids_to_add]") unless params[:account_ids_to_add].nil?
        type.account_ids_to_remove = AccountIdList.build(params[:account_ids_to_remove], context: "#{context}[:account_ids_to_remove]") unless params[:account_ids_to_remove].nil?
        type.shared_document_version = params[:shared_document_version]
        type
      end
    end

    module ModifyDocumentPermissionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyDocumentPermissionOutput, context: context)
        type = Types::ModifyDocumentPermissionOutput.new
        type
      end
    end

    module NonCompliantSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NonCompliantSummary, context: context)
        type = Types::NonCompliantSummary.new
        type.non_compliant_count = params[:non_compliant_count]
        type.severity_summary = SeveritySummary.build(params[:severity_summary], context: "#{context}[:severity_summary]") unless params[:severity_summary].nil?
        type
      end
    end

    module NormalStringMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module NotificationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationConfig, context: context)
        type = Types::NotificationConfig.new
        type.notification_arn = params[:notification_arn]
        type.notification_events = NotificationEventList.build(params[:notification_events], context: "#{context}[:notification_events]") unless params[:notification_events].nil?
        type.notification_type = params[:notification_type]
        type
      end
    end

    module NotificationEventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OpsAggregator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsAggregator, context: context)
        type = Types::OpsAggregator.new
        type.aggregator_type = params[:aggregator_type]
        type.type_name = params[:type_name]
        type.attribute_name = params[:attribute_name]
        type.values = OpsAggregatorValueMap.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.filters = OpsFilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.aggregators = OpsAggregatorList.build(params[:aggregators], context: "#{context}[:aggregators]") unless params[:aggregators].nil?
        type
      end
    end

    module OpsAggregatorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpsAggregator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpsAggregatorValueMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module OpsEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsEntity, context: context)
        type = Types::OpsEntity.new
        type.id = params[:id]
        type.data = OpsEntityItemMap.build(params[:data], context: "#{context}[:data]") unless params[:data].nil?
        type
      end
    end

    module OpsEntityItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsEntityItem, context: context)
        type = Types::OpsEntityItem.new
        type.capture_time = params[:capture_time]
        type.content = OpsEntityItemEntryList.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type
      end
    end

    module OpsEntityItemEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module OpsEntityItemEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpsEntityItemEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpsEntityItemMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = OpsEntityItem.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module OpsEntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpsEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsFilter, context: context)
        type = Types::OpsFilter.new
        type.key = params[:key]
        type.values = OpsFilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.type = params[:type]
        type
      end
    end

    module OpsFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpsFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpsFilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OpsItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItem, context: context)
        type = Types::OpsItem.new
        type.created_by = params[:created_by]
        type.ops_item_type = params[:ops_item_type]
        type.created_time = params[:created_time]
        type.description = params[:description]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_time = params[:last_modified_time]
        type.notifications = OpsItemNotifications.build(params[:notifications], context: "#{context}[:notifications]") unless params[:notifications].nil?
        type.priority = params[:priority]
        type.related_ops_items = RelatedOpsItems.build(params[:related_ops_items], context: "#{context}[:related_ops_items]") unless params[:related_ops_items].nil?
        type.status = params[:status]
        type.ops_item_id = params[:ops_item_id]
        type.version = params[:version]
        type.title = params[:title]
        type.source = params[:source]
        type.operational_data = OpsItemOperationalData.build(params[:operational_data], context: "#{context}[:operational_data]") unless params[:operational_data].nil?
        type.category = params[:category]
        type.severity = params[:severity]
        type.actual_start_time = params[:actual_start_time]
        type.actual_end_time = params[:actual_end_time]
        type.planned_start_time = params[:planned_start_time]
        type.planned_end_time = params[:planned_end_time]
        type
      end
    end

    module OpsItemAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItemAlreadyExistsException, context: context)
        type = Types::OpsItemAlreadyExistsException.new
        type.message = params[:message]
        type.ops_item_id = params[:ops_item_id]
        type
      end
    end

    module OpsItemDataValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItemDataValue, context: context)
        type = Types::OpsItemDataValue.new
        type.value = params[:value]
        type.type = params[:type]
        type
      end
    end

    module OpsItemEventFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItemEventFilter, context: context)
        type = Types::OpsItemEventFilter.new
        type.key = params[:key]
        type.values = OpsItemEventFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module OpsItemEventFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OpsItemEventFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpsItemEventFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpsItemEventSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpsItemEventSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpsItemEventSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItemEventSummary, context: context)
        type = Types::OpsItemEventSummary.new
        type.ops_item_id = params[:ops_item_id]
        type.event_id = params[:event_id]
        type.source = params[:source]
        type.detail_type = params[:detail_type]
        type.detail = params[:detail]
        type.created_by = OpsItemIdentity.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.created_time = params[:created_time]
        type
      end
    end

    module OpsItemFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItemFilter, context: context)
        type = Types::OpsItemFilter.new
        type.key = params[:key]
        type.values = OpsItemFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module OpsItemFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OpsItemFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpsItemFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpsItemIdentity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItemIdentity, context: context)
        type = Types::OpsItemIdentity.new
        type.arn = params[:arn]
        type
      end
    end

    module OpsItemInvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItemInvalidParameterException, context: context)
        type = Types::OpsItemInvalidParameterException.new
        type.parameter_names = OpsItemParameterNamesList.build(params[:parameter_names], context: "#{context}[:parameter_names]") unless params[:parameter_names].nil?
        type.message = params[:message]
        type
      end
    end

    module OpsItemLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItemLimitExceededException, context: context)
        type = Types::OpsItemLimitExceededException.new
        type.resource_types = OpsItemParameterNamesList.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type.limit = params[:limit]
        type.limit_type = params[:limit_type]
        type.message = params[:message]
        type
      end
    end

    module OpsItemNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItemNotFoundException, context: context)
        type = Types::OpsItemNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module OpsItemNotification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItemNotification, context: context)
        type = Types::OpsItemNotification.new
        type.arn = params[:arn]
        type
      end
    end

    module OpsItemNotifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpsItemNotification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpsItemOperationalData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = OpsItemDataValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module OpsItemOpsDataKeysList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OpsItemParameterNamesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OpsItemRelatedItemAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItemRelatedItemAlreadyExistsException, context: context)
        type = Types::OpsItemRelatedItemAlreadyExistsException.new
        type.message = params[:message]
        type.resource_uri = params[:resource_uri]
        type.ops_item_id = params[:ops_item_id]
        type
      end
    end

    module OpsItemRelatedItemAssociationNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItemRelatedItemAssociationNotFoundException, context: context)
        type = Types::OpsItemRelatedItemAssociationNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module OpsItemRelatedItemSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpsItemRelatedItemSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpsItemRelatedItemSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItemRelatedItemSummary, context: context)
        type = Types::OpsItemRelatedItemSummary.new
        type.ops_item_id = params[:ops_item_id]
        type.association_id = params[:association_id]
        type.resource_type = params[:resource_type]
        type.association_type = params[:association_type]
        type.resource_uri = params[:resource_uri]
        type.created_by = OpsItemIdentity.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.created_time = params[:created_time]
        type.last_modified_by = OpsItemIdentity.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module OpsItemRelatedItemsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItemRelatedItemsFilter, context: context)
        type = Types::OpsItemRelatedItemsFilter.new
        type.key = params[:key]
        type.values = OpsItemRelatedItemsFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module OpsItemRelatedItemsFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OpsItemRelatedItemsFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpsItemRelatedItemsFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpsItemSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpsItemSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpsItemSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsItemSummary, context: context)
        type = Types::OpsItemSummary.new
        type.created_by = params[:created_by]
        type.created_time = params[:created_time]
        type.last_modified_by = params[:last_modified_by]
        type.last_modified_time = params[:last_modified_time]
        type.priority = params[:priority]
        type.source = params[:source]
        type.status = params[:status]
        type.ops_item_id = params[:ops_item_id]
        type.title = params[:title]
        type.operational_data = OpsItemOperationalData.build(params[:operational_data], context: "#{context}[:operational_data]") unless params[:operational_data].nil?
        type.category = params[:category]
        type.severity = params[:severity]
        type.ops_item_type = params[:ops_item_type]
        type.actual_start_time = params[:actual_start_time]
        type.actual_end_time = params[:actual_end_time]
        type.planned_start_time = params[:planned_start_time]
        type.planned_end_time = params[:planned_end_time]
        type
      end
    end

    module OpsMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsMetadata, context: context)
        type = Types::OpsMetadata.new
        type.resource_id = params[:resource_id]
        type.ops_metadata_arn = params[:ops_metadata_arn]
        type.last_modified_date = params[:last_modified_date]
        type.last_modified_user = params[:last_modified_user]
        type.creation_date = params[:creation_date]
        type
      end
    end

    module OpsMetadataAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsMetadataAlreadyExistsException, context: context)
        type = Types::OpsMetadataAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module OpsMetadataFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsMetadataFilter, context: context)
        type = Types::OpsMetadataFilter.new
        type.key = params[:key]
        type.values = OpsMetadataFilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module OpsMetadataFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpsMetadataFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpsMetadataFilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OpsMetadataInvalidArgumentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsMetadataInvalidArgumentException, context: context)
        type = Types::OpsMetadataInvalidArgumentException.new
        type.message = params[:message]
        type
      end
    end

    module OpsMetadataKeyLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsMetadataKeyLimitExceededException, context: context)
        type = Types::OpsMetadataKeyLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module OpsMetadataLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsMetadataLimitExceededException, context: context)
        type = Types::OpsMetadataLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module OpsMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpsMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OpsMetadataNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsMetadataNotFoundException, context: context)
        type = Types::OpsMetadataNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module OpsMetadataTooManyUpdatesException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsMetadataTooManyUpdatesException, context: context)
        type = Types::OpsMetadataTooManyUpdatesException.new
        type.message = params[:message]
        type
      end
    end

    module OpsResultAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OpsResultAttribute, context: context)
        type = Types::OpsResultAttribute.new
        type.type_name = params[:type_name]
        type
      end
    end

    module OpsResultAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OpsResultAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OutputSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputSource, context: context)
        type = Types::OutputSource.new
        type.output_source_id = params[:output_source_id]
        type.output_source_type = params[:output_source_type]
        type
      end
    end

    module Parameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Parameter, context: context)
        type = Types::Parameter.new
        type.name = params[:name]
        type.type = params[:type]
        type.value = params[:value]
        type.version = params[:version]
        type.selector = params[:selector]
        type.source_result = params[:source_result]
        type.last_modified_date = params[:last_modified_date]
        type.arn = params[:arn]
        type.data_type = params[:data_type]
        type
      end
    end

    module ParameterAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterAlreadyExists, context: context)
        type = Types::ParameterAlreadyExists.new
        type.message = params[:message]
        type
      end
    end

    module ParameterHistory
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterHistory, context: context)
        type = Types::ParameterHistory.new
        type.name = params[:name]
        type.type = params[:type]
        type.key_id = params[:key_id]
        type.last_modified_date = params[:last_modified_date]
        type.last_modified_user = params[:last_modified_user]
        type.description = params[:description]
        type.value = params[:value]
        type.allowed_pattern = params[:allowed_pattern]
        type.version = params[:version]
        type.labels = ParameterLabelList.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type.tier = params[:tier]
        type.policies = ParameterPolicyList.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.data_type = params[:data_type]
        type
      end
    end

    module ParameterHistoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterHistory.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParameterInlinePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterInlinePolicy, context: context)
        type = Types::ParameterInlinePolicy.new
        type.policy_text = params[:policy_text]
        type.policy_type = params[:policy_type]
        type.policy_status = params[:policy_status]
        type
      end
    end

    module ParameterLabelList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ParameterLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterLimitExceeded, context: context)
        type = Types::ParameterLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module ParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Parameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParameterMaxVersionLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterMaxVersionLimitExceeded, context: context)
        type = Types::ParameterMaxVersionLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module ParameterMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterMetadata, context: context)
        type = Types::ParameterMetadata.new
        type.name = params[:name]
        type.type = params[:type]
        type.key_id = params[:key_id]
        type.last_modified_date = params[:last_modified_date]
        type.last_modified_user = params[:last_modified_user]
        type.description = params[:description]
        type.allowed_pattern = params[:allowed_pattern]
        type.version = params[:version]
        type.tier = params[:tier]
        type.policies = ParameterPolicyList.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type.data_type = params[:data_type]
        type
      end
    end

    module ParameterMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParameterNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ParameterNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterNotFound, context: context)
        type = Types::ParameterNotFound.new
        type.message = params[:message]
        type
      end
    end

    module ParameterPatternMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterPatternMismatchException, context: context)
        type = Types::ParameterPatternMismatchException.new
        type.message = params[:message]
        type
      end
    end

    module ParameterPolicyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterInlinePolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParameterStringFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterStringFilter, context: context)
        type = Types::ParameterStringFilter.new
        type.key = params[:key]
        type.option = params[:option]
        type.values = ParameterStringFilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ParameterStringFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterStringFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParameterStringFilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ParameterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ParameterVersionLabelLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterVersionLabelLimitExceeded, context: context)
        type = Types::ParameterVersionLabelLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module ParameterVersionNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterVersionNotFound, context: context)
        type = Types::ParameterVersionNotFound.new
        type.message = params[:message]
        type
      end
    end

    module Parameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ParameterValueList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ParametersFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParametersFilter, context: context)
        type = Types::ParametersFilter.new
        type.key = params[:key]
        type.values = ParametersFilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ParametersFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParametersFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParametersFilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Patch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Patch, context: context)
        type = Types::Patch.new
        type.id = params[:id]
        type.release_date = params[:release_date]
        type.title = params[:title]
        type.description = params[:description]
        type.content_url = params[:content_url]
        type.vendor = params[:vendor]
        type.product_family = params[:product_family]
        type.product = params[:product]
        type.classification = params[:classification]
        type.msrc_severity = params[:msrc_severity]
        type.kb_number = params[:kb_number]
        type.msrc_number = params[:msrc_number]
        type.language = params[:language]
        type.advisory_ids = PatchAdvisoryIdList.build(params[:advisory_ids], context: "#{context}[:advisory_ids]") unless params[:advisory_ids].nil?
        type.bugzilla_ids = PatchBugzillaIdList.build(params[:bugzilla_ids], context: "#{context}[:bugzilla_ids]") unless params[:bugzilla_ids].nil?
        type.cve_ids = PatchCVEIdList.build(params[:cve_ids], context: "#{context}[:cve_ids]") unless params[:cve_ids].nil?
        type.name = params[:name]
        type.epoch = params[:epoch]
        type.version = params[:version]
        type.release = params[:release]
        type.arch = params[:arch]
        type.severity = params[:severity]
        type.repository = params[:repository]
        type
      end
    end

    module PatchAdvisoryIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PatchBaselineIdentity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PatchBaselineIdentity, context: context)
        type = Types::PatchBaselineIdentity.new
        type.baseline_id = params[:baseline_id]
        type.baseline_name = params[:baseline_name]
        type.operating_system = params[:operating_system]
        type.baseline_description = params[:baseline_description]
        type.default_baseline = params[:default_baseline]
        type
      end
    end

    module PatchBaselineIdentityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PatchBaselineIdentity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PatchBugzillaIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PatchCVEIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PatchComplianceData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PatchComplianceData, context: context)
        type = Types::PatchComplianceData.new
        type.title = params[:title]
        type.kb_id = params[:kb_id]
        type.classification = params[:classification]
        type.severity = params[:severity]
        type.state = params[:state]
        type.installed_time = params[:installed_time]
        type.cve_ids = params[:cve_ids]
        type
      end
    end

    module PatchComplianceDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PatchComplianceData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PatchFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PatchFilter, context: context)
        type = Types::PatchFilter.new
        type.key = params[:key]
        type.values = PatchFilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module PatchFilterGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PatchFilterGroup, context: context)
        type = Types::PatchFilterGroup.new
        type.patch_filters = PatchFilterList.build(params[:patch_filters], context: "#{context}[:patch_filters]") unless params[:patch_filters].nil?
        type
      end
    end

    module PatchFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PatchFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PatchFilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PatchGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PatchGroupPatchBaselineMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PatchGroupPatchBaselineMapping, context: context)
        type = Types::PatchGroupPatchBaselineMapping.new
        type.patch_group = params[:patch_group]
        type.baseline_identity = PatchBaselineIdentity.build(params[:baseline_identity], context: "#{context}[:baseline_identity]") unless params[:baseline_identity].nil?
        type
      end
    end

    module PatchGroupPatchBaselineMappingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PatchGroupPatchBaselineMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PatchIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PatchList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Patch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PatchOrchestratorFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PatchOrchestratorFilter, context: context)
        type = Types::PatchOrchestratorFilter.new
        type.key = params[:key]
        type.values = PatchOrchestratorFilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module PatchOrchestratorFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PatchOrchestratorFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PatchOrchestratorFilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PatchPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PatchPropertyEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PatchPropertyEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PatchRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PatchRule, context: context)
        type = Types::PatchRule.new
        type.patch_filter_group = PatchFilterGroup.build(params[:patch_filter_group], context: "#{context}[:patch_filter_group]") unless params[:patch_filter_group].nil?
        type.compliance_level = params[:compliance_level]
        type.approve_after_days = params[:approve_after_days]
        type.approve_until_date = params[:approve_until_date]
        type.enable_non_security = params[:enable_non_security]
        type
      end
    end

    module PatchRuleGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PatchRuleGroup, context: context)
        type = Types::PatchRuleGroup.new
        type.patch_rules = PatchRuleList.build(params[:patch_rules], context: "#{context}[:patch_rules]") unless params[:patch_rules].nil?
        type
      end
    end

    module PatchRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PatchRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PatchSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PatchSource, context: context)
        type = Types::PatchSource.new
        type.name = params[:name]
        type.products = PatchSourceProductList.build(params[:products], context: "#{context}[:products]") unless params[:products].nil?
        type.configuration = params[:configuration]
        type
      end
    end

    module PatchSourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PatchSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PatchSourceProductList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PatchStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PatchStatus, context: context)
        type = Types::PatchStatus.new
        type.deployment_status = params[:deployment_status]
        type.compliance_level = params[:compliance_level]
        type.approval_date = params[:approval_date]
        type
      end
    end

    module PlatformTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PoliciesLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PoliciesLimitExceededException, context: context)
        type = Types::PoliciesLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ProgressCounters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProgressCounters, context: context)
        type = Types::ProgressCounters.new
        type.total_steps = params[:total_steps]
        type.success_steps = params[:success_steps]
        type.failed_steps = params[:failed_steps]
        type.cancelled_steps = params[:cancelled_steps]
        type.timed_out_steps = params[:timed_out_steps]
        type
      end
    end

    module PutComplianceItemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutComplianceItemsInput, context: context)
        type = Types::PutComplianceItemsInput.new
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.compliance_type = params[:compliance_type]
        type.execution_summary = ComplianceExecutionSummary.build(params[:execution_summary], context: "#{context}[:execution_summary]") unless params[:execution_summary].nil?
        type.items = ComplianceItemEntryList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.item_content_hash = params[:item_content_hash]
        type.upload_type = params[:upload_type]
        type
      end
    end

    module PutComplianceItemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutComplianceItemsOutput, context: context)
        type = Types::PutComplianceItemsOutput.new
        type
      end
    end

    module PutInventoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutInventoryInput, context: context)
        type = Types::PutInventoryInput.new
        type.instance_id = params[:instance_id]
        type.items = InventoryItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module PutInventoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutInventoryOutput, context: context)
        type = Types::PutInventoryOutput.new
        type.message = params[:message]
        type
      end
    end

    module PutParameterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutParameterInput, context: context)
        type = Types::PutParameterInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.value = params[:value]
        type.type = params[:type]
        type.key_id = params[:key_id]
        type.overwrite = params[:overwrite]
        type.allowed_pattern = params[:allowed_pattern]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.tier = params[:tier]
        type.policies = params[:policies]
        type.data_type = params[:data_type]
        type
      end
    end

    module PutParameterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutParameterOutput, context: context)
        type = Types::PutParameterOutput.new
        type.version = params[:version]
        type.tier = params[:tier]
        type
      end
    end

    module Regions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RegisterDefaultPatchBaselineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterDefaultPatchBaselineInput, context: context)
        type = Types::RegisterDefaultPatchBaselineInput.new
        type.baseline_id = params[:baseline_id]
        type
      end
    end

    module RegisterDefaultPatchBaselineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterDefaultPatchBaselineOutput, context: context)
        type = Types::RegisterDefaultPatchBaselineOutput.new
        type.baseline_id = params[:baseline_id]
        type
      end
    end

    module RegisterPatchBaselineForPatchGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterPatchBaselineForPatchGroupInput, context: context)
        type = Types::RegisterPatchBaselineForPatchGroupInput.new
        type.baseline_id = params[:baseline_id]
        type.patch_group = params[:patch_group]
        type
      end
    end

    module RegisterPatchBaselineForPatchGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterPatchBaselineForPatchGroupOutput, context: context)
        type = Types::RegisterPatchBaselineForPatchGroupOutput.new
        type.baseline_id = params[:baseline_id]
        type.patch_group = params[:patch_group]
        type
      end
    end

    module RegisterTargetWithMaintenanceWindowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterTargetWithMaintenanceWindowInput, context: context)
        type = Types::RegisterTargetWithMaintenanceWindowInput.new
        type.window_id = params[:window_id]
        type.resource_type = params[:resource_type]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.owner_information = params[:owner_information]
        type.name = params[:name]
        type.description = params[:description]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module RegisterTargetWithMaintenanceWindowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterTargetWithMaintenanceWindowOutput, context: context)
        type = Types::RegisterTargetWithMaintenanceWindowOutput.new
        type.window_target_id = params[:window_target_id]
        type
      end
    end

    module RegisterTaskWithMaintenanceWindowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterTaskWithMaintenanceWindowInput, context: context)
        type = Types::RegisterTaskWithMaintenanceWindowInput.new
        type.window_id = params[:window_id]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.task_arn = params[:task_arn]
        type.service_role_arn = params[:service_role_arn]
        type.task_type = params[:task_type]
        type.task_parameters = MaintenanceWindowTaskParameters.build(params[:task_parameters], context: "#{context}[:task_parameters]") unless params[:task_parameters].nil?
        type.task_invocation_parameters = MaintenanceWindowTaskInvocationParameters.build(params[:task_invocation_parameters], context: "#{context}[:task_invocation_parameters]") unless params[:task_invocation_parameters].nil?
        type.priority = params[:priority]
        type.max_concurrency = params[:max_concurrency]
        type.max_errors = params[:max_errors]
        type.logging_info = LoggingInfo.build(params[:logging_info], context: "#{context}[:logging_info]") unless params[:logging_info].nil?
        type.name = params[:name]
        type.description = params[:description]
        type.client_token = params[:client_token] || SecureRandom.uuid
        type.cutoff_behavior = params[:cutoff_behavior]
        type
      end
    end

    module RegisterTaskWithMaintenanceWindowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterTaskWithMaintenanceWindowOutput, context: context)
        type = Types::RegisterTaskWithMaintenanceWindowOutput.new
        type.window_task_id = params[:window_task_id]
        type
      end
    end

    module RegistrationMetadataItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegistrationMetadataItem, context: context)
        type = Types::RegistrationMetadataItem.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module RegistrationMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RegistrationMetadataItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RelatedOpsItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelatedOpsItem, context: context)
        type = Types::RelatedOpsItem.new
        type.ops_item_id = params[:ops_item_id]
        type
      end
    end

    module RelatedOpsItems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RelatedOpsItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemoveTagsFromResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromResourceInput, context: context)
        type = Types::RemoveTagsFromResourceInput.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.tag_keys = KeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module RemoveTagsFromResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromResourceOutput, context: context)
        type = Types::RemoveTagsFromResourceOutput.new
        type
      end
    end

    module ResetServiceSettingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetServiceSettingInput, context: context)
        type = Types::ResetServiceSettingInput.new
        type.setting_id = params[:setting_id]
        type
      end
    end

    module ResetServiceSettingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetServiceSettingOutput, context: context)
        type = Types::ResetServiceSettingOutput.new
        type.service_setting = ServiceSetting.build(params[:service_setting], context: "#{context}[:service_setting]") unless params[:service_setting].nil?
        type
      end
    end

    module ResolvedTargets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolvedTargets, context: context)
        type = Types::ResolvedTargets.new
        type.parameter_values = TargetParameterList.build(params[:parameter_values], context: "#{context}[:parameter_values]") unless params[:parameter_values].nil?
        type.truncated = params[:truncated]
        type
      end
    end

    module ResourceComplianceSummaryItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceComplianceSummaryItem, context: context)
        type = Types::ResourceComplianceSummaryItem.new
        type.compliance_type = params[:compliance_type]
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.status = params[:status]
        type.overall_severity = params[:overall_severity]
        type.execution_summary = ComplianceExecutionSummary.build(params[:execution_summary], context: "#{context}[:execution_summary]") unless params[:execution_summary].nil?
        type.compliant_summary = CompliantSummary.build(params[:compliant_summary], context: "#{context}[:compliant_summary]") unless params[:compliant_summary].nil?
        type.non_compliant_summary = NonCompliantSummary.build(params[:non_compliant_summary], context: "#{context}[:non_compliant_summary]") unless params[:non_compliant_summary].nil?
        type
      end
    end

    module ResourceComplianceSummaryItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceComplianceSummaryItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceDataSyncAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDataSyncAlreadyExistsException, context: context)
        type = Types::ResourceDataSyncAlreadyExistsException.new
        type.sync_name = params[:sync_name]
        type
      end
    end

    module ResourceDataSyncAwsOrganizationsSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDataSyncAwsOrganizationsSource, context: context)
        type = Types::ResourceDataSyncAwsOrganizationsSource.new
        type.organization_source_type = params[:organization_source_type]
        type.organizational_units = ResourceDataSyncOrganizationalUnitList.build(params[:organizational_units], context: "#{context}[:organizational_units]") unless params[:organizational_units].nil?
        type
      end
    end

    module ResourceDataSyncConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDataSyncConflictException, context: context)
        type = Types::ResourceDataSyncConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceDataSyncCountExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDataSyncCountExceededException, context: context)
        type = Types::ResourceDataSyncCountExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceDataSyncDestinationDataSharing
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDataSyncDestinationDataSharing, context: context)
        type = Types::ResourceDataSyncDestinationDataSharing.new
        type.destination_data_sharing_type = params[:destination_data_sharing_type]
        type
      end
    end

    module ResourceDataSyncInvalidConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDataSyncInvalidConfigurationException, context: context)
        type = Types::ResourceDataSyncInvalidConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceDataSyncItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDataSyncItem, context: context)
        type = Types::ResourceDataSyncItem.new
        type.sync_name = params[:sync_name]
        type.sync_type = params[:sync_type]
        type.sync_source = ResourceDataSyncSourceWithState.build(params[:sync_source], context: "#{context}[:sync_source]") unless params[:sync_source].nil?
        type.s3_destination = ResourceDataSyncS3Destination.build(params[:s3_destination], context: "#{context}[:s3_destination]") unless params[:s3_destination].nil?
        type.last_sync_time = params[:last_sync_time]
        type.last_successful_sync_time = params[:last_successful_sync_time]
        type.sync_last_modified_time = params[:sync_last_modified_time]
        type.last_status = params[:last_status]
        type.sync_created_time = params[:sync_created_time]
        type.last_sync_status_message = params[:last_sync_status_message]
        type
      end
    end

    module ResourceDataSyncItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceDataSyncItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceDataSyncNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDataSyncNotFoundException, context: context)
        type = Types::ResourceDataSyncNotFoundException.new
        type.sync_name = params[:sync_name]
        type.sync_type = params[:sync_type]
        type.message = params[:message]
        type
      end
    end

    module ResourceDataSyncOrganizationalUnit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDataSyncOrganizationalUnit, context: context)
        type = Types::ResourceDataSyncOrganizationalUnit.new
        type.organizational_unit_id = params[:organizational_unit_id]
        type
      end
    end

    module ResourceDataSyncOrganizationalUnitList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceDataSyncOrganizationalUnit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceDataSyncS3Destination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDataSyncS3Destination, context: context)
        type = Types::ResourceDataSyncS3Destination.new
        type.bucket_name = params[:bucket_name]
        type.prefix = params[:prefix]
        type.sync_format = params[:sync_format]
        type.region = params[:region]
        type.awskms_key_arn = params[:awskms_key_arn]
        type.destination_data_sharing = ResourceDataSyncDestinationDataSharing.build(params[:destination_data_sharing], context: "#{context}[:destination_data_sharing]") unless params[:destination_data_sharing].nil?
        type
      end
    end

    module ResourceDataSyncSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDataSyncSource, context: context)
        type = Types::ResourceDataSyncSource.new
        type.source_type = params[:source_type]
        type.aws_organizations_source = ResourceDataSyncAwsOrganizationsSource.build(params[:aws_organizations_source], context: "#{context}[:aws_organizations_source]") unless params[:aws_organizations_source].nil?
        type.source_regions = ResourceDataSyncSourceRegionList.build(params[:source_regions], context: "#{context}[:source_regions]") unless params[:source_regions].nil?
        type.include_future_regions = params[:include_future_regions]
        type.enable_all_ops_data_sources = params[:enable_all_ops_data_sources]
        type
      end
    end

    module ResourceDataSyncSourceRegionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceDataSyncSourceWithState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDataSyncSourceWithState, context: context)
        type = Types::ResourceDataSyncSourceWithState.new
        type.source_type = params[:source_type]
        type.aws_organizations_source = ResourceDataSyncAwsOrganizationsSource.build(params[:aws_organizations_source], context: "#{context}[:aws_organizations_source]") unless params[:aws_organizations_source].nil?
        type.source_regions = ResourceDataSyncSourceRegionList.build(params[:source_regions], context: "#{context}[:source_regions]") unless params[:source_regions].nil?
        type.include_future_regions = params[:include_future_regions]
        type.state = params[:state]
        type.enable_all_ops_data_sources = params[:enable_all_ops_data_sources]
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLimitExceededException, context: context)
        type = Types::ResourceLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ResultAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResultAttribute, context: context)
        type = Types::ResultAttribute.new
        type.type_name = params[:type_name]
        type
      end
    end

    module ResultAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResultAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResumeSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeSessionInput, context: context)
        type = Types::ResumeSessionInput.new
        type.session_id = params[:session_id]
        type
      end
    end

    module ResumeSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeSessionOutput, context: context)
        type = Types::ResumeSessionOutput.new
        type.session_id = params[:session_id]
        type.token_value = params[:token_value]
        type.stream_url = params[:stream_url]
        type
      end
    end

    module ReviewInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReviewInformation, context: context)
        type = Types::ReviewInformation.new
        type.reviewed_time = params[:reviewed_time]
        type.status = params[:status]
        type.reviewer = params[:reviewer]
        type
      end
    end

    module ReviewInformationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReviewInformation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Runbook
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Runbook, context: context)
        type = Types::Runbook.new
        type.document_name = params[:document_name]
        type.document_version = params[:document_version]
        type.parameters = AutomationParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.target_parameter_name = params[:target_parameter_name]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.target_maps = TargetMaps.build(params[:target_maps], context: "#{context}[:target_maps]") unless params[:target_maps].nil?
        type.max_concurrency = params[:max_concurrency]
        type.max_errors = params[:max_errors]
        type.target_locations = TargetLocations.build(params[:target_locations], context: "#{context}[:target_locations]") unless params[:target_locations].nil?
        type
      end
    end

    module Runbooks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Runbook.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3OutputLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3OutputLocation, context: context)
        type = Types::S3OutputLocation.new
        type.output_s3_region = params[:output_s3_region]
        type.output_s3_bucket_name = params[:output_s3_bucket_name]
        type.output_s3_key_prefix = params[:output_s3_key_prefix]
        type
      end
    end

    module S3OutputUrl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3OutputUrl, context: context)
        type = Types::S3OutputUrl.new
        type.output_url = params[:output_url]
        type
      end
    end

    module ScheduledWindowExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledWindowExecution, context: context)
        type = Types::ScheduledWindowExecution.new
        type.window_id = params[:window_id]
        type.name = params[:name]
        type.execution_time = params[:execution_time]
        type
      end
    end

    module ScheduledWindowExecutionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScheduledWindowExecution.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SendAutomationSignalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendAutomationSignalInput, context: context)
        type = Types::SendAutomationSignalInput.new
        type.automation_execution_id = params[:automation_execution_id]
        type.signal_type = params[:signal_type]
        type.payload = AutomationParameterMap.build(params[:payload], context: "#{context}[:payload]") unless params[:payload].nil?
        type
      end
    end

    module SendAutomationSignalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendAutomationSignalOutput, context: context)
        type = Types::SendAutomationSignalOutput.new
        type
      end
    end

    module SendCommandInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendCommandInput, context: context)
        type = Types::SendCommandInput.new
        type.instance_ids = InstanceIdList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.document_name = params[:document_name]
        type.document_version = params[:document_version]
        type.document_hash = params[:document_hash]
        type.document_hash_type = params[:document_hash_type]
        type.timeout_seconds = params[:timeout_seconds]
        type.comment = params[:comment]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.output_s3_region = params[:output_s3_region]
        type.output_s3_bucket_name = params[:output_s3_bucket_name]
        type.output_s3_key_prefix = params[:output_s3_key_prefix]
        type.max_concurrency = params[:max_concurrency]
        type.max_errors = params[:max_errors]
        type.service_role_arn = params[:service_role_arn]
        type.notification_config = NotificationConfig.build(params[:notification_config], context: "#{context}[:notification_config]") unless params[:notification_config].nil?
        type.cloud_watch_output_config = CloudWatchOutputConfig.build(params[:cloud_watch_output_config], context: "#{context}[:cloud_watch_output_config]") unless params[:cloud_watch_output_config].nil?
        type
      end
    end

    module SendCommandOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendCommandOutput, context: context)
        type = Types::SendCommandOutput.new
        type.command = Command.build(params[:command], context: "#{context}[:command]") unless params[:command].nil?
        type
      end
    end

    module ServiceSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceSetting, context: context)
        type = Types::ServiceSetting.new
        type.setting_id = params[:setting_id]
        type.setting_value = params[:setting_value]
        type.last_modified_date = params[:last_modified_date]
        type.last_modified_user = params[:last_modified_user]
        type.arn = params[:arn]
        type.status = params[:status]
        type
      end
    end

    module ServiceSettingNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceSettingNotFound, context: context)
        type = Types::ServiceSettingNotFound.new
        type.message = params[:message]
        type
      end
    end

    module Session
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Session, context: context)
        type = Types::Session.new
        type.session_id = params[:session_id]
        type.target = params[:target]
        type.status = params[:status]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.document_name = params[:document_name]
        type.owner = params[:owner]
        type.reason = params[:reason]
        type.details = params[:details]
        type.output_url = SessionManagerOutputUrl.build(params[:output_url], context: "#{context}[:output_url]") unless params[:output_url].nil?
        type.max_session_duration = params[:max_session_duration]
        type
      end
    end

    module SessionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionFilter, context: context)
        type = Types::SessionFilter.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module SessionFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SessionFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module SessionManagerOutputUrl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionManagerOutputUrl, context: context)
        type = Types::SessionManagerOutputUrl.new
        type.s3_output_url = params[:s3_output_url]
        type.cloud_watch_output_url = params[:cloud_watch_output_url]
        type
      end
    end

    module SessionManagerParameterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SessionManagerParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = SessionManagerParameterValueList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module SeveritySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SeveritySummary, context: context)
        type = Types::SeveritySummary.new
        type.critical_count = params[:critical_count]
        type.high_count = params[:high_count]
        type.medium_count = params[:medium_count]
        type.low_count = params[:low_count]
        type.informational_count = params[:informational_count]
        type.unspecified_count = params[:unspecified_count]
        type
      end
    end

    module StartAssociationsOnceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAssociationsOnceInput, context: context)
        type = Types::StartAssociationsOnceInput.new
        type.association_ids = AssociationIdList.build(params[:association_ids], context: "#{context}[:association_ids]") unless params[:association_ids].nil?
        type
      end
    end

    module StartAssociationsOnceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAssociationsOnceOutput, context: context)
        type = Types::StartAssociationsOnceOutput.new
        type
      end
    end

    module StartAutomationExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAutomationExecutionInput, context: context)
        type = Types::StartAutomationExecutionInput.new
        type.document_name = params[:document_name]
        type.document_version = params[:document_version]
        type.parameters = AutomationParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.client_token = params[:client_token]
        type.mode = params[:mode]
        type.target_parameter_name = params[:target_parameter_name]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.target_maps = TargetMaps.build(params[:target_maps], context: "#{context}[:target_maps]") unless params[:target_maps].nil?
        type.max_concurrency = params[:max_concurrency]
        type.max_errors = params[:max_errors]
        type.target_locations = TargetLocations.build(params[:target_locations], context: "#{context}[:target_locations]") unless params[:target_locations].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartAutomationExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAutomationExecutionOutput, context: context)
        type = Types::StartAutomationExecutionOutput.new
        type.automation_execution_id = params[:automation_execution_id]
        type
      end
    end

    module StartChangeRequestExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartChangeRequestExecutionInput, context: context)
        type = Types::StartChangeRequestExecutionInput.new
        type.scheduled_time = params[:scheduled_time]
        type.document_name = params[:document_name]
        type.document_version = params[:document_version]
        type.parameters = AutomationParameterMap.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.change_request_name = params[:change_request_name]
        type.client_token = params[:client_token]
        type.auto_approve = params[:auto_approve]
        type.runbooks = Runbooks.build(params[:runbooks], context: "#{context}[:runbooks]") unless params[:runbooks].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.scheduled_end_time = params[:scheduled_end_time]
        type.change_details = params[:change_details]
        type
      end
    end

    module StartChangeRequestExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartChangeRequestExecutionOutput, context: context)
        type = Types::StartChangeRequestExecutionOutput.new
        type.automation_execution_id = params[:automation_execution_id]
        type
      end
    end

    module StartSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSessionInput, context: context)
        type = Types::StartSessionInput.new
        type.target = params[:target]
        type.document_name = params[:document_name]
        type.reason = params[:reason]
        type.parameters = SessionManagerParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module StartSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSessionOutput, context: context)
        type = Types::StartSessionOutput.new
        type.session_id = params[:session_id]
        type.token_value = params[:token_value]
        type.stream_url = params[:stream_url]
        type
      end
    end

    module StatusUnchanged
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatusUnchanged, context: context)
        type = Types::StatusUnchanged.new
        type
      end
    end

    module StepExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StepExecution, context: context)
        type = Types::StepExecution.new
        type.step_name = params[:step_name]
        type.action = params[:action]
        type.timeout_seconds = params[:timeout_seconds]
        type.on_failure = params[:on_failure]
        type.max_attempts = params[:max_attempts]
        type.execution_start_time = params[:execution_start_time]
        type.execution_end_time = params[:execution_end_time]
        type.step_status = params[:step_status]
        type.response_code = params[:response_code]
        type.inputs = NormalStringMap.build(params[:inputs], context: "#{context}[:inputs]") unless params[:inputs].nil?
        type.outputs = AutomationParameterMap.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.response = params[:response]
        type.failure_message = params[:failure_message]
        type.failure_details = FailureDetails.build(params[:failure_details], context: "#{context}[:failure_details]") unless params[:failure_details].nil?
        type.step_execution_id = params[:step_execution_id]
        type.overridden_parameters = AutomationParameterMap.build(params[:overridden_parameters], context: "#{context}[:overridden_parameters]") unless params[:overridden_parameters].nil?
        type.is_end = params[:is_end]
        type.next_step = params[:next_step]
        type.is_critical = params[:is_critical]
        type.valid_next_steps = ValidNextStepList.build(params[:valid_next_steps], context: "#{context}[:valid_next_steps]") unless params[:valid_next_steps].nil?
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.target_location = TargetLocation.build(params[:target_location], context: "#{context}[:target_location]") unless params[:target_location].nil?
        type
      end
    end

    module StepExecutionFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StepExecutionFilter, context: context)
        type = Types::StepExecutionFilter.new
        type.key = params[:key]
        type.values = StepExecutionFilterValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module StepExecutionFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StepExecutionFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StepExecutionFilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StepExecutionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StepExecution.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StopAutomationExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopAutomationExecutionInput, context: context)
        type = Types::StopAutomationExecutionInput.new
        type.automation_execution_id = params[:automation_execution_id]
        type.type = params[:type]
        type
      end
    end

    module StopAutomationExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopAutomationExecutionOutput, context: context)
        type = Types::StopAutomationExecutionOutput.new
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

    module SubTypeCountLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubTypeCountLimitExceededException, context: context)
        type = Types::SubTypeCountLimitExceededException.new
        type.message = params[:message]
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

    module Target
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Target, context: context)
        type = Types::Target.new
        type.key = params[:key]
        type.values = TargetValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module TargetInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetInUseException, context: context)
        type = Types::TargetInUseException.new
        type.message = params[:message]
        type
      end
    end

    module TargetLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetLocation, context: context)
        type = Types::TargetLocation.new
        type.accounts = Accounts.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type.regions = Regions.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type.target_location_max_concurrency = params[:target_location_max_concurrency]
        type.target_location_max_errors = params[:target_location_max_errors]
        type.execution_role_name = params[:execution_role_name]
        type
      end
    end

    module TargetLocations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetLocation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = TargetMapValueList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module TargetMapValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TargetMaps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetMap.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetNotConnected
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetNotConnected, context: context)
        type = Types::TargetNotConnected.new
        type.message = params[:message]
        type
      end
    end

    module TargetParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TargetValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Targets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Target.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TerminateSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateSessionInput, context: context)
        type = Types::TerminateSessionInput.new
        type.session_id = params[:session_id]
        type
      end
    end

    module TerminateSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateSessionOutput, context: context)
        type = Types::TerminateSessionOutput.new
        type.session_id = params[:session_id]
        type
      end
    end

    module TooManyTagsError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsError, context: context)
        type = Types::TooManyTagsError.new
        type
      end
    end

    module TooManyUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyUpdates, context: context)
        type = Types::TooManyUpdates.new
        type.message = params[:message]
        type
      end
    end

    module TotalSizeLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TotalSizeLimitExceededException, context: context)
        type = Types::TotalSizeLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module UnlabelParameterVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnlabelParameterVersionInput, context: context)
        type = Types::UnlabelParameterVersionInput.new
        type.name = params[:name]
        type.parameter_version = params[:parameter_version]
        type.labels = ParameterLabelList.build(params[:labels], context: "#{context}[:labels]") unless params[:labels].nil?
        type
      end
    end

    module UnlabelParameterVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnlabelParameterVersionOutput, context: context)
        type = Types::UnlabelParameterVersionOutput.new
        type.removed_labels = ParameterLabelList.build(params[:removed_labels], context: "#{context}[:removed_labels]") unless params[:removed_labels].nil?
        type.invalid_labels = ParameterLabelList.build(params[:invalid_labels], context: "#{context}[:invalid_labels]") unless params[:invalid_labels].nil?
        type
      end
    end

    module UnsupportedCalendarException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedCalendarException, context: context)
        type = Types::UnsupportedCalendarException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedFeatureRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedFeatureRequiredException, context: context)
        type = Types::UnsupportedFeatureRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedInventoryItemContextException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedInventoryItemContextException, context: context)
        type = Types::UnsupportedInventoryItemContextException.new
        type.type_name = params[:type_name]
        type.message = params[:message]
        type
      end
    end

    module UnsupportedInventorySchemaVersionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedInventorySchemaVersionException, context: context)
        type = Types::UnsupportedInventorySchemaVersionException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedOperatingSystem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedOperatingSystem, context: context)
        type = Types::UnsupportedOperatingSystem.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedParameterType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedParameterType, context: context)
        type = Types::UnsupportedParameterType.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedPlatformType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedPlatformType, context: context)
        type = Types::UnsupportedPlatformType.new
        type.message = params[:message]
        type
      end
    end

    module UpdateAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssociationInput, context: context)
        type = Types::UpdateAssociationInput.new
        type.association_id = params[:association_id]
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.document_version = params[:document_version]
        type.schedule_expression = params[:schedule_expression]
        type.output_location = InstanceAssociationOutputLocation.build(params[:output_location], context: "#{context}[:output_location]") unless params[:output_location].nil?
        type.name = params[:name]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.association_name = params[:association_name]
        type.association_version = params[:association_version]
        type.automation_target_parameter_name = params[:automation_target_parameter_name]
        type.max_errors = params[:max_errors]
        type.max_concurrency = params[:max_concurrency]
        type.compliance_severity = params[:compliance_severity]
        type.sync_compliance = params[:sync_compliance]
        type.apply_only_at_cron_interval = params[:apply_only_at_cron_interval]
        type.calendar_names = CalendarNameOrARNList.build(params[:calendar_names], context: "#{context}[:calendar_names]") unless params[:calendar_names].nil?
        type.target_locations = TargetLocations.build(params[:target_locations], context: "#{context}[:target_locations]") unless params[:target_locations].nil?
        type.schedule_offset = params[:schedule_offset]
        type.target_maps = TargetMaps.build(params[:target_maps], context: "#{context}[:target_maps]") unless params[:target_maps].nil?
        type
      end
    end

    module UpdateAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssociationOutput, context: context)
        type = Types::UpdateAssociationOutput.new
        type.association_description = AssociationDescription.build(params[:association_description], context: "#{context}[:association_description]") unless params[:association_description].nil?
        type
      end
    end

    module UpdateAssociationStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssociationStatusInput, context: context)
        type = Types::UpdateAssociationStatusInput.new
        type.name = params[:name]
        type.instance_id = params[:instance_id]
        type.association_status = AssociationStatus.build(params[:association_status], context: "#{context}[:association_status]") unless params[:association_status].nil?
        type
      end
    end

    module UpdateAssociationStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssociationStatusOutput, context: context)
        type = Types::UpdateAssociationStatusOutput.new
        type.association_description = AssociationDescription.build(params[:association_description], context: "#{context}[:association_description]") unless params[:association_description].nil?
        type
      end
    end

    module UpdateDocumentDefaultVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDocumentDefaultVersionInput, context: context)
        type = Types::UpdateDocumentDefaultVersionInput.new
        type.name = params[:name]
        type.document_version = params[:document_version]
        type
      end
    end

    module UpdateDocumentDefaultVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDocumentDefaultVersionOutput, context: context)
        type = Types::UpdateDocumentDefaultVersionOutput.new
        type.description = DocumentDefaultVersionDescription.build(params[:description], context: "#{context}[:description]") unless params[:description].nil?
        type
      end
    end

    module UpdateDocumentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDocumentInput, context: context)
        type = Types::UpdateDocumentInput.new
        type.content = params[:content]
        type.attachments = AttachmentsSourceList.build(params[:attachments], context: "#{context}[:attachments]") unless params[:attachments].nil?
        type.name = params[:name]
        type.display_name = params[:display_name]
        type.version_name = params[:version_name]
        type.document_version = params[:document_version]
        type.document_format = params[:document_format]
        type.target_type = params[:target_type]
        type
      end
    end

    module UpdateDocumentMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDocumentMetadataInput, context: context)
        type = Types::UpdateDocumentMetadataInput.new
        type.name = params[:name]
        type.document_version = params[:document_version]
        type.document_reviews = DocumentReviews.build(params[:document_reviews], context: "#{context}[:document_reviews]") unless params[:document_reviews].nil?
        type
      end
    end

    module UpdateDocumentMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDocumentMetadataOutput, context: context)
        type = Types::UpdateDocumentMetadataOutput.new
        type
      end
    end

    module UpdateDocumentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDocumentOutput, context: context)
        type = Types::UpdateDocumentOutput.new
        type.document_description = DocumentDescription.build(params[:document_description], context: "#{context}[:document_description]") unless params[:document_description].nil?
        type
      end
    end

    module UpdateMaintenanceWindowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMaintenanceWindowInput, context: context)
        type = Types::UpdateMaintenanceWindowInput.new
        type.window_id = params[:window_id]
        type.name = params[:name]
        type.description = params[:description]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.schedule = params[:schedule]
        type.schedule_timezone = params[:schedule_timezone]
        type.schedule_offset = params[:schedule_offset]
        type.duration = params[:duration]
        type.cutoff = params[:cutoff]
        type.allow_unassociated_targets = params[:allow_unassociated_targets]
        type.enabled = params[:enabled]
        type.replace = params[:replace]
        type
      end
    end

    module UpdateMaintenanceWindowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMaintenanceWindowOutput, context: context)
        type = Types::UpdateMaintenanceWindowOutput.new
        type.window_id = params[:window_id]
        type.name = params[:name]
        type.description = params[:description]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.schedule = params[:schedule]
        type.schedule_timezone = params[:schedule_timezone]
        type.schedule_offset = params[:schedule_offset]
        type.duration = params[:duration]
        type.cutoff = params[:cutoff]
        type.allow_unassociated_targets = params[:allow_unassociated_targets]
        type.enabled = params[:enabled]
        type
      end
    end

    module UpdateMaintenanceWindowTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMaintenanceWindowTargetInput, context: context)
        type = Types::UpdateMaintenanceWindowTargetInput.new
        type.window_id = params[:window_id]
        type.window_target_id = params[:window_target_id]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.owner_information = params[:owner_information]
        type.name = params[:name]
        type.description = params[:description]
        type.replace = params[:replace]
        type
      end
    end

    module UpdateMaintenanceWindowTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMaintenanceWindowTargetOutput, context: context)
        type = Types::UpdateMaintenanceWindowTargetOutput.new
        type.window_id = params[:window_id]
        type.window_target_id = params[:window_target_id]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.owner_information = params[:owner_information]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdateMaintenanceWindowTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMaintenanceWindowTaskInput, context: context)
        type = Types::UpdateMaintenanceWindowTaskInput.new
        type.window_id = params[:window_id]
        type.window_task_id = params[:window_task_id]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.task_arn = params[:task_arn]
        type.service_role_arn = params[:service_role_arn]
        type.task_parameters = MaintenanceWindowTaskParameters.build(params[:task_parameters], context: "#{context}[:task_parameters]") unless params[:task_parameters].nil?
        type.task_invocation_parameters = MaintenanceWindowTaskInvocationParameters.build(params[:task_invocation_parameters], context: "#{context}[:task_invocation_parameters]") unless params[:task_invocation_parameters].nil?
        type.priority = params[:priority]
        type.max_concurrency = params[:max_concurrency]
        type.max_errors = params[:max_errors]
        type.logging_info = LoggingInfo.build(params[:logging_info], context: "#{context}[:logging_info]") unless params[:logging_info].nil?
        type.name = params[:name]
        type.description = params[:description]
        type.replace = params[:replace]
        type.cutoff_behavior = params[:cutoff_behavior]
        type
      end
    end

    module UpdateMaintenanceWindowTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMaintenanceWindowTaskOutput, context: context)
        type = Types::UpdateMaintenanceWindowTaskOutput.new
        type.window_id = params[:window_id]
        type.window_task_id = params[:window_task_id]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.task_arn = params[:task_arn]
        type.service_role_arn = params[:service_role_arn]
        type.task_parameters = MaintenanceWindowTaskParameters.build(params[:task_parameters], context: "#{context}[:task_parameters]") unless params[:task_parameters].nil?
        type.task_invocation_parameters = MaintenanceWindowTaskInvocationParameters.build(params[:task_invocation_parameters], context: "#{context}[:task_invocation_parameters]") unless params[:task_invocation_parameters].nil?
        type.priority = params[:priority]
        type.max_concurrency = params[:max_concurrency]
        type.max_errors = params[:max_errors]
        type.logging_info = LoggingInfo.build(params[:logging_info], context: "#{context}[:logging_info]") unless params[:logging_info].nil?
        type.name = params[:name]
        type.description = params[:description]
        type.cutoff_behavior = params[:cutoff_behavior]
        type
      end
    end

    module UpdateManagedInstanceRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateManagedInstanceRoleInput, context: context)
        type = Types::UpdateManagedInstanceRoleInput.new
        type.instance_id = params[:instance_id]
        type.iam_role = params[:iam_role]
        type
      end
    end

    module UpdateManagedInstanceRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateManagedInstanceRoleOutput, context: context)
        type = Types::UpdateManagedInstanceRoleOutput.new
        type
      end
    end

    module UpdateOpsItemInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOpsItemInput, context: context)
        type = Types::UpdateOpsItemInput.new
        type.description = params[:description]
        type.operational_data = OpsItemOperationalData.build(params[:operational_data], context: "#{context}[:operational_data]") unless params[:operational_data].nil?
        type.operational_data_to_delete = OpsItemOpsDataKeysList.build(params[:operational_data_to_delete], context: "#{context}[:operational_data_to_delete]") unless params[:operational_data_to_delete].nil?
        type.notifications = OpsItemNotifications.build(params[:notifications], context: "#{context}[:notifications]") unless params[:notifications].nil?
        type.priority = params[:priority]
        type.related_ops_items = RelatedOpsItems.build(params[:related_ops_items], context: "#{context}[:related_ops_items]") unless params[:related_ops_items].nil?
        type.status = params[:status]
        type.ops_item_id = params[:ops_item_id]
        type.title = params[:title]
        type.category = params[:category]
        type.severity = params[:severity]
        type.actual_start_time = params[:actual_start_time]
        type.actual_end_time = params[:actual_end_time]
        type.planned_start_time = params[:planned_start_time]
        type.planned_end_time = params[:planned_end_time]
        type
      end
    end

    module UpdateOpsItemOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOpsItemOutput, context: context)
        type = Types::UpdateOpsItemOutput.new
        type
      end
    end

    module UpdateOpsMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOpsMetadataInput, context: context)
        type = Types::UpdateOpsMetadataInput.new
        type.ops_metadata_arn = params[:ops_metadata_arn]
        type.metadata_to_update = MetadataMap.build(params[:metadata_to_update], context: "#{context}[:metadata_to_update]") unless params[:metadata_to_update].nil?
        type.keys_to_delete = MetadataKeysToDeleteList.build(params[:keys_to_delete], context: "#{context}[:keys_to_delete]") unless params[:keys_to_delete].nil?
        type
      end
    end

    module UpdateOpsMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOpsMetadataOutput, context: context)
        type = Types::UpdateOpsMetadataOutput.new
        type.ops_metadata_arn = params[:ops_metadata_arn]
        type
      end
    end

    module UpdatePatchBaselineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePatchBaselineInput, context: context)
        type = Types::UpdatePatchBaselineInput.new
        type.baseline_id = params[:baseline_id]
        type.name = params[:name]
        type.global_filters = PatchFilterGroup.build(params[:global_filters], context: "#{context}[:global_filters]") unless params[:global_filters].nil?
        type.approval_rules = PatchRuleGroup.build(params[:approval_rules], context: "#{context}[:approval_rules]") unless params[:approval_rules].nil?
        type.approved_patches = PatchIdList.build(params[:approved_patches], context: "#{context}[:approved_patches]") unless params[:approved_patches].nil?
        type.approved_patches_compliance_level = params[:approved_patches_compliance_level]
        type.approved_patches_enable_non_security = params[:approved_patches_enable_non_security]
        type.rejected_patches = PatchIdList.build(params[:rejected_patches], context: "#{context}[:rejected_patches]") unless params[:rejected_patches].nil?
        type.rejected_patches_action = params[:rejected_patches_action]
        type.description = params[:description]
        type.sources = PatchSourceList.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type.replace = params[:replace]
        type
      end
    end

    module UpdatePatchBaselineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePatchBaselineOutput, context: context)
        type = Types::UpdatePatchBaselineOutput.new
        type.baseline_id = params[:baseline_id]
        type.name = params[:name]
        type.operating_system = params[:operating_system]
        type.global_filters = PatchFilterGroup.build(params[:global_filters], context: "#{context}[:global_filters]") unless params[:global_filters].nil?
        type.approval_rules = PatchRuleGroup.build(params[:approval_rules], context: "#{context}[:approval_rules]") unless params[:approval_rules].nil?
        type.approved_patches = PatchIdList.build(params[:approved_patches], context: "#{context}[:approved_patches]") unless params[:approved_patches].nil?
        type.approved_patches_compliance_level = params[:approved_patches_compliance_level]
        type.approved_patches_enable_non_security = params[:approved_patches_enable_non_security]
        type.rejected_patches = PatchIdList.build(params[:rejected_patches], context: "#{context}[:rejected_patches]") unless params[:rejected_patches].nil?
        type.rejected_patches_action = params[:rejected_patches_action]
        type.created_date = params[:created_date]
        type.modified_date = params[:modified_date]
        type.description = params[:description]
        type.sources = PatchSourceList.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type
      end
    end

    module UpdateResourceDataSyncInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceDataSyncInput, context: context)
        type = Types::UpdateResourceDataSyncInput.new
        type.sync_name = params[:sync_name]
        type.sync_type = params[:sync_type]
        type.sync_source = ResourceDataSyncSource.build(params[:sync_source], context: "#{context}[:sync_source]") unless params[:sync_source].nil?
        type
      end
    end

    module UpdateResourceDataSyncOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceDataSyncOutput, context: context)
        type = Types::UpdateResourceDataSyncOutput.new
        type
      end
    end

    module UpdateServiceSettingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceSettingInput, context: context)
        type = Types::UpdateServiceSettingInput.new
        type.setting_id = params[:setting_id]
        type.setting_value = params[:setting_value]
        type
      end
    end

    module UpdateServiceSettingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateServiceSettingOutput, context: context)
        type = Types::UpdateServiceSettingOutput.new
        type
      end
    end

    module ValidNextStepList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
