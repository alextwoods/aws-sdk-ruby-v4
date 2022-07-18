# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::EMR
  module Validators

    class AddInstanceFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddInstanceFleetInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        InstanceFleetConfig.validate!(input[:instance_fleet], context: "#{context}[:instance_fleet]") unless input[:instance_fleet].nil?
      end
    end

    class AddInstanceFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddInstanceFleetOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:instance_fleet_id], ::String, context: "#{context}[:instance_fleet_id]")
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
      end
    end

    class AddInstanceGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddInstanceGroupsInput, context: context)
        InstanceGroupConfigList.validate!(input[:instance_groups], context: "#{context}[:instance_groups]") unless input[:instance_groups].nil?
        Hearth::Validator.validate!(input[:job_flow_id], ::String, context: "#{context}[:job_flow_id]")
      end
    end

    class AddInstanceGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddInstanceGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:job_flow_id], ::String, context: "#{context}[:job_flow_id]")
        InstanceGroupIdsList.validate!(input[:instance_group_ids], context: "#{context}[:instance_group_ids]") unless input[:instance_group_ids].nil?
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
      end
    end

    class AddJobFlowStepsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddJobFlowStepsInput, context: context)
        Hearth::Validator.validate!(input[:job_flow_id], ::String, context: "#{context}[:job_flow_id]")
        StepConfigList.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
      end
    end

    class AddJobFlowStepsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddJobFlowStepsOutput, context: context)
        StepIdsList.validate!(input[:step_ids], context: "#{context}[:step_ids]") unless input[:step_ids].nil?
      end
    end

    class AddTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AddTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsOutput, context: context)
      end
    end

    class Application
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Application, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        StringList.validate!(input[:args], context: "#{context}[:args]") unless input[:args].nil?
        StringMap.validate!(input[:additional_info], context: "#{context}[:additional_info]") unless input[:additional_info].nil?
      end
    end

    class ApplicationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Application.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoScalingPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingPolicy, context: context)
        ScalingConstraints.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
        ScalingRuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class AutoScalingPolicyDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingPolicyDescription, context: context)
        AutoScalingPolicyStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        ScalingConstraints.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
        ScalingRuleList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class AutoScalingPolicyStateChangeReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingPolicyStateChangeReason, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AutoScalingPolicyStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingPolicyStatus, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        AutoScalingPolicyStateChangeReason.validate!(input[:state_change_reason], context: "#{context}[:state_change_reason]") unless input[:state_change_reason].nil?
      end
    end

    class AutoTerminationPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoTerminationPolicy, context: context)
        Hearth::Validator.validate!(input[:idle_timeout], ::Integer, context: "#{context}[:idle_timeout]")
      end
    end

    class BlockPublicAccessConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlockPublicAccessConfiguration, context: context)
        Hearth::Validator.validate!(input[:block_public_security_group_rules], ::TrueClass, ::FalseClass, context: "#{context}[:block_public_security_group_rules]")
        PortRanges.validate!(input[:permitted_public_security_group_rule_ranges], context: "#{context}[:permitted_public_security_group_rule_ranges]") unless input[:permitted_public_security_group_rule_ranges].nil?
        Hearth::Validator.validate!(input[:classification], ::String, context: "#{context}[:classification]")
        ConfigurationList.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
        StringMap.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class BlockPublicAccessConfigurationMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlockPublicAccessConfigurationMetadata, context: context)
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:created_by_arn], ::String, context: "#{context}[:created_by_arn]")
      end
    end

    class BootstrapActionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BootstrapActionConfig, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ScriptBootstrapActionConfig.validate!(input[:script_bootstrap_action], context: "#{context}[:script_bootstrap_action]") unless input[:script_bootstrap_action].nil?
      end
    end

    class BootstrapActionConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BootstrapActionConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BootstrapActionDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BootstrapActionDetail, context: context)
        BootstrapActionConfig.validate!(input[:bootstrap_action_config], context: "#{context}[:bootstrap_action_config]") unless input[:bootstrap_action_config].nil?
      end
    end

    class BootstrapActionDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BootstrapActionDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CancelStepsInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelStepsInfo, context: context)
        Hearth::Validator.validate!(input[:step_id], ::String, context: "#{context}[:step_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class CancelStepsInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CancelStepsInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CancelStepsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelStepsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        StepIdsList.validate!(input[:step_ids], context: "#{context}[:step_ids]") unless input[:step_ids].nil?
        Hearth::Validator.validate!(input[:step_cancellation_option], ::String, context: "#{context}[:step_cancellation_option]")
      end
    end

    class CancelStepsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelStepsOutput, context: context)
        CancelStepsInfoList.validate!(input[:cancel_steps_info_list], context: "#{context}[:cancel_steps_info_list]") unless input[:cancel_steps_info_list].nil?
      end
    end

    class CloudWatchAlarmDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchAlarmDefinition, context: context)
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate!(input[:evaluation_periods], ::Integer, context: "#{context}[:evaluation_periods]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Hearth::Validator.validate!(input[:threshold], ::Float, context: "#{context}[:threshold]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        MetricDimensionList.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
      end
    end

    class Cluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cluster, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ClusterStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Ec2InstanceAttributes.validate!(input[:ec2_instance_attributes], context: "#{context}[:ec2_instance_attributes]") unless input[:ec2_instance_attributes].nil?
        Hearth::Validator.validate!(input[:instance_collection_type], ::String, context: "#{context}[:instance_collection_type]")
        Hearth::Validator.validate!(input[:log_uri], ::String, context: "#{context}[:log_uri]")
        Hearth::Validator.validate!(input[:log_encryption_kms_key_id], ::String, context: "#{context}[:log_encryption_kms_key_id]")
        Hearth::Validator.validate!(input[:requested_ami_version], ::String, context: "#{context}[:requested_ami_version]")
        Hearth::Validator.validate!(input[:running_ami_version], ::String, context: "#{context}[:running_ami_version]")
        Hearth::Validator.validate!(input[:release_label], ::String, context: "#{context}[:release_label]")
        Hearth::Validator.validate!(input[:auto_terminate], ::TrueClass, ::FalseClass, context: "#{context}[:auto_terminate]")
        Hearth::Validator.validate!(input[:termination_protected], ::TrueClass, ::FalseClass, context: "#{context}[:termination_protected]")
        Hearth::Validator.validate!(input[:visible_to_all_users], ::TrueClass, ::FalseClass, context: "#{context}[:visible_to_all_users]")
        ApplicationList.validate!(input[:applications], context: "#{context}[:applications]") unless input[:applications].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:normalized_instance_hours], ::Integer, context: "#{context}[:normalized_instance_hours]")
        Hearth::Validator.validate!(input[:master_public_dns_name], ::String, context: "#{context}[:master_public_dns_name]")
        ConfigurationList.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
        Hearth::Validator.validate!(input[:security_configuration], ::String, context: "#{context}[:security_configuration]")
        Hearth::Validator.validate!(input[:auto_scaling_role], ::String, context: "#{context}[:auto_scaling_role]")
        Hearth::Validator.validate!(input[:scale_down_behavior], ::String, context: "#{context}[:scale_down_behavior]")
        Hearth::Validator.validate!(input[:custom_ami_id], ::String, context: "#{context}[:custom_ami_id]")
        Hearth::Validator.validate!(input[:ebs_root_volume_size], ::Integer, context: "#{context}[:ebs_root_volume_size]")
        Hearth::Validator.validate!(input[:repo_upgrade_on_boot], ::String, context: "#{context}[:repo_upgrade_on_boot]")
        KerberosAttributes.validate!(input[:kerberos_attributes], context: "#{context}[:kerberos_attributes]") unless input[:kerberos_attributes].nil?
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:outpost_arn], ::String, context: "#{context}[:outpost_arn]")
        Hearth::Validator.validate!(input[:step_concurrency_level], ::Integer, context: "#{context}[:step_concurrency_level]")
        PlacementGroupConfigList.validate!(input[:placement_groups], context: "#{context}[:placement_groups]") unless input[:placement_groups].nil?
        Hearth::Validator.validate!(input[:os_release_label], ::String, context: "#{context}[:os_release_label]")
      end
    end

    class ClusterStateChangeReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterStateChangeReason, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ClusterStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterStatus, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        ClusterStateChangeReason.validate!(input[:state_change_reason], context: "#{context}[:state_change_reason]") unless input[:state_change_reason].nil?
        ClusterTimeline.validate!(input[:timeline], context: "#{context}[:timeline]") unless input[:timeline].nil?
      end
    end

    class ClusterSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ClusterStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:normalized_instance_hours], ::Integer, context: "#{context}[:normalized_instance_hours]")
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:outpost_arn], ::String, context: "#{context}[:outpost_arn]")
      end
    end

    class ClusterSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ClusterSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClusterTimeline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterTimeline, context: context)
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:ready_date_time], ::Time, context: "#{context}[:ready_date_time]")
        Hearth::Validator.validate!(input[:end_date_time], ::Time, context: "#{context}[:end_date_time]")
      end
    end

    class Command
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Command, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:script_path], ::String, context: "#{context}[:script_path]")
        StringList.validate!(input[:args], context: "#{context}[:args]") unless input[:args].nil?
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

    class ComputeLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComputeLimits, context: context)
        Hearth::Validator.validate!(input[:unit_type], ::String, context: "#{context}[:unit_type]")
        Hearth::Validator.validate!(input[:minimum_capacity_units], ::Integer, context: "#{context}[:minimum_capacity_units]")
        Hearth::Validator.validate!(input[:maximum_capacity_units], ::Integer, context: "#{context}[:maximum_capacity_units]")
        Hearth::Validator.validate!(input[:maximum_on_demand_capacity_units], ::Integer, context: "#{context}[:maximum_on_demand_capacity_units]")
        Hearth::Validator.validate!(input[:maximum_core_capacity_units], ::Integer, context: "#{context}[:maximum_core_capacity_units]")
      end
    end

    class Configuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Configuration, context: context)
        Hearth::Validator.validate!(input[:classification], ::String, context: "#{context}[:classification]")
        ConfigurationList.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
        StringMap.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class ConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Configuration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateSecurityConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSecurityConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:security_configuration], ::String, context: "#{context}[:security_configuration]")
      end
    end

    class CreateSecurityConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSecurityConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
      end
    end

    class CreateStudioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStudioInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:auth_mode], ::String, context: "#{context}[:auth_mode]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:user_role], ::String, context: "#{context}[:user_role]")
        Hearth::Validator.validate!(input[:workspace_security_group_id], ::String, context: "#{context}[:workspace_security_group_id]")
        Hearth::Validator.validate!(input[:engine_security_group_id], ::String, context: "#{context}[:engine_security_group_id]")
        Hearth::Validator.validate!(input[:default_s3_location], ::String, context: "#{context}[:default_s3_location]")
        Hearth::Validator.validate!(input[:idp_auth_url], ::String, context: "#{context}[:idp_auth_url]")
        Hearth::Validator.validate!(input[:idp_relay_state_parameter_name], ::String, context: "#{context}[:idp_relay_state_parameter_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateStudioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStudioOutput, context: context)
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class CreateStudioSessionMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStudioSessionMappingInput, context: context)
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:identity_name], ::String, context: "#{context}[:identity_name]")
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:session_policy_arn], ::String, context: "#{context}[:session_policy_arn]")
      end
    end

    class CreateStudioSessionMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStudioSessionMappingOutput, context: context)
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

    class DeleteStudioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStudioInput, context: context)
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class DeleteStudioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStudioOutput, context: context)
      end
    end

    class DeleteStudioSessionMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStudioSessionMappingInput, context: context)
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:identity_name], ::String, context: "#{context}[:identity_name]")
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
      end
    end

    class DeleteStudioSessionMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStudioSessionMappingOutput, context: context)
      end
    end

    class DescribeClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
      end
    end

    class DescribeClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterOutput, context: context)
        Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class DescribeJobFlowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobFlowsInput, context: context)
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        XmlStringList.validate!(input[:job_flow_ids], context: "#{context}[:job_flow_ids]") unless input[:job_flow_ids].nil?
        JobFlowExecutionStateList.validate!(input[:job_flow_states], context: "#{context}[:job_flow_states]") unless input[:job_flow_states].nil?
      end
    end

    class DescribeJobFlowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobFlowsOutput, context: context)
        JobFlowDetailList.validate!(input[:job_flows], context: "#{context}[:job_flows]") unless input[:job_flows].nil?
      end
    end

    class DescribeNotebookExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotebookExecutionInput, context: context)
        Hearth::Validator.validate!(input[:notebook_execution_id], ::String, context: "#{context}[:notebook_execution_id]")
      end
    end

    class DescribeNotebookExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotebookExecutionOutput, context: context)
        NotebookExecution.validate!(input[:notebook_execution], context: "#{context}[:notebook_execution]") unless input[:notebook_execution].nil?
      end
    end

    class DescribeReleaseLabelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReleaseLabelInput, context: context)
        Hearth::Validator.validate!(input[:release_label], ::String, context: "#{context}[:release_label]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeReleaseLabelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReleaseLabelOutput, context: context)
        Hearth::Validator.validate!(input[:release_label], ::String, context: "#{context}[:release_label]")
        SimplifiedApplicationList.validate!(input[:applications], context: "#{context}[:applications]") unless input[:applications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        OSReleaseList.validate!(input[:available_os_releases], context: "#{context}[:available_os_releases]") unless input[:available_os_releases].nil?
      end
    end

    class DescribeSecurityConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSecurityConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeSecurityConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSecurityConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:security_configuration], ::String, context: "#{context}[:security_configuration]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
      end
    end

    class DescribeStepInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStepInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:step_id], ::String, context: "#{context}[:step_id]")
      end
    end

    class DescribeStepOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStepOutput, context: context)
        Step.validate!(input[:step], context: "#{context}[:step]") unless input[:step].nil?
      end
    end

    class DescribeStudioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStudioInput, context: context)
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
      end
    end

    class DescribeStudioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStudioOutput, context: context)
        Studio.validate!(input[:studio], context: "#{context}[:studio]") unless input[:studio].nil?
      end
    end

    class EC2InstanceIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EC2InstanceIdsToTerminateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EbsBlockDevice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EbsBlockDevice, context: context)
        VolumeSpecification.validate!(input[:volume_specification], context: "#{context}[:volume_specification]") unless input[:volume_specification].nil?
        Hearth::Validator.validate!(input[:device], ::String, context: "#{context}[:device]")
      end
    end

    class EbsBlockDeviceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EbsBlockDeviceConfig, context: context)
        VolumeSpecification.validate!(input[:volume_specification], context: "#{context}[:volume_specification]") unless input[:volume_specification].nil?
        Hearth::Validator.validate!(input[:volumes_per_instance], ::Integer, context: "#{context}[:volumes_per_instance]")
      end
    end

    class EbsBlockDeviceConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EbsBlockDeviceConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EbsBlockDeviceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EbsBlockDevice.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EbsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EbsConfiguration, context: context)
        EbsBlockDeviceConfigList.validate!(input[:ebs_block_device_configs], context: "#{context}[:ebs_block_device_configs]") unless input[:ebs_block_device_configs].nil?
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
      end
    end

    class EbsVolume
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EbsVolume, context: context)
        Hearth::Validator.validate!(input[:device], ::String, context: "#{context}[:device]")
        Hearth::Validator.validate!(input[:volume_id], ::String, context: "#{context}[:volume_id]")
      end
    end

    class EbsVolumeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EbsVolume.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Ec2InstanceAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ec2InstanceAttributes, context: context)
        Hearth::Validator.validate!(input[:ec2_key_name], ::String, context: "#{context}[:ec2_key_name]")
        Hearth::Validator.validate!(input[:ec2_subnet_id], ::String, context: "#{context}[:ec2_subnet_id]")
        XmlStringMaxLen256List.validate!(input[:requested_ec2_subnet_ids], context: "#{context}[:requested_ec2_subnet_ids]") unless input[:requested_ec2_subnet_ids].nil?
        Hearth::Validator.validate!(input[:ec2_availability_zone], ::String, context: "#{context}[:ec2_availability_zone]")
        XmlStringMaxLen256List.validate!(input[:requested_ec2_availability_zones], context: "#{context}[:requested_ec2_availability_zones]") unless input[:requested_ec2_availability_zones].nil?
        Hearth::Validator.validate!(input[:iam_instance_profile], ::String, context: "#{context}[:iam_instance_profile]")
        Hearth::Validator.validate!(input[:emr_managed_master_security_group], ::String, context: "#{context}[:emr_managed_master_security_group]")
        Hearth::Validator.validate!(input[:emr_managed_slave_security_group], ::String, context: "#{context}[:emr_managed_slave_security_group]")
        Hearth::Validator.validate!(input[:service_access_security_group], ::String, context: "#{context}[:service_access_security_group]")
        StringList.validate!(input[:additional_master_security_groups], context: "#{context}[:additional_master_security_groups]") unless input[:additional_master_security_groups].nil?
        StringList.validate!(input[:additional_slave_security_groups], context: "#{context}[:additional_slave_security_groups]") unless input[:additional_slave_security_groups].nil?
      end
    end

    class ExecutionEngineConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionEngineConfig, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:master_instance_security_group_id], ::String, context: "#{context}[:master_instance_security_group_id]")
      end
    end

    class FailureDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailureDetails, context: context)
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:log_file], ::String, context: "#{context}[:log_file]")
      end
    end

    class GetAutoTerminationPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAutoTerminationPolicyInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
      end
    end

    class GetAutoTerminationPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAutoTerminationPolicyOutput, context: context)
        AutoTerminationPolicy.validate!(input[:auto_termination_policy], context: "#{context}[:auto_termination_policy]") unless input[:auto_termination_policy].nil?
      end
    end

    class GetBlockPublicAccessConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlockPublicAccessConfigurationInput, context: context)
      end
    end

    class GetBlockPublicAccessConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlockPublicAccessConfigurationOutput, context: context)
        BlockPublicAccessConfiguration.validate!(input[:block_public_access_configuration], context: "#{context}[:block_public_access_configuration]") unless input[:block_public_access_configuration].nil?
        BlockPublicAccessConfigurationMetadata.validate!(input[:block_public_access_configuration_metadata], context: "#{context}[:block_public_access_configuration_metadata]") unless input[:block_public_access_configuration_metadata].nil?
      end
    end

    class GetManagedScalingPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetManagedScalingPolicyInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
      end
    end

    class GetManagedScalingPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetManagedScalingPolicyOutput, context: context)
        ManagedScalingPolicy.validate!(input[:managed_scaling_policy], context: "#{context}[:managed_scaling_policy]") unless input[:managed_scaling_policy].nil?
      end
    end

    class GetStudioSessionMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStudioSessionMappingInput, context: context)
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:identity_name], ::String, context: "#{context}[:identity_name]")
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
      end
    end

    class GetStudioSessionMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStudioSessionMappingOutput, context: context)
        SessionMappingDetail.validate!(input[:session_mapping], context: "#{context}[:session_mapping]") unless input[:session_mapping].nil?
      end
    end

    class HadoopJarStepConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HadoopJarStepConfig, context: context)
        KeyValueList.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        Hearth::Validator.validate!(input[:jar], ::String, context: "#{context}[:jar]")
        Hearth::Validator.validate!(input[:main_class], ::String, context: "#{context}[:main_class]")
        XmlStringList.validate!(input[:args], context: "#{context}[:args]") unless input[:args].nil?
      end
    end

    class HadoopStepConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HadoopStepConfig, context: context)
        Hearth::Validator.validate!(input[:jar], ::String, context: "#{context}[:jar]")
        StringMap.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        Hearth::Validator.validate!(input[:main_class], ::String, context: "#{context}[:main_class]")
        StringList.validate!(input[:args], context: "#{context}[:args]") unless input[:args].nil?
      end
    end

    class Instance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Instance, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:ec2_instance_id], ::String, context: "#{context}[:ec2_instance_id]")
        Hearth::Validator.validate!(input[:public_dns_name], ::String, context: "#{context}[:public_dns_name]")
        Hearth::Validator.validate!(input[:public_ip_address], ::String, context: "#{context}[:public_ip_address]")
        Hearth::Validator.validate!(input[:private_dns_name], ::String, context: "#{context}[:private_dns_name]")
        Hearth::Validator.validate!(input[:private_ip_address], ::String, context: "#{context}[:private_ip_address]")
        InstanceStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:instance_group_id], ::String, context: "#{context}[:instance_group_id]")
        Hearth::Validator.validate!(input[:instance_fleet_id], ::String, context: "#{context}[:instance_fleet_id]")
        Hearth::Validator.validate!(input[:market], ::String, context: "#{context}[:market]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        EbsVolumeList.validate!(input[:ebs_volumes], context: "#{context}[:ebs_volumes]") unless input[:ebs_volumes].nil?
      end
    end

    class InstanceFleet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceFleet, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        InstanceFleetStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:instance_fleet_type], ::String, context: "#{context}[:instance_fleet_type]")
        Hearth::Validator.validate!(input[:target_on_demand_capacity], ::Integer, context: "#{context}[:target_on_demand_capacity]")
        Hearth::Validator.validate!(input[:target_spot_capacity], ::Integer, context: "#{context}[:target_spot_capacity]")
        Hearth::Validator.validate!(input[:provisioned_on_demand_capacity], ::Integer, context: "#{context}[:provisioned_on_demand_capacity]")
        Hearth::Validator.validate!(input[:provisioned_spot_capacity], ::Integer, context: "#{context}[:provisioned_spot_capacity]")
        InstanceTypeSpecificationList.validate!(input[:instance_type_specifications], context: "#{context}[:instance_type_specifications]") unless input[:instance_type_specifications].nil?
        InstanceFleetProvisioningSpecifications.validate!(input[:launch_specifications], context: "#{context}[:launch_specifications]") unless input[:launch_specifications].nil?
      end
    end

    class InstanceFleetConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceFleetConfig, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:instance_fleet_type], ::String, context: "#{context}[:instance_fleet_type]")
        Hearth::Validator.validate!(input[:target_on_demand_capacity], ::Integer, context: "#{context}[:target_on_demand_capacity]")
        Hearth::Validator.validate!(input[:target_spot_capacity], ::Integer, context: "#{context}[:target_spot_capacity]")
        InstanceTypeConfigList.validate!(input[:instance_type_configs], context: "#{context}[:instance_type_configs]") unless input[:instance_type_configs].nil?
        InstanceFleetProvisioningSpecifications.validate!(input[:launch_specifications], context: "#{context}[:launch_specifications]") unless input[:launch_specifications].nil?
      end
    end

    class InstanceFleetConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceFleetConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceFleetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceFleet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceFleetModifyConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceFleetModifyConfig, context: context)
        Hearth::Validator.validate!(input[:instance_fleet_id], ::String, context: "#{context}[:instance_fleet_id]")
        Hearth::Validator.validate!(input[:target_on_demand_capacity], ::Integer, context: "#{context}[:target_on_demand_capacity]")
        Hearth::Validator.validate!(input[:target_spot_capacity], ::Integer, context: "#{context}[:target_spot_capacity]")
      end
    end

    class InstanceFleetProvisioningSpecifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceFleetProvisioningSpecifications, context: context)
        SpotProvisioningSpecification.validate!(input[:spot_specification], context: "#{context}[:spot_specification]") unless input[:spot_specification].nil?
        OnDemandProvisioningSpecification.validate!(input[:on_demand_specification], context: "#{context}[:on_demand_specification]") unless input[:on_demand_specification].nil?
      end
    end

    class InstanceFleetStateChangeReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceFleetStateChangeReason, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InstanceFleetStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceFleetStatus, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        InstanceFleetStateChangeReason.validate!(input[:state_change_reason], context: "#{context}[:state_change_reason]") unless input[:state_change_reason].nil?
        InstanceFleetTimeline.validate!(input[:timeline], context: "#{context}[:timeline]") unless input[:timeline].nil?
      end
    end

    class InstanceFleetTimeline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceFleetTimeline, context: context)
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:ready_date_time], ::Time, context: "#{context}[:ready_date_time]")
        Hearth::Validator.validate!(input[:end_date_time], ::Time, context: "#{context}[:end_date_time]")
      end
    end

    class InstanceGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceGroup, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:market], ::String, context: "#{context}[:market]")
        Hearth::Validator.validate!(input[:instance_group_type], ::String, context: "#{context}[:instance_group_type]")
        Hearth::Validator.validate!(input[:bid_price], ::String, context: "#{context}[:bid_price]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:requested_instance_count], ::Integer, context: "#{context}[:requested_instance_count]")
        Hearth::Validator.validate!(input[:running_instance_count], ::Integer, context: "#{context}[:running_instance_count]")
        InstanceGroupStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        ConfigurationList.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
        Hearth::Validator.validate!(input[:configurations_version], ::Integer, context: "#{context}[:configurations_version]")
        ConfigurationList.validate!(input[:last_successfully_applied_configurations], context: "#{context}[:last_successfully_applied_configurations]") unless input[:last_successfully_applied_configurations].nil?
        Hearth::Validator.validate!(input[:last_successfully_applied_configurations_version], ::Integer, context: "#{context}[:last_successfully_applied_configurations_version]")
        EbsBlockDeviceList.validate!(input[:ebs_block_devices], context: "#{context}[:ebs_block_devices]") unless input[:ebs_block_devices].nil?
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
        ShrinkPolicy.validate!(input[:shrink_policy], context: "#{context}[:shrink_policy]") unless input[:shrink_policy].nil?
        AutoScalingPolicyDescription.validate!(input[:auto_scaling_policy], context: "#{context}[:auto_scaling_policy]") unless input[:auto_scaling_policy].nil?
        Hearth::Validator.validate!(input[:custom_ami_id], ::String, context: "#{context}[:custom_ami_id]")
      end
    end

    class InstanceGroupConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceGroupConfig, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:market], ::String, context: "#{context}[:market]")
        Hearth::Validator.validate!(input[:instance_role], ::String, context: "#{context}[:instance_role]")
        Hearth::Validator.validate!(input[:bid_price], ::String, context: "#{context}[:bid_price]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        ConfigurationList.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
        EbsConfiguration.validate!(input[:ebs_configuration], context: "#{context}[:ebs_configuration]") unless input[:ebs_configuration].nil?
        AutoScalingPolicy.validate!(input[:auto_scaling_policy], context: "#{context}[:auto_scaling_policy]") unless input[:auto_scaling_policy].nil?
        Hearth::Validator.validate!(input[:custom_ami_id], ::String, context: "#{context}[:custom_ami_id]")
      end
    end

    class InstanceGroupConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceGroupConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceGroupDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceGroupDetail, context: context)
        Hearth::Validator.validate!(input[:instance_group_id], ::String, context: "#{context}[:instance_group_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:market], ::String, context: "#{context}[:market]")
        Hearth::Validator.validate!(input[:instance_role], ::String, context: "#{context}[:instance_role]")
        Hearth::Validator.validate!(input[:bid_price], ::String, context: "#{context}[:bid_price]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:instance_request_count], ::Integer, context: "#{context}[:instance_request_count]")
        Hearth::Validator.validate!(input[:instance_running_count], ::Integer, context: "#{context}[:instance_running_count]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:last_state_change_reason], ::String, context: "#{context}[:last_state_change_reason]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:start_date_time], ::Time, context: "#{context}[:start_date_time]")
        Hearth::Validator.validate!(input[:ready_date_time], ::Time, context: "#{context}[:ready_date_time]")
        Hearth::Validator.validate!(input[:end_date_time], ::Time, context: "#{context}[:end_date_time]")
        Hearth::Validator.validate!(input[:custom_ami_id], ::String, context: "#{context}[:custom_ami_id]")
      end
    end

    class InstanceGroupDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceGroupDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceGroupIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceGroupModifyConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceGroupModifyConfig, context: context)
        Hearth::Validator.validate!(input[:instance_group_id], ::String, context: "#{context}[:instance_group_id]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        EC2InstanceIdsToTerminateList.validate!(input[:ec2_instance_ids_to_terminate], context: "#{context}[:ec2_instance_ids_to_terminate]") unless input[:ec2_instance_ids_to_terminate].nil?
        ShrinkPolicy.validate!(input[:shrink_policy], context: "#{context}[:shrink_policy]") unless input[:shrink_policy].nil?
        Hearth::Validator.validate!(input[:reconfiguration_type], ::String, context: "#{context}[:reconfiguration_type]")
        ConfigurationList.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
      end
    end

    class InstanceGroupModifyConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceGroupModifyConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceGroupStateChangeReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceGroupStateChangeReason, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InstanceGroupStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceGroupStatus, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        InstanceGroupStateChangeReason.validate!(input[:state_change_reason], context: "#{context}[:state_change_reason]") unless input[:state_change_reason].nil?
        InstanceGroupTimeline.validate!(input[:timeline], context: "#{context}[:timeline]") unless input[:timeline].nil?
      end
    end

    class InstanceGroupTimeline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceGroupTimeline, context: context)
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:ready_date_time], ::Time, context: "#{context}[:ready_date_time]")
        Hearth::Validator.validate!(input[:end_date_time], ::Time, context: "#{context}[:end_date_time]")
      end
    end

    class InstanceGroupTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Instance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceResizePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceResizePolicy, context: context)
        EC2InstanceIdsList.validate!(input[:instances_to_terminate], context: "#{context}[:instances_to_terminate]") unless input[:instances_to_terminate].nil?
        EC2InstanceIdsList.validate!(input[:instances_to_protect], context: "#{context}[:instances_to_protect]") unless input[:instances_to_protect].nil?
        Hearth::Validator.validate!(input[:instance_termination_timeout], ::Integer, context: "#{context}[:instance_termination_timeout]")
      end
    end

    class InstanceStateChangeReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceStateChangeReason, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InstanceStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceStatus, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        InstanceStateChangeReason.validate!(input[:state_change_reason], context: "#{context}[:state_change_reason]") unless input[:state_change_reason].nil?
        InstanceTimeline.validate!(input[:timeline], context: "#{context}[:timeline]") unless input[:timeline].nil?
      end
    end

    class InstanceTimeline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceTimeline, context: context)
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:ready_date_time], ::Time, context: "#{context}[:ready_date_time]")
        Hearth::Validator.validate!(input[:end_date_time], ::Time, context: "#{context}[:end_date_time]")
      end
    end

    class InstanceTypeConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceTypeConfig, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:weighted_capacity], ::Integer, context: "#{context}[:weighted_capacity]")
        Hearth::Validator.validate!(input[:bid_price], ::String, context: "#{context}[:bid_price]")
        Hearth::Validator.validate!(input[:bid_price_as_percentage_of_on_demand_price], ::Float, context: "#{context}[:bid_price_as_percentage_of_on_demand_price]")
        EbsConfiguration.validate!(input[:ebs_configuration], context: "#{context}[:ebs_configuration]") unless input[:ebs_configuration].nil?
        ConfigurationList.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
        Hearth::Validator.validate!(input[:custom_ami_id], ::String, context: "#{context}[:custom_ami_id]")
      end
    end

    class InstanceTypeConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceTypeConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceTypeSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceTypeSpecification, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:weighted_capacity], ::Integer, context: "#{context}[:weighted_capacity]")
        Hearth::Validator.validate!(input[:bid_price], ::String, context: "#{context}[:bid_price]")
        Hearth::Validator.validate!(input[:bid_price_as_percentage_of_on_demand_price], ::Float, context: "#{context}[:bid_price_as_percentage_of_on_demand_price]")
        ConfigurationList.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
        EbsBlockDeviceList.validate!(input[:ebs_block_devices], context: "#{context}[:ebs_block_devices]") unless input[:ebs_block_devices].nil?
        Hearth::Validator.validate!(input[:ebs_optimized], ::TrueClass, ::FalseClass, context: "#{context}[:ebs_optimized]")
        Hearth::Validator.validate!(input[:custom_ami_id], ::String, context: "#{context}[:custom_ami_id]")
      end
    end

    class InstanceTypeSpecificationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceTypeSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerError, context: context)
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobFlowDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobFlowDetail, context: context)
        Hearth::Validator.validate!(input[:job_flow_id], ::String, context: "#{context}[:job_flow_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:log_uri], ::String, context: "#{context}[:log_uri]")
        Hearth::Validator.validate!(input[:log_encryption_kms_key_id], ::String, context: "#{context}[:log_encryption_kms_key_id]")
        Hearth::Validator.validate!(input[:ami_version], ::String, context: "#{context}[:ami_version]")
        JobFlowExecutionStatusDetail.validate!(input[:execution_status_detail], context: "#{context}[:execution_status_detail]") unless input[:execution_status_detail].nil?
        JobFlowInstancesDetail.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        StepDetailList.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
        BootstrapActionDetailList.validate!(input[:bootstrap_actions], context: "#{context}[:bootstrap_actions]") unless input[:bootstrap_actions].nil?
        SupportedProductsList.validate!(input[:supported_products], context: "#{context}[:supported_products]") unless input[:supported_products].nil?
        Hearth::Validator.validate!(input[:visible_to_all_users], ::TrueClass, ::FalseClass, context: "#{context}[:visible_to_all_users]")
        Hearth::Validator.validate!(input[:job_flow_role], ::String, context: "#{context}[:job_flow_role]")
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:auto_scaling_role], ::String, context: "#{context}[:auto_scaling_role]")
        Hearth::Validator.validate!(input[:scale_down_behavior], ::String, context: "#{context}[:scale_down_behavior]")
      end
    end

    class JobFlowDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JobFlowDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobFlowExecutionStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class JobFlowExecutionStatusDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobFlowExecutionStatusDetail, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:start_date_time], ::Time, context: "#{context}[:start_date_time]")
        Hearth::Validator.validate!(input[:ready_date_time], ::Time, context: "#{context}[:ready_date_time]")
        Hearth::Validator.validate!(input[:end_date_time], ::Time, context: "#{context}[:end_date_time]")
        Hearth::Validator.validate!(input[:last_state_change_reason], ::String, context: "#{context}[:last_state_change_reason]")
      end
    end

    class JobFlowInstancesConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobFlowInstancesConfig, context: context)
        Hearth::Validator.validate!(input[:master_instance_type], ::String, context: "#{context}[:master_instance_type]")
        Hearth::Validator.validate!(input[:slave_instance_type], ::String, context: "#{context}[:slave_instance_type]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        InstanceGroupConfigList.validate!(input[:instance_groups], context: "#{context}[:instance_groups]") unless input[:instance_groups].nil?
        InstanceFleetConfigList.validate!(input[:instance_fleets], context: "#{context}[:instance_fleets]") unless input[:instance_fleets].nil?
        Hearth::Validator.validate!(input[:ec2_key_name], ::String, context: "#{context}[:ec2_key_name]")
        PlacementType.validate!(input[:placement], context: "#{context}[:placement]") unless input[:placement].nil?
        Hearth::Validator.validate!(input[:keep_job_flow_alive_when_no_steps], ::TrueClass, ::FalseClass, context: "#{context}[:keep_job_flow_alive_when_no_steps]")
        Hearth::Validator.validate!(input[:termination_protected], ::TrueClass, ::FalseClass, context: "#{context}[:termination_protected]")
        Hearth::Validator.validate!(input[:hadoop_version], ::String, context: "#{context}[:hadoop_version]")
        Hearth::Validator.validate!(input[:ec2_subnet_id], ::String, context: "#{context}[:ec2_subnet_id]")
        XmlStringMaxLen256List.validate!(input[:ec2_subnet_ids], context: "#{context}[:ec2_subnet_ids]") unless input[:ec2_subnet_ids].nil?
        Hearth::Validator.validate!(input[:emr_managed_master_security_group], ::String, context: "#{context}[:emr_managed_master_security_group]")
        Hearth::Validator.validate!(input[:emr_managed_slave_security_group], ::String, context: "#{context}[:emr_managed_slave_security_group]")
        Hearth::Validator.validate!(input[:service_access_security_group], ::String, context: "#{context}[:service_access_security_group]")
        SecurityGroupsList.validate!(input[:additional_master_security_groups], context: "#{context}[:additional_master_security_groups]") unless input[:additional_master_security_groups].nil?
        SecurityGroupsList.validate!(input[:additional_slave_security_groups], context: "#{context}[:additional_slave_security_groups]") unless input[:additional_slave_security_groups].nil?
      end
    end

    class JobFlowInstancesDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobFlowInstancesDetail, context: context)
        Hearth::Validator.validate!(input[:master_instance_type], ::String, context: "#{context}[:master_instance_type]")
        Hearth::Validator.validate!(input[:master_public_dns_name], ::String, context: "#{context}[:master_public_dns_name]")
        Hearth::Validator.validate!(input[:master_instance_id], ::String, context: "#{context}[:master_instance_id]")
        Hearth::Validator.validate!(input[:slave_instance_type], ::String, context: "#{context}[:slave_instance_type]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        InstanceGroupDetailList.validate!(input[:instance_groups], context: "#{context}[:instance_groups]") unless input[:instance_groups].nil?
        Hearth::Validator.validate!(input[:normalized_instance_hours], ::Integer, context: "#{context}[:normalized_instance_hours]")
        Hearth::Validator.validate!(input[:ec2_key_name], ::String, context: "#{context}[:ec2_key_name]")
        Hearth::Validator.validate!(input[:ec2_subnet_id], ::String, context: "#{context}[:ec2_subnet_id]")
        PlacementType.validate!(input[:placement], context: "#{context}[:placement]") unless input[:placement].nil?
        Hearth::Validator.validate!(input[:keep_job_flow_alive_when_no_steps], ::TrueClass, ::FalseClass, context: "#{context}[:keep_job_flow_alive_when_no_steps]")
        Hearth::Validator.validate!(input[:termination_protected], ::TrueClass, ::FalseClass, context: "#{context}[:termination_protected]")
        Hearth::Validator.validate!(input[:hadoop_version], ::String, context: "#{context}[:hadoop_version]")
      end
    end

    class KerberosAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KerberosAttributes, context: context)
        Hearth::Validator.validate!(input[:realm], ::String, context: "#{context}[:realm]")
        Hearth::Validator.validate!(input[:kdc_admin_password], ::String, context: "#{context}[:kdc_admin_password]")
        Hearth::Validator.validate!(input[:cross_realm_trust_principal_password], ::String, context: "#{context}[:cross_realm_trust_principal_password]")
        Hearth::Validator.validate!(input[:ad_domain_join_user], ::String, context: "#{context}[:ad_domain_join_user]")
        Hearth::Validator.validate!(input[:ad_domain_join_password], ::String, context: "#{context}[:ad_domain_join_password]")
      end
    end

    class KeyValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyValue, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class KeyValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KeyValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListBootstrapActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBootstrapActionsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListBootstrapActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBootstrapActionsOutput, context: context)
        CommandList.validate!(input[:bootstrap_actions], context: "#{context}[:bootstrap_actions]") unless input[:bootstrap_actions].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClustersInput, context: context)
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        ClusterStateList.validate!(input[:cluster_states], context: "#{context}[:cluster_states]") unless input[:cluster_states].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClustersOutput, context: context)
        ClusterSummaryList.validate!(input[:clusters], context: "#{context}[:clusters]") unless input[:clusters].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListInstanceFleetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceFleetsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListInstanceFleetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceFleetsOutput, context: context)
        InstanceFleetList.validate!(input[:instance_fleets], context: "#{context}[:instance_fleets]") unless input[:instance_fleets].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListInstanceGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceGroupsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListInstanceGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstanceGroupsOutput, context: context)
        InstanceGroupList.validate!(input[:instance_groups], context: "#{context}[:instance_groups]") unless input[:instance_groups].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstancesInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:instance_group_id], ::String, context: "#{context}[:instance_group_id]")
        InstanceGroupTypeList.validate!(input[:instance_group_types], context: "#{context}[:instance_group_types]") unless input[:instance_group_types].nil?
        Hearth::Validator.validate!(input[:instance_fleet_id], ::String, context: "#{context}[:instance_fleet_id]")
        Hearth::Validator.validate!(input[:instance_fleet_type], ::String, context: "#{context}[:instance_fleet_type]")
        InstanceStateList.validate!(input[:instance_states], context: "#{context}[:instance_states]") unless input[:instance_states].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInstancesOutput, context: context)
        InstanceList.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListNotebookExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNotebookExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:editor_id], ::String, context: "#{context}[:editor_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:from], ::Time, context: "#{context}[:from]")
        Hearth::Validator.validate!(input[:to], ::Time, context: "#{context}[:to]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListNotebookExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNotebookExecutionsOutput, context: context)
        NotebookExecutionSummaryList.validate!(input[:notebook_executions], context: "#{context}[:notebook_executions]") unless input[:notebook_executions].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListReleaseLabelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReleaseLabelsInput, context: context)
        ReleaseLabelFilter.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListReleaseLabelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReleaseLabelsOutput, context: context)
        StringList.validate!(input[:release_labels], context: "#{context}[:release_labels]") unless input[:release_labels].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSecurityConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecurityConfigurationsInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListSecurityConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSecurityConfigurationsOutput, context: context)
        SecurityConfigurationList.validate!(input[:security_configurations], context: "#{context}[:security_configurations]") unless input[:security_configurations].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListStepsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStepsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        StepStateList.validate!(input[:step_states], context: "#{context}[:step_states]") unless input[:step_states].nil?
        XmlStringList.validate!(input[:step_ids], context: "#{context}[:step_ids]") unless input[:step_ids].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListStepsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStepsOutput, context: context)
        StepSummaryList.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListStudioSessionMappingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStudioSessionMappingsInput, context: context)
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListStudioSessionMappingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStudioSessionMappingsOutput, context: context)
        SessionMappingSummaryList.validate!(input[:session_mappings], context: "#{context}[:session_mappings]") unless input[:session_mappings].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListStudiosInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStudiosInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListStudiosOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStudiosOutput, context: context)
        StudioSummaryList.validate!(input[:studios], context: "#{context}[:studios]") unless input[:studios].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ManagedScalingPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedScalingPolicy, context: context)
        ComputeLimits.validate!(input[:compute_limits], context: "#{context}[:compute_limits]") unless input[:compute_limits].nil?
      end
    end

    class MetricDimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDimension, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class MetricDimensionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricDimension.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModifyClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:step_concurrency_level], ::Integer, context: "#{context}[:step_concurrency_level]")
      end
    end

    class ModifyClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterOutput, context: context)
        Hearth::Validator.validate!(input[:step_concurrency_level], ::Integer, context: "#{context}[:step_concurrency_level]")
      end
    end

    class ModifyInstanceFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyInstanceFleetInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        InstanceFleetModifyConfig.validate!(input[:instance_fleet], context: "#{context}[:instance_fleet]") unless input[:instance_fleet].nil?
      end
    end

    class ModifyInstanceFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyInstanceFleetOutput, context: context)
      end
    end

    class ModifyInstanceGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyInstanceGroupsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        InstanceGroupModifyConfigList.validate!(input[:instance_groups], context: "#{context}[:instance_groups]") unless input[:instance_groups].nil?
      end
    end

    class ModifyInstanceGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyInstanceGroupsOutput, context: context)
      end
    end

    class NewSupportedProductsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SupportedProductConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotebookExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotebookExecution, context: context)
        Hearth::Validator.validate!(input[:notebook_execution_id], ::String, context: "#{context}[:notebook_execution_id]")
        Hearth::Validator.validate!(input[:editor_id], ::String, context: "#{context}[:editor_id]")
        ExecutionEngineConfig.validate!(input[:execution_engine], context: "#{context}[:execution_engine]") unless input[:execution_engine].nil?
        Hearth::Validator.validate!(input[:notebook_execution_name], ::String, context: "#{context}[:notebook_execution_name]")
        Hearth::Validator.validate!(input[:notebook_params], ::String, context: "#{context}[:notebook_params]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:output_notebook_uri], ::String, context: "#{context}[:output_notebook_uri]")
        Hearth::Validator.validate!(input[:last_state_change_reason], ::String, context: "#{context}[:last_state_change_reason]")
        Hearth::Validator.validate!(input[:notebook_instance_security_group_id], ::String, context: "#{context}[:notebook_instance_security_group_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NotebookExecutionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotebookExecutionSummary, context: context)
        Hearth::Validator.validate!(input[:notebook_execution_id], ::String, context: "#{context}[:notebook_execution_id]")
        Hearth::Validator.validate!(input[:editor_id], ::String, context: "#{context}[:editor_id]")
        Hearth::Validator.validate!(input[:notebook_execution_name], ::String, context: "#{context}[:notebook_execution_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class NotebookExecutionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NotebookExecutionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OSRelease
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OSRelease, context: context)
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
      end
    end

    class OSReleaseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OSRelease.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OnDemandCapacityReservationOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnDemandCapacityReservationOptions, context: context)
        Hearth::Validator.validate!(input[:usage_strategy], ::String, context: "#{context}[:usage_strategy]")
        Hearth::Validator.validate!(input[:capacity_reservation_preference], ::String, context: "#{context}[:capacity_reservation_preference]")
        Hearth::Validator.validate!(input[:capacity_reservation_resource_group_arn], ::String, context: "#{context}[:capacity_reservation_resource_group_arn]")
      end
    end

    class OnDemandProvisioningSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnDemandProvisioningSpecification, context: context)
        Hearth::Validator.validate!(input[:allocation_strategy], ::String, context: "#{context}[:allocation_strategy]")
        OnDemandCapacityReservationOptions.validate!(input[:capacity_reservation_options], context: "#{context}[:capacity_reservation_options]") unless input[:capacity_reservation_options].nil?
      end
    end

    class PlacementGroupConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlacementGroupConfig, context: context)
        Hearth::Validator.validate!(input[:instance_role], ::String, context: "#{context}[:instance_role]")
        Hearth::Validator.validate!(input[:placement_strategy], ::String, context: "#{context}[:placement_strategy]")
      end
    end

    class PlacementGroupConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlacementGroupConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlacementType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlacementType, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        XmlStringMaxLen256List.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
      end
    end

    class PortRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PortRange, context: context)
        Hearth::Validator.validate!(input[:min_range], ::Integer, context: "#{context}[:min_range]")
        Hearth::Validator.validate!(input[:max_range], ::Integer, context: "#{context}[:max_range]")
      end
    end

    class PortRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PortRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutAutoScalingPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAutoScalingPolicyInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:instance_group_id], ::String, context: "#{context}[:instance_group_id]")
        AutoScalingPolicy.validate!(input[:auto_scaling_policy], context: "#{context}[:auto_scaling_policy]") unless input[:auto_scaling_policy].nil?
      end
    end

    class PutAutoScalingPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAutoScalingPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:instance_group_id], ::String, context: "#{context}[:instance_group_id]")
        AutoScalingPolicyDescription.validate!(input[:auto_scaling_policy], context: "#{context}[:auto_scaling_policy]") unless input[:auto_scaling_policy].nil?
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
      end
    end

    class PutAutoTerminationPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAutoTerminationPolicyInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        AutoTerminationPolicy.validate!(input[:auto_termination_policy], context: "#{context}[:auto_termination_policy]") unless input[:auto_termination_policy].nil?
      end
    end

    class PutAutoTerminationPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAutoTerminationPolicyOutput, context: context)
      end
    end

    class PutBlockPublicAccessConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBlockPublicAccessConfigurationInput, context: context)
        BlockPublicAccessConfiguration.validate!(input[:block_public_access_configuration], context: "#{context}[:block_public_access_configuration]") unless input[:block_public_access_configuration].nil?
      end
    end

    class PutBlockPublicAccessConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutBlockPublicAccessConfigurationOutput, context: context)
      end
    end

    class PutManagedScalingPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutManagedScalingPolicyInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        ManagedScalingPolicy.validate!(input[:managed_scaling_policy], context: "#{context}[:managed_scaling_policy]") unless input[:managed_scaling_policy].nil?
      end
    end

    class PutManagedScalingPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutManagedScalingPolicyOutput, context: context)
      end
    end

    class ReleaseLabelFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReleaseLabelFilter, context: context)
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
        Hearth::Validator.validate!(input[:application], ::String, context: "#{context}[:application]")
      end
    end

    class RemoveAutoScalingPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAutoScalingPolicyInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:instance_group_id], ::String, context: "#{context}[:instance_group_id]")
      end
    end

    class RemoveAutoScalingPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAutoScalingPolicyOutput, context: context)
      end
    end

    class RemoveAutoTerminationPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAutoTerminationPolicyInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
      end
    end

    class RemoveAutoTerminationPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAutoTerminationPolicyOutput, context: context)
      end
    end

    class RemoveManagedScalingPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveManagedScalingPolicyInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
      end
    end

    class RemoveManagedScalingPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveManagedScalingPolicyOutput, context: context)
      end
    end

    class RemoveTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        StringList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class RemoveTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsOutput, context: context)
      end
    end

    class RunJobFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunJobFlowInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:log_uri], ::String, context: "#{context}[:log_uri]")
        Hearth::Validator.validate!(input[:log_encryption_kms_key_id], ::String, context: "#{context}[:log_encryption_kms_key_id]")
        Hearth::Validator.validate!(input[:additional_info], ::String, context: "#{context}[:additional_info]")
        Hearth::Validator.validate!(input[:ami_version], ::String, context: "#{context}[:ami_version]")
        Hearth::Validator.validate!(input[:release_label], ::String, context: "#{context}[:release_label]")
        JobFlowInstancesConfig.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        StepConfigList.validate!(input[:steps], context: "#{context}[:steps]") unless input[:steps].nil?
        BootstrapActionConfigList.validate!(input[:bootstrap_actions], context: "#{context}[:bootstrap_actions]") unless input[:bootstrap_actions].nil?
        SupportedProductsList.validate!(input[:supported_products], context: "#{context}[:supported_products]") unless input[:supported_products].nil?
        NewSupportedProductsList.validate!(input[:new_supported_products], context: "#{context}[:new_supported_products]") unless input[:new_supported_products].nil?
        ApplicationList.validate!(input[:applications], context: "#{context}[:applications]") unless input[:applications].nil?
        ConfigurationList.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
        Hearth::Validator.validate!(input[:visible_to_all_users], ::TrueClass, ::FalseClass, context: "#{context}[:visible_to_all_users]")
        Hearth::Validator.validate!(input[:job_flow_role], ::String, context: "#{context}[:job_flow_role]")
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:security_configuration], ::String, context: "#{context}[:security_configuration]")
        Hearth::Validator.validate!(input[:auto_scaling_role], ::String, context: "#{context}[:auto_scaling_role]")
        Hearth::Validator.validate!(input[:scale_down_behavior], ::String, context: "#{context}[:scale_down_behavior]")
        Hearth::Validator.validate!(input[:custom_ami_id], ::String, context: "#{context}[:custom_ami_id]")
        Hearth::Validator.validate!(input[:ebs_root_volume_size], ::Integer, context: "#{context}[:ebs_root_volume_size]")
        Hearth::Validator.validate!(input[:repo_upgrade_on_boot], ::String, context: "#{context}[:repo_upgrade_on_boot]")
        KerberosAttributes.validate!(input[:kerberos_attributes], context: "#{context}[:kerberos_attributes]") unless input[:kerberos_attributes].nil?
        Hearth::Validator.validate!(input[:step_concurrency_level], ::Integer, context: "#{context}[:step_concurrency_level]")
        ManagedScalingPolicy.validate!(input[:managed_scaling_policy], context: "#{context}[:managed_scaling_policy]") unless input[:managed_scaling_policy].nil?
        PlacementGroupConfigList.validate!(input[:placement_group_configs], context: "#{context}[:placement_group_configs]") unless input[:placement_group_configs].nil?
        AutoTerminationPolicy.validate!(input[:auto_termination_policy], context: "#{context}[:auto_termination_policy]") unless input[:auto_termination_policy].nil?
        Hearth::Validator.validate!(input[:os_release_label], ::String, context: "#{context}[:os_release_label]")
      end
    end

    class RunJobFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RunJobFlowOutput, context: context)
        Hearth::Validator.validate!(input[:job_flow_id], ::String, context: "#{context}[:job_flow_id]")
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
      end
    end

    class ScalingAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingAction, context: context)
        Hearth::Validator.validate!(input[:market], ::String, context: "#{context}[:market]")
        SimpleScalingPolicyConfiguration.validate!(input[:simple_scaling_policy_configuration], context: "#{context}[:simple_scaling_policy_configuration]") unless input[:simple_scaling_policy_configuration].nil?
      end
    end

    class ScalingConstraints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingConstraints, context: context)
        Hearth::Validator.validate!(input[:min_capacity], ::Integer, context: "#{context}[:min_capacity]")
        Hearth::Validator.validate!(input[:max_capacity], ::Integer, context: "#{context}[:max_capacity]")
      end
    end

    class ScalingRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingRule, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ScalingAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        ScalingTrigger.validate!(input[:trigger], context: "#{context}[:trigger]") unless input[:trigger].nil?
      end
    end

    class ScalingRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ScalingRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScalingTrigger
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingTrigger, context: context)
        CloudWatchAlarmDefinition.validate!(input[:cloud_watch_alarm_definition], context: "#{context}[:cloud_watch_alarm_definition]") unless input[:cloud_watch_alarm_definition].nil?
      end
    end

    class ScriptBootstrapActionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScriptBootstrapActionConfig, context: context)
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        XmlStringList.validate!(input[:args], context: "#{context}[:args]") unless input[:args].nil?
      end
    end

    class SecurityConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SecurityConfigurationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecurityConfigurationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecurityConfigurationSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
      end
    end

    class SecurityGroupsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SessionMappingDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SessionMappingDetail, context: context)
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:identity_name], ::String, context: "#{context}[:identity_name]")
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:session_policy_arn], ::String, context: "#{context}[:session_policy_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class SessionMappingSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SessionMappingSummary, context: context)
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:identity_name], ::String, context: "#{context}[:identity_name]")
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:session_policy_arn], ::String, context: "#{context}[:session_policy_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class SessionMappingSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SessionMappingSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SetTerminationProtectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTerminationProtectionInput, context: context)
        XmlStringList.validate!(input[:job_flow_ids], context: "#{context}[:job_flow_ids]") unless input[:job_flow_ids].nil?
        Hearth::Validator.validate!(input[:termination_protected], ::TrueClass, ::FalseClass, context: "#{context}[:termination_protected]")
      end
    end

    class SetTerminationProtectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTerminationProtectionOutput, context: context)
      end
    end

    class SetVisibleToAllUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetVisibleToAllUsersInput, context: context)
        XmlStringList.validate!(input[:job_flow_ids], context: "#{context}[:job_flow_ids]") unless input[:job_flow_ids].nil?
        Hearth::Validator.validate!(input[:visible_to_all_users], ::TrueClass, ::FalseClass, context: "#{context}[:visible_to_all_users]")
      end
    end

    class SetVisibleToAllUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetVisibleToAllUsersOutput, context: context)
      end
    end

    class ShrinkPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShrinkPolicy, context: context)
        Hearth::Validator.validate!(input[:decommission_timeout], ::Integer, context: "#{context}[:decommission_timeout]")
        InstanceResizePolicy.validate!(input[:instance_resize_policy], context: "#{context}[:instance_resize_policy]") unless input[:instance_resize_policy].nil?
      end
    end

    class SimpleScalingPolicyConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimpleScalingPolicyConfiguration, context: context)
        Hearth::Validator.validate!(input[:adjustment_type], ::String, context: "#{context}[:adjustment_type]")
        Hearth::Validator.validate!(input[:scaling_adjustment], ::Integer, context: "#{context}[:scaling_adjustment]")
        Hearth::Validator.validate!(input[:cool_down], ::Integer, context: "#{context}[:cool_down]")
      end
    end

    class SimplifiedApplication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SimplifiedApplication, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class SimplifiedApplicationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SimplifiedApplication.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SpotProvisioningSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpotProvisioningSpecification, context: context)
        Hearth::Validator.validate!(input[:timeout_duration_minutes], ::Integer, context: "#{context}[:timeout_duration_minutes]")
        Hearth::Validator.validate!(input[:timeout_action], ::String, context: "#{context}[:timeout_action]")
        Hearth::Validator.validate!(input[:block_duration_minutes], ::Integer, context: "#{context}[:block_duration_minutes]")
        Hearth::Validator.validate!(input[:allocation_strategy], ::String, context: "#{context}[:allocation_strategy]")
      end
    end

    class StartNotebookExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartNotebookExecutionInput, context: context)
        Hearth::Validator.validate!(input[:editor_id], ::String, context: "#{context}[:editor_id]")
        Hearth::Validator.validate!(input[:relative_path], ::String, context: "#{context}[:relative_path]")
        Hearth::Validator.validate!(input[:notebook_execution_name], ::String, context: "#{context}[:notebook_execution_name]")
        Hearth::Validator.validate!(input[:notebook_params], ::String, context: "#{context}[:notebook_params]")
        ExecutionEngineConfig.validate!(input[:execution_engine], context: "#{context}[:execution_engine]") unless input[:execution_engine].nil?
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:notebook_instance_security_group_id], ::String, context: "#{context}[:notebook_instance_security_group_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StartNotebookExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartNotebookExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:notebook_execution_id], ::String, context: "#{context}[:notebook_execution_id]")
      end
    end

    class Step
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Step, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        HadoopStepConfig.validate!(input[:config], context: "#{context}[:config]") unless input[:config].nil?
        Hearth::Validator.validate!(input[:action_on_failure], ::String, context: "#{context}[:action_on_failure]")
        StepStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class StepConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StepConfig, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:action_on_failure], ::String, context: "#{context}[:action_on_failure]")
        HadoopJarStepConfig.validate!(input[:hadoop_jar_step], context: "#{context}[:hadoop_jar_step]") unless input[:hadoop_jar_step].nil?
      end
    end

    class StepConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StepConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StepDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StepDetail, context: context)
        StepConfig.validate!(input[:step_config], context: "#{context}[:step_config]") unless input[:step_config].nil?
        StepExecutionStatusDetail.validate!(input[:execution_status_detail], context: "#{context}[:execution_status_detail]") unless input[:execution_status_detail].nil?
      end
    end

    class StepDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StepDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StepExecutionStatusDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StepExecutionStatusDetail, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:start_date_time], ::Time, context: "#{context}[:start_date_time]")
        Hearth::Validator.validate!(input[:end_date_time], ::Time, context: "#{context}[:end_date_time]")
        Hearth::Validator.validate!(input[:last_state_change_reason], ::String, context: "#{context}[:last_state_change_reason]")
      end
    end

    class StepIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StepStateChangeReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StepStateChangeReason, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StepStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StepStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StepStatus, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        StepStateChangeReason.validate!(input[:state_change_reason], context: "#{context}[:state_change_reason]") unless input[:state_change_reason].nil?
        FailureDetails.validate!(input[:failure_details], context: "#{context}[:failure_details]") unless input[:failure_details].nil?
        StepTimeline.validate!(input[:timeline], context: "#{context}[:timeline]") unless input[:timeline].nil?
      end
    end

    class StepSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StepSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        HadoopStepConfig.validate!(input[:config], context: "#{context}[:config]") unless input[:config].nil?
        Hearth::Validator.validate!(input[:action_on_failure], ::String, context: "#{context}[:action_on_failure]")
        StepStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class StepSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StepSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StepTimeline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StepTimeline, context: context)
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:start_date_time], ::Time, context: "#{context}[:start_date_time]")
        Hearth::Validator.validate!(input[:end_date_time], ::Time, context: "#{context}[:end_date_time]")
      end
    end

    class StopNotebookExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopNotebookExecutionInput, context: context)
        Hearth::Validator.validate!(input[:notebook_execution_id], ::String, context: "#{context}[:notebook_execution_id]")
      end
    end

    class StopNotebookExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopNotebookExecutionOutput, context: context)
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

    class StringMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Studio
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Studio, context: context)
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Hearth::Validator.validate!(input[:studio_arn], ::String, context: "#{context}[:studio_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:auth_mode], ::String, context: "#{context}[:auth_mode]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:service_role], ::String, context: "#{context}[:service_role]")
        Hearth::Validator.validate!(input[:user_role], ::String, context: "#{context}[:user_role]")
        Hearth::Validator.validate!(input[:workspace_security_group_id], ::String, context: "#{context}[:workspace_security_group_id]")
        Hearth::Validator.validate!(input[:engine_security_group_id], ::String, context: "#{context}[:engine_security_group_id]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:default_s3_location], ::String, context: "#{context}[:default_s3_location]")
        Hearth::Validator.validate!(input[:idp_auth_url], ::String, context: "#{context}[:idp_auth_url]")
        Hearth::Validator.validate!(input[:idp_relay_state_parameter_name], ::String, context: "#{context}[:idp_relay_state_parameter_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StudioSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StudioSummary, context: context)
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:auth_mode], ::String, context: "#{context}[:auth_mode]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class StudioSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StudioSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SubnetIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SupportedProductConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SupportedProductConfig, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        XmlStringList.validate!(input[:args], context: "#{context}[:args]") unless input[:args].nil?
      end
    end

    class SupportedProductsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
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

    class TerminateJobFlowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateJobFlowsInput, context: context)
        XmlStringList.validate!(input[:job_flow_ids], context: "#{context}[:job_flow_ids]") unless input[:job_flow_ids].nil?
      end
    end

    class TerminateJobFlowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminateJobFlowsOutput, context: context)
      end
    end

    class UpdateStudioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStudioInput, context: context)
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:default_s3_location], ::String, context: "#{context}[:default_s3_location]")
      end
    end

    class UpdateStudioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStudioOutput, context: context)
      end
    end

    class UpdateStudioSessionMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStudioSessionMappingInput, context: context)
        Hearth::Validator.validate!(input[:studio_id], ::String, context: "#{context}[:studio_id]")
        Hearth::Validator.validate!(input[:identity_id], ::String, context: "#{context}[:identity_id]")
        Hearth::Validator.validate!(input[:identity_name], ::String, context: "#{context}[:identity_name]")
        Hearth::Validator.validate!(input[:identity_type], ::String, context: "#{context}[:identity_type]")
        Hearth::Validator.validate!(input[:session_policy_arn], ::String, context: "#{context}[:session_policy_arn]")
      end
    end

    class UpdateStudioSessionMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStudioSessionMappingOutput, context: context)
      end
    end

    class VolumeSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VolumeSpecification, context: context)
        Hearth::Validator.validate!(input[:volume_type], ::String, context: "#{context}[:volume_type]")
        Hearth::Validator.validate!(input[:iops], ::Integer, context: "#{context}[:iops]")
        Hearth::Validator.validate!(input[:size_in_gb], ::Integer, context: "#{context}[:size_in_gb]")
      end
    end

    class XmlStringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class XmlStringMaxLen256List
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
