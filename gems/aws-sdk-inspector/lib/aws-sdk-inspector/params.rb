# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Inspector
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type.error_code = params[:error_code]
        type.can_retry = params[:can_retry]
        type
      end
    end

    module AddAttributesToFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddAttributesToFindingsInput, context: context)
        type = Types::AddAttributesToFindingsInput.new
        type.finding_arns = AddRemoveAttributesFindingArnList.build(params[:finding_arns], context: "#{context}[:finding_arns]") unless params[:finding_arns].nil?
        type.attributes = UserAttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module AddAttributesToFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddAttributesToFindingsOutput, context: context)
        type = Types::AddAttributesToFindingsOutput.new
        type.failed_items = FailedItems.build(params[:failed_items], context: "#{context}[:failed_items]") unless params[:failed_items].nil?
        type
      end
    end

    module AddRemoveAttributesFindingArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AgentAlreadyRunningAssessment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentAlreadyRunningAssessment, context: context)
        type = Types::AgentAlreadyRunningAssessment.new
        type.agent_id = params[:agent_id]
        type.assessment_run_arn = params[:assessment_run_arn]
        type
      end
    end

    module AgentAlreadyRunningAssessmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AgentAlreadyRunningAssessment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AgentFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentFilter, context: context)
        type = Types::AgentFilter.new
        type.agent_healths = AgentHealthList.build(params[:agent_healths], context: "#{context}[:agent_healths]") unless params[:agent_healths].nil?
        type.agent_health_codes = AgentHealthCodeList.build(params[:agent_health_codes], context: "#{context}[:agent_health_codes]") unless params[:agent_health_codes].nil?
        type
      end
    end

    module AgentHealthCodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AgentHealthList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AgentIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AgentPreview
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentPreview, context: context)
        type = Types::AgentPreview.new
        type.hostname = params[:hostname]
        type.agent_id = params[:agent_id]
        type.auto_scaling_group = params[:auto_scaling_group]
        type.agent_health = params[:agent_health]
        type.agent_version = params[:agent_version]
        type.operating_system = params[:operating_system]
        type.kernel_version = params[:kernel_version]
        type.ipv4_address = params[:ipv4_address]
        type
      end
    end

    module AgentPreviewList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AgentPreview.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AgentsAlreadyRunningAssessmentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentsAlreadyRunningAssessmentException, context: context)
        type = Types::AgentsAlreadyRunningAssessmentException.new
        type.message = params[:message]
        type.agents = AgentAlreadyRunningAssessmentList.build(params[:agents], context: "#{context}[:agents]") unless params[:agents].nil?
        type.agents_truncated = params[:agents_truncated]
        type.can_retry = params[:can_retry]
        type
      end
    end

    module AssessmentRulesPackageArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssessmentRun
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentRun, context: context)
        type = Types::AssessmentRun.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.assessment_template_arn = params[:assessment_template_arn]
        type.state = params[:state]
        type.duration_in_seconds = params[:duration_in_seconds]
        type.rules_package_arns = AssessmentRulesPackageArnList.build(params[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless params[:rules_package_arns].nil?
        type.user_attributes_for_findings = UserAttributeList.build(params[:user_attributes_for_findings], context: "#{context}[:user_attributes_for_findings]") unless params[:user_attributes_for_findings].nil?
        type.created_at = params[:created_at]
        type.started_at = params[:started_at]
        type.completed_at = params[:completed_at]
        type.state_changed_at = params[:state_changed_at]
        type.data_collected = params[:data_collected]
        type.state_changes = AssessmentRunStateChangeList.build(params[:state_changes], context: "#{context}[:state_changes]") unless params[:state_changes].nil?
        type.notifications = AssessmentRunNotificationList.build(params[:notifications], context: "#{context}[:notifications]") unless params[:notifications].nil?
        type.finding_counts = AssessmentRunFindingCounts.build(params[:finding_counts], context: "#{context}[:finding_counts]") unless params[:finding_counts].nil?
        type
      end
    end

    module AssessmentRunAgent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentRunAgent, context: context)
        type = Types::AssessmentRunAgent.new
        type.agent_id = params[:agent_id]
        type.assessment_run_arn = params[:assessment_run_arn]
        type.agent_health = params[:agent_health]
        type.agent_health_code = params[:agent_health_code]
        type.agent_health_details = params[:agent_health_details]
        type.auto_scaling_group = params[:auto_scaling_group]
        type.telemetry_metadata = TelemetryMetadataList.build(params[:telemetry_metadata], context: "#{context}[:telemetry_metadata]") unless params[:telemetry_metadata].nil?
        type
      end
    end

    module AssessmentRunAgentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssessmentRunAgent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssessmentRunFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentRunFilter, context: context)
        type = Types::AssessmentRunFilter.new
        type.name_pattern = params[:name_pattern]
        type.states = AssessmentRunStateList.build(params[:states], context: "#{context}[:states]") unless params[:states].nil?
        type.duration_range = DurationRange.build(params[:duration_range], context: "#{context}[:duration_range]") unless params[:duration_range].nil?
        type.rules_package_arns = FilterRulesPackageArnList.build(params[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless params[:rules_package_arns].nil?
        type.start_time_range = TimestampRange.build(params[:start_time_range], context: "#{context}[:start_time_range]") unless params[:start_time_range].nil?
        type.completion_time_range = TimestampRange.build(params[:completion_time_range], context: "#{context}[:completion_time_range]") unless params[:completion_time_range].nil?
        type.state_change_time_range = TimestampRange.build(params[:state_change_time_range], context: "#{context}[:state_change_time_range]") unless params[:state_change_time_range].nil?
        type
      end
    end

    module AssessmentRunFindingCounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AssessmentRunInProgressArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssessmentRunInProgressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentRunInProgressException, context: context)
        type = Types::AssessmentRunInProgressException.new
        type.message = params[:message]
        type.assessment_run_arns = AssessmentRunInProgressArnList.build(params[:assessment_run_arns], context: "#{context}[:assessment_run_arns]") unless params[:assessment_run_arns].nil?
        type.assessment_run_arns_truncated = params[:assessment_run_arns_truncated]
        type.can_retry = params[:can_retry]
        type
      end
    end

    module AssessmentRunList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssessmentRun.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssessmentRunNotification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentRunNotification, context: context)
        type = Types::AssessmentRunNotification.new
        type.date = params[:date]
        type.event = params[:event]
        type.message = params[:message]
        type.error = params[:error]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.sns_publish_status_code = params[:sns_publish_status_code]
        type
      end
    end

    module AssessmentRunNotificationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssessmentRunNotification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssessmentRunStateChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentRunStateChange, context: context)
        type = Types::AssessmentRunStateChange.new
        type.state_changed_at = params[:state_changed_at]
        type.state = params[:state]
        type
      end
    end

    module AssessmentRunStateChangeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssessmentRunStateChange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssessmentRunStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssessmentTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentTarget, context: context)
        type = Types::AssessmentTarget.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.resource_group_arn = params[:resource_group_arn]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module AssessmentTargetFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentTargetFilter, context: context)
        type = Types::AssessmentTargetFilter.new
        type.assessment_target_name_pattern = params[:assessment_target_name_pattern]
        type
      end
    end

    module AssessmentTargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssessmentTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssessmentTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentTemplate, context: context)
        type = Types::AssessmentTemplate.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.assessment_target_arn = params[:assessment_target_arn]
        type.duration_in_seconds = params[:duration_in_seconds]
        type.rules_package_arns = AssessmentTemplateRulesPackageArnList.build(params[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless params[:rules_package_arns].nil?
        type.user_attributes_for_findings = UserAttributeList.build(params[:user_attributes_for_findings], context: "#{context}[:user_attributes_for_findings]") unless params[:user_attributes_for_findings].nil?
        type.last_assessment_run_arn = params[:last_assessment_run_arn]
        type.assessment_run_count = params[:assessment_run_count]
        type.created_at = params[:created_at]
        type
      end
    end

    module AssessmentTemplateFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssessmentTemplateFilter, context: context)
        type = Types::AssessmentTemplateFilter.new
        type.name_pattern = params[:name_pattern]
        type.duration_range = DurationRange.build(params[:duration_range], context: "#{context}[:duration_range]") unless params[:duration_range].nil?
        type.rules_package_arns = FilterRulesPackageArnList.build(params[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless params[:rules_package_arns].nil?
        type
      end
    end

    module AssessmentTemplateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssessmentTemplate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssessmentTemplateRulesPackageArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssetAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssetAttributes, context: context)
        type = Types::AssetAttributes.new
        type.schema_version = params[:schema_version]
        type.agent_id = params[:agent_id]
        type.auto_scaling_group = params[:auto_scaling_group]
        type.ami_id = params[:ami_id]
        type.hostname = params[:hostname]
        type.ipv4_addresses = Ipv4AddressList.build(params[:ipv4_addresses], context: "#{context}[:ipv4_addresses]") unless params[:ipv4_addresses].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.network_interfaces = NetworkInterfaces.build(params[:network_interfaces], context: "#{context}[:network_interfaces]") unless params[:network_interfaces].nil?
        type
      end
    end

    module Attribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Attribute, context: context)
        type = Types::Attribute.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module AttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Attribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutoScalingGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BatchDescribeArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BatchDescribeExclusionsArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateAssessmentTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssessmentTargetInput, context: context)
        type = Types::CreateAssessmentTargetInput.new
        type.assessment_target_name = params[:assessment_target_name]
        type.resource_group_arn = params[:resource_group_arn]
        type
      end
    end

    module CreateAssessmentTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssessmentTargetOutput, context: context)
        type = Types::CreateAssessmentTargetOutput.new
        type.assessment_target_arn = params[:assessment_target_arn]
        type
      end
    end

    module CreateAssessmentTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssessmentTemplateInput, context: context)
        type = Types::CreateAssessmentTemplateInput.new
        type.assessment_target_arn = params[:assessment_target_arn]
        type.assessment_template_name = params[:assessment_template_name]
        type.duration_in_seconds = params[:duration_in_seconds]
        type.rules_package_arns = AssessmentTemplateRulesPackageArnList.build(params[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless params[:rules_package_arns].nil?
        type.user_attributes_for_findings = UserAttributeList.build(params[:user_attributes_for_findings], context: "#{context}[:user_attributes_for_findings]") unless params[:user_attributes_for_findings].nil?
        type
      end
    end

    module CreateAssessmentTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssessmentTemplateOutput, context: context)
        type = Types::CreateAssessmentTemplateOutput.new
        type.assessment_template_arn = params[:assessment_template_arn]
        type
      end
    end

    module CreateExclusionsPreviewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExclusionsPreviewInput, context: context)
        type = Types::CreateExclusionsPreviewInput.new
        type.assessment_template_arn = params[:assessment_template_arn]
        type
      end
    end

    module CreateExclusionsPreviewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExclusionsPreviewOutput, context: context)
        type = Types::CreateExclusionsPreviewOutput.new
        type.preview_token = params[:preview_token]
        type
      end
    end

    module CreateResourceGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceGroupInput, context: context)
        type = Types::CreateResourceGroupInput.new
        type.resource_group_tags = ResourceGroupTags.build(params[:resource_group_tags], context: "#{context}[:resource_group_tags]") unless params[:resource_group_tags].nil?
        type
      end
    end

    module CreateResourceGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceGroupOutput, context: context)
        type = Types::CreateResourceGroupOutput.new
        type.resource_group_arn = params[:resource_group_arn]
        type
      end
    end

    module DeleteAssessmentRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssessmentRunInput, context: context)
        type = Types::DeleteAssessmentRunInput.new
        type.assessment_run_arn = params[:assessment_run_arn]
        type
      end
    end

    module DeleteAssessmentRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssessmentRunOutput, context: context)
        type = Types::DeleteAssessmentRunOutput.new
        type
      end
    end

    module DeleteAssessmentTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssessmentTargetInput, context: context)
        type = Types::DeleteAssessmentTargetInput.new
        type.assessment_target_arn = params[:assessment_target_arn]
        type
      end
    end

    module DeleteAssessmentTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssessmentTargetOutput, context: context)
        type = Types::DeleteAssessmentTargetOutput.new
        type
      end
    end

    module DeleteAssessmentTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssessmentTemplateInput, context: context)
        type = Types::DeleteAssessmentTemplateInput.new
        type.assessment_template_arn = params[:assessment_template_arn]
        type
      end
    end

    module DeleteAssessmentTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssessmentTemplateOutput, context: context)
        type = Types::DeleteAssessmentTemplateOutput.new
        type
      end
    end

    module DescribeAssessmentRunsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssessmentRunsInput, context: context)
        type = Types::DescribeAssessmentRunsInput.new
        type.assessment_run_arns = BatchDescribeArnList.build(params[:assessment_run_arns], context: "#{context}[:assessment_run_arns]") unless params[:assessment_run_arns].nil?
        type
      end
    end

    module DescribeAssessmentRunsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssessmentRunsOutput, context: context)
        type = Types::DescribeAssessmentRunsOutput.new
        type.assessment_runs = AssessmentRunList.build(params[:assessment_runs], context: "#{context}[:assessment_runs]") unless params[:assessment_runs].nil?
        type.failed_items = FailedItems.build(params[:failed_items], context: "#{context}[:failed_items]") unless params[:failed_items].nil?
        type
      end
    end

    module DescribeAssessmentTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssessmentTargetsInput, context: context)
        type = Types::DescribeAssessmentTargetsInput.new
        type.assessment_target_arns = BatchDescribeArnList.build(params[:assessment_target_arns], context: "#{context}[:assessment_target_arns]") unless params[:assessment_target_arns].nil?
        type
      end
    end

    module DescribeAssessmentTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssessmentTargetsOutput, context: context)
        type = Types::DescribeAssessmentTargetsOutput.new
        type.assessment_targets = AssessmentTargetList.build(params[:assessment_targets], context: "#{context}[:assessment_targets]") unless params[:assessment_targets].nil?
        type.failed_items = FailedItems.build(params[:failed_items], context: "#{context}[:failed_items]") unless params[:failed_items].nil?
        type
      end
    end

    module DescribeAssessmentTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssessmentTemplatesInput, context: context)
        type = Types::DescribeAssessmentTemplatesInput.new
        type.assessment_template_arns = BatchDescribeArnList.build(params[:assessment_template_arns], context: "#{context}[:assessment_template_arns]") unless params[:assessment_template_arns].nil?
        type
      end
    end

    module DescribeAssessmentTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAssessmentTemplatesOutput, context: context)
        type = Types::DescribeAssessmentTemplatesOutput.new
        type.assessment_templates = AssessmentTemplateList.build(params[:assessment_templates], context: "#{context}[:assessment_templates]") unless params[:assessment_templates].nil?
        type.failed_items = FailedItems.build(params[:failed_items], context: "#{context}[:failed_items]") unless params[:failed_items].nil?
        type
      end
    end

    module DescribeCrossAccountAccessRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCrossAccountAccessRoleInput, context: context)
        type = Types::DescribeCrossAccountAccessRoleInput.new
        type
      end
    end

    module DescribeCrossAccountAccessRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCrossAccountAccessRoleOutput, context: context)
        type = Types::DescribeCrossAccountAccessRoleOutput.new
        type.role_arn = params[:role_arn]
        type.valid = params[:valid]
        type.registered_at = params[:registered_at]
        type
      end
    end

    module DescribeExclusionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExclusionsInput, context: context)
        type = Types::DescribeExclusionsInput.new
        type.exclusion_arns = BatchDescribeExclusionsArnList.build(params[:exclusion_arns], context: "#{context}[:exclusion_arns]") unless params[:exclusion_arns].nil?
        type.locale = params[:locale]
        type
      end
    end

    module DescribeExclusionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExclusionsOutput, context: context)
        type = Types::DescribeExclusionsOutput.new
        type.exclusions = ExclusionMap.build(params[:exclusions], context: "#{context}[:exclusions]") unless params[:exclusions].nil?
        type.failed_items = FailedItems.build(params[:failed_items], context: "#{context}[:failed_items]") unless params[:failed_items].nil?
        type
      end
    end

    module DescribeFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFindingsInput, context: context)
        type = Types::DescribeFindingsInput.new
        type.finding_arns = BatchDescribeArnList.build(params[:finding_arns], context: "#{context}[:finding_arns]") unless params[:finding_arns].nil?
        type.locale = params[:locale]
        type
      end
    end

    module DescribeFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFindingsOutput, context: context)
        type = Types::DescribeFindingsOutput.new
        type.findings = FindingList.build(params[:findings], context: "#{context}[:findings]") unless params[:findings].nil?
        type.failed_items = FailedItems.build(params[:failed_items], context: "#{context}[:failed_items]") unless params[:failed_items].nil?
        type
      end
    end

    module DescribeResourceGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourceGroupsInput, context: context)
        type = Types::DescribeResourceGroupsInput.new
        type.resource_group_arns = BatchDescribeArnList.build(params[:resource_group_arns], context: "#{context}[:resource_group_arns]") unless params[:resource_group_arns].nil?
        type
      end
    end

    module DescribeResourceGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeResourceGroupsOutput, context: context)
        type = Types::DescribeResourceGroupsOutput.new
        type.resource_groups = ResourceGroupList.build(params[:resource_groups], context: "#{context}[:resource_groups]") unless params[:resource_groups].nil?
        type.failed_items = FailedItems.build(params[:failed_items], context: "#{context}[:failed_items]") unless params[:failed_items].nil?
        type
      end
    end

    module DescribeRulesPackagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRulesPackagesInput, context: context)
        type = Types::DescribeRulesPackagesInput.new
        type.rules_package_arns = BatchDescribeArnList.build(params[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless params[:rules_package_arns].nil?
        type.locale = params[:locale]
        type
      end
    end

    module DescribeRulesPackagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRulesPackagesOutput, context: context)
        type = Types::DescribeRulesPackagesOutput.new
        type.rules_packages = RulesPackageList.build(params[:rules_packages], context: "#{context}[:rules_packages]") unless params[:rules_packages].nil?
        type.failed_items = FailedItems.build(params[:failed_items], context: "#{context}[:failed_items]") unless params[:failed_items].nil?
        type
      end
    end

    module DurationRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DurationRange, context: context)
        type = Types::DurationRange.new
        type.min_seconds = params[:min_seconds]
        type.max_seconds = params[:max_seconds]
        type
      end
    end

    module EventSubscription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventSubscription, context: context)
        type = Types::EventSubscription.new
        type.event = params[:event]
        type.subscribed_at = params[:subscribed_at]
        type
      end
    end

    module EventSubscriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventSubscription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Exclusion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Exclusion, context: context)
        type = Types::Exclusion.new
        type.arn = params[:arn]
        type.title = params[:title]
        type.description = params[:description]
        type.recommendation = params[:recommendation]
        type.scopes = ScopeList.build(params[:scopes], context: "#{context}[:scopes]") unless params[:scopes].nil?
        type.attributes = AttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module ExclusionMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Exclusion.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ExclusionPreview
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExclusionPreview, context: context)
        type = Types::ExclusionPreview.new
        type.title = params[:title]
        type.description = params[:description]
        type.recommendation = params[:recommendation]
        type.scopes = ScopeList.build(params[:scopes], context: "#{context}[:scopes]") unless params[:scopes].nil?
        type.attributes = AttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module ExclusionPreviewList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExclusionPreview.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailedItemDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedItemDetails, context: context)
        type = Types::FailedItemDetails.new
        type.failure_code = params[:failure_code]
        type.retryable = params[:retryable]
        type
      end
    end

    module FailedItems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = FailedItemDetails.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module FilterRulesPackageArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Finding
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Finding, context: context)
        type = Types::Finding.new
        type.arn = params[:arn]
        type.schema_version = params[:schema_version]
        type.service = params[:service]
        type.service_attributes = InspectorServiceAttributes.build(params[:service_attributes], context: "#{context}[:service_attributes]") unless params[:service_attributes].nil?
        type.asset_type = params[:asset_type]
        type.asset_attributes = AssetAttributes.build(params[:asset_attributes], context: "#{context}[:asset_attributes]") unless params[:asset_attributes].nil?
        type.id = params[:id]
        type.title = params[:title]
        type.description = params[:description]
        type.recommendation = params[:recommendation]
        type.severity = params[:severity]
        type.numeric_severity = params[:numeric_severity]
        type.confidence = params[:confidence]
        type.indicator_of_compromise = params[:indicator_of_compromise]
        type.attributes = AttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.user_attributes = UserAttributeList.build(params[:user_attributes], context: "#{context}[:user_attributes]") unless params[:user_attributes].nil?
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module FindingFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingFilter, context: context)
        type = Types::FindingFilter.new
        type.agent_ids = AgentIdList.build(params[:agent_ids], context: "#{context}[:agent_ids]") unless params[:agent_ids].nil?
        type.auto_scaling_groups = AutoScalingGroupList.build(params[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless params[:auto_scaling_groups].nil?
        type.rule_names = RuleNameList.build(params[:rule_names], context: "#{context}[:rule_names]") unless params[:rule_names].nil?
        type.severities = SeverityList.build(params[:severities], context: "#{context}[:severities]") unless params[:severities].nil?
        type.rules_package_arns = FilterRulesPackageArnList.build(params[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless params[:rules_package_arns].nil?
        type.attributes = AttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.user_attributes = AttributeList.build(params[:user_attributes], context: "#{context}[:user_attributes]") unless params[:user_attributes].nil?
        type.creation_time_range = TimestampRange.build(params[:creation_time_range], context: "#{context}[:creation_time_range]") unless params[:creation_time_range].nil?
        type
      end
    end

    module FindingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Finding.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetAssessmentReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssessmentReportInput, context: context)
        type = Types::GetAssessmentReportInput.new
        type.assessment_run_arn = params[:assessment_run_arn]
        type.report_file_format = params[:report_file_format]
        type.report_type = params[:report_type]
        type
      end
    end

    module GetAssessmentReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssessmentReportOutput, context: context)
        type = Types::GetAssessmentReportOutput.new
        type.status = params[:status]
        type.url = params[:url]
        type
      end
    end

    module GetExclusionsPreviewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExclusionsPreviewInput, context: context)
        type = Types::GetExclusionsPreviewInput.new
        type.assessment_template_arn = params[:assessment_template_arn]
        type.preview_token = params[:preview_token]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.locale = params[:locale]
        type
      end
    end

    module GetExclusionsPreviewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExclusionsPreviewOutput, context: context)
        type = Types::GetExclusionsPreviewOutput.new
        type.preview_status = params[:preview_status]
        type.exclusion_previews = ExclusionPreviewList.build(params[:exclusion_previews], context: "#{context}[:exclusion_previews]") unless params[:exclusion_previews].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTelemetryMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTelemetryMetadataInput, context: context)
        type = Types::GetTelemetryMetadataInput.new
        type.assessment_run_arn = params[:assessment_run_arn]
        type
      end
    end

    module GetTelemetryMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTelemetryMetadataOutput, context: context)
        type = Types::GetTelemetryMetadataOutput.new
        type.telemetry_metadata = TelemetryMetadataList.build(params[:telemetry_metadata], context: "#{context}[:telemetry_metadata]") unless params[:telemetry_metadata].nil?
        type
      end
    end

    module InspectorServiceAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InspectorServiceAttributes, context: context)
        type = Types::InspectorServiceAttributes.new
        type.schema_version = params[:schema_version]
        type.assessment_run_arn = params[:assessment_run_arn]
        type.rules_package_arn = params[:rules_package_arn]
        type
      end
    end

    module InternalException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalException, context: context)
        type = Types::InternalException.new
        type.message = params[:message]
        type.can_retry = params[:can_retry]
        type
      end
    end

    module InvalidCrossAccountRoleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCrossAccountRoleException, context: context)
        type = Types::InvalidCrossAccountRoleException.new
        type.message = params[:message]
        type.error_code = params[:error_code]
        type.can_retry = params[:can_retry]
        type
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.message = params[:message]
        type.error_code = params[:error_code]
        type.can_retry = params[:can_retry]
        type
      end
    end

    module Ipv4AddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Ipv6Addresses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type.error_code = params[:error_code]
        type.can_retry = params[:can_retry]
        type
      end
    end

    module ListAssessmentRunAgentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentRunAgentsInput, context: context)
        type = Types::ListAssessmentRunAgentsInput.new
        type.assessment_run_arn = params[:assessment_run_arn]
        type.filter = AgentFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssessmentRunAgentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentRunAgentsOutput, context: context)
        type = Types::ListAssessmentRunAgentsOutput.new
        type.assessment_run_agents = AssessmentRunAgentList.build(params[:assessment_run_agents], context: "#{context}[:assessment_run_agents]") unless params[:assessment_run_agents].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssessmentRunsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentRunsInput, context: context)
        type = Types::ListAssessmentRunsInput.new
        type.assessment_template_arns = ListParentArnList.build(params[:assessment_template_arns], context: "#{context}[:assessment_template_arns]") unless params[:assessment_template_arns].nil?
        type.filter = AssessmentRunFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssessmentRunsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentRunsOutput, context: context)
        type = Types::ListAssessmentRunsOutput.new
        type.assessment_run_arns = ListReturnedArnList.build(params[:assessment_run_arns], context: "#{context}[:assessment_run_arns]") unless params[:assessment_run_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssessmentTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentTargetsInput, context: context)
        type = Types::ListAssessmentTargetsInput.new
        type.filter = AssessmentTargetFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssessmentTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentTargetsOutput, context: context)
        type = Types::ListAssessmentTargetsOutput.new
        type.assessment_target_arns = ListReturnedArnList.build(params[:assessment_target_arns], context: "#{context}[:assessment_target_arns]") unless params[:assessment_target_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssessmentTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentTemplatesInput, context: context)
        type = Types::ListAssessmentTemplatesInput.new
        type.assessment_target_arns = ListParentArnList.build(params[:assessment_target_arns], context: "#{context}[:assessment_target_arns]") unless params[:assessment_target_arns].nil?
        type.filter = AssessmentTemplateFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssessmentTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssessmentTemplatesOutput, context: context)
        type = Types::ListAssessmentTemplatesOutput.new
        type.assessment_template_arns = ListReturnedArnList.build(params[:assessment_template_arns], context: "#{context}[:assessment_template_arns]") unless params[:assessment_template_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEventSubscriptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventSubscriptionsInput, context: context)
        type = Types::ListEventSubscriptionsInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEventSubscriptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventSubscriptionsOutput, context: context)
        type = Types::ListEventSubscriptionsOutput.new
        type.subscriptions = SubscriptionList.build(params[:subscriptions], context: "#{context}[:subscriptions]") unless params[:subscriptions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExclusionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExclusionsInput, context: context)
        type = Types::ListExclusionsInput.new
        type.assessment_run_arn = params[:assessment_run_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListExclusionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExclusionsOutput, context: context)
        type = Types::ListExclusionsOutput.new
        type.exclusion_arns = ListReturnedArnList.build(params[:exclusion_arns], context: "#{context}[:exclusion_arns]") unless params[:exclusion_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingsInput, context: context)
        type = Types::ListFindingsInput.new
        type.assessment_run_arns = ListParentArnList.build(params[:assessment_run_arns], context: "#{context}[:assessment_run_arns]") unless params[:assessment_run_arns].nil?
        type.filter = FindingFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingsOutput, context: context)
        type = Types::ListFindingsOutput.new
        type.finding_arns = ListReturnedArnList.build(params[:finding_arns], context: "#{context}[:finding_arns]") unless params[:finding_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListParentArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListReturnedArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListRulesPackagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRulesPackagesInput, context: context)
        type = Types::ListRulesPackagesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRulesPackagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRulesPackagesOutput, context: context)
        type = Types::ListRulesPackagesOutput.new
        type.rules_package_arns = ListReturnedArnList.build(params[:rules_package_arns], context: "#{context}[:rules_package_arns]") unless params[:rules_package_arns].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NetworkInterface
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkInterface, context: context)
        type = Types::NetworkInterface.new
        type.network_interface_id = params[:network_interface_id]
        type.subnet_id = params[:subnet_id]
        type.vpc_id = params[:vpc_id]
        type.private_dns_name = params[:private_dns_name]
        type.private_ip_address = params[:private_ip_address]
        type.private_ip_addresses = PrivateIpAddresses.build(params[:private_ip_addresses], context: "#{context}[:private_ip_addresses]") unless params[:private_ip_addresses].nil?
        type.public_dns_name = params[:public_dns_name]
        type.public_ip = params[:public_ip]
        type.ipv6_addresses = Ipv6Addresses.build(params[:ipv6_addresses], context: "#{context}[:ipv6_addresses]") unless params[:ipv6_addresses].nil?
        type.security_groups = SecurityGroups.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type
      end
    end

    module NetworkInterfaces
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkInterface.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NoSuchEntityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchEntityException, context: context)
        type = Types::NoSuchEntityException.new
        type.message = params[:message]
        type.error_code = params[:error_code]
        type.can_retry = params[:can_retry]
        type
      end
    end

    module PreviewAgentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PreviewAgentsInput, context: context)
        type = Types::PreviewAgentsInput.new
        type.preview_agents_arn = params[:preview_agents_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module PreviewAgentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PreviewAgentsOutput, context: context)
        type = Types::PreviewAgentsOutput.new
        type.agent_previews = AgentPreviewList.build(params[:agent_previews], context: "#{context}[:agent_previews]") unless params[:agent_previews].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module PreviewGenerationInProgressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PreviewGenerationInProgressException, context: context)
        type = Types::PreviewGenerationInProgressException.new
        type.message = params[:message]
        type
      end
    end

    module PrivateIp
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrivateIp, context: context)
        type = Types::PrivateIp.new
        type.private_dns_name = params[:private_dns_name]
        type.private_ip_address = params[:private_ip_address]
        type
      end
    end

    module PrivateIpAddresses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PrivateIp.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RegisterCrossAccountAccessRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterCrossAccountAccessRoleInput, context: context)
        type = Types::RegisterCrossAccountAccessRoleInput.new
        type.role_arn = params[:role_arn]
        type
      end
    end

    module RegisterCrossAccountAccessRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterCrossAccountAccessRoleOutput, context: context)
        type = Types::RegisterCrossAccountAccessRoleOutput.new
        type
      end
    end

    module RemoveAttributesFromFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAttributesFromFindingsInput, context: context)
        type = Types::RemoveAttributesFromFindingsInput.new
        type.finding_arns = AddRemoveAttributesFindingArnList.build(params[:finding_arns], context: "#{context}[:finding_arns]") unless params[:finding_arns].nil?
        type.attribute_keys = UserAttributeKeyList.build(params[:attribute_keys], context: "#{context}[:attribute_keys]") unless params[:attribute_keys].nil?
        type
      end
    end

    module RemoveAttributesFromFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAttributesFromFindingsOutput, context: context)
        type = Types::RemoveAttributesFromFindingsOutput.new
        type.failed_items = FailedItems.build(params[:failed_items], context: "#{context}[:failed_items]") unless params[:failed_items].nil?
        type
      end
    end

    module ResourceGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceGroup, context: context)
        type = Types::ResourceGroup.new
        type.arn = params[:arn]
        type.tags = ResourceGroupTags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.created_at = params[:created_at]
        type
      end
    end

    module ResourceGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceGroupTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceGroupTag, context: context)
        type = Types::ResourceGroupTag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module ResourceGroupTags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceGroupTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RuleNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RulesPackage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RulesPackage, context: context)
        type = Types::RulesPackage.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.version = params[:version]
        type.provider = params[:provider]
        type.description = params[:description]
        type
      end
    end

    module RulesPackageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RulesPackage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Scope
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scope, context: context)
        type = Types::Scope.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module ScopeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Scope.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecurityGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityGroup, context: context)
        type = Types::SecurityGroup.new
        type.group_name = params[:group_name]
        type.group_id = params[:group_id]
        type
      end
    end

    module SecurityGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecurityGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceTemporarilyUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceTemporarilyUnavailableException, context: context)
        type = Types::ServiceTemporarilyUnavailableException.new
        type.message = params[:message]
        type.can_retry = params[:can_retry]
        type
      end
    end

    module SetTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTagsForResourceInput, context: context)
        type = Types::SetTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module SetTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTagsForResourceOutput, context: context)
        type = Types::SetTagsForResourceOutput.new
        type
      end
    end

    module SeverityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StartAssessmentRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAssessmentRunInput, context: context)
        type = Types::StartAssessmentRunInput.new
        type.assessment_template_arn = params[:assessment_template_arn]
        type.assessment_run_name = params[:assessment_run_name]
        type
      end
    end

    module StartAssessmentRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAssessmentRunOutput, context: context)
        type = Types::StartAssessmentRunOutput.new
        type.assessment_run_arn = params[:assessment_run_arn]
        type
      end
    end

    module StopAssessmentRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopAssessmentRunInput, context: context)
        type = Types::StopAssessmentRunInput.new
        type.assessment_run_arn = params[:assessment_run_arn]
        type.stop_action = params[:stop_action]
        type
      end
    end

    module StopAssessmentRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopAssessmentRunOutput, context: context)
        type = Types::StopAssessmentRunOutput.new
        type
      end
    end

    module SubscribeToEventInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscribeToEventInput, context: context)
        type = Types::SubscribeToEventInput.new
        type.resource_arn = params[:resource_arn]
        type.event = params[:event]
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module SubscribeToEventOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscribeToEventOutput, context: context)
        type = Types::SubscribeToEventOutput.new
        type
      end
    end

    module Subscription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Subscription, context: context)
        type = Types::Subscription.new
        type.resource_arn = params[:resource_arn]
        type.topic_arn = params[:topic_arn]
        type.event_subscriptions = EventSubscriptionList.build(params[:event_subscriptions], context: "#{context}[:event_subscriptions]") unless params[:event_subscriptions].nil?
        type
      end
    end

    module SubscriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Subscription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TelemetryMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TelemetryMetadata, context: context)
        type = Types::TelemetryMetadata.new
        type.message_type = params[:message_type]
        type.count = params[:count]
        type.data_size = params[:data_size]
        type
      end
    end

    module TelemetryMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TelemetryMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TimestampRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimestampRange, context: context)
        type = Types::TimestampRange.new
        type.begin_date = params[:begin_date]
        type.end_date = params[:end_date]
        type
      end
    end

    module UnsubscribeFromEventInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsubscribeFromEventInput, context: context)
        type = Types::UnsubscribeFromEventInput.new
        type.resource_arn = params[:resource_arn]
        type.event = params[:event]
        type.topic_arn = params[:topic_arn]
        type
      end
    end

    module UnsubscribeFromEventOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsubscribeFromEventOutput, context: context)
        type = Types::UnsubscribeFromEventOutput.new
        type
      end
    end

    module UnsupportedFeatureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedFeatureException, context: context)
        type = Types::UnsupportedFeatureException.new
        type.message = params[:message]
        type.can_retry = params[:can_retry]
        type
      end
    end

    module UpdateAssessmentTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssessmentTargetInput, context: context)
        type = Types::UpdateAssessmentTargetInput.new
        type.assessment_target_arn = params[:assessment_target_arn]
        type.assessment_target_name = params[:assessment_target_name]
        type.resource_group_arn = params[:resource_group_arn]
        type
      end
    end

    module UpdateAssessmentTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAssessmentTargetOutput, context: context)
        type = Types::UpdateAssessmentTargetOutput.new
        type
      end
    end

    module UserAttributeKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UserAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Attribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
