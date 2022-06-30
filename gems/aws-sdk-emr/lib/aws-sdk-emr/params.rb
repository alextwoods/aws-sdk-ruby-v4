# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::EMR
  module Params

    module AddInstanceFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddInstanceFleetInput, context: context)
        type = Types::AddInstanceFleetInput.new
        type.cluster_id = params[:cluster_id]
        type.instance_fleet = InstanceFleetConfig.build(params[:instance_fleet], context: "#{context}[:instance_fleet]") unless params[:instance_fleet].nil?
        type
      end
    end

    module AddInstanceFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddInstanceFleetOutput, context: context)
        type = Types::AddInstanceFleetOutput.new
        type.cluster_id = params[:cluster_id]
        type.instance_fleet_id = params[:instance_fleet_id]
        type.cluster_arn = params[:cluster_arn]
        type
      end
    end

    module AddInstanceGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddInstanceGroupsInput, context: context)
        type = Types::AddInstanceGroupsInput.new
        type.instance_groups = InstanceGroupConfigList.build(params[:instance_groups], context: "#{context}[:instance_groups]") unless params[:instance_groups].nil?
        type.job_flow_id = params[:job_flow_id]
        type
      end
    end

    module AddInstanceGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddInstanceGroupsOutput, context: context)
        type = Types::AddInstanceGroupsOutput.new
        type.job_flow_id = params[:job_flow_id]
        type.instance_group_ids = InstanceGroupIdsList.build(params[:instance_group_ids], context: "#{context}[:instance_group_ids]") unless params[:instance_group_ids].nil?
        type.cluster_arn = params[:cluster_arn]
        type
      end
    end

    module AddJobFlowStepsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddJobFlowStepsInput, context: context)
        type = Types::AddJobFlowStepsInput.new
        type.job_flow_id = params[:job_flow_id]
        type.steps = StepConfigList.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type
      end
    end

    module AddJobFlowStepsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddJobFlowStepsOutput, context: context)
        type = Types::AddJobFlowStepsOutput.new
        type.step_ids = StepIdsList.build(params[:step_ids], context: "#{context}[:step_ids]") unless params[:step_ids].nil?
        type
      end
    end

    module AddTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsInput, context: context)
        type = Types::AddTagsInput.new
        type.resource_id = params[:resource_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AddTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsOutput, context: context)
        type = Types::AddTagsOutput.new
        type
      end
    end

    module Application
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Application, context: context)
        type = Types::Application.new
        type.name = params[:name]
        type.version = params[:version]
        type.args = StringList.build(params[:args], context: "#{context}[:args]") unless params[:args].nil?
        type.additional_info = StringMap.build(params[:additional_info], context: "#{context}[:additional_info]") unless params[:additional_info].nil?
        type
      end
    end

    module ApplicationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Application.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutoScalingPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingPolicy, context: context)
        type = Types::AutoScalingPolicy.new
        type.constraints = ScalingConstraints.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type.rules = ScalingRuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module AutoScalingPolicyDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingPolicyDescription, context: context)
        type = Types::AutoScalingPolicyDescription.new
        type.status = AutoScalingPolicyStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.constraints = ScalingConstraints.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type.rules = ScalingRuleList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module AutoScalingPolicyStateChangeReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingPolicyStateChangeReason, context: context)
        type = Types::AutoScalingPolicyStateChangeReason.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module AutoScalingPolicyStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingPolicyStatus, context: context)
        type = Types::AutoScalingPolicyStatus.new
        type.state = params[:state]
        type.state_change_reason = AutoScalingPolicyStateChangeReason.build(params[:state_change_reason], context: "#{context}[:state_change_reason]") unless params[:state_change_reason].nil?
        type
      end
    end

    module AutoTerminationPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoTerminationPolicy, context: context)
        type = Types::AutoTerminationPolicy.new
        type.idle_timeout = params[:idle_timeout]
        type
      end
    end

    module BlockPublicAccessConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlockPublicAccessConfiguration, context: context)
        type = Types::BlockPublicAccessConfiguration.new
        type.block_public_security_group_rules = params[:block_public_security_group_rules]
        type.permitted_public_security_group_rule_ranges = PortRanges.build(params[:permitted_public_security_group_rule_ranges], context: "#{context}[:permitted_public_security_group_rule_ranges]") unless params[:permitted_public_security_group_rule_ranges].nil?
        type.classification = params[:classification]
        type.configurations = ConfigurationList.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type.properties = StringMap.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module BlockPublicAccessConfigurationMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlockPublicAccessConfigurationMetadata, context: context)
        type = Types::BlockPublicAccessConfigurationMetadata.new
        type.creation_date_time = params[:creation_date_time]
        type.created_by_arn = params[:created_by_arn]
        type
      end
    end

    module BootstrapActionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BootstrapActionConfig, context: context)
        type = Types::BootstrapActionConfig.new
        type.name = params[:name]
        type.script_bootstrap_action = ScriptBootstrapActionConfig.build(params[:script_bootstrap_action], context: "#{context}[:script_bootstrap_action]") unless params[:script_bootstrap_action].nil?
        type
      end
    end

    module BootstrapActionConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BootstrapActionConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BootstrapActionDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BootstrapActionDetail, context: context)
        type = Types::BootstrapActionDetail.new
        type.bootstrap_action_config = BootstrapActionConfig.build(params[:bootstrap_action_config], context: "#{context}[:bootstrap_action_config]") unless params[:bootstrap_action_config].nil?
        type
      end
    end

    module BootstrapActionDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BootstrapActionDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CancelStepsInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelStepsInfo, context: context)
        type = Types::CancelStepsInfo.new
        type.step_id = params[:step_id]
        type.status = params[:status]
        type.reason = params[:reason]
        type
      end
    end

    module CancelStepsInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CancelStepsInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CancelStepsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelStepsInput, context: context)
        type = Types::CancelStepsInput.new
        type.cluster_id = params[:cluster_id]
        type.step_ids = StepIdsList.build(params[:step_ids], context: "#{context}[:step_ids]") unless params[:step_ids].nil?
        type.step_cancellation_option = params[:step_cancellation_option]
        type
      end
    end

    module CancelStepsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelStepsOutput, context: context)
        type = Types::CancelStepsOutput.new
        type.cancel_steps_info_list = CancelStepsInfoList.build(params[:cancel_steps_info_list], context: "#{context}[:cancel_steps_info_list]") unless params[:cancel_steps_info_list].nil?
        type
      end
    end

    module CloudWatchAlarmDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchAlarmDefinition, context: context)
        type = Types::CloudWatchAlarmDefinition.new
        type.comparison_operator = params[:comparison_operator]
        type.evaluation_periods = params[:evaluation_periods]
        type.metric_name = params[:metric_name]
        type.namespace = params[:namespace]
        type.period = params[:period]
        type.statistic = params[:statistic]
        type.threshold = params[:threshold]
        type.unit = params[:unit]
        type.dimensions = MetricDimensionList.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type
      end
    end

    module Cluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cluster, context: context)
        type = Types::Cluster.new
        type.id = params[:id]
        type.name = params[:name]
        type.status = ClusterStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.ec2_instance_attributes = Ec2InstanceAttributes.build(params[:ec2_instance_attributes], context: "#{context}[:ec2_instance_attributes]") unless params[:ec2_instance_attributes].nil?
        type.instance_collection_type = params[:instance_collection_type]
        type.log_uri = params[:log_uri]
        type.log_encryption_kms_key_id = params[:log_encryption_kms_key_id]
        type.requested_ami_version = params[:requested_ami_version]
        type.running_ami_version = params[:running_ami_version]
        type.release_label = params[:release_label]
        type.auto_terminate = params[:auto_terminate]
        type.termination_protected = params[:termination_protected]
        type.visible_to_all_users = params[:visible_to_all_users]
        type.applications = ApplicationList.build(params[:applications], context: "#{context}[:applications]") unless params[:applications].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.service_role = params[:service_role]
        type.normalized_instance_hours = params[:normalized_instance_hours]
        type.master_public_dns_name = params[:master_public_dns_name]
        type.configurations = ConfigurationList.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type.security_configuration = params[:security_configuration]
        type.auto_scaling_role = params[:auto_scaling_role]
        type.scale_down_behavior = params[:scale_down_behavior]
        type.custom_ami_id = params[:custom_ami_id]
        type.ebs_root_volume_size = params[:ebs_root_volume_size]
        type.repo_upgrade_on_boot = params[:repo_upgrade_on_boot]
        type.kerberos_attributes = KerberosAttributes.build(params[:kerberos_attributes], context: "#{context}[:kerberos_attributes]") unless params[:kerberos_attributes].nil?
        type.cluster_arn = params[:cluster_arn]
        type.outpost_arn = params[:outpost_arn]
        type.step_concurrency_level = params[:step_concurrency_level]
        type.placement_groups = PlacementGroupConfigList.build(params[:placement_groups], context: "#{context}[:placement_groups]") unless params[:placement_groups].nil?
        type.os_release_label = params[:os_release_label]
        type
      end
    end

    module ClusterStateChangeReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterStateChangeReason, context: context)
        type = Types::ClusterStateChangeReason.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ClusterStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ClusterStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterStatus, context: context)
        type = Types::ClusterStatus.new
        type.state = params[:state]
        type.state_change_reason = ClusterStateChangeReason.build(params[:state_change_reason], context: "#{context}[:state_change_reason]") unless params[:state_change_reason].nil?
        type.timeline = ClusterTimeline.build(params[:timeline], context: "#{context}[:timeline]") unless params[:timeline].nil?
        type
      end
    end

    module ClusterSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterSummary, context: context)
        type = Types::ClusterSummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.status = ClusterStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.normalized_instance_hours = params[:normalized_instance_hours]
        type.cluster_arn = params[:cluster_arn]
        type.outpost_arn = params[:outpost_arn]
        type
      end
    end

    module ClusterSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClusterTimeline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterTimeline, context: context)
        type = Types::ClusterTimeline.new
        type.creation_date_time = params[:creation_date_time]
        type.ready_date_time = params[:ready_date_time]
        type.end_date_time = params[:end_date_time]
        type
      end
    end

    module Command
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Command, context: context)
        type = Types::Command.new
        type.name = params[:name]
        type.script_path = params[:script_path]
        type.args = StringList.build(params[:args], context: "#{context}[:args]") unless params[:args].nil?
        type
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

    module ComputeLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComputeLimits, context: context)
        type = Types::ComputeLimits.new
        type.unit_type = params[:unit_type]
        type.minimum_capacity_units = params[:minimum_capacity_units]
        type.maximum_capacity_units = params[:maximum_capacity_units]
        type.maximum_on_demand_capacity_units = params[:maximum_on_demand_capacity_units]
        type.maximum_core_capacity_units = params[:maximum_core_capacity_units]
        type
      end
    end

    module Configuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Configuration, context: context)
        type = Types::Configuration.new
        type.classification = params[:classification]
        type.configurations = ConfigurationList.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type.properties = StringMap.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module ConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Configuration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateSecurityConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSecurityConfigurationInput, context: context)
        type = Types::CreateSecurityConfigurationInput.new
        type.name = params[:name]
        type.security_configuration = params[:security_configuration]
        type
      end
    end

    module CreateSecurityConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSecurityConfigurationOutput, context: context)
        type = Types::CreateSecurityConfigurationOutput.new
        type.name = params[:name]
        type.creation_date_time = params[:creation_date_time]
        type
      end
    end

    module CreateStudioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStudioInput, context: context)
        type = Types::CreateStudioInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.auth_mode = params[:auth_mode]
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.service_role = params[:service_role]
        type.user_role = params[:user_role]
        type.workspace_security_group_id = params[:workspace_security_group_id]
        type.engine_security_group_id = params[:engine_security_group_id]
        type.default_s3_location = params[:default_s3_location]
        type.idp_auth_url = params[:idp_auth_url]
        type.idp_relay_state_parameter_name = params[:idp_relay_state_parameter_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateStudioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStudioOutput, context: context)
        type = Types::CreateStudioOutput.new
        type.studio_id = params[:studio_id]
        type.url = params[:url]
        type
      end
    end

    module CreateStudioSessionMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStudioSessionMappingInput, context: context)
        type = Types::CreateStudioSessionMappingInput.new
        type.studio_id = params[:studio_id]
        type.identity_id = params[:identity_id]
        type.identity_name = params[:identity_name]
        type.identity_type = params[:identity_type]
        type.session_policy_arn = params[:session_policy_arn]
        type
      end
    end

    module CreateStudioSessionMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStudioSessionMappingOutput, context: context)
        type = Types::CreateStudioSessionMappingOutput.new
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

    module DeleteStudioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStudioInput, context: context)
        type = Types::DeleteStudioInput.new
        type.studio_id = params[:studio_id]
        type
      end
    end

    module DeleteStudioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStudioOutput, context: context)
        type = Types::DeleteStudioOutput.new
        type
      end
    end

    module DeleteStudioSessionMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStudioSessionMappingInput, context: context)
        type = Types::DeleteStudioSessionMappingInput.new
        type.studio_id = params[:studio_id]
        type.identity_id = params[:identity_id]
        type.identity_name = params[:identity_name]
        type.identity_type = params[:identity_type]
        type
      end
    end

    module DeleteStudioSessionMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStudioSessionMappingOutput, context: context)
        type = Types::DeleteStudioSessionMappingOutput.new
        type
      end
    end

    module DescribeClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterInput, context: context)
        type = Types::DescribeClusterInput.new
        type.cluster_id = params[:cluster_id]
        type
      end
    end

    module DescribeClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterOutput, context: context)
        type = Types::DescribeClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module DescribeJobFlowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobFlowsInput, context: context)
        type = Types::DescribeJobFlowsInput.new
        type.created_after = params[:created_after]
        type.created_before = params[:created_before]
        type.job_flow_ids = XmlStringList.build(params[:job_flow_ids], context: "#{context}[:job_flow_ids]") unless params[:job_flow_ids].nil?
        type.job_flow_states = JobFlowExecutionStateList.build(params[:job_flow_states], context: "#{context}[:job_flow_states]") unless params[:job_flow_states].nil?
        type
      end
    end

    module DescribeJobFlowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobFlowsOutput, context: context)
        type = Types::DescribeJobFlowsOutput.new
        type.job_flows = JobFlowDetailList.build(params[:job_flows], context: "#{context}[:job_flows]") unless params[:job_flows].nil?
        type
      end
    end

    module DescribeNotebookExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotebookExecutionInput, context: context)
        type = Types::DescribeNotebookExecutionInput.new
        type.notebook_execution_id = params[:notebook_execution_id]
        type
      end
    end

    module DescribeNotebookExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotebookExecutionOutput, context: context)
        type = Types::DescribeNotebookExecutionOutput.new
        type.notebook_execution = NotebookExecution.build(params[:notebook_execution], context: "#{context}[:notebook_execution]") unless params[:notebook_execution].nil?
        type
      end
    end

    module DescribeReleaseLabelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReleaseLabelInput, context: context)
        type = Types::DescribeReleaseLabelInput.new
        type.release_label = params[:release_label]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeReleaseLabelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReleaseLabelOutput, context: context)
        type = Types::DescribeReleaseLabelOutput.new
        type.release_label = params[:release_label]
        type.applications = SimplifiedApplicationList.build(params[:applications], context: "#{context}[:applications]") unless params[:applications].nil?
        type.next_token = params[:next_token]
        type.available_os_releases = OSReleaseList.build(params[:available_os_releases], context: "#{context}[:available_os_releases]") unless params[:available_os_releases].nil?
        type
      end
    end

    module DescribeSecurityConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSecurityConfigurationInput, context: context)
        type = Types::DescribeSecurityConfigurationInput.new
        type.name = params[:name]
        type
      end
    end

    module DescribeSecurityConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSecurityConfigurationOutput, context: context)
        type = Types::DescribeSecurityConfigurationOutput.new
        type.name = params[:name]
        type.security_configuration = params[:security_configuration]
        type.creation_date_time = params[:creation_date_time]
        type
      end
    end

    module DescribeStepInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStepInput, context: context)
        type = Types::DescribeStepInput.new
        type.cluster_id = params[:cluster_id]
        type.step_id = params[:step_id]
        type
      end
    end

    module DescribeStepOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStepOutput, context: context)
        type = Types::DescribeStepOutput.new
        type.step = Step.build(params[:step], context: "#{context}[:step]") unless params[:step].nil?
        type
      end
    end

    module DescribeStudioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStudioInput, context: context)
        type = Types::DescribeStudioInput.new
        type.studio_id = params[:studio_id]
        type
      end
    end

    module DescribeStudioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStudioOutput, context: context)
        type = Types::DescribeStudioOutput.new
        type.studio = Studio.build(params[:studio], context: "#{context}[:studio]") unless params[:studio].nil?
        type
      end
    end

    module EC2InstanceIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EC2InstanceIdsToTerminateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EbsBlockDevice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EbsBlockDevice, context: context)
        type = Types::EbsBlockDevice.new
        type.volume_specification = VolumeSpecification.build(params[:volume_specification], context: "#{context}[:volume_specification]") unless params[:volume_specification].nil?
        type.device = params[:device]
        type
      end
    end

    module EbsBlockDeviceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EbsBlockDeviceConfig, context: context)
        type = Types::EbsBlockDeviceConfig.new
        type.volume_specification = VolumeSpecification.build(params[:volume_specification], context: "#{context}[:volume_specification]") unless params[:volume_specification].nil?
        type.volumes_per_instance = params[:volumes_per_instance]
        type
      end
    end

    module EbsBlockDeviceConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EbsBlockDeviceConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EbsBlockDeviceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EbsBlockDevice.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EbsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EbsConfiguration, context: context)
        type = Types::EbsConfiguration.new
        type.ebs_block_device_configs = EbsBlockDeviceConfigList.build(params[:ebs_block_device_configs], context: "#{context}[:ebs_block_device_configs]") unless params[:ebs_block_device_configs].nil?
        type.ebs_optimized = params[:ebs_optimized]
        type
      end
    end

    module EbsVolume
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EbsVolume, context: context)
        type = Types::EbsVolume.new
        type.device = params[:device]
        type.volume_id = params[:volume_id]
        type
      end
    end

    module EbsVolumeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EbsVolume.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Ec2InstanceAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ec2InstanceAttributes, context: context)
        type = Types::Ec2InstanceAttributes.new
        type.ec2_key_name = params[:ec2_key_name]
        type.ec2_subnet_id = params[:ec2_subnet_id]
        type.requested_ec2_subnet_ids = XmlStringMaxLen256List.build(params[:requested_ec2_subnet_ids], context: "#{context}[:requested_ec2_subnet_ids]") unless params[:requested_ec2_subnet_ids].nil?
        type.ec2_availability_zone = params[:ec2_availability_zone]
        type.requested_ec2_availability_zones = XmlStringMaxLen256List.build(params[:requested_ec2_availability_zones], context: "#{context}[:requested_ec2_availability_zones]") unless params[:requested_ec2_availability_zones].nil?
        type.iam_instance_profile = params[:iam_instance_profile]
        type.emr_managed_master_security_group = params[:emr_managed_master_security_group]
        type.emr_managed_slave_security_group = params[:emr_managed_slave_security_group]
        type.service_access_security_group = params[:service_access_security_group]
        type.additional_master_security_groups = StringList.build(params[:additional_master_security_groups], context: "#{context}[:additional_master_security_groups]") unless params[:additional_master_security_groups].nil?
        type.additional_slave_security_groups = StringList.build(params[:additional_slave_security_groups], context: "#{context}[:additional_slave_security_groups]") unless params[:additional_slave_security_groups].nil?
        type
      end
    end

    module ExecutionEngineConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionEngineConfig, context: context)
        type = Types::ExecutionEngineConfig.new
        type.id = params[:id]
        type.type = params[:type]
        type.master_instance_security_group_id = params[:master_instance_security_group_id]
        type
      end
    end

    module FailureDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailureDetails, context: context)
        type = Types::FailureDetails.new
        type.reason = params[:reason]
        type.message = params[:message]
        type.log_file = params[:log_file]
        type
      end
    end

    module GetAutoTerminationPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAutoTerminationPolicyInput, context: context)
        type = Types::GetAutoTerminationPolicyInput.new
        type.cluster_id = params[:cluster_id]
        type
      end
    end

    module GetAutoTerminationPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAutoTerminationPolicyOutput, context: context)
        type = Types::GetAutoTerminationPolicyOutput.new
        type.auto_termination_policy = AutoTerminationPolicy.build(params[:auto_termination_policy], context: "#{context}[:auto_termination_policy]") unless params[:auto_termination_policy].nil?
        type
      end
    end

    module GetBlockPublicAccessConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlockPublicAccessConfigurationInput, context: context)
        type = Types::GetBlockPublicAccessConfigurationInput.new
        type
      end
    end

    module GetBlockPublicAccessConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlockPublicAccessConfigurationOutput, context: context)
        type = Types::GetBlockPublicAccessConfigurationOutput.new
        type.block_public_access_configuration = BlockPublicAccessConfiguration.build(params[:block_public_access_configuration], context: "#{context}[:block_public_access_configuration]") unless params[:block_public_access_configuration].nil?
        type.block_public_access_configuration_metadata = BlockPublicAccessConfigurationMetadata.build(params[:block_public_access_configuration_metadata], context: "#{context}[:block_public_access_configuration_metadata]") unless params[:block_public_access_configuration_metadata].nil?
        type
      end
    end

    module GetManagedScalingPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetManagedScalingPolicyInput, context: context)
        type = Types::GetManagedScalingPolicyInput.new
        type.cluster_id = params[:cluster_id]
        type
      end
    end

    module GetManagedScalingPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetManagedScalingPolicyOutput, context: context)
        type = Types::GetManagedScalingPolicyOutput.new
        type.managed_scaling_policy = ManagedScalingPolicy.build(params[:managed_scaling_policy], context: "#{context}[:managed_scaling_policy]") unless params[:managed_scaling_policy].nil?
        type
      end
    end

    module GetStudioSessionMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStudioSessionMappingInput, context: context)
        type = Types::GetStudioSessionMappingInput.new
        type.studio_id = params[:studio_id]
        type.identity_id = params[:identity_id]
        type.identity_name = params[:identity_name]
        type.identity_type = params[:identity_type]
        type
      end
    end

    module GetStudioSessionMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStudioSessionMappingOutput, context: context)
        type = Types::GetStudioSessionMappingOutput.new
        type.session_mapping = SessionMappingDetail.build(params[:session_mapping], context: "#{context}[:session_mapping]") unless params[:session_mapping].nil?
        type
      end
    end

    module HadoopJarStepConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HadoopJarStepConfig, context: context)
        type = Types::HadoopJarStepConfig.new
        type.properties = KeyValueList.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.jar = params[:jar]
        type.main_class = params[:main_class]
        type.args = XmlStringList.build(params[:args], context: "#{context}[:args]") unless params[:args].nil?
        type
      end
    end

    module HadoopStepConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HadoopStepConfig, context: context)
        type = Types::HadoopStepConfig.new
        type.jar = params[:jar]
        type.properties = StringMap.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.main_class = params[:main_class]
        type.args = StringList.build(params[:args], context: "#{context}[:args]") unless params[:args].nil?
        type
      end
    end

    module Instance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Instance, context: context)
        type = Types::Instance.new
        type.id = params[:id]
        type.ec2_instance_id = params[:ec2_instance_id]
        type.public_dns_name = params[:public_dns_name]
        type.public_ip_address = params[:public_ip_address]
        type.private_dns_name = params[:private_dns_name]
        type.private_ip_address = params[:private_ip_address]
        type.status = InstanceStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.instance_group_id = params[:instance_group_id]
        type.instance_fleet_id = params[:instance_fleet_id]
        type.market = params[:market]
        type.instance_type = params[:instance_type]
        type.ebs_volumes = EbsVolumeList.build(params[:ebs_volumes], context: "#{context}[:ebs_volumes]") unless params[:ebs_volumes].nil?
        type
      end
    end

    module InstanceFleet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceFleet, context: context)
        type = Types::InstanceFleet.new
        type.id = params[:id]
        type.name = params[:name]
        type.status = InstanceFleetStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.instance_fleet_type = params[:instance_fleet_type]
        type.target_on_demand_capacity = params[:target_on_demand_capacity]
        type.target_spot_capacity = params[:target_spot_capacity]
        type.provisioned_on_demand_capacity = params[:provisioned_on_demand_capacity]
        type.provisioned_spot_capacity = params[:provisioned_spot_capacity]
        type.instance_type_specifications = InstanceTypeSpecificationList.build(params[:instance_type_specifications], context: "#{context}[:instance_type_specifications]") unless params[:instance_type_specifications].nil?
        type.launch_specifications = InstanceFleetProvisioningSpecifications.build(params[:launch_specifications], context: "#{context}[:launch_specifications]") unless params[:launch_specifications].nil?
        type
      end
    end

    module InstanceFleetConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceFleetConfig, context: context)
        type = Types::InstanceFleetConfig.new
        type.name = params[:name]
        type.instance_fleet_type = params[:instance_fleet_type]
        type.target_on_demand_capacity = params[:target_on_demand_capacity]
        type.target_spot_capacity = params[:target_spot_capacity]
        type.instance_type_configs = InstanceTypeConfigList.build(params[:instance_type_configs], context: "#{context}[:instance_type_configs]") unless params[:instance_type_configs].nil?
        type.launch_specifications = InstanceFleetProvisioningSpecifications.build(params[:launch_specifications], context: "#{context}[:launch_specifications]") unless params[:launch_specifications].nil?
        type
      end
    end

    module InstanceFleetConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceFleetConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceFleetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceFleet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceFleetModifyConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceFleetModifyConfig, context: context)
        type = Types::InstanceFleetModifyConfig.new
        type.instance_fleet_id = params[:instance_fleet_id]
        type.target_on_demand_capacity = params[:target_on_demand_capacity]
        type.target_spot_capacity = params[:target_spot_capacity]
        type
      end
    end

    module InstanceFleetProvisioningSpecifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceFleetProvisioningSpecifications, context: context)
        type = Types::InstanceFleetProvisioningSpecifications.new
        type.spot_specification = SpotProvisioningSpecification.build(params[:spot_specification], context: "#{context}[:spot_specification]") unless params[:spot_specification].nil?
        type.on_demand_specification = OnDemandProvisioningSpecification.build(params[:on_demand_specification], context: "#{context}[:on_demand_specification]") unless params[:on_demand_specification].nil?
        type
      end
    end

    module InstanceFleetStateChangeReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceFleetStateChangeReason, context: context)
        type = Types::InstanceFleetStateChangeReason.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module InstanceFleetStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceFleetStatus, context: context)
        type = Types::InstanceFleetStatus.new
        type.state = params[:state]
        type.state_change_reason = InstanceFleetStateChangeReason.build(params[:state_change_reason], context: "#{context}[:state_change_reason]") unless params[:state_change_reason].nil?
        type.timeline = InstanceFleetTimeline.build(params[:timeline], context: "#{context}[:timeline]") unless params[:timeline].nil?
        type
      end
    end

    module InstanceFleetTimeline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceFleetTimeline, context: context)
        type = Types::InstanceFleetTimeline.new
        type.creation_date_time = params[:creation_date_time]
        type.ready_date_time = params[:ready_date_time]
        type.end_date_time = params[:end_date_time]
        type
      end
    end

    module InstanceGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceGroup, context: context)
        type = Types::InstanceGroup.new
        type.id = params[:id]
        type.name = params[:name]
        type.market = params[:market]
        type.instance_group_type = params[:instance_group_type]
        type.bid_price = params[:bid_price]
        type.instance_type = params[:instance_type]
        type.requested_instance_count = params[:requested_instance_count]
        type.running_instance_count = params[:running_instance_count]
        type.status = InstanceGroupStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.configurations = ConfigurationList.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type.configurations_version = params[:configurations_version]
        type.last_successfully_applied_configurations = ConfigurationList.build(params[:last_successfully_applied_configurations], context: "#{context}[:last_successfully_applied_configurations]") unless params[:last_successfully_applied_configurations].nil?
        type.last_successfully_applied_configurations_version = params[:last_successfully_applied_configurations_version]
        type.ebs_block_devices = EbsBlockDeviceList.build(params[:ebs_block_devices], context: "#{context}[:ebs_block_devices]") unless params[:ebs_block_devices].nil?
        type.ebs_optimized = params[:ebs_optimized]
        type.shrink_policy = ShrinkPolicy.build(params[:shrink_policy], context: "#{context}[:shrink_policy]") unless params[:shrink_policy].nil?
        type.auto_scaling_policy = AutoScalingPolicyDescription.build(params[:auto_scaling_policy], context: "#{context}[:auto_scaling_policy]") unless params[:auto_scaling_policy].nil?
        type.custom_ami_id = params[:custom_ami_id]
        type
      end
    end

    module InstanceGroupConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceGroupConfig, context: context)
        type = Types::InstanceGroupConfig.new
        type.name = params[:name]
        type.market = params[:market]
        type.instance_role = params[:instance_role]
        type.bid_price = params[:bid_price]
        type.instance_type = params[:instance_type]
        type.instance_count = params[:instance_count]
        type.configurations = ConfigurationList.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type.ebs_configuration = EbsConfiguration.build(params[:ebs_configuration], context: "#{context}[:ebs_configuration]") unless params[:ebs_configuration].nil?
        type.auto_scaling_policy = AutoScalingPolicy.build(params[:auto_scaling_policy], context: "#{context}[:auto_scaling_policy]") unless params[:auto_scaling_policy].nil?
        type.custom_ami_id = params[:custom_ami_id]
        type
      end
    end

    module InstanceGroupConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceGroupConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceGroupDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceGroupDetail, context: context)
        type = Types::InstanceGroupDetail.new
        type.instance_group_id = params[:instance_group_id]
        type.name = params[:name]
        type.market = params[:market]
        type.instance_role = params[:instance_role]
        type.bid_price = params[:bid_price]
        type.instance_type = params[:instance_type]
        type.instance_request_count = params[:instance_request_count]
        type.instance_running_count = params[:instance_running_count]
        type.state = params[:state]
        type.last_state_change_reason = params[:last_state_change_reason]
        type.creation_date_time = params[:creation_date_time]
        type.start_date_time = params[:start_date_time]
        type.ready_date_time = params[:ready_date_time]
        type.end_date_time = params[:end_date_time]
        type.custom_ami_id = params[:custom_ami_id]
        type
      end
    end

    module InstanceGroupDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceGroupDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceGroupIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceGroupModifyConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceGroupModifyConfig, context: context)
        type = Types::InstanceGroupModifyConfig.new
        type.instance_group_id = params[:instance_group_id]
        type.instance_count = params[:instance_count]
        type.ec2_instance_ids_to_terminate = EC2InstanceIdsToTerminateList.build(params[:ec2_instance_ids_to_terminate], context: "#{context}[:ec2_instance_ids_to_terminate]") unless params[:ec2_instance_ids_to_terminate].nil?
        type.shrink_policy = ShrinkPolicy.build(params[:shrink_policy], context: "#{context}[:shrink_policy]") unless params[:shrink_policy].nil?
        type.reconfiguration_type = params[:reconfiguration_type]
        type.configurations = ConfigurationList.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type
      end
    end

    module InstanceGroupModifyConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceGroupModifyConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceGroupStateChangeReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceGroupStateChangeReason, context: context)
        type = Types::InstanceGroupStateChangeReason.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module InstanceGroupStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceGroupStatus, context: context)
        type = Types::InstanceGroupStatus.new
        type.state = params[:state]
        type.state_change_reason = InstanceGroupStateChangeReason.build(params[:state_change_reason], context: "#{context}[:state_change_reason]") unless params[:state_change_reason].nil?
        type.timeline = InstanceGroupTimeline.build(params[:timeline], context: "#{context}[:timeline]") unless params[:timeline].nil?
        type
      end
    end

    module InstanceGroupTimeline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceGroupTimeline, context: context)
        type = Types::InstanceGroupTimeline.new
        type.creation_date_time = params[:creation_date_time]
        type.ready_date_time = params[:ready_date_time]
        type.end_date_time = params[:end_date_time]
        type
      end
    end

    module InstanceGroupTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Instance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceResizePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceResizePolicy, context: context)
        type = Types::InstanceResizePolicy.new
        type.instances_to_terminate = EC2InstanceIdsList.build(params[:instances_to_terminate], context: "#{context}[:instances_to_terminate]") unless params[:instances_to_terminate].nil?
        type.instances_to_protect = EC2InstanceIdsList.build(params[:instances_to_protect], context: "#{context}[:instances_to_protect]") unless params[:instances_to_protect].nil?
        type.instance_termination_timeout = params[:instance_termination_timeout]
        type
      end
    end

    module InstanceStateChangeReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceStateChangeReason, context: context)
        type = Types::InstanceStateChangeReason.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module InstanceStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceStatus, context: context)
        type = Types::InstanceStatus.new
        type.state = params[:state]
        type.state_change_reason = InstanceStateChangeReason.build(params[:state_change_reason], context: "#{context}[:state_change_reason]") unless params[:state_change_reason].nil?
        type.timeline = InstanceTimeline.build(params[:timeline], context: "#{context}[:timeline]") unless params[:timeline].nil?
        type
      end
    end

    module InstanceTimeline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceTimeline, context: context)
        type = Types::InstanceTimeline.new
        type.creation_date_time = params[:creation_date_time]
        type.ready_date_time = params[:ready_date_time]
        type.end_date_time = params[:end_date_time]
        type
      end
    end

    module InstanceTypeConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceTypeConfig, context: context)
        type = Types::InstanceTypeConfig.new
        type.instance_type = params[:instance_type]
        type.weighted_capacity = params[:weighted_capacity]
        type.bid_price = params[:bid_price]
        type.bid_price_as_percentage_of_on_demand_price = params[:bid_price_as_percentage_of_on_demand_price]
        type.ebs_configuration = EbsConfiguration.build(params[:ebs_configuration], context: "#{context}[:ebs_configuration]") unless params[:ebs_configuration].nil?
        type.configurations = ConfigurationList.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type.custom_ami_id = params[:custom_ami_id]
        type
      end
    end

    module InstanceTypeConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceTypeConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceTypeSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceTypeSpecification, context: context)
        type = Types::InstanceTypeSpecification.new
        type.instance_type = params[:instance_type]
        type.weighted_capacity = params[:weighted_capacity]
        type.bid_price = params[:bid_price]
        type.bid_price_as_percentage_of_on_demand_price = params[:bid_price_as_percentage_of_on_demand_price]
        type.configurations = ConfigurationList.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type.ebs_block_devices = EbsBlockDeviceList.build(params[:ebs_block_devices], context: "#{context}[:ebs_block_devices]") unless params[:ebs_block_devices].nil?
        type.ebs_optimized = params[:ebs_optimized]
        type.custom_ami_id = params[:custom_ami_id]
        type
      end
    end

    module InstanceTypeSpecificationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceTypeSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerError, context: context)
        type = Types::InternalServerError.new
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

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.error_code = params[:error_code]
        type.message = params[:message]
        type
      end
    end

    module JobFlowDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobFlowDetail, context: context)
        type = Types::JobFlowDetail.new
        type.job_flow_id = params[:job_flow_id]
        type.name = params[:name]
        type.log_uri = params[:log_uri]
        type.log_encryption_kms_key_id = params[:log_encryption_kms_key_id]
        type.ami_version = params[:ami_version]
        type.execution_status_detail = JobFlowExecutionStatusDetail.build(params[:execution_status_detail], context: "#{context}[:execution_status_detail]") unless params[:execution_status_detail].nil?
        type.instances = JobFlowInstancesDetail.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.steps = StepDetailList.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type.bootstrap_actions = BootstrapActionDetailList.build(params[:bootstrap_actions], context: "#{context}[:bootstrap_actions]") unless params[:bootstrap_actions].nil?
        type.supported_products = SupportedProductsList.build(params[:supported_products], context: "#{context}[:supported_products]") unless params[:supported_products].nil?
        type.visible_to_all_users = params[:visible_to_all_users]
        type.job_flow_role = params[:job_flow_role]
        type.service_role = params[:service_role]
        type.auto_scaling_role = params[:auto_scaling_role]
        type.scale_down_behavior = params[:scale_down_behavior]
        type
      end
    end

    module JobFlowDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobFlowDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobFlowExecutionStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module JobFlowExecutionStatusDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobFlowExecutionStatusDetail, context: context)
        type = Types::JobFlowExecutionStatusDetail.new
        type.state = params[:state]
        type.creation_date_time = params[:creation_date_time]
        type.start_date_time = params[:start_date_time]
        type.ready_date_time = params[:ready_date_time]
        type.end_date_time = params[:end_date_time]
        type.last_state_change_reason = params[:last_state_change_reason]
        type
      end
    end

    module JobFlowInstancesConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobFlowInstancesConfig, context: context)
        type = Types::JobFlowInstancesConfig.new
        type.master_instance_type = params[:master_instance_type]
        type.slave_instance_type = params[:slave_instance_type]
        type.instance_count = params[:instance_count]
        type.instance_groups = InstanceGroupConfigList.build(params[:instance_groups], context: "#{context}[:instance_groups]") unless params[:instance_groups].nil?
        type.instance_fleets = InstanceFleetConfigList.build(params[:instance_fleets], context: "#{context}[:instance_fleets]") unless params[:instance_fleets].nil?
        type.ec2_key_name = params[:ec2_key_name]
        type.placement = PlacementType.build(params[:placement], context: "#{context}[:placement]") unless params[:placement].nil?
        type.keep_job_flow_alive_when_no_steps = params[:keep_job_flow_alive_when_no_steps]
        type.termination_protected = params[:termination_protected]
        type.hadoop_version = params[:hadoop_version]
        type.ec2_subnet_id = params[:ec2_subnet_id]
        type.ec2_subnet_ids = XmlStringMaxLen256List.build(params[:ec2_subnet_ids], context: "#{context}[:ec2_subnet_ids]") unless params[:ec2_subnet_ids].nil?
        type.emr_managed_master_security_group = params[:emr_managed_master_security_group]
        type.emr_managed_slave_security_group = params[:emr_managed_slave_security_group]
        type.service_access_security_group = params[:service_access_security_group]
        type.additional_master_security_groups = SecurityGroupsList.build(params[:additional_master_security_groups], context: "#{context}[:additional_master_security_groups]") unless params[:additional_master_security_groups].nil?
        type.additional_slave_security_groups = SecurityGroupsList.build(params[:additional_slave_security_groups], context: "#{context}[:additional_slave_security_groups]") unless params[:additional_slave_security_groups].nil?
        type
      end
    end

    module JobFlowInstancesDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobFlowInstancesDetail, context: context)
        type = Types::JobFlowInstancesDetail.new
        type.master_instance_type = params[:master_instance_type]
        type.master_public_dns_name = params[:master_public_dns_name]
        type.master_instance_id = params[:master_instance_id]
        type.slave_instance_type = params[:slave_instance_type]
        type.instance_count = params[:instance_count]
        type.instance_groups = InstanceGroupDetailList.build(params[:instance_groups], context: "#{context}[:instance_groups]") unless params[:instance_groups].nil?
        type.normalized_instance_hours = params[:normalized_instance_hours]
        type.ec2_key_name = params[:ec2_key_name]
        type.ec2_subnet_id = params[:ec2_subnet_id]
        type.placement = PlacementType.build(params[:placement], context: "#{context}[:placement]") unless params[:placement].nil?
        type.keep_job_flow_alive_when_no_steps = params[:keep_job_flow_alive_when_no_steps]
        type.termination_protected = params[:termination_protected]
        type.hadoop_version = params[:hadoop_version]
        type
      end
    end

    module KerberosAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KerberosAttributes, context: context)
        type = Types::KerberosAttributes.new
        type.realm = params[:realm]
        type.kdc_admin_password = params[:kdc_admin_password]
        type.cross_realm_trust_principal_password = params[:cross_realm_trust_principal_password]
        type.ad_domain_join_user = params[:ad_domain_join_user]
        type.ad_domain_join_password = params[:ad_domain_join_password]
        type
      end
    end

    module KeyValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyValue, context: context)
        type = Types::KeyValue.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module KeyValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeyValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListBootstrapActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBootstrapActionsInput, context: context)
        type = Types::ListBootstrapActionsInput.new
        type.cluster_id = params[:cluster_id]
        type.marker = params[:marker]
        type
      end
    end

    module ListBootstrapActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBootstrapActionsOutput, context: context)
        type = Types::ListBootstrapActionsOutput.new
        type.bootstrap_actions = CommandList.build(params[:bootstrap_actions], context: "#{context}[:bootstrap_actions]") unless params[:bootstrap_actions].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClustersInput, context: context)
        type = Types::ListClustersInput.new
        type.created_after = params[:created_after]
        type.created_before = params[:created_before]
        type.cluster_states = ClusterStateList.build(params[:cluster_states], context: "#{context}[:cluster_states]") unless params[:cluster_states].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClustersOutput, context: context)
        type = Types::ListClustersOutput.new
        type.clusters = ClusterSummaryList.build(params[:clusters], context: "#{context}[:clusters]") unless params[:clusters].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListInstanceFleetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceFleetsInput, context: context)
        type = Types::ListInstanceFleetsInput.new
        type.cluster_id = params[:cluster_id]
        type.marker = params[:marker]
        type
      end
    end

    module ListInstanceFleetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceFleetsOutput, context: context)
        type = Types::ListInstanceFleetsOutput.new
        type.instance_fleets = InstanceFleetList.build(params[:instance_fleets], context: "#{context}[:instance_fleets]") unless params[:instance_fleets].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListInstanceGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceGroupsInput, context: context)
        type = Types::ListInstanceGroupsInput.new
        type.cluster_id = params[:cluster_id]
        type.marker = params[:marker]
        type
      end
    end

    module ListInstanceGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstanceGroupsOutput, context: context)
        type = Types::ListInstanceGroupsOutput.new
        type.instance_groups = InstanceGroupList.build(params[:instance_groups], context: "#{context}[:instance_groups]") unless params[:instance_groups].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstancesInput, context: context)
        type = Types::ListInstancesInput.new
        type.cluster_id = params[:cluster_id]
        type.instance_group_id = params[:instance_group_id]
        type.instance_group_types = InstanceGroupTypeList.build(params[:instance_group_types], context: "#{context}[:instance_group_types]") unless params[:instance_group_types].nil?
        type.instance_fleet_id = params[:instance_fleet_id]
        type.instance_fleet_type = params[:instance_fleet_type]
        type.instance_states = InstanceStateList.build(params[:instance_states], context: "#{context}[:instance_states]") unless params[:instance_states].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInstancesOutput, context: context)
        type = Types::ListInstancesOutput.new
        type.instances = InstanceList.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListNotebookExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNotebookExecutionsInput, context: context)
        type = Types::ListNotebookExecutionsInput.new
        type.editor_id = params[:editor_id]
        type.status = params[:status]
        type.from = params[:from]
        type.to = params[:to]
        type.marker = params[:marker]
        type
      end
    end

    module ListNotebookExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNotebookExecutionsOutput, context: context)
        type = Types::ListNotebookExecutionsOutput.new
        type.notebook_executions = NotebookExecutionSummaryList.build(params[:notebook_executions], context: "#{context}[:notebook_executions]") unless params[:notebook_executions].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListReleaseLabelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReleaseLabelsInput, context: context)
        type = Types::ListReleaseLabelsInput.new
        type.filters = ReleaseLabelFilter.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListReleaseLabelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReleaseLabelsOutput, context: context)
        type = Types::ListReleaseLabelsOutput.new
        type.release_labels = StringList.build(params[:release_labels], context: "#{context}[:release_labels]") unless params[:release_labels].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSecurityConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecurityConfigurationsInput, context: context)
        type = Types::ListSecurityConfigurationsInput.new
        type.marker = params[:marker]
        type
      end
    end

    module ListSecurityConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSecurityConfigurationsOutput, context: context)
        type = Types::ListSecurityConfigurationsOutput.new
        type.security_configurations = SecurityConfigurationList.build(params[:security_configurations], context: "#{context}[:security_configurations]") unless params[:security_configurations].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListStepsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStepsInput, context: context)
        type = Types::ListStepsInput.new
        type.cluster_id = params[:cluster_id]
        type.step_states = StepStateList.build(params[:step_states], context: "#{context}[:step_states]") unless params[:step_states].nil?
        type.step_ids = XmlStringList.build(params[:step_ids], context: "#{context}[:step_ids]") unless params[:step_ids].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListStepsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStepsOutput, context: context)
        type = Types::ListStepsOutput.new
        type.steps = StepSummaryList.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListStudioSessionMappingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStudioSessionMappingsInput, context: context)
        type = Types::ListStudioSessionMappingsInput.new
        type.studio_id = params[:studio_id]
        type.identity_type = params[:identity_type]
        type.marker = params[:marker]
        type
      end
    end

    module ListStudioSessionMappingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStudioSessionMappingsOutput, context: context)
        type = Types::ListStudioSessionMappingsOutput.new
        type.session_mappings = SessionMappingSummaryList.build(params[:session_mappings], context: "#{context}[:session_mappings]") unless params[:session_mappings].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ListStudiosInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStudiosInput, context: context)
        type = Types::ListStudiosInput.new
        type.marker = params[:marker]
        type
      end
    end

    module ListStudiosOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStudiosOutput, context: context)
        type = Types::ListStudiosOutput.new
        type.studios = StudioSummaryList.build(params[:studios], context: "#{context}[:studios]") unless params[:studios].nil?
        type.marker = params[:marker]
        type
      end
    end

    module ManagedScalingPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedScalingPolicy, context: context)
        type = Types::ManagedScalingPolicy.new
        type.compute_limits = ComputeLimits.build(params[:compute_limits], context: "#{context}[:compute_limits]") unless params[:compute_limits].nil?
        type
      end
    end

    module MetricDimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricDimension, context: context)
        type = Types::MetricDimension.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module MetricDimensionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDimension.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModifyClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterInput, context: context)
        type = Types::ModifyClusterInput.new
        type.cluster_id = params[:cluster_id]
        type.step_concurrency_level = params[:step_concurrency_level]
        type
      end
    end

    module ModifyClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterOutput, context: context)
        type = Types::ModifyClusterOutput.new
        type.step_concurrency_level = params[:step_concurrency_level]
        type
      end
    end

    module ModifyInstanceFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyInstanceFleetInput, context: context)
        type = Types::ModifyInstanceFleetInput.new
        type.cluster_id = params[:cluster_id]
        type.instance_fleet = InstanceFleetModifyConfig.build(params[:instance_fleet], context: "#{context}[:instance_fleet]") unless params[:instance_fleet].nil?
        type
      end
    end

    module ModifyInstanceFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyInstanceFleetOutput, context: context)
        type = Types::ModifyInstanceFleetOutput.new
        type
      end
    end

    module ModifyInstanceGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyInstanceGroupsInput, context: context)
        type = Types::ModifyInstanceGroupsInput.new
        type.cluster_id = params[:cluster_id]
        type.instance_groups = InstanceGroupModifyConfigList.build(params[:instance_groups], context: "#{context}[:instance_groups]") unless params[:instance_groups].nil?
        type
      end
    end

    module ModifyInstanceGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyInstanceGroupsOutput, context: context)
        type = Types::ModifyInstanceGroupsOutput.new
        type
      end
    end

    module NewSupportedProductsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SupportedProductConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotebookExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotebookExecution, context: context)
        type = Types::NotebookExecution.new
        type.notebook_execution_id = params[:notebook_execution_id]
        type.editor_id = params[:editor_id]
        type.execution_engine = ExecutionEngineConfig.build(params[:execution_engine], context: "#{context}[:execution_engine]") unless params[:execution_engine].nil?
        type.notebook_execution_name = params[:notebook_execution_name]
        type.notebook_params = params[:notebook_params]
        type.status = params[:status]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.arn = params[:arn]
        type.output_notebook_uri = params[:output_notebook_uri]
        type.last_state_change_reason = params[:last_state_change_reason]
        type.notebook_instance_security_group_id = params[:notebook_instance_security_group_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NotebookExecutionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotebookExecutionSummary, context: context)
        type = Types::NotebookExecutionSummary.new
        type.notebook_execution_id = params[:notebook_execution_id]
        type.editor_id = params[:editor_id]
        type.notebook_execution_name = params[:notebook_execution_name]
        type.status = params[:status]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module NotebookExecutionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NotebookExecutionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OSRelease
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OSRelease, context: context)
        type = Types::OSRelease.new
        type.label = params[:label]
        type
      end
    end

    module OSReleaseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OSRelease.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OnDemandCapacityReservationOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnDemandCapacityReservationOptions, context: context)
        type = Types::OnDemandCapacityReservationOptions.new
        type.usage_strategy = params[:usage_strategy]
        type.capacity_reservation_preference = params[:capacity_reservation_preference]
        type.capacity_reservation_resource_group_arn = params[:capacity_reservation_resource_group_arn]
        type
      end
    end

    module OnDemandProvisioningSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnDemandProvisioningSpecification, context: context)
        type = Types::OnDemandProvisioningSpecification.new
        type.allocation_strategy = params[:allocation_strategy]
        type.capacity_reservation_options = OnDemandCapacityReservationOptions.build(params[:capacity_reservation_options], context: "#{context}[:capacity_reservation_options]") unless params[:capacity_reservation_options].nil?
        type
      end
    end

    module PlacementGroupConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlacementGroupConfig, context: context)
        type = Types::PlacementGroupConfig.new
        type.instance_role = params[:instance_role]
        type.placement_strategy = params[:placement_strategy]
        type
      end
    end

    module PlacementGroupConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlacementGroupConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlacementType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlacementType, context: context)
        type = Types::PlacementType.new
        type.availability_zone = params[:availability_zone]
        type.availability_zones = XmlStringMaxLen256List.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type
      end
    end

    module PortRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PortRange, context: context)
        type = Types::PortRange.new
        type.min_range = params[:min_range]
        type.max_range = params[:max_range]
        type
      end
    end

    module PortRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PortRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutAutoScalingPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAutoScalingPolicyInput, context: context)
        type = Types::PutAutoScalingPolicyInput.new
        type.cluster_id = params[:cluster_id]
        type.instance_group_id = params[:instance_group_id]
        type.auto_scaling_policy = AutoScalingPolicy.build(params[:auto_scaling_policy], context: "#{context}[:auto_scaling_policy]") unless params[:auto_scaling_policy].nil?
        type
      end
    end

    module PutAutoScalingPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAutoScalingPolicyOutput, context: context)
        type = Types::PutAutoScalingPolicyOutput.new
        type.cluster_id = params[:cluster_id]
        type.instance_group_id = params[:instance_group_id]
        type.auto_scaling_policy = AutoScalingPolicyDescription.build(params[:auto_scaling_policy], context: "#{context}[:auto_scaling_policy]") unless params[:auto_scaling_policy].nil?
        type.cluster_arn = params[:cluster_arn]
        type
      end
    end

    module PutAutoTerminationPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAutoTerminationPolicyInput, context: context)
        type = Types::PutAutoTerminationPolicyInput.new
        type.cluster_id = params[:cluster_id]
        type.auto_termination_policy = AutoTerminationPolicy.build(params[:auto_termination_policy], context: "#{context}[:auto_termination_policy]") unless params[:auto_termination_policy].nil?
        type
      end
    end

    module PutAutoTerminationPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAutoTerminationPolicyOutput, context: context)
        type = Types::PutAutoTerminationPolicyOutput.new
        type
      end
    end

    module PutBlockPublicAccessConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBlockPublicAccessConfigurationInput, context: context)
        type = Types::PutBlockPublicAccessConfigurationInput.new
        type.block_public_access_configuration = BlockPublicAccessConfiguration.build(params[:block_public_access_configuration], context: "#{context}[:block_public_access_configuration]") unless params[:block_public_access_configuration].nil?
        type
      end
    end

    module PutBlockPublicAccessConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutBlockPublicAccessConfigurationOutput, context: context)
        type = Types::PutBlockPublicAccessConfigurationOutput.new
        type
      end
    end

    module PutManagedScalingPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutManagedScalingPolicyInput, context: context)
        type = Types::PutManagedScalingPolicyInput.new
        type.cluster_id = params[:cluster_id]
        type.managed_scaling_policy = ManagedScalingPolicy.build(params[:managed_scaling_policy], context: "#{context}[:managed_scaling_policy]") unless params[:managed_scaling_policy].nil?
        type
      end
    end

    module PutManagedScalingPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutManagedScalingPolicyOutput, context: context)
        type = Types::PutManagedScalingPolicyOutput.new
        type
      end
    end

    module ReleaseLabelFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReleaseLabelFilter, context: context)
        type = Types::ReleaseLabelFilter.new
        type.prefix = params[:prefix]
        type.application = params[:application]
        type
      end
    end

    module RemoveAutoScalingPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAutoScalingPolicyInput, context: context)
        type = Types::RemoveAutoScalingPolicyInput.new
        type.cluster_id = params[:cluster_id]
        type.instance_group_id = params[:instance_group_id]
        type
      end
    end

    module RemoveAutoScalingPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAutoScalingPolicyOutput, context: context)
        type = Types::RemoveAutoScalingPolicyOutput.new
        type
      end
    end

    module RemoveAutoTerminationPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAutoTerminationPolicyInput, context: context)
        type = Types::RemoveAutoTerminationPolicyInput.new
        type.cluster_id = params[:cluster_id]
        type
      end
    end

    module RemoveAutoTerminationPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAutoTerminationPolicyOutput, context: context)
        type = Types::RemoveAutoTerminationPolicyOutput.new
        type
      end
    end

    module RemoveManagedScalingPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveManagedScalingPolicyInput, context: context)
        type = Types::RemoveManagedScalingPolicyInput.new
        type.cluster_id = params[:cluster_id]
        type
      end
    end

    module RemoveManagedScalingPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveManagedScalingPolicyOutput, context: context)
        type = Types::RemoveManagedScalingPolicyOutput.new
        type
      end
    end

    module RemoveTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsInput, context: context)
        type = Types::RemoveTagsInput.new
        type.resource_id = params[:resource_id]
        type.tag_keys = StringList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module RemoveTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsOutput, context: context)
        type = Types::RemoveTagsOutput.new
        type
      end
    end

    module RunJobFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunJobFlowInput, context: context)
        type = Types::RunJobFlowInput.new
        type.name = params[:name]
        type.log_uri = params[:log_uri]
        type.log_encryption_kms_key_id = params[:log_encryption_kms_key_id]
        type.additional_info = params[:additional_info]
        type.ami_version = params[:ami_version]
        type.release_label = params[:release_label]
        type.instances = JobFlowInstancesConfig.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.steps = StepConfigList.build(params[:steps], context: "#{context}[:steps]") unless params[:steps].nil?
        type.bootstrap_actions = BootstrapActionConfigList.build(params[:bootstrap_actions], context: "#{context}[:bootstrap_actions]") unless params[:bootstrap_actions].nil?
        type.supported_products = SupportedProductsList.build(params[:supported_products], context: "#{context}[:supported_products]") unless params[:supported_products].nil?
        type.new_supported_products = NewSupportedProductsList.build(params[:new_supported_products], context: "#{context}[:new_supported_products]") unless params[:new_supported_products].nil?
        type.applications = ApplicationList.build(params[:applications], context: "#{context}[:applications]") unless params[:applications].nil?
        type.configurations = ConfigurationList.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type.visible_to_all_users = params[:visible_to_all_users]
        type.job_flow_role = params[:job_flow_role]
        type.service_role = params[:service_role]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.security_configuration = params[:security_configuration]
        type.auto_scaling_role = params[:auto_scaling_role]
        type.scale_down_behavior = params[:scale_down_behavior]
        type.custom_ami_id = params[:custom_ami_id]
        type.ebs_root_volume_size = params[:ebs_root_volume_size]
        type.repo_upgrade_on_boot = params[:repo_upgrade_on_boot]
        type.kerberos_attributes = KerberosAttributes.build(params[:kerberos_attributes], context: "#{context}[:kerberos_attributes]") unless params[:kerberos_attributes].nil?
        type.step_concurrency_level = params[:step_concurrency_level]
        type.managed_scaling_policy = ManagedScalingPolicy.build(params[:managed_scaling_policy], context: "#{context}[:managed_scaling_policy]") unless params[:managed_scaling_policy].nil?
        type.placement_group_configs = PlacementGroupConfigList.build(params[:placement_group_configs], context: "#{context}[:placement_group_configs]") unless params[:placement_group_configs].nil?
        type.auto_termination_policy = AutoTerminationPolicy.build(params[:auto_termination_policy], context: "#{context}[:auto_termination_policy]") unless params[:auto_termination_policy].nil?
        type.os_release_label = params[:os_release_label]
        type
      end
    end

    module RunJobFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RunJobFlowOutput, context: context)
        type = Types::RunJobFlowOutput.new
        type.job_flow_id = params[:job_flow_id]
        type.cluster_arn = params[:cluster_arn]
        type
      end
    end

    module ScalingAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalingAction, context: context)
        type = Types::ScalingAction.new
        type.market = params[:market]
        type.simple_scaling_policy_configuration = SimpleScalingPolicyConfiguration.build(params[:simple_scaling_policy_configuration], context: "#{context}[:simple_scaling_policy_configuration]") unless params[:simple_scaling_policy_configuration].nil?
        type
      end
    end

    module ScalingConstraints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalingConstraints, context: context)
        type = Types::ScalingConstraints.new
        type.min_capacity = params[:min_capacity]
        type.max_capacity = params[:max_capacity]
        type
      end
    end

    module ScalingRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalingRule, context: context)
        type = Types::ScalingRule.new
        type.name = params[:name]
        type.description = params[:description]
        type.action = ScalingAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.trigger = ScalingTrigger.build(params[:trigger], context: "#{context}[:trigger]") unless params[:trigger].nil?
        type
      end
    end

    module ScalingRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScalingRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScalingTrigger
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalingTrigger, context: context)
        type = Types::ScalingTrigger.new
        type.cloud_watch_alarm_definition = CloudWatchAlarmDefinition.build(params[:cloud_watch_alarm_definition], context: "#{context}[:cloud_watch_alarm_definition]") unless params[:cloud_watch_alarm_definition].nil?
        type
      end
    end

    module ScriptBootstrapActionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScriptBootstrapActionConfig, context: context)
        type = Types::ScriptBootstrapActionConfig.new
        type.path = params[:path]
        type.args = XmlStringList.build(params[:args], context: "#{context}[:args]") unless params[:args].nil?
        type
      end
    end

    module SecurityConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecurityConfigurationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecurityConfigurationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecurityConfigurationSummary, context: context)
        type = Types::SecurityConfigurationSummary.new
        type.name = params[:name]
        type.creation_date_time = params[:creation_date_time]
        type
      end
    end

    module SecurityGroupsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SessionMappingDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionMappingDetail, context: context)
        type = Types::SessionMappingDetail.new
        type.studio_id = params[:studio_id]
        type.identity_id = params[:identity_id]
        type.identity_name = params[:identity_name]
        type.identity_type = params[:identity_type]
        type.session_policy_arn = params[:session_policy_arn]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module SessionMappingSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionMappingSummary, context: context)
        type = Types::SessionMappingSummary.new
        type.studio_id = params[:studio_id]
        type.identity_id = params[:identity_id]
        type.identity_name = params[:identity_name]
        type.identity_type = params[:identity_type]
        type.session_policy_arn = params[:session_policy_arn]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module SessionMappingSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SessionMappingSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SetTerminationProtectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTerminationProtectionInput, context: context)
        type = Types::SetTerminationProtectionInput.new
        type.job_flow_ids = XmlStringList.build(params[:job_flow_ids], context: "#{context}[:job_flow_ids]") unless params[:job_flow_ids].nil?
        type.termination_protected = params[:termination_protected]
        type
      end
    end

    module SetTerminationProtectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTerminationProtectionOutput, context: context)
        type = Types::SetTerminationProtectionOutput.new
        type
      end
    end

    module SetVisibleToAllUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetVisibleToAllUsersInput, context: context)
        type = Types::SetVisibleToAllUsersInput.new
        type.job_flow_ids = XmlStringList.build(params[:job_flow_ids], context: "#{context}[:job_flow_ids]") unless params[:job_flow_ids].nil?
        type.visible_to_all_users = params[:visible_to_all_users]
        type
      end
    end

    module SetVisibleToAllUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetVisibleToAllUsersOutput, context: context)
        type = Types::SetVisibleToAllUsersOutput.new
        type
      end
    end

    module ShrinkPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShrinkPolicy, context: context)
        type = Types::ShrinkPolicy.new
        type.decommission_timeout = params[:decommission_timeout]
        type.instance_resize_policy = InstanceResizePolicy.build(params[:instance_resize_policy], context: "#{context}[:instance_resize_policy]") unless params[:instance_resize_policy].nil?
        type
      end
    end

    module SimpleScalingPolicyConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimpleScalingPolicyConfiguration, context: context)
        type = Types::SimpleScalingPolicyConfiguration.new
        type.adjustment_type = params[:adjustment_type]
        type.scaling_adjustment = params[:scaling_adjustment]
        type.cool_down = params[:cool_down]
        type
      end
    end

    module SimplifiedApplication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SimplifiedApplication, context: context)
        type = Types::SimplifiedApplication.new
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module SimplifiedApplicationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SimplifiedApplication.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SpotProvisioningSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpotProvisioningSpecification, context: context)
        type = Types::SpotProvisioningSpecification.new
        type.timeout_duration_minutes = params[:timeout_duration_minutes]
        type.timeout_action = params[:timeout_action]
        type.block_duration_minutes = params[:block_duration_minutes]
        type.allocation_strategy = params[:allocation_strategy]
        type
      end
    end

    module StartNotebookExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartNotebookExecutionInput, context: context)
        type = Types::StartNotebookExecutionInput.new
        type.editor_id = params[:editor_id]
        type.relative_path = params[:relative_path]
        type.notebook_execution_name = params[:notebook_execution_name]
        type.notebook_params = params[:notebook_params]
        type.execution_engine = ExecutionEngineConfig.build(params[:execution_engine], context: "#{context}[:execution_engine]") unless params[:execution_engine].nil?
        type.service_role = params[:service_role]
        type.notebook_instance_security_group_id = params[:notebook_instance_security_group_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StartNotebookExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartNotebookExecutionOutput, context: context)
        type = Types::StartNotebookExecutionOutput.new
        type.notebook_execution_id = params[:notebook_execution_id]
        type
      end
    end

    module Step
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Step, context: context)
        type = Types::Step.new
        type.id = params[:id]
        type.name = params[:name]
        type.config = HadoopStepConfig.build(params[:config], context: "#{context}[:config]") unless params[:config].nil?
        type.action_on_failure = params[:action_on_failure]
        type.status = StepStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module StepConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StepConfig, context: context)
        type = Types::StepConfig.new
        type.name = params[:name]
        type.action_on_failure = params[:action_on_failure]
        type.hadoop_jar_step = HadoopJarStepConfig.build(params[:hadoop_jar_step], context: "#{context}[:hadoop_jar_step]") unless params[:hadoop_jar_step].nil?
        type
      end
    end

    module StepConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StepConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StepDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StepDetail, context: context)
        type = Types::StepDetail.new
        type.step_config = StepConfig.build(params[:step_config], context: "#{context}[:step_config]") unless params[:step_config].nil?
        type.execution_status_detail = StepExecutionStatusDetail.build(params[:execution_status_detail], context: "#{context}[:execution_status_detail]") unless params[:execution_status_detail].nil?
        type
      end
    end

    module StepDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StepDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StepExecutionStatusDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StepExecutionStatusDetail, context: context)
        type = Types::StepExecutionStatusDetail.new
        type.state = params[:state]
        type.creation_date_time = params[:creation_date_time]
        type.start_date_time = params[:start_date_time]
        type.end_date_time = params[:end_date_time]
        type.last_state_change_reason = params[:last_state_change_reason]
        type
      end
    end

    module StepIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StepStateChangeReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StepStateChangeReason, context: context)
        type = Types::StepStateChangeReason.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module StepStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StepStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StepStatus, context: context)
        type = Types::StepStatus.new
        type.state = params[:state]
        type.state_change_reason = StepStateChangeReason.build(params[:state_change_reason], context: "#{context}[:state_change_reason]") unless params[:state_change_reason].nil?
        type.failure_details = FailureDetails.build(params[:failure_details], context: "#{context}[:failure_details]") unless params[:failure_details].nil?
        type.timeline = StepTimeline.build(params[:timeline], context: "#{context}[:timeline]") unless params[:timeline].nil?
        type
      end
    end

    module StepSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StepSummary, context: context)
        type = Types::StepSummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.config = HadoopStepConfig.build(params[:config], context: "#{context}[:config]") unless params[:config].nil?
        type.action_on_failure = params[:action_on_failure]
        type.status = StepStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module StepSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StepSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StepTimeline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StepTimeline, context: context)
        type = Types::StepTimeline.new
        type.creation_date_time = params[:creation_date_time]
        type.start_date_time = params[:start_date_time]
        type.end_date_time = params[:end_date_time]
        type
      end
    end

    module StopNotebookExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopNotebookExecutionInput, context: context)
        type = Types::StopNotebookExecutionInput.new
        type.notebook_execution_id = params[:notebook_execution_id]
        type
      end
    end

    module StopNotebookExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopNotebookExecutionOutput, context: context)
        type = Types::StopNotebookExecutionOutput.new
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

    module StringMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Studio
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Studio, context: context)
        type = Types::Studio.new
        type.studio_id = params[:studio_id]
        type.studio_arn = params[:studio_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.auth_mode = params[:auth_mode]
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.service_role = params[:service_role]
        type.user_role = params[:user_role]
        type.workspace_security_group_id = params[:workspace_security_group_id]
        type.engine_security_group_id = params[:engine_security_group_id]
        type.url = params[:url]
        type.creation_time = params[:creation_time]
        type.default_s3_location = params[:default_s3_location]
        type.idp_auth_url = params[:idp_auth_url]
        type.idp_relay_state_parameter_name = params[:idp_relay_state_parameter_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StudioSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StudioSummary, context: context)
        type = Types::StudioSummary.new
        type.studio_id = params[:studio_id]
        type.name = params[:name]
        type.vpc_id = params[:vpc_id]
        type.description = params[:description]
        type.url = params[:url]
        type.auth_mode = params[:auth_mode]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module StudioSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StudioSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SubnetIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SupportedProductConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SupportedProductConfig, context: context)
        type = Types::SupportedProductConfig.new
        type.name = params[:name]
        type.args = XmlStringList.build(params[:args], context: "#{context}[:args]") unless params[:args].nil?
        type
      end
    end

    module SupportedProductsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
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

    module TerminateJobFlowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateJobFlowsInput, context: context)
        type = Types::TerminateJobFlowsInput.new
        type.job_flow_ids = XmlStringList.build(params[:job_flow_ids], context: "#{context}[:job_flow_ids]") unless params[:job_flow_ids].nil?
        type
      end
    end

    module TerminateJobFlowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminateJobFlowsOutput, context: context)
        type = Types::TerminateJobFlowsOutput.new
        type
      end
    end

    module UpdateStudioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStudioInput, context: context)
        type = Types::UpdateStudioInput.new
        type.studio_id = params[:studio_id]
        type.name = params[:name]
        type.description = params[:description]
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.default_s3_location = params[:default_s3_location]
        type
      end
    end

    module UpdateStudioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStudioOutput, context: context)
        type = Types::UpdateStudioOutput.new
        type
      end
    end

    module UpdateStudioSessionMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStudioSessionMappingInput, context: context)
        type = Types::UpdateStudioSessionMappingInput.new
        type.studio_id = params[:studio_id]
        type.identity_id = params[:identity_id]
        type.identity_name = params[:identity_name]
        type.identity_type = params[:identity_type]
        type.session_policy_arn = params[:session_policy_arn]
        type
      end
    end

    module UpdateStudioSessionMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStudioSessionMappingOutput, context: context)
        type = Types::UpdateStudioSessionMappingOutput.new
        type
      end
    end

    module VolumeSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VolumeSpecification, context: context)
        type = Types::VolumeSpecification.new
        type.volume_type = params[:volume_type]
        type.iops = params[:iops]
        type.size_in_gb = params[:size_in_gb]
        type
      end
    end

    module XmlStringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module XmlStringMaxLen256List
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
