# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CodeDeploy
  module Parsers

    # Operation Parser for AddTagsToOnPremisesInstances
    class AddTagsToOnPremisesInstances
      def self.parse(http_resp)
        data = Types::AddTagsToOnPremisesInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InstanceLimitExceededException
    class InstanceLimitExceededException
      def self.parse(http_resp)
        data = Types::InstanceLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InstanceNameRequiredException
    class InstanceNameRequiredException
      def self.parse(http_resp)
        data = Types::InstanceNameRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InstanceNotRegisteredException
    class InstanceNotRegisteredException
      def self.parse(http_resp)
        data = Types::InstanceNotRegisteredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidInstanceNameException
    class InvalidInstanceNameException
      def self.parse(http_resp)
        data = Types::InvalidInstanceNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTagException
    class InvalidTagException
      def self.parse(http_resp)
        data = Types::InvalidTagException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TagLimitExceededException
    class TagLimitExceededException
      def self.parse(http_resp)
        data = Types::TagLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TagRequiredException
    class TagRequiredException
      def self.parse(http_resp)
        data = Types::TagRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for BatchGetApplicationRevisions
    class BatchGetApplicationRevisions
      def self.parse(http_resp)
        data = Types::BatchGetApplicationRevisionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_name = map['applicationName']
        data.error_message = map['errorMessage']
        data.revisions = (Parsers::RevisionInfoList.parse(map['revisions']) unless map['revisions'].nil?)
        data
      end
    end

    class RevisionInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::RevisionInfo.parse(value) unless value.nil?
        end
      end
    end

    class RevisionInfo
      def self.parse(map)
        data = Types::RevisionInfo.new
        data.revision_location = (Parsers::RevisionLocation.parse(map['revisionLocation']) unless map['revisionLocation'].nil?)
        data.generic_revision_info = (Parsers::GenericRevisionInfo.parse(map['genericRevisionInfo']) unless map['genericRevisionInfo'].nil?)
        return data
      end
    end

    class GenericRevisionInfo
      def self.parse(map)
        data = Types::GenericRevisionInfo.new
        data.description = map['description']
        data.deployment_groups = (Parsers::DeploymentGroupsList.parse(map['deploymentGroups']) unless map['deploymentGroups'].nil?)
        data.first_used_time = Time.at(map['firstUsedTime'].to_i) if map['firstUsedTime']
        data.last_used_time = Time.at(map['lastUsedTime'].to_i) if map['lastUsedTime']
        data.register_time = Time.at(map['registerTime'].to_i) if map['registerTime']
        return data
      end
    end

    class DeploymentGroupsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class RevisionLocation
      def self.parse(map)
        data = Types::RevisionLocation.new
        data.revision_type = map['revisionType']
        data.s3_location = (Parsers::S3Location.parse(map['s3Location']) unless map['s3Location'].nil?)
        data.git_hub_location = (Parsers::GitHubLocation.parse(map['gitHubLocation']) unless map['gitHubLocation'].nil?)
        data.string = (Parsers::RawString.parse(map['string']) unless map['string'].nil?)
        data.app_spec_content = (Parsers::AppSpecContent.parse(map['appSpecContent']) unless map['appSpecContent'].nil?)
        return data
      end
    end

    class AppSpecContent
      def self.parse(map)
        data = Types::AppSpecContent.new
        data.content = map['content']
        data.sha256 = map['sha256']
        return data
      end
    end

    class RawString
      def self.parse(map)
        data = Types::RawString.new
        data.content = map['content']
        data.sha256 = map['sha256']
        return data
      end
    end

    class GitHubLocation
      def self.parse(map)
        data = Types::GitHubLocation.new
        data.repository = map['repository']
        data.commit_id = map['commitId']
        return data
      end
    end

    class S3Location
      def self.parse(map)
        data = Types::S3Location.new
        data.bucket = map['bucket']
        data.key = map['key']
        data.bundle_type = map['bundleType']
        data.version = map['version']
        data.e_tag = map['eTag']
        return data
      end
    end

    # Error Parser for ApplicationDoesNotExistException
    class ApplicationDoesNotExistException
      def self.parse(http_resp)
        data = Types::ApplicationDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ApplicationNameRequiredException
    class ApplicationNameRequiredException
      def self.parse(http_resp)
        data = Types::ApplicationNameRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for BatchLimitExceededException
    class BatchLimitExceededException
      def self.parse(http_resp)
        data = Types::BatchLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidApplicationNameException
    class InvalidApplicationNameException
      def self.parse(http_resp)
        data = Types::InvalidApplicationNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidRevisionException
    class InvalidRevisionException
      def self.parse(http_resp)
        data = Types::InvalidRevisionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RevisionRequiredException
    class RevisionRequiredException
      def self.parse(http_resp)
        data = Types::RevisionRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for BatchGetApplications
    class BatchGetApplications
      def self.parse(http_resp)
        data = Types::BatchGetApplicationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.applications_info = (Parsers::ApplicationsInfoList.parse(map['applicationsInfo']) unless map['applicationsInfo'].nil?)
        data
      end
    end

    class ApplicationsInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::ApplicationInfo.parse(value) unless value.nil?
        end
      end
    end

    class ApplicationInfo
      def self.parse(map)
        data = Types::ApplicationInfo.new
        data.application_id = map['applicationId']
        data.application_name = map['applicationName']
        data.create_time = Time.at(map['createTime'].to_i) if map['createTime']
        data.linked_to_git_hub = map['linkedToGitHub']
        data.git_hub_account_name = map['gitHubAccountName']
        data.compute_platform = map['computePlatform']
        return data
      end
    end

    # Operation Parser for BatchGetDeploymentGroups
    class BatchGetDeploymentGroups
      def self.parse(http_resp)
        data = Types::BatchGetDeploymentGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deployment_groups_info = (Parsers::DeploymentGroupInfoList.parse(map['deploymentGroupsInfo']) unless map['deploymentGroupsInfo'].nil?)
        data.error_message = map['errorMessage']
        data
      end
    end

    class DeploymentGroupInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::DeploymentGroupInfo.parse(value) unless value.nil?
        end
      end
    end

    class DeploymentGroupInfo
      def self.parse(map)
        data = Types::DeploymentGroupInfo.new
        data.application_name = map['applicationName']
        data.deployment_group_id = map['deploymentGroupId']
        data.deployment_group_name = map['deploymentGroupName']
        data.deployment_config_name = map['deploymentConfigName']
        data.ec2_tag_filters = (Parsers::EC2TagFilterList.parse(map['ec2TagFilters']) unless map['ec2TagFilters'].nil?)
        data.on_premises_instance_tag_filters = (Parsers::TagFilterList.parse(map['onPremisesInstanceTagFilters']) unless map['onPremisesInstanceTagFilters'].nil?)
        data.auto_scaling_groups = (Parsers::AutoScalingGroupList.parse(map['autoScalingGroups']) unless map['autoScalingGroups'].nil?)
        data.service_role_arn = map['serviceRoleArn']
        data.target_revision = (Parsers::RevisionLocation.parse(map['targetRevision']) unless map['targetRevision'].nil?)
        data.trigger_configurations = (Parsers::TriggerConfigList.parse(map['triggerConfigurations']) unless map['triggerConfigurations'].nil?)
        data.alarm_configuration = (Parsers::AlarmConfiguration.parse(map['alarmConfiguration']) unless map['alarmConfiguration'].nil?)
        data.auto_rollback_configuration = (Parsers::AutoRollbackConfiguration.parse(map['autoRollbackConfiguration']) unless map['autoRollbackConfiguration'].nil?)
        data.deployment_style = (Parsers::DeploymentStyle.parse(map['deploymentStyle']) unless map['deploymentStyle'].nil?)
        data.outdated_instances_strategy = map['outdatedInstancesStrategy']
        data.blue_green_deployment_configuration = (Parsers::BlueGreenDeploymentConfiguration.parse(map['blueGreenDeploymentConfiguration']) unless map['blueGreenDeploymentConfiguration'].nil?)
        data.load_balancer_info = (Parsers::LoadBalancerInfo.parse(map['loadBalancerInfo']) unless map['loadBalancerInfo'].nil?)
        data.last_successful_deployment = (Parsers::LastDeploymentInfo.parse(map['lastSuccessfulDeployment']) unless map['lastSuccessfulDeployment'].nil?)
        data.last_attempted_deployment = (Parsers::LastDeploymentInfo.parse(map['lastAttemptedDeployment']) unless map['lastAttemptedDeployment'].nil?)
        data.ec2_tag_set = (Parsers::EC2TagSet.parse(map['ec2TagSet']) unless map['ec2TagSet'].nil?)
        data.on_premises_tag_set = (Parsers::OnPremisesTagSet.parse(map['onPremisesTagSet']) unless map['onPremisesTagSet'].nil?)
        data.compute_platform = map['computePlatform']
        data.ecs_services = (Parsers::ECSServiceList.parse(map['ecsServices']) unless map['ecsServices'].nil?)
        return data
      end
    end

    class ECSServiceList
      def self.parse(list)
        list.map do |value|
          Parsers::ECSService.parse(value) unless value.nil?
        end
      end
    end

    class ECSService
      def self.parse(map)
        data = Types::ECSService.new
        data.service_name = map['serviceName']
        data.cluster_name = map['clusterName']
        return data
      end
    end

    class OnPremisesTagSet
      def self.parse(map)
        data = Types::OnPremisesTagSet.new
        data.on_premises_tag_set_list = (Parsers::OnPremisesTagSetList.parse(map['onPremisesTagSetList']) unless map['onPremisesTagSetList'].nil?)
        return data
      end
    end

    class OnPremisesTagSetList
      def self.parse(list)
        list.map do |value|
          Parsers::TagFilterList.parse(value) unless value.nil?
        end
      end
    end

    class TagFilterList
      def self.parse(list)
        list.map do |value|
          Parsers::TagFilter.parse(value) unless value.nil?
        end
      end
    end

    class TagFilter
      def self.parse(map)
        data = Types::TagFilter.new
        data.key = map['Key']
        data.value = map['Value']
        data.type = map['Type']
        return data
      end
    end

    class EC2TagSet
      def self.parse(map)
        data = Types::EC2TagSet.new
        data.ec2_tag_set_list = (Parsers::EC2TagSetList.parse(map['ec2TagSetList']) unless map['ec2TagSetList'].nil?)
        return data
      end
    end

    class EC2TagSetList
      def self.parse(list)
        list.map do |value|
          Parsers::EC2TagFilterList.parse(value) unless value.nil?
        end
      end
    end

    class EC2TagFilterList
      def self.parse(list)
        list.map do |value|
          Parsers::EC2TagFilter.parse(value) unless value.nil?
        end
      end
    end

    class EC2TagFilter
      def self.parse(map)
        data = Types::EC2TagFilter.new
        data.key = map['Key']
        data.value = map['Value']
        data.type = map['Type']
        return data
      end
    end

    class LastDeploymentInfo
      def self.parse(map)
        data = Types::LastDeploymentInfo.new
        data.deployment_id = map['deploymentId']
        data.status = map['status']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.create_time = Time.at(map['createTime'].to_i) if map['createTime']
        return data
      end
    end

    class LoadBalancerInfo
      def self.parse(map)
        data = Types::LoadBalancerInfo.new
        data.elb_info_list = (Parsers::ELBInfoList.parse(map['elbInfoList']) unless map['elbInfoList'].nil?)
        data.target_group_info_list = (Parsers::TargetGroupInfoList.parse(map['targetGroupInfoList']) unless map['targetGroupInfoList'].nil?)
        data.target_group_pair_info_list = (Parsers::TargetGroupPairInfoList.parse(map['targetGroupPairInfoList']) unless map['targetGroupPairInfoList'].nil?)
        return data
      end
    end

    class TargetGroupPairInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::TargetGroupPairInfo.parse(value) unless value.nil?
        end
      end
    end

    class TargetGroupPairInfo
      def self.parse(map)
        data = Types::TargetGroupPairInfo.new
        data.target_groups = (Parsers::TargetGroupInfoList.parse(map['targetGroups']) unless map['targetGroups'].nil?)
        data.prod_traffic_route = (Parsers::TrafficRoute.parse(map['prodTrafficRoute']) unless map['prodTrafficRoute'].nil?)
        data.test_traffic_route = (Parsers::TrafficRoute.parse(map['testTrafficRoute']) unless map['testTrafficRoute'].nil?)
        return data
      end
    end

    class TrafficRoute
      def self.parse(map)
        data = Types::TrafficRoute.new
        data.listener_arns = (Parsers::ListenerArnList.parse(map['listenerArns']) unless map['listenerArns'].nil?)
        return data
      end
    end

    class ListenerArnList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TargetGroupInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::TargetGroupInfo.parse(value) unless value.nil?
        end
      end
    end

    class TargetGroupInfo
      def self.parse(map)
        data = Types::TargetGroupInfo.new
        data.name = map['name']
        return data
      end
    end

    class ELBInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::ELBInfo.parse(value) unless value.nil?
        end
      end
    end

    class ELBInfo
      def self.parse(map)
        data = Types::ELBInfo.new
        data.name = map['name']
        return data
      end
    end

    class BlueGreenDeploymentConfiguration
      def self.parse(map)
        data = Types::BlueGreenDeploymentConfiguration.new
        data.terminate_blue_instances_on_deployment_success = (Parsers::BlueInstanceTerminationOption.parse(map['terminateBlueInstancesOnDeploymentSuccess']) unless map['terminateBlueInstancesOnDeploymentSuccess'].nil?)
        data.deployment_ready_option = (Parsers::DeploymentReadyOption.parse(map['deploymentReadyOption']) unless map['deploymentReadyOption'].nil?)
        data.green_fleet_provisioning_option = (Parsers::GreenFleetProvisioningOption.parse(map['greenFleetProvisioningOption']) unless map['greenFleetProvisioningOption'].nil?)
        return data
      end
    end

    class GreenFleetProvisioningOption
      def self.parse(map)
        data = Types::GreenFleetProvisioningOption.new
        data.action = map['action']
        return data
      end
    end

    class DeploymentReadyOption
      def self.parse(map)
        data = Types::DeploymentReadyOption.new
        data.action_on_timeout = map['actionOnTimeout']
        data.wait_time_in_minutes = map['waitTimeInMinutes']
        return data
      end
    end

    class BlueInstanceTerminationOption
      def self.parse(map)
        data = Types::BlueInstanceTerminationOption.new
        data.action = map['action']
        data.termination_wait_time_in_minutes = map['terminationWaitTimeInMinutes']
        return data
      end
    end

    class DeploymentStyle
      def self.parse(map)
        data = Types::DeploymentStyle.new
        data.deployment_type = map['deploymentType']
        data.deployment_option = map['deploymentOption']
        return data
      end
    end

    class AutoRollbackConfiguration
      def self.parse(map)
        data = Types::AutoRollbackConfiguration.new
        data.enabled = map['enabled']
        data.events = (Parsers::AutoRollbackEventsList.parse(map['events']) unless map['events'].nil?)
        return data
      end
    end

    class AutoRollbackEventsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AlarmConfiguration
      def self.parse(map)
        data = Types::AlarmConfiguration.new
        data.enabled = map['enabled']
        data.ignore_poll_alarm_failure = map['ignorePollAlarmFailure']
        data.alarms = (Parsers::AlarmList.parse(map['alarms']) unless map['alarms'].nil?)
        return data
      end
    end

    class AlarmList
      def self.parse(list)
        list.map do |value|
          Parsers::Alarm.parse(value) unless value.nil?
        end
      end
    end

    class Alarm
      def self.parse(map)
        data = Types::Alarm.new
        data.name = map['name']
        return data
      end
    end

    class TriggerConfigList
      def self.parse(list)
        list.map do |value|
          Parsers::TriggerConfig.parse(value) unless value.nil?
        end
      end
    end

    class TriggerConfig
      def self.parse(map)
        data = Types::TriggerConfig.new
        data.trigger_name = map['triggerName']
        data.trigger_target_arn = map['triggerTargetArn']
        data.trigger_events = (Parsers::TriggerEventTypeList.parse(map['triggerEvents']) unless map['triggerEvents'].nil?)
        return data
      end
    end

    class TriggerEventTypeList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class AutoScalingGroupList
      def self.parse(list)
        list.map do |value|
          Parsers::AutoScalingGroup.parse(value) unless value.nil?
        end
      end
    end

    class AutoScalingGroup
      def self.parse(map)
        data = Types::AutoScalingGroup.new
        data.name = map['name']
        data.hook = map['hook']
        return data
      end
    end

    # Error Parser for DeploymentConfigDoesNotExistException
    class DeploymentConfigDoesNotExistException
      def self.parse(http_resp)
        data = Types::DeploymentConfigDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DeploymentGroupNameRequiredException
    class DeploymentGroupNameRequiredException
      def self.parse(http_resp)
        data = Types::DeploymentGroupNameRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidDeploymentGroupNameException
    class InvalidDeploymentGroupNameException
      def self.parse(http_resp)
        data = Types::InvalidDeploymentGroupNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for BatchGetDeploymentInstances
    class BatchGetDeploymentInstances
      def self.parse(http_resp)
        data = Types::BatchGetDeploymentInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instances_summary = (Parsers::InstanceSummaryList.parse(map['instancesSummary']) unless map['instancesSummary'].nil?)
        data.error_message = map['errorMessage']
        data
      end
    end

    class InstanceSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::InstanceSummary.parse(value) unless value.nil?
        end
      end
    end

    class InstanceSummary
      def self.parse(map)
        data = Types::InstanceSummary.new
        data.deployment_id = map['deploymentId']
        data.instance_id = map['instanceId']
        data.status = map['status']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.lifecycle_events = (Parsers::LifecycleEventList.parse(map['lifecycleEvents']) unless map['lifecycleEvents'].nil?)
        data.instance_type = map['instanceType']
        return data
      end
    end

    class LifecycleEventList
      def self.parse(list)
        list.map do |value|
          Parsers::LifecycleEvent.parse(value) unless value.nil?
        end
      end
    end

    class LifecycleEvent
      def self.parse(map)
        data = Types::LifecycleEvent.new
        data.lifecycle_event_name = map['lifecycleEventName']
        data.diagnostics = (Parsers::Diagnostics.parse(map['diagnostics']) unless map['diagnostics'].nil?)
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.end_time = Time.at(map['endTime'].to_i) if map['endTime']
        data.status = map['status']
        return data
      end
    end

    class Diagnostics
      def self.parse(map)
        data = Types::Diagnostics.new
        data.error_code = map['errorCode']
        data.script_name = map['scriptName']
        data.message = map['message']
        data.log_tail = map['logTail']
        return data
      end
    end

    # Error Parser for DeploymentDoesNotExistException
    class DeploymentDoesNotExistException
      def self.parse(http_resp)
        data = Types::DeploymentDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DeploymentIdRequiredException
    class DeploymentIdRequiredException
      def self.parse(http_resp)
        data = Types::DeploymentIdRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InstanceIdRequiredException
    class InstanceIdRequiredException
      def self.parse(http_resp)
        data = Types::InstanceIdRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidComputePlatformException
    class InvalidComputePlatformException
      def self.parse(http_resp)
        data = Types::InvalidComputePlatformException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidDeploymentIdException
    class InvalidDeploymentIdException
      def self.parse(http_resp)
        data = Types::InvalidDeploymentIdException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for BatchGetDeploymentTargets
    class BatchGetDeploymentTargets
      def self.parse(http_resp)
        data = Types::BatchGetDeploymentTargetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deployment_targets = (Parsers::DeploymentTargetList.parse(map['deploymentTargets']) unless map['deploymentTargets'].nil?)
        data
      end
    end

    class DeploymentTargetList
      def self.parse(list)
        list.map do |value|
          Parsers::DeploymentTarget.parse(value) unless value.nil?
        end
      end
    end

    class DeploymentTarget
      def self.parse(map)
        data = Types::DeploymentTarget.new
        data.deployment_target_type = map['deploymentTargetType']
        data.instance_target = (Parsers::InstanceTarget.parse(map['instanceTarget']) unless map['instanceTarget'].nil?)
        data.lambda_target = (Parsers::LambdaTarget.parse(map['lambdaTarget']) unless map['lambdaTarget'].nil?)
        data.ecs_target = (Parsers::ECSTarget.parse(map['ecsTarget']) unless map['ecsTarget'].nil?)
        data.cloud_formation_target = (Parsers::CloudFormationTarget.parse(map['cloudFormationTarget']) unless map['cloudFormationTarget'].nil?)
        return data
      end
    end

    class CloudFormationTarget
      def self.parse(map)
        data = Types::CloudFormationTarget.new
        data.deployment_id = map['deploymentId']
        data.target_id = map['targetId']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.lifecycle_events = (Parsers::LifecycleEventList.parse(map['lifecycleEvents']) unless map['lifecycleEvents'].nil?)
        data.status = map['status']
        data.resource_type = map['resourceType']
        data.target_version_weight = Hearth::NumberHelper.deserialize(map['targetVersionWeight'])
        return data
      end
    end

    class ECSTarget
      def self.parse(map)
        data = Types::ECSTarget.new
        data.deployment_id = map['deploymentId']
        data.target_id = map['targetId']
        data.target_arn = map['targetArn']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.lifecycle_events = (Parsers::LifecycleEventList.parse(map['lifecycleEvents']) unless map['lifecycleEvents'].nil?)
        data.status = map['status']
        data.task_sets_info = (Parsers::ECSTaskSetList.parse(map['taskSetsInfo']) unless map['taskSetsInfo'].nil?)
        return data
      end
    end

    class ECSTaskSetList
      def self.parse(list)
        list.map do |value|
          Parsers::ECSTaskSet.parse(value) unless value.nil?
        end
      end
    end

    class ECSTaskSet
      def self.parse(map)
        data = Types::ECSTaskSet.new
        data.identifer = map['identifer']
        data.desired_count = map['desiredCount']
        data.pending_count = map['pendingCount']
        data.running_count = map['runningCount']
        data.status = map['status']
        data.traffic_weight = Hearth::NumberHelper.deserialize(map['trafficWeight'])
        data.target_group = (Parsers::TargetGroupInfo.parse(map['targetGroup']) unless map['targetGroup'].nil?)
        data.task_set_label = map['taskSetLabel']
        return data
      end
    end

    class LambdaTarget
      def self.parse(map)
        data = Types::LambdaTarget.new
        data.deployment_id = map['deploymentId']
        data.target_id = map['targetId']
        data.target_arn = map['targetArn']
        data.status = map['status']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.lifecycle_events = (Parsers::LifecycleEventList.parse(map['lifecycleEvents']) unless map['lifecycleEvents'].nil?)
        data.lambda_function_info = (Parsers::LambdaFunctionInfo.parse(map['lambdaFunctionInfo']) unless map['lambdaFunctionInfo'].nil?)
        return data
      end
    end

    class LambdaFunctionInfo
      def self.parse(map)
        data = Types::LambdaFunctionInfo.new
        data.function_name = map['functionName']
        data.function_alias = map['functionAlias']
        data.current_version = map['currentVersion']
        data.target_version = map['targetVersion']
        data.target_version_weight = Hearth::NumberHelper.deserialize(map['targetVersionWeight'])
        return data
      end
    end

    class InstanceTarget
      def self.parse(map)
        data = Types::InstanceTarget.new
        data.deployment_id = map['deploymentId']
        data.target_id = map['targetId']
        data.target_arn = map['targetArn']
        data.status = map['status']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.lifecycle_events = (Parsers::LifecycleEventList.parse(map['lifecycleEvents']) unless map['lifecycleEvents'].nil?)
        data.instance_label = map['instanceLabel']
        return data
      end
    end

    # Error Parser for DeploymentNotStartedException
    class DeploymentNotStartedException
      def self.parse(http_resp)
        data = Types::DeploymentNotStartedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DeploymentTargetDoesNotExistException
    class DeploymentTargetDoesNotExistException
      def self.parse(http_resp)
        data = Types::DeploymentTargetDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DeploymentTargetIdRequiredException
    class DeploymentTargetIdRequiredException
      def self.parse(http_resp)
        data = Types::DeploymentTargetIdRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DeploymentTargetListSizeExceededException
    class DeploymentTargetListSizeExceededException
      def self.parse(http_resp)
        data = Types::DeploymentTargetListSizeExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InstanceDoesNotExistException
    class InstanceDoesNotExistException
      def self.parse(http_resp)
        data = Types::InstanceDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidDeploymentTargetIdException
    class InvalidDeploymentTargetIdException
      def self.parse(http_resp)
        data = Types::InvalidDeploymentTargetIdException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for BatchGetDeployments
    class BatchGetDeployments
      def self.parse(http_resp)
        data = Types::BatchGetDeploymentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deployments_info = (Parsers::DeploymentsInfoList.parse(map['deploymentsInfo']) unless map['deploymentsInfo'].nil?)
        data
      end
    end

    class DeploymentsInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::DeploymentInfo.parse(value) unless value.nil?
        end
      end
    end

    class DeploymentInfo
      def self.parse(map)
        data = Types::DeploymentInfo.new
        data.application_name = map['applicationName']
        data.deployment_group_name = map['deploymentGroupName']
        data.deployment_config_name = map['deploymentConfigName']
        data.deployment_id = map['deploymentId']
        data.previous_revision = (Parsers::RevisionLocation.parse(map['previousRevision']) unless map['previousRevision'].nil?)
        data.revision = (Parsers::RevisionLocation.parse(map['revision']) unless map['revision'].nil?)
        data.status = map['status']
        data.error_information = (Parsers::ErrorInformation.parse(map['errorInformation']) unless map['errorInformation'].nil?)
        data.create_time = Time.at(map['createTime'].to_i) if map['createTime']
        data.start_time = Time.at(map['startTime'].to_i) if map['startTime']
        data.complete_time = Time.at(map['completeTime'].to_i) if map['completeTime']
        data.deployment_overview = (Parsers::DeploymentOverview.parse(map['deploymentOverview']) unless map['deploymentOverview'].nil?)
        data.description = map['description']
        data.creator = map['creator']
        data.ignore_application_stop_failures = map['ignoreApplicationStopFailures']
        data.auto_rollback_configuration = (Parsers::AutoRollbackConfiguration.parse(map['autoRollbackConfiguration']) unless map['autoRollbackConfiguration'].nil?)
        data.update_outdated_instances_only = map['updateOutdatedInstancesOnly']
        data.rollback_info = (Parsers::RollbackInfo.parse(map['rollbackInfo']) unless map['rollbackInfo'].nil?)
        data.deployment_style = (Parsers::DeploymentStyle.parse(map['deploymentStyle']) unless map['deploymentStyle'].nil?)
        data.target_instances = (Parsers::TargetInstances.parse(map['targetInstances']) unless map['targetInstances'].nil?)
        data.instance_termination_wait_time_started = map['instanceTerminationWaitTimeStarted']
        data.blue_green_deployment_configuration = (Parsers::BlueGreenDeploymentConfiguration.parse(map['blueGreenDeploymentConfiguration']) unless map['blueGreenDeploymentConfiguration'].nil?)
        data.load_balancer_info = (Parsers::LoadBalancerInfo.parse(map['loadBalancerInfo']) unless map['loadBalancerInfo'].nil?)
        data.additional_deployment_status_info = map['additionalDeploymentStatusInfo']
        data.file_exists_behavior = map['fileExistsBehavior']
        data.deployment_status_messages = (Parsers::DeploymentStatusMessageList.parse(map['deploymentStatusMessages']) unless map['deploymentStatusMessages'].nil?)
        data.compute_platform = map['computePlatform']
        data.external_id = map['externalId']
        data.related_deployments = (Parsers::RelatedDeployments.parse(map['relatedDeployments']) unless map['relatedDeployments'].nil?)
        return data
      end
    end

    class RelatedDeployments
      def self.parse(map)
        data = Types::RelatedDeployments.new
        data.auto_update_outdated_instances_root_deployment_id = map['autoUpdateOutdatedInstancesRootDeploymentId']
        data.auto_update_outdated_instances_deployment_ids = (Parsers::DeploymentsList.parse(map['autoUpdateOutdatedInstancesDeploymentIds']) unless map['autoUpdateOutdatedInstancesDeploymentIds'].nil?)
        return data
      end
    end

    class DeploymentsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DeploymentStatusMessageList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TargetInstances
      def self.parse(map)
        data = Types::TargetInstances.new
        data.tag_filters = (Parsers::EC2TagFilterList.parse(map['tagFilters']) unless map['tagFilters'].nil?)
        data.auto_scaling_groups = (Parsers::AutoScalingGroupNameList.parse(map['autoScalingGroups']) unless map['autoScalingGroups'].nil?)
        data.ec2_tag_set = (Parsers::EC2TagSet.parse(map['ec2TagSet']) unless map['ec2TagSet'].nil?)
        return data
      end
    end

    class AutoScalingGroupNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class RollbackInfo
      def self.parse(map)
        data = Types::RollbackInfo.new
        data.rollback_deployment_id = map['rollbackDeploymentId']
        data.rollback_triggering_deployment_id = map['rollbackTriggeringDeploymentId']
        data.rollback_message = map['rollbackMessage']
        return data
      end
    end

    class DeploymentOverview
      def self.parse(map)
        data = Types::DeploymentOverview.new
        data.pending = map['Pending']
        data.in_progress = map['InProgress']
        data.succeeded = map['Succeeded']
        data.failed = map['Failed']
        data.skipped = map['Skipped']
        data.ready = map['Ready']
        return data
      end
    end

    class ErrorInformation
      def self.parse(map)
        data = Types::ErrorInformation.new
        data.code = map['code']
        data.message = map['message']
        return data
      end
    end

    # Operation Parser for BatchGetOnPremisesInstances
    class BatchGetOnPremisesInstances
      def self.parse(http_resp)
        data = Types::BatchGetOnPremisesInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_infos = (Parsers::InstanceInfoList.parse(map['instanceInfos']) unless map['instanceInfos'].nil?)
        data
      end
    end

    class InstanceInfoList
      def self.parse(list)
        list.map do |value|
          Parsers::InstanceInfo.parse(value) unless value.nil?
        end
      end
    end

    class InstanceInfo
      def self.parse(map)
        data = Types::InstanceInfo.new
        data.instance_name = map['instanceName']
        data.iam_session_arn = map['iamSessionArn']
        data.iam_user_arn = map['iamUserArn']
        data.instance_arn = map['instanceArn']
        data.register_time = Time.at(map['registerTime'].to_i) if map['registerTime']
        data.deregister_time = Time.at(map['deregisterTime'].to_i) if map['deregisterTime']
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for ContinueDeployment
    class ContinueDeployment
      def self.parse(http_resp)
        data = Types::ContinueDeploymentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for DeploymentAlreadyCompletedException
    class DeploymentAlreadyCompletedException
      def self.parse(http_resp)
        data = Types::DeploymentAlreadyCompletedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DeploymentIsNotInReadyStateException
    class DeploymentIsNotInReadyStateException
      def self.parse(http_resp)
        data = Types::DeploymentIsNotInReadyStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidDeploymentStatusException
    class InvalidDeploymentStatusException
      def self.parse(http_resp)
        data = Types::InvalidDeploymentStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidDeploymentWaitTypeException
    class InvalidDeploymentWaitTypeException
      def self.parse(http_resp)
        data = Types::InvalidDeploymentWaitTypeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for UnsupportedActionForDeploymentTypeException
    class UnsupportedActionForDeploymentTypeException
      def self.parse(http_resp)
        data = Types::UnsupportedActionForDeploymentTypeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateApplication
    class CreateApplication
      def self.parse(http_resp)
        data = Types::CreateApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_id = map['applicationId']
        data
      end
    end

    # Error Parser for ApplicationAlreadyExistsException
    class ApplicationAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ApplicationAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ApplicationLimitExceededException
    class ApplicationLimitExceededException
      def self.parse(http_resp)
        data = Types::ApplicationLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTagsToAddException
    class InvalidTagsToAddException
      def self.parse(http_resp)
        data = Types::InvalidTagsToAddException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateDeployment
    class CreateDeployment
      def self.parse(http_resp)
        data = Types::CreateDeploymentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deployment_id = map['deploymentId']
        data
      end
    end

    # Error Parser for DeploymentGroupDoesNotExistException
    class DeploymentGroupDoesNotExistException
      def self.parse(http_resp)
        data = Types::DeploymentGroupDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DeploymentLimitExceededException
    class DeploymentLimitExceededException
      def self.parse(http_resp)
        data = Types::DeploymentLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DescriptionTooLongException
    class DescriptionTooLongException
      def self.parse(http_resp)
        data = Types::DescriptionTooLongException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidAutoRollbackConfigException
    class InvalidAutoRollbackConfigException
      def self.parse(http_resp)
        data = Types::InvalidAutoRollbackConfigException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidAutoScalingGroupException
    class InvalidAutoScalingGroupException
      def self.parse(http_resp)
        data = Types::InvalidAutoScalingGroupException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidDeploymentConfigNameException
    class InvalidDeploymentConfigNameException
      def self.parse(http_resp)
        data = Types::InvalidDeploymentConfigNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidFileExistsBehaviorException
    class InvalidFileExistsBehaviorException
      def self.parse(http_resp)
        data = Types::InvalidFileExistsBehaviorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidGitHubAccountTokenException
    class InvalidGitHubAccountTokenException
      def self.parse(http_resp)
        data = Types::InvalidGitHubAccountTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidIgnoreApplicationStopFailuresValueException
    class InvalidIgnoreApplicationStopFailuresValueException
      def self.parse(http_resp)
        data = Types::InvalidIgnoreApplicationStopFailuresValueException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidLoadBalancerInfoException
    class InvalidLoadBalancerInfoException
      def self.parse(http_resp)
        data = Types::InvalidLoadBalancerInfoException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidRoleException
    class InvalidRoleException
      def self.parse(http_resp)
        data = Types::InvalidRoleException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTargetInstancesException
    class InvalidTargetInstancesException
      def self.parse(http_resp)
        data = Types::InvalidTargetInstancesException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTrafficRoutingConfigurationException
    class InvalidTrafficRoutingConfigurationException
      def self.parse(http_resp)
        data = Types::InvalidTrafficRoutingConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidUpdateOutdatedInstancesOnlyValueException
    class InvalidUpdateOutdatedInstancesOnlyValueException
      def self.parse(http_resp)
        data = Types::InvalidUpdateOutdatedInstancesOnlyValueException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RevisionDoesNotExistException
    class RevisionDoesNotExistException
      def self.parse(http_resp)
        data = Types::RevisionDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateDeploymentConfig
    class CreateDeploymentConfig
      def self.parse(http_resp)
        data = Types::CreateDeploymentConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deployment_config_id = map['deploymentConfigId']
        data
      end
    end

    # Error Parser for DeploymentConfigAlreadyExistsException
    class DeploymentConfigAlreadyExistsException
      def self.parse(http_resp)
        data = Types::DeploymentConfigAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DeploymentConfigLimitExceededException
    class DeploymentConfigLimitExceededException
      def self.parse(http_resp)
        data = Types::DeploymentConfigLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DeploymentConfigNameRequiredException
    class DeploymentConfigNameRequiredException
      def self.parse(http_resp)
        data = Types::DeploymentConfigNameRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidMinimumHealthyHostValueException
    class InvalidMinimumHealthyHostValueException
      def self.parse(http_resp)
        data = Types::InvalidMinimumHealthyHostValueException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateDeploymentGroup
    class CreateDeploymentGroup
      def self.parse(http_resp)
        data = Types::CreateDeploymentGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deployment_group_id = map['deploymentGroupId']
        data
      end
    end

    # Error Parser for AlarmsLimitExceededException
    class AlarmsLimitExceededException
      def self.parse(http_resp)
        data = Types::AlarmsLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DeploymentGroupAlreadyExistsException
    class DeploymentGroupAlreadyExistsException
      def self.parse(http_resp)
        data = Types::DeploymentGroupAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DeploymentGroupLimitExceededException
    class DeploymentGroupLimitExceededException
      def self.parse(http_resp)
        data = Types::DeploymentGroupLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ECSServiceMappingLimitExceededException
    class ECSServiceMappingLimitExceededException
      def self.parse(http_resp)
        data = Types::ECSServiceMappingLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidAlarmConfigException
    class InvalidAlarmConfigException
      def self.parse(http_resp)
        data = Types::InvalidAlarmConfigException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidBlueGreenDeploymentConfigurationException
    class InvalidBlueGreenDeploymentConfigurationException
      def self.parse(http_resp)
        data = Types::InvalidBlueGreenDeploymentConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidDeploymentStyleException
    class InvalidDeploymentStyleException
      def self.parse(http_resp)
        data = Types::InvalidDeploymentStyleException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidEC2TagCombinationException
    class InvalidEC2TagCombinationException
      def self.parse(http_resp)
        data = Types::InvalidEC2TagCombinationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidEC2TagException
    class InvalidEC2TagException
      def self.parse(http_resp)
        data = Types::InvalidEC2TagException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidECSServiceException
    class InvalidECSServiceException
      def self.parse(http_resp)
        data = Types::InvalidECSServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidOnPremisesTagCombinationException
    class InvalidOnPremisesTagCombinationException
      def self.parse(http_resp)
        data = Types::InvalidOnPremisesTagCombinationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTargetGroupPairException
    class InvalidTargetGroupPairException
      def self.parse(http_resp)
        data = Types::InvalidTargetGroupPairException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTriggerConfigException
    class InvalidTriggerConfigException
      def self.parse(http_resp)
        data = Types::InvalidTriggerConfigException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LifecycleHookLimitExceededException
    class LifecycleHookLimitExceededException
      def self.parse(http_resp)
        data = Types::LifecycleHookLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RoleRequiredException
    class RoleRequiredException
      def self.parse(http_resp)
        data = Types::RoleRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TagSetListLimitExceededException
    class TagSetListLimitExceededException
      def self.parse(http_resp)
        data = Types::TagSetListLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TriggerTargetsLimitExceededException
    class TriggerTargetsLimitExceededException
      def self.parse(http_resp)
        data = Types::TriggerTargetsLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteApplication
    class DeleteApplication
      def self.parse(http_resp)
        data = Types::DeleteApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteDeploymentConfig
    class DeleteDeploymentConfig
      def self.parse(http_resp)
        data = Types::DeleteDeploymentConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for DeploymentConfigInUseException
    class DeploymentConfigInUseException
      def self.parse(http_resp)
        data = Types::DeploymentConfigInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidOperationException
    class InvalidOperationException
      def self.parse(http_resp)
        data = Types::InvalidOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteDeploymentGroup
    class DeleteDeploymentGroup
      def self.parse(http_resp)
        data = Types::DeleteDeploymentGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hooks_not_cleaned_up = (Parsers::AutoScalingGroupList.parse(map['hooksNotCleanedUp']) unless map['hooksNotCleanedUp'].nil?)
        data
      end
    end

    # Operation Parser for DeleteGitHubAccountToken
    class DeleteGitHubAccountToken
      def self.parse(http_resp)
        data = Types::DeleteGitHubAccountTokenOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.token_name = map['tokenName']
        data
      end
    end

    # Error Parser for GitHubAccountTokenDoesNotExistException
    class GitHubAccountTokenDoesNotExistException
      def self.parse(http_resp)
        data = Types::GitHubAccountTokenDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for GitHubAccountTokenNameRequiredException
    class GitHubAccountTokenNameRequiredException
      def self.parse(http_resp)
        data = Types::GitHubAccountTokenNameRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidGitHubAccountTokenNameException
    class InvalidGitHubAccountTokenNameException
      def self.parse(http_resp)
        data = Types::InvalidGitHubAccountTokenNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for OperationNotSupportedException
    class OperationNotSupportedException
      def self.parse(http_resp)
        data = Types::OperationNotSupportedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceValidationException
    class ResourceValidationException
      def self.parse(http_resp)
        data = Types::ResourceValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteResourcesByExternalId
    class DeleteResourcesByExternalId
      def self.parse(http_resp)
        data = Types::DeleteResourcesByExternalIdOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeregisterOnPremisesInstance
    class DeregisterOnPremisesInstance
      def self.parse(http_resp)
        data = Types::DeregisterOnPremisesInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetApplication
    class GetApplication
      def self.parse(http_resp)
        data = Types::GetApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application = (Parsers::ApplicationInfo.parse(map['application']) unless map['application'].nil?)
        data
      end
    end

    # Operation Parser for GetApplicationRevision
    class GetApplicationRevision
      def self.parse(http_resp)
        data = Types::GetApplicationRevisionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_name = map['applicationName']
        data.revision = (Parsers::RevisionLocation.parse(map['revision']) unless map['revision'].nil?)
        data.revision_info = (Parsers::GenericRevisionInfo.parse(map['revisionInfo']) unless map['revisionInfo'].nil?)
        data
      end
    end

    # Operation Parser for GetDeployment
    class GetDeployment
      def self.parse(http_resp)
        data = Types::GetDeploymentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deployment_info = (Parsers::DeploymentInfo.parse(map['deploymentInfo']) unless map['deploymentInfo'].nil?)
        data
      end
    end

    # Operation Parser for GetDeploymentConfig
    class GetDeploymentConfig
      def self.parse(http_resp)
        data = Types::GetDeploymentConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deployment_config_info = (Parsers::DeploymentConfigInfo.parse(map['deploymentConfigInfo']) unless map['deploymentConfigInfo'].nil?)
        data
      end
    end

    class DeploymentConfigInfo
      def self.parse(map)
        data = Types::DeploymentConfigInfo.new
        data.deployment_config_id = map['deploymentConfigId']
        data.deployment_config_name = map['deploymentConfigName']
        data.minimum_healthy_hosts = (Parsers::MinimumHealthyHosts.parse(map['minimumHealthyHosts']) unless map['minimumHealthyHosts'].nil?)
        data.create_time = Time.at(map['createTime'].to_i) if map['createTime']
        data.compute_platform = map['computePlatform']
        data.traffic_routing_config = (Parsers::TrafficRoutingConfig.parse(map['trafficRoutingConfig']) unless map['trafficRoutingConfig'].nil?)
        return data
      end
    end

    class TrafficRoutingConfig
      def self.parse(map)
        data = Types::TrafficRoutingConfig.new
        data.type = map['type']
        data.time_based_canary = (Parsers::TimeBasedCanary.parse(map['timeBasedCanary']) unless map['timeBasedCanary'].nil?)
        data.time_based_linear = (Parsers::TimeBasedLinear.parse(map['timeBasedLinear']) unless map['timeBasedLinear'].nil?)
        return data
      end
    end

    class TimeBasedLinear
      def self.parse(map)
        data = Types::TimeBasedLinear.new
        data.linear_percentage = map['linearPercentage']
        data.linear_interval = map['linearInterval']
        return data
      end
    end

    class TimeBasedCanary
      def self.parse(map)
        data = Types::TimeBasedCanary.new
        data.canary_percentage = map['canaryPercentage']
        data.canary_interval = map['canaryInterval']
        return data
      end
    end

    class MinimumHealthyHosts
      def self.parse(map)
        data = Types::MinimumHealthyHosts.new
        data.type = map['type']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for GetDeploymentGroup
    class GetDeploymentGroup
      def self.parse(http_resp)
        data = Types::GetDeploymentGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deployment_group_info = (Parsers::DeploymentGroupInfo.parse(map['deploymentGroupInfo']) unless map['deploymentGroupInfo'].nil?)
        data
      end
    end

    # Operation Parser for GetDeploymentInstance
    class GetDeploymentInstance
      def self.parse(http_resp)
        data = Types::GetDeploymentInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_summary = (Parsers::InstanceSummary.parse(map['instanceSummary']) unless map['instanceSummary'].nil?)
        data
      end
    end

    # Operation Parser for GetDeploymentTarget
    class GetDeploymentTarget
      def self.parse(http_resp)
        data = Types::GetDeploymentTargetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deployment_target = (Parsers::DeploymentTarget.parse(map['deploymentTarget']) unless map['deploymentTarget'].nil?)
        data
      end
    end

    # Operation Parser for GetOnPremisesInstance
    class GetOnPremisesInstance
      def self.parse(http_resp)
        data = Types::GetOnPremisesInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_info = (Parsers::InstanceInfo.parse(map['instanceInfo']) unless map['instanceInfo'].nil?)
        data
      end
    end

    # Operation Parser for ListApplicationRevisions
    class ListApplicationRevisions
      def self.parse(http_resp)
        data = Types::ListApplicationRevisionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.revisions = (Parsers::RevisionLocationList.parse(map['revisions']) unless map['revisions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RevisionLocationList
      def self.parse(list)
        list.map do |value|
          Parsers::RevisionLocation.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for BucketNameFilterRequiredException
    class BucketNameFilterRequiredException
      def self.parse(http_resp)
        data = Types::BucketNameFilterRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidBucketNameFilterException
    class InvalidBucketNameFilterException
      def self.parse(http_resp)
        data = Types::InvalidBucketNameFilterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidDeployedStateFilterException
    class InvalidDeployedStateFilterException
      def self.parse(http_resp)
        data = Types::InvalidDeployedStateFilterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidKeyPrefixFilterException
    class InvalidKeyPrefixFilterException
      def self.parse(http_resp)
        data = Types::InvalidKeyPrefixFilterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidSortByException
    class InvalidSortByException
      def self.parse(http_resp)
        data = Types::InvalidSortByException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidSortOrderException
    class InvalidSortOrderException
      def self.parse(http_resp)
        data = Types::InvalidSortOrderException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListApplications
    class ListApplications
      def self.parse(http_resp)
        data = Types::ListApplicationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.applications = (Parsers::ApplicationsList.parse(map['applications']) unless map['applications'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ApplicationsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListDeploymentConfigs
    class ListDeploymentConfigs
      def self.parse(http_resp)
        data = Types::ListDeploymentConfigsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deployment_configs_list = (Parsers::DeploymentConfigsList.parse(map['deploymentConfigsList']) unless map['deploymentConfigsList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class DeploymentConfigsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListDeploymentGroups
    class ListDeploymentGroups
      def self.parse(http_resp)
        data = Types::ListDeploymentGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_name = map['applicationName']
        data.deployment_groups = (Parsers::DeploymentGroupsList.parse(map['deploymentGroups']) unless map['deploymentGroups'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListDeploymentInstances
    class ListDeploymentInstances
      def self.parse(http_resp)
        data = Types::ListDeploymentInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instances_list = (Parsers::InstancesList.parse(map['instancesList']) unless map['instancesList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class InstancesList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidDeploymentInstanceTypeException
    class InvalidDeploymentInstanceTypeException
      def self.parse(http_resp)
        data = Types::InvalidDeploymentInstanceTypeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidInstanceStatusException
    class InvalidInstanceStatusException
      def self.parse(http_resp)
        data = Types::InvalidInstanceStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidInstanceTypeException
    class InvalidInstanceTypeException
      def self.parse(http_resp)
        data = Types::InvalidInstanceTypeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTargetFilterNameException
    class InvalidTargetFilterNameException
      def self.parse(http_resp)
        data = Types::InvalidTargetFilterNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListDeploymentTargets
    class ListDeploymentTargets
      def self.parse(http_resp)
        data = Types::ListDeploymentTargetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.target_ids = (Parsers::TargetIdList.parse(map['targetIds']) unless map['targetIds'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TargetIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListDeployments
    class ListDeployments
      def self.parse(http_resp)
        data = Types::ListDeploymentsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deployments = (Parsers::DeploymentsList.parse(map['deployments']) unless map['deployments'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Error Parser for InvalidExternalIdException
    class InvalidExternalIdException
      def self.parse(http_resp)
        data = Types::InvalidExternalIdException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTimeRangeException
    class InvalidTimeRangeException
      def self.parse(http_resp)
        data = Types::InvalidTimeRangeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListGitHubAccountTokenNames
    class ListGitHubAccountTokenNames
      def self.parse(http_resp)
        data = Types::ListGitHubAccountTokenNamesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.token_name_list = (Parsers::GitHubAccountTokenNameList.parse(map['tokenNameList']) unless map['tokenNameList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class GitHubAccountTokenNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListOnPremisesInstances
    class ListOnPremisesInstances
      def self.parse(http_resp)
        data = Types::ListOnPremisesInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_names = (Parsers::InstanceNameList.parse(map['instanceNames']) unless map['instanceNames'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class InstanceNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidRegistrationStatusException
    class InvalidRegistrationStatusException
      def self.parse(http_resp)
        data = Types::InvalidRegistrationStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTagFilterException
    class InvalidTagFilterException
      def self.parse(http_resp)
        data = Types::InvalidTagFilterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Error Parser for ArnNotSupportedException
    class ArnNotSupportedException
      def self.parse(http_resp)
        data = Types::ArnNotSupportedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidArnException
    class InvalidArnException
      def self.parse(http_resp)
        data = Types::InvalidArnException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceArnRequiredException
    class ResourceArnRequiredException
      def self.parse(http_resp)
        data = Types::ResourceArnRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutLifecycleEventHookExecutionStatus
    class PutLifecycleEventHookExecutionStatus
      def self.parse(http_resp)
        data = Types::PutLifecycleEventHookExecutionStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.lifecycle_event_hook_execution_id = map['lifecycleEventHookExecutionId']
        data
      end
    end

    # Error Parser for InvalidLifecycleEventHookExecutionIdException
    class InvalidLifecycleEventHookExecutionIdException
      def self.parse(http_resp)
        data = Types::InvalidLifecycleEventHookExecutionIdException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidLifecycleEventHookExecutionStatusException
    class InvalidLifecycleEventHookExecutionStatusException
      def self.parse(http_resp)
        data = Types::InvalidLifecycleEventHookExecutionStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LifecycleEventAlreadyCompletedException
    class LifecycleEventAlreadyCompletedException
      def self.parse(http_resp)
        data = Types::LifecycleEventAlreadyCompletedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for RegisterApplicationRevision
    class RegisterApplicationRevision
      def self.parse(http_resp)
        data = Types::RegisterApplicationRevisionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RegisterOnPremisesInstance
    class RegisterOnPremisesInstance
      def self.parse(http_resp)
        data = Types::RegisterOnPremisesInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for IamArnRequiredException
    class IamArnRequiredException
      def self.parse(http_resp)
        data = Types::IamArnRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for IamSessionArnAlreadyRegisteredException
    class IamSessionArnAlreadyRegisteredException
      def self.parse(http_resp)
        data = Types::IamSessionArnAlreadyRegisteredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for IamUserArnAlreadyRegisteredException
    class IamUserArnAlreadyRegisteredException
      def self.parse(http_resp)
        data = Types::IamUserArnAlreadyRegisteredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for IamUserArnRequiredException
    class IamUserArnRequiredException
      def self.parse(http_resp)
        data = Types::IamUserArnRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InstanceNameAlreadyRegisteredException
    class InstanceNameAlreadyRegisteredException
      def self.parse(http_resp)
        data = Types::InstanceNameAlreadyRegisteredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidIamSessionArnException
    class InvalidIamSessionArnException
      def self.parse(http_resp)
        data = Types::InvalidIamSessionArnException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidIamUserArnException
    class InvalidIamUserArnException
      def self.parse(http_resp)
        data = Types::InvalidIamUserArnException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MultipleIamArnsProvidedException
    class MultipleIamArnsProvidedException
      def self.parse(http_resp)
        data = Types::MultipleIamArnsProvidedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for RemoveTagsFromOnPremisesInstances
    class RemoveTagsFromOnPremisesInstances
      def self.parse(http_resp)
        data = Types::RemoveTagsFromOnPremisesInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SkipWaitTimeForInstanceTermination
    class SkipWaitTimeForInstanceTermination
      def self.parse(http_resp)
        data = Types::SkipWaitTimeForInstanceTerminationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopDeployment
    class StopDeployment
      def self.parse(http_resp)
        data = Types::StopDeploymentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['status']
        data.status_message = map['statusMessage']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateApplication
    class UpdateApplication
      def self.parse(http_resp)
        data = Types::UpdateApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDeploymentGroup
    class UpdateDeploymentGroup
      def self.parse(http_resp)
        data = Types::UpdateDeploymentGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.hooks_not_cleaned_up = (Parsers::AutoScalingGroupList.parse(map['hooksNotCleanedUp']) unless map['hooksNotCleanedUp'].nil?)
        data
      end
    end
  end
end
