# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeDeploy
  module Builders

    # Operation Builder for AddTagsToOnPremisesInstances
    class AddTagsToOnPremisesInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.AddTagsToOnPremisesInstances'
        data = {}
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['instanceNames'] = Builders::InstanceNameList.build(input[:instance_names]) unless input[:instance_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InstanceNameList
    class InstanceNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for BatchGetApplicationRevisions
    class BatchGetApplicationRevisions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.BatchGetApplicationRevisions'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        data['revisions'] = Builders::RevisionLocationList.build(input[:revisions]) unless input[:revisions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RevisionLocationList
    class RevisionLocationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RevisionLocation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RevisionLocation
    class RevisionLocation
      def self.build(input)
        data = {}
        data['revisionType'] = input[:revision_type] unless input[:revision_type].nil?
        data['s3Location'] = Builders::S3Location.build(input[:s3_location]) unless input[:s3_location].nil?
        data['gitHubLocation'] = Builders::GitHubLocation.build(input[:git_hub_location]) unless input[:git_hub_location].nil?
        data['string'] = Builders::RawString.build(input[:string]) unless input[:string].nil?
        data['appSpecContent'] = Builders::AppSpecContent.build(input[:app_spec_content]) unless input[:app_spec_content].nil?
        data
      end
    end

    # Structure Builder for AppSpecContent
    class AppSpecContent
      def self.build(input)
        data = {}
        data['content'] = input[:content] unless input[:content].nil?
        data['sha256'] = input[:sha256] unless input[:sha256].nil?
        data
      end
    end

    # Structure Builder for RawString
    class RawString
      def self.build(input)
        data = {}
        data['content'] = input[:content] unless input[:content].nil?
        data['sha256'] = input[:sha256] unless input[:sha256].nil?
        data
      end
    end

    # Structure Builder for GitHubLocation
    class GitHubLocation
      def self.build(input)
        data = {}
        data['repository'] = input[:repository] unless input[:repository].nil?
        data['commitId'] = input[:commit_id] unless input[:commit_id].nil?
        data
      end
    end

    # Structure Builder for S3Location
    class S3Location
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['bundleType'] = input[:bundle_type] unless input[:bundle_type].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data['eTag'] = input[:e_tag] unless input[:e_tag].nil?
        data
      end
    end

    # Operation Builder for BatchGetApplications
    class BatchGetApplications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.BatchGetApplications'
        data = {}
        data['applicationNames'] = Builders::ApplicationsList.build(input[:application_names]) unless input[:application_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ApplicationsList
    class ApplicationsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetDeploymentGroups
    class BatchGetDeploymentGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.BatchGetDeploymentGroups'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        data['deploymentGroupNames'] = Builders::DeploymentGroupsList.build(input[:deployment_group_names]) unless input[:deployment_group_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DeploymentGroupsList
    class DeploymentGroupsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetDeploymentInstances
    class BatchGetDeploymentInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.BatchGetDeploymentInstances'
        data = {}
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['instanceIds'] = Builders::InstancesList.build(input[:instance_ids]) unless input[:instance_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InstancesList
    class InstancesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetDeploymentTargets
    class BatchGetDeploymentTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.BatchGetDeploymentTargets'
        data = {}
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['targetIds'] = Builders::TargetIdList.build(input[:target_ids]) unless input[:target_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TargetIdList
    class TargetIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetDeployments
    class BatchGetDeployments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.BatchGetDeployments'
        data = {}
        data['deploymentIds'] = Builders::DeploymentsList.build(input[:deployment_ids]) unless input[:deployment_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DeploymentsList
    class DeploymentsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetOnPremisesInstances
    class BatchGetOnPremisesInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.BatchGetOnPremisesInstances'
        data = {}
        data['instanceNames'] = Builders::InstanceNameList.build(input[:instance_names]) unless input[:instance_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ContinueDeployment
    class ContinueDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.ContinueDeployment'
        data = {}
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['deploymentWaitType'] = input[:deployment_wait_type] unless input[:deployment_wait_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateApplication
    class CreateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.CreateApplication'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        data['computePlatform'] = input[:compute_platform] unless input[:compute_platform].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDeployment
    class CreateDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.CreateDeployment'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        data['deploymentGroupName'] = input[:deployment_group_name] unless input[:deployment_group_name].nil?
        data['revision'] = Builders::RevisionLocation.build(input[:revision]) unless input[:revision].nil?
        data['deploymentConfigName'] = input[:deployment_config_name] unless input[:deployment_config_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['ignoreApplicationStopFailures'] = input[:ignore_application_stop_failures] unless input[:ignore_application_stop_failures].nil?
        data['targetInstances'] = Builders::TargetInstances.build(input[:target_instances]) unless input[:target_instances].nil?
        data['autoRollbackConfiguration'] = Builders::AutoRollbackConfiguration.build(input[:auto_rollback_configuration]) unless input[:auto_rollback_configuration].nil?
        data['updateOutdatedInstancesOnly'] = input[:update_outdated_instances_only] unless input[:update_outdated_instances_only].nil?
        data['fileExistsBehavior'] = input[:file_exists_behavior] unless input[:file_exists_behavior].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AutoRollbackConfiguration
    class AutoRollbackConfiguration
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['events'] = Builders::AutoRollbackEventsList.build(input[:events]) unless input[:events].nil?
        data
      end
    end

    # List Builder for AutoRollbackEventsList
    class AutoRollbackEventsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TargetInstances
    class TargetInstances
      def self.build(input)
        data = {}
        data['tagFilters'] = Builders::EC2TagFilterList.build(input[:tag_filters]) unless input[:tag_filters].nil?
        data['autoScalingGroups'] = Builders::AutoScalingGroupNameList.build(input[:auto_scaling_groups]) unless input[:auto_scaling_groups].nil?
        data['ec2TagSet'] = Builders::EC2TagSet.build(input[:ec2_tag_set]) unless input[:ec2_tag_set].nil?
        data
      end
    end

    # Structure Builder for EC2TagSet
    class EC2TagSet
      def self.build(input)
        data = {}
        data['ec2TagSetList'] = Builders::EC2TagSetList.build(input[:ec2_tag_set_list]) unless input[:ec2_tag_set_list].nil?
        data
      end
    end

    # List Builder for EC2TagSetList
    class EC2TagSetList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EC2TagFilterList.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for EC2TagFilterList
    class EC2TagFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EC2TagFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EC2TagFilter
    class EC2TagFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for AutoScalingGroupNameList
    class AutoScalingGroupNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDeploymentConfig
    class CreateDeploymentConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.CreateDeploymentConfig'
        data = {}
        data['deploymentConfigName'] = input[:deployment_config_name] unless input[:deployment_config_name].nil?
        data['minimumHealthyHosts'] = Builders::MinimumHealthyHosts.build(input[:minimum_healthy_hosts]) unless input[:minimum_healthy_hosts].nil?
        data['trafficRoutingConfig'] = Builders::TrafficRoutingConfig.build(input[:traffic_routing_config]) unless input[:traffic_routing_config].nil?
        data['computePlatform'] = input[:compute_platform] unless input[:compute_platform].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TrafficRoutingConfig
    class TrafficRoutingConfig
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['timeBasedCanary'] = Builders::TimeBasedCanary.build(input[:time_based_canary]) unless input[:time_based_canary].nil?
        data['timeBasedLinear'] = Builders::TimeBasedLinear.build(input[:time_based_linear]) unless input[:time_based_linear].nil?
        data
      end
    end

    # Structure Builder for TimeBasedLinear
    class TimeBasedLinear
      def self.build(input)
        data = {}
        data['linearPercentage'] = input[:linear_percentage] unless input[:linear_percentage].nil?
        data['linearInterval'] = input[:linear_interval] unless input[:linear_interval].nil?
        data
      end
    end

    # Structure Builder for TimeBasedCanary
    class TimeBasedCanary
      def self.build(input)
        data = {}
        data['canaryPercentage'] = input[:canary_percentage] unless input[:canary_percentage].nil?
        data['canaryInterval'] = input[:canary_interval] unless input[:canary_interval].nil?
        data
      end
    end

    # Structure Builder for MinimumHealthyHosts
    class MinimumHealthyHosts
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateDeploymentGroup
    class CreateDeploymentGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.CreateDeploymentGroup'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        data['deploymentGroupName'] = input[:deployment_group_name] unless input[:deployment_group_name].nil?
        data['deploymentConfigName'] = input[:deployment_config_name] unless input[:deployment_config_name].nil?
        data['ec2TagFilters'] = Builders::EC2TagFilterList.build(input[:ec2_tag_filters]) unless input[:ec2_tag_filters].nil?
        data['onPremisesInstanceTagFilters'] = Builders::TagFilterList.build(input[:on_premises_instance_tag_filters]) unless input[:on_premises_instance_tag_filters].nil?
        data['autoScalingGroups'] = Builders::AutoScalingGroupNameList.build(input[:auto_scaling_groups]) unless input[:auto_scaling_groups].nil?
        data['serviceRoleArn'] = input[:service_role_arn] unless input[:service_role_arn].nil?
        data['triggerConfigurations'] = Builders::TriggerConfigList.build(input[:trigger_configurations]) unless input[:trigger_configurations].nil?
        data['alarmConfiguration'] = Builders::AlarmConfiguration.build(input[:alarm_configuration]) unless input[:alarm_configuration].nil?
        data['autoRollbackConfiguration'] = Builders::AutoRollbackConfiguration.build(input[:auto_rollback_configuration]) unless input[:auto_rollback_configuration].nil?
        data['outdatedInstancesStrategy'] = input[:outdated_instances_strategy] unless input[:outdated_instances_strategy].nil?
        data['deploymentStyle'] = Builders::DeploymentStyle.build(input[:deployment_style]) unless input[:deployment_style].nil?
        data['blueGreenDeploymentConfiguration'] = Builders::BlueGreenDeploymentConfiguration.build(input[:blue_green_deployment_configuration]) unless input[:blue_green_deployment_configuration].nil?
        data['loadBalancerInfo'] = Builders::LoadBalancerInfo.build(input[:load_balancer_info]) unless input[:load_balancer_info].nil?
        data['ec2TagSet'] = Builders::EC2TagSet.build(input[:ec2_tag_set]) unless input[:ec2_tag_set].nil?
        data['ecsServices'] = Builders::ECSServiceList.build(input[:ecs_services]) unless input[:ecs_services].nil?
        data['onPremisesTagSet'] = Builders::OnPremisesTagSet.build(input[:on_premises_tag_set]) unless input[:on_premises_tag_set].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for OnPremisesTagSet
    class OnPremisesTagSet
      def self.build(input)
        data = {}
        data['onPremisesTagSetList'] = Builders::OnPremisesTagSetList.build(input[:on_premises_tag_set_list]) unless input[:on_premises_tag_set_list].nil?
        data
      end
    end

    # List Builder for OnPremisesTagSetList
    class OnPremisesTagSetList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TagFilterList.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for TagFilterList
    class TagFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TagFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TagFilter
    class TagFilter
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # List Builder for ECSServiceList
    class ECSServiceList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ECSService.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ECSService
    class ECSService
      def self.build(input)
        data = {}
        data['serviceName'] = input[:service_name] unless input[:service_name].nil?
        data['clusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data
      end
    end

    # Structure Builder for LoadBalancerInfo
    class LoadBalancerInfo
      def self.build(input)
        data = {}
        data['elbInfoList'] = Builders::ELBInfoList.build(input[:elb_info_list]) unless input[:elb_info_list].nil?
        data['targetGroupInfoList'] = Builders::TargetGroupInfoList.build(input[:target_group_info_list]) unless input[:target_group_info_list].nil?
        data['targetGroupPairInfoList'] = Builders::TargetGroupPairInfoList.build(input[:target_group_pair_info_list]) unless input[:target_group_pair_info_list].nil?
        data
      end
    end

    # List Builder for TargetGroupPairInfoList
    class TargetGroupPairInfoList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TargetGroupPairInfo.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TargetGroupPairInfo
    class TargetGroupPairInfo
      def self.build(input)
        data = {}
        data['targetGroups'] = Builders::TargetGroupInfoList.build(input[:target_groups]) unless input[:target_groups].nil?
        data['prodTrafficRoute'] = Builders::TrafficRoute.build(input[:prod_traffic_route]) unless input[:prod_traffic_route].nil?
        data['testTrafficRoute'] = Builders::TrafficRoute.build(input[:test_traffic_route]) unless input[:test_traffic_route].nil?
        data
      end
    end

    # Structure Builder for TrafficRoute
    class TrafficRoute
      def self.build(input)
        data = {}
        data['listenerArns'] = Builders::ListenerArnList.build(input[:listener_arns]) unless input[:listener_arns].nil?
        data
      end
    end

    # List Builder for ListenerArnList
    class ListenerArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TargetGroupInfoList
    class TargetGroupInfoList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TargetGroupInfo.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TargetGroupInfo
    class TargetGroupInfo
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # List Builder for ELBInfoList
    class ELBInfoList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ELBInfo.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ELBInfo
    class ELBInfo
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for BlueGreenDeploymentConfiguration
    class BlueGreenDeploymentConfiguration
      def self.build(input)
        data = {}
        data['terminateBlueInstancesOnDeploymentSuccess'] = Builders::BlueInstanceTerminationOption.build(input[:terminate_blue_instances_on_deployment_success]) unless input[:terminate_blue_instances_on_deployment_success].nil?
        data['deploymentReadyOption'] = Builders::DeploymentReadyOption.build(input[:deployment_ready_option]) unless input[:deployment_ready_option].nil?
        data['greenFleetProvisioningOption'] = Builders::GreenFleetProvisioningOption.build(input[:green_fleet_provisioning_option]) unless input[:green_fleet_provisioning_option].nil?
        data
      end
    end

    # Structure Builder for GreenFleetProvisioningOption
    class GreenFleetProvisioningOption
      def self.build(input)
        data = {}
        data['action'] = input[:action] unless input[:action].nil?
        data
      end
    end

    # Structure Builder for DeploymentReadyOption
    class DeploymentReadyOption
      def self.build(input)
        data = {}
        data['actionOnTimeout'] = input[:action_on_timeout] unless input[:action_on_timeout].nil?
        data['waitTimeInMinutes'] = input[:wait_time_in_minutes] unless input[:wait_time_in_minutes].nil?
        data
      end
    end

    # Structure Builder for BlueInstanceTerminationOption
    class BlueInstanceTerminationOption
      def self.build(input)
        data = {}
        data['action'] = input[:action] unless input[:action].nil?
        data['terminationWaitTimeInMinutes'] = input[:termination_wait_time_in_minutes] unless input[:termination_wait_time_in_minutes].nil?
        data
      end
    end

    # Structure Builder for DeploymentStyle
    class DeploymentStyle
      def self.build(input)
        data = {}
        data['deploymentType'] = input[:deployment_type] unless input[:deployment_type].nil?
        data['deploymentOption'] = input[:deployment_option] unless input[:deployment_option].nil?
        data
      end
    end

    # Structure Builder for AlarmConfiguration
    class AlarmConfiguration
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['ignorePollAlarmFailure'] = input[:ignore_poll_alarm_failure] unless input[:ignore_poll_alarm_failure].nil?
        data['alarms'] = Builders::AlarmList.build(input[:alarms]) unless input[:alarms].nil?
        data
      end
    end

    # List Builder for AlarmList
    class AlarmList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Alarm.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Alarm
    class Alarm
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # List Builder for TriggerConfigList
    class TriggerConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TriggerConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TriggerConfig
    class TriggerConfig
      def self.build(input)
        data = {}
        data['triggerName'] = input[:trigger_name] unless input[:trigger_name].nil?
        data['triggerTargetArn'] = input[:trigger_target_arn] unless input[:trigger_target_arn].nil?
        data['triggerEvents'] = Builders::TriggerEventTypeList.build(input[:trigger_events]) unless input[:trigger_events].nil?
        data
      end
    end

    # List Builder for TriggerEventTypeList
    class TriggerEventTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteApplication
    class DeleteApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.DeleteApplication'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDeploymentConfig
    class DeleteDeploymentConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.DeleteDeploymentConfig'
        data = {}
        data['deploymentConfigName'] = input[:deployment_config_name] unless input[:deployment_config_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDeploymentGroup
    class DeleteDeploymentGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.DeleteDeploymentGroup'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        data['deploymentGroupName'] = input[:deployment_group_name] unless input[:deployment_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteGitHubAccountToken
    class DeleteGitHubAccountToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.DeleteGitHubAccountToken'
        data = {}
        data['tokenName'] = input[:token_name] unless input[:token_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResourcesByExternalId
    class DeleteResourcesByExternalId
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.DeleteResourcesByExternalId'
        data = {}
        data['externalId'] = input[:external_id] unless input[:external_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterOnPremisesInstance
    class DeregisterOnPremisesInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.DeregisterOnPremisesInstance'
        data = {}
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetApplication
    class GetApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.GetApplication'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetApplicationRevision
    class GetApplicationRevision
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.GetApplicationRevision'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        data['revision'] = Builders::RevisionLocation.build(input[:revision]) unless input[:revision].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDeployment
    class GetDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.GetDeployment'
        data = {}
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDeploymentConfig
    class GetDeploymentConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.GetDeploymentConfig'
        data = {}
        data['deploymentConfigName'] = input[:deployment_config_name] unless input[:deployment_config_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDeploymentGroup
    class GetDeploymentGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.GetDeploymentGroup'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        data['deploymentGroupName'] = input[:deployment_group_name] unless input[:deployment_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDeploymentInstance
    class GetDeploymentInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.GetDeploymentInstance'
        data = {}
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['instanceId'] = input[:instance_id] unless input[:instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDeploymentTarget
    class GetDeploymentTarget
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.GetDeploymentTarget'
        data = {}
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['targetId'] = input[:target_id] unless input[:target_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetOnPremisesInstance
    class GetOnPremisesInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.GetOnPremisesInstance'
        data = {}
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListApplicationRevisions
    class ListApplicationRevisions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.ListApplicationRevisions'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['sortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['s3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['s3KeyPrefix'] = input[:s3_key_prefix] unless input[:s3_key_prefix].nil?
        data['deployed'] = input[:deployed] unless input[:deployed].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListApplications
    class ListApplications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.ListApplications'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDeploymentConfigs
    class ListDeploymentConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.ListDeploymentConfigs'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDeploymentGroups
    class ListDeploymentGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.ListDeploymentGroups'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDeploymentInstances
    class ListDeploymentInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.ListDeploymentInstances'
        data = {}
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['instanceStatusFilter'] = Builders::InstanceStatusList.build(input[:instance_status_filter]) unless input[:instance_status_filter].nil?
        data['instanceTypeFilter'] = Builders::InstanceTypeList.build(input[:instance_type_filter]) unless input[:instance_type_filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InstanceTypeList
    class InstanceTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for InstanceStatusList
    class InstanceStatusList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListDeploymentTargets
    class ListDeploymentTargets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.ListDeploymentTargets'
        data = {}
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['targetFilters'] = Builders::TargetFilters.build(input[:target_filters]) unless input[:target_filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TargetFilters
    class TargetFilters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::FilterValueList.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for FilterValueList
    class FilterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListDeployments
    class ListDeployments
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.ListDeployments'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        data['deploymentGroupName'] = input[:deployment_group_name] unless input[:deployment_group_name].nil?
        data['externalId'] = input[:external_id] unless input[:external_id].nil?
        data['includeOnlyStatuses'] = Builders::DeploymentStatusList.build(input[:include_only_statuses]) unless input[:include_only_statuses].nil?
        data['createTimeRange'] = Builders::TimeRange.build(input[:create_time_range]) unless input[:create_time_range].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TimeRange
    class TimeRange
      def self.build(input)
        data = {}
        data['start'] = Hearth::TimeHelper.to_epoch_seconds(input[:start]).to_i unless input[:start].nil?
        data['end'] = Hearth::TimeHelper.to_epoch_seconds(input[:end]).to_i unless input[:end].nil?
        data
      end
    end

    # List Builder for DeploymentStatusList
    class DeploymentStatusList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListGitHubAccountTokenNames
    class ListGitHubAccountTokenNames
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.ListGitHubAccountTokenNames'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListOnPremisesInstances
    class ListOnPremisesInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.ListOnPremisesInstances'
        data = {}
        data['registrationStatus'] = input[:registration_status] unless input[:registration_status].nil?
        data['tagFilters'] = Builders::TagFilterList.build(input[:tag_filters]) unless input[:tag_filters].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutLifecycleEventHookExecutionStatus
    class PutLifecycleEventHookExecutionStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.PutLifecycleEventHookExecutionStatus'
        data = {}
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['lifecycleEventHookExecutionId'] = input[:lifecycle_event_hook_execution_id] unless input[:lifecycle_event_hook_execution_id].nil?
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterApplicationRevision
    class RegisterApplicationRevision
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.RegisterApplicationRevision'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['revision'] = Builders::RevisionLocation.build(input[:revision]) unless input[:revision].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterOnPremisesInstance
    class RegisterOnPremisesInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.RegisterOnPremisesInstance'
        data = {}
        data['instanceName'] = input[:instance_name] unless input[:instance_name].nil?
        data['iamSessionArn'] = input[:iam_session_arn] unless input[:iam_session_arn].nil?
        data['iamUserArn'] = input[:iam_user_arn] unless input[:iam_user_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveTagsFromOnPremisesInstances
    class RemoveTagsFromOnPremisesInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.RemoveTagsFromOnPremisesInstances'
        data = {}
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['instanceNames'] = Builders::InstanceNameList.build(input[:instance_names]) unless input[:instance_names].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SkipWaitTimeForInstanceTermination
    class SkipWaitTimeForInstanceTermination
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.SkipWaitTimeForInstanceTermination'
        data = {}
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopDeployment
    class StopDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.StopDeployment'
        data = {}
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['autoRollbackEnabled'] = input[:auto_rollback_enabled] unless input[:auto_rollback_enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateApplication
    class UpdateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.UpdateApplication'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        data['newApplicationName'] = input[:new_application_name] unless input[:new_application_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDeploymentGroup
    class UpdateDeploymentGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeDeploy_20141006.UpdateDeploymentGroup'
        data = {}
        data['applicationName'] = input[:application_name] unless input[:application_name].nil?
        data['currentDeploymentGroupName'] = input[:current_deployment_group_name] unless input[:current_deployment_group_name].nil?
        data['newDeploymentGroupName'] = input[:new_deployment_group_name] unless input[:new_deployment_group_name].nil?
        data['deploymentConfigName'] = input[:deployment_config_name] unless input[:deployment_config_name].nil?
        data['ec2TagFilters'] = Builders::EC2TagFilterList.build(input[:ec2_tag_filters]) unless input[:ec2_tag_filters].nil?
        data['onPremisesInstanceTagFilters'] = Builders::TagFilterList.build(input[:on_premises_instance_tag_filters]) unless input[:on_premises_instance_tag_filters].nil?
        data['autoScalingGroups'] = Builders::AutoScalingGroupNameList.build(input[:auto_scaling_groups]) unless input[:auto_scaling_groups].nil?
        data['serviceRoleArn'] = input[:service_role_arn] unless input[:service_role_arn].nil?
        data['triggerConfigurations'] = Builders::TriggerConfigList.build(input[:trigger_configurations]) unless input[:trigger_configurations].nil?
        data['alarmConfiguration'] = Builders::AlarmConfiguration.build(input[:alarm_configuration]) unless input[:alarm_configuration].nil?
        data['autoRollbackConfiguration'] = Builders::AutoRollbackConfiguration.build(input[:auto_rollback_configuration]) unless input[:auto_rollback_configuration].nil?
        data['outdatedInstancesStrategy'] = input[:outdated_instances_strategy] unless input[:outdated_instances_strategy].nil?
        data['deploymentStyle'] = Builders::DeploymentStyle.build(input[:deployment_style]) unless input[:deployment_style].nil?
        data['blueGreenDeploymentConfiguration'] = Builders::BlueGreenDeploymentConfiguration.build(input[:blue_green_deployment_configuration]) unless input[:blue_green_deployment_configuration].nil?
        data['loadBalancerInfo'] = Builders::LoadBalancerInfo.build(input[:load_balancer_info]) unless input[:load_balancer_info].nil?
        data['ec2TagSet'] = Builders::EC2TagSet.build(input[:ec2_tag_set]) unless input[:ec2_tag_set].nil?
        data['ecsServices'] = Builders::ECSServiceList.build(input[:ecs_services]) unless input[:ecs_services].nil?
        data['onPremisesTagSet'] = Builders::OnPremisesTagSet.build(input[:on_premises_tag_set]) unless input[:on_premises_tag_set].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
