# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CodeDeploy
  module Params

    module AddTagsToOnPremisesInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToOnPremisesInstancesInput, context: context)
        type = Types::AddTagsToOnPremisesInstancesInput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.instance_names = InstanceNameList.build(params[:instance_names], context: "#{context}[:instance_names]") unless params[:instance_names].nil?
        type
      end
    end

    module AddTagsToOnPremisesInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToOnPremisesInstancesOutput, context: context)
        type = Types::AddTagsToOnPremisesInstancesOutput.new
        type
      end
    end

    module Alarm
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Alarm, context: context)
        type = Types::Alarm.new
        type.name = params[:name]
        type
      end
    end

    module AlarmConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlarmConfiguration, context: context)
        type = Types::AlarmConfiguration.new
        type.enabled = params[:enabled]
        type.ignore_poll_alarm_failure = params[:ignore_poll_alarm_failure]
        type.alarms = AlarmList.build(params[:alarms], context: "#{context}[:alarms]") unless params[:alarms].nil?
        type
      end
    end

    module AlarmList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Alarm.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlarmsLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlarmsLimitExceededException, context: context)
        type = Types::AlarmsLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module AppSpecContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppSpecContent, context: context)
        type = Types::AppSpecContent.new
        type.content = params[:content]
        type.sha256 = params[:sha256]
        type
      end
    end

    module ApplicationAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationAlreadyExistsException, context: context)
        type = Types::ApplicationAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ApplicationDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationDoesNotExistException, context: context)
        type = Types::ApplicationDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module ApplicationInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationInfo, context: context)
        type = Types::ApplicationInfo.new
        type.application_id = params[:application_id]
        type.application_name = params[:application_name]
        type.create_time = params[:create_time]
        type.linked_to_git_hub = params[:linked_to_git_hub]
        type.git_hub_account_name = params[:git_hub_account_name]
        type.compute_platform = params[:compute_platform]
        type
      end
    end

    module ApplicationLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationLimitExceededException, context: context)
        type = Types::ApplicationLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ApplicationNameRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationNameRequiredException, context: context)
        type = Types::ApplicationNameRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module ApplicationsInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ArnNotSupportedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArnNotSupportedException, context: context)
        type = Types::ArnNotSupportedException.new
        type.message = params[:message]
        type
      end
    end

    module AutoRollbackConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoRollbackConfiguration, context: context)
        type = Types::AutoRollbackConfiguration.new
        type.enabled = params[:enabled]
        type.events = AutoRollbackEventsList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module AutoRollbackEventsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AutoScalingGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoScalingGroup, context: context)
        type = Types::AutoScalingGroup.new
        type.name = params[:name]
        type.hook = params[:hook]
        type
      end
    end

    module AutoScalingGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoScalingGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutoScalingGroupNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BatchGetApplicationRevisionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetApplicationRevisionsInput, context: context)
        type = Types::BatchGetApplicationRevisionsInput.new
        type.application_name = params[:application_name]
        type.revisions = RevisionLocationList.build(params[:revisions], context: "#{context}[:revisions]") unless params[:revisions].nil?
        type
      end
    end

    module BatchGetApplicationRevisionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetApplicationRevisionsOutput, context: context)
        type = Types::BatchGetApplicationRevisionsOutput.new
        type.application_name = params[:application_name]
        type.error_message = params[:error_message]
        type.revisions = RevisionInfoList.build(params[:revisions], context: "#{context}[:revisions]") unless params[:revisions].nil?
        type
      end
    end

    module BatchGetApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetApplicationsInput, context: context)
        type = Types::BatchGetApplicationsInput.new
        type.application_names = ApplicationsList.build(params[:application_names], context: "#{context}[:application_names]") unless params[:application_names].nil?
        type
      end
    end

    module BatchGetApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetApplicationsOutput, context: context)
        type = Types::BatchGetApplicationsOutput.new
        type.applications_info = ApplicationsInfoList.build(params[:applications_info], context: "#{context}[:applications_info]") unless params[:applications_info].nil?
        type
      end
    end

    module BatchGetDeploymentGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDeploymentGroupsInput, context: context)
        type = Types::BatchGetDeploymentGroupsInput.new
        type.application_name = params[:application_name]
        type.deployment_group_names = DeploymentGroupsList.build(params[:deployment_group_names], context: "#{context}[:deployment_group_names]") unless params[:deployment_group_names].nil?
        type
      end
    end

    module BatchGetDeploymentGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDeploymentGroupsOutput, context: context)
        type = Types::BatchGetDeploymentGroupsOutput.new
        type.deployment_groups_info = DeploymentGroupInfoList.build(params[:deployment_groups_info], context: "#{context}[:deployment_groups_info]") unless params[:deployment_groups_info].nil?
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchGetDeploymentInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDeploymentInstancesInput, context: context)
        type = Types::BatchGetDeploymentInstancesInput.new
        type.deployment_id = params[:deployment_id]
        type.instance_ids = InstancesList.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type
      end
    end

    module BatchGetDeploymentInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDeploymentInstancesOutput, context: context)
        type = Types::BatchGetDeploymentInstancesOutput.new
        type.instances_summary = InstanceSummaryList.build(params[:instances_summary], context: "#{context}[:instances_summary]") unless params[:instances_summary].nil?
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchGetDeploymentTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDeploymentTargetsInput, context: context)
        type = Types::BatchGetDeploymentTargetsInput.new
        type.deployment_id = params[:deployment_id]
        type.target_ids = TargetIdList.build(params[:target_ids], context: "#{context}[:target_ids]") unless params[:target_ids].nil?
        type
      end
    end

    module BatchGetDeploymentTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDeploymentTargetsOutput, context: context)
        type = Types::BatchGetDeploymentTargetsOutput.new
        type.deployment_targets = DeploymentTargetList.build(params[:deployment_targets], context: "#{context}[:deployment_targets]") unless params[:deployment_targets].nil?
        type
      end
    end

    module BatchGetDeploymentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDeploymentsInput, context: context)
        type = Types::BatchGetDeploymentsInput.new
        type.deployment_ids = DeploymentsList.build(params[:deployment_ids], context: "#{context}[:deployment_ids]") unless params[:deployment_ids].nil?
        type
      end
    end

    module BatchGetDeploymentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDeploymentsOutput, context: context)
        type = Types::BatchGetDeploymentsOutput.new
        type.deployments_info = DeploymentsInfoList.build(params[:deployments_info], context: "#{context}[:deployments_info]") unless params[:deployments_info].nil?
        type
      end
    end

    module BatchGetOnPremisesInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetOnPremisesInstancesInput, context: context)
        type = Types::BatchGetOnPremisesInstancesInput.new
        type.instance_names = InstanceNameList.build(params[:instance_names], context: "#{context}[:instance_names]") unless params[:instance_names].nil?
        type
      end
    end

    module BatchGetOnPremisesInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetOnPremisesInstancesOutput, context: context)
        type = Types::BatchGetOnPremisesInstancesOutput.new
        type.instance_infos = InstanceInfoList.build(params[:instance_infos], context: "#{context}[:instance_infos]") unless params[:instance_infos].nil?
        type
      end
    end

    module BatchLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchLimitExceededException, context: context)
        type = Types::BatchLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module BlueGreenDeploymentConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlueGreenDeploymentConfiguration, context: context)
        type = Types::BlueGreenDeploymentConfiguration.new
        type.terminate_blue_instances_on_deployment_success = BlueInstanceTerminationOption.build(params[:terminate_blue_instances_on_deployment_success], context: "#{context}[:terminate_blue_instances_on_deployment_success]") unless params[:terminate_blue_instances_on_deployment_success].nil?
        type.deployment_ready_option = DeploymentReadyOption.build(params[:deployment_ready_option], context: "#{context}[:deployment_ready_option]") unless params[:deployment_ready_option].nil?
        type.green_fleet_provisioning_option = GreenFleetProvisioningOption.build(params[:green_fleet_provisioning_option], context: "#{context}[:green_fleet_provisioning_option]") unless params[:green_fleet_provisioning_option].nil?
        type
      end
    end

    module BlueInstanceTerminationOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlueInstanceTerminationOption, context: context)
        type = Types::BlueInstanceTerminationOption.new
        type.action = params[:action]
        type.termination_wait_time_in_minutes = params[:termination_wait_time_in_minutes]
        type
      end
    end

    module BucketNameFilterRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BucketNameFilterRequiredException, context: context)
        type = Types::BucketNameFilterRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module CloudFormationTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudFormationTarget, context: context)
        type = Types::CloudFormationTarget.new
        type.deployment_id = params[:deployment_id]
        type.target_id = params[:target_id]
        type.last_updated_at = params[:last_updated_at]
        type.lifecycle_events = LifecycleEventList.build(params[:lifecycle_events], context: "#{context}[:lifecycle_events]") unless params[:lifecycle_events].nil?
        type.status = params[:status]
        type.resource_type = params[:resource_type]
        type.target_version_weight = params[:target_version_weight]
        type
      end
    end

    module ContinueDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContinueDeploymentInput, context: context)
        type = Types::ContinueDeploymentInput.new
        type.deployment_id = params[:deployment_id]
        type.deployment_wait_type = params[:deployment_wait_type]
        type
      end
    end

    module ContinueDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContinueDeploymentOutput, context: context)
        type = Types::ContinueDeploymentOutput.new
        type
      end
    end

    module CreateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationInput, context: context)
        type = Types::CreateApplicationInput.new
        type.application_name = params[:application_name]
        type.compute_platform = params[:compute_platform]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationOutput, context: context)
        type = Types::CreateApplicationOutput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module CreateDeploymentConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentConfigInput, context: context)
        type = Types::CreateDeploymentConfigInput.new
        type.deployment_config_name = params[:deployment_config_name]
        type.minimum_healthy_hosts = MinimumHealthyHosts.build(params[:minimum_healthy_hosts], context: "#{context}[:minimum_healthy_hosts]") unless params[:minimum_healthy_hosts].nil?
        type.traffic_routing_config = TrafficRoutingConfig.build(params[:traffic_routing_config], context: "#{context}[:traffic_routing_config]") unless params[:traffic_routing_config].nil?
        type.compute_platform = params[:compute_platform]
        type
      end
    end

    module CreateDeploymentConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentConfigOutput, context: context)
        type = Types::CreateDeploymentConfigOutput.new
        type.deployment_config_id = params[:deployment_config_id]
        type
      end
    end

    module CreateDeploymentGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentGroupInput, context: context)
        type = Types::CreateDeploymentGroupInput.new
        type.application_name = params[:application_name]
        type.deployment_group_name = params[:deployment_group_name]
        type.deployment_config_name = params[:deployment_config_name]
        type.ec2_tag_filters = EC2TagFilterList.build(params[:ec2_tag_filters], context: "#{context}[:ec2_tag_filters]") unless params[:ec2_tag_filters].nil?
        type.on_premises_instance_tag_filters = TagFilterList.build(params[:on_premises_instance_tag_filters], context: "#{context}[:on_premises_instance_tag_filters]") unless params[:on_premises_instance_tag_filters].nil?
        type.auto_scaling_groups = AutoScalingGroupNameList.build(params[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless params[:auto_scaling_groups].nil?
        type.service_role_arn = params[:service_role_arn]
        type.trigger_configurations = TriggerConfigList.build(params[:trigger_configurations], context: "#{context}[:trigger_configurations]") unless params[:trigger_configurations].nil?
        type.alarm_configuration = AlarmConfiguration.build(params[:alarm_configuration], context: "#{context}[:alarm_configuration]") unless params[:alarm_configuration].nil?
        type.auto_rollback_configuration = AutoRollbackConfiguration.build(params[:auto_rollback_configuration], context: "#{context}[:auto_rollback_configuration]") unless params[:auto_rollback_configuration].nil?
        type.outdated_instances_strategy = params[:outdated_instances_strategy]
        type.deployment_style = DeploymentStyle.build(params[:deployment_style], context: "#{context}[:deployment_style]") unless params[:deployment_style].nil?
        type.blue_green_deployment_configuration = BlueGreenDeploymentConfiguration.build(params[:blue_green_deployment_configuration], context: "#{context}[:blue_green_deployment_configuration]") unless params[:blue_green_deployment_configuration].nil?
        type.load_balancer_info = LoadBalancerInfo.build(params[:load_balancer_info], context: "#{context}[:load_balancer_info]") unless params[:load_balancer_info].nil?
        type.ec2_tag_set = EC2TagSet.build(params[:ec2_tag_set], context: "#{context}[:ec2_tag_set]") unless params[:ec2_tag_set].nil?
        type.ecs_services = ECSServiceList.build(params[:ecs_services], context: "#{context}[:ecs_services]") unless params[:ecs_services].nil?
        type.on_premises_tag_set = OnPremisesTagSet.build(params[:on_premises_tag_set], context: "#{context}[:on_premises_tag_set]") unless params[:on_premises_tag_set].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDeploymentGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentGroupOutput, context: context)
        type = Types::CreateDeploymentGroupOutput.new
        type.deployment_group_id = params[:deployment_group_id]
        type
      end
    end

    module CreateDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentInput, context: context)
        type = Types::CreateDeploymentInput.new
        type.application_name = params[:application_name]
        type.deployment_group_name = params[:deployment_group_name]
        type.revision = RevisionLocation.build(params[:revision], context: "#{context}[:revision]") unless params[:revision].nil?
        type.deployment_config_name = params[:deployment_config_name]
        type.description = params[:description]
        type.ignore_application_stop_failures = params[:ignore_application_stop_failures]
        type.target_instances = TargetInstances.build(params[:target_instances], context: "#{context}[:target_instances]") unless params[:target_instances].nil?
        type.auto_rollback_configuration = AutoRollbackConfiguration.build(params[:auto_rollback_configuration], context: "#{context}[:auto_rollback_configuration]") unless params[:auto_rollback_configuration].nil?
        type.update_outdated_instances_only = params[:update_outdated_instances_only]
        type.file_exists_behavior = params[:file_exists_behavior]
        type
      end
    end

    module CreateDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentOutput, context: context)
        type = Types::CreateDeploymentOutput.new
        type.deployment_id = params[:deployment_id]
        type
      end
    end

    module DeleteApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationInput, context: context)
        type = Types::DeleteApplicationInput.new
        type.application_name = params[:application_name]
        type
      end
    end

    module DeleteApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationOutput, context: context)
        type = Types::DeleteApplicationOutput.new
        type
      end
    end

    module DeleteDeploymentConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeploymentConfigInput, context: context)
        type = Types::DeleteDeploymentConfigInput.new
        type.deployment_config_name = params[:deployment_config_name]
        type
      end
    end

    module DeleteDeploymentConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeploymentConfigOutput, context: context)
        type = Types::DeleteDeploymentConfigOutput.new
        type
      end
    end

    module DeleteDeploymentGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeploymentGroupInput, context: context)
        type = Types::DeleteDeploymentGroupInput.new
        type.application_name = params[:application_name]
        type.deployment_group_name = params[:deployment_group_name]
        type
      end
    end

    module DeleteDeploymentGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeploymentGroupOutput, context: context)
        type = Types::DeleteDeploymentGroupOutput.new
        type.hooks_not_cleaned_up = AutoScalingGroupList.build(params[:hooks_not_cleaned_up], context: "#{context}[:hooks_not_cleaned_up]") unless params[:hooks_not_cleaned_up].nil?
        type
      end
    end

    module DeleteGitHubAccountTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGitHubAccountTokenInput, context: context)
        type = Types::DeleteGitHubAccountTokenInput.new
        type.token_name = params[:token_name]
        type
      end
    end

    module DeleteGitHubAccountTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGitHubAccountTokenOutput, context: context)
        type = Types::DeleteGitHubAccountTokenOutput.new
        type.token_name = params[:token_name]
        type
      end
    end

    module DeleteResourcesByExternalIdInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcesByExternalIdInput, context: context)
        type = Types::DeleteResourcesByExternalIdInput.new
        type.external_id = params[:external_id]
        type
      end
    end

    module DeleteResourcesByExternalIdOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcesByExternalIdOutput, context: context)
        type = Types::DeleteResourcesByExternalIdOutput.new
        type
      end
    end

    module DeploymentAlreadyCompletedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentAlreadyCompletedException, context: context)
        type = Types::DeploymentAlreadyCompletedException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentConfigAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentConfigAlreadyExistsException, context: context)
        type = Types::DeploymentConfigAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentConfigDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentConfigDoesNotExistException, context: context)
        type = Types::DeploymentConfigDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentConfigInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentConfigInUseException, context: context)
        type = Types::DeploymentConfigInUseException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentConfigInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentConfigInfo, context: context)
        type = Types::DeploymentConfigInfo.new
        type.deployment_config_id = params[:deployment_config_id]
        type.deployment_config_name = params[:deployment_config_name]
        type.minimum_healthy_hosts = MinimumHealthyHosts.build(params[:minimum_healthy_hosts], context: "#{context}[:minimum_healthy_hosts]") unless params[:minimum_healthy_hosts].nil?
        type.create_time = params[:create_time]
        type.compute_platform = params[:compute_platform]
        type.traffic_routing_config = TrafficRoutingConfig.build(params[:traffic_routing_config], context: "#{context}[:traffic_routing_config]") unless params[:traffic_routing_config].nil?
        type
      end
    end

    module DeploymentConfigLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentConfigLimitExceededException, context: context)
        type = Types::DeploymentConfigLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentConfigNameRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentConfigNameRequiredException, context: context)
        type = Types::DeploymentConfigNameRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentConfigsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeploymentDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentDoesNotExistException, context: context)
        type = Types::DeploymentDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentGroupAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentGroupAlreadyExistsException, context: context)
        type = Types::DeploymentGroupAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentGroupDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentGroupDoesNotExistException, context: context)
        type = Types::DeploymentGroupDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentGroupInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentGroupInfo, context: context)
        type = Types::DeploymentGroupInfo.new
        type.application_name = params[:application_name]
        type.deployment_group_id = params[:deployment_group_id]
        type.deployment_group_name = params[:deployment_group_name]
        type.deployment_config_name = params[:deployment_config_name]
        type.ec2_tag_filters = EC2TagFilterList.build(params[:ec2_tag_filters], context: "#{context}[:ec2_tag_filters]") unless params[:ec2_tag_filters].nil?
        type.on_premises_instance_tag_filters = TagFilterList.build(params[:on_premises_instance_tag_filters], context: "#{context}[:on_premises_instance_tag_filters]") unless params[:on_premises_instance_tag_filters].nil?
        type.auto_scaling_groups = AutoScalingGroupList.build(params[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless params[:auto_scaling_groups].nil?
        type.service_role_arn = params[:service_role_arn]
        type.target_revision = RevisionLocation.build(params[:target_revision], context: "#{context}[:target_revision]") unless params[:target_revision].nil?
        type.trigger_configurations = TriggerConfigList.build(params[:trigger_configurations], context: "#{context}[:trigger_configurations]") unless params[:trigger_configurations].nil?
        type.alarm_configuration = AlarmConfiguration.build(params[:alarm_configuration], context: "#{context}[:alarm_configuration]") unless params[:alarm_configuration].nil?
        type.auto_rollback_configuration = AutoRollbackConfiguration.build(params[:auto_rollback_configuration], context: "#{context}[:auto_rollback_configuration]") unless params[:auto_rollback_configuration].nil?
        type.deployment_style = DeploymentStyle.build(params[:deployment_style], context: "#{context}[:deployment_style]") unless params[:deployment_style].nil?
        type.outdated_instances_strategy = params[:outdated_instances_strategy]
        type.blue_green_deployment_configuration = BlueGreenDeploymentConfiguration.build(params[:blue_green_deployment_configuration], context: "#{context}[:blue_green_deployment_configuration]") unless params[:blue_green_deployment_configuration].nil?
        type.load_balancer_info = LoadBalancerInfo.build(params[:load_balancer_info], context: "#{context}[:load_balancer_info]") unless params[:load_balancer_info].nil?
        type.last_successful_deployment = LastDeploymentInfo.build(params[:last_successful_deployment], context: "#{context}[:last_successful_deployment]") unless params[:last_successful_deployment].nil?
        type.last_attempted_deployment = LastDeploymentInfo.build(params[:last_attempted_deployment], context: "#{context}[:last_attempted_deployment]") unless params[:last_attempted_deployment].nil?
        type.ec2_tag_set = EC2TagSet.build(params[:ec2_tag_set], context: "#{context}[:ec2_tag_set]") unless params[:ec2_tag_set].nil?
        type.on_premises_tag_set = OnPremisesTagSet.build(params[:on_premises_tag_set], context: "#{context}[:on_premises_tag_set]") unless params[:on_premises_tag_set].nil?
        type.compute_platform = params[:compute_platform]
        type.ecs_services = ECSServiceList.build(params[:ecs_services], context: "#{context}[:ecs_services]") unless params[:ecs_services].nil?
        type
      end
    end

    module DeploymentGroupInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeploymentGroupInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeploymentGroupLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentGroupLimitExceededException, context: context)
        type = Types::DeploymentGroupLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentGroupNameRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentGroupNameRequiredException, context: context)
        type = Types::DeploymentGroupNameRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentGroupsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeploymentIdRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentIdRequiredException, context: context)
        type = Types::DeploymentIdRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentInfo, context: context)
        type = Types::DeploymentInfo.new
        type.application_name = params[:application_name]
        type.deployment_group_name = params[:deployment_group_name]
        type.deployment_config_name = params[:deployment_config_name]
        type.deployment_id = params[:deployment_id]
        type.previous_revision = RevisionLocation.build(params[:previous_revision], context: "#{context}[:previous_revision]") unless params[:previous_revision].nil?
        type.revision = RevisionLocation.build(params[:revision], context: "#{context}[:revision]") unless params[:revision].nil?
        type.status = params[:status]
        type.error_information = ErrorInformation.build(params[:error_information], context: "#{context}[:error_information]") unless params[:error_information].nil?
        type.create_time = params[:create_time]
        type.start_time = params[:start_time]
        type.complete_time = params[:complete_time]
        type.deployment_overview = DeploymentOverview.build(params[:deployment_overview], context: "#{context}[:deployment_overview]") unless params[:deployment_overview].nil?
        type.description = params[:description]
        type.creator = params[:creator]
        type.ignore_application_stop_failures = params[:ignore_application_stop_failures]
        type.auto_rollback_configuration = AutoRollbackConfiguration.build(params[:auto_rollback_configuration], context: "#{context}[:auto_rollback_configuration]") unless params[:auto_rollback_configuration].nil?
        type.update_outdated_instances_only = params[:update_outdated_instances_only]
        type.rollback_info = RollbackInfo.build(params[:rollback_info], context: "#{context}[:rollback_info]") unless params[:rollback_info].nil?
        type.deployment_style = DeploymentStyle.build(params[:deployment_style], context: "#{context}[:deployment_style]") unless params[:deployment_style].nil?
        type.target_instances = TargetInstances.build(params[:target_instances], context: "#{context}[:target_instances]") unless params[:target_instances].nil?
        type.instance_termination_wait_time_started = params[:instance_termination_wait_time_started]
        type.blue_green_deployment_configuration = BlueGreenDeploymentConfiguration.build(params[:blue_green_deployment_configuration], context: "#{context}[:blue_green_deployment_configuration]") unless params[:blue_green_deployment_configuration].nil?
        type.load_balancer_info = LoadBalancerInfo.build(params[:load_balancer_info], context: "#{context}[:load_balancer_info]") unless params[:load_balancer_info].nil?
        type.additional_deployment_status_info = params[:additional_deployment_status_info]
        type.file_exists_behavior = params[:file_exists_behavior]
        type.deployment_status_messages = DeploymentStatusMessageList.build(params[:deployment_status_messages], context: "#{context}[:deployment_status_messages]") unless params[:deployment_status_messages].nil?
        type.compute_platform = params[:compute_platform]
        type.external_id = params[:external_id]
        type.related_deployments = RelatedDeployments.build(params[:related_deployments], context: "#{context}[:related_deployments]") unless params[:related_deployments].nil?
        type
      end
    end

    module DeploymentIsNotInReadyStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentIsNotInReadyStateException, context: context)
        type = Types::DeploymentIsNotInReadyStateException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentLimitExceededException, context: context)
        type = Types::DeploymentLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentNotStartedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentNotStartedException, context: context)
        type = Types::DeploymentNotStartedException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentOverview
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentOverview, context: context)
        type = Types::DeploymentOverview.new
        type.pending = params[:pending]
        type.in_progress = params[:in_progress]
        type.succeeded = params[:succeeded]
        type.failed = params[:failed]
        type.skipped = params[:skipped]
        type.ready = params[:ready]
        type
      end
    end

    module DeploymentReadyOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentReadyOption, context: context)
        type = Types::DeploymentReadyOption.new
        type.action_on_timeout = params[:action_on_timeout]
        type.wait_time_in_minutes = params[:wait_time_in_minutes]
        type
      end
    end

    module DeploymentStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeploymentStatusMessageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeploymentStyle
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentStyle, context: context)
        type = Types::DeploymentStyle.new
        type.deployment_type = params[:deployment_type]
        type.deployment_option = params[:deployment_option]
        type
      end
    end

    module DeploymentTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentTarget, context: context)
        type = Types::DeploymentTarget.new
        type.deployment_target_type = params[:deployment_target_type]
        type.instance_target = InstanceTarget.build(params[:instance_target], context: "#{context}[:instance_target]") unless params[:instance_target].nil?
        type.lambda_target = LambdaTarget.build(params[:lambda_target], context: "#{context}[:lambda_target]") unless params[:lambda_target].nil?
        type.ecs_target = ECSTarget.build(params[:ecs_target], context: "#{context}[:ecs_target]") unless params[:ecs_target].nil?
        type.cloud_formation_target = CloudFormationTarget.build(params[:cloud_formation_target], context: "#{context}[:cloud_formation_target]") unless params[:cloud_formation_target].nil?
        type
      end
    end

    module DeploymentTargetDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentTargetDoesNotExistException, context: context)
        type = Types::DeploymentTargetDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentTargetIdRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentTargetIdRequiredException, context: context)
        type = Types::DeploymentTargetIdRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentTargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeploymentTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeploymentTargetListSizeExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentTargetListSizeExceededException, context: context)
        type = Types::DeploymentTargetListSizeExceededException.new
        type.message = params[:message]
        type
      end
    end

    module DeploymentsInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeploymentInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeploymentsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeregisterOnPremisesInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterOnPremisesInstanceInput, context: context)
        type = Types::DeregisterOnPremisesInstanceInput.new
        type.instance_name = params[:instance_name]
        type
      end
    end

    module DeregisterOnPremisesInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterOnPremisesInstanceOutput, context: context)
        type = Types::DeregisterOnPremisesInstanceOutput.new
        type
      end
    end

    module DescriptionTooLongException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescriptionTooLongException, context: context)
        type = Types::DescriptionTooLongException.new
        type.message = params[:message]
        type
      end
    end

    module Diagnostics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Diagnostics, context: context)
        type = Types::Diagnostics.new
        type.error_code = params[:error_code]
        type.script_name = params[:script_name]
        type.message = params[:message]
        type.log_tail = params[:log_tail]
        type
      end
    end

    module EC2TagFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2TagFilter, context: context)
        type = Types::EC2TagFilter.new
        type.key = params[:key]
        type.value = params[:value]
        type.type = params[:type]
        type
      end
    end

    module EC2TagFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EC2TagFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EC2TagSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2TagSet, context: context)
        type = Types::EC2TagSet.new
        type.ec2_tag_set_list = EC2TagSetList.build(params[:ec2_tag_set_list], context: "#{context}[:ec2_tag_set_list]") unless params[:ec2_tag_set_list].nil?
        type
      end
    end

    module EC2TagSetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EC2TagFilterList.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ECSService
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ECSService, context: context)
        type = Types::ECSService.new
        type.service_name = params[:service_name]
        type.cluster_name = params[:cluster_name]
        type
      end
    end

    module ECSServiceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ECSService.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ECSServiceMappingLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ECSServiceMappingLimitExceededException, context: context)
        type = Types::ECSServiceMappingLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ECSTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ECSTarget, context: context)
        type = Types::ECSTarget.new
        type.deployment_id = params[:deployment_id]
        type.target_id = params[:target_id]
        type.target_arn = params[:target_arn]
        type.last_updated_at = params[:last_updated_at]
        type.lifecycle_events = LifecycleEventList.build(params[:lifecycle_events], context: "#{context}[:lifecycle_events]") unless params[:lifecycle_events].nil?
        type.status = params[:status]
        type.task_sets_info = ECSTaskSetList.build(params[:task_sets_info], context: "#{context}[:task_sets_info]") unless params[:task_sets_info].nil?
        type
      end
    end

    module ECSTaskSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ECSTaskSet, context: context)
        type = Types::ECSTaskSet.new
        type.identifer = params[:identifer]
        type.desired_count = params[:desired_count]
        type.pending_count = params[:pending_count]
        type.running_count = params[:running_count]
        type.status = params[:status]
        type.traffic_weight = params[:traffic_weight]
        type.target_group = TargetGroupInfo.build(params[:target_group], context: "#{context}[:target_group]") unless params[:target_group].nil?
        type.task_set_label = params[:task_set_label]
        type
      end
    end

    module ECSTaskSetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ECSTaskSet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ELBInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ELBInfo, context: context)
        type = Types::ELBInfo.new
        type.name = params[:name]
        type
      end
    end

    module ELBInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ELBInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ErrorInformation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorInformation, context: context)
        type = Types::ErrorInformation.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module FilterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GenericRevisionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenericRevisionInfo, context: context)
        type = Types::GenericRevisionInfo.new
        type.description = params[:description]
        type.deployment_groups = DeploymentGroupsList.build(params[:deployment_groups], context: "#{context}[:deployment_groups]") unless params[:deployment_groups].nil?
        type.first_used_time = params[:first_used_time]
        type.last_used_time = params[:last_used_time]
        type.register_time = params[:register_time]
        type
      end
    end

    module GetApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationInput, context: context)
        type = Types::GetApplicationInput.new
        type.application_name = params[:application_name]
        type
      end
    end

    module GetApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationOutput, context: context)
        type = Types::GetApplicationOutput.new
        type.application = ApplicationInfo.build(params[:application], context: "#{context}[:application]") unless params[:application].nil?
        type
      end
    end

    module GetApplicationRevisionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationRevisionInput, context: context)
        type = Types::GetApplicationRevisionInput.new
        type.application_name = params[:application_name]
        type.revision = RevisionLocation.build(params[:revision], context: "#{context}[:revision]") unless params[:revision].nil?
        type
      end
    end

    module GetApplicationRevisionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationRevisionOutput, context: context)
        type = Types::GetApplicationRevisionOutput.new
        type.application_name = params[:application_name]
        type.revision = RevisionLocation.build(params[:revision], context: "#{context}[:revision]") unless params[:revision].nil?
        type.revision_info = GenericRevisionInfo.build(params[:revision_info], context: "#{context}[:revision_info]") unless params[:revision_info].nil?
        type
      end
    end

    module GetDeploymentConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentConfigInput, context: context)
        type = Types::GetDeploymentConfigInput.new
        type.deployment_config_name = params[:deployment_config_name]
        type
      end
    end

    module GetDeploymentConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentConfigOutput, context: context)
        type = Types::GetDeploymentConfigOutput.new
        type.deployment_config_info = DeploymentConfigInfo.build(params[:deployment_config_info], context: "#{context}[:deployment_config_info]") unless params[:deployment_config_info].nil?
        type
      end
    end

    module GetDeploymentGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentGroupInput, context: context)
        type = Types::GetDeploymentGroupInput.new
        type.application_name = params[:application_name]
        type.deployment_group_name = params[:deployment_group_name]
        type
      end
    end

    module GetDeploymentGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentGroupOutput, context: context)
        type = Types::GetDeploymentGroupOutput.new
        type.deployment_group_info = DeploymentGroupInfo.build(params[:deployment_group_info], context: "#{context}[:deployment_group_info]") unless params[:deployment_group_info].nil?
        type
      end
    end

    module GetDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentInput, context: context)
        type = Types::GetDeploymentInput.new
        type.deployment_id = params[:deployment_id]
        type
      end
    end

    module GetDeploymentInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentInstanceInput, context: context)
        type = Types::GetDeploymentInstanceInput.new
        type.deployment_id = params[:deployment_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module GetDeploymentInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentInstanceOutput, context: context)
        type = Types::GetDeploymentInstanceOutput.new
        type.instance_summary = InstanceSummary.build(params[:instance_summary], context: "#{context}[:instance_summary]") unless params[:instance_summary].nil?
        type
      end
    end

    module GetDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentOutput, context: context)
        type = Types::GetDeploymentOutput.new
        type.deployment_info = DeploymentInfo.build(params[:deployment_info], context: "#{context}[:deployment_info]") unless params[:deployment_info].nil?
        type
      end
    end

    module GetDeploymentTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentTargetInput, context: context)
        type = Types::GetDeploymentTargetInput.new
        type.deployment_id = params[:deployment_id]
        type.target_id = params[:target_id]
        type
      end
    end

    module GetDeploymentTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentTargetOutput, context: context)
        type = Types::GetDeploymentTargetOutput.new
        type.deployment_target = DeploymentTarget.build(params[:deployment_target], context: "#{context}[:deployment_target]") unless params[:deployment_target].nil?
        type
      end
    end

    module GetOnPremisesInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOnPremisesInstanceInput, context: context)
        type = Types::GetOnPremisesInstanceInput.new
        type.instance_name = params[:instance_name]
        type
      end
    end

    module GetOnPremisesInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOnPremisesInstanceOutput, context: context)
        type = Types::GetOnPremisesInstanceOutput.new
        type.instance_info = InstanceInfo.build(params[:instance_info], context: "#{context}[:instance_info]") unless params[:instance_info].nil?
        type
      end
    end

    module GitHubAccountTokenDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GitHubAccountTokenDoesNotExistException, context: context)
        type = Types::GitHubAccountTokenDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module GitHubAccountTokenNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GitHubAccountTokenNameRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GitHubAccountTokenNameRequiredException, context: context)
        type = Types::GitHubAccountTokenNameRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module GitHubLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GitHubLocation, context: context)
        type = Types::GitHubLocation.new
        type.repository = params[:repository]
        type.commit_id = params[:commit_id]
        type
      end
    end

    module GreenFleetProvisioningOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GreenFleetProvisioningOption, context: context)
        type = Types::GreenFleetProvisioningOption.new
        type.action = params[:action]
        type
      end
    end

    module IamArnRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IamArnRequiredException, context: context)
        type = Types::IamArnRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module IamSessionArnAlreadyRegisteredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IamSessionArnAlreadyRegisteredException, context: context)
        type = Types::IamSessionArnAlreadyRegisteredException.new
        type.message = params[:message]
        type
      end
    end

    module IamUserArnAlreadyRegisteredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IamUserArnAlreadyRegisteredException, context: context)
        type = Types::IamUserArnAlreadyRegisteredException.new
        type.message = params[:message]
        type
      end
    end

    module IamUserArnRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IamUserArnRequiredException, context: context)
        type = Types::IamUserArnRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module InstanceDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceDoesNotExistException, context: context)
        type = Types::InstanceDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module InstanceIdRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceIdRequiredException, context: context)
        type = Types::InstanceIdRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module InstanceInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceInfo, context: context)
        type = Types::InstanceInfo.new
        type.instance_name = params[:instance_name]
        type.iam_session_arn = params[:iam_session_arn]
        type.iam_user_arn = params[:iam_user_arn]
        type.instance_arn = params[:instance_arn]
        type.register_time = params[:register_time]
        type.deregister_time = params[:deregister_time]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module InstanceInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceLimitExceededException, context: context)
        type = Types::InstanceLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module InstanceNameAlreadyRegisteredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceNameAlreadyRegisteredException, context: context)
        type = Types::InstanceNameAlreadyRegisteredException.new
        type.message = params[:message]
        type
      end
    end

    module InstanceNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceNameRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceNameRequiredException, context: context)
        type = Types::InstanceNameRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module InstanceNotRegisteredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceNotRegisteredException, context: context)
        type = Types::InstanceNotRegisteredException.new
        type.message = params[:message]
        type
      end
    end

    module InstanceStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceSummary, context: context)
        type = Types::InstanceSummary.new
        type.deployment_id = params[:deployment_id]
        type.instance_id = params[:instance_id]
        type.status = params[:status]
        type.last_updated_at = params[:last_updated_at]
        type.lifecycle_events = LifecycleEventList.build(params[:lifecycle_events], context: "#{context}[:lifecycle_events]") unless params[:lifecycle_events].nil?
        type.instance_type = params[:instance_type]
        type
      end
    end

    module InstanceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceTarget, context: context)
        type = Types::InstanceTarget.new
        type.deployment_id = params[:deployment_id]
        type.target_id = params[:target_id]
        type.target_arn = params[:target_arn]
        type.status = params[:status]
        type.last_updated_at = params[:last_updated_at]
        type.lifecycle_events = LifecycleEventList.build(params[:lifecycle_events], context: "#{context}[:lifecycle_events]") unless params[:lifecycle_events].nil?
        type.instance_label = params[:instance_label]
        type
      end
    end

    module InstanceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstancesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InvalidAlarmConfigException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAlarmConfigException, context: context)
        type = Types::InvalidAlarmConfigException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidApplicationNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidApplicationNameException, context: context)
        type = Types::InvalidApplicationNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArnException, context: context)
        type = Types::InvalidArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAutoRollbackConfigException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAutoRollbackConfigException, context: context)
        type = Types::InvalidAutoRollbackConfigException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAutoScalingGroupException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAutoScalingGroupException, context: context)
        type = Types::InvalidAutoScalingGroupException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidBlueGreenDeploymentConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidBlueGreenDeploymentConfigurationException, context: context)
        type = Types::InvalidBlueGreenDeploymentConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidBucketNameFilterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidBucketNameFilterException, context: context)
        type = Types::InvalidBucketNameFilterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidComputePlatformException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidComputePlatformException, context: context)
        type = Types::InvalidComputePlatformException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDeployedStateFilterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeployedStateFilterException, context: context)
        type = Types::InvalidDeployedStateFilterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDeploymentConfigNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeploymentConfigNameException, context: context)
        type = Types::InvalidDeploymentConfigNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDeploymentGroupNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeploymentGroupNameException, context: context)
        type = Types::InvalidDeploymentGroupNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDeploymentIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeploymentIdException, context: context)
        type = Types::InvalidDeploymentIdException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDeploymentInstanceTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeploymentInstanceTypeException, context: context)
        type = Types::InvalidDeploymentInstanceTypeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDeploymentStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeploymentStatusException, context: context)
        type = Types::InvalidDeploymentStatusException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDeploymentStyleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeploymentStyleException, context: context)
        type = Types::InvalidDeploymentStyleException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDeploymentTargetIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeploymentTargetIdException, context: context)
        type = Types::InvalidDeploymentTargetIdException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDeploymentWaitTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeploymentWaitTypeException, context: context)
        type = Types::InvalidDeploymentWaitTypeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidEC2TagCombinationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEC2TagCombinationException, context: context)
        type = Types::InvalidEC2TagCombinationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidEC2TagException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEC2TagException, context: context)
        type = Types::InvalidEC2TagException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidECSServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidECSServiceException, context: context)
        type = Types::InvalidECSServiceException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidExternalIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidExternalIdException, context: context)
        type = Types::InvalidExternalIdException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidFileExistsBehaviorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidFileExistsBehaviorException, context: context)
        type = Types::InvalidFileExistsBehaviorException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidGitHubAccountTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidGitHubAccountTokenException, context: context)
        type = Types::InvalidGitHubAccountTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidGitHubAccountTokenNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidGitHubAccountTokenNameException, context: context)
        type = Types::InvalidGitHubAccountTokenNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidIamSessionArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidIamSessionArnException, context: context)
        type = Types::InvalidIamSessionArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidIamUserArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidIamUserArnException, context: context)
        type = Types::InvalidIamUserArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidIgnoreApplicationStopFailuresValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidIgnoreApplicationStopFailuresValueException, context: context)
        type = Types::InvalidIgnoreApplicationStopFailuresValueException.new
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

    module InvalidInstanceNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInstanceNameException, context: context)
        type = Types::InvalidInstanceNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInstanceStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInstanceStatusException, context: context)
        type = Types::InvalidInstanceStatusException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInstanceTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInstanceTypeException, context: context)
        type = Types::InvalidInstanceTypeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidKeyPrefixFilterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidKeyPrefixFilterException, context: context)
        type = Types::InvalidKeyPrefixFilterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidLifecycleEventHookExecutionIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidLifecycleEventHookExecutionIdException, context: context)
        type = Types::InvalidLifecycleEventHookExecutionIdException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidLifecycleEventHookExecutionStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidLifecycleEventHookExecutionStatusException, context: context)
        type = Types::InvalidLifecycleEventHookExecutionStatusException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidLoadBalancerInfoException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidLoadBalancerInfoException, context: context)
        type = Types::InvalidLoadBalancerInfoException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidMinimumHealthyHostValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidMinimumHealthyHostValueException, context: context)
        type = Types::InvalidMinimumHealthyHostValueException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOnPremisesTagCombinationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOnPremisesTagCombinationException, context: context)
        type = Types::InvalidOnPremisesTagCombinationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOperationException, context: context)
        type = Types::InvalidOperationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRegistrationStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRegistrationStatusException, context: context)
        type = Types::InvalidRegistrationStatusException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRevisionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRevisionException, context: context)
        type = Types::InvalidRevisionException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRoleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRoleException, context: context)
        type = Types::InvalidRoleException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSortByException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSortByException, context: context)
        type = Types::InvalidSortByException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSortOrderException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSortOrderException, context: context)
        type = Types::InvalidSortOrderException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTagException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTagException, context: context)
        type = Types::InvalidTagException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTagFilterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTagFilterException, context: context)
        type = Types::InvalidTagFilterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTagsToAddException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTagsToAddException, context: context)
        type = Types::InvalidTagsToAddException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTargetFilterNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTargetFilterNameException, context: context)
        type = Types::InvalidTargetFilterNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTargetGroupPairException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTargetGroupPairException, context: context)
        type = Types::InvalidTargetGroupPairException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTargetInstancesException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTargetInstancesException, context: context)
        type = Types::InvalidTargetInstancesException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTimeRangeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTimeRangeException, context: context)
        type = Types::InvalidTimeRangeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTrafficRoutingConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTrafficRoutingConfigurationException, context: context)
        type = Types::InvalidTrafficRoutingConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTriggerConfigException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTriggerConfigException, context: context)
        type = Types::InvalidTriggerConfigException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidUpdateOutdatedInstancesOnlyValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidUpdateOutdatedInstancesOnlyValueException, context: context)
        type = Types::InvalidUpdateOutdatedInstancesOnlyValueException.new
        type.message = params[:message]
        type
      end
    end

    module LambdaFunctionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunctionInfo, context: context)
        type = Types::LambdaFunctionInfo.new
        type.function_name = params[:function_name]
        type.function_alias = params[:function_alias]
        type.current_version = params[:current_version]
        type.target_version = params[:target_version]
        type.target_version_weight = params[:target_version_weight]
        type
      end
    end

    module LambdaTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaTarget, context: context)
        type = Types::LambdaTarget.new
        type.deployment_id = params[:deployment_id]
        type.target_id = params[:target_id]
        type.target_arn = params[:target_arn]
        type.status = params[:status]
        type.last_updated_at = params[:last_updated_at]
        type.lifecycle_events = LifecycleEventList.build(params[:lifecycle_events], context: "#{context}[:lifecycle_events]") unless params[:lifecycle_events].nil?
        type.lambda_function_info = LambdaFunctionInfo.build(params[:lambda_function_info], context: "#{context}[:lambda_function_info]") unless params[:lambda_function_info].nil?
        type
      end
    end

    module LastDeploymentInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LastDeploymentInfo, context: context)
        type = Types::LastDeploymentInfo.new
        type.deployment_id = params[:deployment_id]
        type.status = params[:status]
        type.end_time = params[:end_time]
        type.create_time = params[:create_time]
        type
      end
    end

    module LifecycleEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecycleEvent, context: context)
        type = Types::LifecycleEvent.new
        type.lifecycle_event_name = params[:lifecycle_event_name]
        type.diagnostics = Diagnostics.build(params[:diagnostics], context: "#{context}[:diagnostics]") unless params[:diagnostics].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.status = params[:status]
        type
      end
    end

    module LifecycleEventAlreadyCompletedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecycleEventAlreadyCompletedException, context: context)
        type = Types::LifecycleEventAlreadyCompletedException.new
        type.message = params[:message]
        type
      end
    end

    module LifecycleEventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LifecycleEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LifecycleHookLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecycleHookLimitExceededException, context: context)
        type = Types::LifecycleHookLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListApplicationRevisionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationRevisionsInput, context: context)
        type = Types::ListApplicationRevisionsInput.new
        type.application_name = params[:application_name]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.s3_bucket = params[:s3_bucket]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.deployed = params[:deployed]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationRevisionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationRevisionsOutput, context: context)
        type = Types::ListApplicationRevisionsOutput.new
        type.revisions = RevisionLocationList.build(params[:revisions], context: "#{context}[:revisions]") unless params[:revisions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsInput, context: context)
        type = Types::ListApplicationsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsOutput, context: context)
        type = Types::ListApplicationsOutput.new
        type.applications = ApplicationsList.build(params[:applications], context: "#{context}[:applications]") unless params[:applications].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentConfigsInput, context: context)
        type = Types::ListDeploymentConfigsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentConfigsOutput, context: context)
        type = Types::ListDeploymentConfigsOutput.new
        type.deployment_configs_list = DeploymentConfigsList.build(params[:deployment_configs_list], context: "#{context}[:deployment_configs_list]") unless params[:deployment_configs_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentGroupsInput, context: context)
        type = Types::ListDeploymentGroupsInput.new
        type.application_name = params[:application_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentGroupsOutput, context: context)
        type = Types::ListDeploymentGroupsOutput.new
        type.application_name = params[:application_name]
        type.deployment_groups = DeploymentGroupsList.build(params[:deployment_groups], context: "#{context}[:deployment_groups]") unless params[:deployment_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentInstancesInput, context: context)
        type = Types::ListDeploymentInstancesInput.new
        type.deployment_id = params[:deployment_id]
        type.next_token = params[:next_token]
        type.instance_status_filter = InstanceStatusList.build(params[:instance_status_filter], context: "#{context}[:instance_status_filter]") unless params[:instance_status_filter].nil?
        type.instance_type_filter = InstanceTypeList.build(params[:instance_type_filter], context: "#{context}[:instance_type_filter]") unless params[:instance_type_filter].nil?
        type
      end
    end

    module ListDeploymentInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentInstancesOutput, context: context)
        type = Types::ListDeploymentInstancesOutput.new
        type.instances_list = InstancesList.build(params[:instances_list], context: "#{context}[:instances_list]") unless params[:instances_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentTargetsInput, context: context)
        type = Types::ListDeploymentTargetsInput.new
        type.deployment_id = params[:deployment_id]
        type.next_token = params[:next_token]
        type.target_filters = TargetFilters.build(params[:target_filters], context: "#{context}[:target_filters]") unless params[:target_filters].nil?
        type
      end
    end

    module ListDeploymentTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentTargetsOutput, context: context)
        type = Types::ListDeploymentTargetsOutput.new
        type.target_ids = TargetIdList.build(params[:target_ids], context: "#{context}[:target_ids]") unless params[:target_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentsInput, context: context)
        type = Types::ListDeploymentsInput.new
        type.application_name = params[:application_name]
        type.deployment_group_name = params[:deployment_group_name]
        type.external_id = params[:external_id]
        type.include_only_statuses = DeploymentStatusList.build(params[:include_only_statuses], context: "#{context}[:include_only_statuses]") unless params[:include_only_statuses].nil?
        type.create_time_range = TimeRange.build(params[:create_time_range], context: "#{context}[:create_time_range]") unless params[:create_time_range].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentsOutput, context: context)
        type = Types::ListDeploymentsOutput.new
        type.deployments = DeploymentsList.build(params[:deployments], context: "#{context}[:deployments]") unless params[:deployments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGitHubAccountTokenNamesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGitHubAccountTokenNamesInput, context: context)
        type = Types::ListGitHubAccountTokenNamesInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGitHubAccountTokenNamesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGitHubAccountTokenNamesOutput, context: context)
        type = Types::ListGitHubAccountTokenNamesOutput.new
        type.token_name_list = GitHubAccountTokenNameList.build(params[:token_name_list], context: "#{context}[:token_name_list]") unless params[:token_name_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOnPremisesInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOnPremisesInstancesInput, context: context)
        type = Types::ListOnPremisesInstancesInput.new
        type.registration_status = params[:registration_status]
        type.tag_filters = TagFilterList.build(params[:tag_filters], context: "#{context}[:tag_filters]") unless params[:tag_filters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOnPremisesInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOnPremisesInstancesOutput, context: context)
        type = Types::ListOnPremisesInstancesOutput.new
        type.instance_names = InstanceNameList.build(params[:instance_names], context: "#{context}[:instance_names]") unless params[:instance_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListenerArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LoadBalancerInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoadBalancerInfo, context: context)
        type = Types::LoadBalancerInfo.new
        type.elb_info_list = ELBInfoList.build(params[:elb_info_list], context: "#{context}[:elb_info_list]") unless params[:elb_info_list].nil?
        type.target_group_info_list = TargetGroupInfoList.build(params[:target_group_info_list], context: "#{context}[:target_group_info_list]") unless params[:target_group_info_list].nil?
        type.target_group_pair_info_list = TargetGroupPairInfoList.build(params[:target_group_pair_info_list], context: "#{context}[:target_group_pair_info_list]") unless params[:target_group_pair_info_list].nil?
        type
      end
    end

    module MinimumHealthyHosts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MinimumHealthyHosts, context: context)
        type = Types::MinimumHealthyHosts.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module MultipleIamArnsProvidedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultipleIamArnsProvidedException, context: context)
        type = Types::MultipleIamArnsProvidedException.new
        type.message = params[:message]
        type
      end
    end

    module OnPremisesTagSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnPremisesTagSet, context: context)
        type = Types::OnPremisesTagSet.new
        type.on_premises_tag_set_list = OnPremisesTagSetList.build(params[:on_premises_tag_set_list], context: "#{context}[:on_premises_tag_set_list]") unless params[:on_premises_tag_set_list].nil?
        type
      end
    end

    module OnPremisesTagSetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagFilterList.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OperationNotSupportedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OperationNotSupportedException, context: context)
        type = Types::OperationNotSupportedException.new
        type.message = params[:message]
        type
      end
    end

    module PutLifecycleEventHookExecutionStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLifecycleEventHookExecutionStatusInput, context: context)
        type = Types::PutLifecycleEventHookExecutionStatusInput.new
        type.deployment_id = params[:deployment_id]
        type.lifecycle_event_hook_execution_id = params[:lifecycle_event_hook_execution_id]
        type.status = params[:status]
        type
      end
    end

    module PutLifecycleEventHookExecutionStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutLifecycleEventHookExecutionStatusOutput, context: context)
        type = Types::PutLifecycleEventHookExecutionStatusOutput.new
        type.lifecycle_event_hook_execution_id = params[:lifecycle_event_hook_execution_id]
        type
      end
    end

    module RawString
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RawString, context: context)
        type = Types::RawString.new
        type.content = params[:content]
        type.sha256 = params[:sha256]
        type
      end
    end

    module RegisterApplicationRevisionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterApplicationRevisionInput, context: context)
        type = Types::RegisterApplicationRevisionInput.new
        type.application_name = params[:application_name]
        type.description = params[:description]
        type.revision = RevisionLocation.build(params[:revision], context: "#{context}[:revision]") unless params[:revision].nil?
        type
      end
    end

    module RegisterApplicationRevisionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterApplicationRevisionOutput, context: context)
        type = Types::RegisterApplicationRevisionOutput.new
        type
      end
    end

    module RegisterOnPremisesInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterOnPremisesInstanceInput, context: context)
        type = Types::RegisterOnPremisesInstanceInput.new
        type.instance_name = params[:instance_name]
        type.iam_session_arn = params[:iam_session_arn]
        type.iam_user_arn = params[:iam_user_arn]
        type
      end
    end

    module RegisterOnPremisesInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterOnPremisesInstanceOutput, context: context)
        type = Types::RegisterOnPremisesInstanceOutput.new
        type
      end
    end

    module RelatedDeployments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelatedDeployments, context: context)
        type = Types::RelatedDeployments.new
        type.auto_update_outdated_instances_root_deployment_id = params[:auto_update_outdated_instances_root_deployment_id]
        type.auto_update_outdated_instances_deployment_ids = DeploymentsList.build(params[:auto_update_outdated_instances_deployment_ids], context: "#{context}[:auto_update_outdated_instances_deployment_ids]") unless params[:auto_update_outdated_instances_deployment_ids].nil?
        type
      end
    end

    module RemoveTagsFromOnPremisesInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromOnPremisesInstancesInput, context: context)
        type = Types::RemoveTagsFromOnPremisesInstancesInput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.instance_names = InstanceNameList.build(params[:instance_names], context: "#{context}[:instance_names]") unless params[:instance_names].nil?
        type
      end
    end

    module RemoveTagsFromOnPremisesInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromOnPremisesInstancesOutput, context: context)
        type = Types::RemoveTagsFromOnPremisesInstancesOutput.new
        type
      end
    end

    module ResourceArnRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceArnRequiredException, context: context)
        type = Types::ResourceArnRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceValidationException, context: context)
        type = Types::ResourceValidationException.new
        type.message = params[:message]
        type
      end
    end

    module RevisionDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevisionDoesNotExistException, context: context)
        type = Types::RevisionDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module RevisionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevisionInfo, context: context)
        type = Types::RevisionInfo.new
        type.revision_location = RevisionLocation.build(params[:revision_location], context: "#{context}[:revision_location]") unless params[:revision_location].nil?
        type.generic_revision_info = GenericRevisionInfo.build(params[:generic_revision_info], context: "#{context}[:generic_revision_info]") unless params[:generic_revision_info].nil?
        type
      end
    end

    module RevisionInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RevisionInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RevisionLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevisionLocation, context: context)
        type = Types::RevisionLocation.new
        type.revision_type = params[:revision_type]
        type.s3_location = S3Location.build(params[:s3_location], context: "#{context}[:s3_location]") unless params[:s3_location].nil?
        type.git_hub_location = GitHubLocation.build(params[:git_hub_location], context: "#{context}[:git_hub_location]") unless params[:git_hub_location].nil?
        type.string = RawString.build(params[:string], context: "#{context}[:string]") unless params[:string].nil?
        type.app_spec_content = AppSpecContent.build(params[:app_spec_content], context: "#{context}[:app_spec_content]") unless params[:app_spec_content].nil?
        type
      end
    end

    module RevisionLocationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RevisionLocation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RevisionRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevisionRequiredException, context: context)
        type = Types::RevisionRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module RoleRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoleRequiredException, context: context)
        type = Types::RoleRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module RollbackInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RollbackInfo, context: context)
        type = Types::RollbackInfo.new
        type.rollback_deployment_id = params[:rollback_deployment_id]
        type.rollback_triggering_deployment_id = params[:rollback_triggering_deployment_id]
        type.rollback_message = params[:rollback_message]
        type
      end
    end

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.bundle_type = params[:bundle_type]
        type.version = params[:version]
        type.e_tag = params[:e_tag]
        type
      end
    end

    module SkipWaitTimeForInstanceTerminationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SkipWaitTimeForInstanceTerminationInput, context: context)
        type = Types::SkipWaitTimeForInstanceTerminationInput.new
        type.deployment_id = params[:deployment_id]
        type
      end
    end

    module SkipWaitTimeForInstanceTerminationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SkipWaitTimeForInstanceTerminationOutput, context: context)
        type = Types::SkipWaitTimeForInstanceTerminationOutput.new
        type
      end
    end

    module StopDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDeploymentInput, context: context)
        type = Types::StopDeploymentInput.new
        type.deployment_id = params[:deployment_id]
        type.auto_rollback_enabled = params[:auto_rollback_enabled]
        type
      end
    end

    module StopDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDeploymentOutput, context: context)
        type = Types::StopDeploymentOutput.new
        type.status = params[:status]
        type.status_message = params[:status_message]
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

    module TagFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagFilter, context: context)
        type = Types::TagFilter.new
        type.key = params[:key]
        type.value = params[:value]
        type.type = params[:type]
        type
      end
    end

    module TagFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagLimitExceededException, context: context)
        type = Types::TagLimitExceededException.new
        type.message = params[:message]
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

    module TagRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagRequiredException, context: context)
        type = Types::TagRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TagSetListLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagSetListLimitExceededException, context: context)
        type = Types::TagSetListLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module TargetFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = FilterValueList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module TargetGroupInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetGroupInfo, context: context)
        type = Types::TargetGroupInfo.new
        type.name = params[:name]
        type
      end
    end

    module TargetGroupInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetGroupInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetGroupPairInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetGroupPairInfo, context: context)
        type = Types::TargetGroupPairInfo.new
        type.target_groups = TargetGroupInfoList.build(params[:target_groups], context: "#{context}[:target_groups]") unless params[:target_groups].nil?
        type.prod_traffic_route = TrafficRoute.build(params[:prod_traffic_route], context: "#{context}[:prod_traffic_route]") unless params[:prod_traffic_route].nil?
        type.test_traffic_route = TrafficRoute.build(params[:test_traffic_route], context: "#{context}[:test_traffic_route]") unless params[:test_traffic_route].nil?
        type
      end
    end

    module TargetGroupPairInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetGroupPairInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TargetInstances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetInstances, context: context)
        type = Types::TargetInstances.new
        type.tag_filters = EC2TagFilterList.build(params[:tag_filters], context: "#{context}[:tag_filters]") unless params[:tag_filters].nil?
        type.auto_scaling_groups = AutoScalingGroupNameList.build(params[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless params[:auto_scaling_groups].nil?
        type.ec2_tag_set = EC2TagSet.build(params[:ec2_tag_set], context: "#{context}[:ec2_tag_set]") unless params[:ec2_tag_set].nil?
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TimeBasedCanary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeBasedCanary, context: context)
        type = Types::TimeBasedCanary.new
        type.canary_percentage = params[:canary_percentage]
        type.canary_interval = params[:canary_interval]
        type
      end
    end

    module TimeBasedLinear
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeBasedLinear, context: context)
        type = Types::TimeBasedLinear.new
        type.linear_percentage = params[:linear_percentage]
        type.linear_interval = params[:linear_interval]
        type
      end
    end

    module TimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeRange, context: context)
        type = Types::TimeRange.new
        type.start = params[:start]
        type.end = params[:end]
        type
      end
    end

    module TrafficRoute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrafficRoute, context: context)
        type = Types::TrafficRoute.new
        type.listener_arns = ListenerArnList.build(params[:listener_arns], context: "#{context}[:listener_arns]") unless params[:listener_arns].nil?
        type
      end
    end

    module TrafficRoutingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrafficRoutingConfig, context: context)
        type = Types::TrafficRoutingConfig.new
        type.type = params[:type]
        type.time_based_canary = TimeBasedCanary.build(params[:time_based_canary], context: "#{context}[:time_based_canary]") unless params[:time_based_canary].nil?
        type.time_based_linear = TimeBasedLinear.build(params[:time_based_linear], context: "#{context}[:time_based_linear]") unless params[:time_based_linear].nil?
        type
      end
    end

    module TriggerConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TriggerConfig, context: context)
        type = Types::TriggerConfig.new
        type.trigger_name = params[:trigger_name]
        type.trigger_target_arn = params[:trigger_target_arn]
        type.trigger_events = TriggerEventTypeList.build(params[:trigger_events], context: "#{context}[:trigger_events]") unless params[:trigger_events].nil?
        type
      end
    end

    module TriggerConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TriggerConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TriggerEventTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TriggerTargetsLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TriggerTargetsLimitExceededException, context: context)
        type = Types::TriggerTargetsLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedActionForDeploymentTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedActionForDeploymentTypeException, context: context)
        type = Types::UnsupportedActionForDeploymentTypeException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationInput, context: context)
        type = Types::UpdateApplicationInput.new
        type.application_name = params[:application_name]
        type.new_application_name = params[:new_application_name]
        type
      end
    end

    module UpdateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationOutput, context: context)
        type = Types::UpdateApplicationOutput.new
        type
      end
    end

    module UpdateDeploymentGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeploymentGroupInput, context: context)
        type = Types::UpdateDeploymentGroupInput.new
        type.application_name = params[:application_name]
        type.current_deployment_group_name = params[:current_deployment_group_name]
        type.new_deployment_group_name = params[:new_deployment_group_name]
        type.deployment_config_name = params[:deployment_config_name]
        type.ec2_tag_filters = EC2TagFilterList.build(params[:ec2_tag_filters], context: "#{context}[:ec2_tag_filters]") unless params[:ec2_tag_filters].nil?
        type.on_premises_instance_tag_filters = TagFilterList.build(params[:on_premises_instance_tag_filters], context: "#{context}[:on_premises_instance_tag_filters]") unless params[:on_premises_instance_tag_filters].nil?
        type.auto_scaling_groups = AutoScalingGroupNameList.build(params[:auto_scaling_groups], context: "#{context}[:auto_scaling_groups]") unless params[:auto_scaling_groups].nil?
        type.service_role_arn = params[:service_role_arn]
        type.trigger_configurations = TriggerConfigList.build(params[:trigger_configurations], context: "#{context}[:trigger_configurations]") unless params[:trigger_configurations].nil?
        type.alarm_configuration = AlarmConfiguration.build(params[:alarm_configuration], context: "#{context}[:alarm_configuration]") unless params[:alarm_configuration].nil?
        type.auto_rollback_configuration = AutoRollbackConfiguration.build(params[:auto_rollback_configuration], context: "#{context}[:auto_rollback_configuration]") unless params[:auto_rollback_configuration].nil?
        type.outdated_instances_strategy = params[:outdated_instances_strategy]
        type.deployment_style = DeploymentStyle.build(params[:deployment_style], context: "#{context}[:deployment_style]") unless params[:deployment_style].nil?
        type.blue_green_deployment_configuration = BlueGreenDeploymentConfiguration.build(params[:blue_green_deployment_configuration], context: "#{context}[:blue_green_deployment_configuration]") unless params[:blue_green_deployment_configuration].nil?
        type.load_balancer_info = LoadBalancerInfo.build(params[:load_balancer_info], context: "#{context}[:load_balancer_info]") unless params[:load_balancer_info].nil?
        type.ec2_tag_set = EC2TagSet.build(params[:ec2_tag_set], context: "#{context}[:ec2_tag_set]") unless params[:ec2_tag_set].nil?
        type.ecs_services = ECSServiceList.build(params[:ecs_services], context: "#{context}[:ecs_services]") unless params[:ecs_services].nil?
        type.on_premises_tag_set = OnPremisesTagSet.build(params[:on_premises_tag_set], context: "#{context}[:on_premises_tag_set]") unless params[:on_premises_tag_set].nil?
        type
      end
    end

    module UpdateDeploymentGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeploymentGroupOutput, context: context)
        type = Types::UpdateDeploymentGroupOutput.new
        type.hooks_not_cleaned_up = AutoScalingGroupList.build(params[:hooks_not_cleaned_up], context: "#{context}[:hooks_not_cleaned_up]") unless params[:hooks_not_cleaned_up].nil?
        type
      end
    end

  end
end
