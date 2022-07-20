# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeDeploy
  module Stubs

    # Operation Stubber for AddTagsToOnPremisesInstances
    class AddTagsToOnPremisesInstances
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchGetApplicationRevisions
    class BatchGetApplicationRevisions
      def self.default(visited=[])
        {
          application_name: 'application_name',
          error_message: 'error_message',
          revisions: RevisionInfoList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['applicationName'] = stub[:application_name] unless stub[:application_name].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['revisions'] = Stubs::RevisionInfoList.stub(stub[:revisions]) unless stub[:revisions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RevisionInfoList
    class RevisionInfoList
      def self.default(visited=[])
        return nil if visited.include?('RevisionInfoList')
        visited = visited + ['RevisionInfoList']
        [
          RevisionInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RevisionInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RevisionInfo
    class RevisionInfo
      def self.default(visited=[])
        return nil if visited.include?('RevisionInfo')
        visited = visited + ['RevisionInfo']
        {
          revision_location: RevisionLocation.default(visited),
          generic_revision_info: GenericRevisionInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RevisionInfo.new
        data = {}
        data['revisionLocation'] = Stubs::RevisionLocation.stub(stub[:revision_location]) unless stub[:revision_location].nil?
        data['genericRevisionInfo'] = Stubs::GenericRevisionInfo.stub(stub[:generic_revision_info]) unless stub[:generic_revision_info].nil?
        data
      end
    end

    # Structure Stubber for GenericRevisionInfo
    class GenericRevisionInfo
      def self.default(visited=[])
        return nil if visited.include?('GenericRevisionInfo')
        visited = visited + ['GenericRevisionInfo']
        {
          description: 'description',
          deployment_groups: DeploymentGroupsList.default(visited),
          first_used_time: Time.now,
          last_used_time: Time.now,
          register_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::GenericRevisionInfo.new
        data = {}
        data['description'] = stub[:description] unless stub[:description].nil?
        data['deploymentGroups'] = Stubs::DeploymentGroupsList.stub(stub[:deployment_groups]) unless stub[:deployment_groups].nil?
        data['firstUsedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:first_used_time]).to_i unless stub[:first_used_time].nil?
        data['lastUsedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_used_time]).to_i unless stub[:last_used_time].nil?
        data['registerTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:register_time]).to_i unless stub[:register_time].nil?
        data
      end
    end

    # List Stubber for DeploymentGroupsList
    class DeploymentGroupsList
      def self.default(visited=[])
        return nil if visited.include?('DeploymentGroupsList')
        visited = visited + ['DeploymentGroupsList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RevisionLocation
    class RevisionLocation
      def self.default(visited=[])
        return nil if visited.include?('RevisionLocation')
        visited = visited + ['RevisionLocation']
        {
          revision_type: 'revision_type',
          s3_location: S3Location.default(visited),
          git_hub_location: GitHubLocation.default(visited),
          string: RawString.default(visited),
          app_spec_content: AppSpecContent.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RevisionLocation.new
        data = {}
        data['revisionType'] = stub[:revision_type] unless stub[:revision_type].nil?
        data['s3Location'] = Stubs::S3Location.stub(stub[:s3_location]) unless stub[:s3_location].nil?
        data['gitHubLocation'] = Stubs::GitHubLocation.stub(stub[:git_hub_location]) unless stub[:git_hub_location].nil?
        data['string'] = Stubs::RawString.stub(stub[:string]) unless stub[:string].nil?
        data['appSpecContent'] = Stubs::AppSpecContent.stub(stub[:app_spec_content]) unless stub[:app_spec_content].nil?
        data
      end
    end

    # Structure Stubber for AppSpecContent
    class AppSpecContent
      def self.default(visited=[])
        return nil if visited.include?('AppSpecContent')
        visited = visited + ['AppSpecContent']
        {
          content: 'content',
          sha256: 'sha256',
        }
      end

      def self.stub(stub)
        stub ||= Types::AppSpecContent.new
        data = {}
        data['content'] = stub[:content] unless stub[:content].nil?
        data['sha256'] = stub[:sha256] unless stub[:sha256].nil?
        data
      end
    end

    # Structure Stubber for RawString
    class RawString
      def self.default(visited=[])
        return nil if visited.include?('RawString')
        visited = visited + ['RawString']
        {
          content: 'content',
          sha256: 'sha256',
        }
      end

      def self.stub(stub)
        stub ||= Types::RawString.new
        data = {}
        data['content'] = stub[:content] unless stub[:content].nil?
        data['sha256'] = stub[:sha256] unless stub[:sha256].nil?
        data
      end
    end

    # Structure Stubber for GitHubLocation
    class GitHubLocation
      def self.default(visited=[])
        return nil if visited.include?('GitHubLocation')
        visited = visited + ['GitHubLocation']
        {
          repository: 'repository',
          commit_id: 'commit_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::GitHubLocation.new
        data = {}
        data['repository'] = stub[:repository] unless stub[:repository].nil?
        data['commitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data
      end
    end

    # Structure Stubber for S3Location
    class S3Location
      def self.default(visited=[])
        return nil if visited.include?('S3Location')
        visited = visited + ['S3Location']
        {
          bucket: 'bucket',
          key: 'key',
          bundle_type: 'bundle_type',
          version: 'version',
          e_tag: 'e_tag',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Location.new
        data = {}
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['bundleType'] = stub[:bundle_type] unless stub[:bundle_type].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['eTag'] = stub[:e_tag] unless stub[:e_tag].nil?
        data
      end
    end

    # Operation Stubber for BatchGetApplications
    class BatchGetApplications
      def self.default(visited=[])
        {
          applications_info: ApplicationsInfoList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['applicationsInfo'] = Stubs::ApplicationsInfoList.stub(stub[:applications_info]) unless stub[:applications_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ApplicationsInfoList
    class ApplicationsInfoList
      def self.default(visited=[])
        return nil if visited.include?('ApplicationsInfoList')
        visited = visited + ['ApplicationsInfoList']
        [
          ApplicationInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ApplicationInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApplicationInfo
    class ApplicationInfo
      def self.default(visited=[])
        return nil if visited.include?('ApplicationInfo')
        visited = visited + ['ApplicationInfo']
        {
          application_id: 'application_id',
          application_name: 'application_name',
          create_time: Time.now,
          linked_to_git_hub: false,
          git_hub_account_name: 'git_hub_account_name',
          compute_platform: 'compute_platform',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationInfo.new
        data = {}
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        data['applicationName'] = stub[:application_name] unless stub[:application_name].nil?
        data['createTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['linkedToGitHub'] = stub[:linked_to_git_hub] unless stub[:linked_to_git_hub].nil?
        data['gitHubAccountName'] = stub[:git_hub_account_name] unless stub[:git_hub_account_name].nil?
        data['computePlatform'] = stub[:compute_platform] unless stub[:compute_platform].nil?
        data
      end
    end

    # Operation Stubber for BatchGetDeploymentGroups
    class BatchGetDeploymentGroups
      def self.default(visited=[])
        {
          deployment_groups_info: DeploymentGroupInfoList.default(visited),
          error_message: 'error_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deploymentGroupsInfo'] = Stubs::DeploymentGroupInfoList.stub(stub[:deployment_groups_info]) unless stub[:deployment_groups_info].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DeploymentGroupInfoList
    class DeploymentGroupInfoList
      def self.default(visited=[])
        return nil if visited.include?('DeploymentGroupInfoList')
        visited = visited + ['DeploymentGroupInfoList']
        [
          DeploymentGroupInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeploymentGroupInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeploymentGroupInfo
    class DeploymentGroupInfo
      def self.default(visited=[])
        return nil if visited.include?('DeploymentGroupInfo')
        visited = visited + ['DeploymentGroupInfo']
        {
          application_name: 'application_name',
          deployment_group_id: 'deployment_group_id',
          deployment_group_name: 'deployment_group_name',
          deployment_config_name: 'deployment_config_name',
          ec2_tag_filters: EC2TagFilterList.default(visited),
          on_premises_instance_tag_filters: TagFilterList.default(visited),
          auto_scaling_groups: AutoScalingGroupList.default(visited),
          service_role_arn: 'service_role_arn',
          target_revision: RevisionLocation.default(visited),
          trigger_configurations: TriggerConfigList.default(visited),
          alarm_configuration: AlarmConfiguration.default(visited),
          auto_rollback_configuration: AutoRollbackConfiguration.default(visited),
          deployment_style: DeploymentStyle.default(visited),
          outdated_instances_strategy: 'outdated_instances_strategy',
          blue_green_deployment_configuration: BlueGreenDeploymentConfiguration.default(visited),
          load_balancer_info: LoadBalancerInfo.default(visited),
          last_successful_deployment: LastDeploymentInfo.default(visited),
          last_attempted_deployment: LastDeploymentInfo.default(visited),
          ec2_tag_set: EC2TagSet.default(visited),
          on_premises_tag_set: OnPremisesTagSet.default(visited),
          compute_platform: 'compute_platform',
          ecs_services: ECSServiceList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentGroupInfo.new
        data = {}
        data['applicationName'] = stub[:application_name] unless stub[:application_name].nil?
        data['deploymentGroupId'] = stub[:deployment_group_id] unless stub[:deployment_group_id].nil?
        data['deploymentGroupName'] = stub[:deployment_group_name] unless stub[:deployment_group_name].nil?
        data['deploymentConfigName'] = stub[:deployment_config_name] unless stub[:deployment_config_name].nil?
        data['ec2TagFilters'] = Stubs::EC2TagFilterList.stub(stub[:ec2_tag_filters]) unless stub[:ec2_tag_filters].nil?
        data['onPremisesInstanceTagFilters'] = Stubs::TagFilterList.stub(stub[:on_premises_instance_tag_filters]) unless stub[:on_premises_instance_tag_filters].nil?
        data['autoScalingGroups'] = Stubs::AutoScalingGroupList.stub(stub[:auto_scaling_groups]) unless stub[:auto_scaling_groups].nil?
        data['serviceRoleArn'] = stub[:service_role_arn] unless stub[:service_role_arn].nil?
        data['targetRevision'] = Stubs::RevisionLocation.stub(stub[:target_revision]) unless stub[:target_revision].nil?
        data['triggerConfigurations'] = Stubs::TriggerConfigList.stub(stub[:trigger_configurations]) unless stub[:trigger_configurations].nil?
        data['alarmConfiguration'] = Stubs::AlarmConfiguration.stub(stub[:alarm_configuration]) unless stub[:alarm_configuration].nil?
        data['autoRollbackConfiguration'] = Stubs::AutoRollbackConfiguration.stub(stub[:auto_rollback_configuration]) unless stub[:auto_rollback_configuration].nil?
        data['deploymentStyle'] = Stubs::DeploymentStyle.stub(stub[:deployment_style]) unless stub[:deployment_style].nil?
        data['outdatedInstancesStrategy'] = stub[:outdated_instances_strategy] unless stub[:outdated_instances_strategy].nil?
        data['blueGreenDeploymentConfiguration'] = Stubs::BlueGreenDeploymentConfiguration.stub(stub[:blue_green_deployment_configuration]) unless stub[:blue_green_deployment_configuration].nil?
        data['loadBalancerInfo'] = Stubs::LoadBalancerInfo.stub(stub[:load_balancer_info]) unless stub[:load_balancer_info].nil?
        data['lastSuccessfulDeployment'] = Stubs::LastDeploymentInfo.stub(stub[:last_successful_deployment]) unless stub[:last_successful_deployment].nil?
        data['lastAttemptedDeployment'] = Stubs::LastDeploymentInfo.stub(stub[:last_attempted_deployment]) unless stub[:last_attempted_deployment].nil?
        data['ec2TagSet'] = Stubs::EC2TagSet.stub(stub[:ec2_tag_set]) unless stub[:ec2_tag_set].nil?
        data['onPremisesTagSet'] = Stubs::OnPremisesTagSet.stub(stub[:on_premises_tag_set]) unless stub[:on_premises_tag_set].nil?
        data['computePlatform'] = stub[:compute_platform] unless stub[:compute_platform].nil?
        data['ecsServices'] = Stubs::ECSServiceList.stub(stub[:ecs_services]) unless stub[:ecs_services].nil?
        data
      end
    end

    # List Stubber for ECSServiceList
    class ECSServiceList
      def self.default(visited=[])
        return nil if visited.include?('ECSServiceList')
        visited = visited + ['ECSServiceList']
        [
          ECSService.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ECSService.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ECSService
    class ECSService
      def self.default(visited=[])
        return nil if visited.include?('ECSService')
        visited = visited + ['ECSService']
        {
          service_name: 'service_name',
          cluster_name: 'cluster_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ECSService.new
        data = {}
        data['serviceName'] = stub[:service_name] unless stub[:service_name].nil?
        data['clusterName'] = stub[:cluster_name] unless stub[:cluster_name].nil?
        data
      end
    end

    # Structure Stubber for OnPremisesTagSet
    class OnPremisesTagSet
      def self.default(visited=[])
        return nil if visited.include?('OnPremisesTagSet')
        visited = visited + ['OnPremisesTagSet']
        {
          on_premises_tag_set_list: OnPremisesTagSetList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OnPremisesTagSet.new
        data = {}
        data['onPremisesTagSetList'] = Stubs::OnPremisesTagSetList.stub(stub[:on_premises_tag_set_list]) unless stub[:on_premises_tag_set_list].nil?
        data
      end
    end

    # List Stubber for OnPremisesTagSetList
    class OnPremisesTagSetList
      def self.default(visited=[])
        return nil if visited.include?('OnPremisesTagSetList')
        visited = visited + ['OnPremisesTagSetList']
        [
          TagFilterList.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TagFilterList.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for TagFilterList
    class TagFilterList
      def self.default(visited=[])
        return nil if visited.include?('TagFilterList')
        visited = visited + ['TagFilterList']
        [
          TagFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TagFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TagFilter
    class TagFilter
      def self.default(visited=[])
        return nil if visited.include?('TagFilter')
        visited = visited + ['TagFilter']
        {
          key: 'key',
          value: 'value',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::TagFilter.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for EC2TagSet
    class EC2TagSet
      def self.default(visited=[])
        return nil if visited.include?('EC2TagSet')
        visited = visited + ['EC2TagSet']
        {
          ec2_tag_set_list: EC2TagSetList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2TagSet.new
        data = {}
        data['ec2TagSetList'] = Stubs::EC2TagSetList.stub(stub[:ec2_tag_set_list]) unless stub[:ec2_tag_set_list].nil?
        data
      end
    end

    # List Stubber for EC2TagSetList
    class EC2TagSetList
      def self.default(visited=[])
        return nil if visited.include?('EC2TagSetList')
        visited = visited + ['EC2TagSetList']
        [
          EC2TagFilterList.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EC2TagFilterList.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for EC2TagFilterList
    class EC2TagFilterList
      def self.default(visited=[])
        return nil if visited.include?('EC2TagFilterList')
        visited = visited + ['EC2TagFilterList']
        [
          EC2TagFilter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EC2TagFilter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EC2TagFilter
    class EC2TagFilter
      def self.default(visited=[])
        return nil if visited.include?('EC2TagFilter')
        visited = visited + ['EC2TagFilter']
        {
          key: 'key',
          value: 'value',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2TagFilter.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for LastDeploymentInfo
    class LastDeploymentInfo
      def self.default(visited=[])
        return nil if visited.include?('LastDeploymentInfo')
        visited = visited + ['LastDeploymentInfo']
        {
          deployment_id: 'deployment_id',
          status: 'status',
          end_time: Time.now,
          create_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::LastDeploymentInfo.new
        data = {}
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['createTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data
      end
    end

    # Structure Stubber for LoadBalancerInfo
    class LoadBalancerInfo
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerInfo')
        visited = visited + ['LoadBalancerInfo']
        {
          elb_info_list: ELBInfoList.default(visited),
          target_group_info_list: TargetGroupInfoList.default(visited),
          target_group_pair_info_list: TargetGroupPairInfoList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LoadBalancerInfo.new
        data = {}
        data['elbInfoList'] = Stubs::ELBInfoList.stub(stub[:elb_info_list]) unless stub[:elb_info_list].nil?
        data['targetGroupInfoList'] = Stubs::TargetGroupInfoList.stub(stub[:target_group_info_list]) unless stub[:target_group_info_list].nil?
        data['targetGroupPairInfoList'] = Stubs::TargetGroupPairInfoList.stub(stub[:target_group_pair_info_list]) unless stub[:target_group_pair_info_list].nil?
        data
      end
    end

    # List Stubber for TargetGroupPairInfoList
    class TargetGroupPairInfoList
      def self.default(visited=[])
        return nil if visited.include?('TargetGroupPairInfoList')
        visited = visited + ['TargetGroupPairInfoList']
        [
          TargetGroupPairInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TargetGroupPairInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TargetGroupPairInfo
    class TargetGroupPairInfo
      def self.default(visited=[])
        return nil if visited.include?('TargetGroupPairInfo')
        visited = visited + ['TargetGroupPairInfo']
        {
          target_groups: TargetGroupInfoList.default(visited),
          prod_traffic_route: TrafficRoute.default(visited),
          test_traffic_route: TrafficRoute.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetGroupPairInfo.new
        data = {}
        data['targetGroups'] = Stubs::TargetGroupInfoList.stub(stub[:target_groups]) unless stub[:target_groups].nil?
        data['prodTrafficRoute'] = Stubs::TrafficRoute.stub(stub[:prod_traffic_route]) unless stub[:prod_traffic_route].nil?
        data['testTrafficRoute'] = Stubs::TrafficRoute.stub(stub[:test_traffic_route]) unless stub[:test_traffic_route].nil?
        data
      end
    end

    # Structure Stubber for TrafficRoute
    class TrafficRoute
      def self.default(visited=[])
        return nil if visited.include?('TrafficRoute')
        visited = visited + ['TrafficRoute']
        {
          listener_arns: ListenerArnList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrafficRoute.new
        data = {}
        data['listenerArns'] = Stubs::ListenerArnList.stub(stub[:listener_arns]) unless stub[:listener_arns].nil?
        data
      end
    end

    # List Stubber for ListenerArnList
    class ListenerArnList
      def self.default(visited=[])
        return nil if visited.include?('ListenerArnList')
        visited = visited + ['ListenerArnList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for TargetGroupInfoList
    class TargetGroupInfoList
      def self.default(visited=[])
        return nil if visited.include?('TargetGroupInfoList')
        visited = visited + ['TargetGroupInfoList']
        [
          TargetGroupInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TargetGroupInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TargetGroupInfo
    class TargetGroupInfo
      def self.default(visited=[])
        return nil if visited.include?('TargetGroupInfo')
        visited = visited + ['TargetGroupInfo']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetGroupInfo.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for ELBInfoList
    class ELBInfoList
      def self.default(visited=[])
        return nil if visited.include?('ELBInfoList')
        visited = visited + ['ELBInfoList']
        [
          ELBInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ELBInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ELBInfo
    class ELBInfo
      def self.default(visited=[])
        return nil if visited.include?('ELBInfo')
        visited = visited + ['ELBInfo']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ELBInfo.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Structure Stubber for BlueGreenDeploymentConfiguration
    class BlueGreenDeploymentConfiguration
      def self.default(visited=[])
        return nil if visited.include?('BlueGreenDeploymentConfiguration')
        visited = visited + ['BlueGreenDeploymentConfiguration']
        {
          terminate_blue_instances_on_deployment_success: BlueInstanceTerminationOption.default(visited),
          deployment_ready_option: DeploymentReadyOption.default(visited),
          green_fleet_provisioning_option: GreenFleetProvisioningOption.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BlueGreenDeploymentConfiguration.new
        data = {}
        data['terminateBlueInstancesOnDeploymentSuccess'] = Stubs::BlueInstanceTerminationOption.stub(stub[:terminate_blue_instances_on_deployment_success]) unless stub[:terminate_blue_instances_on_deployment_success].nil?
        data['deploymentReadyOption'] = Stubs::DeploymentReadyOption.stub(stub[:deployment_ready_option]) unless stub[:deployment_ready_option].nil?
        data['greenFleetProvisioningOption'] = Stubs::GreenFleetProvisioningOption.stub(stub[:green_fleet_provisioning_option]) unless stub[:green_fleet_provisioning_option].nil?
        data
      end
    end

    # Structure Stubber for GreenFleetProvisioningOption
    class GreenFleetProvisioningOption
      def self.default(visited=[])
        return nil if visited.include?('GreenFleetProvisioningOption')
        visited = visited + ['GreenFleetProvisioningOption']
        {
          action: 'action',
        }
      end

      def self.stub(stub)
        stub ||= Types::GreenFleetProvisioningOption.new
        data = {}
        data['action'] = stub[:action] unless stub[:action].nil?
        data
      end
    end

    # Structure Stubber for DeploymentReadyOption
    class DeploymentReadyOption
      def self.default(visited=[])
        return nil if visited.include?('DeploymentReadyOption')
        visited = visited + ['DeploymentReadyOption']
        {
          action_on_timeout: 'action_on_timeout',
          wait_time_in_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentReadyOption.new
        data = {}
        data['actionOnTimeout'] = stub[:action_on_timeout] unless stub[:action_on_timeout].nil?
        data['waitTimeInMinutes'] = stub[:wait_time_in_minutes] unless stub[:wait_time_in_minutes].nil?
        data
      end
    end

    # Structure Stubber for BlueInstanceTerminationOption
    class BlueInstanceTerminationOption
      def self.default(visited=[])
        return nil if visited.include?('BlueInstanceTerminationOption')
        visited = visited + ['BlueInstanceTerminationOption']
        {
          action: 'action',
          termination_wait_time_in_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::BlueInstanceTerminationOption.new
        data = {}
        data['action'] = stub[:action] unless stub[:action].nil?
        data['terminationWaitTimeInMinutes'] = stub[:termination_wait_time_in_minutes] unless stub[:termination_wait_time_in_minutes].nil?
        data
      end
    end

    # Structure Stubber for DeploymentStyle
    class DeploymentStyle
      def self.default(visited=[])
        return nil if visited.include?('DeploymentStyle')
        visited = visited + ['DeploymentStyle']
        {
          deployment_type: 'deployment_type',
          deployment_option: 'deployment_option',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentStyle.new
        data = {}
        data['deploymentType'] = stub[:deployment_type] unless stub[:deployment_type].nil?
        data['deploymentOption'] = stub[:deployment_option] unless stub[:deployment_option].nil?
        data
      end
    end

    # Structure Stubber for AutoRollbackConfiguration
    class AutoRollbackConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AutoRollbackConfiguration')
        visited = visited + ['AutoRollbackConfiguration']
        {
          enabled: false,
          events: AutoRollbackEventsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoRollbackConfiguration.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['events'] = Stubs::AutoRollbackEventsList.stub(stub[:events]) unless stub[:events].nil?
        data
      end
    end

    # List Stubber for AutoRollbackEventsList
    class AutoRollbackEventsList
      def self.default(visited=[])
        return nil if visited.include?('AutoRollbackEventsList')
        visited = visited + ['AutoRollbackEventsList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AlarmConfiguration
    class AlarmConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AlarmConfiguration')
        visited = visited + ['AlarmConfiguration']
        {
          enabled: false,
          ignore_poll_alarm_failure: false,
          alarms: AlarmList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AlarmConfiguration.new
        data = {}
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['ignorePollAlarmFailure'] = stub[:ignore_poll_alarm_failure] unless stub[:ignore_poll_alarm_failure].nil?
        data['alarms'] = Stubs::AlarmList.stub(stub[:alarms]) unless stub[:alarms].nil?
        data
      end
    end

    # List Stubber for AlarmList
    class AlarmList
      def self.default(visited=[])
        return nil if visited.include?('AlarmList')
        visited = visited + ['AlarmList']
        [
          Alarm.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Alarm.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Alarm
    class Alarm
      def self.default(visited=[])
        return nil if visited.include?('Alarm')
        visited = visited + ['Alarm']
        {
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Alarm.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # List Stubber for TriggerConfigList
    class TriggerConfigList
      def self.default(visited=[])
        return nil if visited.include?('TriggerConfigList')
        visited = visited + ['TriggerConfigList']
        [
          TriggerConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TriggerConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TriggerConfig
    class TriggerConfig
      def self.default(visited=[])
        return nil if visited.include?('TriggerConfig')
        visited = visited + ['TriggerConfig']
        {
          trigger_name: 'trigger_name',
          trigger_target_arn: 'trigger_target_arn',
          trigger_events: TriggerEventTypeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TriggerConfig.new
        data = {}
        data['triggerName'] = stub[:trigger_name] unless stub[:trigger_name].nil?
        data['triggerTargetArn'] = stub[:trigger_target_arn] unless stub[:trigger_target_arn].nil?
        data['triggerEvents'] = Stubs::TriggerEventTypeList.stub(stub[:trigger_events]) unless stub[:trigger_events].nil?
        data
      end
    end

    # List Stubber for TriggerEventTypeList
    class TriggerEventTypeList
      def self.default(visited=[])
        return nil if visited.include?('TriggerEventTypeList')
        visited = visited + ['TriggerEventTypeList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for AutoScalingGroupList
    class AutoScalingGroupList
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingGroupList')
        visited = visited + ['AutoScalingGroupList']
        [
          AutoScalingGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AutoScalingGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AutoScalingGroup
    class AutoScalingGroup
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingGroup')
        visited = visited + ['AutoScalingGroup']
        {
          name: 'name',
          hook: 'hook',
        }
      end

      def self.stub(stub)
        stub ||= Types::AutoScalingGroup.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['hook'] = stub[:hook] unless stub[:hook].nil?
        data
      end
    end

    # Operation Stubber for BatchGetDeploymentInstances
    class BatchGetDeploymentInstances
      def self.default(visited=[])
        {
          instances_summary: InstanceSummaryList.default(visited),
          error_message: 'error_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['instancesSummary'] = Stubs::InstanceSummaryList.stub(stub[:instances_summary]) unless stub[:instances_summary].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceSummaryList
    class InstanceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('InstanceSummaryList')
        visited = visited + ['InstanceSummaryList']
        [
          InstanceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceSummary
    class InstanceSummary
      def self.default(visited=[])
        return nil if visited.include?('InstanceSummary')
        visited = visited + ['InstanceSummary']
        {
          deployment_id: 'deployment_id',
          instance_id: 'instance_id',
          status: 'status',
          last_updated_at: Time.now,
          lifecycle_events: LifecycleEventList.default(visited),
          instance_type: 'instance_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceSummary.new
        data = {}
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['instanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['lifecycleEvents'] = Stubs::LifecycleEventList.stub(stub[:lifecycle_events]) unless stub[:lifecycle_events].nil?
        data['instanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data
      end
    end

    # List Stubber for LifecycleEventList
    class LifecycleEventList
      def self.default(visited=[])
        return nil if visited.include?('LifecycleEventList')
        visited = visited + ['LifecycleEventList']
        [
          LifecycleEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LifecycleEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LifecycleEvent
    class LifecycleEvent
      def self.default(visited=[])
        return nil if visited.include?('LifecycleEvent')
        visited = visited + ['LifecycleEvent']
        {
          lifecycle_event_name: 'lifecycle_event_name',
          diagnostics: Diagnostics.default(visited),
          start_time: Time.now,
          end_time: Time.now,
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::LifecycleEvent.new
        data = {}
        data['lifecycleEventName'] = stub[:lifecycle_event_name] unless stub[:lifecycle_event_name].nil?
        data['diagnostics'] = Stubs::Diagnostics.stub(stub[:diagnostics]) unless stub[:diagnostics].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for Diagnostics
    class Diagnostics
      def self.default(visited=[])
        return nil if visited.include?('Diagnostics')
        visited = visited + ['Diagnostics']
        {
          error_code: 'error_code',
          script_name: 'script_name',
          message: 'message',
          log_tail: 'log_tail',
        }
      end

      def self.stub(stub)
        stub ||= Types::Diagnostics.new
        data = {}
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['scriptName'] = stub[:script_name] unless stub[:script_name].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['logTail'] = stub[:log_tail] unless stub[:log_tail].nil?
        data
      end
    end

    # Operation Stubber for BatchGetDeploymentTargets
    class BatchGetDeploymentTargets
      def self.default(visited=[])
        {
          deployment_targets: DeploymentTargetList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deploymentTargets'] = Stubs::DeploymentTargetList.stub(stub[:deployment_targets]) unless stub[:deployment_targets].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DeploymentTargetList
    class DeploymentTargetList
      def self.default(visited=[])
        return nil if visited.include?('DeploymentTargetList')
        visited = visited + ['DeploymentTargetList']
        [
          DeploymentTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeploymentTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeploymentTarget
    class DeploymentTarget
      def self.default(visited=[])
        return nil if visited.include?('DeploymentTarget')
        visited = visited + ['DeploymentTarget']
        {
          deployment_target_type: 'deployment_target_type',
          instance_target: InstanceTarget.default(visited),
          lambda_target: LambdaTarget.default(visited),
          ecs_target: ECSTarget.default(visited),
          cloud_formation_target: CloudFormationTarget.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentTarget.new
        data = {}
        data['deploymentTargetType'] = stub[:deployment_target_type] unless stub[:deployment_target_type].nil?
        data['instanceTarget'] = Stubs::InstanceTarget.stub(stub[:instance_target]) unless stub[:instance_target].nil?
        data['lambdaTarget'] = Stubs::LambdaTarget.stub(stub[:lambda_target]) unless stub[:lambda_target].nil?
        data['ecsTarget'] = Stubs::ECSTarget.stub(stub[:ecs_target]) unless stub[:ecs_target].nil?
        data['cloudFormationTarget'] = Stubs::CloudFormationTarget.stub(stub[:cloud_formation_target]) unless stub[:cloud_formation_target].nil?
        data
      end
    end

    # Structure Stubber for CloudFormationTarget
    class CloudFormationTarget
      def self.default(visited=[])
        return nil if visited.include?('CloudFormationTarget')
        visited = visited + ['CloudFormationTarget']
        {
          deployment_id: 'deployment_id',
          target_id: 'target_id',
          last_updated_at: Time.now,
          lifecycle_events: LifecycleEventList.default(visited),
          status: 'status',
          resource_type: 'resource_type',
          target_version_weight: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::CloudFormationTarget.new
        data = {}
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['targetId'] = stub[:target_id] unless stub[:target_id].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['lifecycleEvents'] = Stubs::LifecycleEventList.stub(stub[:lifecycle_events]) unless stub[:lifecycle_events].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['resourceType'] = stub[:resource_type] unless stub[:resource_type].nil?
        data['targetVersionWeight'] = Hearth::NumberHelper.serialize(stub[:target_version_weight])
        data
      end
    end

    # Structure Stubber for ECSTarget
    class ECSTarget
      def self.default(visited=[])
        return nil if visited.include?('ECSTarget')
        visited = visited + ['ECSTarget']
        {
          deployment_id: 'deployment_id',
          target_id: 'target_id',
          target_arn: 'target_arn',
          last_updated_at: Time.now,
          lifecycle_events: LifecycleEventList.default(visited),
          status: 'status',
          task_sets_info: ECSTaskSetList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ECSTarget.new
        data = {}
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['targetId'] = stub[:target_id] unless stub[:target_id].nil?
        data['targetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['lifecycleEvents'] = Stubs::LifecycleEventList.stub(stub[:lifecycle_events]) unless stub[:lifecycle_events].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['taskSetsInfo'] = Stubs::ECSTaskSetList.stub(stub[:task_sets_info]) unless stub[:task_sets_info].nil?
        data
      end
    end

    # List Stubber for ECSTaskSetList
    class ECSTaskSetList
      def self.default(visited=[])
        return nil if visited.include?('ECSTaskSetList')
        visited = visited + ['ECSTaskSetList']
        [
          ECSTaskSet.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ECSTaskSet.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ECSTaskSet
    class ECSTaskSet
      def self.default(visited=[])
        return nil if visited.include?('ECSTaskSet')
        visited = visited + ['ECSTaskSet']
        {
          identifer: 'identifer',
          desired_count: 1,
          pending_count: 1,
          running_count: 1,
          status: 'status',
          traffic_weight: 1.0,
          target_group: TargetGroupInfo.default(visited),
          task_set_label: 'task_set_label',
        }
      end

      def self.stub(stub)
        stub ||= Types::ECSTaskSet.new
        data = {}
        data['identifer'] = stub[:identifer] unless stub[:identifer].nil?
        data['desiredCount'] = stub[:desired_count] unless stub[:desired_count].nil?
        data['pendingCount'] = stub[:pending_count] unless stub[:pending_count].nil?
        data['runningCount'] = stub[:running_count] unless stub[:running_count].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['trafficWeight'] = Hearth::NumberHelper.serialize(stub[:traffic_weight])
        data['targetGroup'] = Stubs::TargetGroupInfo.stub(stub[:target_group]) unless stub[:target_group].nil?
        data['taskSetLabel'] = stub[:task_set_label] unless stub[:task_set_label].nil?
        data
      end
    end

    # Structure Stubber for LambdaTarget
    class LambdaTarget
      def self.default(visited=[])
        return nil if visited.include?('LambdaTarget')
        visited = visited + ['LambdaTarget']
        {
          deployment_id: 'deployment_id',
          target_id: 'target_id',
          target_arn: 'target_arn',
          status: 'status',
          last_updated_at: Time.now,
          lifecycle_events: LifecycleEventList.default(visited),
          lambda_function_info: LambdaFunctionInfo.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaTarget.new
        data = {}
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['targetId'] = stub[:target_id] unless stub[:target_id].nil?
        data['targetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['lifecycleEvents'] = Stubs::LifecycleEventList.stub(stub[:lifecycle_events]) unless stub[:lifecycle_events].nil?
        data['lambdaFunctionInfo'] = Stubs::LambdaFunctionInfo.stub(stub[:lambda_function_info]) unless stub[:lambda_function_info].nil?
        data
      end
    end

    # Structure Stubber for LambdaFunctionInfo
    class LambdaFunctionInfo
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunctionInfo')
        visited = visited + ['LambdaFunctionInfo']
        {
          function_name: 'function_name',
          function_alias: 'function_alias',
          current_version: 'current_version',
          target_version: 'target_version',
          target_version_weight: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunctionInfo.new
        data = {}
        data['functionName'] = stub[:function_name] unless stub[:function_name].nil?
        data['functionAlias'] = stub[:function_alias] unless stub[:function_alias].nil?
        data['currentVersion'] = stub[:current_version] unless stub[:current_version].nil?
        data['targetVersion'] = stub[:target_version] unless stub[:target_version].nil?
        data['targetVersionWeight'] = Hearth::NumberHelper.serialize(stub[:target_version_weight])
        data
      end
    end

    # Structure Stubber for InstanceTarget
    class InstanceTarget
      def self.default(visited=[])
        return nil if visited.include?('InstanceTarget')
        visited = visited + ['InstanceTarget']
        {
          deployment_id: 'deployment_id',
          target_id: 'target_id',
          target_arn: 'target_arn',
          status: 'status',
          last_updated_at: Time.now,
          lifecycle_events: LifecycleEventList.default(visited),
          instance_label: 'instance_label',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceTarget.new
        data = {}
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['targetId'] = stub[:target_id] unless stub[:target_id].nil?
        data['targetArn'] = stub[:target_arn] unless stub[:target_arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['lifecycleEvents'] = Stubs::LifecycleEventList.stub(stub[:lifecycle_events]) unless stub[:lifecycle_events].nil?
        data['instanceLabel'] = stub[:instance_label] unless stub[:instance_label].nil?
        data
      end
    end

    # Operation Stubber for BatchGetDeployments
    class BatchGetDeployments
      def self.default(visited=[])
        {
          deployments_info: DeploymentsInfoList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deploymentsInfo'] = Stubs::DeploymentsInfoList.stub(stub[:deployments_info]) unless stub[:deployments_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DeploymentsInfoList
    class DeploymentsInfoList
      def self.default(visited=[])
        return nil if visited.include?('DeploymentsInfoList')
        visited = visited + ['DeploymentsInfoList']
        [
          DeploymentInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DeploymentInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DeploymentInfo
    class DeploymentInfo
      def self.default(visited=[])
        return nil if visited.include?('DeploymentInfo')
        visited = visited + ['DeploymentInfo']
        {
          application_name: 'application_name',
          deployment_group_name: 'deployment_group_name',
          deployment_config_name: 'deployment_config_name',
          deployment_id: 'deployment_id',
          previous_revision: RevisionLocation.default(visited),
          revision: RevisionLocation.default(visited),
          status: 'status',
          error_information: ErrorInformation.default(visited),
          create_time: Time.now,
          start_time: Time.now,
          complete_time: Time.now,
          deployment_overview: DeploymentOverview.default(visited),
          description: 'description',
          creator: 'creator',
          ignore_application_stop_failures: false,
          auto_rollback_configuration: AutoRollbackConfiguration.default(visited),
          update_outdated_instances_only: false,
          rollback_info: RollbackInfo.default(visited),
          deployment_style: DeploymentStyle.default(visited),
          target_instances: TargetInstances.default(visited),
          instance_termination_wait_time_started: false,
          blue_green_deployment_configuration: BlueGreenDeploymentConfiguration.default(visited),
          load_balancer_info: LoadBalancerInfo.default(visited),
          additional_deployment_status_info: 'additional_deployment_status_info',
          file_exists_behavior: 'file_exists_behavior',
          deployment_status_messages: DeploymentStatusMessageList.default(visited),
          compute_platform: 'compute_platform',
          external_id: 'external_id',
          related_deployments: RelatedDeployments.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentInfo.new
        data = {}
        data['applicationName'] = stub[:application_name] unless stub[:application_name].nil?
        data['deploymentGroupName'] = stub[:deployment_group_name] unless stub[:deployment_group_name].nil?
        data['deploymentConfigName'] = stub[:deployment_config_name] unless stub[:deployment_config_name].nil?
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['previousRevision'] = Stubs::RevisionLocation.stub(stub[:previous_revision]) unless stub[:previous_revision].nil?
        data['revision'] = Stubs::RevisionLocation.stub(stub[:revision]) unless stub[:revision].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['errorInformation'] = Stubs::ErrorInformation.stub(stub[:error_information]) unless stub[:error_information].nil?
        data['createTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['completeTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:complete_time]).to_i unless stub[:complete_time].nil?
        data['deploymentOverview'] = Stubs::DeploymentOverview.stub(stub[:deployment_overview]) unless stub[:deployment_overview].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creator'] = stub[:creator] unless stub[:creator].nil?
        data['ignoreApplicationStopFailures'] = stub[:ignore_application_stop_failures] unless stub[:ignore_application_stop_failures].nil?
        data['autoRollbackConfiguration'] = Stubs::AutoRollbackConfiguration.stub(stub[:auto_rollback_configuration]) unless stub[:auto_rollback_configuration].nil?
        data['updateOutdatedInstancesOnly'] = stub[:update_outdated_instances_only] unless stub[:update_outdated_instances_only].nil?
        data['rollbackInfo'] = Stubs::RollbackInfo.stub(stub[:rollback_info]) unless stub[:rollback_info].nil?
        data['deploymentStyle'] = Stubs::DeploymentStyle.stub(stub[:deployment_style]) unless stub[:deployment_style].nil?
        data['targetInstances'] = Stubs::TargetInstances.stub(stub[:target_instances]) unless stub[:target_instances].nil?
        data['instanceTerminationWaitTimeStarted'] = stub[:instance_termination_wait_time_started] unless stub[:instance_termination_wait_time_started].nil?
        data['blueGreenDeploymentConfiguration'] = Stubs::BlueGreenDeploymentConfiguration.stub(stub[:blue_green_deployment_configuration]) unless stub[:blue_green_deployment_configuration].nil?
        data['loadBalancerInfo'] = Stubs::LoadBalancerInfo.stub(stub[:load_balancer_info]) unless stub[:load_balancer_info].nil?
        data['additionalDeploymentStatusInfo'] = stub[:additional_deployment_status_info] unless stub[:additional_deployment_status_info].nil?
        data['fileExistsBehavior'] = stub[:file_exists_behavior] unless stub[:file_exists_behavior].nil?
        data['deploymentStatusMessages'] = Stubs::DeploymentStatusMessageList.stub(stub[:deployment_status_messages]) unless stub[:deployment_status_messages].nil?
        data['computePlatform'] = stub[:compute_platform] unless stub[:compute_platform].nil?
        data['externalId'] = stub[:external_id] unless stub[:external_id].nil?
        data['relatedDeployments'] = Stubs::RelatedDeployments.stub(stub[:related_deployments]) unless stub[:related_deployments].nil?
        data
      end
    end

    # Structure Stubber for RelatedDeployments
    class RelatedDeployments
      def self.default(visited=[])
        return nil if visited.include?('RelatedDeployments')
        visited = visited + ['RelatedDeployments']
        {
          auto_update_outdated_instances_root_deployment_id: 'auto_update_outdated_instances_root_deployment_id',
          auto_update_outdated_instances_deployment_ids: DeploymentsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RelatedDeployments.new
        data = {}
        data['autoUpdateOutdatedInstancesRootDeploymentId'] = stub[:auto_update_outdated_instances_root_deployment_id] unless stub[:auto_update_outdated_instances_root_deployment_id].nil?
        data['autoUpdateOutdatedInstancesDeploymentIds'] = Stubs::DeploymentsList.stub(stub[:auto_update_outdated_instances_deployment_ids]) unless stub[:auto_update_outdated_instances_deployment_ids].nil?
        data
      end
    end

    # List Stubber for DeploymentsList
    class DeploymentsList
      def self.default(visited=[])
        return nil if visited.include?('DeploymentsList')
        visited = visited + ['DeploymentsList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for DeploymentStatusMessageList
    class DeploymentStatusMessageList
      def self.default(visited=[])
        return nil if visited.include?('DeploymentStatusMessageList')
        visited = visited + ['DeploymentStatusMessageList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TargetInstances
    class TargetInstances
      def self.default(visited=[])
        return nil if visited.include?('TargetInstances')
        visited = visited + ['TargetInstances']
        {
          tag_filters: EC2TagFilterList.default(visited),
          auto_scaling_groups: AutoScalingGroupNameList.default(visited),
          ec2_tag_set: EC2TagSet.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetInstances.new
        data = {}
        data['tagFilters'] = Stubs::EC2TagFilterList.stub(stub[:tag_filters]) unless stub[:tag_filters].nil?
        data['autoScalingGroups'] = Stubs::AutoScalingGroupNameList.stub(stub[:auto_scaling_groups]) unless stub[:auto_scaling_groups].nil?
        data['ec2TagSet'] = Stubs::EC2TagSet.stub(stub[:ec2_tag_set]) unless stub[:ec2_tag_set].nil?
        data
      end
    end

    # List Stubber for AutoScalingGroupNameList
    class AutoScalingGroupNameList
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingGroupNameList')
        visited = visited + ['AutoScalingGroupNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RollbackInfo
    class RollbackInfo
      def self.default(visited=[])
        return nil if visited.include?('RollbackInfo')
        visited = visited + ['RollbackInfo']
        {
          rollback_deployment_id: 'rollback_deployment_id',
          rollback_triggering_deployment_id: 'rollback_triggering_deployment_id',
          rollback_message: 'rollback_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::RollbackInfo.new
        data = {}
        data['rollbackDeploymentId'] = stub[:rollback_deployment_id] unless stub[:rollback_deployment_id].nil?
        data['rollbackTriggeringDeploymentId'] = stub[:rollback_triggering_deployment_id] unless stub[:rollback_triggering_deployment_id].nil?
        data['rollbackMessage'] = stub[:rollback_message] unless stub[:rollback_message].nil?
        data
      end
    end

    # Structure Stubber for DeploymentOverview
    class DeploymentOverview
      def self.default(visited=[])
        return nil if visited.include?('DeploymentOverview')
        visited = visited + ['DeploymentOverview']
        {
          pending: 1,
          in_progress: 1,
          succeeded: 1,
          failed: 1,
          skipped: 1,
          ready: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentOverview.new
        data = {}
        data['Pending'] = stub[:pending] unless stub[:pending].nil?
        data['InProgress'] = stub[:in_progress] unless stub[:in_progress].nil?
        data['Succeeded'] = stub[:succeeded] unless stub[:succeeded].nil?
        data['Failed'] = stub[:failed] unless stub[:failed].nil?
        data['Skipped'] = stub[:skipped] unless stub[:skipped].nil?
        data['Ready'] = stub[:ready] unless stub[:ready].nil?
        data
      end
    end

    # Structure Stubber for ErrorInformation
    class ErrorInformation
      def self.default(visited=[])
        return nil if visited.include?('ErrorInformation')
        visited = visited + ['ErrorInformation']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorInformation.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for BatchGetOnPremisesInstances
    class BatchGetOnPremisesInstances
      def self.default(visited=[])
        {
          instance_infos: InstanceInfoList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['instanceInfos'] = Stubs::InstanceInfoList.stub(stub[:instance_infos]) unless stub[:instance_infos].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceInfoList
    class InstanceInfoList
      def self.default(visited=[])
        return nil if visited.include?('InstanceInfoList')
        visited = visited + ['InstanceInfoList']
        [
          InstanceInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InstanceInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceInfo
    class InstanceInfo
      def self.default(visited=[])
        return nil if visited.include?('InstanceInfo')
        visited = visited + ['InstanceInfo']
        {
          instance_name: 'instance_name',
          iam_session_arn: 'iam_session_arn',
          iam_user_arn: 'iam_user_arn',
          instance_arn: 'instance_arn',
          register_time: Time.now,
          deregister_time: Time.now,
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceInfo.new
        data = {}
        data['instanceName'] = stub[:instance_name] unless stub[:instance_name].nil?
        data['iamSessionArn'] = stub[:iam_session_arn] unless stub[:iam_session_arn].nil?
        data['iamUserArn'] = stub[:iam_user_arn] unless stub[:iam_user_arn].nil?
        data['instanceArn'] = stub[:instance_arn] unless stub[:instance_arn].nil?
        data['registerTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:register_time]).to_i unless stub[:register_time].nil?
        data['deregisterTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:deregister_time]).to_i unless stub[:deregister_time].nil?
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ContinueDeployment
    class ContinueDeployment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateApplication
    class CreateApplication
      def self.default(visited=[])
        {
          application_id: 'application_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['applicationId'] = stub[:application_id] unless stub[:application_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDeployment
    class CreateDeployment
      def self.default(visited=[])
        {
          deployment_id: 'deployment_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDeploymentConfig
    class CreateDeploymentConfig
      def self.default(visited=[])
        {
          deployment_config_id: 'deployment_config_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deploymentConfigId'] = stub[:deployment_config_id] unless stub[:deployment_config_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDeploymentGroup
    class CreateDeploymentGroup
      def self.default(visited=[])
        {
          deployment_group_id: 'deployment_group_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deploymentGroupId'] = stub[:deployment_group_id] unless stub[:deployment_group_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApplication
    class DeleteApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDeploymentConfig
    class DeleteDeploymentConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDeploymentGroup
    class DeleteDeploymentGroup
      def self.default(visited=[])
        {
          hooks_not_cleaned_up: AutoScalingGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['hooksNotCleanedUp'] = Stubs::AutoScalingGroupList.stub(stub[:hooks_not_cleaned_up]) unless stub[:hooks_not_cleaned_up].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteGitHubAccountToken
    class DeleteGitHubAccountToken
      def self.default(visited=[])
        {
          token_name: 'token_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tokenName'] = stub[:token_name] unless stub[:token_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResourcesByExternalId
    class DeleteResourcesByExternalId
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterOnPremisesInstance
    class DeregisterOnPremisesInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetApplication
    class GetApplication
      def self.default(visited=[])
        {
          application: ApplicationInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['application'] = Stubs::ApplicationInfo.stub(stub[:application]) unless stub[:application].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetApplicationRevision
    class GetApplicationRevision
      def self.default(visited=[])
        {
          application_name: 'application_name',
          revision: RevisionLocation.default(visited),
          revision_info: GenericRevisionInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['applicationName'] = stub[:application_name] unless stub[:application_name].nil?
        data['revision'] = Stubs::RevisionLocation.stub(stub[:revision]) unless stub[:revision].nil?
        data['revisionInfo'] = Stubs::GenericRevisionInfo.stub(stub[:revision_info]) unless stub[:revision_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDeployment
    class GetDeployment
      def self.default(visited=[])
        {
          deployment_info: DeploymentInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deploymentInfo'] = Stubs::DeploymentInfo.stub(stub[:deployment_info]) unless stub[:deployment_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDeploymentConfig
    class GetDeploymentConfig
      def self.default(visited=[])
        {
          deployment_config_info: DeploymentConfigInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deploymentConfigInfo'] = Stubs::DeploymentConfigInfo.stub(stub[:deployment_config_info]) unless stub[:deployment_config_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DeploymentConfigInfo
    class DeploymentConfigInfo
      def self.default(visited=[])
        return nil if visited.include?('DeploymentConfigInfo')
        visited = visited + ['DeploymentConfigInfo']
        {
          deployment_config_id: 'deployment_config_id',
          deployment_config_name: 'deployment_config_name',
          minimum_healthy_hosts: MinimumHealthyHosts.default(visited),
          create_time: Time.now,
          compute_platform: 'compute_platform',
          traffic_routing_config: TrafficRoutingConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DeploymentConfigInfo.new
        data = {}
        data['deploymentConfigId'] = stub[:deployment_config_id] unless stub[:deployment_config_id].nil?
        data['deploymentConfigName'] = stub[:deployment_config_name] unless stub[:deployment_config_name].nil?
        data['minimumHealthyHosts'] = Stubs::MinimumHealthyHosts.stub(stub[:minimum_healthy_hosts]) unless stub[:minimum_healthy_hosts].nil?
        data['createTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['computePlatform'] = stub[:compute_platform] unless stub[:compute_platform].nil?
        data['trafficRoutingConfig'] = Stubs::TrafficRoutingConfig.stub(stub[:traffic_routing_config]) unless stub[:traffic_routing_config].nil?
        data
      end
    end

    # Structure Stubber for TrafficRoutingConfig
    class TrafficRoutingConfig
      def self.default(visited=[])
        return nil if visited.include?('TrafficRoutingConfig')
        visited = visited + ['TrafficRoutingConfig']
        {
          type: 'type',
          time_based_canary: TimeBasedCanary.default(visited),
          time_based_linear: TimeBasedLinear.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TrafficRoutingConfig.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['timeBasedCanary'] = Stubs::TimeBasedCanary.stub(stub[:time_based_canary]) unless stub[:time_based_canary].nil?
        data['timeBasedLinear'] = Stubs::TimeBasedLinear.stub(stub[:time_based_linear]) unless stub[:time_based_linear].nil?
        data
      end
    end

    # Structure Stubber for TimeBasedLinear
    class TimeBasedLinear
      def self.default(visited=[])
        return nil if visited.include?('TimeBasedLinear')
        visited = visited + ['TimeBasedLinear']
        {
          linear_percentage: 1,
          linear_interval: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeBasedLinear.new
        data = {}
        data['linearPercentage'] = stub[:linear_percentage] unless stub[:linear_percentage].nil?
        data['linearInterval'] = stub[:linear_interval] unless stub[:linear_interval].nil?
        data
      end
    end

    # Structure Stubber for TimeBasedCanary
    class TimeBasedCanary
      def self.default(visited=[])
        return nil if visited.include?('TimeBasedCanary')
        visited = visited + ['TimeBasedCanary']
        {
          canary_percentage: 1,
          canary_interval: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeBasedCanary.new
        data = {}
        data['canaryPercentage'] = stub[:canary_percentage] unless stub[:canary_percentage].nil?
        data['canaryInterval'] = stub[:canary_interval] unless stub[:canary_interval].nil?
        data
      end
    end

    # Structure Stubber for MinimumHealthyHosts
    class MinimumHealthyHosts
      def self.default(visited=[])
        return nil if visited.include?('MinimumHealthyHosts')
        visited = visited + ['MinimumHealthyHosts']
        {
          type: 'type',
          value: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MinimumHealthyHosts.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for GetDeploymentGroup
    class GetDeploymentGroup
      def self.default(visited=[])
        {
          deployment_group_info: DeploymentGroupInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deploymentGroupInfo'] = Stubs::DeploymentGroupInfo.stub(stub[:deployment_group_info]) unless stub[:deployment_group_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDeploymentInstance
    class GetDeploymentInstance
      def self.default(visited=[])
        {
          instance_summary: InstanceSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['instanceSummary'] = Stubs::InstanceSummary.stub(stub[:instance_summary]) unless stub[:instance_summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDeploymentTarget
    class GetDeploymentTarget
      def self.default(visited=[])
        {
          deployment_target: DeploymentTarget.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deploymentTarget'] = Stubs::DeploymentTarget.stub(stub[:deployment_target]) unless stub[:deployment_target].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetOnPremisesInstance
    class GetOnPremisesInstance
      def self.default(visited=[])
        {
          instance_info: InstanceInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['instanceInfo'] = Stubs::InstanceInfo.stub(stub[:instance_info]) unless stub[:instance_info].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListApplicationRevisions
    class ListApplicationRevisions
      def self.default(visited=[])
        {
          revisions: RevisionLocationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['revisions'] = Stubs::RevisionLocationList.stub(stub[:revisions]) unless stub[:revisions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RevisionLocationList
    class RevisionLocationList
      def self.default(visited=[])
        return nil if visited.include?('RevisionLocationList')
        visited = visited + ['RevisionLocationList']
        [
          RevisionLocation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RevisionLocation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListApplications
    class ListApplications
      def self.default(visited=[])
        {
          applications: ApplicationsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['applications'] = Stubs::ApplicationsList.stub(stub[:applications]) unless stub[:applications].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ApplicationsList
    class ApplicationsList
      def self.default(visited=[])
        return nil if visited.include?('ApplicationsList')
        visited = visited + ['ApplicationsList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDeploymentConfigs
    class ListDeploymentConfigs
      def self.default(visited=[])
        {
          deployment_configs_list: DeploymentConfigsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deploymentConfigsList'] = Stubs::DeploymentConfigsList.stub(stub[:deployment_configs_list]) unless stub[:deployment_configs_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DeploymentConfigsList
    class DeploymentConfigsList
      def self.default(visited=[])
        return nil if visited.include?('DeploymentConfigsList')
        visited = visited + ['DeploymentConfigsList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDeploymentGroups
    class ListDeploymentGroups
      def self.default(visited=[])
        {
          application_name: 'application_name',
          deployment_groups: DeploymentGroupsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['applicationName'] = stub[:application_name] unless stub[:application_name].nil?
        data['deploymentGroups'] = Stubs::DeploymentGroupsList.stub(stub[:deployment_groups]) unless stub[:deployment_groups].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListDeploymentInstances
    class ListDeploymentInstances
      def self.default(visited=[])
        {
          instances_list: InstancesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['instancesList'] = Stubs::InstancesList.stub(stub[:instances_list]) unless stub[:instances_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstancesList
    class InstancesList
      def self.default(visited=[])
        return nil if visited.include?('InstancesList')
        visited = visited + ['InstancesList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDeploymentTargets
    class ListDeploymentTargets
      def self.default(visited=[])
        {
          target_ids: TargetIdList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['targetIds'] = Stubs::TargetIdList.stub(stub[:target_ids]) unless stub[:target_ids].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TargetIdList
    class TargetIdList
      def self.default(visited=[])
        return nil if visited.include?('TargetIdList')
        visited = visited + ['TargetIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListDeployments
    class ListDeployments
      def self.default(visited=[])
        {
          deployments: DeploymentsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deployments'] = Stubs::DeploymentsList.stub(stub[:deployments]) unless stub[:deployments].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListGitHubAccountTokenNames
    class ListGitHubAccountTokenNames
      def self.default(visited=[])
        {
          token_name_list: GitHubAccountTokenNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tokenNameList'] = Stubs::GitHubAccountTokenNameList.stub(stub[:token_name_list]) unless stub[:token_name_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GitHubAccountTokenNameList
    class GitHubAccountTokenNameList
      def self.default(visited=[])
        return nil if visited.include?('GitHubAccountTokenNameList')
        visited = visited + ['GitHubAccountTokenNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListOnPremisesInstances
    class ListOnPremisesInstances
      def self.default(visited=[])
        {
          instance_names: InstanceNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['instanceNames'] = Stubs::InstanceNameList.stub(stub[:instance_names]) unless stub[:instance_names].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceNameList
    class InstanceNameList
      def self.default(visited=[])
        return nil if visited.include?('InstanceNameList')
        visited = visited + ['InstanceNameList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutLifecycleEventHookExecutionStatus
    class PutLifecycleEventHookExecutionStatus
      def self.default(visited=[])
        {
          lifecycle_event_hook_execution_id: 'lifecycle_event_hook_execution_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['lifecycleEventHookExecutionId'] = stub[:lifecycle_event_hook_execution_id] unless stub[:lifecycle_event_hook_execution_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterApplicationRevision
    class RegisterApplicationRevision
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterOnPremisesInstance
    class RegisterOnPremisesInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RemoveTagsFromOnPremisesInstances
    class RemoveTagsFromOnPremisesInstances
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SkipWaitTimeForInstanceTermination
    class SkipWaitTimeForInstanceTermination
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopDeployment
    class StopDeployment
      def self.default(visited=[])
        {
          status: 'status',
          status_message: 'status_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApplication
    class UpdateApplication
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDeploymentGroup
    class UpdateDeploymentGroup
      def self.default(visited=[])
        {
          hooks_not_cleaned_up: AutoScalingGroupList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['hooksNotCleanedUp'] = Stubs::AutoScalingGroupList.stub(stub[:hooks_not_cleaned_up]) unless stub[:hooks_not_cleaned_up].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
