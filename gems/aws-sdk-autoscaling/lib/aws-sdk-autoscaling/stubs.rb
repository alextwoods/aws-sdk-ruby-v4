# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AutoScaling
  module Stubs

    # Operation Stubber for AttachInstances
    class AttachInstances
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AttachInstancesResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('AttachInstancesResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for AttachLoadBalancerTargetGroups
    class AttachLoadBalancerTargetGroups
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AttachLoadBalancerTargetGroupsResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('AttachLoadBalancerTargetGroupsResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for AttachLoadBalancers
    class AttachLoadBalancers
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('AttachLoadBalancersResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('AttachLoadBalancersResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchDeleteScheduledAction
    class BatchDeleteScheduledAction
      def self.default(visited=[])
        {
          failed_scheduled_actions: Stubs::FailedScheduledUpdateGroupActionRequests.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('BatchDeleteScheduledActionResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('BatchDeleteScheduledActionResult')
        xml << Hearth::XML::Node.new('FailedScheduledActions', Stubs::FailedScheduledUpdateGroupActionRequests.stub('member', stub[:failed_scheduled_actions])) unless stub[:failed_scheduled_actions].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for FailedScheduledUpdateGroupActionRequests
    class FailedScheduledUpdateGroupActionRequests
      def self.default(visited=[])
        return nil if visited.include?('FailedScheduledUpdateGroupActionRequests')
        visited = visited + ['FailedScheduledUpdateGroupActionRequests']
        [
          Stubs::FailedScheduledUpdateGroupActionRequest.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::FailedScheduledUpdateGroupActionRequest.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for FailedScheduledUpdateGroupActionRequest
    class FailedScheduledUpdateGroupActionRequest
      def self.default(visited=[])
        return nil if visited.include?('FailedScheduledUpdateGroupActionRequest')
        visited = visited + ['FailedScheduledUpdateGroupActionRequest']
        {
          scheduled_action_name: 'scheduled_action_name',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::FailedScheduledUpdateGroupActionRequest.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ScheduledActionName', stub[:scheduled_action_name].to_s) unless stub[:scheduled_action_name].nil?
        xml << Hearth::XML::Node.new('ErrorCode', stub[:error_code].to_s) unless stub[:error_code].nil?
        xml << Hearth::XML::Node.new('ErrorMessage', stub[:error_message].to_s) unless stub[:error_message].nil?
        xml
      end
    end

    # Operation Stubber for BatchPutScheduledUpdateGroupAction
    class BatchPutScheduledUpdateGroupAction
      def self.default(visited=[])
        {
          failed_scheduled_update_group_actions: Stubs::FailedScheduledUpdateGroupActionRequests.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('BatchPutScheduledUpdateGroupActionResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('BatchPutScheduledUpdateGroupActionResult')
        xml << Hearth::XML::Node.new('FailedScheduledUpdateGroupActions', Stubs::FailedScheduledUpdateGroupActionRequests.stub('member', stub[:failed_scheduled_update_group_actions])) unless stub[:failed_scheduled_update_group_actions].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CancelInstanceRefresh
    class CancelInstanceRefresh
      def self.default(visited=[])
        {
          instance_refresh_id: 'instance_refresh_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CancelInstanceRefreshResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('CancelInstanceRefreshResult')
        xml << Hearth::XML::Node.new('InstanceRefreshId', stub[:instance_refresh_id].to_s) unless stub[:instance_refresh_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CompleteLifecycleAction
    class CompleteLifecycleAction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CompleteLifecycleActionResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('CompleteLifecycleActionResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAutoScalingGroup
    class CreateAutoScalingGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateAutoScalingGroupResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('CreateAutoScalingGroupResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateLaunchConfiguration
    class CreateLaunchConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateLaunchConfigurationResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('CreateLaunchConfigurationResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateOrUpdateTags
    class CreateOrUpdateTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('CreateOrUpdateTagsResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('CreateOrUpdateTagsResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAutoScalingGroup
    class DeleteAutoScalingGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteAutoScalingGroupResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DeleteAutoScalingGroupResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLaunchConfiguration
    class DeleteLaunchConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteLaunchConfigurationResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DeleteLaunchConfigurationResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLifecycleHook
    class DeleteLifecycleHook
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteLifecycleHookResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DeleteLifecycleHookResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteNotificationConfiguration
    class DeleteNotificationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteNotificationConfigurationResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DeleteNotificationConfigurationResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePolicy
    class DeletePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeletePolicyResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DeletePolicyResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteScheduledAction
    class DeleteScheduledAction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteScheduledActionResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DeleteScheduledActionResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTags
    class DeleteTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteTagsResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DeleteTagsResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteWarmPool
    class DeleteWarmPool
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DeleteWarmPoolResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DeleteWarmPoolResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccountLimits
    class DescribeAccountLimits
      def self.default(visited=[])
        {
          max_number_of_auto_scaling_groups: 1,
          max_number_of_launch_configurations: 1,
          number_of_auto_scaling_groups: 1,
          number_of_launch_configurations: 1,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAccountLimitsResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeAccountLimitsResult')
        xml << Hearth::XML::Node.new('MaxNumberOfAutoScalingGroups', stub[:max_number_of_auto_scaling_groups].to_s) unless stub[:max_number_of_auto_scaling_groups].nil?
        xml << Hearth::XML::Node.new('MaxNumberOfLaunchConfigurations', stub[:max_number_of_launch_configurations].to_s) unless stub[:max_number_of_launch_configurations].nil?
        xml << Hearth::XML::Node.new('NumberOfAutoScalingGroups', stub[:number_of_auto_scaling_groups].to_s) unless stub[:number_of_auto_scaling_groups].nil?
        xml << Hearth::XML::Node.new('NumberOfLaunchConfigurations', stub[:number_of_launch_configurations].to_s) unless stub[:number_of_launch_configurations].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAdjustmentTypes
    class DescribeAdjustmentTypes
      def self.default(visited=[])
        {
          adjustment_types: Stubs::AdjustmentTypes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAdjustmentTypesResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeAdjustmentTypesResult')
        xml << Hearth::XML::Node.new('AdjustmentTypes', Stubs::AdjustmentTypes.stub('member', stub[:adjustment_types])) unless stub[:adjustment_types].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for AdjustmentTypes
    class AdjustmentTypes
      def self.default(visited=[])
        return nil if visited.include?('AdjustmentTypes')
        visited = visited + ['AdjustmentTypes']
        [
          Stubs::AdjustmentType.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::AdjustmentType.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AdjustmentType
    class AdjustmentType
      def self.default(visited=[])
        return nil if visited.include?('AdjustmentType')
        visited = visited + ['AdjustmentType']
        {
          adjustment_type: 'adjustment_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AdjustmentType.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AdjustmentType', stub[:adjustment_type].to_s) unless stub[:adjustment_type].nil?
        xml
      end
    end

    # Operation Stubber for DescribeAutoScalingGroups
    class DescribeAutoScalingGroups
      def self.default(visited=[])
        {
          auto_scaling_groups: Stubs::AutoScalingGroups.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAutoScalingGroupsResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeAutoScalingGroupsResult')
        xml << Hearth::XML::Node.new('AutoScalingGroups', Stubs::AutoScalingGroups.stub('member', stub[:auto_scaling_groups])) unless stub[:auto_scaling_groups].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for AutoScalingGroups
    class AutoScalingGroups
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingGroups')
        visited = visited + ['AutoScalingGroups']
        [
          Stubs::AutoScalingGroup.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::AutoScalingGroup.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AutoScalingGroup
    class AutoScalingGroup
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingGroup')
        visited = visited + ['AutoScalingGroup']
        {
          auto_scaling_group_name: 'auto_scaling_group_name',
          auto_scaling_group_arn: 'auto_scaling_group_arn',
          launch_configuration_name: 'launch_configuration_name',
          launch_template: Stubs::LaunchTemplateSpecification.default(visited),
          mixed_instances_policy: Stubs::MixedInstancesPolicy.default(visited),
          min_size: 1,
          max_size: 1,
          desired_capacity: 1,
          predicted_capacity: 1,
          default_cooldown: 1,
          availability_zones: Stubs::AvailabilityZones.default(visited),
          load_balancer_names: Stubs::LoadBalancerNames.default(visited),
          target_group_ar_ns: Stubs::TargetGroupARNs.default(visited),
          health_check_type: 'health_check_type',
          health_check_grace_period: 1,
          instances: Stubs::Instances.default(visited),
          created_time: Time.now,
          suspended_processes: Stubs::SuspendedProcesses.default(visited),
          placement_group: 'placement_group',
          vpc_zone_identifier: 'vpc_zone_identifier',
          enabled_metrics: Stubs::EnabledMetrics.default(visited),
          status: 'status',
          tags: Stubs::TagDescriptionList.default(visited),
          termination_policies: Stubs::TerminationPolicies.default(visited),
          new_instances_protected_from_scale_in: false,
          service_linked_role_arn: 'service_linked_role_arn',
          max_instance_lifetime: 1,
          capacity_rebalance: false,
          warm_pool_configuration: Stubs::WarmPoolConfiguration.default(visited),
          warm_pool_size: 1,
          context: 'context',
          desired_capacity_type: 'desired_capacity_type',
          default_instance_warmup: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AutoScalingGroup.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AutoScalingGroupName', stub[:auto_scaling_group_name].to_s) unless stub[:auto_scaling_group_name].nil?
        xml << Hearth::XML::Node.new('AutoScalingGroupARN', stub[:auto_scaling_group_arn].to_s) unless stub[:auto_scaling_group_arn].nil?
        xml << Hearth::XML::Node.new('LaunchConfigurationName', stub[:launch_configuration_name].to_s) unless stub[:launch_configuration_name].nil?
        xml << Stubs::LaunchTemplateSpecification.stub('LaunchTemplate', stub[:launch_template]) unless stub[:launch_template].nil?
        xml << Stubs::MixedInstancesPolicy.stub('MixedInstancesPolicy', stub[:mixed_instances_policy]) unless stub[:mixed_instances_policy].nil?
        xml << Hearth::XML::Node.new('MinSize', stub[:min_size].to_s) unless stub[:min_size].nil?
        xml << Hearth::XML::Node.new('MaxSize', stub[:max_size].to_s) unless stub[:max_size].nil?
        xml << Hearth::XML::Node.new('DesiredCapacity', stub[:desired_capacity].to_s) unless stub[:desired_capacity].nil?
        xml << Hearth::XML::Node.new('PredictedCapacity', stub[:predicted_capacity].to_s) unless stub[:predicted_capacity].nil?
        xml << Hearth::XML::Node.new('DefaultCooldown', stub[:default_cooldown].to_s) unless stub[:default_cooldown].nil?
        xml << Hearth::XML::Node.new('AvailabilityZones', Stubs::AvailabilityZones.stub('member', stub[:availability_zones])) unless stub[:availability_zones].nil?
        xml << Hearth::XML::Node.new('LoadBalancerNames', Stubs::LoadBalancerNames.stub('member', stub[:load_balancer_names])) unless stub[:load_balancer_names].nil?
        xml << Hearth::XML::Node.new('TargetGroupARNs', Stubs::TargetGroupARNs.stub('member', stub[:target_group_ar_ns])) unless stub[:target_group_ar_ns].nil?
        xml << Hearth::XML::Node.new('HealthCheckType', stub[:health_check_type].to_s) unless stub[:health_check_type].nil?
        xml << Hearth::XML::Node.new('HealthCheckGracePeriod', stub[:health_check_grace_period].to_s) unless stub[:health_check_grace_period].nil?
        xml << Hearth::XML::Node.new('Instances', Stubs::Instances.stub('member', stub[:instances])) unless stub[:instances].nil?
        xml << Hearth::XML::Node.new('CreatedTime', Hearth::TimeHelper.to_date_time(stub[:created_time])) unless stub[:created_time].nil?
        xml << Hearth::XML::Node.new('SuspendedProcesses', Stubs::SuspendedProcesses.stub('member', stub[:suspended_processes])) unless stub[:suspended_processes].nil?
        xml << Hearth::XML::Node.new('PlacementGroup', stub[:placement_group].to_s) unless stub[:placement_group].nil?
        xml << Hearth::XML::Node.new('VPCZoneIdentifier', stub[:vpc_zone_identifier].to_s) unless stub[:vpc_zone_identifier].nil?
        xml << Hearth::XML::Node.new('EnabledMetrics', Stubs::EnabledMetrics.stub('member', stub[:enabled_metrics])) unless stub[:enabled_metrics].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('Tags', Stubs::TagDescriptionList.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('TerminationPolicies', Stubs::TerminationPolicies.stub('member', stub[:termination_policies])) unless stub[:termination_policies].nil?
        xml << Hearth::XML::Node.new('NewInstancesProtectedFromScaleIn', stub[:new_instances_protected_from_scale_in].to_s) unless stub[:new_instances_protected_from_scale_in].nil?
        xml << Hearth::XML::Node.new('ServiceLinkedRoleARN', stub[:service_linked_role_arn].to_s) unless stub[:service_linked_role_arn].nil?
        xml << Hearth::XML::Node.new('MaxInstanceLifetime', stub[:max_instance_lifetime].to_s) unless stub[:max_instance_lifetime].nil?
        xml << Hearth::XML::Node.new('CapacityRebalance', stub[:capacity_rebalance].to_s) unless stub[:capacity_rebalance].nil?
        xml << Stubs::WarmPoolConfiguration.stub('WarmPoolConfiguration', stub[:warm_pool_configuration]) unless stub[:warm_pool_configuration].nil?
        xml << Hearth::XML::Node.new('WarmPoolSize', stub[:warm_pool_size].to_s) unless stub[:warm_pool_size].nil?
        xml << Hearth::XML::Node.new('Context', stub[:context].to_s) unless stub[:context].nil?
        xml << Hearth::XML::Node.new('DesiredCapacityType', stub[:desired_capacity_type].to_s) unless stub[:desired_capacity_type].nil?
        xml << Hearth::XML::Node.new('DefaultInstanceWarmup', stub[:default_instance_warmup].to_s) unless stub[:default_instance_warmup].nil?
        xml
      end
    end

    # Structure Stubber for WarmPoolConfiguration
    class WarmPoolConfiguration
      def self.default(visited=[])
        return nil if visited.include?('WarmPoolConfiguration')
        visited = visited + ['WarmPoolConfiguration']
        {
          max_group_prepared_capacity: 1,
          min_size: 1,
          pool_state: 'pool_state',
          status: 'status',
          instance_reuse_policy: Stubs::InstanceReusePolicy.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::WarmPoolConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MaxGroupPreparedCapacity', stub[:max_group_prepared_capacity].to_s) unless stub[:max_group_prepared_capacity].nil?
        xml << Hearth::XML::Node.new('MinSize', stub[:min_size].to_s) unless stub[:min_size].nil?
        xml << Hearth::XML::Node.new('PoolState', stub[:pool_state].to_s) unless stub[:pool_state].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Stubs::InstanceReusePolicy.stub('InstanceReusePolicy', stub[:instance_reuse_policy]) unless stub[:instance_reuse_policy].nil?
        xml
      end
    end

    # Structure Stubber for InstanceReusePolicy
    class InstanceReusePolicy
      def self.default(visited=[])
        return nil if visited.include?('InstanceReusePolicy')
        visited = visited + ['InstanceReusePolicy']
        {
          reuse_on_scale_in: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InstanceReusePolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ReuseOnScaleIn', stub[:reuse_on_scale_in].to_s) unless stub[:reuse_on_scale_in].nil?
        xml
      end
    end

    # List Stubber for TerminationPolicies
    class TerminationPolicies
      def self.default(visited=[])
        return nil if visited.include?('TerminationPolicies')
        visited = visited + ['TerminationPolicies']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for TagDescriptionList
    class TagDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('TagDescriptionList')
        visited = visited + ['TagDescriptionList']
        [
          Stubs::TagDescription.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::TagDescription.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for TagDescription
    class TagDescription
      def self.default(visited=[])
        return nil if visited.include?('TagDescription')
        visited = visited + ['TagDescription']
        {
          resource_id: 'resource_id',
          resource_type: 'resource_type',
          key: 'key',
          value: 'value',
          propagate_at_launch: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TagDescription.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ResourceId', stub[:resource_id].to_s) unless stub[:resource_id].nil?
        xml << Hearth::XML::Node.new('ResourceType', stub[:resource_type].to_s) unless stub[:resource_type].nil?
        xml << Hearth::XML::Node.new('Key', stub[:key].to_s) unless stub[:key].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml << Hearth::XML::Node.new('PropagateAtLaunch', stub[:propagate_at_launch].to_s) unless stub[:propagate_at_launch].nil?
        xml
      end
    end

    # List Stubber for EnabledMetrics
    class EnabledMetrics
      def self.default(visited=[])
        return nil if visited.include?('EnabledMetrics')
        visited = visited + ['EnabledMetrics']
        [
          Stubs::EnabledMetric.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::EnabledMetric.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for EnabledMetric
    class EnabledMetric
      def self.default(visited=[])
        return nil if visited.include?('EnabledMetric')
        visited = visited + ['EnabledMetric']
        {
          metric: 'metric',
          granularity: 'granularity',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::EnabledMetric.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Metric', stub[:metric].to_s) unless stub[:metric].nil?
        xml << Hearth::XML::Node.new('Granularity', stub[:granularity].to_s) unless stub[:granularity].nil?
        xml
      end
    end

    # List Stubber for SuspendedProcesses
    class SuspendedProcesses
      def self.default(visited=[])
        return nil if visited.include?('SuspendedProcesses')
        visited = visited + ['SuspendedProcesses']
        [
          Stubs::SuspendedProcess.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::SuspendedProcess.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for SuspendedProcess
    class SuspendedProcess
      def self.default(visited=[])
        return nil if visited.include?('SuspendedProcess')
        visited = visited + ['SuspendedProcess']
        {
          process_name: 'process_name',
          suspension_reason: 'suspension_reason',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::SuspendedProcess.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ProcessName', stub[:process_name].to_s) unless stub[:process_name].nil?
        xml << Hearth::XML::Node.new('SuspensionReason', stub[:suspension_reason].to_s) unless stub[:suspension_reason].nil?
        xml
      end
    end

    # List Stubber for Instances
    class Instances
      def self.default(visited=[])
        return nil if visited.include?('Instances')
        visited = visited + ['Instances']
        [
          Stubs::Instance.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Instance.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Instance
    class Instance
      def self.default(visited=[])
        return nil if visited.include?('Instance')
        visited = visited + ['Instance']
        {
          instance_id: 'instance_id',
          instance_type: 'instance_type',
          availability_zone: 'availability_zone',
          lifecycle_state: 'lifecycle_state',
          health_status: 'health_status',
          launch_configuration_name: 'launch_configuration_name',
          launch_template: Stubs::LaunchTemplateSpecification.default(visited),
          protected_from_scale_in: false,
          weighted_capacity: 'weighted_capacity',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Instance.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('InstanceId', stub[:instance_id].to_s) unless stub[:instance_id].nil?
        xml << Hearth::XML::Node.new('InstanceType', stub[:instance_type].to_s) unless stub[:instance_type].nil?
        xml << Hearth::XML::Node.new('AvailabilityZone', stub[:availability_zone].to_s) unless stub[:availability_zone].nil?
        xml << Hearth::XML::Node.new('LifecycleState', stub[:lifecycle_state].to_s) unless stub[:lifecycle_state].nil?
        xml << Hearth::XML::Node.new('HealthStatus', stub[:health_status].to_s) unless stub[:health_status].nil?
        xml << Hearth::XML::Node.new('LaunchConfigurationName', stub[:launch_configuration_name].to_s) unless stub[:launch_configuration_name].nil?
        xml << Stubs::LaunchTemplateSpecification.stub('LaunchTemplate', stub[:launch_template]) unless stub[:launch_template].nil?
        xml << Hearth::XML::Node.new('ProtectedFromScaleIn', stub[:protected_from_scale_in].to_s) unless stub[:protected_from_scale_in].nil?
        xml << Hearth::XML::Node.new('WeightedCapacity', stub[:weighted_capacity].to_s) unless stub[:weighted_capacity].nil?
        xml
      end
    end

    # Structure Stubber for LaunchTemplateSpecification
    class LaunchTemplateSpecification
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateSpecification')
        visited = visited + ['LaunchTemplateSpecification']
        {
          launch_template_id: 'launch_template_id',
          launch_template_name: 'launch_template_name',
          version: 'version',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LaunchTemplateSpecification.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LaunchTemplateId', stub[:launch_template_id].to_s) unless stub[:launch_template_id].nil?
        xml << Hearth::XML::Node.new('LaunchTemplateName', stub[:launch_template_name].to_s) unless stub[:launch_template_name].nil?
        xml << Hearth::XML::Node.new('Version', stub[:version].to_s) unless stub[:version].nil?
        xml
      end
    end

    # List Stubber for TargetGroupARNs
    class TargetGroupARNs
      def self.default(visited=[])
        return nil if visited.include?('TargetGroupARNs')
        visited = visited + ['TargetGroupARNs']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for LoadBalancerNames
    class LoadBalancerNames
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerNames')
        visited = visited + ['LoadBalancerNames']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for AvailabilityZones
    class AvailabilityZones
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZones')
        visited = visited + ['AvailabilityZones']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MixedInstancesPolicy
    class MixedInstancesPolicy
      def self.default(visited=[])
        return nil if visited.include?('MixedInstancesPolicy')
        visited = visited + ['MixedInstancesPolicy']
        {
          launch_template: Stubs::LaunchTemplate.default(visited),
          instances_distribution: Stubs::InstancesDistribution.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MixedInstancesPolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::LaunchTemplate.stub('LaunchTemplate', stub[:launch_template]) unless stub[:launch_template].nil?
        xml << Stubs::InstancesDistribution.stub('InstancesDistribution', stub[:instances_distribution]) unless stub[:instances_distribution].nil?
        xml
      end
    end

    # Structure Stubber for InstancesDistribution
    class InstancesDistribution
      def self.default(visited=[])
        return nil if visited.include?('InstancesDistribution')
        visited = visited + ['InstancesDistribution']
        {
          on_demand_allocation_strategy: 'on_demand_allocation_strategy',
          on_demand_base_capacity: 1,
          on_demand_percentage_above_base_capacity: 1,
          spot_allocation_strategy: 'spot_allocation_strategy',
          spot_instance_pools: 1,
          spot_max_price: 'spot_max_price',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InstancesDistribution.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('OnDemandAllocationStrategy', stub[:on_demand_allocation_strategy].to_s) unless stub[:on_demand_allocation_strategy].nil?
        xml << Hearth::XML::Node.new('OnDemandBaseCapacity', stub[:on_demand_base_capacity].to_s) unless stub[:on_demand_base_capacity].nil?
        xml << Hearth::XML::Node.new('OnDemandPercentageAboveBaseCapacity', stub[:on_demand_percentage_above_base_capacity].to_s) unless stub[:on_demand_percentage_above_base_capacity].nil?
        xml << Hearth::XML::Node.new('SpotAllocationStrategy', stub[:spot_allocation_strategy].to_s) unless stub[:spot_allocation_strategy].nil?
        xml << Hearth::XML::Node.new('SpotInstancePools', stub[:spot_instance_pools].to_s) unless stub[:spot_instance_pools].nil?
        xml << Hearth::XML::Node.new('SpotMaxPrice', stub[:spot_max_price].to_s) unless stub[:spot_max_price].nil?
        xml
      end
    end

    # Structure Stubber for LaunchTemplate
    class LaunchTemplate
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplate')
        visited = visited + ['LaunchTemplate']
        {
          launch_template_specification: Stubs::LaunchTemplateSpecification.default(visited),
          overrides: Stubs::Overrides.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LaunchTemplate.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::LaunchTemplateSpecification.stub('LaunchTemplateSpecification', stub[:launch_template_specification]) unless stub[:launch_template_specification].nil?
        xml << Hearth::XML::Node.new('Overrides', Stubs::Overrides.stub('member', stub[:overrides])) unless stub[:overrides].nil?
        xml
      end
    end

    # List Stubber for Overrides
    class Overrides
      def self.default(visited=[])
        return nil if visited.include?('Overrides')
        visited = visited + ['Overrides']
        [
          Stubs::LaunchTemplateOverrides.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::LaunchTemplateOverrides.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LaunchTemplateOverrides
    class LaunchTemplateOverrides
      def self.default(visited=[])
        return nil if visited.include?('LaunchTemplateOverrides')
        visited = visited + ['LaunchTemplateOverrides']
        {
          instance_type: 'instance_type',
          weighted_capacity: 'weighted_capacity',
          launch_template_specification: Stubs::LaunchTemplateSpecification.default(visited),
          instance_requirements: Stubs::InstanceRequirements.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LaunchTemplateOverrides.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('InstanceType', stub[:instance_type].to_s) unless stub[:instance_type].nil?
        xml << Hearth::XML::Node.new('WeightedCapacity', stub[:weighted_capacity].to_s) unless stub[:weighted_capacity].nil?
        xml << Stubs::LaunchTemplateSpecification.stub('LaunchTemplateSpecification', stub[:launch_template_specification]) unless stub[:launch_template_specification].nil?
        xml << Stubs::InstanceRequirements.stub('InstanceRequirements', stub[:instance_requirements]) unless stub[:instance_requirements].nil?
        xml
      end
    end

    # Structure Stubber for InstanceRequirements
    class InstanceRequirements
      def self.default(visited=[])
        return nil if visited.include?('InstanceRequirements')
        visited = visited + ['InstanceRequirements']
        {
          v_cpu_count: Stubs::VCpuCountRequest.default(visited),
          memory_mi_b: Stubs::MemoryMiBRequest.default(visited),
          cpu_manufacturers: Stubs::CpuManufacturers.default(visited),
          memory_gi_b_per_v_cpu: Stubs::MemoryGiBPerVCpuRequest.default(visited),
          excluded_instance_types: Stubs::ExcludedInstanceTypes.default(visited),
          instance_generations: Stubs::InstanceGenerations.default(visited),
          spot_max_price_percentage_over_lowest_price: 1,
          on_demand_max_price_percentage_over_lowest_price: 1,
          bare_metal: 'bare_metal',
          burstable_performance: 'burstable_performance',
          require_hibernate_support: false,
          network_interface_count: Stubs::NetworkInterfaceCountRequest.default(visited),
          local_storage: 'local_storage',
          local_storage_types: Stubs::LocalStorageTypes.default(visited),
          total_local_storage_gb: Stubs::TotalLocalStorageGBRequest.default(visited),
          baseline_ebs_bandwidth_mbps: Stubs::BaselineEbsBandwidthMbpsRequest.default(visited),
          accelerator_types: Stubs::AcceleratorTypes.default(visited),
          accelerator_count: Stubs::AcceleratorCountRequest.default(visited),
          accelerator_manufacturers: Stubs::AcceleratorManufacturers.default(visited),
          accelerator_names: Stubs::AcceleratorNames.default(visited),
          accelerator_total_memory_mi_b: Stubs::AcceleratorTotalMemoryMiBRequest.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InstanceRequirements.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::VCpuCountRequest.stub('VCpuCount', stub[:v_cpu_count]) unless stub[:v_cpu_count].nil?
        xml << Stubs::MemoryMiBRequest.stub('MemoryMiB', stub[:memory_mi_b]) unless stub[:memory_mi_b].nil?
        xml << Hearth::XML::Node.new('CpuManufacturers', Stubs::CpuManufacturers.stub('member', stub[:cpu_manufacturers])) unless stub[:cpu_manufacturers].nil?
        xml << Stubs::MemoryGiBPerVCpuRequest.stub('MemoryGiBPerVCpu', stub[:memory_gi_b_per_v_cpu]) unless stub[:memory_gi_b_per_v_cpu].nil?
        xml << Hearth::XML::Node.new('ExcludedInstanceTypes', Stubs::ExcludedInstanceTypes.stub('member', stub[:excluded_instance_types])) unless stub[:excluded_instance_types].nil?
        xml << Hearth::XML::Node.new('InstanceGenerations', Stubs::InstanceGenerations.stub('member', stub[:instance_generations])) unless stub[:instance_generations].nil?
        xml << Hearth::XML::Node.new('SpotMaxPricePercentageOverLowestPrice', stub[:spot_max_price_percentage_over_lowest_price].to_s) unless stub[:spot_max_price_percentage_over_lowest_price].nil?
        xml << Hearth::XML::Node.new('OnDemandMaxPricePercentageOverLowestPrice', stub[:on_demand_max_price_percentage_over_lowest_price].to_s) unless stub[:on_demand_max_price_percentage_over_lowest_price].nil?
        xml << Hearth::XML::Node.new('BareMetal', stub[:bare_metal].to_s) unless stub[:bare_metal].nil?
        xml << Hearth::XML::Node.new('BurstablePerformance', stub[:burstable_performance].to_s) unless stub[:burstable_performance].nil?
        xml << Hearth::XML::Node.new('RequireHibernateSupport', stub[:require_hibernate_support].to_s) unless stub[:require_hibernate_support].nil?
        xml << Stubs::NetworkInterfaceCountRequest.stub('NetworkInterfaceCount', stub[:network_interface_count]) unless stub[:network_interface_count].nil?
        xml << Hearth::XML::Node.new('LocalStorage', stub[:local_storage].to_s) unless stub[:local_storage].nil?
        xml << Hearth::XML::Node.new('LocalStorageTypes', Stubs::LocalStorageTypes.stub('member', stub[:local_storage_types])) unless stub[:local_storage_types].nil?
        xml << Stubs::TotalLocalStorageGBRequest.stub('TotalLocalStorageGB', stub[:total_local_storage_gb]) unless stub[:total_local_storage_gb].nil?
        xml << Stubs::BaselineEbsBandwidthMbpsRequest.stub('BaselineEbsBandwidthMbps', stub[:baseline_ebs_bandwidth_mbps]) unless stub[:baseline_ebs_bandwidth_mbps].nil?
        xml << Hearth::XML::Node.new('AcceleratorTypes', Stubs::AcceleratorTypes.stub('member', stub[:accelerator_types])) unless stub[:accelerator_types].nil?
        xml << Stubs::AcceleratorCountRequest.stub('AcceleratorCount', stub[:accelerator_count]) unless stub[:accelerator_count].nil?
        xml << Hearth::XML::Node.new('AcceleratorManufacturers', Stubs::AcceleratorManufacturers.stub('member', stub[:accelerator_manufacturers])) unless stub[:accelerator_manufacturers].nil?
        xml << Hearth::XML::Node.new('AcceleratorNames', Stubs::AcceleratorNames.stub('member', stub[:accelerator_names])) unless stub[:accelerator_names].nil?
        xml << Stubs::AcceleratorTotalMemoryMiBRequest.stub('AcceleratorTotalMemoryMiB', stub[:accelerator_total_memory_mi_b]) unless stub[:accelerator_total_memory_mi_b].nil?
        xml
      end
    end

    # Structure Stubber for AcceleratorTotalMemoryMiBRequest
    class AcceleratorTotalMemoryMiBRequest
      def self.default(visited=[])
        return nil if visited.include?('AcceleratorTotalMemoryMiBRequest')
        visited = visited + ['AcceleratorTotalMemoryMiBRequest']
        {
          min: 1,
          max: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AcceleratorTotalMemoryMiBRequest.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Min', stub[:min].to_s) unless stub[:min].nil?
        xml << Hearth::XML::Node.new('Max', stub[:max].to_s) unless stub[:max].nil?
        xml
      end
    end

    # List Stubber for AcceleratorNames
    class AcceleratorNames
      def self.default(visited=[])
        return nil if visited.include?('AcceleratorNames')
        visited = visited + ['AcceleratorNames']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for AcceleratorManufacturers
    class AcceleratorManufacturers
      def self.default(visited=[])
        return nil if visited.include?('AcceleratorManufacturers')
        visited = visited + ['AcceleratorManufacturers']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AcceleratorCountRequest
    class AcceleratorCountRequest
      def self.default(visited=[])
        return nil if visited.include?('AcceleratorCountRequest')
        visited = visited + ['AcceleratorCountRequest']
        {
          min: 1,
          max: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AcceleratorCountRequest.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Min', stub[:min].to_s) unless stub[:min].nil?
        xml << Hearth::XML::Node.new('Max', stub[:max].to_s) unless stub[:max].nil?
        xml
      end
    end

    # List Stubber for AcceleratorTypes
    class AcceleratorTypes
      def self.default(visited=[])
        return nil if visited.include?('AcceleratorTypes')
        visited = visited + ['AcceleratorTypes']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for BaselineEbsBandwidthMbpsRequest
    class BaselineEbsBandwidthMbpsRequest
      def self.default(visited=[])
        return nil if visited.include?('BaselineEbsBandwidthMbpsRequest')
        visited = visited + ['BaselineEbsBandwidthMbpsRequest']
        {
          min: 1,
          max: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::BaselineEbsBandwidthMbpsRequest.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Min', stub[:min].to_s) unless stub[:min].nil?
        xml << Hearth::XML::Node.new('Max', stub[:max].to_s) unless stub[:max].nil?
        xml
      end
    end

    # Structure Stubber for TotalLocalStorageGBRequest
    class TotalLocalStorageGBRequest
      def self.default(visited=[])
        return nil if visited.include?('TotalLocalStorageGBRequest')
        visited = visited + ['TotalLocalStorageGBRequest']
        {
          min: 1.0,
          max: 1.0,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TotalLocalStorageGBRequest.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Min', Hearth::NumberHelper.serialize(stub[:min]).to_s) unless stub[:min].nil?
        xml << Hearth::XML::Node.new('Max', Hearth::NumberHelper.serialize(stub[:max]).to_s) unless stub[:max].nil?
        xml
      end
    end

    # List Stubber for LocalStorageTypes
    class LocalStorageTypes
      def self.default(visited=[])
        return nil if visited.include?('LocalStorageTypes')
        visited = visited + ['LocalStorageTypes']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for NetworkInterfaceCountRequest
    class NetworkInterfaceCountRequest
      def self.default(visited=[])
        return nil if visited.include?('NetworkInterfaceCountRequest')
        visited = visited + ['NetworkInterfaceCountRequest']
        {
          min: 1,
          max: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NetworkInterfaceCountRequest.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Min', stub[:min].to_s) unless stub[:min].nil?
        xml << Hearth::XML::Node.new('Max', stub[:max].to_s) unless stub[:max].nil?
        xml
      end
    end

    # List Stubber for InstanceGenerations
    class InstanceGenerations
      def self.default(visited=[])
        return nil if visited.include?('InstanceGenerations')
        visited = visited + ['InstanceGenerations']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for ExcludedInstanceTypes
    class ExcludedInstanceTypes
      def self.default(visited=[])
        return nil if visited.include?('ExcludedInstanceTypes')
        visited = visited + ['ExcludedInstanceTypes']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MemoryGiBPerVCpuRequest
    class MemoryGiBPerVCpuRequest
      def self.default(visited=[])
        return nil if visited.include?('MemoryGiBPerVCpuRequest')
        visited = visited + ['MemoryGiBPerVCpuRequest']
        {
          min: 1.0,
          max: 1.0,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MemoryGiBPerVCpuRequest.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Min', Hearth::NumberHelper.serialize(stub[:min]).to_s) unless stub[:min].nil?
        xml << Hearth::XML::Node.new('Max', Hearth::NumberHelper.serialize(stub[:max]).to_s) unless stub[:max].nil?
        xml
      end
    end

    # List Stubber for CpuManufacturers
    class CpuManufacturers
      def self.default(visited=[])
        return nil if visited.include?('CpuManufacturers')
        visited = visited + ['CpuManufacturers']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MemoryMiBRequest
    class MemoryMiBRequest
      def self.default(visited=[])
        return nil if visited.include?('MemoryMiBRequest')
        visited = visited + ['MemoryMiBRequest']
        {
          min: 1,
          max: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MemoryMiBRequest.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Min', stub[:min].to_s) unless stub[:min].nil?
        xml << Hearth::XML::Node.new('Max', stub[:max].to_s) unless stub[:max].nil?
        xml
      end
    end

    # Structure Stubber for VCpuCountRequest
    class VCpuCountRequest
      def self.default(visited=[])
        return nil if visited.include?('VCpuCountRequest')
        visited = visited + ['VCpuCountRequest']
        {
          min: 1,
          max: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::VCpuCountRequest.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Min', stub[:min].to_s) unless stub[:min].nil?
        xml << Hearth::XML::Node.new('Max', stub[:max].to_s) unless stub[:max].nil?
        xml
      end
    end

    # Operation Stubber for DescribeAutoScalingInstances
    class DescribeAutoScalingInstances
      def self.default(visited=[])
        {
          auto_scaling_instances: Stubs::AutoScalingInstances.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAutoScalingInstancesResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeAutoScalingInstancesResult')
        xml << Hearth::XML::Node.new('AutoScalingInstances', Stubs::AutoScalingInstances.stub('member', stub[:auto_scaling_instances])) unless stub[:auto_scaling_instances].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for AutoScalingInstances
    class AutoScalingInstances
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingInstances')
        visited = visited + ['AutoScalingInstances']
        [
          Stubs::AutoScalingInstanceDetails.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::AutoScalingInstanceDetails.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for AutoScalingInstanceDetails
    class AutoScalingInstanceDetails
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingInstanceDetails')
        visited = visited + ['AutoScalingInstanceDetails']
        {
          instance_id: 'instance_id',
          instance_type: 'instance_type',
          auto_scaling_group_name: 'auto_scaling_group_name',
          availability_zone: 'availability_zone',
          lifecycle_state: 'lifecycle_state',
          health_status: 'health_status',
          launch_configuration_name: 'launch_configuration_name',
          launch_template: Stubs::LaunchTemplateSpecification.default(visited),
          protected_from_scale_in: false,
          weighted_capacity: 'weighted_capacity',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::AutoScalingInstanceDetails.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('InstanceId', stub[:instance_id].to_s) unless stub[:instance_id].nil?
        xml << Hearth::XML::Node.new('InstanceType', stub[:instance_type].to_s) unless stub[:instance_type].nil?
        xml << Hearth::XML::Node.new('AutoScalingGroupName', stub[:auto_scaling_group_name].to_s) unless stub[:auto_scaling_group_name].nil?
        xml << Hearth::XML::Node.new('AvailabilityZone', stub[:availability_zone].to_s) unless stub[:availability_zone].nil?
        xml << Hearth::XML::Node.new('LifecycleState', stub[:lifecycle_state].to_s) unless stub[:lifecycle_state].nil?
        xml << Hearth::XML::Node.new('HealthStatus', stub[:health_status].to_s) unless stub[:health_status].nil?
        xml << Hearth::XML::Node.new('LaunchConfigurationName', stub[:launch_configuration_name].to_s) unless stub[:launch_configuration_name].nil?
        xml << Stubs::LaunchTemplateSpecification.stub('LaunchTemplate', stub[:launch_template]) unless stub[:launch_template].nil?
        xml << Hearth::XML::Node.new('ProtectedFromScaleIn', stub[:protected_from_scale_in].to_s) unless stub[:protected_from_scale_in].nil?
        xml << Hearth::XML::Node.new('WeightedCapacity', stub[:weighted_capacity].to_s) unless stub[:weighted_capacity].nil?
        xml
      end
    end

    # Operation Stubber for DescribeAutoScalingNotificationTypes
    class DescribeAutoScalingNotificationTypes
      def self.default(visited=[])
        {
          auto_scaling_notification_types: Stubs::AutoScalingNotificationTypes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeAutoScalingNotificationTypesResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeAutoScalingNotificationTypesResult')
        xml << Hearth::XML::Node.new('AutoScalingNotificationTypes', Stubs::AutoScalingNotificationTypes.stub('member', stub[:auto_scaling_notification_types])) unless stub[:auto_scaling_notification_types].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for AutoScalingNotificationTypes
    class AutoScalingNotificationTypes
      def self.default(visited=[])
        return nil if visited.include?('AutoScalingNotificationTypes')
        visited = visited + ['AutoScalingNotificationTypes']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeInstanceRefreshes
    class DescribeInstanceRefreshes
      def self.default(visited=[])
        {
          instance_refreshes: Stubs::InstanceRefreshes.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeInstanceRefreshesResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeInstanceRefreshesResult')
        xml << Hearth::XML::Node.new('InstanceRefreshes', Stubs::InstanceRefreshes.stub('member', stub[:instance_refreshes])) unless stub[:instance_refreshes].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceRefreshes
    class InstanceRefreshes
      def self.default(visited=[])
        return nil if visited.include?('InstanceRefreshes')
        visited = visited + ['InstanceRefreshes']
        [
          Stubs::InstanceRefresh.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::InstanceRefresh.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for InstanceRefresh
    class InstanceRefresh
      def self.default(visited=[])
        return nil if visited.include?('InstanceRefresh')
        visited = visited + ['InstanceRefresh']
        {
          instance_refresh_id: 'instance_refresh_id',
          auto_scaling_group_name: 'auto_scaling_group_name',
          status: 'status',
          status_reason: 'status_reason',
          start_time: Time.now,
          end_time: Time.now,
          percentage_complete: 1,
          instances_to_update: 1,
          progress_details: Stubs::InstanceRefreshProgressDetails.default(visited),
          preferences: Stubs::RefreshPreferences.default(visited),
          desired_configuration: Stubs::DesiredConfiguration.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InstanceRefresh.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('InstanceRefreshId', stub[:instance_refresh_id].to_s) unless stub[:instance_refresh_id].nil?
        xml << Hearth::XML::Node.new('AutoScalingGroupName', stub[:auto_scaling_group_name].to_s) unless stub[:auto_scaling_group_name].nil?
        xml << Hearth::XML::Node.new('Status', stub[:status].to_s) unless stub[:status].nil?
        xml << Hearth::XML::Node.new('StatusReason', stub[:status_reason].to_s) unless stub[:status_reason].nil?
        xml << Hearth::XML::Node.new('StartTime', Hearth::TimeHelper.to_date_time(stub[:start_time])) unless stub[:start_time].nil?
        xml << Hearth::XML::Node.new('EndTime', Hearth::TimeHelper.to_date_time(stub[:end_time])) unless stub[:end_time].nil?
        xml << Hearth::XML::Node.new('PercentageComplete', stub[:percentage_complete].to_s) unless stub[:percentage_complete].nil?
        xml << Hearth::XML::Node.new('InstancesToUpdate', stub[:instances_to_update].to_s) unless stub[:instances_to_update].nil?
        xml << Stubs::InstanceRefreshProgressDetails.stub('ProgressDetails', stub[:progress_details]) unless stub[:progress_details].nil?
        xml << Stubs::RefreshPreferences.stub('Preferences', stub[:preferences]) unless stub[:preferences].nil?
        xml << Stubs::DesiredConfiguration.stub('DesiredConfiguration', stub[:desired_configuration]) unless stub[:desired_configuration].nil?
        xml
      end
    end

    # Structure Stubber for DesiredConfiguration
    class DesiredConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DesiredConfiguration')
        visited = visited + ['DesiredConfiguration']
        {
          launch_template: Stubs::LaunchTemplateSpecification.default(visited),
          mixed_instances_policy: Stubs::MixedInstancesPolicy.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::DesiredConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::LaunchTemplateSpecification.stub('LaunchTemplate', stub[:launch_template]) unless stub[:launch_template].nil?
        xml << Stubs::MixedInstancesPolicy.stub('MixedInstancesPolicy', stub[:mixed_instances_policy]) unless stub[:mixed_instances_policy].nil?
        xml
      end
    end

    # Structure Stubber for RefreshPreferences
    class RefreshPreferences
      def self.default(visited=[])
        return nil if visited.include?('RefreshPreferences')
        visited = visited + ['RefreshPreferences']
        {
          min_healthy_percentage: 1,
          instance_warmup: 1,
          checkpoint_percentages: Stubs::CheckpointPercentages.default(visited),
          checkpoint_delay: 1,
          skip_matching: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::RefreshPreferences.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MinHealthyPercentage', stub[:min_healthy_percentage].to_s) unless stub[:min_healthy_percentage].nil?
        xml << Hearth::XML::Node.new('InstanceWarmup', stub[:instance_warmup].to_s) unless stub[:instance_warmup].nil?
        xml << Hearth::XML::Node.new('CheckpointPercentages', Stubs::CheckpointPercentages.stub('member', stub[:checkpoint_percentages])) unless stub[:checkpoint_percentages].nil?
        xml << Hearth::XML::Node.new('CheckpointDelay', stub[:checkpoint_delay].to_s) unless stub[:checkpoint_delay].nil?
        xml << Hearth::XML::Node.new('SkipMatching', stub[:skip_matching].to_s) unless stub[:skip_matching].nil?
        xml
      end
    end

    # List Stubber for CheckpointPercentages
    class CheckpointPercentages
      def self.default(visited=[])
        return nil if visited.include?('CheckpointPercentages')
        visited = visited + ['CheckpointPercentages']
        [
          1
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for InstanceRefreshProgressDetails
    class InstanceRefreshProgressDetails
      def self.default(visited=[])
        return nil if visited.include?('InstanceRefreshProgressDetails')
        visited = visited + ['InstanceRefreshProgressDetails']
        {
          live_pool_progress: Stubs::InstanceRefreshLivePoolProgress.default(visited),
          warm_pool_progress: Stubs::InstanceRefreshWarmPoolProgress.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InstanceRefreshProgressDetails.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::InstanceRefreshLivePoolProgress.stub('LivePoolProgress', stub[:live_pool_progress]) unless stub[:live_pool_progress].nil?
        xml << Stubs::InstanceRefreshWarmPoolProgress.stub('WarmPoolProgress', stub[:warm_pool_progress]) unless stub[:warm_pool_progress].nil?
        xml
      end
    end

    # Structure Stubber for InstanceRefreshWarmPoolProgress
    class InstanceRefreshWarmPoolProgress
      def self.default(visited=[])
        return nil if visited.include?('InstanceRefreshWarmPoolProgress')
        visited = visited + ['InstanceRefreshWarmPoolProgress']
        {
          percentage_complete: 1,
          instances_to_update: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InstanceRefreshWarmPoolProgress.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PercentageComplete', stub[:percentage_complete].to_s) unless stub[:percentage_complete].nil?
        xml << Hearth::XML::Node.new('InstancesToUpdate', stub[:instances_to_update].to_s) unless stub[:instances_to_update].nil?
        xml
      end
    end

    # Structure Stubber for InstanceRefreshLivePoolProgress
    class InstanceRefreshLivePoolProgress
      def self.default(visited=[])
        return nil if visited.include?('InstanceRefreshLivePoolProgress')
        visited = visited + ['InstanceRefreshLivePoolProgress']
        {
          percentage_complete: 1,
          instances_to_update: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InstanceRefreshLivePoolProgress.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PercentageComplete', stub[:percentage_complete].to_s) unless stub[:percentage_complete].nil?
        xml << Hearth::XML::Node.new('InstancesToUpdate', stub[:instances_to_update].to_s) unless stub[:instances_to_update].nil?
        xml
      end
    end

    # Operation Stubber for DescribeLaunchConfigurations
    class DescribeLaunchConfigurations
      def self.default(visited=[])
        {
          launch_configurations: Stubs::LaunchConfigurations.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeLaunchConfigurationsResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeLaunchConfigurationsResult')
        xml << Hearth::XML::Node.new('LaunchConfigurations', Stubs::LaunchConfigurations.stub('member', stub[:launch_configurations])) unless stub[:launch_configurations].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for LaunchConfigurations
    class LaunchConfigurations
      def self.default(visited=[])
        return nil if visited.include?('LaunchConfigurations')
        visited = visited + ['LaunchConfigurations']
        [
          Stubs::LaunchConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::LaunchConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LaunchConfiguration
    class LaunchConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LaunchConfiguration')
        visited = visited + ['LaunchConfiguration']
        {
          launch_configuration_name: 'launch_configuration_name',
          launch_configuration_arn: 'launch_configuration_arn',
          image_id: 'image_id',
          key_name: 'key_name',
          security_groups: Stubs::SecurityGroups.default(visited),
          classic_link_vpc_id: 'classic_link_vpc_id',
          classic_link_vpc_security_groups: Stubs::ClassicLinkVPCSecurityGroups.default(visited),
          user_data: 'user_data',
          instance_type: 'instance_type',
          kernel_id: 'kernel_id',
          ramdisk_id: 'ramdisk_id',
          block_device_mappings: Stubs::BlockDeviceMappings.default(visited),
          instance_monitoring: Stubs::InstanceMonitoring.default(visited),
          spot_price: 'spot_price',
          iam_instance_profile: 'iam_instance_profile',
          created_time: Time.now,
          ebs_optimized: false,
          associate_public_ip_address: false,
          placement_tenancy: 'placement_tenancy',
          metadata_options: Stubs::InstanceMetadataOptions.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LaunchConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LaunchConfigurationName', stub[:launch_configuration_name].to_s) unless stub[:launch_configuration_name].nil?
        xml << Hearth::XML::Node.new('LaunchConfigurationARN', stub[:launch_configuration_arn].to_s) unless stub[:launch_configuration_arn].nil?
        xml << Hearth::XML::Node.new('ImageId', stub[:image_id].to_s) unless stub[:image_id].nil?
        xml << Hearth::XML::Node.new('KeyName', stub[:key_name].to_s) unless stub[:key_name].nil?
        xml << Hearth::XML::Node.new('SecurityGroups', Stubs::SecurityGroups.stub('member', stub[:security_groups])) unless stub[:security_groups].nil?
        xml << Hearth::XML::Node.new('ClassicLinkVPCId', stub[:classic_link_vpc_id].to_s) unless stub[:classic_link_vpc_id].nil?
        xml << Hearth::XML::Node.new('ClassicLinkVPCSecurityGroups', Stubs::ClassicLinkVPCSecurityGroups.stub('member', stub[:classic_link_vpc_security_groups])) unless stub[:classic_link_vpc_security_groups].nil?
        xml << Hearth::XML::Node.new('UserData', stub[:user_data].to_s) unless stub[:user_data].nil?
        xml << Hearth::XML::Node.new('InstanceType', stub[:instance_type].to_s) unless stub[:instance_type].nil?
        xml << Hearth::XML::Node.new('KernelId', stub[:kernel_id].to_s) unless stub[:kernel_id].nil?
        xml << Hearth::XML::Node.new('RamdiskId', stub[:ramdisk_id].to_s) unless stub[:ramdisk_id].nil?
        xml << Hearth::XML::Node.new('BlockDeviceMappings', Stubs::BlockDeviceMappings.stub('member', stub[:block_device_mappings])) unless stub[:block_device_mappings].nil?
        xml << Stubs::InstanceMonitoring.stub('InstanceMonitoring', stub[:instance_monitoring]) unless stub[:instance_monitoring].nil?
        xml << Hearth::XML::Node.new('SpotPrice', stub[:spot_price].to_s) unless stub[:spot_price].nil?
        xml << Hearth::XML::Node.new('IamInstanceProfile', stub[:iam_instance_profile].to_s) unless stub[:iam_instance_profile].nil?
        xml << Hearth::XML::Node.new('CreatedTime', Hearth::TimeHelper.to_date_time(stub[:created_time])) unless stub[:created_time].nil?
        xml << Hearth::XML::Node.new('EbsOptimized', stub[:ebs_optimized].to_s) unless stub[:ebs_optimized].nil?
        xml << Hearth::XML::Node.new('AssociatePublicIpAddress', stub[:associate_public_ip_address].to_s) unless stub[:associate_public_ip_address].nil?
        xml << Hearth::XML::Node.new('PlacementTenancy', stub[:placement_tenancy].to_s) unless stub[:placement_tenancy].nil?
        xml << Stubs::InstanceMetadataOptions.stub('MetadataOptions', stub[:metadata_options]) unless stub[:metadata_options].nil?
        xml
      end
    end

    # Structure Stubber for InstanceMetadataOptions
    class InstanceMetadataOptions
      def self.default(visited=[])
        return nil if visited.include?('InstanceMetadataOptions')
        visited = visited + ['InstanceMetadataOptions']
        {
          http_tokens: 'http_tokens',
          http_put_response_hop_limit: 1,
          http_endpoint: 'http_endpoint',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InstanceMetadataOptions.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('HttpTokens', stub[:http_tokens].to_s) unless stub[:http_tokens].nil?
        xml << Hearth::XML::Node.new('HttpPutResponseHopLimit', stub[:http_put_response_hop_limit].to_s) unless stub[:http_put_response_hop_limit].nil?
        xml << Hearth::XML::Node.new('HttpEndpoint', stub[:http_endpoint].to_s) unless stub[:http_endpoint].nil?
        xml
      end
    end

    # Structure Stubber for InstanceMonitoring
    class InstanceMonitoring
      def self.default(visited=[])
        return nil if visited.include?('InstanceMonitoring')
        visited = visited + ['InstanceMonitoring']
        {
          enabled: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::InstanceMonitoring.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml
      end
    end

    # List Stubber for BlockDeviceMappings
    class BlockDeviceMappings
      def self.default(visited=[])
        return nil if visited.include?('BlockDeviceMappings')
        visited = visited + ['BlockDeviceMappings']
        [
          Stubs::BlockDeviceMapping.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::BlockDeviceMapping.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for BlockDeviceMapping
    class BlockDeviceMapping
      def self.default(visited=[])
        return nil if visited.include?('BlockDeviceMapping')
        visited = visited + ['BlockDeviceMapping']
        {
          virtual_name: 'virtual_name',
          device_name: 'device_name',
          ebs: Stubs::Ebs.default(visited),
          no_device: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::BlockDeviceMapping.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('VirtualName', stub[:virtual_name].to_s) unless stub[:virtual_name].nil?
        xml << Hearth::XML::Node.new('DeviceName', stub[:device_name].to_s) unless stub[:device_name].nil?
        xml << Stubs::Ebs.stub('Ebs', stub[:ebs]) unless stub[:ebs].nil?
        xml << Hearth::XML::Node.new('NoDevice', stub[:no_device].to_s) unless stub[:no_device].nil?
        xml
      end
    end

    # Structure Stubber for Ebs
    class Ebs
      def self.default(visited=[])
        return nil if visited.include?('Ebs')
        visited = visited + ['Ebs']
        {
          snapshot_id: 'snapshot_id',
          volume_size: 1,
          volume_type: 'volume_type',
          delete_on_termination: false,
          iops: 1,
          encrypted: false,
          throughput: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Ebs.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('SnapshotId', stub[:snapshot_id].to_s) unless stub[:snapshot_id].nil?
        xml << Hearth::XML::Node.new('VolumeSize', stub[:volume_size].to_s) unless stub[:volume_size].nil?
        xml << Hearth::XML::Node.new('VolumeType', stub[:volume_type].to_s) unless stub[:volume_type].nil?
        xml << Hearth::XML::Node.new('DeleteOnTermination', stub[:delete_on_termination].to_s) unless stub[:delete_on_termination].nil?
        xml << Hearth::XML::Node.new('Iops', stub[:iops].to_s) unless stub[:iops].nil?
        xml << Hearth::XML::Node.new('Encrypted', stub[:encrypted].to_s) unless stub[:encrypted].nil?
        xml << Hearth::XML::Node.new('Throughput', stub[:throughput].to_s) unless stub[:throughput].nil?
        xml
      end
    end

    # List Stubber for ClassicLinkVPCSecurityGroups
    class ClassicLinkVPCSecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('ClassicLinkVPCSecurityGroups')
        visited = visited + ['ClassicLinkVPCSecurityGroups']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for SecurityGroups
    class SecurityGroups
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroups')
        visited = visited + ['SecurityGroups']
        [
          'member'
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, element.to_s) unless element.nil?
        end
        xml
      end
    end

    # Operation Stubber for DescribeLifecycleHookTypes
    class DescribeLifecycleHookTypes
      def self.default(visited=[])
        {
          lifecycle_hook_types: Stubs::AutoScalingNotificationTypes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeLifecycleHookTypesResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeLifecycleHookTypesResult')
        xml << Hearth::XML::Node.new('LifecycleHookTypes', Stubs::AutoScalingNotificationTypes.stub('member', stub[:lifecycle_hook_types])) unless stub[:lifecycle_hook_types].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeLifecycleHooks
    class DescribeLifecycleHooks
      def self.default(visited=[])
        {
          lifecycle_hooks: Stubs::LifecycleHooks.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeLifecycleHooksResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeLifecycleHooksResult')
        xml << Hearth::XML::Node.new('LifecycleHooks', Stubs::LifecycleHooks.stub('member', stub[:lifecycle_hooks])) unless stub[:lifecycle_hooks].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for LifecycleHooks
    class LifecycleHooks
      def self.default(visited=[])
        return nil if visited.include?('LifecycleHooks')
        visited = visited + ['LifecycleHooks']
        [
          Stubs::LifecycleHook.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::LifecycleHook.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LifecycleHook
    class LifecycleHook
      def self.default(visited=[])
        return nil if visited.include?('LifecycleHook')
        visited = visited + ['LifecycleHook']
        {
          lifecycle_hook_name: 'lifecycle_hook_name',
          auto_scaling_group_name: 'auto_scaling_group_name',
          lifecycle_transition: 'lifecycle_transition',
          notification_target_arn: 'notification_target_arn',
          role_arn: 'role_arn',
          notification_metadata: 'notification_metadata',
          heartbeat_timeout: 1,
          global_timeout: 1,
          default_result: 'default_result',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LifecycleHook.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LifecycleHookName', stub[:lifecycle_hook_name].to_s) unless stub[:lifecycle_hook_name].nil?
        xml << Hearth::XML::Node.new('AutoScalingGroupName', stub[:auto_scaling_group_name].to_s) unless stub[:auto_scaling_group_name].nil?
        xml << Hearth::XML::Node.new('LifecycleTransition', stub[:lifecycle_transition].to_s) unless stub[:lifecycle_transition].nil?
        xml << Hearth::XML::Node.new('NotificationTargetARN', stub[:notification_target_arn].to_s) unless stub[:notification_target_arn].nil?
        xml << Hearth::XML::Node.new('RoleARN', stub[:role_arn].to_s) unless stub[:role_arn].nil?
        xml << Hearth::XML::Node.new('NotificationMetadata', stub[:notification_metadata].to_s) unless stub[:notification_metadata].nil?
        xml << Hearth::XML::Node.new('HeartbeatTimeout', stub[:heartbeat_timeout].to_s) unless stub[:heartbeat_timeout].nil?
        xml << Hearth::XML::Node.new('GlobalTimeout', stub[:global_timeout].to_s) unless stub[:global_timeout].nil?
        xml << Hearth::XML::Node.new('DefaultResult', stub[:default_result].to_s) unless stub[:default_result].nil?
        xml
      end
    end

    # Operation Stubber for DescribeLoadBalancerTargetGroups
    class DescribeLoadBalancerTargetGroups
      def self.default(visited=[])
        {
          load_balancer_target_groups: Stubs::LoadBalancerTargetGroupStates.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeLoadBalancerTargetGroupsResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeLoadBalancerTargetGroupsResult')
        xml << Hearth::XML::Node.new('LoadBalancerTargetGroups', Stubs::LoadBalancerTargetGroupStates.stub('member', stub[:load_balancer_target_groups])) unless stub[:load_balancer_target_groups].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for LoadBalancerTargetGroupStates
    class LoadBalancerTargetGroupStates
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerTargetGroupStates')
        visited = visited + ['LoadBalancerTargetGroupStates']
        [
          Stubs::LoadBalancerTargetGroupState.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::LoadBalancerTargetGroupState.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LoadBalancerTargetGroupState
    class LoadBalancerTargetGroupState
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerTargetGroupState')
        visited = visited + ['LoadBalancerTargetGroupState']
        {
          load_balancer_target_group_arn: 'load_balancer_target_group_arn',
          state: 'state',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LoadBalancerTargetGroupState.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LoadBalancerTargetGroupARN', stub[:load_balancer_target_group_arn].to_s) unless stub[:load_balancer_target_group_arn].nil?
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml
      end
    end

    # Operation Stubber for DescribeLoadBalancers
    class DescribeLoadBalancers
      def self.default(visited=[])
        {
          load_balancers: Stubs::LoadBalancerStates.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeLoadBalancersResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeLoadBalancersResult')
        xml << Hearth::XML::Node.new('LoadBalancers', Stubs::LoadBalancerStates.stub('member', stub[:load_balancers])) unless stub[:load_balancers].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for LoadBalancerStates
    class LoadBalancerStates
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerStates')
        visited = visited + ['LoadBalancerStates']
        [
          Stubs::LoadBalancerState.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::LoadBalancerState.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LoadBalancerState
    class LoadBalancerState
      def self.default(visited=[])
        return nil if visited.include?('LoadBalancerState')
        visited = visited + ['LoadBalancerState']
        {
          load_balancer_name: 'load_balancer_name',
          state: 'state',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LoadBalancerState.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('LoadBalancerName', stub[:load_balancer_name].to_s) unless stub[:load_balancer_name].nil?
        xml << Hearth::XML::Node.new('State', stub[:state].to_s) unless stub[:state].nil?
        xml
      end
    end

    # Operation Stubber for DescribeMetricCollectionTypes
    class DescribeMetricCollectionTypes
      def self.default(visited=[])
        {
          metrics: Stubs::MetricCollectionTypes.default(visited),
          granularities: Stubs::MetricGranularityTypes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeMetricCollectionTypesResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeMetricCollectionTypesResult')
        xml << Hearth::XML::Node.new('Metrics', Stubs::MetricCollectionTypes.stub('member', stub[:metrics])) unless stub[:metrics].nil?
        xml << Hearth::XML::Node.new('Granularities', Stubs::MetricGranularityTypes.stub('member', stub[:granularities])) unless stub[:granularities].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for MetricGranularityTypes
    class MetricGranularityTypes
      def self.default(visited=[])
        return nil if visited.include?('MetricGranularityTypes')
        visited = visited + ['MetricGranularityTypes']
        [
          Stubs::MetricGranularityType.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::MetricGranularityType.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MetricGranularityType
    class MetricGranularityType
      def self.default(visited=[])
        return nil if visited.include?('MetricGranularityType')
        visited = visited + ['MetricGranularityType']
        {
          granularity: 'granularity',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricGranularityType.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Granularity', stub[:granularity].to_s) unless stub[:granularity].nil?
        xml
      end
    end

    # List Stubber for MetricCollectionTypes
    class MetricCollectionTypes
      def self.default(visited=[])
        return nil if visited.include?('MetricCollectionTypes')
        visited = visited + ['MetricCollectionTypes']
        [
          Stubs::MetricCollectionType.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::MetricCollectionType.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MetricCollectionType
    class MetricCollectionType
      def self.default(visited=[])
        return nil if visited.include?('MetricCollectionType')
        visited = visited + ['MetricCollectionType']
        {
          metric: 'metric',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricCollectionType.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Metric', stub[:metric].to_s) unless stub[:metric].nil?
        xml
      end
    end

    # Operation Stubber for DescribeNotificationConfigurations
    class DescribeNotificationConfigurations
      def self.default(visited=[])
        {
          notification_configurations: Stubs::NotificationConfigurations.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeNotificationConfigurationsResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeNotificationConfigurationsResult')
        xml << Hearth::XML::Node.new('NotificationConfigurations', Stubs::NotificationConfigurations.stub('member', stub[:notification_configurations])) unless stub[:notification_configurations].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for NotificationConfigurations
    class NotificationConfigurations
      def self.default(visited=[])
        return nil if visited.include?('NotificationConfigurations')
        visited = visited + ['NotificationConfigurations']
        [
          Stubs::NotificationConfiguration.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::NotificationConfiguration.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for NotificationConfiguration
    class NotificationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NotificationConfiguration')
        visited = visited + ['NotificationConfiguration']
        {
          auto_scaling_group_name: 'auto_scaling_group_name',
          topic_arn: 'topic_arn',
          notification_type: 'notification_type',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::NotificationConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AutoScalingGroupName', stub[:auto_scaling_group_name].to_s) unless stub[:auto_scaling_group_name].nil?
        xml << Hearth::XML::Node.new('TopicARN', stub[:topic_arn].to_s) unless stub[:topic_arn].nil?
        xml << Hearth::XML::Node.new('NotificationType', stub[:notification_type].to_s) unless stub[:notification_type].nil?
        xml
      end
    end

    # Operation Stubber for DescribePolicies
    class DescribePolicies
      def self.default(visited=[])
        {
          scaling_policies: Stubs::ScalingPolicies.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribePoliciesResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribePoliciesResult')
        xml << Hearth::XML::Node.new('ScalingPolicies', Stubs::ScalingPolicies.stub('member', stub[:scaling_policies])) unless stub[:scaling_policies].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ScalingPolicies
    class ScalingPolicies
      def self.default(visited=[])
        return nil if visited.include?('ScalingPolicies')
        visited = visited + ['ScalingPolicies']
        [
          Stubs::ScalingPolicy.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ScalingPolicy.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ScalingPolicy
    class ScalingPolicy
      def self.default(visited=[])
        return nil if visited.include?('ScalingPolicy')
        visited = visited + ['ScalingPolicy']
        {
          auto_scaling_group_name: 'auto_scaling_group_name',
          policy_name: 'policy_name',
          policy_arn: 'policy_arn',
          policy_type: 'policy_type',
          adjustment_type: 'adjustment_type',
          min_adjustment_step: 1,
          min_adjustment_magnitude: 1,
          scaling_adjustment: 1,
          cooldown: 1,
          step_adjustments: Stubs::StepAdjustments.default(visited),
          metric_aggregation_type: 'metric_aggregation_type',
          estimated_instance_warmup: 1,
          alarms: Stubs::Alarms.default(visited),
          target_tracking_configuration: Stubs::TargetTrackingConfiguration.default(visited),
          enabled: false,
          predictive_scaling_configuration: Stubs::PredictiveScalingConfiguration.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ScalingPolicy.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AutoScalingGroupName', stub[:auto_scaling_group_name].to_s) unless stub[:auto_scaling_group_name].nil?
        xml << Hearth::XML::Node.new('PolicyName', stub[:policy_name].to_s) unless stub[:policy_name].nil?
        xml << Hearth::XML::Node.new('PolicyARN', stub[:policy_arn].to_s) unless stub[:policy_arn].nil?
        xml << Hearth::XML::Node.new('PolicyType', stub[:policy_type].to_s) unless stub[:policy_type].nil?
        xml << Hearth::XML::Node.new('AdjustmentType', stub[:adjustment_type].to_s) unless stub[:adjustment_type].nil?
        xml << Hearth::XML::Node.new('MinAdjustmentStep', stub[:min_adjustment_step].to_s) unless stub[:min_adjustment_step].nil?
        xml << Hearth::XML::Node.new('MinAdjustmentMagnitude', stub[:min_adjustment_magnitude].to_s) unless stub[:min_adjustment_magnitude].nil?
        xml << Hearth::XML::Node.new('ScalingAdjustment', stub[:scaling_adjustment].to_s) unless stub[:scaling_adjustment].nil?
        xml << Hearth::XML::Node.new('Cooldown', stub[:cooldown].to_s) unless stub[:cooldown].nil?
        xml << Hearth::XML::Node.new('StepAdjustments', Stubs::StepAdjustments.stub('member', stub[:step_adjustments])) unless stub[:step_adjustments].nil?
        xml << Hearth::XML::Node.new('MetricAggregationType', stub[:metric_aggregation_type].to_s) unless stub[:metric_aggregation_type].nil?
        xml << Hearth::XML::Node.new('EstimatedInstanceWarmup', stub[:estimated_instance_warmup].to_s) unless stub[:estimated_instance_warmup].nil?
        xml << Hearth::XML::Node.new('Alarms', Stubs::Alarms.stub('member', stub[:alarms])) unless stub[:alarms].nil?
        xml << Stubs::TargetTrackingConfiguration.stub('TargetTrackingConfiguration', stub[:target_tracking_configuration]) unless stub[:target_tracking_configuration].nil?
        xml << Hearth::XML::Node.new('Enabled', stub[:enabled].to_s) unless stub[:enabled].nil?
        xml << Stubs::PredictiveScalingConfiguration.stub('PredictiveScalingConfiguration', stub[:predictive_scaling_configuration]) unless stub[:predictive_scaling_configuration].nil?
        xml
      end
    end

    # Structure Stubber for PredictiveScalingConfiguration
    class PredictiveScalingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('PredictiveScalingConfiguration')
        visited = visited + ['PredictiveScalingConfiguration']
        {
          metric_specifications: Stubs::PredictiveScalingMetricSpecifications.default(visited),
          mode: 'mode',
          scheduling_buffer_time: 1,
          max_capacity_breach_behavior: 'max_capacity_breach_behavior',
          max_capacity_buffer: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PredictiveScalingConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MetricSpecifications', Stubs::PredictiveScalingMetricSpecifications.stub('member', stub[:metric_specifications])) unless stub[:metric_specifications].nil?
        xml << Hearth::XML::Node.new('Mode', stub[:mode].to_s) unless stub[:mode].nil?
        xml << Hearth::XML::Node.new('SchedulingBufferTime', stub[:scheduling_buffer_time].to_s) unless stub[:scheduling_buffer_time].nil?
        xml << Hearth::XML::Node.new('MaxCapacityBreachBehavior', stub[:max_capacity_breach_behavior].to_s) unless stub[:max_capacity_breach_behavior].nil?
        xml << Hearth::XML::Node.new('MaxCapacityBuffer', stub[:max_capacity_buffer].to_s) unless stub[:max_capacity_buffer].nil?
        xml
      end
    end

    # List Stubber for PredictiveScalingMetricSpecifications
    class PredictiveScalingMetricSpecifications
      def self.default(visited=[])
        return nil if visited.include?('PredictiveScalingMetricSpecifications')
        visited = visited + ['PredictiveScalingMetricSpecifications']
        [
          Stubs::PredictiveScalingMetricSpecification.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::PredictiveScalingMetricSpecification.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for PredictiveScalingMetricSpecification
    class PredictiveScalingMetricSpecification
      def self.default(visited=[])
        return nil if visited.include?('PredictiveScalingMetricSpecification')
        visited = visited + ['PredictiveScalingMetricSpecification']
        {
          target_value: 1.0,
          predefined_metric_pair_specification: Stubs::PredictiveScalingPredefinedMetricPair.default(visited),
          predefined_scaling_metric_specification: Stubs::PredictiveScalingPredefinedScalingMetric.default(visited),
          predefined_load_metric_specification: Stubs::PredictiveScalingPredefinedLoadMetric.default(visited),
          customized_scaling_metric_specification: Stubs::PredictiveScalingCustomizedScalingMetric.default(visited),
          customized_load_metric_specification: Stubs::PredictiveScalingCustomizedLoadMetric.default(visited),
          customized_capacity_metric_specification: Stubs::PredictiveScalingCustomizedCapacityMetric.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PredictiveScalingMetricSpecification.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('TargetValue', Hearth::NumberHelper.serialize(stub[:target_value]).to_s) unless stub[:target_value].nil?
        xml << Stubs::PredictiveScalingPredefinedMetricPair.stub('PredefinedMetricPairSpecification', stub[:predefined_metric_pair_specification]) unless stub[:predefined_metric_pair_specification].nil?
        xml << Stubs::PredictiveScalingPredefinedScalingMetric.stub('PredefinedScalingMetricSpecification', stub[:predefined_scaling_metric_specification]) unless stub[:predefined_scaling_metric_specification].nil?
        xml << Stubs::PredictiveScalingPredefinedLoadMetric.stub('PredefinedLoadMetricSpecification', stub[:predefined_load_metric_specification]) unless stub[:predefined_load_metric_specification].nil?
        xml << Stubs::PredictiveScalingCustomizedScalingMetric.stub('CustomizedScalingMetricSpecification', stub[:customized_scaling_metric_specification]) unless stub[:customized_scaling_metric_specification].nil?
        xml << Stubs::PredictiveScalingCustomizedLoadMetric.stub('CustomizedLoadMetricSpecification', stub[:customized_load_metric_specification]) unless stub[:customized_load_metric_specification].nil?
        xml << Stubs::PredictiveScalingCustomizedCapacityMetric.stub('CustomizedCapacityMetricSpecification', stub[:customized_capacity_metric_specification]) unless stub[:customized_capacity_metric_specification].nil?
        xml
      end
    end

    # Structure Stubber for PredictiveScalingCustomizedCapacityMetric
    class PredictiveScalingCustomizedCapacityMetric
      def self.default(visited=[])
        return nil if visited.include?('PredictiveScalingCustomizedCapacityMetric')
        visited = visited + ['PredictiveScalingCustomizedCapacityMetric']
        {
          metric_data_queries: Stubs::MetricDataQueries.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PredictiveScalingCustomizedCapacityMetric.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MetricDataQueries', Stubs::MetricDataQueries.stub('member', stub[:metric_data_queries])) unless stub[:metric_data_queries].nil?
        xml
      end
    end

    # List Stubber for MetricDataQueries
    class MetricDataQueries
      def self.default(visited=[])
        return nil if visited.include?('MetricDataQueries')
        visited = visited + ['MetricDataQueries']
        [
          Stubs::MetricDataQuery.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::MetricDataQuery.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MetricDataQuery
    class MetricDataQuery
      def self.default(visited=[])
        return nil if visited.include?('MetricDataQuery')
        visited = visited + ['MetricDataQuery']
        {
          id: 'id',
          expression: 'expression',
          metric_stat: Stubs::MetricStat.default(visited),
          label: 'label',
          return_data: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricDataQuery.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Id', stub[:id].to_s) unless stub[:id].nil?
        xml << Hearth::XML::Node.new('Expression', stub[:expression].to_s) unless stub[:expression].nil?
        xml << Stubs::MetricStat.stub('MetricStat', stub[:metric_stat]) unless stub[:metric_stat].nil?
        xml << Hearth::XML::Node.new('Label', stub[:label].to_s) unless stub[:label].nil?
        xml << Hearth::XML::Node.new('ReturnData', stub[:return_data].to_s) unless stub[:return_data].nil?
        xml
      end
    end

    # Structure Stubber for MetricStat
    class MetricStat
      def self.default(visited=[])
        return nil if visited.include?('MetricStat')
        visited = visited + ['MetricStat']
        {
          metric: Stubs::Metric.default(visited),
          stat: 'stat',
          unit: 'unit',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricStat.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::Metric.stub('Metric', stub[:metric]) unless stub[:metric].nil?
        xml << Hearth::XML::Node.new('Stat', stub[:stat].to_s) unless stub[:stat].nil?
        xml << Hearth::XML::Node.new('Unit', stub[:unit].to_s) unless stub[:unit].nil?
        xml
      end
    end

    # Structure Stubber for Metric
    class Metric
      def self.default(visited=[])
        return nil if visited.include?('Metric')
        visited = visited + ['Metric']
        {
          namespace: 'namespace',
          metric_name: 'metric_name',
          dimensions: Stubs::MetricDimensions.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Metric.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Namespace', stub[:namespace].to_s) unless stub[:namespace].nil?
        xml << Hearth::XML::Node.new('MetricName', stub[:metric_name].to_s) unless stub[:metric_name].nil?
        xml << Hearth::XML::Node.new('Dimensions', Stubs::MetricDimensions.stub('member', stub[:dimensions])) unless stub[:dimensions].nil?
        xml
      end
    end

    # List Stubber for MetricDimensions
    class MetricDimensions
      def self.default(visited=[])
        return nil if visited.include?('MetricDimensions')
        visited = visited + ['MetricDimensions']
        [
          Stubs::MetricDimension.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::MetricDimension.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for MetricDimension
    class MetricDimension
      def self.default(visited=[])
        return nil if visited.include?('MetricDimension')
        visited = visited + ['MetricDimension']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::MetricDimension.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Name', stub[:name].to_s) unless stub[:name].nil?
        xml << Hearth::XML::Node.new('Value', stub[:value].to_s) unless stub[:value].nil?
        xml
      end
    end

    # Structure Stubber for PredictiveScalingCustomizedLoadMetric
    class PredictiveScalingCustomizedLoadMetric
      def self.default(visited=[])
        return nil if visited.include?('PredictiveScalingCustomizedLoadMetric')
        visited = visited + ['PredictiveScalingCustomizedLoadMetric']
        {
          metric_data_queries: Stubs::MetricDataQueries.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PredictiveScalingCustomizedLoadMetric.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MetricDataQueries', Stubs::MetricDataQueries.stub('member', stub[:metric_data_queries])) unless stub[:metric_data_queries].nil?
        xml
      end
    end

    # Structure Stubber for PredictiveScalingCustomizedScalingMetric
    class PredictiveScalingCustomizedScalingMetric
      def self.default(visited=[])
        return nil if visited.include?('PredictiveScalingCustomizedScalingMetric')
        visited = visited + ['PredictiveScalingCustomizedScalingMetric']
        {
          metric_data_queries: Stubs::MetricDataQueries.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PredictiveScalingCustomizedScalingMetric.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MetricDataQueries', Stubs::MetricDataQueries.stub('member', stub[:metric_data_queries])) unless stub[:metric_data_queries].nil?
        xml
      end
    end

    # Structure Stubber for PredictiveScalingPredefinedLoadMetric
    class PredictiveScalingPredefinedLoadMetric
      def self.default(visited=[])
        return nil if visited.include?('PredictiveScalingPredefinedLoadMetric')
        visited = visited + ['PredictiveScalingPredefinedLoadMetric']
        {
          predefined_metric_type: 'predefined_metric_type',
          resource_label: 'resource_label',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PredictiveScalingPredefinedLoadMetric.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PredefinedMetricType', stub[:predefined_metric_type].to_s) unless stub[:predefined_metric_type].nil?
        xml << Hearth::XML::Node.new('ResourceLabel', stub[:resource_label].to_s) unless stub[:resource_label].nil?
        xml
      end
    end

    # Structure Stubber for PredictiveScalingPredefinedScalingMetric
    class PredictiveScalingPredefinedScalingMetric
      def self.default(visited=[])
        return nil if visited.include?('PredictiveScalingPredefinedScalingMetric')
        visited = visited + ['PredictiveScalingPredefinedScalingMetric']
        {
          predefined_metric_type: 'predefined_metric_type',
          resource_label: 'resource_label',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PredictiveScalingPredefinedScalingMetric.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PredefinedMetricType', stub[:predefined_metric_type].to_s) unless stub[:predefined_metric_type].nil?
        xml << Hearth::XML::Node.new('ResourceLabel', stub[:resource_label].to_s) unless stub[:resource_label].nil?
        xml
      end
    end

    # Structure Stubber for PredictiveScalingPredefinedMetricPair
    class PredictiveScalingPredefinedMetricPair
      def self.default(visited=[])
        return nil if visited.include?('PredictiveScalingPredefinedMetricPair')
        visited = visited + ['PredictiveScalingPredefinedMetricPair']
        {
          predefined_metric_type: 'predefined_metric_type',
          resource_label: 'resource_label',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PredictiveScalingPredefinedMetricPair.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PredefinedMetricType', stub[:predefined_metric_type].to_s) unless stub[:predefined_metric_type].nil?
        xml << Hearth::XML::Node.new('ResourceLabel', stub[:resource_label].to_s) unless stub[:resource_label].nil?
        xml
      end
    end

    # Structure Stubber for TargetTrackingConfiguration
    class TargetTrackingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('TargetTrackingConfiguration')
        visited = visited + ['TargetTrackingConfiguration']
        {
          predefined_metric_specification: Stubs::PredefinedMetricSpecification.default(visited),
          customized_metric_specification: Stubs::CustomizedMetricSpecification.default(visited),
          target_value: 1.0,
          disable_scale_in: false,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::TargetTrackingConfiguration.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Stubs::PredefinedMetricSpecification.stub('PredefinedMetricSpecification', stub[:predefined_metric_specification]) unless stub[:predefined_metric_specification].nil?
        xml << Stubs::CustomizedMetricSpecification.stub('CustomizedMetricSpecification', stub[:customized_metric_specification]) unless stub[:customized_metric_specification].nil?
        xml << Hearth::XML::Node.new('TargetValue', Hearth::NumberHelper.serialize(stub[:target_value]).to_s) unless stub[:target_value].nil?
        xml << Hearth::XML::Node.new('DisableScaleIn', stub[:disable_scale_in].to_s) unless stub[:disable_scale_in].nil?
        xml
      end
    end

    # Structure Stubber for CustomizedMetricSpecification
    class CustomizedMetricSpecification
      def self.default(visited=[])
        return nil if visited.include?('CustomizedMetricSpecification')
        visited = visited + ['CustomizedMetricSpecification']
        {
          metric_name: 'metric_name',
          namespace: 'namespace',
          dimensions: Stubs::MetricDimensions.default(visited),
          statistic: 'statistic',
          unit: 'unit',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CustomizedMetricSpecification.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MetricName', stub[:metric_name].to_s) unless stub[:metric_name].nil?
        xml << Hearth::XML::Node.new('Namespace', stub[:namespace].to_s) unless stub[:namespace].nil?
        xml << Hearth::XML::Node.new('Dimensions', Stubs::MetricDimensions.stub('member', stub[:dimensions])) unless stub[:dimensions].nil?
        xml << Hearth::XML::Node.new('Statistic', stub[:statistic].to_s) unless stub[:statistic].nil?
        xml << Hearth::XML::Node.new('Unit', stub[:unit].to_s) unless stub[:unit].nil?
        xml
      end
    end

    # Structure Stubber for PredefinedMetricSpecification
    class PredefinedMetricSpecification
      def self.default(visited=[])
        return nil if visited.include?('PredefinedMetricSpecification')
        visited = visited + ['PredefinedMetricSpecification']
        {
          predefined_metric_type: 'predefined_metric_type',
          resource_label: 'resource_label',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::PredefinedMetricSpecification.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('PredefinedMetricType', stub[:predefined_metric_type].to_s) unless stub[:predefined_metric_type].nil?
        xml << Hearth::XML::Node.new('ResourceLabel', stub[:resource_label].to_s) unless stub[:resource_label].nil?
        xml
      end
    end

    # List Stubber for Alarms
    class Alarms
      def self.default(visited=[])
        return nil if visited.include?('Alarms')
        visited = visited + ['Alarms']
        [
          Stubs::Alarm.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Alarm.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Alarm
    class Alarm
      def self.default(visited=[])
        return nil if visited.include?('Alarm')
        visited = visited + ['Alarm']
        {
          alarm_name: 'alarm_name',
          alarm_arn: 'alarm_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Alarm.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AlarmName', stub[:alarm_name].to_s) unless stub[:alarm_name].nil?
        xml << Hearth::XML::Node.new('AlarmARN', stub[:alarm_arn].to_s) unless stub[:alarm_arn].nil?
        xml
      end
    end

    # List Stubber for StepAdjustments
    class StepAdjustments
      def self.default(visited=[])
        return nil if visited.include?('StepAdjustments')
        visited = visited + ['StepAdjustments']
        [
          Stubs::StepAdjustment.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::StepAdjustment.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for StepAdjustment
    class StepAdjustment
      def self.default(visited=[])
        return nil if visited.include?('StepAdjustment')
        visited = visited + ['StepAdjustment']
        {
          metric_interval_lower_bound: 1.0,
          metric_interval_upper_bound: 1.0,
          scaling_adjustment: 1,
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::StepAdjustment.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('MetricIntervalLowerBound', Hearth::NumberHelper.serialize(stub[:metric_interval_lower_bound]).to_s) unless stub[:metric_interval_lower_bound].nil?
        xml << Hearth::XML::Node.new('MetricIntervalUpperBound', Hearth::NumberHelper.serialize(stub[:metric_interval_upper_bound]).to_s) unless stub[:metric_interval_upper_bound].nil?
        xml << Hearth::XML::Node.new('ScalingAdjustment', stub[:scaling_adjustment].to_s) unless stub[:scaling_adjustment].nil?
        xml
      end
    end

    # Operation Stubber for DescribeScalingActivities
    class DescribeScalingActivities
      def self.default(visited=[])
        {
          activities: Stubs::Activities.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeScalingActivitiesResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeScalingActivitiesResult')
        xml << Hearth::XML::Node.new('Activities', Stubs::Activities.stub('member', stub[:activities])) unless stub[:activities].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for Activities
    class Activities
      def self.default(visited=[])
        return nil if visited.include?('Activities')
        visited = visited + ['Activities']
        [
          Stubs::Activity.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::Activity.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for Activity
    class Activity
      def self.default(visited=[])
        return nil if visited.include?('Activity')
        visited = visited + ['Activity']
        {
          activity_id: 'activity_id',
          auto_scaling_group_name: 'auto_scaling_group_name',
          description: 'description',
          cause: 'cause',
          start_time: Time.now,
          end_time: Time.now,
          status_code: 'status_code',
          status_message: 'status_message',
          progress: 1,
          details: 'details',
          auto_scaling_group_state: 'auto_scaling_group_state',
          auto_scaling_group_arn: 'auto_scaling_group_arn',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::Activity.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ActivityId', stub[:activity_id].to_s) unless stub[:activity_id].nil?
        xml << Hearth::XML::Node.new('AutoScalingGroupName', stub[:auto_scaling_group_name].to_s) unless stub[:auto_scaling_group_name].nil?
        xml << Hearth::XML::Node.new('Description', stub[:description].to_s) unless stub[:description].nil?
        xml << Hearth::XML::Node.new('Cause', stub[:cause].to_s) unless stub[:cause].nil?
        xml << Hearth::XML::Node.new('StartTime', Hearth::TimeHelper.to_date_time(stub[:start_time])) unless stub[:start_time].nil?
        xml << Hearth::XML::Node.new('EndTime', Hearth::TimeHelper.to_date_time(stub[:end_time])) unless stub[:end_time].nil?
        xml << Hearth::XML::Node.new('StatusCode', stub[:status_code].to_s) unless stub[:status_code].nil?
        xml << Hearth::XML::Node.new('StatusMessage', stub[:status_message].to_s) unless stub[:status_message].nil?
        xml << Hearth::XML::Node.new('Progress', stub[:progress].to_s) unless stub[:progress].nil?
        xml << Hearth::XML::Node.new('Details', stub[:details].to_s) unless stub[:details].nil?
        xml << Hearth::XML::Node.new('AutoScalingGroupState', stub[:auto_scaling_group_state].to_s) unless stub[:auto_scaling_group_state].nil?
        xml << Hearth::XML::Node.new('AutoScalingGroupARN', stub[:auto_scaling_group_arn].to_s) unless stub[:auto_scaling_group_arn].nil?
        xml
      end
    end

    # Operation Stubber for DescribeScalingProcessTypes
    class DescribeScalingProcessTypes
      def self.default(visited=[])
        {
          processes: Stubs::Processes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeScalingProcessTypesResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeScalingProcessTypesResult')
        xml << Hearth::XML::Node.new('Processes', Stubs::Processes.stub('member', stub[:processes])) unless stub[:processes].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for Processes
    class Processes
      def self.default(visited=[])
        return nil if visited.include?('Processes')
        visited = visited + ['Processes']
        [
          Stubs::ProcessType.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ProcessType.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ProcessType
    class ProcessType
      def self.default(visited=[])
        return nil if visited.include?('ProcessType')
        visited = visited + ['ProcessType']
        {
          process_name: 'process_name',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ProcessType.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('ProcessName', stub[:process_name].to_s) unless stub[:process_name].nil?
        xml
      end
    end

    # Operation Stubber for DescribeScheduledActions
    class DescribeScheduledActions
      def self.default(visited=[])
        {
          scheduled_update_group_actions: Stubs::ScheduledUpdateGroupActions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeScheduledActionsResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeScheduledActionsResult')
        xml << Hearth::XML::Node.new('ScheduledUpdateGroupActions', Stubs::ScheduledUpdateGroupActions.stub('member', stub[:scheduled_update_group_actions])) unless stub[:scheduled_update_group_actions].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # List Stubber for ScheduledUpdateGroupActions
    class ScheduledUpdateGroupActions
      def self.default(visited=[])
        return nil if visited.include?('ScheduledUpdateGroupActions')
        visited = visited + ['ScheduledUpdateGroupActions']
        [
          Stubs::ScheduledUpdateGroupAction.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::ScheduledUpdateGroupAction.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for ScheduledUpdateGroupAction
    class ScheduledUpdateGroupAction
      def self.default(visited=[])
        return nil if visited.include?('ScheduledUpdateGroupAction')
        visited = visited + ['ScheduledUpdateGroupAction']
        {
          auto_scaling_group_name: 'auto_scaling_group_name',
          scheduled_action_name: 'scheduled_action_name',
          scheduled_action_arn: 'scheduled_action_arn',
          time: Time.now,
          start_time: Time.now,
          end_time: Time.now,
          recurrence: 'recurrence',
          min_size: 1,
          max_size: 1,
          desired_capacity: 1,
          time_zone: 'time_zone',
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::ScheduledUpdateGroupAction.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('AutoScalingGroupName', stub[:auto_scaling_group_name].to_s) unless stub[:auto_scaling_group_name].nil?
        xml << Hearth::XML::Node.new('ScheduledActionName', stub[:scheduled_action_name].to_s) unless stub[:scheduled_action_name].nil?
        xml << Hearth::XML::Node.new('ScheduledActionARN', stub[:scheduled_action_arn].to_s) unless stub[:scheduled_action_arn].nil?
        xml << Hearth::XML::Node.new('Time', Hearth::TimeHelper.to_date_time(stub[:time])) unless stub[:time].nil?
        xml << Hearth::XML::Node.new('StartTime', Hearth::TimeHelper.to_date_time(stub[:start_time])) unless stub[:start_time].nil?
        xml << Hearth::XML::Node.new('EndTime', Hearth::TimeHelper.to_date_time(stub[:end_time])) unless stub[:end_time].nil?
        xml << Hearth::XML::Node.new('Recurrence', stub[:recurrence].to_s) unless stub[:recurrence].nil?
        xml << Hearth::XML::Node.new('MinSize', stub[:min_size].to_s) unless stub[:min_size].nil?
        xml << Hearth::XML::Node.new('MaxSize', stub[:max_size].to_s) unless stub[:max_size].nil?
        xml << Hearth::XML::Node.new('DesiredCapacity', stub[:desired_capacity].to_s) unless stub[:desired_capacity].nil?
        xml << Hearth::XML::Node.new('TimeZone', stub[:time_zone].to_s) unless stub[:time_zone].nil?
        xml
      end
    end

    # Operation Stubber for DescribeTags
    class DescribeTags
      def self.default(visited=[])
        {
          tags: Stubs::TagDescriptionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeTagsResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeTagsResult')
        xml << Hearth::XML::Node.new('Tags', Stubs::TagDescriptionList.stub('member', stub[:tags])) unless stub[:tags].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeTerminationPolicyTypes
    class DescribeTerminationPolicyTypes
      def self.default(visited=[])
        {
          termination_policy_types: Stubs::TerminationPolicies.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeTerminationPolicyTypesResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeTerminationPolicyTypesResult')
        xml << Hearth::XML::Node.new('TerminationPolicyTypes', Stubs::TerminationPolicies.stub('member', stub[:termination_policy_types])) unless stub[:termination_policy_types].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeWarmPool
    class DescribeWarmPool
      def self.default(visited=[])
        {
          warm_pool_configuration: Stubs::WarmPoolConfiguration.default(visited),
          instances: Stubs::Instances.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DescribeWarmPoolResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DescribeWarmPoolResult')
        xml << Stubs::WarmPoolConfiguration.stub('WarmPoolConfiguration', stub[:warm_pool_configuration]) unless stub[:warm_pool_configuration].nil?
        xml << Hearth::XML::Node.new('Instances', Stubs::Instances.stub('member', stub[:instances])) unless stub[:instances].nil?
        xml << Hearth::XML::Node.new('NextToken', stub[:next_token].to_s) unless stub[:next_token].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachInstances
    class DetachInstances
      def self.default(visited=[])
        {
          activities: Stubs::Activities.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DetachInstancesResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DetachInstancesResult')
        xml << Hearth::XML::Node.new('Activities', Stubs::Activities.stub('member', stub[:activities])) unless stub[:activities].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachLoadBalancerTargetGroups
    class DetachLoadBalancerTargetGroups
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DetachLoadBalancerTargetGroupsResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DetachLoadBalancerTargetGroupsResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetachLoadBalancers
    class DetachLoadBalancers
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DetachLoadBalancersResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DetachLoadBalancersResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisableMetricsCollection
    class DisableMetricsCollection
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('DisableMetricsCollectionResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('DisableMetricsCollectionResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableMetricsCollection
    class EnableMetricsCollection
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('EnableMetricsCollectionResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('EnableMetricsCollectionResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnterStandby
    class EnterStandby
      def self.default(visited=[])
        {
          activities: Stubs::Activities.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('EnterStandbyResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('EnterStandbyResult')
        xml << Hearth::XML::Node.new('Activities', Stubs::Activities.stub('member', stub[:activities])) unless stub[:activities].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExecutePolicy
    class ExecutePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ExecutePolicyResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('ExecutePolicyResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExitStandby
    class ExitStandby
      def self.default(visited=[])
        {
          activities: Stubs::Activities.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ExitStandbyResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('ExitStandbyResult')
        xml << Hearth::XML::Node.new('Activities', Stubs::Activities.stub('member', stub[:activities])) unless stub[:activities].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetPredictiveScalingForecast
    class GetPredictiveScalingForecast
      def self.default(visited=[])
        {
          load_forecast: Stubs::LoadForecasts.default(visited),
          capacity_forecast: Stubs::CapacityForecast.default(visited),
          update_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('GetPredictiveScalingForecastResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('GetPredictiveScalingForecastResult')
        xml << Hearth::XML::Node.new('LoadForecast', Stubs::LoadForecasts.stub('member', stub[:load_forecast])) unless stub[:load_forecast].nil?
        xml << Stubs::CapacityForecast.stub('CapacityForecast', stub[:capacity_forecast]) unless stub[:capacity_forecast].nil?
        xml << Hearth::XML::Node.new('UpdateTime', Hearth::TimeHelper.to_date_time(stub[:update_time])) unless stub[:update_time].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Structure Stubber for CapacityForecast
    class CapacityForecast
      def self.default(visited=[])
        return nil if visited.include?('CapacityForecast')
        visited = visited + ['CapacityForecast']
        {
          timestamps: Stubs::PredictiveScalingForecastTimestamps.default(visited),
          values: Stubs::PredictiveScalingForecastValues.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::CapacityForecast.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Timestamps', Stubs::PredictiveScalingForecastTimestamps.stub('member', stub[:timestamps])) unless stub[:timestamps].nil?
        xml << Hearth::XML::Node.new('Values', Stubs::PredictiveScalingForecastValues.stub('member', stub[:values])) unless stub[:values].nil?
        xml
      end
    end

    # List Stubber for PredictiveScalingForecastValues
    class PredictiveScalingForecastValues
      def self.default(visited=[])
        return nil if visited.include?('PredictiveScalingForecastValues')
        visited = visited + ['PredictiveScalingForecastValues']
        [
          1.0
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, Hearth::NumberHelper.serialize(element).to_s) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for PredictiveScalingForecastTimestamps
    class PredictiveScalingForecastTimestamps
      def self.default(visited=[])
        return nil if visited.include?('PredictiveScalingForecastTimestamps')
        visited = visited + ['PredictiveScalingForecastTimestamps']
        [
          Time.now
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Hearth::XML::Node.new(node_name, Hearth::TimeHelper.to_date_time(element)) unless element.nil?
        end
        xml
      end
    end

    # List Stubber for LoadForecasts
    class LoadForecasts
      def self.default(visited=[])
        return nil if visited.include?('LoadForecasts')
        visited = visited + ['LoadForecasts']
        [
          Stubs::LoadForecast.default(visited)
        ]
      end

      def self.stub(node_name, stub)
        xml = []
        stub.each do |element|
          xml << Stubs::LoadForecast.stub(node_name, element) unless element.nil?
        end
        xml
      end
    end

    # Structure Stubber for LoadForecast
    class LoadForecast
      def self.default(visited=[])
        return nil if visited.include?('LoadForecast')
        visited = visited + ['LoadForecast']
        {
          timestamps: Stubs::PredictiveScalingForecastTimestamps.default(visited),
          values: Stubs::PredictiveScalingForecastValues.default(visited),
          metric_specification: Stubs::PredictiveScalingMetricSpecification.default(visited),
        }
      end

      def self.stub(node_name, stub)
        stub ||= Types::LoadForecast.new
        xml = Hearth::XML::Node.new(node_name)
        xml << Hearth::XML::Node.new('Timestamps', Stubs::PredictiveScalingForecastTimestamps.stub('member', stub[:timestamps])) unless stub[:timestamps].nil?
        xml << Hearth::XML::Node.new('Values', Stubs::PredictiveScalingForecastValues.stub('member', stub[:values])) unless stub[:values].nil?
        xml << Stubs::PredictiveScalingMetricSpecification.stub('MetricSpecification', stub[:metric_specification]) unless stub[:metric_specification].nil?
        xml
      end
    end

    # Operation Stubber for PutLifecycleHook
    class PutLifecycleHook
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutLifecycleHookResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('PutLifecycleHookResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutNotificationConfiguration
    class PutNotificationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutNotificationConfigurationResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('PutNotificationConfigurationResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutScalingPolicy
    class PutScalingPolicy
      def self.default(visited=[])
        {
          policy_arn: 'policy_arn',
          alarms: Stubs::Alarms.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutScalingPolicyResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('PutScalingPolicyResult')
        xml << Hearth::XML::Node.new('PolicyARN', stub[:policy_arn].to_s) unless stub[:policy_arn].nil?
        xml << Hearth::XML::Node.new('Alarms', Stubs::Alarms.stub('member', stub[:alarms])) unless stub[:alarms].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutScheduledUpdateGroupAction
    class PutScheduledUpdateGroupAction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutScheduledUpdateGroupActionResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('PutScheduledUpdateGroupActionResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutWarmPool
    class PutWarmPool
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('PutWarmPoolResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('PutWarmPoolResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for RecordLifecycleActionHeartbeat
    class RecordLifecycleActionHeartbeat
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('RecordLifecycleActionHeartbeatResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('RecordLifecycleActionHeartbeatResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResumeProcesses
    class ResumeProcesses
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('ResumeProcessesResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('ResumeProcessesResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetDesiredCapacity
    class SetDesiredCapacity
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetDesiredCapacityResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('SetDesiredCapacityResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetInstanceHealth
    class SetInstanceHealth
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetInstanceHealthResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('SetInstanceHealthResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetInstanceProtection
    class SetInstanceProtection
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SetInstanceProtectionResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('SetInstanceProtectionResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartInstanceRefresh
    class StartInstanceRefresh
      def self.default(visited=[])
        {
          instance_refresh_id: 'instance_refresh_id',
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('StartInstanceRefreshResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('StartInstanceRefreshResult')
        xml << Hearth::XML::Node.new('InstanceRefreshId', stub[:instance_refresh_id].to_s) unless stub[:instance_refresh_id].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for SuspendProcesses
    class SuspendProcesses
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('SuspendProcessesResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('SuspendProcessesResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for TerminateInstanceInAutoScalingGroup
    class TerminateInstanceInAutoScalingGroup
      def self.default(visited=[])
        {
          activity: Stubs::Activity.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('TerminateInstanceInAutoScalingGroupResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('TerminateInstanceInAutoScalingGroupResult')
        xml << Stubs::Activity.stub('Activity', stub[:activity]) unless stub[:activity].nil?
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAutoScalingGroup
    class UpdateAutoScalingGroup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        http_resp.headers['Content-Type'] = 'application/xml'
        response = Hearth::XML::Node.new('UpdateAutoScalingGroupResponse')
        response.attributes['xmlns'] = 'http://autoscaling.amazonaws.com/doc/2011-01-01/'
        xml = Hearth::XML::Node.new('UpdateAutoScalingGroupResult')
        response << xml
        http_resp.body = StringIO.new(response.to_str)
        http_resp.status = 200
      end
    end
  end
end
