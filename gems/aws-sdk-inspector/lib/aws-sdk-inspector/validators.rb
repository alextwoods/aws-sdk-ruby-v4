# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Inspector
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:can_retry], ::TrueClass, ::FalseClass, context: "#{context}[:can_retry]")
      end
    end

    class AddAttributesToFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddAttributesToFindingsInput, context: context)
        AddRemoveAttributesFindingArnList.validate!(input[:finding_arns], context: "#{context}[:finding_arns]") unless input[:finding_arns].nil?
        UserAttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class AddAttributesToFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddAttributesToFindingsOutput, context: context)
        FailedItems.validate!(input[:failed_items], context: "#{context}[:failed_items]") unless input[:failed_items].nil?
      end
    end

    class AddRemoveAttributesFindingArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AgentAlreadyRunningAssessment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentAlreadyRunningAssessment, context: context)
        Hearth::Validator.validate!(input[:agent_id], ::String, context: "#{context}[:agent_id]")
        Hearth::Validator.validate!(input[:assessment_run_arn], ::String, context: "#{context}[:assessment_run_arn]")
      end
    end

    class AgentAlreadyRunningAssessmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AgentAlreadyRunningAssessment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AgentFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentFilter, context: context)
        AgentHealthList.validate!(input[:agent_healths], context: "#{context}[:agent_healths]") unless input[:agent_healths].nil?
        AgentHealthCodeList.validate!(input[:agent_health_codes], context: "#{context}[:agent_health_codes]") unless input[:agent_health_codes].nil?
      end
    end

    class AgentHealthCodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AgentHealthList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AgentIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AgentPreview
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentPreview, context: context)
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:agent_id], ::String, context: "#{context}[:agent_id]")
        Hearth::Validator.validate!(input[:auto_scaling_group], ::String, context: "#{context}[:auto_scaling_group]")
        Hearth::Validator.validate!(input[:agent_health], ::String, context: "#{context}[:agent_health]")
        Hearth::Validator.validate!(input[:agent_version], ::String, context: "#{context}[:agent_version]")
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
        Hearth::Validator.validate!(input[:kernel_version], ::String, context: "#{context}[:kernel_version]")
        Hearth::Validator.validate!(input[:ipv4_address], ::String, context: "#{context}[:ipv4_address]")
      end
    end

    class AgentPreviewList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AgentPreview.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AgentsAlreadyRunningAssessmentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentsAlreadyRunningAssessmentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        AgentAlreadyRunningAssessmentList.validate!(input[:agents], context: "#{context}[:agents]") unless input[:agents].nil?
        Hearth::Validator.validate!(input[:agents_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:agents_truncated]")
        Hearth::Validator.validate!(input[:can_retry], ::TrueClass, ::FalseClass, context: "#{context}[:can_retry]")
      end
    end

    class AssessmentRulesPackageArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssessmentRun
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentRun, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:assessment_template_arn], ::String, context: "#{context}[:assessment_template_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:duration_in_seconds], ::Integer, context: "#{context}[:duration_in_seconds]")
        AssessmentRulesPackageArnList.validate!(input[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless input[:rules_package_arns].nil?
        UserAttributeList.validate!(input[:user_attributes_for_findings], context: "#{context}[:user_attributes_for_findings]") unless input[:user_attributes_for_findings].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:completed_at], ::Time, context: "#{context}[:completed_at]")
        Hearth::Validator.validate!(input[:state_changed_at], ::Time, context: "#{context}[:state_changed_at]")
        Hearth::Validator.validate!(input[:data_collected], ::TrueClass, ::FalseClass, context: "#{context}[:data_collected]")
        AssessmentRunStateChangeList.validate!(input[:state_changes], context: "#{context}[:state_changes]") unless input[:state_changes].nil?
        AssessmentRunNotificationList.validate!(input[:notifications], context: "#{context}[:notifications]") unless input[:notifications].nil?
        AssessmentRunFindingCounts.validate!(input[:finding_counts], context: "#{context}[:finding_counts]") unless input[:finding_counts].nil?
      end
    end

    class AssessmentRunAgent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentRunAgent, context: context)
        Hearth::Validator.validate!(input[:agent_id], ::String, context: "#{context}[:agent_id]")
        Hearth::Validator.validate!(input[:assessment_run_arn], ::String, context: "#{context}[:assessment_run_arn]")
        Hearth::Validator.validate!(input[:agent_health], ::String, context: "#{context}[:agent_health]")
        Hearth::Validator.validate!(input[:agent_health_code], ::String, context: "#{context}[:agent_health_code]")
        Hearth::Validator.validate!(input[:agent_health_details], ::String, context: "#{context}[:agent_health_details]")
        Hearth::Validator.validate!(input[:auto_scaling_group], ::String, context: "#{context}[:auto_scaling_group]")
        TelemetryMetadataList.validate!(input[:telemetry_metadata], context: "#{context}[:telemetry_metadata]") unless input[:telemetry_metadata].nil?
      end
    end

    class AssessmentRunAgentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssessmentRunAgent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssessmentRunFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentRunFilter, context: context)
        Hearth::Validator.validate!(input[:name_pattern], ::String, context: "#{context}[:name_pattern]")
        AssessmentRunStateList.validate!(input[:states], context: "#{context}[:states]") unless input[:states].nil?
        DurationRange.validate!(input[:duration_range], context: "#{context}[:duration_range]") unless input[:duration_range].nil?
        FilterRulesPackageArnList.validate!(input[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless input[:rules_package_arns].nil?
        TimestampRange.validate!(input[:start_time_range], context: "#{context}[:start_time_range]") unless input[:start_time_range].nil?
        TimestampRange.validate!(input[:completion_time_range], context: "#{context}[:completion_time_range]") unless input[:completion_time_range].nil?
        TimestampRange.validate!(input[:state_change_time_range], context: "#{context}[:state_change_time_range]") unless input[:state_change_time_range].nil?
      end
    end

    class AssessmentRunFindingCounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class AssessmentRunInProgressArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssessmentRunInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentRunInProgressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        AssessmentRunInProgressArnList.validate!(input[:assessment_run_arns], context: "#{context}[:assessment_run_arns]") unless input[:assessment_run_arns].nil?
        Hearth::Validator.validate!(input[:assessment_run_arns_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:assessment_run_arns_truncated]")
        Hearth::Validator.validate!(input[:can_retry], ::TrueClass, ::FalseClass, context: "#{context}[:can_retry]")
      end
    end

    class AssessmentRunList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssessmentRun.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssessmentRunNotification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentRunNotification, context: context)
        Hearth::Validator.validate!(input[:date], ::Time, context: "#{context}[:date]")
        Hearth::Validator.validate!(input[:event], ::String, context: "#{context}[:event]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:error], ::TrueClass, ::FalseClass, context: "#{context}[:error]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        Hearth::Validator.validate!(input[:sns_publish_status_code], ::String, context: "#{context}[:sns_publish_status_code]")
      end
    end

    class AssessmentRunNotificationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssessmentRunNotification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssessmentRunStateChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentRunStateChange, context: context)
        Hearth::Validator.validate!(input[:state_changed_at], ::Time, context: "#{context}[:state_changed_at]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class AssessmentRunStateChangeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssessmentRunStateChange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssessmentRunStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssessmentTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentTarget, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:resource_group_arn], ::String, context: "#{context}[:resource_group_arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class AssessmentTargetFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentTargetFilter, context: context)
        Hearth::Validator.validate!(input[:assessment_target_name_pattern], ::String, context: "#{context}[:assessment_target_name_pattern]")
      end
    end

    class AssessmentTargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssessmentTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssessmentTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentTemplate, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:assessment_target_arn], ::String, context: "#{context}[:assessment_target_arn]")
        Hearth::Validator.validate!(input[:duration_in_seconds], ::Integer, context: "#{context}[:duration_in_seconds]")
        AssessmentTemplateRulesPackageArnList.validate!(input[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless input[:rules_package_arns].nil?
        UserAttributeList.validate!(input[:user_attributes_for_findings], context: "#{context}[:user_attributes_for_findings]") unless input[:user_attributes_for_findings].nil?
        Hearth::Validator.validate!(input[:last_assessment_run_arn], ::String, context: "#{context}[:last_assessment_run_arn]")
        Hearth::Validator.validate!(input[:assessment_run_count], ::Integer, context: "#{context}[:assessment_run_count]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class AssessmentTemplateFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssessmentTemplateFilter, context: context)
        Hearth::Validator.validate!(input[:name_pattern], ::String, context: "#{context}[:name_pattern]")
        DurationRange.validate!(input[:duration_range], context: "#{context}[:duration_range]") unless input[:duration_range].nil?
        FilterRulesPackageArnList.validate!(input[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless input[:rules_package_arns].nil?
      end
    end

    class AssessmentTemplateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssessmentTemplate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssessmentTemplateRulesPackageArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssetAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssetAttributes, context: context)
        Hearth::Validator.validate!(input[:schema_version], ::Integer, context: "#{context}[:schema_version]")
        Hearth::Validator.validate!(input[:agent_id], ::String, context: "#{context}[:agent_id]")
        Hearth::Validator.validate!(input[:auto_scaling_group], ::String, context: "#{context}[:auto_scaling_group]")
        Hearth::Validator.validate!(input[:ami_id], ::String, context: "#{context}[:ami_id]")
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Ipv4AddressList.validate!(input[:ipv4_addresses], context: "#{context}[:ipv4_addresses]") unless input[:ipv4_addresses].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        NetworkInterfaces.validate!(input[:network_interfaces], context: "#{context}[:network_interfaces]") unless input[:network_interfaces].nil?
      end
    end

    class Attribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Attribute, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class AttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Attribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoScalingGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BatchDescribeArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BatchDescribeExclusionsArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateAssessmentTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssessmentTargetInput, context: context)
        Hearth::Validator.validate!(input[:assessment_target_name], ::String, context: "#{context}[:assessment_target_name]")
        Hearth::Validator.validate!(input[:resource_group_arn], ::String, context: "#{context}[:resource_group_arn]")
      end
    end

    class CreateAssessmentTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssessmentTargetOutput, context: context)
        Hearth::Validator.validate!(input[:assessment_target_arn], ::String, context: "#{context}[:assessment_target_arn]")
      end
    end

    class CreateAssessmentTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssessmentTemplateInput, context: context)
        Hearth::Validator.validate!(input[:assessment_target_arn], ::String, context: "#{context}[:assessment_target_arn]")
        Hearth::Validator.validate!(input[:assessment_template_name], ::String, context: "#{context}[:assessment_template_name]")
        Hearth::Validator.validate!(input[:duration_in_seconds], ::Integer, context: "#{context}[:duration_in_seconds]")
        AssessmentTemplateRulesPackageArnList.validate!(input[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless input[:rules_package_arns].nil?
        UserAttributeList.validate!(input[:user_attributes_for_findings], context: "#{context}[:user_attributes_for_findings]") unless input[:user_attributes_for_findings].nil?
      end
    end

    class CreateAssessmentTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssessmentTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:assessment_template_arn], ::String, context: "#{context}[:assessment_template_arn]")
      end
    end

    class CreateExclusionsPreviewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExclusionsPreviewInput, context: context)
        Hearth::Validator.validate!(input[:assessment_template_arn], ::String, context: "#{context}[:assessment_template_arn]")
      end
    end

    class CreateExclusionsPreviewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExclusionsPreviewOutput, context: context)
        Hearth::Validator.validate!(input[:preview_token], ::String, context: "#{context}[:preview_token]")
      end
    end

    class CreateResourceGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceGroupInput, context: context)
        ResourceGroupTags.validate!(input[:resource_group_tags], context: "#{context}[:resource_group_tags]") unless input[:resource_group_tags].nil?
      end
    end

    class CreateResourceGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceGroupOutput, context: context)
        Hearth::Validator.validate!(input[:resource_group_arn], ::String, context: "#{context}[:resource_group_arn]")
      end
    end

    class DeleteAssessmentRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssessmentRunInput, context: context)
        Hearth::Validator.validate!(input[:assessment_run_arn], ::String, context: "#{context}[:assessment_run_arn]")
      end
    end

    class DeleteAssessmentRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssessmentRunOutput, context: context)
      end
    end

    class DeleteAssessmentTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssessmentTargetInput, context: context)
        Hearth::Validator.validate!(input[:assessment_target_arn], ::String, context: "#{context}[:assessment_target_arn]")
      end
    end

    class DeleteAssessmentTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssessmentTargetOutput, context: context)
      end
    end

    class DeleteAssessmentTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssessmentTemplateInput, context: context)
        Hearth::Validator.validate!(input[:assessment_template_arn], ::String, context: "#{context}[:assessment_template_arn]")
      end
    end

    class DeleteAssessmentTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssessmentTemplateOutput, context: context)
      end
    end

    class DescribeAssessmentRunsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssessmentRunsInput, context: context)
        BatchDescribeArnList.validate!(input[:assessment_run_arns], context: "#{context}[:assessment_run_arns]") unless input[:assessment_run_arns].nil?
      end
    end

    class DescribeAssessmentRunsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssessmentRunsOutput, context: context)
        AssessmentRunList.validate!(input[:assessment_runs], context: "#{context}[:assessment_runs]") unless input[:assessment_runs].nil?
        FailedItems.validate!(input[:failed_items], context: "#{context}[:failed_items]") unless input[:failed_items].nil?
      end
    end

    class DescribeAssessmentTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssessmentTargetsInput, context: context)
        BatchDescribeArnList.validate!(input[:assessment_target_arns], context: "#{context}[:assessment_target_arns]") unless input[:assessment_target_arns].nil?
      end
    end

    class DescribeAssessmentTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssessmentTargetsOutput, context: context)
        AssessmentTargetList.validate!(input[:assessment_targets], context: "#{context}[:assessment_targets]") unless input[:assessment_targets].nil?
        FailedItems.validate!(input[:failed_items], context: "#{context}[:failed_items]") unless input[:failed_items].nil?
      end
    end

    class DescribeAssessmentTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssessmentTemplatesInput, context: context)
        BatchDescribeArnList.validate!(input[:assessment_template_arns], context: "#{context}[:assessment_template_arns]") unless input[:assessment_template_arns].nil?
      end
    end

    class DescribeAssessmentTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAssessmentTemplatesOutput, context: context)
        AssessmentTemplateList.validate!(input[:assessment_templates], context: "#{context}[:assessment_templates]") unless input[:assessment_templates].nil?
        FailedItems.validate!(input[:failed_items], context: "#{context}[:failed_items]") unless input[:failed_items].nil?
      end
    end

    class DescribeCrossAccountAccessRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCrossAccountAccessRoleInput, context: context)
      end
    end

    class DescribeCrossAccountAccessRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCrossAccountAccessRoleOutput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:valid], ::TrueClass, ::FalseClass, context: "#{context}[:valid]")
        Hearth::Validator.validate!(input[:registered_at], ::Time, context: "#{context}[:registered_at]")
      end
    end

    class DescribeExclusionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExclusionsInput, context: context)
        BatchDescribeExclusionsArnList.validate!(input[:exclusion_arns], context: "#{context}[:exclusion_arns]") unless input[:exclusion_arns].nil?
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
      end
    end

    class DescribeExclusionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExclusionsOutput, context: context)
        ExclusionMap.validate!(input[:exclusions], context: "#{context}[:exclusions]") unless input[:exclusions].nil?
        FailedItems.validate!(input[:failed_items], context: "#{context}[:failed_items]") unless input[:failed_items].nil?
      end
    end

    class DescribeFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFindingsInput, context: context)
        BatchDescribeArnList.validate!(input[:finding_arns], context: "#{context}[:finding_arns]") unless input[:finding_arns].nil?
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
      end
    end

    class DescribeFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFindingsOutput, context: context)
        FindingList.validate!(input[:findings], context: "#{context}[:findings]") unless input[:findings].nil?
        FailedItems.validate!(input[:failed_items], context: "#{context}[:failed_items]") unless input[:failed_items].nil?
      end
    end

    class DescribeResourceGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourceGroupsInput, context: context)
        BatchDescribeArnList.validate!(input[:resource_group_arns], context: "#{context}[:resource_group_arns]") unless input[:resource_group_arns].nil?
      end
    end

    class DescribeResourceGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeResourceGroupsOutput, context: context)
        ResourceGroupList.validate!(input[:resource_groups], context: "#{context}[:resource_groups]") unless input[:resource_groups].nil?
        FailedItems.validate!(input[:failed_items], context: "#{context}[:failed_items]") unless input[:failed_items].nil?
      end
    end

    class DescribeRulesPackagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRulesPackagesInput, context: context)
        BatchDescribeArnList.validate!(input[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless input[:rules_package_arns].nil?
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
      end
    end

    class DescribeRulesPackagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRulesPackagesOutput, context: context)
        RulesPackageList.validate!(input[:rules_packages], context: "#{context}[:rules_packages]") unless input[:rules_packages].nil?
        FailedItems.validate!(input[:failed_items], context: "#{context}[:failed_items]") unless input[:failed_items].nil?
      end
    end

    class DurationRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DurationRange, context: context)
        Hearth::Validator.validate!(input[:min_seconds], ::Integer, context: "#{context}[:min_seconds]")
        Hearth::Validator.validate!(input[:max_seconds], ::Integer, context: "#{context}[:max_seconds]")
      end
    end

    class EventSubscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventSubscription, context: context)
        Hearth::Validator.validate!(input[:event], ::String, context: "#{context}[:event]")
        Hearth::Validator.validate!(input[:subscribed_at], ::Time, context: "#{context}[:subscribed_at]")
      end
    end

    class EventSubscriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventSubscription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Exclusion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Exclusion, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:recommendation], ::String, context: "#{context}[:recommendation]")
        ScopeList.validate!(input[:scopes], context: "#{context}[:scopes]") unless input[:scopes].nil?
        AttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class ExclusionMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Exclusion.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ExclusionPreview
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExclusionPreview, context: context)
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:recommendation], ::String, context: "#{context}[:recommendation]")
        ScopeList.validate!(input[:scopes], context: "#{context}[:scopes]") unless input[:scopes].nil?
        AttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class ExclusionPreviewList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExclusionPreview.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailedItemDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedItemDetails, context: context)
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:retryable], ::TrueClass, ::FalseClass, context: "#{context}[:retryable]")
      end
    end

    class FailedItems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          FailedItemDetails.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class FilterRulesPackageArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Finding
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Finding, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:schema_version], ::Integer, context: "#{context}[:schema_version]")
        Hearth::Validator.validate!(input[:service], ::String, context: "#{context}[:service]")
        InspectorServiceAttributes.validate!(input[:service_attributes], context: "#{context}[:service_attributes]") unless input[:service_attributes].nil?
        Hearth::Validator.validate!(input[:asset_type], ::String, context: "#{context}[:asset_type]")
        AssetAttributes.validate!(input[:asset_attributes], context: "#{context}[:asset_attributes]") unless input[:asset_attributes].nil?
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:recommendation], ::String, context: "#{context}[:recommendation]")
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
        Hearth::Validator.validate!(input[:numeric_severity], ::Float, context: "#{context}[:numeric_severity]")
        Hearth::Validator.validate!(input[:confidence], ::Integer, context: "#{context}[:confidence]")
        Hearth::Validator.validate!(input[:indicator_of_compromise], ::TrueClass, ::FalseClass, context: "#{context}[:indicator_of_compromise]")
        AttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        UserAttributeList.validate!(input[:user_attributes], context: "#{context}[:user_attributes]") unless input[:user_attributes].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class FindingFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingFilter, context: context)
        AgentIdList.validate!(input[:agent_ids], context: "#{context}[:agent_ids]") unless input[:agent_ids].nil?
        AutoScalingGroupList.validate!(input[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless input[:auto_scaling_groups].nil?
        RuleNameList.validate!(input[:rule_names], context: "#{context}[:rule_names]") unless input[:rule_names].nil?
        SeverityList.validate!(input[:severities], context: "#{context}[:severities]") unless input[:severities].nil?
        FilterRulesPackageArnList.validate!(input[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless input[:rules_package_arns].nil?
        AttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        AttributeList.validate!(input[:user_attributes], context: "#{context}[:user_attributes]") unless input[:user_attributes].nil?
        TimestampRange.validate!(input[:creation_time_range], context: "#{context}[:creation_time_range]") unless input[:creation_time_range].nil?
      end
    end

    class FindingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Finding.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetAssessmentReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssessmentReportInput, context: context)
        Hearth::Validator.validate!(input[:assessment_run_arn], ::String, context: "#{context}[:assessment_run_arn]")
        Hearth::Validator.validate!(input[:report_file_format], ::String, context: "#{context}[:report_file_format]")
        Hearth::Validator.validate!(input[:report_type], ::String, context: "#{context}[:report_type]")
      end
    end

    class GetAssessmentReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssessmentReportOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class GetExclusionsPreviewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExclusionsPreviewInput, context: context)
        Hearth::Validator.validate!(input[:assessment_template_arn], ::String, context: "#{context}[:assessment_template_arn]")
        Hearth::Validator.validate!(input[:preview_token], ::String, context: "#{context}[:preview_token]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
      end
    end

    class GetExclusionsPreviewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExclusionsPreviewOutput, context: context)
        Hearth::Validator.validate!(input[:preview_status], ::String, context: "#{context}[:preview_status]")
        ExclusionPreviewList.validate!(input[:exclusion_previews], context: "#{context}[:exclusion_previews]") unless input[:exclusion_previews].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTelemetryMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTelemetryMetadataInput, context: context)
        Hearth::Validator.validate!(input[:assessment_run_arn], ::String, context: "#{context}[:assessment_run_arn]")
      end
    end

    class GetTelemetryMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTelemetryMetadataOutput, context: context)
        TelemetryMetadataList.validate!(input[:telemetry_metadata], context: "#{context}[:telemetry_metadata]") unless input[:telemetry_metadata].nil?
      end
    end

    class InspectorServiceAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InspectorServiceAttributes, context: context)
        Hearth::Validator.validate!(input[:schema_version], ::Integer, context: "#{context}[:schema_version]")
        Hearth::Validator.validate!(input[:assessment_run_arn], ::String, context: "#{context}[:assessment_run_arn]")
        Hearth::Validator.validate!(input[:rules_package_arn], ::String, context: "#{context}[:rules_package_arn]")
      end
    end

    class InternalException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:can_retry], ::TrueClass, ::FalseClass, context: "#{context}[:can_retry]")
      end
    end

    class InvalidCrossAccountRoleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCrossAccountRoleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:can_retry], ::TrueClass, ::FalseClass, context: "#{context}[:can_retry]")
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:can_retry], ::TrueClass, ::FalseClass, context: "#{context}[:can_retry]")
      end
    end

    class Ipv4AddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Ipv6Addresses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:can_retry], ::TrueClass, ::FalseClass, context: "#{context}[:can_retry]")
      end
    end

    class ListAssessmentRunAgentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentRunAgentsInput, context: context)
        Hearth::Validator.validate!(input[:assessment_run_arn], ::String, context: "#{context}[:assessment_run_arn]")
        AgentFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssessmentRunAgentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentRunAgentsOutput, context: context)
        AssessmentRunAgentList.validate!(input[:assessment_run_agents], context: "#{context}[:assessment_run_agents]") unless input[:assessment_run_agents].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssessmentRunsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentRunsInput, context: context)
        ListParentArnList.validate!(input[:assessment_template_arns], context: "#{context}[:assessment_template_arns]") unless input[:assessment_template_arns].nil?
        AssessmentRunFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssessmentRunsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentRunsOutput, context: context)
        ListReturnedArnList.validate!(input[:assessment_run_arns], context: "#{context}[:assessment_run_arns]") unless input[:assessment_run_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssessmentTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentTargetsInput, context: context)
        AssessmentTargetFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssessmentTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentTargetsOutput, context: context)
        ListReturnedArnList.validate!(input[:assessment_target_arns], context: "#{context}[:assessment_target_arns]") unless input[:assessment_target_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssessmentTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentTemplatesInput, context: context)
        ListParentArnList.validate!(input[:assessment_target_arns], context: "#{context}[:assessment_target_arns]") unless input[:assessment_target_arns].nil?
        AssessmentTemplateFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssessmentTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssessmentTemplatesOutput, context: context)
        ListReturnedArnList.validate!(input[:assessment_template_arns], context: "#{context}[:assessment_template_arns]") unless input[:assessment_template_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEventSubscriptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventSubscriptionsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEventSubscriptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventSubscriptionsOutput, context: context)
        SubscriptionList.validate!(input[:subscriptions], context: "#{context}[:subscriptions]") unless input[:subscriptions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExclusionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExclusionsInput, context: context)
        Hearth::Validator.validate!(input[:assessment_run_arn], ::String, context: "#{context}[:assessment_run_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListExclusionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExclusionsOutput, context: context)
        ListReturnedArnList.validate!(input[:exclusion_arns], context: "#{context}[:exclusion_arns]") unless input[:exclusion_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingsInput, context: context)
        ListParentArnList.validate!(input[:assessment_run_arns], context: "#{context}[:assessment_run_arns]") unless input[:assessment_run_arns].nil?
        FindingFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingsOutput, context: context)
        ListReturnedArnList.validate!(input[:finding_arns], context: "#{context}[:finding_arns]") unless input[:finding_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListParentArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListReturnedArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListRulesPackagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRulesPackagesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRulesPackagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRulesPackagesOutput, context: context)
        ListReturnedArnList.validate!(input[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless input[:rules_package_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NetworkInterface
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkInterface, context: context)
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:private_dns_name], ::String, context: "#{context}[:private_dns_name]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        PrivateIpAddresses.validate!(input[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless input[:private_ip_addresses].nil?
        Hearth::Validator.validate!(input[:public_dns_name], ::String, context: "#{context}[:public_dns_name]")
        Hearth::Validator.validate!(input[:public_ip], ::String, context: "#{context}[:public_ip]")
        Ipv6Addresses.validate!(input[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless input[:ipv6_addresses].nil?
        SecurityGroups.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
      end
    end

    class NetworkInterfaces
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NetworkInterface.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NoSuchEntityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchEntityException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:can_retry], ::TrueClass, ::FalseClass, context: "#{context}[:can_retry]")
      end
    end

    class PreviewAgentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreviewAgentsInput, context: context)
        Hearth::Validator.validate!(input[:preview_agents_arn], ::String, context: "#{context}[:preview_agents_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class PreviewAgentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreviewAgentsOutput, context: context)
        AgentPreviewList.validate!(input[:agent_previews], context: "#{context}[:agent_previews]") unless input[:agent_previews].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class PreviewGenerationInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreviewGenerationInProgressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PrivateIp
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrivateIp, context: context)
        Hearth::Validator.validate!(input[:private_dns_name], ::String, context: "#{context}[:private_dns_name]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
      end
    end

    class PrivateIpAddresses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PrivateIp.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RegisterCrossAccountAccessRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterCrossAccountAccessRoleInput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class RegisterCrossAccountAccessRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterCrossAccountAccessRoleOutput, context: context)
      end
    end

    class RemoveAttributesFromFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAttributesFromFindingsInput, context: context)
        AddRemoveAttributesFindingArnList.validate!(input[:finding_arns], context: "#{context}[:finding_arns]") unless input[:finding_arns].nil?
        UserAttributeKeyList.validate!(input[:attribute_keys], context: "#{context}[:attribute_keys]") unless input[:attribute_keys].nil?
      end
    end

    class RemoveAttributesFromFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAttributesFromFindingsOutput, context: context)
        FailedItems.validate!(input[:failed_items], context: "#{context}[:failed_items]") unless input[:failed_items].nil?
      end
    end

    class ResourceGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceGroup, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        ResourceGroupTags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
      end
    end

    class ResourceGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceGroupTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceGroupTag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ResourceGroupTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceGroupTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RuleNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RulesPackage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RulesPackage, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class RulesPackageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RulesPackage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Scope
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scope, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ScopeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Scope.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecurityGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityGroup, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class SecurityGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SecurityGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceTemporarilyUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceTemporarilyUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:can_retry], ::TrueClass, ::FalseClass, context: "#{context}[:can_retry]")
      end
    end

    class SetTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class SetTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTagsForResourceOutput, context: context)
      end
    end

    class SeverityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StartAssessmentRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAssessmentRunInput, context: context)
        Hearth::Validator.validate!(input[:assessment_template_arn], ::String, context: "#{context}[:assessment_template_arn]")
        Hearth::Validator.validate!(input[:assessment_run_name], ::String, context: "#{context}[:assessment_run_name]")
      end
    end

    class StartAssessmentRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAssessmentRunOutput, context: context)
        Hearth::Validator.validate!(input[:assessment_run_arn], ::String, context: "#{context}[:assessment_run_arn]")
      end
    end

    class StopAssessmentRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopAssessmentRunInput, context: context)
        Hearth::Validator.validate!(input[:assessment_run_arn], ::String, context: "#{context}[:assessment_run_arn]")
        Hearth::Validator.validate!(input[:stop_action], ::String, context: "#{context}[:stop_action]")
      end
    end

    class StopAssessmentRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopAssessmentRunOutput, context: context)
      end
    end

    class SubscribeToEventInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscribeToEventInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:event], ::String, context: "#{context}[:event]")
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class SubscribeToEventOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscribeToEventOutput, context: context)
      end
    end

    class Subscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Subscription, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
        EventSubscriptionList.validate!(input[:event_subscriptions], context: "#{context}[:event_subscriptions]") unless input[:event_subscriptions].nil?
      end
    end

    class SubscriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Subscription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
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

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TelemetryMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TelemetryMetadata, context: context)
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:data_size], ::Integer, context: "#{context}[:data_size]")
      end
    end

    class TelemetryMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TelemetryMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TimestampRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimestampRange, context: context)
        Hearth::Validator.validate!(input[:begin_date], ::Time, context: "#{context}[:begin_date]")
        Hearth::Validator.validate!(input[:end_date], ::Time, context: "#{context}[:end_date]")
      end
    end

    class UnsubscribeFromEventInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsubscribeFromEventInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:event], ::String, context: "#{context}[:event]")
        Hearth::Validator.validate!(input[:topic_arn], ::String, context: "#{context}[:topic_arn]")
      end
    end

    class UnsubscribeFromEventOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsubscribeFromEventOutput, context: context)
      end
    end

    class UnsupportedFeatureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedFeatureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:can_retry], ::TrueClass, ::FalseClass, context: "#{context}[:can_retry]")
      end
    end

    class UpdateAssessmentTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssessmentTargetInput, context: context)
        Hearth::Validator.validate!(input[:assessment_target_arn], ::String, context: "#{context}[:assessment_target_arn]")
        Hearth::Validator.validate!(input[:assessment_target_name], ::String, context: "#{context}[:assessment_target_name]")
        Hearth::Validator.validate!(input[:resource_group_arn], ::String, context: "#{context}[:resource_group_arn]")
      end
    end

    class UpdateAssessmentTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAssessmentTargetOutput, context: context)
      end
    end

    class UserAttributeKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UserAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Attribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
