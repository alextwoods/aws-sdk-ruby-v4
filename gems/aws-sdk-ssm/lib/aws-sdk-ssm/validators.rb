# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::SSM
  module Validators

    class AccountIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AccountSharingInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountSharingInfo, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:shared_document_version], ::String, context: "#{context}[:shared_document_version]")
      end
    end

    class AccountSharingInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AccountSharingInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Accounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Activation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Activation, context: context)
        Hearth::Validator.validate!(input[:activation_id], ::String, context: "#{context}[:activation_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:default_instance_name], ::String, context: "#{context}[:default_instance_name]")
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        Hearth::Validator.validate!(input[:registration_limit], ::Integer, context: "#{context}[:registration_limit]")
        Hearth::Validator.validate!(input[:registrations_count], ::Integer, context: "#{context}[:registrations_count]")
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
        Hearth::Validator.validate!(input[:expired], ::TrueClass, ::FalseClass, context: "#{context}[:expired]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ActivationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Activation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AddTagsToResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AddTagsToResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToResourceOutput, context: context)
      end
    end

    class AlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssociateOpsItemRelatedItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateOpsItemRelatedItemInput, context: context)
        Hearth::Validator.validate!(input[:ops_item_id], ::String, context: "#{context}[:ops_item_id]")
        Hearth::Validator.validate!(input[:association_type], ::String, context: "#{context}[:association_type]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_uri], ::String, context: "#{context}[:resource_uri]")
      end
    end

    class AssociateOpsItemRelatedItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateOpsItemRelatedItemOutput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
      end
    end

    class AssociatedInstances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatedInstances, context: context)
      end
    end

    class Association
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Association, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:association_version], ::String, context: "#{context}[:association_version]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:last_execution_date], ::Time, context: "#{context}[:last_execution_date]")
        AssociationOverview.validate!(input[:overview], context: "#{context}[:overview]") unless input[:overview].nil?
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
        Hearth::Validator.validate!(input[:association_name], ::String, context: "#{context}[:association_name]")
        Hearth::Validator.validate!(input[:schedule_offset], ::Integer, context: "#{context}[:schedule_offset]")
        TargetMaps.validate!(input[:target_maps], context: "#{context}[:target_maps]") unless input[:target_maps].nil?
      end
    end

    class AssociationAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociationAlreadyExists, context: context)
      end
    end

    class AssociationDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociationDescription, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:association_version], ::String, context: "#{context}[:association_version]")
        Hearth::Validator.validate!(input[:date], ::Time, context: "#{context}[:date]")
        Hearth::Validator.validate!(input[:last_update_association_date], ::Time, context: "#{context}[:last_update_association_date]")
        AssociationStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        AssociationOverview.validate!(input[:overview], context: "#{context}[:overview]") unless input[:overview].nil?
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:automation_target_parameter_name], ::String, context: "#{context}[:automation_target_parameter_name]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
        InstanceAssociationOutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
        Hearth::Validator.validate!(input[:last_execution_date], ::Time, context: "#{context}[:last_execution_date]")
        Hearth::Validator.validate!(input[:last_successful_execution_date], ::Time, context: "#{context}[:last_successful_execution_date]")
        Hearth::Validator.validate!(input[:association_name], ::String, context: "#{context}[:association_name]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:compliance_severity], ::String, context: "#{context}[:compliance_severity]")
        Hearth::Validator.validate!(input[:sync_compliance], ::String, context: "#{context}[:sync_compliance]")
        Hearth::Validator.validate!(input[:apply_only_at_cron_interval], ::TrueClass, ::FalseClass, context: "#{context}[:apply_only_at_cron_interval]")
        CalendarNameOrARNList.validate!(input[:calendar_names], context: "#{context}[:calendar_names]") unless input[:calendar_names].nil?
        TargetLocations.validate!(input[:target_locations], context: "#{context}[:target_locations]") unless input[:target_locations].nil?
        Hearth::Validator.validate!(input[:schedule_offset], ::Integer, context: "#{context}[:schedule_offset]")
        TargetMaps.validate!(input[:target_maps], context: "#{context}[:target_maps]") unless input[:target_maps].nil?
      end
    end

    class AssociationDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssociationDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociationDoesNotExist
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociationDoesNotExist, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssociationExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociationExecution, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:association_version], ::String, context: "#{context}[:association_version]")
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:detailed_status], ::String, context: "#{context}[:detailed_status]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_execution_date], ::Time, context: "#{context}[:last_execution_date]")
        Hearth::Validator.validate!(input[:resource_count_by_status], ::String, context: "#{context}[:resource_count_by_status]")
      end
    end

    class AssociationExecutionDoesNotExist
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociationExecutionDoesNotExist, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssociationExecutionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociationExecutionFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class AssociationExecutionFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssociationExecutionFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociationExecutionTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociationExecutionTarget, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:association_version], ::String, context: "#{context}[:association_version]")
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:detailed_status], ::String, context: "#{context}[:detailed_status]")
        Hearth::Validator.validate!(input[:last_execution_date], ::Time, context: "#{context}[:last_execution_date]")
        OutputSource.validate!(input[:output_source], context: "#{context}[:output_source]") unless input[:output_source].nil?
      end
    end

    class AssociationExecutionTargetsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociationExecutionTargetsFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AssociationExecutionTargetsFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssociationExecutionTargetsFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociationExecutionTargetsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssociationExecutionTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociationExecutionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssociationExecution.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociationFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociationFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AssociationFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssociationFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociationIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssociationLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociationLimitExceeded, context: context)
      end
    end

    class AssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Association.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociationOverview
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociationOverview, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:detailed_status], ::String, context: "#{context}[:detailed_status]")
        AssociationStatusAggregatedCount.validate!(input[:association_status_aggregated_count], context: "#{context}[:association_status_aggregated_count]") unless input[:association_status_aggregated_count].nil?
      end
    end

    class AssociationStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociationStatus, context: context)
        Hearth::Validator.validate!(input[:date], ::Time, context: "#{context}[:date]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:additional_info], ::String, context: "#{context}[:additional_info]")
      end
    end

    class AssociationStatusAggregatedCount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class AssociationVersionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociationVersionInfo, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:association_version], ::String, context: "#{context}[:association_version]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
        InstanceAssociationOutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
        Hearth::Validator.validate!(input[:association_name], ::String, context: "#{context}[:association_name]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:compliance_severity], ::String, context: "#{context}[:compliance_severity]")
        Hearth::Validator.validate!(input[:sync_compliance], ::String, context: "#{context}[:sync_compliance]")
        Hearth::Validator.validate!(input[:apply_only_at_cron_interval], ::TrueClass, ::FalseClass, context: "#{context}[:apply_only_at_cron_interval]")
        CalendarNameOrARNList.validate!(input[:calendar_names], context: "#{context}[:calendar_names]") unless input[:calendar_names].nil?
        TargetLocations.validate!(input[:target_locations], context: "#{context}[:target_locations]") unless input[:target_locations].nil?
        Hearth::Validator.validate!(input[:schedule_offset], ::Integer, context: "#{context}[:schedule_offset]")
        TargetMaps.validate!(input[:target_maps], context: "#{context}[:target_maps]") unless input[:target_maps].nil?
      end
    end

    class AssociationVersionLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociationVersionLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssociationVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssociationVersionInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttachmentContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachmentContent, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:size], ::Integer, context: "#{context}[:size]")
        Hearth::Validator.validate!(input[:member_hash], ::String, context: "#{context}[:member_hash]")
        Hearth::Validator.validate!(input[:hash_type], ::String, context: "#{context}[:hash_type]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class AttachmentContentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttachmentContent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttachmentInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachmentInformation, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AttachmentInformationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttachmentInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttachmentsSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachmentsSource, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        AttachmentsSourceValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AttachmentsSourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AttachmentsSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttachmentsSourceValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AutomationDefinitionNotApprovedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomationDefinitionNotApprovedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AutomationDefinitionNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomationDefinitionNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AutomationDefinitionVersionNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomationDefinitionVersionNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AutomationExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomationExecution, context: context)
        Hearth::Validator.validate!(input[:automation_execution_id], ::String, context: "#{context}[:automation_execution_id]")
        Hearth::Validator.validate!(input[:document_name], ::String, context: "#{context}[:document_name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:execution_start_time], ::Time, context: "#{context}[:execution_start_time]")
        Hearth::Validator.validate!(input[:execution_end_time], ::Time, context: "#{context}[:execution_end_time]")
        Hearth::Validator.validate!(input[:automation_execution_status], ::String, context: "#{context}[:automation_execution_status]")
        StepExecutionList.validate!(input[:step_executions], context: "#{context}[:step_executions]") unless input[:step_executions].nil?
        Hearth::Validator.validate!(input[:step_executions_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:step_executions_truncated]")
        AutomationParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        AutomationParameterMap.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Hearth::Validator.validate!(input[:failure_message], ::String, context: "#{context}[:failure_message]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:parent_automation_execution_id], ::String, context: "#{context}[:parent_automation_execution_id]")
        Hearth::Validator.validate!(input[:executed_by], ::String, context: "#{context}[:executed_by]")
        Hearth::Validator.validate!(input[:current_step_name], ::String, context: "#{context}[:current_step_name]")
        Hearth::Validator.validate!(input[:current_action], ::String, context: "#{context}[:current_action]")
        Hearth::Validator.validate!(input[:target_parameter_name], ::String, context: "#{context}[:target_parameter_name]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        TargetMaps.validate!(input[:target_maps], context: "#{context}[:target_maps]") unless input[:target_maps].nil?
        ResolvedTargets.validate!(input[:resolved_targets], context: "#{context}[:resolved_targets]") unless input[:resolved_targets].nil?
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        TargetLocations.validate!(input[:target_locations], context: "#{context}[:target_locations]") unless input[:target_locations].nil?
        ProgressCounters.validate!(input[:progress_counters], context: "#{context}[:progress_counters]") unless input[:progress_counters].nil?
        Hearth::Validator.validate!(input[:automation_subtype], ::String, context: "#{context}[:automation_subtype]")
        Hearth::Validator.validate!(input[:scheduled_time], ::Time, context: "#{context}[:scheduled_time]")
        Runbooks.validate!(input[:runbooks], context: "#{context}[:runbooks]") unless input[:runbooks].nil?
        Hearth::Validator.validate!(input[:ops_item_id], ::String, context: "#{context}[:ops_item_id]")
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:change_request_name], ::String, context: "#{context}[:change_request_name]")
      end
    end

    class AutomationExecutionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomationExecutionFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        AutomationExecutionFilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class AutomationExecutionFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutomationExecutionFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutomationExecutionFilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AutomationExecutionLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomationExecutionLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AutomationExecutionMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomationExecutionMetadata, context: context)
        Hearth::Validator.validate!(input[:automation_execution_id], ::String, context: "#{context}[:automation_execution_id]")
        Hearth::Validator.validate!(input[:document_name], ::String, context: "#{context}[:document_name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:automation_execution_status], ::String, context: "#{context}[:automation_execution_status]")
        Hearth::Validator.validate!(input[:execution_start_time], ::Time, context: "#{context}[:execution_start_time]")
        Hearth::Validator.validate!(input[:execution_end_time], ::Time, context: "#{context}[:execution_end_time]")
        Hearth::Validator.validate!(input[:executed_by], ::String, context: "#{context}[:executed_by]")
        Hearth::Validator.validate!(input[:log_file], ::String, context: "#{context}[:log_file]")
        AutomationParameterMap.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:parent_automation_execution_id], ::String, context: "#{context}[:parent_automation_execution_id]")
        Hearth::Validator.validate!(input[:current_step_name], ::String, context: "#{context}[:current_step_name]")
        Hearth::Validator.validate!(input[:current_action], ::String, context: "#{context}[:current_action]")
        Hearth::Validator.validate!(input[:failure_message], ::String, context: "#{context}[:failure_message]")
        Hearth::Validator.validate!(input[:target_parameter_name], ::String, context: "#{context}[:target_parameter_name]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        TargetMaps.validate!(input[:target_maps], context: "#{context}[:target_maps]") unless input[:target_maps].nil?
        ResolvedTargets.validate!(input[:resolved_targets], context: "#{context}[:resolved_targets]") unless input[:resolved_targets].nil?
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:automation_type], ::String, context: "#{context}[:automation_type]")
        Hearth::Validator.validate!(input[:automation_subtype], ::String, context: "#{context}[:automation_subtype]")
        Hearth::Validator.validate!(input[:scheduled_time], ::Time, context: "#{context}[:scheduled_time]")
        Runbooks.validate!(input[:runbooks], context: "#{context}[:runbooks]") unless input[:runbooks].nil?
        Hearth::Validator.validate!(input[:ops_item_id], ::String, context: "#{context}[:ops_item_id]")
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:change_request_name], ::String, context: "#{context}[:change_request_name]")
      end
    end

    class AutomationExecutionMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutomationExecutionMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutomationExecutionNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomationExecutionNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AutomationParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          AutomationParameterValueList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class AutomationParameterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AutomationStepNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutomationStepNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BaselineOverride
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BaselineOverride, context: context)
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
        PatchFilterGroup.validate!(input[:global_filters], context: "#{context}[:global_filters]") unless input[:global_filters].nil?
        PatchRuleGroup.validate!(input[:approval_rules], context: "#{context}[:approval_rules]") unless input[:approval_rules].nil?
        PatchIdList.validate!(input[:approved_patches], context: "#{context}[:approved_patches]") unless input[:approved_patches].nil?
        Hearth::Validator.validate!(input[:approved_patches_compliance_level], ::String, context: "#{context}[:approved_patches_compliance_level]")
        PatchIdList.validate!(input[:rejected_patches], context: "#{context}[:rejected_patches]") unless input[:rejected_patches].nil?
        Hearth::Validator.validate!(input[:rejected_patches_action], ::String, context: "#{context}[:rejected_patches_action]")
        Hearth::Validator.validate!(input[:approved_patches_enable_non_security], ::TrueClass, ::FalseClass, context: "#{context}[:approved_patches_enable_non_security]")
        PatchSourceList.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
      end
    end

    class CalendarNameOrARNList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CancelCommandInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelCommandInput, context: context)
        Hearth::Validator.validate!(input[:command_id], ::String, context: "#{context}[:command_id]")
        InstanceIdList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
      end
    end

    class CancelCommandOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelCommandOutput, context: context)
      end
    end

    class CancelMaintenanceWindowExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelMaintenanceWindowExecutionInput, context: context)
        Hearth::Validator.validate!(input[:window_execution_id], ::String, context: "#{context}[:window_execution_id]")
      end
    end

    class CancelMaintenanceWindowExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelMaintenanceWindowExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:window_execution_id], ::String, context: "#{context}[:window_execution_id]")
      end
    end

    class CategoryEnumList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CategoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CloudWatchOutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchOutputConfig, context: context)
        Hearth::Validator.validate!(input[:cloud_watch_log_group_name], ::String, context: "#{context}[:cloud_watch_log_group_name]")
        Hearth::Validator.validate!(input[:cloud_watch_output_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cloud_watch_output_enabled]")
      end
    end

    class Command
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Command, context: context)
        Hearth::Validator.validate!(input[:command_id], ::String, context: "#{context}[:command_id]")
        Hearth::Validator.validate!(input[:document_name], ::String, context: "#{context}[:document_name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:expires_after], ::Time, context: "#{context}[:expires_after]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        InstanceIdList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:requested_date_time], ::Time, context: "#{context}[:requested_date_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_details], ::String, context: "#{context}[:status_details]")
        Hearth::Validator.validate!(input[:output_s3_region], ::String, context: "#{context}[:output_s3_region]")
        Hearth::Validator.validate!(input[:output_s3_bucket_name], ::String, context: "#{context}[:output_s3_bucket_name]")
        Hearth::Validator.validate!(input[:output_s3_key_prefix], ::String, context: "#{context}[:output_s3_key_prefix]")
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        Hearth::Validator.validate!(input[:target_count], ::Integer, context: "#{context}[:target_count]")
        Hearth::Validator.validate!(input[:completed_count], ::Integer, context: "#{context}[:completed_count]")
        Hearth::Validator.validate!(input[:error_count], ::Integer, context: "#{context}[:error_count]")
        Hearth::Validator.validate!(input[:delivery_timed_out_count], ::Integer, context: "#{context}[:delivery_timed_out_count]")
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        NotificationConfig.validate!(input[:notification_config], context: "#{context}[:notification_config]") unless input[:notification_config].nil?
        CloudWatchOutputConfig.validate!(input[:cloud_watch_output_config], context: "#{context}[:cloud_watch_output_config]") unless input[:cloud_watch_output_config].nil?
        Hearth::Validator.validate!(input[:timeout_seconds], ::Integer, context: "#{context}[:timeout_seconds]")
      end
    end

    class CommandFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommandFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class CommandFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CommandFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CommandInvocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommandInvocation, context: context)
        Hearth::Validator.validate!(input[:command_id], ::String, context: "#{context}[:command_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:document_name], ::String, context: "#{context}[:document_name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:requested_date_time], ::Time, context: "#{context}[:requested_date_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_details], ::String, context: "#{context}[:status_details]")
        Hearth::Validator.validate!(input[:trace_output], ::String, context: "#{context}[:trace_output]")
        Hearth::Validator.validate!(input[:standard_output_url], ::String, context: "#{context}[:standard_output_url]")
        Hearth::Validator.validate!(input[:standard_error_url], ::String, context: "#{context}[:standard_error_url]")
        CommandPluginList.validate!(input[:command_plugins], context: "#{context}[:command_plugins]") unless input[:command_plugins].nil?
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        NotificationConfig.validate!(input[:notification_config], context: "#{context}[:notification_config]") unless input[:notification_config].nil?
        CloudWatchOutputConfig.validate!(input[:cloud_watch_output_config], context: "#{context}[:cloud_watch_output_config]") unless input[:cloud_watch_output_config].nil?
      end
    end

    class CommandInvocationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CommandInvocation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CommandList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Command.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CommandPlugin
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommandPlugin, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_details], ::String, context: "#{context}[:status_details]")
        Hearth::Validator.validate!(input[:response_code], ::Integer, context: "#{context}[:response_code]")
        Hearth::Validator.validate!(input[:response_start_date_time], ::Time, context: "#{context}[:response_start_date_time]")
        Hearth::Validator.validate!(input[:response_finish_date_time], ::Time, context: "#{context}[:response_finish_date_time]")
        Hearth::Validator.validate!(input[:output], ::String, context: "#{context}[:output]")
        Hearth::Validator.validate!(input[:standard_output_url], ::String, context: "#{context}[:standard_output_url]")
        Hearth::Validator.validate!(input[:standard_error_url], ::String, context: "#{context}[:standard_error_url]")
        Hearth::Validator.validate!(input[:output_s3_region], ::String, context: "#{context}[:output_s3_region]")
        Hearth::Validator.validate!(input[:output_s3_bucket_name], ::String, context: "#{context}[:output_s3_bucket_name]")
        Hearth::Validator.validate!(input[:output_s3_key_prefix], ::String, context: "#{context}[:output_s3_key_prefix]")
      end
    end

    class CommandPluginList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CommandPlugin.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComplianceExecutionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComplianceExecutionSummary, context: context)
        Hearth::Validator.validate!(input[:execution_time], ::Time, context: "#{context}[:execution_time]")
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        Hearth::Validator.validate!(input[:execution_type], ::String, context: "#{context}[:execution_type]")
      end
    end

    class ComplianceItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComplianceItem, context: context)
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        ComplianceExecutionSummary.validate!(input[:execution_summary], context: "#{context}[:execution_summary]") unless input[:execution_summary].nil?
        ComplianceItemDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class ComplianceItemDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ComplianceItemEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComplianceItemEntry, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        ComplianceItemDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class ComplianceItemEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComplianceItemEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComplianceItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComplianceItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComplianceResourceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ComplianceResourceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ComplianceStringFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComplianceStringFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        ComplianceStringFilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ComplianceStringFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComplianceStringFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComplianceStringFilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ComplianceSummaryItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComplianceSummaryItem, context: context)
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        CompliantSummary.validate!(input[:compliant_summary], context: "#{context}[:compliant_summary]") unless input[:compliant_summary].nil?
        NonCompliantSummary.validate!(input[:non_compliant_summary], context: "#{context}[:non_compliant_summary]") unless input[:non_compliant_summary].nil?
      end
    end

    class ComplianceSummaryItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComplianceSummaryItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComplianceTypeCountLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComplianceTypeCountLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CompliantSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompliantSummary, context: context)
        Hearth::Validator.validate!(input[:compliant_count], ::Integer, context: "#{context}[:compliant_count]")
        SeveritySummary.validate!(input[:severity_summary], context: "#{context}[:severity_summary]") unless input[:severity_summary].nil?
      end
    end

    class CreateActivationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateActivationInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:default_instance_name], ::String, context: "#{context}[:default_instance_name]")
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        Hearth::Validator.validate!(input[:registration_limit], ::Integer, context: "#{context}[:registration_limit]")
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        RegistrationMetadataList.validate!(input[:registration_metadata], context: "#{context}[:registration_metadata]") unless input[:registration_metadata].nil?
      end
    end

    class CreateActivationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateActivationOutput, context: context)
        Hearth::Validator.validate!(input[:activation_id], ::String, context: "#{context}[:activation_id]")
        Hearth::Validator.validate!(input[:activation_code], ::String, context: "#{context}[:activation_code]")
      end
    end

    class CreateAssociationBatchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssociationBatchInput, context: context)
        CreateAssociationBatchRequestEntries.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class CreateAssociationBatchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssociationBatchOutput, context: context)
        AssociationDescriptionList.validate!(input[:successful], context: "#{context}[:successful]") unless input[:successful].nil?
        FailedCreateAssociationList.validate!(input[:failed], context: "#{context}[:failed]") unless input[:failed].nil?
      end
    end

    class CreateAssociationBatchRequestEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CreateAssociationBatchRequestEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateAssociationBatchRequestEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssociationBatchRequestEntry, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:automation_target_parameter_name], ::String, context: "#{context}[:automation_target_parameter_name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
        InstanceAssociationOutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
        Hearth::Validator.validate!(input[:association_name], ::String, context: "#{context}[:association_name]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:compliance_severity], ::String, context: "#{context}[:compliance_severity]")
        Hearth::Validator.validate!(input[:sync_compliance], ::String, context: "#{context}[:sync_compliance]")
        Hearth::Validator.validate!(input[:apply_only_at_cron_interval], ::TrueClass, ::FalseClass, context: "#{context}[:apply_only_at_cron_interval]")
        CalendarNameOrARNList.validate!(input[:calendar_names], context: "#{context}[:calendar_names]") unless input[:calendar_names].nil?
        TargetLocations.validate!(input[:target_locations], context: "#{context}[:target_locations]") unless input[:target_locations].nil?
        Hearth::Validator.validate!(input[:schedule_offset], ::Integer, context: "#{context}[:schedule_offset]")
        TargetMaps.validate!(input[:target_maps], context: "#{context}[:target_maps]") unless input[:target_maps].nil?
      end
    end

    class CreateAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssociationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
        InstanceAssociationOutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
        Hearth::Validator.validate!(input[:association_name], ::String, context: "#{context}[:association_name]")
        Hearth::Validator.validate!(input[:automation_target_parameter_name], ::String, context: "#{context}[:automation_target_parameter_name]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:compliance_severity], ::String, context: "#{context}[:compliance_severity]")
        Hearth::Validator.validate!(input[:sync_compliance], ::String, context: "#{context}[:sync_compliance]")
        Hearth::Validator.validate!(input[:apply_only_at_cron_interval], ::TrueClass, ::FalseClass, context: "#{context}[:apply_only_at_cron_interval]")
        CalendarNameOrARNList.validate!(input[:calendar_names], context: "#{context}[:calendar_names]") unless input[:calendar_names].nil?
        TargetLocations.validate!(input[:target_locations], context: "#{context}[:target_locations]") unless input[:target_locations].nil?
        Hearth::Validator.validate!(input[:schedule_offset], ::Integer, context: "#{context}[:schedule_offset]")
        TargetMaps.validate!(input[:target_maps], context: "#{context}[:target_maps]") unless input[:target_maps].nil?
      end
    end

    class CreateAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssociationOutput, context: context)
        AssociationDescription.validate!(input[:association_description], context: "#{context}[:association_description]") unless input[:association_description].nil?
      end
    end

    class CreateDocumentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDocumentInput, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        DocumentRequiresList.validate!(input[:requires], context: "#{context}[:requires]") unless input[:requires].nil?
        AttachmentsSourceList.validate!(input[:attachments], context: "#{context}[:attachments]") unless input[:attachments].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        Hearth::Validator.validate!(input[:document_type], ::String, context: "#{context}[:document_type]")
        Hearth::Validator.validate!(input[:document_format], ::String, context: "#{context}[:document_format]")
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDocumentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDocumentOutput, context: context)
        DocumentDescription.validate!(input[:document_description], context: "#{context}[:document_description]") unless input[:document_description].nil?
      end
    end

    class CreateMaintenanceWindowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMaintenanceWindowInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:start_date], ::String, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::String, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:schedule_timezone], ::String, context: "#{context}[:schedule_timezone]")
        Hearth::Validator.validate!(input[:schedule_offset], ::Integer, context: "#{context}[:schedule_offset]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:cutoff], ::Integer, context: "#{context}[:cutoff]")
        Hearth::Validator.validate!(input[:allow_unassociated_targets], ::TrueClass, ::FalseClass, context: "#{context}[:allow_unassociated_targets]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMaintenanceWindowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMaintenanceWindowOutput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
      end
    end

    class CreateOpsItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOpsItemInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:ops_item_type], ::String, context: "#{context}[:ops_item_type]")
        OpsItemOperationalData.validate!(input[:operational_data], context: "#{context}[:operational_data]") unless input[:operational_data].nil?
        OpsItemNotifications.validate!(input[:notifications], context: "#{context}[:notifications]") unless input[:notifications].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        RelatedOpsItems.validate!(input[:related_ops_items], context: "#{context}[:related_ops_items]") unless input[:related_ops_items].nil?
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:actual_start_time], ::Time, context: "#{context}[:actual_start_time]")
        Hearth::Validator.validate!(input[:actual_end_time], ::Time, context: "#{context}[:actual_end_time]")
        Hearth::Validator.validate!(input[:planned_start_time], ::Time, context: "#{context}[:planned_start_time]")
        Hearth::Validator.validate!(input[:planned_end_time], ::Time, context: "#{context}[:planned_end_time]")
      end
    end

    class CreateOpsItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOpsItemOutput, context: context)
        Hearth::Validator.validate!(input[:ops_item_id], ::String, context: "#{context}[:ops_item_id]")
      end
    end

    class CreateOpsMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOpsMetadataInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        MetadataMap.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateOpsMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateOpsMetadataOutput, context: context)
        Hearth::Validator.validate!(input[:ops_metadata_arn], ::String, context: "#{context}[:ops_metadata_arn]")
      end
    end

    class CreatePatchBaselineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePatchBaselineInput, context: context)
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        PatchFilterGroup.validate!(input[:global_filters], context: "#{context}[:global_filters]") unless input[:global_filters].nil?
        PatchRuleGroup.validate!(input[:approval_rules], context: "#{context}[:approval_rules]") unless input[:approval_rules].nil?
        PatchIdList.validate!(input[:approved_patches], context: "#{context}[:approved_patches]") unless input[:approved_patches].nil?
        Hearth::Validator.validate!(input[:approved_patches_compliance_level], ::String, context: "#{context}[:approved_patches_compliance_level]")
        Hearth::Validator.validate!(input[:approved_patches_enable_non_security], ::TrueClass, ::FalseClass, context: "#{context}[:approved_patches_enable_non_security]")
        PatchIdList.validate!(input[:rejected_patches], context: "#{context}[:rejected_patches]") unless input[:rejected_patches].nil?
        Hearth::Validator.validate!(input[:rejected_patches_action], ::String, context: "#{context}[:rejected_patches_action]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        PatchSourceList.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePatchBaselineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePatchBaselineOutput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
      end
    end

    class CreateResourceDataSyncInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceDataSyncInput, context: context)
        Hearth::Validator.validate!(input[:sync_name], ::String, context: "#{context}[:sync_name]")
        ResourceDataSyncS3Destination.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
        Hearth::Validator.validate!(input[:sync_type], ::String, context: "#{context}[:sync_type]")
        ResourceDataSyncSource.validate!(input[:sync_source], context: "#{context}[:sync_source]") unless input[:sync_source].nil?
      end
    end

    class CreateResourceDataSyncOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceDataSyncOutput, context: context)
      end
    end

    class CustomSchemaCountLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomSchemaCountLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteActivationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteActivationInput, context: context)
        Hearth::Validator.validate!(input[:activation_id], ::String, context: "#{context}[:activation_id]")
      end
    end

    class DeleteActivationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteActivationOutput, context: context)
      end
    end

    class DeleteAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssociationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
      end
    end

    class DeleteAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssociationOutput, context: context)
      end
    end

    class DeleteDocumentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDocumentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        Hearth::Validator.validate!(input[:force], ::TrueClass, ::FalseClass, context: "#{context}[:force]")
      end
    end

    class DeleteDocumentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDocumentOutput, context: context)
      end
    end

    class DeleteInventoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInventoryInput, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:schema_delete_option], ::String, context: "#{context}[:schema_delete_option]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteInventoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteInventoryOutput, context: context)
        Hearth::Validator.validate!(input[:deletion_id], ::String, context: "#{context}[:deletion_id]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        InventoryDeletionSummary.validate!(input[:deletion_summary], context: "#{context}[:deletion_summary]") unless input[:deletion_summary].nil?
      end
    end

    class DeleteMaintenanceWindowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMaintenanceWindowInput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
      end
    end

    class DeleteMaintenanceWindowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMaintenanceWindowOutput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
      end
    end

    class DeleteOpsMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOpsMetadataInput, context: context)
        Hearth::Validator.validate!(input[:ops_metadata_arn], ::String, context: "#{context}[:ops_metadata_arn]")
      end
    end

    class DeleteOpsMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOpsMetadataOutput, context: context)
      end
    end

    class DeleteParameterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteParameterInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteParameterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteParameterOutput, context: context)
      end
    end

    class DeleteParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteParametersInput, context: context)
        ParameterNameList.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
      end
    end

    class DeleteParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteParametersOutput, context: context)
        ParameterNameList.validate!(input[:deleted_parameters], context: "#{context}[:deleted_parameters]") unless input[:deleted_parameters].nil?
        ParameterNameList.validate!(input[:invalid_parameters], context: "#{context}[:invalid_parameters]") unless input[:invalid_parameters].nil?
      end
    end

    class DeletePatchBaselineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePatchBaselineInput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
      end
    end

    class DeletePatchBaselineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePatchBaselineOutput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
      end
    end

    class DeleteResourceDataSyncInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceDataSyncInput, context: context)
        Hearth::Validator.validate!(input[:sync_name], ::String, context: "#{context}[:sync_name]")
        Hearth::Validator.validate!(input[:sync_type], ::String, context: "#{context}[:sync_type]")
      end
    end

    class DeleteResourceDataSyncOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceDataSyncOutput, context: context)
      end
    end

    class DeregisterManagedInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterManagedInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class DeregisterManagedInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterManagedInstanceOutput, context: context)
      end
    end

    class DeregisterPatchBaselineForPatchGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterPatchBaselineForPatchGroupInput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
        Hearth::Validator.validate!(input[:patch_group], ::String, context: "#{context}[:patch_group]")
      end
    end

    class DeregisterPatchBaselineForPatchGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterPatchBaselineForPatchGroupOutput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
        Hearth::Validator.validate!(input[:patch_group], ::String, context: "#{context}[:patch_group]")
      end
    end

    class DeregisterTargetFromMaintenanceWindowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterTargetFromMaintenanceWindowInput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:window_target_id], ::String, context: "#{context}[:window_target_id]")
        Hearth::Validator.validate!(input[:safe], ::TrueClass, ::FalseClass, context: "#{context}[:safe]")
      end
    end

    class DeregisterTargetFromMaintenanceWindowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterTargetFromMaintenanceWindowOutput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:window_target_id], ::String, context: "#{context}[:window_target_id]")
      end
    end

    class DeregisterTaskFromMaintenanceWindowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterTaskFromMaintenanceWindowInput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:window_task_id], ::String, context: "#{context}[:window_task_id]")
      end
    end

    class DeregisterTaskFromMaintenanceWindowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterTaskFromMaintenanceWindowOutput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:window_task_id], ::String, context: "#{context}[:window_task_id]")
      end
    end

    class DescribeActivationsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeActivationsFilter, context: context)
        Hearth::Validator.validate!(input[:filter_key], ::String, context: "#{context}[:filter_key]")
        StringList.validate!(input[:filter_values], context: "#{context}[:filter_values]") unless input[:filter_values].nil?
      end
    end

    class DescribeActivationsFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DescribeActivationsFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribeActivationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeActivationsInput, context: context)
        DescribeActivationsFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeActivationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeActivationsOutput, context: context)
        ActivationList.validate!(input[:activation_list], context: "#{context}[:activation_list]") unless input[:activation_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAssociationExecutionTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssociationExecutionTargetsInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        AssociationExecutionTargetsFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAssociationExecutionTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssociationExecutionTargetsOutput, context: context)
        AssociationExecutionTargetsList.validate!(input[:association_execution_targets], context: "#{context}[:association_execution_targets]") unless input[:association_execution_targets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAssociationExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssociationExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        AssociationExecutionFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAssociationExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssociationExecutionsOutput, context: context)
        AssociationExecutionsList.validate!(input[:association_executions], context: "#{context}[:association_executions]") unless input[:association_executions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssociationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:association_version], ::String, context: "#{context}[:association_version]")
      end
    end

    class DescribeAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssociationOutput, context: context)
        AssociationDescription.validate!(input[:association_description], context: "#{context}[:association_description]") unless input[:association_description].nil?
      end
    end

    class DescribeAutomationExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutomationExecutionsInput, context: context)
        AutomationExecutionFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAutomationExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutomationExecutionsOutput, context: context)
        AutomationExecutionMetadataList.validate!(input[:automation_execution_metadata_list], context: "#{context}[:automation_execution_metadata_list]") unless input[:automation_execution_metadata_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAutomationStepExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutomationStepExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:automation_execution_id], ::String, context: "#{context}[:automation_execution_id]")
        StepExecutionFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:reverse_order], ::TrueClass, ::FalseClass, context: "#{context}[:reverse_order]")
      end
    end

    class DescribeAutomationStepExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutomationStepExecutionsOutput, context: context)
        StepExecutionList.validate!(input[:step_executions], context: "#{context}[:step_executions]") unless input[:step_executions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAvailablePatchesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAvailablePatchesInput, context: context)
        PatchOrchestratorFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAvailablePatchesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAvailablePatchesOutput, context: context)
        PatchList.validate!(input[:patches], context: "#{context}[:patches]") unless input[:patches].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDocumentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDocumentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
      end
    end

    class DescribeDocumentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDocumentOutput, context: context)
        DocumentDescription.validate!(input[:document], context: "#{context}[:document]") unless input[:document].nil?
      end
    end

    class DescribeDocumentPermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDocumentPermissionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:permission_type], ::String, context: "#{context}[:permission_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDocumentPermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDocumentPermissionOutput, context: context)
        AccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        AccountSharingInfoList.validate!(input[:account_sharing_info_list], context: "#{context}[:account_sharing_info_list]") unless input[:account_sharing_info_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEffectiveInstanceAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEffectiveInstanceAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEffectiveInstanceAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEffectiveInstanceAssociationsOutput, context: context)
        InstanceAssociationList.validate!(input[:associations], context: "#{context}[:associations]") unless input[:associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEffectivePatchesForPatchBaselineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEffectivePatchesForPatchBaselineInput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeEffectivePatchesForPatchBaselineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEffectivePatchesForPatchBaselineOutput, context: context)
        EffectivePatchList.validate!(input[:effective_patches], context: "#{context}[:effective_patches]") unless input[:effective_patches].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInstanceAssociationsStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceAssociationsStatusInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInstanceAssociationsStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceAssociationsStatusOutput, context: context)
        InstanceAssociationStatusInfos.validate!(input[:instance_association_status_infos], context: "#{context}[:instance_association_status_infos]") unless input[:instance_association_status_infos].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInstanceInformationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceInformationInput, context: context)
        InstanceInformationFilterList.validate!(input[:instance_information_filter_list], context: "#{context}[:instance_information_filter_list]") unless input[:instance_information_filter_list].nil?
        InstanceInformationStringFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInstanceInformationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstanceInformationOutput, context: context)
        InstanceInformationList.validate!(input[:instance_information_list], context: "#{context}[:instance_information_list]") unless input[:instance_information_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInstancePatchStatesForPatchGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstancePatchStatesForPatchGroupInput, context: context)
        Hearth::Validator.validate!(input[:patch_group], ::String, context: "#{context}[:patch_group]")
        InstancePatchStateFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeInstancePatchStatesForPatchGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstancePatchStatesForPatchGroupOutput, context: context)
        InstancePatchStatesList.validate!(input[:instance_patch_states], context: "#{context}[:instance_patch_states]") unless input[:instance_patch_states].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInstancePatchStatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstancePatchStatesInput, context: context)
        InstanceIdList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeInstancePatchStatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstancePatchStatesOutput, context: context)
        InstancePatchStateList.validate!(input[:instance_patch_states], context: "#{context}[:instance_patch_states]") unless input[:instance_patch_states].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInstancePatchesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstancePatchesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        PatchOrchestratorFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeInstancePatchesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstancePatchesOutput, context: context)
        PatchComplianceDataList.validate!(input[:patches], context: "#{context}[:patches]") unless input[:patches].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInventoryDeletionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInventoryDeletionsInput, context: context)
        Hearth::Validator.validate!(input[:deletion_id], ::String, context: "#{context}[:deletion_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeInventoryDeletionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInventoryDeletionsOutput, context: context)
        InventoryDeletionsList.validate!(input[:inventory_deletions], context: "#{context}[:inventory_deletions]") unless input[:inventory_deletions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowExecutionTaskInvocationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowExecutionTaskInvocationsInput, context: context)
        Hearth::Validator.validate!(input[:window_execution_id], ::String, context: "#{context}[:window_execution_id]")
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        MaintenanceWindowFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowExecutionTaskInvocationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowExecutionTaskInvocationsOutput, context: context)
        MaintenanceWindowExecutionTaskInvocationIdentityList.validate!(input[:window_execution_task_invocation_identities], context: "#{context}[:window_execution_task_invocation_identities]") unless input[:window_execution_task_invocation_identities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowExecutionTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowExecutionTasksInput, context: context)
        Hearth::Validator.validate!(input[:window_execution_id], ::String, context: "#{context}[:window_execution_id]")
        MaintenanceWindowFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowExecutionTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowExecutionTasksOutput, context: context)
        MaintenanceWindowExecutionTaskIdentityList.validate!(input[:window_execution_task_identities], context: "#{context}[:window_execution_task_identities]") unless input[:window_execution_task_identities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        MaintenanceWindowFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowExecutionsOutput, context: context)
        MaintenanceWindowExecutionList.validate!(input[:window_executions], context: "#{context}[:window_executions]") unless input[:window_executions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowScheduleInput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        PatchOrchestratorFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowScheduleOutput, context: context)
        ScheduledWindowExecutionList.validate!(input[:scheduled_window_executions], context: "#{context}[:scheduled_window_executions]") unless input[:scheduled_window_executions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowTargetsInput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        MaintenanceWindowFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowTargetsOutput, context: context)
        MaintenanceWindowTargetList.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowTasksInput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        MaintenanceWindowFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowTasksOutput, context: context)
        MaintenanceWindowTaskList.validate!(input[:tasks], context: "#{context}[:tasks]") unless input[:tasks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowsForTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowsForTargetInput, context: context)
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowsForTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowsForTargetOutput, context: context)
        MaintenanceWindowsForTargetList.validate!(input[:window_identities], context: "#{context}[:window_identities]") unless input[:window_identities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowsInput, context: context)
        MaintenanceWindowFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMaintenanceWindowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMaintenanceWindowsOutput, context: context)
        MaintenanceWindowIdentityList.validate!(input[:window_identities], context: "#{context}[:window_identities]") unless input[:window_identities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeOpsItemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOpsItemsInput, context: context)
        OpsItemFilters.validate!(input[:ops_item_filters], context: "#{context}[:ops_item_filters]") unless input[:ops_item_filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeOpsItemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOpsItemsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        OpsItemSummaries.validate!(input[:ops_item_summaries], context: "#{context}[:ops_item_summaries]") unless input[:ops_item_summaries].nil?
      end
    end

    class DescribeParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeParametersInput, context: context)
        ParametersFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        ParameterStringFilterList.validate!(input[:parameter_filters], context: "#{context}[:parameter_filters]") unless input[:parameter_filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeParametersOutput, context: context)
        ParameterMetadataList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePatchBaselinesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePatchBaselinesInput, context: context)
        PatchOrchestratorFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePatchBaselinesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePatchBaselinesOutput, context: context)
        PatchBaselineIdentityList.validate!(input[:baseline_identities], context: "#{context}[:baseline_identities]") unless input[:baseline_identities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePatchGroupStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePatchGroupStateInput, context: context)
        Hearth::Validator.validate!(input[:patch_group], ::String, context: "#{context}[:patch_group]")
      end
    end

    class DescribePatchGroupStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePatchGroupStateOutput, context: context)
        Hearth::Validator.validate!(input[:instances], ::Integer, context: "#{context}[:instances]")
        Hearth::Validator.validate!(input[:instances_with_installed_patches], ::Integer, context: "#{context}[:instances_with_installed_patches]")
        Hearth::Validator.validate!(input[:instances_with_installed_other_patches], ::Integer, context: "#{context}[:instances_with_installed_other_patches]")
        Hearth::Validator.validate!(input[:instances_with_installed_pending_reboot_patches], ::Integer, context: "#{context}[:instances_with_installed_pending_reboot_patches]")
        Hearth::Validator.validate!(input[:instances_with_installed_rejected_patches], ::Integer, context: "#{context}[:instances_with_installed_rejected_patches]")
        Hearth::Validator.validate!(input[:instances_with_missing_patches], ::Integer, context: "#{context}[:instances_with_missing_patches]")
        Hearth::Validator.validate!(input[:instances_with_failed_patches], ::Integer, context: "#{context}[:instances_with_failed_patches]")
        Hearth::Validator.validate!(input[:instances_with_not_applicable_patches], ::Integer, context: "#{context}[:instances_with_not_applicable_patches]")
        Hearth::Validator.validate!(input[:instances_with_unreported_not_applicable_patches], ::Integer, context: "#{context}[:instances_with_unreported_not_applicable_patches]")
        Hearth::Validator.validate!(input[:instances_with_critical_non_compliant_patches], ::Integer, context: "#{context}[:instances_with_critical_non_compliant_patches]")
        Hearth::Validator.validate!(input[:instances_with_security_non_compliant_patches], ::Integer, context: "#{context}[:instances_with_security_non_compliant_patches]")
        Hearth::Validator.validate!(input[:instances_with_other_non_compliant_patches], ::Integer, context: "#{context}[:instances_with_other_non_compliant_patches]")
      end
    end

    class DescribePatchGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePatchGroupsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        PatchOrchestratorFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePatchGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePatchGroupsOutput, context: context)
        PatchGroupPatchBaselineMappingList.validate!(input[:mappings], context: "#{context}[:mappings]") unless input[:mappings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePatchPropertiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePatchPropertiesInput, context: context)
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
        Hearth::Validator.validate!(input[:property], ::String, context: "#{context}[:property]")
        Hearth::Validator.validate!(input[:patch_set], ::String, context: "#{context}[:patch_set]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePatchPropertiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePatchPropertiesOutput, context: context)
        PatchPropertiesList.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeSessionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSessionsInput, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        SessionFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class DescribeSessionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSessionsOutput, context: context)
        SessionList.validate!(input[:sessions], context: "#{context}[:sessions]") unless input[:sessions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DisassociateOpsItemRelatedItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateOpsItemRelatedItemInput, context: context)
        Hearth::Validator.validate!(input[:ops_item_id], ::String, context: "#{context}[:ops_item_id]")
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
      end
    end

    class DisassociateOpsItemRelatedItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateOpsItemRelatedItemOutput, context: context)
      end
    end

    class DocumentAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DocumentDefaultVersionDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentDefaultVersionDescription, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:default_version], ::String, context: "#{context}[:default_version]")
        Hearth::Validator.validate!(input[:default_version_name], ::String, context: "#{context}[:default_version_name]")
      end
    end

    class DocumentDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentDescription, context: context)
        Hearth::Validator.validate!(input[:sha1], ::String, context: "#{context}[:sha1]")
        Hearth::Validator.validate!(input[:member_hash], ::String, context: "#{context}[:member_hash]")
        Hearth::Validator.validate!(input[:hash_type], ::String, context: "#{context}[:hash_type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_information], ::String, context: "#{context}[:status_information]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        DocumentParameterList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        PlatformTypeList.validate!(input[:platform_types], context: "#{context}[:platform_types]") unless input[:platform_types].nil?
        Hearth::Validator.validate!(input[:document_type], ::String, context: "#{context}[:document_type]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Hearth::Validator.validate!(input[:latest_version], ::String, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:default_version], ::String, context: "#{context}[:default_version]")
        Hearth::Validator.validate!(input[:document_format], ::String, context: "#{context}[:document_format]")
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        AttachmentInformationList.validate!(input[:attachments_information], context: "#{context}[:attachments_information]") unless input[:attachments_information].nil?
        DocumentRequiresList.validate!(input[:requires], context: "#{context}[:requires]") unless input[:requires].nil?
        Hearth::Validator.validate!(input[:author], ::String, context: "#{context}[:author]")
        ReviewInformationList.validate!(input[:review_information], context: "#{context}[:review_information]") unless input[:review_information].nil?
        Hearth::Validator.validate!(input[:approved_version], ::String, context: "#{context}[:approved_version]")
        Hearth::Validator.validate!(input[:pending_review_version], ::String, context: "#{context}[:pending_review_version]")
        Hearth::Validator.validate!(input[:review_status], ::String, context: "#{context}[:review_status]")
        CategoryList.validate!(input[:category], context: "#{context}[:category]") unless input[:category].nil?
        CategoryEnumList.validate!(input[:category_enum], context: "#{context}[:category_enum]") unless input[:category_enum].nil?
      end
    end

    class DocumentFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class DocumentFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentIdentifier, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        PlatformTypeList.validate!(input[:platform_types], context: "#{context}[:platform_types]") unless input[:platform_types].nil?
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:document_type], ::String, context: "#{context}[:document_type]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Hearth::Validator.validate!(input[:document_format], ::String, context: "#{context}[:document_format]")
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        DocumentRequiresList.validate!(input[:requires], context: "#{context}[:requires]") unless input[:requires].nil?
        Hearth::Validator.validate!(input[:review_status], ::String, context: "#{context}[:review_status]")
        Hearth::Validator.validate!(input[:author], ::String, context: "#{context}[:author]")
      end
    end

    class DocumentIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentKeyValuesFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentKeyValuesFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        DocumentKeyValuesFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class DocumentKeyValuesFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentKeyValuesFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentKeyValuesFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DocumentLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DocumentMetadataResponseInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentMetadataResponseInfo, context: context)
        DocumentReviewerResponseList.validate!(input[:reviewer_response], context: "#{context}[:reviewer_response]") unless input[:reviewer_response].nil?
      end
    end

    class DocumentParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
      end
    end

    class DocumentParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentPermissionLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentPermissionLimit, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DocumentRequires
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentRequires, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class DocumentRequiresList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentRequires.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentReviewCommentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentReviewCommentSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentReviewCommentSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentReviewCommentSource, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class DocumentReviewerResponseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentReviewerResponseSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentReviewerResponseSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentReviewerResponseSource, context: context)
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:updated_time], ::Time, context: "#{context}[:updated_time]")
        Hearth::Validator.validate!(input[:review_status], ::String, context: "#{context}[:review_status]")
        DocumentReviewCommentList.validate!(input[:comment], context: "#{context}[:comment]") unless input[:comment].nil?
        Hearth::Validator.validate!(input[:reviewer], ::String, context: "#{context}[:reviewer]")
      end
    end

    class DocumentReviews
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentReviews, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        DocumentReviewCommentList.validate!(input[:comment], context: "#{context}[:comment]") unless input[:comment].nil?
      end
    end

    class DocumentVersionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentVersionInfo, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:is_default_version], ::TrueClass, ::FalseClass, context: "#{context}[:is_default_version]")
        Hearth::Validator.validate!(input[:document_format], ::String, context: "#{context}[:document_format]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_information], ::String, context: "#{context}[:status_information]")
        Hearth::Validator.validate!(input[:review_status], ::String, context: "#{context}[:review_status]")
      end
    end

    class DocumentVersionLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentVersionLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DocumentVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentVersionInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DuplicateDocumentContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateDocumentContent, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DuplicateDocumentVersionName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateDocumentVersionName, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DuplicateInstanceId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateInstanceId, context: context)
      end
    end

    class EffectivePatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EffectivePatch, context: context)
        Patch.validate!(input[:patch], context: "#{context}[:patch]") unless input[:patch].nil?
        PatchStatus.validate!(input[:patch_status], context: "#{context}[:patch_status]") unless input[:patch_status].nil?
      end
    end

    class EffectivePatchList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EffectivePatch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailedCreateAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedCreateAssociation, context: context)
        CreateAssociationBatchRequestEntry.validate!(input[:entry], context: "#{context}[:entry]") unless input[:entry].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:fault], ::String, context: "#{context}[:fault]")
      end
    end

    class FailedCreateAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FailedCreateAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailureDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailureDetails, context: context)
        Hearth::Validator.validate!(input[:failure_stage], ::String, context: "#{context}[:failure_stage]")
        Hearth::Validator.validate!(input[:failure_type], ::String, context: "#{context}[:failure_type]")
        AutomationParameterMap.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class FeatureNotAvailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FeatureNotAvailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetAutomationExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAutomationExecutionInput, context: context)
        Hearth::Validator.validate!(input[:automation_execution_id], ::String, context: "#{context}[:automation_execution_id]")
      end
    end

    class GetAutomationExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAutomationExecutionOutput, context: context)
        AutomationExecution.validate!(input[:automation_execution], context: "#{context}[:automation_execution]") unless input[:automation_execution].nil?
      end
    end

    class GetCalendarStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCalendarStateInput, context: context)
        CalendarNameOrARNList.validate!(input[:calendar_names], context: "#{context}[:calendar_names]") unless input[:calendar_names].nil?
        Hearth::Validator.validate!(input[:at_time], ::String, context: "#{context}[:at_time]")
      end
    end

    class GetCalendarStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCalendarStateOutput, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:at_time], ::String, context: "#{context}[:at_time]")
        Hearth::Validator.validate!(input[:next_transition_time], ::String, context: "#{context}[:next_transition_time]")
      end
    end

    class GetCommandInvocationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCommandInvocationInput, context: context)
        Hearth::Validator.validate!(input[:command_id], ::String, context: "#{context}[:command_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:plugin_name], ::String, context: "#{context}[:plugin_name]")
      end
    end

    class GetCommandInvocationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCommandInvocationOutput, context: context)
        Hearth::Validator.validate!(input[:command_id], ::String, context: "#{context}[:command_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:document_name], ::String, context: "#{context}[:document_name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:plugin_name], ::String, context: "#{context}[:plugin_name]")
        Hearth::Validator.validate!(input[:response_code], ::Integer, context: "#{context}[:response_code]")
        Hearth::Validator.validate!(input[:execution_start_date_time], ::String, context: "#{context}[:execution_start_date_time]")
        Hearth::Validator.validate!(input[:execution_elapsed_time], ::String, context: "#{context}[:execution_elapsed_time]")
        Hearth::Validator.validate!(input[:execution_end_date_time], ::String, context: "#{context}[:execution_end_date_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_details], ::String, context: "#{context}[:status_details]")
        Hearth::Validator.validate!(input[:standard_output_content], ::String, context: "#{context}[:standard_output_content]")
        Hearth::Validator.validate!(input[:standard_output_url], ::String, context: "#{context}[:standard_output_url]")
        Hearth::Validator.validate!(input[:standard_error_content], ::String, context: "#{context}[:standard_error_content]")
        Hearth::Validator.validate!(input[:standard_error_url], ::String, context: "#{context}[:standard_error_url]")
        CloudWatchOutputConfig.validate!(input[:cloud_watch_output_config], context: "#{context}[:cloud_watch_output_config]") unless input[:cloud_watch_output_config].nil?
      end
    end

    class GetConnectionStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectionStatusInput, context: context)
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
      end
    end

    class GetConnectionStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConnectionStatusOutput, context: context)
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class GetDefaultPatchBaselineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDefaultPatchBaselineInput, context: context)
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
      end
    end

    class GetDefaultPatchBaselineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDefaultPatchBaselineOutput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
      end
    end

    class GetDeployablePatchSnapshotForInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeployablePatchSnapshotForInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        BaselineOverride.validate!(input[:baseline_override], context: "#{context}[:baseline_override]") unless input[:baseline_override].nil?
      end
    end

    class GetDeployablePatchSnapshotForInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeployablePatchSnapshotForInstanceOutput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:snapshot_download_url], ::String, context: "#{context}[:snapshot_download_url]")
        Hearth::Validator.validate!(input[:product], ::String, context: "#{context}[:product]")
      end
    end

    class GetDocumentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:document_format], ::String, context: "#{context}[:document_format]")
      end
    end

    class GetDocumentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_information], ::String, context: "#{context}[:status_information]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:document_type], ::String, context: "#{context}[:document_type]")
        Hearth::Validator.validate!(input[:document_format], ::String, context: "#{context}[:document_format]")
        DocumentRequiresList.validate!(input[:requires], context: "#{context}[:requires]") unless input[:requires].nil?
        AttachmentContentList.validate!(input[:attachments_content], context: "#{context}[:attachments_content]") unless input[:attachments_content].nil?
        Hearth::Validator.validate!(input[:review_status], ::String, context: "#{context}[:review_status]")
      end
    end

    class GetInventoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInventoryInput, context: context)
        InventoryFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        InventoryAggregatorList.validate!(input[:aggregators], context: "#{context}[:aggregators]") unless input[:aggregators].nil?
        ResultAttributeList.validate!(input[:result_attributes], context: "#{context}[:result_attributes]") unless input[:result_attributes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetInventoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInventoryOutput, context: context)
        InventoryResultEntityList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetInventorySchemaInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInventorySchemaInput, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:aggregator], ::TrueClass, ::FalseClass, context: "#{context}[:aggregator]")
        Hearth::Validator.validate!(input[:sub_type], ::TrueClass, ::FalseClass, context: "#{context}[:sub_type]")
      end
    end

    class GetInventorySchemaOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInventorySchemaOutput, context: context)
        InventoryItemSchemaResultList.validate!(input[:schemas], context: "#{context}[:schemas]") unless input[:schemas].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetMaintenanceWindowExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMaintenanceWindowExecutionInput, context: context)
        Hearth::Validator.validate!(input[:window_execution_id], ::String, context: "#{context}[:window_execution_id]")
      end
    end

    class GetMaintenanceWindowExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMaintenanceWindowExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:window_execution_id], ::String, context: "#{context}[:window_execution_id]")
        MaintenanceWindowExecutionTaskIdList.validate!(input[:task_ids], context: "#{context}[:task_ids]") unless input[:task_ids].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_details], ::String, context: "#{context}[:status_details]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class GetMaintenanceWindowExecutionTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMaintenanceWindowExecutionTaskInput, context: context)
        Hearth::Validator.validate!(input[:window_execution_id], ::String, context: "#{context}[:window_execution_id]")
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class GetMaintenanceWindowExecutionTaskInvocationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMaintenanceWindowExecutionTaskInvocationInput, context: context)
        Hearth::Validator.validate!(input[:window_execution_id], ::String, context: "#{context}[:window_execution_id]")
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:invocation_id], ::String, context: "#{context}[:invocation_id]")
      end
    end

    class GetMaintenanceWindowExecutionTaskInvocationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMaintenanceWindowExecutionTaskInvocationOutput, context: context)
        Hearth::Validator.validate!(input[:window_execution_id], ::String, context: "#{context}[:window_execution_id]")
        Hearth::Validator.validate!(input[:task_execution_id], ::String, context: "#{context}[:task_execution_id]")
        Hearth::Validator.validate!(input[:invocation_id], ::String, context: "#{context}[:invocation_id]")
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        Hearth::Validator.validate!(input[:task_type], ::String, context: "#{context}[:task_type]")
        Hearth::Validator.validate!(input[:parameters], ::String, context: "#{context}[:parameters]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_details], ::String, context: "#{context}[:status_details]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:owner_information], ::String, context: "#{context}[:owner_information]")
        Hearth::Validator.validate!(input[:window_target_id], ::String, context: "#{context}[:window_target_id]")
      end
    end

    class GetMaintenanceWindowExecutionTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMaintenanceWindowExecutionTaskOutput, context: context)
        Hearth::Validator.validate!(input[:window_execution_id], ::String, context: "#{context}[:window_execution_id]")
        Hearth::Validator.validate!(input[:task_execution_id], ::String, context: "#{context}[:task_execution_id]")
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        MaintenanceWindowTaskParametersList.validate!(input[:task_parameters], context: "#{context}[:task_parameters]") unless input[:task_parameters].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_details], ::String, context: "#{context}[:status_details]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class GetMaintenanceWindowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMaintenanceWindowInput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
      end
    end

    class GetMaintenanceWindowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMaintenanceWindowOutput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:start_date], ::String, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::String, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:schedule_timezone], ::String, context: "#{context}[:schedule_timezone]")
        Hearth::Validator.validate!(input[:schedule_offset], ::Integer, context: "#{context}[:schedule_offset]")
        Hearth::Validator.validate!(input[:next_execution_time], ::String, context: "#{context}[:next_execution_time]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:cutoff], ::Integer, context: "#{context}[:cutoff]")
        Hearth::Validator.validate!(input[:allow_unassociated_targets], ::TrueClass, ::FalseClass, context: "#{context}[:allow_unassociated_targets]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:modified_date], ::Time, context: "#{context}[:modified_date]")
      end
    end

    class GetMaintenanceWindowTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMaintenanceWindowTaskInput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:window_task_id], ::String, context: "#{context}[:window_task_id]")
      end
    end

    class GetMaintenanceWindowTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMaintenanceWindowTaskOutput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:window_task_id], ::String, context: "#{context}[:window_task_id]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        Hearth::Validator.validate!(input[:task_type], ::String, context: "#{context}[:task_type]")
        MaintenanceWindowTaskParameters.validate!(input[:task_parameters], context: "#{context}[:task_parameters]") unless input[:task_parameters].nil?
        MaintenanceWindowTaskInvocationParameters.validate!(input[:task_invocation_parameters], context: "#{context}[:task_invocation_parameters]") unless input[:task_invocation_parameters].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        LoggingInfo.validate!(input[:logging_info], context: "#{context}[:logging_info]") unless input[:logging_info].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:cutoff_behavior], ::String, context: "#{context}[:cutoff_behavior]")
      end
    end

    class GetOpsItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOpsItemInput, context: context)
        Hearth::Validator.validate!(input[:ops_item_id], ::String, context: "#{context}[:ops_item_id]")
      end
    end

    class GetOpsItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOpsItemOutput, context: context)
        OpsItem.validate!(input[:ops_item], context: "#{context}[:ops_item]") unless input[:ops_item].nil?
      end
    end

    class GetOpsMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOpsMetadataInput, context: context)
        Hearth::Validator.validate!(input[:ops_metadata_arn], ::String, context: "#{context}[:ops_metadata_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetOpsMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOpsMetadataOutput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        MetadataMap.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetOpsSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOpsSummaryInput, context: context)
        Hearth::Validator.validate!(input[:sync_name], ::String, context: "#{context}[:sync_name]")
        OpsFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        OpsAggregatorList.validate!(input[:aggregators], context: "#{context}[:aggregators]") unless input[:aggregators].nil?
        OpsResultAttributeList.validate!(input[:result_attributes], context: "#{context}[:result_attributes]") unless input[:result_attributes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetOpsSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOpsSummaryOutput, context: context)
        OpsEntityList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetParameterHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetParameterHistoryInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:with_decryption], ::TrueClass, ::FalseClass, context: "#{context}[:with_decryption]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetParameterHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetParameterHistoryOutput, context: context)
        ParameterHistoryList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetParameterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetParameterInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:with_decryption], ::TrueClass, ::FalseClass, context: "#{context}[:with_decryption]")
      end
    end

    class GetParameterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetParameterOutput, context: context)
        Parameter.validate!(input[:parameter], context: "#{context}[:parameter]") unless input[:parameter].nil?
      end
    end

    class GetParametersByPathInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetParametersByPathInput, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:recursive], ::TrueClass, ::FalseClass, context: "#{context}[:recursive]")
        ParameterStringFilterList.validate!(input[:parameter_filters], context: "#{context}[:parameter_filters]") unless input[:parameter_filters].nil?
        Hearth::Validator.validate!(input[:with_decryption], ::TrueClass, ::FalseClass, context: "#{context}[:with_decryption]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetParametersByPathOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetParametersByPathOutput, context: context)
        ParameterList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetParametersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetParametersInput, context: context)
        ParameterNameList.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:with_decryption], ::TrueClass, ::FalseClass, context: "#{context}[:with_decryption]")
      end
    end

    class GetParametersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetParametersOutput, context: context)
        ParameterList.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        ParameterNameList.validate!(input[:invalid_parameters], context: "#{context}[:invalid_parameters]") unless input[:invalid_parameters].nil?
      end
    end

    class GetPatchBaselineForPatchGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPatchBaselineForPatchGroupInput, context: context)
        Hearth::Validator.validate!(input[:patch_group], ::String, context: "#{context}[:patch_group]")
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
      end
    end

    class GetPatchBaselineForPatchGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPatchBaselineForPatchGroupOutput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
        Hearth::Validator.validate!(input[:patch_group], ::String, context: "#{context}[:patch_group]")
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
      end
    end

    class GetPatchBaselineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPatchBaselineInput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
      end
    end

    class GetPatchBaselineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPatchBaselineOutput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
        PatchFilterGroup.validate!(input[:global_filters], context: "#{context}[:global_filters]") unless input[:global_filters].nil?
        PatchRuleGroup.validate!(input[:approval_rules], context: "#{context}[:approval_rules]") unless input[:approval_rules].nil?
        PatchIdList.validate!(input[:approved_patches], context: "#{context}[:approved_patches]") unless input[:approved_patches].nil?
        Hearth::Validator.validate!(input[:approved_patches_compliance_level], ::String, context: "#{context}[:approved_patches_compliance_level]")
        Hearth::Validator.validate!(input[:approved_patches_enable_non_security], ::TrueClass, ::FalseClass, context: "#{context}[:approved_patches_enable_non_security]")
        PatchIdList.validate!(input[:rejected_patches], context: "#{context}[:rejected_patches]") unless input[:rejected_patches].nil?
        Hearth::Validator.validate!(input[:rejected_patches_action], ::String, context: "#{context}[:rejected_patches_action]")
        PatchGroupList.validate!(input[:patch_groups], context: "#{context}[:patch_groups]") unless input[:patch_groups].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:modified_date], ::Time, context: "#{context}[:modified_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        PatchSourceList.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
      end
    end

    class GetServiceSettingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceSettingInput, context: context)
        Hearth::Validator.validate!(input[:setting_id], ::String, context: "#{context}[:setting_id]")
      end
    end

    class GetServiceSettingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceSettingOutput, context: context)
        ServiceSetting.validate!(input[:service_setting], context: "#{context}[:service_setting]") unless input[:service_setting].nil?
      end
    end

    class HierarchyLevelLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HierarchyLevelLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HierarchyTypeMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HierarchyTypeMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IdempotentParameterMismatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdempotentParameterMismatch, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IncompatiblePolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncompatiblePolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InstanceAggregatedAssociationOverview
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceAggregatedAssociationOverview, context: context)
        Hearth::Validator.validate!(input[:detailed_status], ::String, context: "#{context}[:detailed_status]")
        InstanceAssociationStatusAggregatedCount.validate!(input[:instance_association_status_aggregated_count], context: "#{context}[:instance_association_status_aggregated_count]") unless input[:instance_association_status_aggregated_count].nil?
      end
    end

    class InstanceAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceAssociation, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:association_version], ::String, context: "#{context}[:association_version]")
      end
    end

    class InstanceAssociationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceAssociationOutputLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceAssociationOutputLocation, context: context)
        S3OutputLocation.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
      end
    end

    class InstanceAssociationOutputUrl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceAssociationOutputUrl, context: context)
        S3OutputUrl.validate!(input[:s3_output_url], context: "#{context}[:s3_output_url]") unless input[:s3_output_url].nil?
      end
    end

    class InstanceAssociationStatusAggregatedCount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class InstanceAssociationStatusInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceAssociationStatusInfo, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:association_version], ::String, context: "#{context}[:association_version]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:execution_date], ::Time, context: "#{context}[:execution_date]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:detailed_status], ::String, context: "#{context}[:detailed_status]")
        Hearth::Validator.validate!(input[:execution_summary], ::String, context: "#{context}[:execution_summary]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        InstanceAssociationOutputUrl.validate!(input[:output_url], context: "#{context}[:output_url]") unless input[:output_url].nil?
        Hearth::Validator.validate!(input[:association_name], ::String, context: "#{context}[:association_name]")
      end
    end

    class InstanceAssociationStatusInfos
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceAssociationStatusInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceInformation, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:ping_status], ::String, context: "#{context}[:ping_status]")
        Hearth::Validator.validate!(input[:last_ping_date_time], ::Time, context: "#{context}[:last_ping_date_time]")
        Hearth::Validator.validate!(input[:agent_version], ::String, context: "#{context}[:agent_version]")
        Hearth::Validator.validate!(input[:is_latest_version], ::TrueClass, ::FalseClass, context: "#{context}[:is_latest_version]")
        Hearth::Validator.validate!(input[:platform_type], ::String, context: "#{context}[:platform_type]")
        Hearth::Validator.validate!(input[:platform_name], ::String, context: "#{context}[:platform_name]")
        Hearth::Validator.validate!(input[:platform_version], ::String, context: "#{context}[:platform_version]")
        Hearth::Validator.validate!(input[:activation_id], ::String, context: "#{context}[:activation_id]")
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
        Hearth::Validator.validate!(input[:registration_date], ::Time, context: "#{context}[:registration_date]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:computer_name], ::String, context: "#{context}[:computer_name]")
        Hearth::Validator.validate!(input[:association_status], ::String, context: "#{context}[:association_status]")
        Hearth::Validator.validate!(input[:last_association_execution_date], ::Time, context: "#{context}[:last_association_execution_date]")
        Hearth::Validator.validate!(input[:last_successful_association_execution_date], ::Time, context: "#{context}[:last_successful_association_execution_date]")
        InstanceAggregatedAssociationOverview.validate!(input[:association_overview], context: "#{context}[:association_overview]") unless input[:association_overview].nil?
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
      end
    end

    class InstanceInformationFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceInformationFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        InstanceInformationFilterValueSet.validate!(input[:value_set], context: "#{context}[:value_set]") unless input[:value_set].nil?
      end
    end

    class InstanceInformationFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceInformationFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceInformationFilterValueSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceInformationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceInformationStringFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceInformationStringFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        InstanceInformationFilterValueSet.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class InstanceInformationStringFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceInformationStringFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstancePatchState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstancePatchState, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:patch_group], ::String, context: "#{context}[:patch_group]")
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
        Hearth::Validator.validate!(input[:snapshot_id], ::String, context: "#{context}[:snapshot_id]")
        Hearth::Validator.validate!(input[:install_override_list], ::String, context: "#{context}[:install_override_list]")
        Hearth::Validator.validate!(input[:owner_information], ::String, context: "#{context}[:owner_information]")
        Hearth::Validator.validate!(input[:installed_count], ::Integer, context: "#{context}[:installed_count]")
        Hearth::Validator.validate!(input[:installed_other_count], ::Integer, context: "#{context}[:installed_other_count]")
        Hearth::Validator.validate!(input[:installed_pending_reboot_count], ::Integer, context: "#{context}[:installed_pending_reboot_count]")
        Hearth::Validator.validate!(input[:installed_rejected_count], ::Integer, context: "#{context}[:installed_rejected_count]")
        Hearth::Validator.validate!(input[:missing_count], ::Integer, context: "#{context}[:missing_count]")
        Hearth::Validator.validate!(input[:failed_count], ::Integer, context: "#{context}[:failed_count]")
        Hearth::Validator.validate!(input[:unreported_not_applicable_count], ::Integer, context: "#{context}[:unreported_not_applicable_count]")
        Hearth::Validator.validate!(input[:not_applicable_count], ::Integer, context: "#{context}[:not_applicable_count]")
        Hearth::Validator.validate!(input[:operation_start_time], ::Time, context: "#{context}[:operation_start_time]")
        Hearth::Validator.validate!(input[:operation_end_time], ::Time, context: "#{context}[:operation_end_time]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:last_no_reboot_install_operation_time], ::Time, context: "#{context}[:last_no_reboot_install_operation_time]")
        Hearth::Validator.validate!(input[:reboot_option], ::String, context: "#{context}[:reboot_option]")
        Hearth::Validator.validate!(input[:critical_non_compliant_count], ::Integer, context: "#{context}[:critical_non_compliant_count]")
        Hearth::Validator.validate!(input[:security_non_compliant_count], ::Integer, context: "#{context}[:security_non_compliant_count]")
        Hearth::Validator.validate!(input[:other_non_compliant_count], ::Integer, context: "#{context}[:other_non_compliant_count]")
      end
    end

    class InstancePatchStateFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstancePatchStateFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        InstancePatchStateFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class InstancePatchStateFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstancePatchStateFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstancePatchStateFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstancePatchStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstancePatchState.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstancePatchStatesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstancePatchState.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidActivation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidActivation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidActivationId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidActivationId, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAggregatorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAggregatorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAllowedPatternException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAllowedPatternException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAssociation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAssociationVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAssociationVersion, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAutomationExecutionParametersException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAutomationExecutionParametersException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAutomationSignalException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAutomationSignalException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAutomationStatusUpdateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAutomationStatusUpdateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCommandId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCommandId, context: context)
      end
    end

    class InvalidDeleteInventoryParametersException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeleteInventoryParametersException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDeletionIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeletionIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDocument, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDocumentContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDocumentContent, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDocumentOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDocumentOperation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDocumentSchemaVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDocumentSchemaVersion, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDocumentType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDocumentType, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDocumentVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDocumentVersion, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidFilter, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidFilterKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidFilterKey, context: context)
      end
    end

    class InvalidFilterOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidFilterOption, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidFilterValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidFilterValue, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInstanceId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInstanceId, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInstanceInformationFilterValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInstanceInformationFilterValue, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInventoryGroupException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInventoryGroupException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInventoryItemContextException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInventoryItemContextException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInventoryRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInventoryRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidItemContentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidItemContentException, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidKeyId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidKeyId, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextToken
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextToken, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNotificationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNotificationConfig, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOptionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOptionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOutputFolder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOutputFolder, context: context)
      end
    end

    class InvalidOutputLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOutputLocation, context: context)
      end
    end

    class InvalidParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameters, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPermissionType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPermissionType, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPluginName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPluginName, context: context)
      end
    end

    class InvalidPolicyAttributeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPolicyAttributeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPolicyTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPolicyTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidResourceId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResourceId, context: context)
      end
    end

    class InvalidResourceType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResourceType, context: context)
      end
    end

    class InvalidResultAttributeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResultAttributeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRole
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRole, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSchedule, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTarget, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTargetMaps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTargetMaps, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTypeNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTypeNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidUpdate, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InventoryAggregator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryAggregator, context: context)
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        InventoryAggregatorList.validate!(input[:aggregators], context: "#{context}[:aggregators]") unless input[:aggregators].nil?
        InventoryGroupList.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
      end
    end

    class InventoryAggregatorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InventoryAggregator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InventoryDeletionStatusItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryDeletionStatusItem, context: context)
        Hearth::Validator.validate!(input[:deletion_id], ::String, context: "#{context}[:deletion_id]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:deletion_start_time], ::Time, context: "#{context}[:deletion_start_time]")
        Hearth::Validator.validate!(input[:last_status], ::String, context: "#{context}[:last_status]")
        Hearth::Validator.validate!(input[:last_status_message], ::String, context: "#{context}[:last_status_message]")
        InventoryDeletionSummary.validate!(input[:deletion_summary], context: "#{context}[:deletion_summary]") unless input[:deletion_summary].nil?
        Hearth::Validator.validate!(input[:last_status_update_time], ::Time, context: "#{context}[:last_status_update_time]")
      end
    end

    class InventoryDeletionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryDeletionSummary, context: context)
        Hearth::Validator.validate!(input[:total_count], ::Integer, context: "#{context}[:total_count]")
        Hearth::Validator.validate!(input[:remaining_count], ::Integer, context: "#{context}[:remaining_count]")
        InventoryDeletionSummaryItems.validate!(input[:summary_items], context: "#{context}[:summary_items]") unless input[:summary_items].nil?
      end
    end

    class InventoryDeletionSummaryItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryDeletionSummaryItem, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:remaining_count], ::Integer, context: "#{context}[:remaining_count]")
      end
    end

    class InventoryDeletionSummaryItems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InventoryDeletionSummaryItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InventoryDeletionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InventoryDeletionStatusItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InventoryFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        InventoryFilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class InventoryFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InventoryFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InventoryFilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InventoryGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryGroup, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        InventoryFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class InventoryGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InventoryGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InventoryItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryItem, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Hearth::Validator.validate!(input[:capture_time], ::String, context: "#{context}[:capture_time]")
        Hearth::Validator.validate!(input[:content_hash], ::String, context: "#{context}[:content_hash]")
        InventoryItemEntryList.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
        InventoryItemContentContext.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
      end
    end

    class InventoryItemAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryItemAttribute, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
      end
    end

    class InventoryItemAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InventoryItemAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InventoryItemContentContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class InventoryItemEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class InventoryItemEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InventoryItemEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InventoryItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InventoryItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InventoryItemSchema
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryItemSchema, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        InventoryItemAttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class InventoryItemSchemaResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InventoryItemSchema.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InventoryResultEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryResultEntity, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        InventoryResultItemMap.validate!(input[:data], context: "#{context}[:data]") unless input[:data].nil?
      end
    end

    class InventoryResultEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InventoryResultEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InventoryResultItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InventoryResultItem, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Hearth::Validator.validate!(input[:capture_time], ::String, context: "#{context}[:capture_time]")
        Hearth::Validator.validate!(input[:content_hash], ::String, context: "#{context}[:content_hash]")
        InventoryItemEntryList.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
      end
    end

    class InventoryResultItemMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          InventoryResultItem.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class InvocationDoesNotExist
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvocationDoesNotExist, context: context)
      end
    end

    class ItemContentMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ItemContentMismatchException, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ItemSizeLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ItemSizeLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class LabelParameterVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelParameterVersionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:parameter_version], ::Integer, context: "#{context}[:parameter_version]")
        ParameterLabelList.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
      end
    end

    class LabelParameterVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelParameterVersionOutput, context: context)
        ParameterLabelList.validate!(input[:invalid_labels], context: "#{context}[:invalid_labels]") unless input[:invalid_labels].nil?
        Hearth::Validator.validate!(input[:parameter_version], ::Integer, context: "#{context}[:parameter_version]")
      end
    end

    class ListAssociationVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociationVersionsInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssociationVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociationVersionsOutput, context: context)
        AssociationVersionList.validate!(input[:association_versions], context: "#{context}[:association_versions]") unless input[:association_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociationsInput, context: context)
        AssociationFilterList.validate!(input[:association_filter_list], context: "#{context}[:association_filter_list]") unless input[:association_filter_list].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociationsOutput, context: context)
        AssociationList.validate!(input[:associations], context: "#{context}[:associations]") unless input[:associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCommandInvocationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCommandInvocationsInput, context: context)
        Hearth::Validator.validate!(input[:command_id], ::String, context: "#{context}[:command_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        CommandFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:details], ::TrueClass, ::FalseClass, context: "#{context}[:details]")
      end
    end

    class ListCommandInvocationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCommandInvocationsOutput, context: context)
        CommandInvocationList.validate!(input[:command_invocations], context: "#{context}[:command_invocations]") unless input[:command_invocations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCommandsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCommandsInput, context: context)
        Hearth::Validator.validate!(input[:command_id], ::String, context: "#{context}[:command_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        CommandFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListCommandsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCommandsOutput, context: context)
        CommandList.validate!(input[:commands], context: "#{context}[:commands]") unless input[:commands].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListComplianceItemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComplianceItemsInput, context: context)
        ComplianceStringFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        ComplianceResourceIdList.validate!(input[:resource_ids], context: "#{context}[:resource_ids]") unless input[:resource_ids].nil?
        ComplianceResourceTypeList.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListComplianceItemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComplianceItemsOutput, context: context)
        ComplianceItemList.validate!(input[:compliance_items], context: "#{context}[:compliance_items]") unless input[:compliance_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListComplianceSummariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComplianceSummariesInput, context: context)
        ComplianceStringFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListComplianceSummariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComplianceSummariesOutput, context: context)
        ComplianceSummaryItemList.validate!(input[:compliance_summary_items], context: "#{context}[:compliance_summary_items]") unless input[:compliance_summary_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDocumentMetadataHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDocumentMetadataHistoryInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:metadata], ::String, context: "#{context}[:metadata]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDocumentMetadataHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDocumentMetadataHistoryOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:author], ::String, context: "#{context}[:author]")
        DocumentMetadataResponseInfo.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDocumentVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDocumentVersionsInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDocumentVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDocumentVersionsOutput, context: context)
        DocumentVersionList.validate!(input[:document_versions], context: "#{context}[:document_versions]") unless input[:document_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDocumentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDocumentsInput, context: context)
        DocumentFilterList.validate!(input[:document_filter_list], context: "#{context}[:document_filter_list]") unless input[:document_filter_list].nil?
        DocumentKeyValuesFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDocumentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDocumentsOutput, context: context)
        DocumentIdentifierList.validate!(input[:document_identifiers], context: "#{context}[:document_identifiers]") unless input[:document_identifiers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInventoryEntriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInventoryEntriesInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        InventoryFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListInventoryEntriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInventoryEntriesOutput, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
        Hearth::Validator.validate!(input[:capture_time], ::String, context: "#{context}[:capture_time]")
        InventoryItemEntryList.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOpsItemEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOpsItemEventsInput, context: context)
        OpsItemEventFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOpsItemEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOpsItemEventsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        OpsItemEventSummaries.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
      end
    end

    class ListOpsItemRelatedItemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOpsItemRelatedItemsInput, context: context)
        Hearth::Validator.validate!(input[:ops_item_id], ::String, context: "#{context}[:ops_item_id]")
        OpsItemRelatedItemsFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOpsItemRelatedItemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOpsItemRelatedItemsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        OpsItemRelatedItemSummaries.validate!(input[:summaries], context: "#{context}[:summaries]") unless input[:summaries].nil?
      end
    end

    class ListOpsMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOpsMetadataInput, context: context)
        OpsMetadataFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOpsMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOpsMetadataOutput, context: context)
        OpsMetadataList.validate!(input[:ops_metadata_list], context: "#{context}[:ops_metadata_list]") unless input[:ops_metadata_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourceComplianceSummariesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceComplianceSummariesInput, context: context)
        ComplianceStringFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListResourceComplianceSummariesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceComplianceSummariesOutput, context: context)
        ResourceComplianceSummaryItemList.validate!(input[:resource_compliance_summary_items], context: "#{context}[:resource_compliance_summary_items]") unless input[:resource_compliance_summary_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourceDataSyncInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceDataSyncInput, context: context)
        Hearth::Validator.validate!(input[:sync_type], ::String, context: "#{context}[:sync_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListResourceDataSyncOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceDataSyncOutput, context: context)
        ResourceDataSyncItemList.validate!(input[:resource_data_sync_items], context: "#{context}[:resource_data_sync_items]") unless input[:resource_data_sync_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class LoggingInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingInfo, context: context)
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:s3_region], ::String, context: "#{context}[:s3_region]")
      end
    end

    class MaintenanceWindowAutomationParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceWindowAutomationParameters, context: context)
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        AutomationParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class MaintenanceWindowExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceWindowExecution, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:window_execution_id], ::String, context: "#{context}[:window_execution_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_details], ::String, context: "#{context}[:status_details]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class MaintenanceWindowExecutionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MaintenanceWindowExecution.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MaintenanceWindowExecutionTaskIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MaintenanceWindowExecutionTaskIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceWindowExecutionTaskIdentity, context: context)
        Hearth::Validator.validate!(input[:window_execution_id], ::String, context: "#{context}[:window_execution_id]")
        Hearth::Validator.validate!(input[:task_execution_id], ::String, context: "#{context}[:task_execution_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_details], ::String, context: "#{context}[:status_details]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Hearth::Validator.validate!(input[:task_type], ::String, context: "#{context}[:task_type]")
      end
    end

    class MaintenanceWindowExecutionTaskIdentityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MaintenanceWindowExecutionTaskIdentity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MaintenanceWindowExecutionTaskInvocationIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceWindowExecutionTaskInvocationIdentity, context: context)
        Hearth::Validator.validate!(input[:window_execution_id], ::String, context: "#{context}[:window_execution_id]")
        Hearth::Validator.validate!(input[:task_execution_id], ::String, context: "#{context}[:task_execution_id]")
        Hearth::Validator.validate!(input[:invocation_id], ::String, context: "#{context}[:invocation_id]")
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        Hearth::Validator.validate!(input[:task_type], ::String, context: "#{context}[:task_type]")
        Hearth::Validator.validate!(input[:parameters], ::String, context: "#{context}[:parameters]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_details], ::String, context: "#{context}[:status_details]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:owner_information], ::String, context: "#{context}[:owner_information]")
        Hearth::Validator.validate!(input[:window_target_id], ::String, context: "#{context}[:window_target_id]")
      end
    end

    class MaintenanceWindowExecutionTaskInvocationIdentityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MaintenanceWindowExecutionTaskInvocationIdentity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MaintenanceWindowFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceWindowFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        MaintenanceWindowFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class MaintenanceWindowFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MaintenanceWindowFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MaintenanceWindowFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MaintenanceWindowIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceWindowIdentity, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:cutoff], ::Integer, context: "#{context}[:cutoff]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:schedule_timezone], ::String, context: "#{context}[:schedule_timezone]")
        Hearth::Validator.validate!(input[:schedule_offset], ::Integer, context: "#{context}[:schedule_offset]")
        Hearth::Validator.validate!(input[:end_date], ::String, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:start_date], ::String, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:next_execution_time], ::String, context: "#{context}[:next_execution_time]")
      end
    end

    class MaintenanceWindowIdentityForTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceWindowIdentityForTarget, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class MaintenanceWindowIdentityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MaintenanceWindowIdentity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MaintenanceWindowLambdaParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceWindowLambdaParameters, context: context)
        Hearth::Validator.validate!(input[:client_context], ::String, context: "#{context}[:client_context]")
        Hearth::Validator.validate!(input[:qualifier], ::String, context: "#{context}[:qualifier]")
        Hearth::Validator.validate!(input[:payload], ::String, context: "#{context}[:payload]")
      end
    end

    class MaintenanceWindowRunCommandParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceWindowRunCommandParameters, context: context)
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        CloudWatchOutputConfig.validate!(input[:cloud_watch_output_config], context: "#{context}[:cloud_watch_output_config]") unless input[:cloud_watch_output_config].nil?
        Hearth::Validator.validate!(input[:document_hash], ::String, context: "#{context}[:document_hash]")
        Hearth::Validator.validate!(input[:document_hash_type], ::String, context: "#{context}[:document_hash_type]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        NotificationConfig.validate!(input[:notification_config], context: "#{context}[:notification_config]") unless input[:notification_config].nil?
        Hearth::Validator.validate!(input[:output_s3_bucket_name], ::String, context: "#{context}[:output_s3_bucket_name]")
        Hearth::Validator.validate!(input[:output_s3_key_prefix], ::String, context: "#{context}[:output_s3_key_prefix]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        Hearth::Validator.validate!(input[:timeout_seconds], ::Integer, context: "#{context}[:timeout_seconds]")
      end
    end

    class MaintenanceWindowStepFunctionsParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceWindowStepFunctionsParameters, context: context)
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class MaintenanceWindowTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceWindowTarget, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:window_target_id], ::String, context: "#{context}[:window_target_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:owner_information], ::String, context: "#{context}[:owner_information]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class MaintenanceWindowTargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MaintenanceWindowTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MaintenanceWindowTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceWindowTask, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:window_task_id], ::String, context: "#{context}[:window_task_id]")
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        MaintenanceWindowTaskParameters.validate!(input[:task_parameters], context: "#{context}[:task_parameters]") unless input[:task_parameters].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        LoggingInfo.validate!(input[:logging_info], context: "#{context}[:logging_info]") unless input[:logging_info].nil?
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:cutoff_behavior], ::String, context: "#{context}[:cutoff_behavior]")
      end
    end

    class MaintenanceWindowTaskInvocationParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceWindowTaskInvocationParameters, context: context)
        MaintenanceWindowRunCommandParameters.validate!(input[:run_command], context: "#{context}[:run_command]") unless input[:run_command].nil?
        MaintenanceWindowAutomationParameters.validate!(input[:automation], context: "#{context}[:automation]") unless input[:automation].nil?
        MaintenanceWindowStepFunctionsParameters.validate!(input[:step_functions], context: "#{context}[:step_functions]") unless input[:step_functions].nil?
        MaintenanceWindowLambdaParameters.validate!(input[:lambda], context: "#{context}[:lambda]") unless input[:lambda].nil?
      end
    end

    class MaintenanceWindowTaskList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MaintenanceWindowTask.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MaintenanceWindowTaskParameterValueExpression
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceWindowTaskParameterValueExpression, context: context)
        MaintenanceWindowTaskParameterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class MaintenanceWindowTaskParameterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MaintenanceWindowTaskParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          MaintenanceWindowTaskParameterValueExpression.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MaintenanceWindowTaskParametersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MaintenanceWindowTaskParameters.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MaintenanceWindowsForTargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MaintenanceWindowIdentityForTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MaxDocumentSizeExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaxDocumentSizeExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MetadataKeysToDeleteList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MetadataMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          MetadataValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MetadataValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetadataValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ModifyDocumentPermissionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDocumentPermissionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:permission_type], ::String, context: "#{context}[:permission_type]")
        AccountIdList.validate!(input[:account_ids_to_add], context: "#{context}[:account_ids_to_add]") unless input[:account_ids_to_add].nil?
        AccountIdList.validate!(input[:account_ids_to_remove], context: "#{context}[:account_ids_to_remove]") unless input[:account_ids_to_remove].nil?
        Hearth::Validator.validate!(input[:shared_document_version], ::String, context: "#{context}[:shared_document_version]")
      end
    end

    class ModifyDocumentPermissionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyDocumentPermissionOutput, context: context)
      end
    end

    class NonCompliantSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NonCompliantSummary, context: context)
        Hearth::Validator.validate!(input[:non_compliant_count], ::Integer, context: "#{context}[:non_compliant_count]")
        SeveritySummary.validate!(input[:severity_summary], context: "#{context}[:severity_summary]") unless input[:severity_summary].nil?
      end
    end

    class NormalStringMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class NotificationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationConfig, context: context)
        Hearth::Validator.validate!(input[:notification_arn], ::String, context: "#{context}[:notification_arn]")
        NotificationEventList.validate!(input[:notification_events], context: "#{context}[:notification_events]") unless input[:notification_events].nil?
        Hearth::Validator.validate!(input[:notification_type], ::String, context: "#{context}[:notification_type]")
      end
    end

    class NotificationEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OpsAggregator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsAggregator, context: context)
        Hearth::Validator.validate!(input[:aggregator_type], ::String, context: "#{context}[:aggregator_type]")
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        OpsAggregatorValueMap.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        OpsFilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        OpsAggregatorList.validate!(input[:aggregators], context: "#{context}[:aggregators]") unless input[:aggregators].nil?
      end
    end

    class OpsAggregatorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OpsAggregator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpsAggregatorValueMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class OpsEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsEntity, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        OpsEntityItemMap.validate!(input[:data], context: "#{context}[:data]") unless input[:data].nil?
      end
    end

    class OpsEntityItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsEntityItem, context: context)
        Hearth::Validator.validate!(input[:capture_time], ::String, context: "#{context}[:capture_time]")
        OpsEntityItemEntryList.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
      end
    end

    class OpsEntityItemEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class OpsEntityItemEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OpsEntityItemEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpsEntityItemMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          OpsEntityItem.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class OpsEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OpsEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        OpsFilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class OpsFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OpsFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpsFilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OpsItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItem, context: context)
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:ops_item_type], ::String, context: "#{context}[:ops_item_type]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        OpsItemNotifications.validate!(input[:notifications], context: "#{context}[:notifications]") unless input[:notifications].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        RelatedOpsItems.validate!(input[:related_ops_items], context: "#{context}[:related_ops_items]") unless input[:related_ops_items].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:ops_item_id], ::String, context: "#{context}[:ops_item_id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        OpsItemOperationalData.validate!(input[:operational_data], context: "#{context}[:operational_data]") unless input[:operational_data].nil?
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:actual_start_time], ::Time, context: "#{context}[:actual_start_time]")
        Hearth::Validator.validate!(input[:actual_end_time], ::Time, context: "#{context}[:actual_end_time]")
        Hearth::Validator.validate!(input[:planned_start_time], ::Time, context: "#{context}[:planned_start_time]")
        Hearth::Validator.validate!(input[:planned_end_time], ::Time, context: "#{context}[:planned_end_time]")
      end
    end

    class OpsItemAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItemAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:ops_item_id], ::String, context: "#{context}[:ops_item_id]")
      end
    end

    class OpsItemDataValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItemDataValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class OpsItemEventFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItemEventFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        OpsItemEventFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class OpsItemEventFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OpsItemEventFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OpsItemEventFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpsItemEventSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OpsItemEventSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpsItemEventSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItemEventSummary, context: context)
        Hearth::Validator.validate!(input[:ops_item_id], ::String, context: "#{context}[:ops_item_id]")
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:detail_type], ::String, context: "#{context}[:detail_type]")
        Hearth::Validator.validate!(input[:detail], ::String, context: "#{context}[:detail]")
        OpsItemIdentity.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class OpsItemFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItemFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        OpsItemFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class OpsItemFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OpsItemFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OpsItemFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpsItemIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItemIdentity, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class OpsItemInvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItemInvalidParameterException, context: context)
        OpsItemParameterNamesList.validate!(input[:parameter_names], context: "#{context}[:parameter_names]") unless input[:parameter_names].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OpsItemLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItemLimitExceededException, context: context)
        OpsItemParameterNamesList.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:limit_type], ::String, context: "#{context}[:limit_type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OpsItemNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItemNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OpsItemNotification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItemNotification, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class OpsItemNotifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OpsItemNotification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpsItemOperationalData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          OpsItemDataValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class OpsItemOpsDataKeysList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OpsItemParameterNamesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OpsItemRelatedItemAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItemRelatedItemAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_uri], ::String, context: "#{context}[:resource_uri]")
        Hearth::Validator.validate!(input[:ops_item_id], ::String, context: "#{context}[:ops_item_id]")
      end
    end

    class OpsItemRelatedItemAssociationNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItemRelatedItemAssociationNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OpsItemRelatedItemSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OpsItemRelatedItemSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpsItemRelatedItemSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItemRelatedItemSummary, context: context)
        Hearth::Validator.validate!(input[:ops_item_id], ::String, context: "#{context}[:ops_item_id]")
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:association_type], ::String, context: "#{context}[:association_type]")
        Hearth::Validator.validate!(input[:resource_uri], ::String, context: "#{context}[:resource_uri]")
        OpsItemIdentity.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        OpsItemIdentity.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class OpsItemRelatedItemsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItemRelatedItemsFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        OpsItemRelatedItemsFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class OpsItemRelatedItemsFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OpsItemRelatedItemsFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OpsItemRelatedItemsFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpsItemSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OpsItemSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpsItemSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsItemSummary, context: context)
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate!(input[:last_modified_by], ::String, context: "#{context}[:last_modified_by]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:ops_item_id], ::String, context: "#{context}[:ops_item_id]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        OpsItemOperationalData.validate!(input[:operational_data], context: "#{context}[:operational_data]") unless input[:operational_data].nil?
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:ops_item_type], ::String, context: "#{context}[:ops_item_type]")
        Hearth::Validator.validate!(input[:actual_start_time], ::Time, context: "#{context}[:actual_start_time]")
        Hearth::Validator.validate!(input[:actual_end_time], ::Time, context: "#{context}[:actual_end_time]")
        Hearth::Validator.validate!(input[:planned_start_time], ::Time, context: "#{context}[:planned_start_time]")
        Hearth::Validator.validate!(input[:planned_end_time], ::Time, context: "#{context}[:planned_end_time]")
      end
    end

    class OpsMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsMetadata, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:ops_metadata_arn], ::String, context: "#{context}[:ops_metadata_arn]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:last_modified_user], ::String, context: "#{context}[:last_modified_user]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
      end
    end

    class OpsMetadataAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsMetadataAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OpsMetadataFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsMetadataFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        OpsMetadataFilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class OpsMetadataFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OpsMetadataFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpsMetadataFilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OpsMetadataInvalidArgumentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsMetadataInvalidArgumentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OpsMetadataKeyLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsMetadataKeyLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OpsMetadataLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsMetadataLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OpsMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OpsMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OpsMetadataNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsMetadataNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OpsMetadataTooManyUpdatesException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsMetadataTooManyUpdatesException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OpsResultAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OpsResultAttribute, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
      end
    end

    class OpsResultAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OpsResultAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OutputSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputSource, context: context)
        Hearth::Validator.validate!(input[:output_source_id], ::String, context: "#{context}[:output_source_id]")
        Hearth::Validator.validate!(input[:output_source_type], ::String, context: "#{context}[:output_source_type]")
      end
    end

    class Parameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Parameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:selector], ::String, context: "#{context}[:selector]")
        Hearth::Validator.validate!(input[:source_result], ::String, context: "#{context}[:source_result]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
      end
    end

    class ParameterAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParameterHistory
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterHistory, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:last_modified_user], ::String, context: "#{context}[:last_modified_user]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:allowed_pattern], ::String, context: "#{context}[:allowed_pattern]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        ParameterLabelList.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
        ParameterPolicyList.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
      end
    end

    class ParameterHistoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ParameterHistory.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParameterInlinePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterInlinePolicy, context: context)
        Hearth::Validator.validate!(input[:policy_text], ::String, context: "#{context}[:policy_text]")
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
        Hearth::Validator.validate!(input[:policy_status], ::String, context: "#{context}[:policy_status]")
      end
    end

    class ParameterLabelList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ParameterLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Parameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParameterMaxVersionLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterMaxVersionLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParameterMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterMetadata, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:last_modified_user], ::String, context: "#{context}[:last_modified_user]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:allowed_pattern], ::String, context: "#{context}[:allowed_pattern]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
        ParameterPolicyList.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
      end
    end

    class ParameterMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ParameterMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParameterNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ParameterNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParameterPatternMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterPatternMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParameterPolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ParameterInlinePolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParameterStringFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterStringFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:option], ::String, context: "#{context}[:option]")
        ParameterStringFilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ParameterStringFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ParameterStringFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParameterStringFilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ParameterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ParameterVersionLabelLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterVersionLabelLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParameterVersionNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterVersionNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Parameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ParameterValueList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ParametersFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParametersFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        ParametersFilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ParametersFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ParametersFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParametersFilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Patch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Patch, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:release_date], ::Time, context: "#{context}[:release_date]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:content_url], ::String, context: "#{context}[:content_url]")
        Hearth::Validator.validate!(input[:vendor], ::String, context: "#{context}[:vendor]")
        Hearth::Validator.validate!(input[:product_family], ::String, context: "#{context}[:product_family]")
        Hearth::Validator.validate!(input[:product], ::String, context: "#{context}[:product]")
        Hearth::Validator.validate!(input[:classification], ::String, context: "#{context}[:classification]")
        Hearth::Validator.validate!(input[:msrc_severity], ::String, context: "#{context}[:msrc_severity]")
        Hearth::Validator.validate!(input[:kb_number], ::String, context: "#{context}[:kb_number]")
        Hearth::Validator.validate!(input[:msrc_number], ::String, context: "#{context}[:msrc_number]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        PatchAdvisoryIdList.validate!(input[:advisory_ids], context: "#{context}[:advisory_ids]") unless input[:advisory_ids].nil?
        PatchBugzillaIdList.validate!(input[:bugzilla_ids], context: "#{context}[:bugzilla_ids]") unless input[:bugzilla_ids].nil?
        PatchCVEIdList.validate!(input[:cve_ids], context: "#{context}[:cve_ids]") unless input[:cve_ids].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:epoch], ::Integer, context: "#{context}[:epoch]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:release], ::String, context: "#{context}[:release]")
        Hearth::Validator.validate!(input[:arch], ::String, context: "#{context}[:arch]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
      end
    end

    class PatchAdvisoryIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PatchBaselineIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PatchBaselineIdentity, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
        Hearth::Validator.validate!(input[:baseline_name], ::String, context: "#{context}[:baseline_name]")
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
        Hearth::Validator.validate!(input[:baseline_description], ::String, context: "#{context}[:baseline_description]")
        Hearth::Validator.validate!(input[:default_baseline], ::TrueClass, ::FalseClass, context: "#{context}[:default_baseline]")
      end
    end

    class PatchBaselineIdentityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PatchBaselineIdentity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PatchBugzillaIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PatchCVEIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PatchComplianceData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PatchComplianceData, context: context)
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:kb_id], ::String, context: "#{context}[:kb_id]")
        Hearth::Validator.validate!(input[:classification], ::String, context: "#{context}[:classification]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:installed_time], ::Time, context: "#{context}[:installed_time]")
        Hearth::Validator.validate!(input[:cve_ids], ::String, context: "#{context}[:cve_ids]")
      end
    end

    class PatchComplianceDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PatchComplianceData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PatchFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PatchFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        PatchFilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class PatchFilterGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PatchFilterGroup, context: context)
        PatchFilterList.validate!(input[:patch_filters], context: "#{context}[:patch_filters]") unless input[:patch_filters].nil?
      end
    end

    class PatchFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PatchFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PatchFilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PatchGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PatchGroupPatchBaselineMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PatchGroupPatchBaselineMapping, context: context)
        Hearth::Validator.validate!(input[:patch_group], ::String, context: "#{context}[:patch_group]")
        PatchBaselineIdentity.validate!(input[:baseline_identity], context: "#{context}[:baseline_identity]") unless input[:baseline_identity].nil?
      end
    end

    class PatchGroupPatchBaselineMappingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PatchGroupPatchBaselineMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PatchIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PatchList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Patch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PatchOrchestratorFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PatchOrchestratorFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        PatchOrchestratorFilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class PatchOrchestratorFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PatchOrchestratorFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PatchOrchestratorFilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PatchPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PatchPropertyEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PatchPropertyEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PatchRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PatchRule, context: context)
        PatchFilterGroup.validate!(input[:patch_filter_group], context: "#{context}[:patch_filter_group]") unless input[:patch_filter_group].nil?
        Hearth::Validator.validate!(input[:compliance_level], ::String, context: "#{context}[:compliance_level]")
        Hearth::Validator.validate!(input[:approve_after_days], ::Integer, context: "#{context}[:approve_after_days]")
        Hearth::Validator.validate!(input[:approve_until_date], ::String, context: "#{context}[:approve_until_date]")
        Hearth::Validator.validate!(input[:enable_non_security], ::TrueClass, ::FalseClass, context: "#{context}[:enable_non_security]")
      end
    end

    class PatchRuleGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PatchRuleGroup, context: context)
        PatchRuleList.validate!(input[:patch_rules], context: "#{context}[:patch_rules]") unless input[:patch_rules].nil?
      end
    end

    class PatchRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PatchRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PatchSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PatchSource, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        PatchSourceProductList.validate!(input[:products], context: "#{context}[:products]") unless input[:products].nil?
        Hearth::Validator.validate!(input[:configuration], ::String, context: "#{context}[:configuration]")
      end
    end

    class PatchSourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PatchSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PatchSourceProductList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PatchStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PatchStatus, context: context)
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:compliance_level], ::String, context: "#{context}[:compliance_level]")
        Hearth::Validator.validate!(input[:approval_date], ::Time, context: "#{context}[:approval_date]")
      end
    end

    class PlatformTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PoliciesLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PoliciesLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ProgressCounters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProgressCounters, context: context)
        Hearth::Validator.validate!(input[:total_steps], ::Integer, context: "#{context}[:total_steps]")
        Hearth::Validator.validate!(input[:success_steps], ::Integer, context: "#{context}[:success_steps]")
        Hearth::Validator.validate!(input[:failed_steps], ::Integer, context: "#{context}[:failed_steps]")
        Hearth::Validator.validate!(input[:cancelled_steps], ::Integer, context: "#{context}[:cancelled_steps]")
        Hearth::Validator.validate!(input[:timed_out_steps], ::Integer, context: "#{context}[:timed_out_steps]")
      end
    end

    class PutComplianceItemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutComplianceItemsInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        ComplianceExecutionSummary.validate!(input[:execution_summary], context: "#{context}[:execution_summary]") unless input[:execution_summary].nil?
        ComplianceItemEntryList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:item_content_hash], ::String, context: "#{context}[:item_content_hash]")
        Hearth::Validator.validate!(input[:upload_type], ::String, context: "#{context}[:upload_type]")
      end
    end

    class PutComplianceItemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutComplianceItemsOutput, context: context)
      end
    end

    class PutInventoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutInventoryInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        InventoryItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class PutInventoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutInventoryOutput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PutParameterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutParameterInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:overwrite], ::TrueClass, ::FalseClass, context: "#{context}[:overwrite]")
        Hearth::Validator.validate!(input[:allowed_pattern], ::String, context: "#{context}[:allowed_pattern]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
        Hearth::Validator.validate!(input[:policies], ::String, context: "#{context}[:policies]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
      end
    end

    class PutParameterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutParameterOutput, context: context)
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:tier], ::String, context: "#{context}[:tier]")
      end
    end

    class Regions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RegisterDefaultPatchBaselineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterDefaultPatchBaselineInput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
      end
    end

    class RegisterDefaultPatchBaselineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterDefaultPatchBaselineOutput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
      end
    end

    class RegisterPatchBaselineForPatchGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterPatchBaselineForPatchGroupInput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
        Hearth::Validator.validate!(input[:patch_group], ::String, context: "#{context}[:patch_group]")
      end
    end

    class RegisterPatchBaselineForPatchGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterPatchBaselineForPatchGroupOutput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
        Hearth::Validator.validate!(input[:patch_group], ::String, context: "#{context}[:patch_group]")
      end
    end

    class RegisterTargetWithMaintenanceWindowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterTargetWithMaintenanceWindowInput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:owner_information], ::String, context: "#{context}[:owner_information]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class RegisterTargetWithMaintenanceWindowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterTargetWithMaintenanceWindowOutput, context: context)
        Hearth::Validator.validate!(input[:window_target_id], ::String, context: "#{context}[:window_target_id]")
      end
    end

    class RegisterTaskWithMaintenanceWindowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterTaskWithMaintenanceWindowInput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        Hearth::Validator.validate!(input[:task_type], ::String, context: "#{context}[:task_type]")
        MaintenanceWindowTaskParameters.validate!(input[:task_parameters], context: "#{context}[:task_parameters]") unless input[:task_parameters].nil?
        MaintenanceWindowTaskInvocationParameters.validate!(input[:task_invocation_parameters], context: "#{context}[:task_invocation_parameters]") unless input[:task_invocation_parameters].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        LoggingInfo.validate!(input[:logging_info], context: "#{context}[:logging_info]") unless input[:logging_info].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:cutoff_behavior], ::String, context: "#{context}[:cutoff_behavior]")
      end
    end

    class RegisterTaskWithMaintenanceWindowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterTaskWithMaintenanceWindowOutput, context: context)
        Hearth::Validator.validate!(input[:window_task_id], ::String, context: "#{context}[:window_task_id]")
      end
    end

    class RegistrationMetadataItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegistrationMetadataItem, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class RegistrationMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RegistrationMetadataItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RelatedOpsItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelatedOpsItem, context: context)
        Hearth::Validator.validate!(input[:ops_item_id], ::String, context: "#{context}[:ops_item_id]")
      end
    end

    class RelatedOpsItems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RelatedOpsItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemoveTagsFromResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        KeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class RemoveTagsFromResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceOutput, context: context)
      end
    end

    class ResetServiceSettingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetServiceSettingInput, context: context)
        Hearth::Validator.validate!(input[:setting_id], ::String, context: "#{context}[:setting_id]")
      end
    end

    class ResetServiceSettingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetServiceSettingOutput, context: context)
        ServiceSetting.validate!(input[:service_setting], context: "#{context}[:service_setting]") unless input[:service_setting].nil?
      end
    end

    class ResolvedTargets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolvedTargets, context: context)
        TargetParameterList.validate!(input[:parameter_values], context: "#{context}[:parameter_values]") unless input[:parameter_values].nil?
        Hearth::Validator.validate!(input[:truncated], ::TrueClass, ::FalseClass, context: "#{context}[:truncated]")
      end
    end

    class ResourceComplianceSummaryItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceComplianceSummaryItem, context: context)
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:overall_severity], ::String, context: "#{context}[:overall_severity]")
        ComplianceExecutionSummary.validate!(input[:execution_summary], context: "#{context}[:execution_summary]") unless input[:execution_summary].nil?
        CompliantSummary.validate!(input[:compliant_summary], context: "#{context}[:compliant_summary]") unless input[:compliant_summary].nil?
        NonCompliantSummary.validate!(input[:non_compliant_summary], context: "#{context}[:non_compliant_summary]") unless input[:non_compliant_summary].nil?
      end
    end

    class ResourceComplianceSummaryItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceComplianceSummaryItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceDataSyncAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDataSyncAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:sync_name], ::String, context: "#{context}[:sync_name]")
      end
    end

    class ResourceDataSyncAwsOrganizationsSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDataSyncAwsOrganizationsSource, context: context)
        Hearth::Validator.validate!(input[:organization_source_type], ::String, context: "#{context}[:organization_source_type]")
        ResourceDataSyncOrganizationalUnitList.validate!(input[:organizational_units], context: "#{context}[:organizational_units]") unless input[:organizational_units].nil?
      end
    end

    class ResourceDataSyncConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDataSyncConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceDataSyncCountExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDataSyncCountExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceDataSyncDestinationDataSharing
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDataSyncDestinationDataSharing, context: context)
        Hearth::Validator.validate!(input[:destination_data_sharing_type], ::String, context: "#{context}[:destination_data_sharing_type]")
      end
    end

    class ResourceDataSyncInvalidConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDataSyncInvalidConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceDataSyncItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDataSyncItem, context: context)
        Hearth::Validator.validate!(input[:sync_name], ::String, context: "#{context}[:sync_name]")
        Hearth::Validator.validate!(input[:sync_type], ::String, context: "#{context}[:sync_type]")
        ResourceDataSyncSourceWithState.validate!(input[:sync_source], context: "#{context}[:sync_source]") unless input[:sync_source].nil?
        ResourceDataSyncS3Destination.validate!(input[:s3_destination], context: "#{context}[:s3_destination]") unless input[:s3_destination].nil?
        Hearth::Validator.validate!(input[:last_sync_time], ::Time, context: "#{context}[:last_sync_time]")
        Hearth::Validator.validate!(input[:last_successful_sync_time], ::Time, context: "#{context}[:last_successful_sync_time]")
        Hearth::Validator.validate!(input[:sync_last_modified_time], ::Time, context: "#{context}[:sync_last_modified_time]")
        Hearth::Validator.validate!(input[:last_status], ::String, context: "#{context}[:last_status]")
        Hearth::Validator.validate!(input[:sync_created_time], ::Time, context: "#{context}[:sync_created_time]")
        Hearth::Validator.validate!(input[:last_sync_status_message], ::String, context: "#{context}[:last_sync_status_message]")
      end
    end

    class ResourceDataSyncItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceDataSyncItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceDataSyncNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDataSyncNotFoundException, context: context)
        Hearth::Validator.validate!(input[:sync_name], ::String, context: "#{context}[:sync_name]")
        Hearth::Validator.validate!(input[:sync_type], ::String, context: "#{context}[:sync_type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceDataSyncOrganizationalUnit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDataSyncOrganizationalUnit, context: context)
        Hearth::Validator.validate!(input[:organizational_unit_id], ::String, context: "#{context}[:organizational_unit_id]")
      end
    end

    class ResourceDataSyncOrganizationalUnitList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceDataSyncOrganizationalUnit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceDataSyncS3Destination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDataSyncS3Destination, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:sync_format], ::String, context: "#{context}[:sync_format]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:awskms_key_arn], ::String, context: "#{context}[:awskms_key_arn]")
        ResourceDataSyncDestinationDataSharing.validate!(input[:destination_data_sharing], context: "#{context}[:destination_data_sharing]") unless input[:destination_data_sharing].nil?
      end
    end

    class ResourceDataSyncSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDataSyncSource, context: context)
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        ResourceDataSyncAwsOrganizationsSource.validate!(input[:aws_organizations_source], context: "#{context}[:aws_organizations_source]") unless input[:aws_organizations_source].nil?
        ResourceDataSyncSourceRegionList.validate!(input[:source_regions], context: "#{context}[:source_regions]") unless input[:source_regions].nil?
        Hearth::Validator.validate!(input[:include_future_regions], ::TrueClass, ::FalseClass, context: "#{context}[:include_future_regions]")
        Hearth::Validator.validate!(input[:enable_all_ops_data_sources], ::TrueClass, ::FalseClass, context: "#{context}[:enable_all_ops_data_sources]")
      end
    end

    class ResourceDataSyncSourceRegionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceDataSyncSourceWithState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDataSyncSourceWithState, context: context)
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        ResourceDataSyncAwsOrganizationsSource.validate!(input[:aws_organizations_source], context: "#{context}[:aws_organizations_source]") unless input[:aws_organizations_source].nil?
        ResourceDataSyncSourceRegionList.validate!(input[:source_regions], context: "#{context}[:source_regions]") unless input[:source_regions].nil?
        Hearth::Validator.validate!(input[:include_future_regions], ::TrueClass, ::FalseClass, context: "#{context}[:include_future_regions]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:enable_all_ops_data_sources], ::TrueClass, ::FalseClass, context: "#{context}[:enable_all_ops_data_sources]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResultAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResultAttribute, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
      end
    end

    class ResultAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResultAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResumeSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeSessionInput, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
      end
    end

    class ResumeSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeSessionOutput, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:token_value], ::String, context: "#{context}[:token_value]")
        Hearth::Validator.validate!(input[:stream_url], ::String, context: "#{context}[:stream_url]")
      end
    end

    class ReviewInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReviewInformation, context: context)
        Hearth::Validator.validate!(input[:reviewed_time], ::Time, context: "#{context}[:reviewed_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:reviewer], ::String, context: "#{context}[:reviewer]")
      end
    end

    class ReviewInformationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReviewInformation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Runbook
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Runbook, context: context)
        Hearth::Validator.validate!(input[:document_name], ::String, context: "#{context}[:document_name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        AutomationParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:target_parameter_name], ::String, context: "#{context}[:target_parameter_name]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        TargetMaps.validate!(input[:target_maps], context: "#{context}[:target_maps]") unless input[:target_maps].nil?
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        TargetLocations.validate!(input[:target_locations], context: "#{context}[:target_locations]") unless input[:target_locations].nil?
      end
    end

    class Runbooks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Runbook.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3OutputLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3OutputLocation, context: context)
        Hearth::Validator.validate!(input[:output_s3_region], ::String, context: "#{context}[:output_s3_region]")
        Hearth::Validator.validate!(input[:output_s3_bucket_name], ::String, context: "#{context}[:output_s3_bucket_name]")
        Hearth::Validator.validate!(input[:output_s3_key_prefix], ::String, context: "#{context}[:output_s3_key_prefix]")
      end
    end

    class S3OutputUrl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3OutputUrl, context: context)
        Hearth::Validator.validate!(input[:output_url], ::String, context: "#{context}[:output_url]")
      end
    end

    class ScheduledWindowExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledWindowExecution, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:execution_time], ::String, context: "#{context}[:execution_time]")
      end
    end

    class ScheduledWindowExecutionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ScheduledWindowExecution.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SendAutomationSignalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendAutomationSignalInput, context: context)
        Hearth::Validator.validate!(input[:automation_execution_id], ::String, context: "#{context}[:automation_execution_id]")
        Hearth::Validator.validate!(input[:signal_type], ::String, context: "#{context}[:signal_type]")
        AutomationParameterMap.validate!(input[:payload], context: "#{context}[:payload]") unless input[:payload].nil?
      end
    end

    class SendAutomationSignalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendAutomationSignalOutput, context: context)
      end
    end

    class SendCommandInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendCommandInput, context: context)
        InstanceIdList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:document_name], ::String, context: "#{context}[:document_name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:document_hash], ::String, context: "#{context}[:document_hash]")
        Hearth::Validator.validate!(input[:document_hash_type], ::String, context: "#{context}[:document_hash_type]")
        Hearth::Validator.validate!(input[:timeout_seconds], ::Integer, context: "#{context}[:timeout_seconds]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:output_s3_region], ::String, context: "#{context}[:output_s3_region]")
        Hearth::Validator.validate!(input[:output_s3_bucket_name], ::String, context: "#{context}[:output_s3_bucket_name]")
        Hearth::Validator.validate!(input[:output_s3_key_prefix], ::String, context: "#{context}[:output_s3_key_prefix]")
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        NotificationConfig.validate!(input[:notification_config], context: "#{context}[:notification_config]") unless input[:notification_config].nil?
        CloudWatchOutputConfig.validate!(input[:cloud_watch_output_config], context: "#{context}[:cloud_watch_output_config]") unless input[:cloud_watch_output_config].nil?
      end
    end

    class SendCommandOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendCommandOutput, context: context)
        Command.validate!(input[:command], context: "#{context}[:command]") unless input[:command].nil?
      end
    end

    class ServiceSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceSetting, context: context)
        Hearth::Validator.validate!(input[:setting_id], ::String, context: "#{context}[:setting_id]")
        Hearth::Validator.validate!(input[:setting_value], ::String, context: "#{context}[:setting_value]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:last_modified_user], ::String, context: "#{context}[:last_modified_user]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ServiceSettingNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceSettingNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Session
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Session, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:document_name], ::String, context: "#{context}[:document_name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:details], ::String, context: "#{context}[:details]")
        SessionManagerOutputUrl.validate!(input[:output_url], context: "#{context}[:output_url]") unless input[:output_url].nil?
        Hearth::Validator.validate!(input[:max_session_duration], ::String, context: "#{context}[:max_session_duration]")
      end
    end

    class SessionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SessionFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class SessionFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SessionFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class SessionManagerOutputUrl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SessionManagerOutputUrl, context: context)
        Hearth::Validator.validate!(input[:s3_output_url], ::String, context: "#{context}[:s3_output_url]")
        Hearth::Validator.validate!(input[:cloud_watch_output_url], ::String, context: "#{context}[:cloud_watch_output_url]")
      end
    end

    class SessionManagerParameterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SessionManagerParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          SessionManagerParameterValueList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class SeveritySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SeveritySummary, context: context)
        Hearth::Validator.validate!(input[:critical_count], ::Integer, context: "#{context}[:critical_count]")
        Hearth::Validator.validate!(input[:high_count], ::Integer, context: "#{context}[:high_count]")
        Hearth::Validator.validate!(input[:medium_count], ::Integer, context: "#{context}[:medium_count]")
        Hearth::Validator.validate!(input[:low_count], ::Integer, context: "#{context}[:low_count]")
        Hearth::Validator.validate!(input[:informational_count], ::Integer, context: "#{context}[:informational_count]")
        Hearth::Validator.validate!(input[:unspecified_count], ::Integer, context: "#{context}[:unspecified_count]")
      end
    end

    class StartAssociationsOnceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAssociationsOnceInput, context: context)
        AssociationIdList.validate!(input[:association_ids], context: "#{context}[:association_ids]") unless input[:association_ids].nil?
      end
    end

    class StartAssociationsOnceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAssociationsOnceOutput, context: context)
      end
    end

    class StartAutomationExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAutomationExecutionInput, context: context)
        Hearth::Validator.validate!(input[:document_name], ::String, context: "#{context}[:document_name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        AutomationParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:target_parameter_name], ::String, context: "#{context}[:target_parameter_name]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        TargetMaps.validate!(input[:target_maps], context: "#{context}[:target_maps]") unless input[:target_maps].nil?
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        TargetLocations.validate!(input[:target_locations], context: "#{context}[:target_locations]") unless input[:target_locations].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartAutomationExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAutomationExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:automation_execution_id], ::String, context: "#{context}[:automation_execution_id]")
      end
    end

    class StartChangeRequestExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartChangeRequestExecutionInput, context: context)
        Hearth::Validator.validate!(input[:scheduled_time], ::Time, context: "#{context}[:scheduled_time]")
        Hearth::Validator.validate!(input[:document_name], ::String, context: "#{context}[:document_name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        AutomationParameterMap.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:change_request_name], ::String, context: "#{context}[:change_request_name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:auto_approve], ::TrueClass, ::FalseClass, context: "#{context}[:auto_approve]")
        Runbooks.validate!(input[:runbooks], context: "#{context}[:runbooks]") unless input[:runbooks].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:scheduled_end_time], ::Time, context: "#{context}[:scheduled_end_time]")
        Hearth::Validator.validate!(input[:change_details], ::String, context: "#{context}[:change_details]")
      end
    end

    class StartChangeRequestExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartChangeRequestExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:automation_execution_id], ::String, context: "#{context}[:automation_execution_id]")
      end
    end

    class StartSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSessionInput, context: context)
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:document_name], ::String, context: "#{context}[:document_name]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        SessionManagerParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class StartSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSessionOutput, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:token_value], ::String, context: "#{context}[:token_value]")
        Hearth::Validator.validate!(input[:stream_url], ::String, context: "#{context}[:stream_url]")
      end
    end

    class StatusUnchanged
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatusUnchanged, context: context)
      end
    end

    class StepExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StepExecution, context: context)
        Hearth::Validator.validate!(input[:step_name], ::String, context: "#{context}[:step_name]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:timeout_seconds], ::Integer, context: "#{context}[:timeout_seconds]")
        Hearth::Validator.validate!(input[:on_failure], ::String, context: "#{context}[:on_failure]")
        Hearth::Validator.validate!(input[:max_attempts], ::Integer, context: "#{context}[:max_attempts]")
        Hearth::Validator.validate!(input[:execution_start_time], ::Time, context: "#{context}[:execution_start_time]")
        Hearth::Validator.validate!(input[:execution_end_time], ::Time, context: "#{context}[:execution_end_time]")
        Hearth::Validator.validate!(input[:step_status], ::String, context: "#{context}[:step_status]")
        Hearth::Validator.validate!(input[:response_code], ::String, context: "#{context}[:response_code]")
        NormalStringMap.validate!(input[:inputs], context: "#{context}[:inputs]") unless input[:inputs].nil?
        AutomationParameterMap.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Hearth::Validator.validate!(input[:response], ::String, context: "#{context}[:response]")
        Hearth::Validator.validate!(input[:failure_message], ::String, context: "#{context}[:failure_message]")
        FailureDetails.validate!(input[:failure_details], context: "#{context}[:failure_details]") unless input[:failure_details].nil?
        Hearth::Validator.validate!(input[:step_execution_id], ::String, context: "#{context}[:step_execution_id]")
        AutomationParameterMap.validate!(input[:overridden_parameters], context: "#{context}[:overridden_parameters]") unless input[:overridden_parameters].nil?
        Hearth::Validator.validate!(input[:is_end], ::TrueClass, ::FalseClass, context: "#{context}[:is_end]")
        Hearth::Validator.validate!(input[:next_step], ::String, context: "#{context}[:next_step]")
        Hearth::Validator.validate!(input[:is_critical], ::TrueClass, ::FalseClass, context: "#{context}[:is_critical]")
        ValidNextStepList.validate!(input[:valid_next_steps], context: "#{context}[:valid_next_steps]") unless input[:valid_next_steps].nil?
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        TargetLocation.validate!(input[:target_location], context: "#{context}[:target_location]") unless input[:target_location].nil?
      end
    end

    class StepExecutionFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StepExecutionFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        StepExecutionFilterValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class StepExecutionFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StepExecutionFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StepExecutionFilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StepExecutionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StepExecution.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StopAutomationExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopAutomationExecutionInput, context: context)
        Hearth::Validator.validate!(input[:automation_execution_id], ::String, context: "#{context}[:automation_execution_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class StopAutomationExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopAutomationExecutionOutput, context: context)
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

    class SubTypeCountLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubTypeCountLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Target
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Target, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        TargetValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class TargetInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TargetLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetLocation, context: context)
        Accounts.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
        Regions.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
        Hearth::Validator.validate!(input[:target_location_max_concurrency], ::String, context: "#{context}[:target_location_max_concurrency]")
        Hearth::Validator.validate!(input[:target_location_max_errors], ::String, context: "#{context}[:target_location_max_errors]")
        Hearth::Validator.validate!(input[:execution_role_name], ::String, context: "#{context}[:execution_role_name]")
      end
    end

    class TargetLocations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TargetLocation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          TargetMapValueList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class TargetMapValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TargetMaps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TargetMap.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetNotConnected
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetNotConnected, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TargetParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TargetValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Targets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Target.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TerminateSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateSessionInput, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
      end
    end

    class TerminateSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateSessionOutput, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
      end
    end

    class TooManyTagsError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsError, context: context)
      end
    end

    class TooManyUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyUpdates, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TotalSizeLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TotalSizeLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnlabelParameterVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnlabelParameterVersionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:parameter_version], ::Integer, context: "#{context}[:parameter_version]")
        ParameterLabelList.validate!(input[:labels], context: "#{context}[:labels]") unless input[:labels].nil?
      end
    end

    class UnlabelParameterVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnlabelParameterVersionOutput, context: context)
        ParameterLabelList.validate!(input[:removed_labels], context: "#{context}[:removed_labels]") unless input[:removed_labels].nil?
        ParameterLabelList.validate!(input[:invalid_labels], context: "#{context}[:invalid_labels]") unless input[:invalid_labels].nil?
      end
    end

    class UnsupportedCalendarException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedCalendarException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedFeatureRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedFeatureRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedInventoryItemContextException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedInventoryItemContextException, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedInventorySchemaVersionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedInventorySchemaVersionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedOperatingSystem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedOperatingSystem, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedParameterType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedParameterType, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedPlatformType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedPlatformType, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssociationInput, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
        InstanceAssociationOutputLocation.validate!(input[:output_location], context: "#{context}[:output_location]") unless input[:output_location].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:association_name], ::String, context: "#{context}[:association_name]")
        Hearth::Validator.validate!(input[:association_version], ::String, context: "#{context}[:association_version]")
        Hearth::Validator.validate!(input[:automation_target_parameter_name], ::String, context: "#{context}[:automation_target_parameter_name]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:compliance_severity], ::String, context: "#{context}[:compliance_severity]")
        Hearth::Validator.validate!(input[:sync_compliance], ::String, context: "#{context}[:sync_compliance]")
        Hearth::Validator.validate!(input[:apply_only_at_cron_interval], ::TrueClass, ::FalseClass, context: "#{context}[:apply_only_at_cron_interval]")
        CalendarNameOrARNList.validate!(input[:calendar_names], context: "#{context}[:calendar_names]") unless input[:calendar_names].nil?
        TargetLocations.validate!(input[:target_locations], context: "#{context}[:target_locations]") unless input[:target_locations].nil?
        Hearth::Validator.validate!(input[:schedule_offset], ::Integer, context: "#{context}[:schedule_offset]")
        TargetMaps.validate!(input[:target_maps], context: "#{context}[:target_maps]") unless input[:target_maps].nil?
      end
    end

    class UpdateAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssociationOutput, context: context)
        AssociationDescription.validate!(input[:association_description], context: "#{context}[:association_description]") unless input[:association_description].nil?
      end
    end

    class UpdateAssociationStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssociationStatusInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        AssociationStatus.validate!(input[:association_status], context: "#{context}[:association_status]") unless input[:association_status].nil?
      end
    end

    class UpdateAssociationStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssociationStatusOutput, context: context)
        AssociationDescription.validate!(input[:association_description], context: "#{context}[:association_description]") unless input[:association_description].nil?
      end
    end

    class UpdateDocumentDefaultVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDocumentDefaultVersionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
      end
    end

    class UpdateDocumentDefaultVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDocumentDefaultVersionOutput, context: context)
        DocumentDefaultVersionDescription.validate!(input[:description], context: "#{context}[:description]") unless input[:description].nil?
      end
    end

    class UpdateDocumentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDocumentInput, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        AttachmentsSourceList.validate!(input[:attachments], context: "#{context}[:attachments]") unless input[:attachments].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:version_name], ::String, context: "#{context}[:version_name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        Hearth::Validator.validate!(input[:document_format], ::String, context: "#{context}[:document_format]")
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
      end
    end

    class UpdateDocumentMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDocumentMetadataInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:document_version], ::String, context: "#{context}[:document_version]")
        DocumentReviews.validate!(input[:document_reviews], context: "#{context}[:document_reviews]") unless input[:document_reviews].nil?
      end
    end

    class UpdateDocumentMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDocumentMetadataOutput, context: context)
      end
    end

    class UpdateDocumentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDocumentOutput, context: context)
        DocumentDescription.validate!(input[:document_description], context: "#{context}[:document_description]") unless input[:document_description].nil?
      end
    end

    class UpdateMaintenanceWindowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMaintenanceWindowInput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:start_date], ::String, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::String, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:schedule_timezone], ::String, context: "#{context}[:schedule_timezone]")
        Hearth::Validator.validate!(input[:schedule_offset], ::Integer, context: "#{context}[:schedule_offset]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:cutoff], ::Integer, context: "#{context}[:cutoff]")
        Hearth::Validator.validate!(input[:allow_unassociated_targets], ::TrueClass, ::FalseClass, context: "#{context}[:allow_unassociated_targets]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:replace], ::TrueClass, ::FalseClass, context: "#{context}[:replace]")
      end
    end

    class UpdateMaintenanceWindowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMaintenanceWindowOutput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:start_date], ::String, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::String, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:schedule_timezone], ::String, context: "#{context}[:schedule_timezone]")
        Hearth::Validator.validate!(input[:schedule_offset], ::Integer, context: "#{context}[:schedule_offset]")
        Hearth::Validator.validate!(input[:duration], ::Integer, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:cutoff], ::Integer, context: "#{context}[:cutoff]")
        Hearth::Validator.validate!(input[:allow_unassociated_targets], ::TrueClass, ::FalseClass, context: "#{context}[:allow_unassociated_targets]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class UpdateMaintenanceWindowTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMaintenanceWindowTargetInput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:window_target_id], ::String, context: "#{context}[:window_target_id]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:owner_information], ::String, context: "#{context}[:owner_information]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:replace], ::TrueClass, ::FalseClass, context: "#{context}[:replace]")
      end
    end

    class UpdateMaintenanceWindowTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMaintenanceWindowTargetOutput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:window_target_id], ::String, context: "#{context}[:window_target_id]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:owner_information], ::String, context: "#{context}[:owner_information]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateMaintenanceWindowTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMaintenanceWindowTaskInput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:window_task_id], ::String, context: "#{context}[:window_task_id]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        MaintenanceWindowTaskParameters.validate!(input[:task_parameters], context: "#{context}[:task_parameters]") unless input[:task_parameters].nil?
        MaintenanceWindowTaskInvocationParameters.validate!(input[:task_invocation_parameters], context: "#{context}[:task_invocation_parameters]") unless input[:task_invocation_parameters].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        LoggingInfo.validate!(input[:logging_info], context: "#{context}[:logging_info]") unless input[:logging_info].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:replace], ::TrueClass, ::FalseClass, context: "#{context}[:replace]")
        Hearth::Validator.validate!(input[:cutoff_behavior], ::String, context: "#{context}[:cutoff_behavior]")
      end
    end

    class UpdateMaintenanceWindowTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMaintenanceWindowTaskOutput, context: context)
        Hearth::Validator.validate!(input[:window_id], ::String, context: "#{context}[:window_id]")
        Hearth::Validator.validate!(input[:window_task_id], ::String, context: "#{context}[:window_task_id]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        MaintenanceWindowTaskParameters.validate!(input[:task_parameters], context: "#{context}[:task_parameters]") unless input[:task_parameters].nil?
        MaintenanceWindowTaskInvocationParameters.validate!(input[:task_invocation_parameters], context: "#{context}[:task_invocation_parameters]") unless input[:task_invocation_parameters].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        Hearth::Validator.validate!(input[:max_concurrency], ::String, context: "#{context}[:max_concurrency]")
        Hearth::Validator.validate!(input[:max_errors], ::String, context: "#{context}[:max_errors]")
        LoggingInfo.validate!(input[:logging_info], context: "#{context}[:logging_info]") unless input[:logging_info].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:cutoff_behavior], ::String, context: "#{context}[:cutoff_behavior]")
      end
    end

    class UpdateManagedInstanceRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateManagedInstanceRoleInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:iam_role], ::String, context: "#{context}[:iam_role]")
      end
    end

    class UpdateManagedInstanceRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateManagedInstanceRoleOutput, context: context)
      end
    end

    class UpdateOpsItemInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOpsItemInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        OpsItemOperationalData.validate!(input[:operational_data], context: "#{context}[:operational_data]") unless input[:operational_data].nil?
        OpsItemOpsDataKeysList.validate!(input[:operational_data_to_delete], context: "#{context}[:operational_data_to_delete]") unless input[:operational_data_to_delete].nil?
        OpsItemNotifications.validate!(input[:notifications], context: "#{context}[:notifications]") unless input[:notifications].nil?
        Hearth::Validator.validate!(input[:priority], ::Integer, context: "#{context}[:priority]")
        RelatedOpsItems.validate!(input[:related_ops_items], context: "#{context}[:related_ops_items]") unless input[:related_ops_items].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:ops_item_id], ::String, context: "#{context}[:ops_item_id]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:actual_start_time], ::Time, context: "#{context}[:actual_start_time]")
        Hearth::Validator.validate!(input[:actual_end_time], ::Time, context: "#{context}[:actual_end_time]")
        Hearth::Validator.validate!(input[:planned_start_time], ::Time, context: "#{context}[:planned_start_time]")
        Hearth::Validator.validate!(input[:planned_end_time], ::Time, context: "#{context}[:planned_end_time]")
      end
    end

    class UpdateOpsItemOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOpsItemOutput, context: context)
      end
    end

    class UpdateOpsMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOpsMetadataInput, context: context)
        Hearth::Validator.validate!(input[:ops_metadata_arn], ::String, context: "#{context}[:ops_metadata_arn]")
        MetadataMap.validate!(input[:metadata_to_update], context: "#{context}[:metadata_to_update]") unless input[:metadata_to_update].nil?
        MetadataKeysToDeleteList.validate!(input[:keys_to_delete], context: "#{context}[:keys_to_delete]") unless input[:keys_to_delete].nil?
      end
    end

    class UpdateOpsMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOpsMetadataOutput, context: context)
        Hearth::Validator.validate!(input[:ops_metadata_arn], ::String, context: "#{context}[:ops_metadata_arn]")
      end
    end

    class UpdatePatchBaselineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePatchBaselineInput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        PatchFilterGroup.validate!(input[:global_filters], context: "#{context}[:global_filters]") unless input[:global_filters].nil?
        PatchRuleGroup.validate!(input[:approval_rules], context: "#{context}[:approval_rules]") unless input[:approval_rules].nil?
        PatchIdList.validate!(input[:approved_patches], context: "#{context}[:approved_patches]") unless input[:approved_patches].nil?
        Hearth::Validator.validate!(input[:approved_patches_compliance_level], ::String, context: "#{context}[:approved_patches_compliance_level]")
        Hearth::Validator.validate!(input[:approved_patches_enable_non_security], ::TrueClass, ::FalseClass, context: "#{context}[:approved_patches_enable_non_security]")
        PatchIdList.validate!(input[:rejected_patches], context: "#{context}[:rejected_patches]") unless input[:rejected_patches].nil?
        Hearth::Validator.validate!(input[:rejected_patches_action], ::String, context: "#{context}[:rejected_patches_action]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        PatchSourceList.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
        Hearth::Validator.validate!(input[:replace], ::TrueClass, ::FalseClass, context: "#{context}[:replace]")
      end
    end

    class UpdatePatchBaselineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePatchBaselineOutput, context: context)
        Hearth::Validator.validate!(input[:baseline_id], ::String, context: "#{context}[:baseline_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
        PatchFilterGroup.validate!(input[:global_filters], context: "#{context}[:global_filters]") unless input[:global_filters].nil?
        PatchRuleGroup.validate!(input[:approval_rules], context: "#{context}[:approval_rules]") unless input[:approval_rules].nil?
        PatchIdList.validate!(input[:approved_patches], context: "#{context}[:approved_patches]") unless input[:approved_patches].nil?
        Hearth::Validator.validate!(input[:approved_patches_compliance_level], ::String, context: "#{context}[:approved_patches_compliance_level]")
        Hearth::Validator.validate!(input[:approved_patches_enable_non_security], ::TrueClass, ::FalseClass, context: "#{context}[:approved_patches_enable_non_security]")
        PatchIdList.validate!(input[:rejected_patches], context: "#{context}[:rejected_patches]") unless input[:rejected_patches].nil?
        Hearth::Validator.validate!(input[:rejected_patches_action], ::String, context: "#{context}[:rejected_patches_action]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:modified_date], ::Time, context: "#{context}[:modified_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        PatchSourceList.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
      end
    end

    class UpdateResourceDataSyncInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceDataSyncInput, context: context)
        Hearth::Validator.validate!(input[:sync_name], ::String, context: "#{context}[:sync_name]")
        Hearth::Validator.validate!(input[:sync_type], ::String, context: "#{context}[:sync_type]")
        ResourceDataSyncSource.validate!(input[:sync_source], context: "#{context}[:sync_source]") unless input[:sync_source].nil?
      end
    end

    class UpdateResourceDataSyncOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceDataSyncOutput, context: context)
      end
    end

    class UpdateServiceSettingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceSettingInput, context: context)
        Hearth::Validator.validate!(input[:setting_id], ::String, context: "#{context}[:setting_id]")
        Hearth::Validator.validate!(input[:setting_value], ::String, context: "#{context}[:setting_value]")
      end
    end

    class UpdateServiceSettingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateServiceSettingOutput, context: context)
      end
    end

    class ValidNextStepList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
