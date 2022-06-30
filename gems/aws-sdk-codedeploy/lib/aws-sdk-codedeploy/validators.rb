# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeDeploy
  module Validators

    class AddTagsToOnPremisesInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToOnPremisesInstancesInput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::InstanceNameList.validate!(input[:instance_names], context: "#{context}[:instance_names]") unless input[:instance_names].nil?
      end
    end

    class AddTagsToOnPremisesInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToOnPremisesInstancesOutput, context: context)
      end
    end

    class Alarm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Alarm, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AlarmConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlarmConfiguration, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:ignore_poll_alarm_failure], ::TrueClass, ::FalseClass, context: "#{context}[:ignore_poll_alarm_failure]")
        Validators::AlarmList.validate!(input[:alarms], context: "#{context}[:alarms]") unless input[:alarms].nil?
      end
    end

    class AlarmList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Alarm.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlarmsLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlarmsLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AppSpecContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppSpecContent, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:sha256], ::String, context: "#{context}[:sha256]")
      end
    end

    class ApplicationAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApplicationDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApplicationInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationInfo, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:linked_to_git_hub], ::TrueClass, ::FalseClass, context: "#{context}[:linked_to_git_hub]")
        Hearth::Validator.validate!(input[:git_hub_account_name], ::String, context: "#{context}[:git_hub_account_name]")
        Hearth::Validator.validate!(input[:compute_platform], ::String, context: "#{context}[:compute_platform]")
      end
    end

    class ApplicationLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApplicationNameRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationNameRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApplicationsInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ApplicationInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ArnNotSupportedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArnNotSupportedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AutoRollbackConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoRollbackConfiguration, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::AutoRollbackEventsList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class AutoRollbackEventsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AutoScalingGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoScalingGroup, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:hook], ::String, context: "#{context}[:hook]")
      end
    end

    class AutoScalingGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AutoScalingGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoScalingGroupNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BatchGetApplicationRevisionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetApplicationRevisionsInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Validators::RevisionLocationList.validate!(input[:revisions], context: "#{context}[:revisions]") unless input[:revisions].nil?
      end
    end

    class BatchGetApplicationRevisionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetApplicationRevisionsOutput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Validators::RevisionInfoList.validate!(input[:revisions], context: "#{context}[:revisions]") unless input[:revisions].nil?
      end
    end

    class BatchGetApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetApplicationsInput, context: context)
        Validators::ApplicationsList.validate!(input[:application_names], context: "#{context}[:application_names]") unless input[:application_names].nil?
      end
    end

    class BatchGetApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetApplicationsOutput, context: context)
        Validators::ApplicationsInfoList.validate!(input[:applications_info], context: "#{context}[:applications_info]") unless input[:applications_info].nil?
      end
    end

    class BatchGetDeploymentGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDeploymentGroupsInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Validators::DeploymentGroupsList.validate!(input[:deployment_group_names], context: "#{context}[:deployment_group_names]") unless input[:deployment_group_names].nil?
      end
    end

    class BatchGetDeploymentGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDeploymentGroupsOutput, context: context)
        Validators::DeploymentGroupInfoList.validate!(input[:deployment_groups_info], context: "#{context}[:deployment_groups_info]") unless input[:deployment_groups_info].nil?
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchGetDeploymentInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDeploymentInstancesInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Validators::InstancesList.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
      end
    end

    class BatchGetDeploymentInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDeploymentInstancesOutput, context: context)
        Validators::InstanceSummaryList.validate!(input[:instances_summary], context: "#{context}[:instances_summary]") unless input[:instances_summary].nil?
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchGetDeploymentTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDeploymentTargetsInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Validators::TargetIdList.validate!(input[:target_ids], context: "#{context}[:target_ids]") unless input[:target_ids].nil?
      end
    end

    class BatchGetDeploymentTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDeploymentTargetsOutput, context: context)
        Validators::DeploymentTargetList.validate!(input[:deployment_targets], context: "#{context}[:deployment_targets]") unless input[:deployment_targets].nil?
      end
    end

    class BatchGetDeploymentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDeploymentsInput, context: context)
        Validators::DeploymentsList.validate!(input[:deployment_ids], context: "#{context}[:deployment_ids]") unless input[:deployment_ids].nil?
      end
    end

    class BatchGetDeploymentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDeploymentsOutput, context: context)
        Validators::DeploymentsInfoList.validate!(input[:deployments_info], context: "#{context}[:deployments_info]") unless input[:deployments_info].nil?
      end
    end

    class BatchGetOnPremisesInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetOnPremisesInstancesInput, context: context)
        Validators::InstanceNameList.validate!(input[:instance_names], context: "#{context}[:instance_names]") unless input[:instance_names].nil?
      end
    end

    class BatchGetOnPremisesInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetOnPremisesInstancesOutput, context: context)
        Validators::InstanceInfoList.validate!(input[:instance_infos], context: "#{context}[:instance_infos]") unless input[:instance_infos].nil?
      end
    end

    class BatchLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BlueGreenDeploymentConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlueGreenDeploymentConfiguration, context: context)
        Validators::BlueInstanceTerminationOption.validate!(input[:terminate_blue_instances_on_deployment_success], context: "#{context}[:terminate_blue_instances_on_deployment_success]") unless input[:terminate_blue_instances_on_deployment_success].nil?
        Validators::DeploymentReadyOption.validate!(input[:deployment_ready_option], context: "#{context}[:deployment_ready_option]") unless input[:deployment_ready_option].nil?
        Validators::GreenFleetProvisioningOption.validate!(input[:green_fleet_provisioning_option], context: "#{context}[:green_fleet_provisioning_option]") unless input[:green_fleet_provisioning_option].nil?
      end
    end

    class BlueInstanceTerminationOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlueInstanceTerminationOption, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Hearth::Validator.validate!(input[:termination_wait_time_in_minutes], ::Integer, context: "#{context}[:termination_wait_time_in_minutes]")
      end
    end

    class BucketNameFilterRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BucketNameFilterRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudFormationTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudFormationTarget, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::LifecycleEventList.validate!(input[:lifecycle_events], context: "#{context}[:lifecycle_events]") unless input[:lifecycle_events].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:target_version_weight], ::Float, context: "#{context}[:target_version_weight]")
      end
    end

    class ContinueDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContinueDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:deployment_wait_type], ::String, context: "#{context}[:deployment_wait_type]")
      end
    end

    class ContinueDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContinueDeploymentOutput, context: context)
      end
    end

    class CreateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:compute_platform], ::String, context: "#{context}[:compute_platform]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class CreateDeploymentConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentConfigInput, context: context)
        Hearth::Validator.validate!(input[:deployment_config_name], ::String, context: "#{context}[:deployment_config_name]")
        Validators::MinimumHealthyHosts.validate!(input[:minimum_healthy_hosts], context: "#{context}[:minimum_healthy_hosts]") unless input[:minimum_healthy_hosts].nil?
        Validators::TrafficRoutingConfig.validate!(input[:traffic_routing_config], context: "#{context}[:traffic_routing_config]") unless input[:traffic_routing_config].nil?
        Hearth::Validator.validate!(input[:compute_platform], ::String, context: "#{context}[:compute_platform]")
      end
    end

    class CreateDeploymentConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentConfigOutput, context: context)
        Hearth::Validator.validate!(input[:deployment_config_id], ::String, context: "#{context}[:deployment_config_id]")
      end
    end

    class CreateDeploymentGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentGroupInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:deployment_group_name], ::String, context: "#{context}[:deployment_group_name]")
        Hearth::Validator.validate!(input[:deployment_config_name], ::String, context: "#{context}[:deployment_config_name]")
        Validators::EC2TagFilterList.validate!(input[:ec2_tag_filters], context: "#{context}[:ec2_tag_filters]") unless input[:ec2_tag_filters].nil?
        Validators::TagFilterList.validate!(input[:on_premises_instance_tag_filters], context: "#{context}[:on_premises_instance_tag_filters]") unless input[:on_premises_instance_tag_filters].nil?
        Validators::AutoScalingGroupNameList.validate!(input[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless input[:auto_scaling_groups].nil?
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        Validators::TriggerConfigList.validate!(input[:trigger_configurations], context: "#{context}[:trigger_configurations]") unless input[:trigger_configurations].nil?
        Validators::AlarmConfiguration.validate!(input[:alarm_configuration], context: "#{context}[:alarm_configuration]") unless input[:alarm_configuration].nil?
        Validators::AutoRollbackConfiguration.validate!(input[:auto_rollback_configuration], context: "#{context}[:auto_rollback_configuration]") unless input[:auto_rollback_configuration].nil?
        Hearth::Validator.validate!(input[:outdated_instances_strategy], ::String, context: "#{context}[:outdated_instances_strategy]")
        Validators::DeploymentStyle.validate!(input[:deployment_style], context: "#{context}[:deployment_style]") unless input[:deployment_style].nil?
        Validators::BlueGreenDeploymentConfiguration.validate!(input[:blue_green_deployment_configuration], context: "#{context}[:blue_green_deployment_configuration]") unless input[:blue_green_deployment_configuration].nil?
        Validators::LoadBalancerInfo.validate!(input[:load_balancer_info], context: "#{context}[:load_balancer_info]") unless input[:load_balancer_info].nil?
        Validators::EC2TagSet.validate!(input[:ec2_tag_set], context: "#{context}[:ec2_tag_set]") unless input[:ec2_tag_set].nil?
        Validators::ECSServiceList.validate!(input[:ecs_services], context: "#{context}[:ecs_services]") unless input[:ecs_services].nil?
        Validators::OnPremisesTagSet.validate!(input[:on_premises_tag_set], context: "#{context}[:on_premises_tag_set]") unless input[:on_premises_tag_set].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDeploymentGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentGroupOutput, context: context)
        Hearth::Validator.validate!(input[:deployment_group_id], ::String, context: "#{context}[:deployment_group_id]")
      end
    end

    class CreateDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:deployment_group_name], ::String, context: "#{context}[:deployment_group_name]")
        Validators::RevisionLocation.validate!(input[:revision], context: "#{context}[:revision]") unless input[:revision].nil?
        Hearth::Validator.validate!(input[:deployment_config_name], ::String, context: "#{context}[:deployment_config_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:ignore_application_stop_failures], ::TrueClass, ::FalseClass, context: "#{context}[:ignore_application_stop_failures]")
        Validators::TargetInstances.validate!(input[:target_instances], context: "#{context}[:target_instances]") unless input[:target_instances].nil?
        Validators::AutoRollbackConfiguration.validate!(input[:auto_rollback_configuration], context: "#{context}[:auto_rollback_configuration]") unless input[:auto_rollback_configuration].nil?
        Hearth::Validator.validate!(input[:update_outdated_instances_only], ::TrueClass, ::FalseClass, context: "#{context}[:update_outdated_instances_only]")
        Hearth::Validator.validate!(input[:file_exists_behavior], ::String, context: "#{context}[:file_exists_behavior]")
      end
    end

    class CreateDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
      end
    end

    class DeleteApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
      end
    end

    class DeleteApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationOutput, context: context)
      end
    end

    class DeleteDeploymentConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeploymentConfigInput, context: context)
        Hearth::Validator.validate!(input[:deployment_config_name], ::String, context: "#{context}[:deployment_config_name]")
      end
    end

    class DeleteDeploymentConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeploymentConfigOutput, context: context)
      end
    end

    class DeleteDeploymentGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeploymentGroupInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:deployment_group_name], ::String, context: "#{context}[:deployment_group_name]")
      end
    end

    class DeleteDeploymentGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeploymentGroupOutput, context: context)
        Validators::AutoScalingGroupList.validate!(input[:hooks_not_cleaned_up], context: "#{context}[:hooks_not_cleaned_up]") unless input[:hooks_not_cleaned_up].nil?
      end
    end

    class DeleteGitHubAccountTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGitHubAccountTokenInput, context: context)
        Hearth::Validator.validate!(input[:token_name], ::String, context: "#{context}[:token_name]")
      end
    end

    class DeleteGitHubAccountTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGitHubAccountTokenOutput, context: context)
        Hearth::Validator.validate!(input[:token_name], ::String, context: "#{context}[:token_name]")
      end
    end

    class DeleteResourcesByExternalIdInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcesByExternalIdInput, context: context)
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
      end
    end

    class DeleteResourcesByExternalIdOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcesByExternalIdOutput, context: context)
      end
    end

    class DeploymentAlreadyCompletedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentAlreadyCompletedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentConfigAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentConfigAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentConfigDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentConfigDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentConfigInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentConfigInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentConfigInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentConfigInfo, context: context)
        Hearth::Validator.validate!(input[:deployment_config_id], ::String, context: "#{context}[:deployment_config_id]")
        Hearth::Validator.validate!(input[:deployment_config_name], ::String, context: "#{context}[:deployment_config_name]")
        Validators::MinimumHealthyHosts.validate!(input[:minimum_healthy_hosts], context: "#{context}[:minimum_healthy_hosts]") unless input[:minimum_healthy_hosts].nil?
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:compute_platform], ::String, context: "#{context}[:compute_platform]")
        Validators::TrafficRoutingConfig.validate!(input[:traffic_routing_config], context: "#{context}[:traffic_routing_config]") unless input[:traffic_routing_config].nil?
      end
    end

    class DeploymentConfigLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentConfigLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentConfigNameRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentConfigNameRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentConfigsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeploymentDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentGroupAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentGroupAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentGroupDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentGroupDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentGroupInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentGroupInfo, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:deployment_group_id], ::String, context: "#{context}[:deployment_group_id]")
        Hearth::Validator.validate!(input[:deployment_group_name], ::String, context: "#{context}[:deployment_group_name]")
        Hearth::Validator.validate!(input[:deployment_config_name], ::String, context: "#{context}[:deployment_config_name]")
        Validators::EC2TagFilterList.validate!(input[:ec2_tag_filters], context: "#{context}[:ec2_tag_filters]") unless input[:ec2_tag_filters].nil?
        Validators::TagFilterList.validate!(input[:on_premises_instance_tag_filters], context: "#{context}[:on_premises_instance_tag_filters]") unless input[:on_premises_instance_tag_filters].nil?
        Validators::AutoScalingGroupList.validate!(input[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless input[:auto_scaling_groups].nil?
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        Validators::RevisionLocation.validate!(input[:target_revision], context: "#{context}[:target_revision]") unless input[:target_revision].nil?
        Validators::TriggerConfigList.validate!(input[:trigger_configurations], context: "#{context}[:trigger_configurations]") unless input[:trigger_configurations].nil?
        Validators::AlarmConfiguration.validate!(input[:alarm_configuration], context: "#{context}[:alarm_configuration]") unless input[:alarm_configuration].nil?
        Validators::AutoRollbackConfiguration.validate!(input[:auto_rollback_configuration], context: "#{context}[:auto_rollback_configuration]") unless input[:auto_rollback_configuration].nil?
        Validators::DeploymentStyle.validate!(input[:deployment_style], context: "#{context}[:deployment_style]") unless input[:deployment_style].nil?
        Hearth::Validator.validate!(input[:outdated_instances_strategy], ::String, context: "#{context}[:outdated_instances_strategy]")
        Validators::BlueGreenDeploymentConfiguration.validate!(input[:blue_green_deployment_configuration], context: "#{context}[:blue_green_deployment_configuration]") unless input[:blue_green_deployment_configuration].nil?
        Validators::LoadBalancerInfo.validate!(input[:load_balancer_info], context: "#{context}[:load_balancer_info]") unless input[:load_balancer_info].nil?
        Validators::LastDeploymentInfo.validate!(input[:last_successful_deployment], context: "#{context}[:last_successful_deployment]") unless input[:last_successful_deployment].nil?
        Validators::LastDeploymentInfo.validate!(input[:last_attempted_deployment], context: "#{context}[:last_attempted_deployment]") unless input[:last_attempted_deployment].nil?
        Validators::EC2TagSet.validate!(input[:ec2_tag_set], context: "#{context}[:ec2_tag_set]") unless input[:ec2_tag_set].nil?
        Validators::OnPremisesTagSet.validate!(input[:on_premises_tag_set], context: "#{context}[:on_premises_tag_set]") unless input[:on_premises_tag_set].nil?
        Hearth::Validator.validate!(input[:compute_platform], ::String, context: "#{context}[:compute_platform]")
        Validators::ECSServiceList.validate!(input[:ecs_services], context: "#{context}[:ecs_services]") unless input[:ecs_services].nil?
      end
    end

    class DeploymentGroupInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DeploymentGroupInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeploymentGroupLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentGroupLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentGroupNameRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentGroupNameRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentGroupsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeploymentIdRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentIdRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentInfo, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:deployment_group_name], ::String, context: "#{context}[:deployment_group_name]")
        Hearth::Validator.validate!(input[:deployment_config_name], ::String, context: "#{context}[:deployment_config_name]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Validators::RevisionLocation.validate!(input[:previous_revision], context: "#{context}[:previous_revision]") unless input[:previous_revision].nil?
        Validators::RevisionLocation.validate!(input[:revision], context: "#{context}[:revision]") unless input[:revision].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ErrorInformation.validate!(input[:error_information], context: "#{context}[:error_information]") unless input[:error_information].nil?
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:complete_time], ::Time, context: "#{context}[:complete_time]")
        Validators::DeploymentOverview.validate!(input[:deployment_overview], context: "#{context}[:deployment_overview]") unless input[:deployment_overview].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creator], ::String, context: "#{context}[:creator]")
        Hearth::Validator.validate!(input[:ignore_application_stop_failures], ::TrueClass, ::FalseClass, context: "#{context}[:ignore_application_stop_failures]")
        Validators::AutoRollbackConfiguration.validate!(input[:auto_rollback_configuration], context: "#{context}[:auto_rollback_configuration]") unless input[:auto_rollback_configuration].nil?
        Hearth::Validator.validate!(input[:update_outdated_instances_only], ::TrueClass, ::FalseClass, context: "#{context}[:update_outdated_instances_only]")
        Validators::RollbackInfo.validate!(input[:rollback_info], context: "#{context}[:rollback_info]") unless input[:rollback_info].nil?
        Validators::DeploymentStyle.validate!(input[:deployment_style], context: "#{context}[:deployment_style]") unless input[:deployment_style].nil?
        Validators::TargetInstances.validate!(input[:target_instances], context: "#{context}[:target_instances]") unless input[:target_instances].nil?
        Hearth::Validator.validate!(input[:instance_termination_wait_time_started], ::TrueClass, ::FalseClass, context: "#{context}[:instance_termination_wait_time_started]")
        Validators::BlueGreenDeploymentConfiguration.validate!(input[:blue_green_deployment_configuration], context: "#{context}[:blue_green_deployment_configuration]") unless input[:blue_green_deployment_configuration].nil?
        Validators::LoadBalancerInfo.validate!(input[:load_balancer_info], context: "#{context}[:load_balancer_info]") unless input[:load_balancer_info].nil?
        Hearth::Validator.validate!(input[:additional_deployment_status_info], ::String, context: "#{context}[:additional_deployment_status_info]")
        Hearth::Validator.validate!(input[:file_exists_behavior], ::String, context: "#{context}[:file_exists_behavior]")
        Validators::DeploymentStatusMessageList.validate!(input[:deployment_status_messages], context: "#{context}[:deployment_status_messages]") unless input[:deployment_status_messages].nil?
        Hearth::Validator.validate!(input[:compute_platform], ::String, context: "#{context}[:compute_platform]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Validators::RelatedDeployments.validate!(input[:related_deployments], context: "#{context}[:related_deployments]") unless input[:related_deployments].nil?
      end
    end

    class DeploymentIsNotInReadyStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentIsNotInReadyStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentNotStartedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentNotStartedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentOverview
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentOverview, context: context)
        Hearth::Validator.validate!(input[:pending], ::Integer, context: "#{context}[:pending]")
        Hearth::Validator.validate!(input[:in_progress], ::Integer, context: "#{context}[:in_progress]")
        Hearth::Validator.validate!(input[:succeeded], ::Integer, context: "#{context}[:succeeded]")
        Hearth::Validator.validate!(input[:failed], ::Integer, context: "#{context}[:failed]")
        Hearth::Validator.validate!(input[:skipped], ::Integer, context: "#{context}[:skipped]")
        Hearth::Validator.validate!(input[:ready], ::Integer, context: "#{context}[:ready]")
      end
    end

    class DeploymentReadyOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentReadyOption, context: context)
        Hearth::Validator.validate!(input[:action_on_timeout], ::String, context: "#{context}[:action_on_timeout]")
        Hearth::Validator.validate!(input[:wait_time_in_minutes], ::Integer, context: "#{context}[:wait_time_in_minutes]")
      end
    end

    class DeploymentStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeploymentStatusMessageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeploymentStyle
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentStyle, context: context)
        Hearth::Validator.validate!(input[:deployment_type], ::String, context: "#{context}[:deployment_type]")
        Hearth::Validator.validate!(input[:deployment_option], ::String, context: "#{context}[:deployment_option]")
      end
    end

    class DeploymentTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentTarget, context: context)
        Hearth::Validator.validate!(input[:deployment_target_type], ::String, context: "#{context}[:deployment_target_type]")
        Validators::InstanceTarget.validate!(input[:instance_target], context: "#{context}[:instance_target]") unless input[:instance_target].nil?
        Validators::LambdaTarget.validate!(input[:lambda_target], context: "#{context}[:lambda_target]") unless input[:lambda_target].nil?
        Validators::ECSTarget.validate!(input[:ecs_target], context: "#{context}[:ecs_target]") unless input[:ecs_target].nil?
        Validators::CloudFormationTarget.validate!(input[:cloud_formation_target], context: "#{context}[:cloud_formation_target]") unless input[:cloud_formation_target].nil?
      end
    end

    class DeploymentTargetDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentTargetDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentTargetIdRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentTargetIdRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentTargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DeploymentTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeploymentTargetListSizeExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentTargetListSizeExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeploymentsInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DeploymentInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeploymentsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeregisterOnPremisesInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterOnPremisesInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
      end
    end

    class DeregisterOnPremisesInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterOnPremisesInstanceOutput, context: context)
      end
    end

    class DescriptionTooLongException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescriptionTooLongException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Diagnostics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Diagnostics, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:script_name], ::String, context: "#{context}[:script_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:log_tail], ::String, context: "#{context}[:log_tail]")
      end
    end

    class EC2TagFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2TagFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class EC2TagFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EC2TagFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EC2TagSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2TagSet, context: context)
        Validators::EC2TagSetList.validate!(input[:ec2_tag_set_list], context: "#{context}[:ec2_tag_set_list]") unless input[:ec2_tag_set_list].nil?
      end
    end

    class EC2TagSetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EC2TagFilterList.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ECSService
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ECSService, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
      end
    end

    class ECSServiceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ECSService.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ECSServiceMappingLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ECSServiceMappingLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ECSTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ECSTarget, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::LifecycleEventList.validate!(input[:lifecycle_events], context: "#{context}[:lifecycle_events]") unless input[:lifecycle_events].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ECSTaskSetList.validate!(input[:task_sets_info], context: "#{context}[:task_sets_info]") unless input[:task_sets_info].nil?
      end
    end

    class ECSTaskSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ECSTaskSet, context: context)
        Hearth::Validator.validate!(input[:identifer], ::String, context: "#{context}[:identifer]")
        Hearth::Validator.validate!(input[:desired_count], ::Integer, context: "#{context}[:desired_count]")
        Hearth::Validator.validate!(input[:pending_count], ::Integer, context: "#{context}[:pending_count]")
        Hearth::Validator.validate!(input[:running_count], ::Integer, context: "#{context}[:running_count]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:traffic_weight], ::Float, context: "#{context}[:traffic_weight]")
        Validators::TargetGroupInfo.validate!(input[:target_group], context: "#{context}[:target_group]") unless input[:target_group].nil?
        Hearth::Validator.validate!(input[:task_set_label], ::String, context: "#{context}[:task_set_label]")
      end
    end

    class ECSTaskSetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ECSTaskSet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ELBInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ELBInfo, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ELBInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ELBInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ErrorInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorInformation, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FilterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GenericRevisionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenericRevisionInfo, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::DeploymentGroupsList.validate!(input[:deployment_groups], context: "#{context}[:deployment_groups]") unless input[:deployment_groups].nil?
        Hearth::Validator.validate!(input[:first_used_time], ::Time, context: "#{context}[:first_used_time]")
        Hearth::Validator.validate!(input[:last_used_time], ::Time, context: "#{context}[:last_used_time]")
        Hearth::Validator.validate!(input[:register_time], ::Time, context: "#{context}[:register_time]")
      end
    end

    class GetApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
      end
    end

    class GetApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationOutput, context: context)
        Validators::ApplicationInfo.validate!(input[:application], context: "#{context}[:application]") unless input[:application].nil?
      end
    end

    class GetApplicationRevisionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationRevisionInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Validators::RevisionLocation.validate!(input[:revision], context: "#{context}[:revision]") unless input[:revision].nil?
      end
    end

    class GetApplicationRevisionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationRevisionOutput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Validators::RevisionLocation.validate!(input[:revision], context: "#{context}[:revision]") unless input[:revision].nil?
        Validators::GenericRevisionInfo.validate!(input[:revision_info], context: "#{context}[:revision_info]") unless input[:revision_info].nil?
      end
    end

    class GetDeploymentConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentConfigInput, context: context)
        Hearth::Validator.validate!(input[:deployment_config_name], ::String, context: "#{context}[:deployment_config_name]")
      end
    end

    class GetDeploymentConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentConfigOutput, context: context)
        Validators::DeploymentConfigInfo.validate!(input[:deployment_config_info], context: "#{context}[:deployment_config_info]") unless input[:deployment_config_info].nil?
      end
    end

    class GetDeploymentGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentGroupInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:deployment_group_name], ::String, context: "#{context}[:deployment_group_name]")
      end
    end

    class GetDeploymentGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentGroupOutput, context: context)
        Validators::DeploymentGroupInfo.validate!(input[:deployment_group_info], context: "#{context}[:deployment_group_info]") unless input[:deployment_group_info].nil?
      end
    end

    class GetDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
      end
    end

    class GetDeploymentInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentInstanceInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class GetDeploymentInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentInstanceOutput, context: context)
        Validators::InstanceSummary.validate!(input[:instance_summary], context: "#{context}[:instance_summary]") unless input[:instance_summary].nil?
      end
    end

    class GetDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentOutput, context: context)
        Validators::DeploymentInfo.validate!(input[:deployment_info], context: "#{context}[:deployment_info]") unless input[:deployment_info].nil?
      end
    end

    class GetDeploymentTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentTargetInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
      end
    end

    class GetDeploymentTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentTargetOutput, context: context)
        Validators::DeploymentTarget.validate!(input[:deployment_target], context: "#{context}[:deployment_target]") unless input[:deployment_target].nil?
      end
    end

    class GetOnPremisesInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOnPremisesInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
      end
    end

    class GetOnPremisesInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOnPremisesInstanceOutput, context: context)
        Validators::InstanceInfo.validate!(input[:instance_info], context: "#{context}[:instance_info]") unless input[:instance_info].nil?
      end
    end

    class GitHubAccountTokenDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GitHubAccountTokenDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GitHubAccountTokenNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GitHubAccountTokenNameRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GitHubAccountTokenNameRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GitHubLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GitHubLocation, context: context)
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
      end
    end

    class GreenFleetProvisioningOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GreenFleetProvisioningOption, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
      end
    end

    class IamArnRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IamArnRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IamSessionArnAlreadyRegisteredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IamSessionArnAlreadyRegisteredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IamUserArnAlreadyRegisteredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IamUserArnAlreadyRegisteredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IamUserArnRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IamUserArnRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InstanceDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InstanceIdRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceIdRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InstanceInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceInfo, context: context)
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
        Hearth::Validator.validate!(input[:iam_session_arn], ::String, context: "#{context}[:iam_session_arn]")
        Hearth::Validator.validate!(input[:iam_user_arn], ::String, context: "#{context}[:iam_user_arn]")
        Hearth::Validator.validate!(input[:instance_arn], ::String, context: "#{context}[:instance_arn]")
        Hearth::Validator.validate!(input[:register_time], ::Time, context: "#{context}[:register_time]")
        Hearth::Validator.validate!(input[:deregister_time], ::Time, context: "#{context}[:deregister_time]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class InstanceInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InstanceInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InstanceNameAlreadyRegisteredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceNameAlreadyRegisteredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InstanceNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceNameRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceNameRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InstanceNotRegisteredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceNotRegisteredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InstanceStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceSummary, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::LifecycleEventList.validate!(input[:lifecycle_events], context: "#{context}[:lifecycle_events]") unless input[:lifecycle_events].nil?
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
      end
    end

    class InstanceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InstanceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceTarget, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::LifecycleEventList.validate!(input[:lifecycle_events], context: "#{context}[:lifecycle_events]") unless input[:lifecycle_events].nil?
        Hearth::Validator.validate!(input[:instance_label], ::String, context: "#{context}[:instance_label]")
      end
    end

    class InstanceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstancesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InvalidAlarmConfigException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAlarmConfigException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidApplicationNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidApplicationNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAutoRollbackConfigException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAutoRollbackConfigException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAutoScalingGroupException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAutoScalingGroupException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidBlueGreenDeploymentConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidBlueGreenDeploymentConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidBucketNameFilterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidBucketNameFilterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidComputePlatformException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidComputePlatformException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDeployedStateFilterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeployedStateFilterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDeploymentConfigNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeploymentConfigNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDeploymentGroupNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeploymentGroupNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDeploymentIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeploymentIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDeploymentInstanceTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeploymentInstanceTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDeploymentStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeploymentStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDeploymentStyleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeploymentStyleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDeploymentTargetIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeploymentTargetIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDeploymentWaitTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeploymentWaitTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEC2TagCombinationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEC2TagCombinationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEC2TagException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEC2TagException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidECSServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidECSServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidExternalIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidExternalIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidFileExistsBehaviorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidFileExistsBehaviorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidGitHubAccountTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidGitHubAccountTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidGitHubAccountTokenNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidGitHubAccountTokenNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidIamSessionArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidIamSessionArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidIamUserArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidIamUserArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidIgnoreApplicationStopFailuresValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidIgnoreApplicationStopFailuresValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInstanceNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInstanceNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInstanceStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInstanceStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInstanceTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInstanceTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidKeyPrefixFilterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidKeyPrefixFilterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidLifecycleEventHookExecutionIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLifecycleEventHookExecutionIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidLifecycleEventHookExecutionStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLifecycleEventHookExecutionStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidLoadBalancerInfoException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLoadBalancerInfoException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidMinimumHealthyHostValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidMinimumHealthyHostValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOnPremisesTagCombinationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOnPremisesTagCombinationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRegistrationStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRegistrationStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRevisionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRevisionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRoleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRoleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSortByException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSortByException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSortOrderException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSortOrderException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTagException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTagException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTagFilterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTagFilterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTagsToAddException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTagsToAddException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTargetFilterNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTargetFilterNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTargetGroupPairException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTargetGroupPairException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTargetInstancesException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTargetInstancesException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTimeRangeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTimeRangeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTrafficRoutingConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTrafficRoutingConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTriggerConfigException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTriggerConfigException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidUpdateOutdatedInstancesOnlyValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidUpdateOutdatedInstancesOnlyValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LambdaFunctionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunctionInfo, context: context)
        Hearth::Validator.validate!(input[:function_name], ::String, context: "#{context}[:function_name]")
        Hearth::Validator.validate!(input[:function_alias], ::String, context: "#{context}[:function_alias]")
        Hearth::Validator.validate!(input[:current_version], ::String, context: "#{context}[:current_version]")
        Hearth::Validator.validate!(input[:target_version], ::String, context: "#{context}[:target_version]")
        Hearth::Validator.validate!(input[:target_version_weight], ::Float, context: "#{context}[:target_version_weight]")
      end
    end

    class LambdaTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaTarget, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:target_arn], ::String, context: "#{context}[:target_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::LifecycleEventList.validate!(input[:lifecycle_events], context: "#{context}[:lifecycle_events]") unless input[:lifecycle_events].nil?
        Validators::LambdaFunctionInfo.validate!(input[:lambda_function_info], context: "#{context}[:lambda_function_info]") unless input[:lambda_function_info].nil?
      end
    end

    class LastDeploymentInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LastDeploymentInfo, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:create_time], ::Time, context: "#{context}[:create_time]")
      end
    end

    class LifecycleEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecycleEvent, context: context)
        Hearth::Validator.validate!(input[:lifecycle_event_name], ::String, context: "#{context}[:lifecycle_event_name]")
        Validators::Diagnostics.validate!(input[:diagnostics], context: "#{context}[:diagnostics]") unless input[:diagnostics].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class LifecycleEventAlreadyCompletedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecycleEventAlreadyCompletedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LifecycleEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LifecycleEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LifecycleHookLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecycleHookLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListApplicationRevisionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationRevisionsInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:deployed], ::String, context: "#{context}[:deployed]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationRevisionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationRevisionsOutput, context: context)
        Validators::RevisionLocationList.validate!(input[:revisions], context: "#{context}[:revisions]") unless input[:revisions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsOutput, context: context)
        Validators::ApplicationsList.validate!(input[:applications], context: "#{context}[:applications]") unless input[:applications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentConfigsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentConfigsOutput, context: context)
        Validators::DeploymentConfigsList.validate!(input[:deployment_configs_list], context: "#{context}[:deployment_configs_list]") unless input[:deployment_configs_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentGroupsInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Validators::DeploymentGroupsList.validate!(input[:deployment_groups], context: "#{context}[:deployment_groups]") unless input[:deployment_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentInstancesInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::InstanceStatusList.validate!(input[:instance_status_filter], context: "#{context}[:instance_status_filter]") unless input[:instance_status_filter].nil?
        Validators::InstanceTypeList.validate!(input[:instance_type_filter], context: "#{context}[:instance_type_filter]") unless input[:instance_type_filter].nil?
      end
    end

    class ListDeploymentInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentInstancesOutput, context: context)
        Validators::InstancesList.validate!(input[:instances_list], context: "#{context}[:instances_list]") unless input[:instances_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentTargetsInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::TargetFilters.validate!(input[:target_filters], context: "#{context}[:target_filters]") unless input[:target_filters].nil?
      end
    end

    class ListDeploymentTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentTargetsOutput, context: context)
        Validators::TargetIdList.validate!(input[:target_ids], context: "#{context}[:target_ids]") unless input[:target_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentsInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:deployment_group_name], ::String, context: "#{context}[:deployment_group_name]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Validators::DeploymentStatusList.validate!(input[:include_only_statuses], context: "#{context}[:include_only_statuses]") unless input[:include_only_statuses].nil?
        Validators::TimeRange.validate!(input[:create_time_range], context: "#{context}[:create_time_range]") unless input[:create_time_range].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentsOutput, context: context)
        Validators::DeploymentsList.validate!(input[:deployments], context: "#{context}[:deployments]") unless input[:deployments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGitHubAccountTokenNamesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGitHubAccountTokenNamesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGitHubAccountTokenNamesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGitHubAccountTokenNamesOutput, context: context)
        Validators::GitHubAccountTokenNameList.validate!(input[:token_name_list], context: "#{context}[:token_name_list]") unless input[:token_name_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOnPremisesInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOnPremisesInstancesInput, context: context)
        Hearth::Validator.validate!(input[:registration_status], ::String, context: "#{context}[:registration_status]")
        Validators::TagFilterList.validate!(input[:tag_filters], context: "#{context}[:tag_filters]") unless input[:tag_filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOnPremisesInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOnPremisesInstancesOutput, context: context)
        Validators::InstanceNameList.validate!(input[:instance_names], context: "#{context}[:instance_names]") unless input[:instance_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListenerArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LoadBalancerInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoadBalancerInfo, context: context)
        Validators::ELBInfoList.validate!(input[:elb_info_list], context: "#{context}[:elb_info_list]") unless input[:elb_info_list].nil?
        Validators::TargetGroupInfoList.validate!(input[:target_group_info_list], context: "#{context}[:target_group_info_list]") unless input[:target_group_info_list].nil?
        Validators::TargetGroupPairInfoList.validate!(input[:target_group_pair_info_list], context: "#{context}[:target_group_pair_info_list]") unless input[:target_group_pair_info_list].nil?
      end
    end

    class MinimumHealthyHosts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MinimumHealthyHosts, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
      end
    end

    class MultipleIamArnsProvidedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultipleIamArnsProvidedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OnPremisesTagSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnPremisesTagSet, context: context)
        Validators::OnPremisesTagSetList.validate!(input[:on_premises_tag_set_list], context: "#{context}[:on_premises_tag_set_list]") unless input[:on_premises_tag_set_list].nil?
      end
    end

    class OnPremisesTagSetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TagFilterList.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OperationNotSupportedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OperationNotSupportedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PutLifecycleEventHookExecutionStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLifecycleEventHookExecutionStatusInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:lifecycle_event_hook_execution_id], ::String, context: "#{context}[:lifecycle_event_hook_execution_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class PutLifecycleEventHookExecutionStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutLifecycleEventHookExecutionStatusOutput, context: context)
        Hearth::Validator.validate!(input[:lifecycle_event_hook_execution_id], ::String, context: "#{context}[:lifecycle_event_hook_execution_id]")
      end
    end

    class RawString
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RawString, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:sha256], ::String, context: "#{context}[:sha256]")
      end
    end

    class RegisterApplicationRevisionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterApplicationRevisionInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::RevisionLocation.validate!(input[:revision], context: "#{context}[:revision]") unless input[:revision].nil?
      end
    end

    class RegisterApplicationRevisionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterApplicationRevisionOutput, context: context)
      end
    end

    class RegisterOnPremisesInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterOnPremisesInstanceInput, context: context)
        Hearth::Validator.validate!(input[:instance_name], ::String, context: "#{context}[:instance_name]")
        Hearth::Validator.validate!(input[:iam_session_arn], ::String, context: "#{context}[:iam_session_arn]")
        Hearth::Validator.validate!(input[:iam_user_arn], ::String, context: "#{context}[:iam_user_arn]")
      end
    end

    class RegisterOnPremisesInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterOnPremisesInstanceOutput, context: context)
      end
    end

    class RelatedDeployments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelatedDeployments, context: context)
        Hearth::Validator.validate!(input[:auto_update_outdated_instances_root_deployment_id], ::String, context: "#{context}[:auto_update_outdated_instances_root_deployment_id]")
        Validators::DeploymentsList.validate!(input[:auto_update_outdated_instances_deployment_ids], context: "#{context}[:auto_update_outdated_instances_deployment_ids]") unless input[:auto_update_outdated_instances_deployment_ids].nil?
      end
    end

    class RemoveTagsFromOnPremisesInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromOnPremisesInstancesInput, context: context)
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::InstanceNameList.validate!(input[:instance_names], context: "#{context}[:instance_names]") unless input[:instance_names].nil?
      end
    end

    class RemoveTagsFromOnPremisesInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromOnPremisesInstancesOutput, context: context)
      end
    end

    class ResourceArnRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceArnRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RevisionDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevisionDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RevisionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevisionInfo, context: context)
        Validators::RevisionLocation.validate!(input[:revision_location], context: "#{context}[:revision_location]") unless input[:revision_location].nil?
        Validators::GenericRevisionInfo.validate!(input[:generic_revision_info], context: "#{context}[:generic_revision_info]") unless input[:generic_revision_info].nil?
      end
    end

    class RevisionInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RevisionInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RevisionLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevisionLocation, context: context)
        Hearth::Validator.validate!(input[:revision_type], ::String, context: "#{context}[:revision_type]")
        Validators::S3Location.validate!(input[:s3_location], context: "#{context}[:s3_location]") unless input[:s3_location].nil?
        Validators::GitHubLocation.validate!(input[:git_hub_location], context: "#{context}[:git_hub_location]") unless input[:git_hub_location].nil?
        Validators::RawString.validate!(input[:string], context: "#{context}[:string]") unless input[:string].nil?
        Validators::AppSpecContent.validate!(input[:app_spec_content], context: "#{context}[:app_spec_content]") unless input[:app_spec_content].nil?
      end
    end

    class RevisionLocationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RevisionLocation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RevisionRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevisionRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RoleRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoleRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RollbackInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RollbackInfo, context: context)
        Hearth::Validator.validate!(input[:rollback_deployment_id], ::String, context: "#{context}[:rollback_deployment_id]")
        Hearth::Validator.validate!(input[:rollback_triggering_deployment_id], ::String, context: "#{context}[:rollback_triggering_deployment_id]")
        Hearth::Validator.validate!(input[:rollback_message], ::String, context: "#{context}[:rollback_message]")
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:bundle_type], ::String, context: "#{context}[:bundle_type]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:e_tag], ::String, context: "#{context}[:e_tag]")
      end
    end

    class SkipWaitTimeForInstanceTerminationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SkipWaitTimeForInstanceTerminationInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
      end
    end

    class SkipWaitTimeForInstanceTerminationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SkipWaitTimeForInstanceTerminationOutput, context: context)
      end
    end

    class StopDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:auto_rollback_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:auto_rollback_enabled]")
      end
    end

    class StopDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagFilter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class TagFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TagFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class TagLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class TagRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class TagSetListLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagSetListLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TargetFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::FilterValueList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class TargetGroupInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetGroupInfo, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class TargetGroupInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TargetGroupInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetGroupPairInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetGroupPairInfo, context: context)
        Validators::TargetGroupInfoList.validate!(input[:target_groups], context: "#{context}[:target_groups]") unless input[:target_groups].nil?
        Validators::TrafficRoute.validate!(input[:prod_traffic_route], context: "#{context}[:prod_traffic_route]") unless input[:prod_traffic_route].nil?
        Validators::TrafficRoute.validate!(input[:test_traffic_route], context: "#{context}[:test_traffic_route]") unless input[:test_traffic_route].nil?
      end
    end

    class TargetGroupPairInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TargetGroupPairInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TargetInstances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetInstances, context: context)
        Validators::EC2TagFilterList.validate!(input[:tag_filters], context: "#{context}[:tag_filters]") unless input[:tag_filters].nil?
        Validators::AutoScalingGroupNameList.validate!(input[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless input[:auto_scaling_groups].nil?
        Validators::EC2TagSet.validate!(input[:ec2_tag_set], context: "#{context}[:ec2_tag_set]") unless input[:ec2_tag_set].nil?
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TimeBasedCanary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeBasedCanary, context: context)
        Hearth::Validator.validate!(input[:canary_percentage], ::Integer, context: "#{context}[:canary_percentage]")
        Hearth::Validator.validate!(input[:canary_interval], ::Integer, context: "#{context}[:canary_interval]")
      end
    end

    class TimeBasedLinear
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeBasedLinear, context: context)
        Hearth::Validator.validate!(input[:linear_percentage], ::Integer, context: "#{context}[:linear_percentage]")
        Hearth::Validator.validate!(input[:linear_interval], ::Integer, context: "#{context}[:linear_interval]")
      end
    end

    class TimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeRange, context: context)
        Hearth::Validator.validate!(input[:start], ::Time, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:end], ::Time, context: "#{context}[:end]")
      end
    end

    class TrafficRoute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrafficRoute, context: context)
        Validators::ListenerArnList.validate!(input[:listener_arns], context: "#{context}[:listener_arns]") unless input[:listener_arns].nil?
      end
    end

    class TrafficRoutingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrafficRoutingConfig, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::TimeBasedCanary.validate!(input[:time_based_canary], context: "#{context}[:time_based_canary]") unless input[:time_based_canary].nil?
        Validators::TimeBasedLinear.validate!(input[:time_based_linear], context: "#{context}[:time_based_linear]") unless input[:time_based_linear].nil?
      end
    end

    class TriggerConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TriggerConfig, context: context)
        Hearth::Validator.validate!(input[:trigger_name], ::String, context: "#{context}[:trigger_name]")
        Hearth::Validator.validate!(input[:trigger_target_arn], ::String, context: "#{context}[:trigger_target_arn]")
        Validators::TriggerEventTypeList.validate!(input[:trigger_events], context: "#{context}[:trigger_events]") unless input[:trigger_events].nil?
      end
    end

    class TriggerConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TriggerConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TriggerEventTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TriggerTargetsLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TriggerTargetsLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedActionForDeploymentTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedActionForDeploymentTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
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

    class UpdateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:new_application_name], ::String, context: "#{context}[:new_application_name]")
      end
    end

    class UpdateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationOutput, context: context)
      end
    end

    class UpdateDeploymentGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeploymentGroupInput, context: context)
        Hearth::Validator.validate!(input[:application_name], ::String, context: "#{context}[:application_name]")
        Hearth::Validator.validate!(input[:current_deployment_group_name], ::String, context: "#{context}[:current_deployment_group_name]")
        Hearth::Validator.validate!(input[:new_deployment_group_name], ::String, context: "#{context}[:new_deployment_group_name]")
        Hearth::Validator.validate!(input[:deployment_config_name], ::String, context: "#{context}[:deployment_config_name]")
        Validators::EC2TagFilterList.validate!(input[:ec2_tag_filters], context: "#{context}[:ec2_tag_filters]") unless input[:ec2_tag_filters].nil?
        Validators::TagFilterList.validate!(input[:on_premises_instance_tag_filters], context: "#{context}[:on_premises_instance_tag_filters]") unless input[:on_premises_instance_tag_filters].nil?
        Validators::AutoScalingGroupNameList.validate!(input[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless input[:auto_scaling_groups].nil?
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        Validators::TriggerConfigList.validate!(input[:trigger_configurations], context: "#{context}[:trigger_configurations]") unless input[:trigger_configurations].nil?
        Validators::AlarmConfiguration.validate!(input[:alarm_configuration], context: "#{context}[:alarm_configuration]") unless input[:alarm_configuration].nil?
        Validators::AutoRollbackConfiguration.validate!(input[:auto_rollback_configuration], context: "#{context}[:auto_rollback_configuration]") unless input[:auto_rollback_configuration].nil?
        Hearth::Validator.validate!(input[:outdated_instances_strategy], ::String, context: "#{context}[:outdated_instances_strategy]")
        Validators::DeploymentStyle.validate!(input[:deployment_style], context: "#{context}[:deployment_style]") unless input[:deployment_style].nil?
        Validators::BlueGreenDeploymentConfiguration.validate!(input[:blue_green_deployment_configuration], context: "#{context}[:blue_green_deployment_configuration]") unless input[:blue_green_deployment_configuration].nil?
        Validators::LoadBalancerInfo.validate!(input[:load_balancer_info], context: "#{context}[:load_balancer_info]") unless input[:load_balancer_info].nil?
        Validators::EC2TagSet.validate!(input[:ec2_tag_set], context: "#{context}[:ec2_tag_set]") unless input[:ec2_tag_set].nil?
        Validators::ECSServiceList.validate!(input[:ecs_services], context: "#{context}[:ecs_services]") unless input[:ecs_services].nil?
        Validators::OnPremisesTagSet.validate!(input[:on_premises_tag_set], context: "#{context}[:on_premises_tag_set]") unless input[:on_premises_tag_set].nil?
      end
    end

    class UpdateDeploymentGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeploymentGroupOutput, context: context)
        Validators::AutoScalingGroupList.validate!(input[:hooks_not_cleaned_up], context: "#{context}[:hooks_not_cleaned_up]") unless input[:hooks_not_cleaned_up].nil?
      end
    end

  end
end
