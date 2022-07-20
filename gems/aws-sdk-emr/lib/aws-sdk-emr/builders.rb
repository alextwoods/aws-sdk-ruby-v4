# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::EMR
  module Builders

    # Operation Builder for AddInstanceFleet
    class AddInstanceFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.AddInstanceFleet'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['InstanceFleet'] = InstanceFleetConfig.build(input[:instance_fleet]) unless input[:instance_fleet].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InstanceFleetConfig
    class InstanceFleetConfig
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['InstanceFleetType'] = input[:instance_fleet_type] unless input[:instance_fleet_type].nil?
        data['TargetOnDemandCapacity'] = input[:target_on_demand_capacity] unless input[:target_on_demand_capacity].nil?
        data['TargetSpotCapacity'] = input[:target_spot_capacity] unless input[:target_spot_capacity].nil?
        data['InstanceTypeConfigs'] = InstanceTypeConfigList.build(input[:instance_type_configs]) unless input[:instance_type_configs].nil?
        data['LaunchSpecifications'] = InstanceFleetProvisioningSpecifications.build(input[:launch_specifications]) unless input[:launch_specifications].nil?
        data
      end
    end

    # Structure Builder for InstanceFleetProvisioningSpecifications
    class InstanceFleetProvisioningSpecifications
      def self.build(input)
        data = {}
        data['SpotSpecification'] = SpotProvisioningSpecification.build(input[:spot_specification]) unless input[:spot_specification].nil?
        data['OnDemandSpecification'] = OnDemandProvisioningSpecification.build(input[:on_demand_specification]) unless input[:on_demand_specification].nil?
        data
      end
    end

    # Structure Builder for OnDemandProvisioningSpecification
    class OnDemandProvisioningSpecification
      def self.build(input)
        data = {}
        data['AllocationStrategy'] = input[:allocation_strategy] unless input[:allocation_strategy].nil?
        data['CapacityReservationOptions'] = OnDemandCapacityReservationOptions.build(input[:capacity_reservation_options]) unless input[:capacity_reservation_options].nil?
        data
      end
    end

    # Structure Builder for OnDemandCapacityReservationOptions
    class OnDemandCapacityReservationOptions
      def self.build(input)
        data = {}
        data['UsageStrategy'] = input[:usage_strategy] unless input[:usage_strategy].nil?
        data['CapacityReservationPreference'] = input[:capacity_reservation_preference] unless input[:capacity_reservation_preference].nil?
        data['CapacityReservationResourceGroupArn'] = input[:capacity_reservation_resource_group_arn] unless input[:capacity_reservation_resource_group_arn].nil?
        data
      end
    end

    # Structure Builder for SpotProvisioningSpecification
    class SpotProvisioningSpecification
      def self.build(input)
        data = {}
        data['TimeoutDurationMinutes'] = input[:timeout_duration_minutes] unless input[:timeout_duration_minutes].nil?
        data['TimeoutAction'] = input[:timeout_action] unless input[:timeout_action].nil?
        data['BlockDurationMinutes'] = input[:block_duration_minutes] unless input[:block_duration_minutes].nil?
        data['AllocationStrategy'] = input[:allocation_strategy] unless input[:allocation_strategy].nil?
        data
      end
    end

    # List Builder for InstanceTypeConfigList
    class InstanceTypeConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << InstanceTypeConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InstanceTypeConfig
    class InstanceTypeConfig
      def self.build(input)
        data = {}
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['WeightedCapacity'] = input[:weighted_capacity] unless input[:weighted_capacity].nil?
        data['BidPrice'] = input[:bid_price] unless input[:bid_price].nil?
        data['BidPriceAsPercentageOfOnDemandPrice'] = Hearth::NumberHelper.serialize(input[:bid_price_as_percentage_of_on_demand_price]) unless input[:bid_price_as_percentage_of_on_demand_price].nil?
        data['EbsConfiguration'] = EbsConfiguration.build(input[:ebs_configuration]) unless input[:ebs_configuration].nil?
        data['Configurations'] = ConfigurationList.build(input[:configurations]) unless input[:configurations].nil?
        data['CustomAmiId'] = input[:custom_ami_id] unless input[:custom_ami_id].nil?
        data
      end
    end

    # List Builder for ConfigurationList
    class ConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Configuration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Configuration
    class Configuration
      def self.build(input)
        data = {}
        data['Classification'] = input[:classification] unless input[:classification].nil?
        data['Configurations'] = ConfigurationList.build(input[:configurations]) unless input[:configurations].nil?
        data['Properties'] = StringMap.build(input[:properties]) unless input[:properties].nil?
        data
      end
    end

    # Map Builder for StringMap
    class StringMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for EbsConfiguration
    class EbsConfiguration
      def self.build(input)
        data = {}
        data['EbsBlockDeviceConfigs'] = EbsBlockDeviceConfigList.build(input[:ebs_block_device_configs]) unless input[:ebs_block_device_configs].nil?
        data['EbsOptimized'] = input[:ebs_optimized] unless input[:ebs_optimized].nil?
        data
      end
    end

    # List Builder for EbsBlockDeviceConfigList
    class EbsBlockDeviceConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << EbsBlockDeviceConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EbsBlockDeviceConfig
    class EbsBlockDeviceConfig
      def self.build(input)
        data = {}
        data['VolumeSpecification'] = VolumeSpecification.build(input[:volume_specification]) unless input[:volume_specification].nil?
        data['VolumesPerInstance'] = input[:volumes_per_instance] unless input[:volumes_per_instance].nil?
        data
      end
    end

    # Structure Builder for VolumeSpecification
    class VolumeSpecification
      def self.build(input)
        data = {}
        data['VolumeType'] = input[:volume_type] unless input[:volume_type].nil?
        data['Iops'] = input[:iops] unless input[:iops].nil?
        data['SizeInGB'] = input[:size_in_gb] unless input[:size_in_gb].nil?
        data
      end
    end

    # Operation Builder for AddInstanceGroups
    class AddInstanceGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.AddInstanceGroups'
        data = {}
        data['InstanceGroups'] = InstanceGroupConfigList.build(input[:instance_groups]) unless input[:instance_groups].nil?
        data['JobFlowId'] = input[:job_flow_id] unless input[:job_flow_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InstanceGroupConfigList
    class InstanceGroupConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << InstanceGroupConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InstanceGroupConfig
    class InstanceGroupConfig
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Market'] = input[:market] unless input[:market].nil?
        data['InstanceRole'] = input[:instance_role] unless input[:instance_role].nil?
        data['BidPrice'] = input[:bid_price] unless input[:bid_price].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['InstanceCount'] = input[:instance_count] unless input[:instance_count].nil?
        data['Configurations'] = ConfigurationList.build(input[:configurations]) unless input[:configurations].nil?
        data['EbsConfiguration'] = EbsConfiguration.build(input[:ebs_configuration]) unless input[:ebs_configuration].nil?
        data['AutoScalingPolicy'] = AutoScalingPolicy.build(input[:auto_scaling_policy]) unless input[:auto_scaling_policy].nil?
        data['CustomAmiId'] = input[:custom_ami_id] unless input[:custom_ami_id].nil?
        data
      end
    end

    # Structure Builder for AutoScalingPolicy
    class AutoScalingPolicy
      def self.build(input)
        data = {}
        data['Constraints'] = ScalingConstraints.build(input[:constraints]) unless input[:constraints].nil?
        data['Rules'] = ScalingRuleList.build(input[:rules]) unless input[:rules].nil?
        data
      end
    end

    # List Builder for ScalingRuleList
    class ScalingRuleList
      def self.build(input)
        data = []
        input.each do |element|
          data << ScalingRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ScalingRule
    class ScalingRule
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Action'] = ScalingAction.build(input[:action]) unless input[:action].nil?
        data['Trigger'] = ScalingTrigger.build(input[:trigger]) unless input[:trigger].nil?
        data
      end
    end

    # Structure Builder for ScalingTrigger
    class ScalingTrigger
      def self.build(input)
        data = {}
        data['CloudWatchAlarmDefinition'] = CloudWatchAlarmDefinition.build(input[:cloud_watch_alarm_definition]) unless input[:cloud_watch_alarm_definition].nil?
        data
      end
    end

    # Structure Builder for CloudWatchAlarmDefinition
    class CloudWatchAlarmDefinition
      def self.build(input)
        data = {}
        data['ComparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data['EvaluationPeriods'] = input[:evaluation_periods] unless input[:evaluation_periods].nil?
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['Namespace'] = input[:namespace] unless input[:namespace].nil?
        data['Period'] = input[:period] unless input[:period].nil?
        data['Statistic'] = input[:statistic] unless input[:statistic].nil?
        data['Threshold'] = Hearth::NumberHelper.serialize(input[:threshold]) unless input[:threshold].nil?
        data['Unit'] = input[:unit] unless input[:unit].nil?
        data['Dimensions'] = MetricDimensionList.build(input[:dimensions]) unless input[:dimensions].nil?
        data
      end
    end

    # List Builder for MetricDimensionList
    class MetricDimensionList
      def self.build(input)
        data = []
        input.each do |element|
          data << MetricDimension.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MetricDimension
    class MetricDimension
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for ScalingAction
    class ScalingAction
      def self.build(input)
        data = {}
        data['Market'] = input[:market] unless input[:market].nil?
        data['SimpleScalingPolicyConfiguration'] = SimpleScalingPolicyConfiguration.build(input[:simple_scaling_policy_configuration]) unless input[:simple_scaling_policy_configuration].nil?
        data
      end
    end

    # Structure Builder for SimpleScalingPolicyConfiguration
    class SimpleScalingPolicyConfiguration
      def self.build(input)
        data = {}
        data['AdjustmentType'] = input[:adjustment_type] unless input[:adjustment_type].nil?
        data['ScalingAdjustment'] = input[:scaling_adjustment] unless input[:scaling_adjustment].nil?
        data['CoolDown'] = input[:cool_down] unless input[:cool_down].nil?
        data
      end
    end

    # Structure Builder for ScalingConstraints
    class ScalingConstraints
      def self.build(input)
        data = {}
        data['MinCapacity'] = input[:min_capacity] unless input[:min_capacity].nil?
        data['MaxCapacity'] = input[:max_capacity] unless input[:max_capacity].nil?
        data
      end
    end

    # Operation Builder for AddJobFlowSteps
    class AddJobFlowSteps
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.AddJobFlowSteps'
        data = {}
        data['JobFlowId'] = input[:job_flow_id] unless input[:job_flow_id].nil?
        data['Steps'] = StepConfigList.build(input[:steps]) unless input[:steps].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StepConfigList
    class StepConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << StepConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StepConfig
    class StepConfig
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ActionOnFailure'] = input[:action_on_failure] unless input[:action_on_failure].nil?
        data['HadoopJarStep'] = HadoopJarStepConfig.build(input[:hadoop_jar_step]) unless input[:hadoop_jar_step].nil?
        data
      end
    end

    # Structure Builder for HadoopJarStepConfig
    class HadoopJarStepConfig
      def self.build(input)
        data = {}
        data['Properties'] = KeyValueList.build(input[:properties]) unless input[:properties].nil?
        data['Jar'] = input[:jar] unless input[:jar].nil?
        data['MainClass'] = input[:main_class] unless input[:main_class].nil?
        data['Args'] = XmlStringList.build(input[:args]) unless input[:args].nil?
        data
      end
    end

    # List Builder for XmlStringList
    class XmlStringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for KeyValueList
    class KeyValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << KeyValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for KeyValue
    class KeyValue
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for AddTags
    class AddTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.AddTags'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
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

    # Operation Builder for CancelSteps
    class CancelSteps
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.CancelSteps'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['StepIds'] = StepIdsList.build(input[:step_ids]) unless input[:step_ids].nil?
        data['StepCancellationOption'] = input[:step_cancellation_option] unless input[:step_cancellation_option].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StepIdsList
    class StepIdsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateSecurityConfiguration
    class CreateSecurityConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.CreateSecurityConfiguration'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['SecurityConfiguration'] = input[:security_configuration] unless input[:security_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateStudio
    class CreateStudio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.CreateStudio'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['AuthMode'] = input[:auth_mode] unless input[:auth_mode].nil?
        data['VpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['SubnetIds'] = SubnetIdList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['ServiceRole'] = input[:service_role] unless input[:service_role].nil?
        data['UserRole'] = input[:user_role] unless input[:user_role].nil?
        data['WorkspaceSecurityGroupId'] = input[:workspace_security_group_id] unless input[:workspace_security_group_id].nil?
        data['EngineSecurityGroupId'] = input[:engine_security_group_id] unless input[:engine_security_group_id].nil?
        data['DefaultS3Location'] = input[:default_s3_location] unless input[:default_s3_location].nil?
        data['IdpAuthUrl'] = input[:idp_auth_url] unless input[:idp_auth_url].nil?
        data['IdpRelayStateParameterName'] = input[:idp_relay_state_parameter_name] unless input[:idp_relay_state_parameter_name].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SubnetIdList
    class SubnetIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateStudioSessionMapping
    class CreateStudioSessionMapping
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.CreateStudioSessionMapping'
        data = {}
        data['StudioId'] = input[:studio_id] unless input[:studio_id].nil?
        data['IdentityId'] = input[:identity_id] unless input[:identity_id].nil?
        data['IdentityName'] = input[:identity_name] unless input[:identity_name].nil?
        data['IdentityType'] = input[:identity_type] unless input[:identity_type].nil?
        data['SessionPolicyArn'] = input[:session_policy_arn] unless input[:session_policy_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSecurityConfiguration
    class DeleteSecurityConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.DeleteSecurityConfiguration'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteStudio
    class DeleteStudio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.DeleteStudio'
        data = {}
        data['StudioId'] = input[:studio_id] unless input[:studio_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteStudioSessionMapping
    class DeleteStudioSessionMapping
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.DeleteStudioSessionMapping'
        data = {}
        data['StudioId'] = input[:studio_id] unless input[:studio_id].nil?
        data['IdentityId'] = input[:identity_id] unless input[:identity_id].nil?
        data['IdentityName'] = input[:identity_name] unless input[:identity_name].nil?
        data['IdentityType'] = input[:identity_type] unless input[:identity_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeCluster
    class DescribeCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.DescribeCluster'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeJobFlows
    class DescribeJobFlows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.DescribeJobFlows'
        data = {}
        data['CreatedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_after]).to_i unless input[:created_after].nil?
        data['CreatedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_before]).to_i unless input[:created_before].nil?
        data['JobFlowIds'] = XmlStringList.build(input[:job_flow_ids]) unless input[:job_flow_ids].nil?
        data['JobFlowStates'] = JobFlowExecutionStateList.build(input[:job_flow_states]) unless input[:job_flow_states].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for JobFlowExecutionStateList
    class JobFlowExecutionStateList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeNotebookExecution
    class DescribeNotebookExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.DescribeNotebookExecution'
        data = {}
        data['NotebookExecutionId'] = input[:notebook_execution_id] unless input[:notebook_execution_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeReleaseLabel
    class DescribeReleaseLabel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.DescribeReleaseLabel'
        data = {}
        data['ReleaseLabel'] = input[:release_label] unless input[:release_label].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSecurityConfiguration
    class DescribeSecurityConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.DescribeSecurityConfiguration'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeStep
    class DescribeStep
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.DescribeStep'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['StepId'] = input[:step_id] unless input[:step_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeStudio
    class DescribeStudio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.DescribeStudio'
        data = {}
        data['StudioId'] = input[:studio_id] unless input[:studio_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAutoTerminationPolicy
    class GetAutoTerminationPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.GetAutoTerminationPolicy'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBlockPublicAccessConfiguration
    class GetBlockPublicAccessConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.GetBlockPublicAccessConfiguration'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetManagedScalingPolicy
    class GetManagedScalingPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.GetManagedScalingPolicy'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetStudioSessionMapping
    class GetStudioSessionMapping
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.GetStudioSessionMapping'
        data = {}
        data['StudioId'] = input[:studio_id] unless input[:studio_id].nil?
        data['IdentityId'] = input[:identity_id] unless input[:identity_id].nil?
        data['IdentityName'] = input[:identity_name] unless input[:identity_name].nil?
        data['IdentityType'] = input[:identity_type] unless input[:identity_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListBootstrapActions
    class ListBootstrapActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.ListBootstrapActions'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListClusters
    class ListClusters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.ListClusters'
        data = {}
        data['CreatedAfter'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_after]).to_i unless input[:created_after].nil?
        data['CreatedBefore'] = Hearth::TimeHelper.to_epoch_seconds(input[:created_before]).to_i unless input[:created_before].nil?
        data['ClusterStates'] = ClusterStateList.build(input[:cluster_states]) unless input[:cluster_states].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ClusterStateList
    class ClusterStateList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListInstanceFleets
    class ListInstanceFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.ListInstanceFleets'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListInstanceGroups
    class ListInstanceGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.ListInstanceGroups'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListInstances
    class ListInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.ListInstances'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['InstanceGroupId'] = input[:instance_group_id] unless input[:instance_group_id].nil?
        data['InstanceGroupTypes'] = InstanceGroupTypeList.build(input[:instance_group_types]) unless input[:instance_group_types].nil?
        data['InstanceFleetId'] = input[:instance_fleet_id] unless input[:instance_fleet_id].nil?
        data['InstanceFleetType'] = input[:instance_fleet_type] unless input[:instance_fleet_type].nil?
        data['InstanceStates'] = InstanceStateList.build(input[:instance_states]) unless input[:instance_states].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InstanceStateList
    class InstanceStateList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for InstanceGroupTypeList
    class InstanceGroupTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListNotebookExecutions
    class ListNotebookExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.ListNotebookExecutions'
        data = {}
        data['EditorId'] = input[:editor_id] unless input[:editor_id].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data['From'] = Hearth::TimeHelper.to_epoch_seconds(input[:from]).to_i unless input[:from].nil?
        data['To'] = Hearth::TimeHelper.to_epoch_seconds(input[:to]).to_i unless input[:to].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListReleaseLabels
    class ListReleaseLabels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.ListReleaseLabels'
        data = {}
        data['Filters'] = ReleaseLabelFilter.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ReleaseLabelFilter
    class ReleaseLabelFilter
      def self.build(input)
        data = {}
        data['Prefix'] = input[:prefix] unless input[:prefix].nil?
        data['Application'] = input[:application] unless input[:application].nil?
        data
      end
    end

    # Operation Builder for ListSecurityConfigurations
    class ListSecurityConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.ListSecurityConfigurations'
        data = {}
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListSteps
    class ListSteps
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.ListSteps'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['StepStates'] = StepStateList.build(input[:step_states]) unless input[:step_states].nil?
        data['StepIds'] = XmlStringList.build(input[:step_ids]) unless input[:step_ids].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StepStateList
    class StepStateList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListStudioSessionMappings
    class ListStudioSessionMappings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.ListStudioSessionMappings'
        data = {}
        data['StudioId'] = input[:studio_id] unless input[:studio_id].nil?
        data['IdentityType'] = input[:identity_type] unless input[:identity_type].nil?
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListStudios
    class ListStudios
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.ListStudios'
        data = {}
        data['Marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ModifyCluster
    class ModifyCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.ModifyCluster'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['StepConcurrencyLevel'] = input[:step_concurrency_level] unless input[:step_concurrency_level].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ModifyInstanceFleet
    class ModifyInstanceFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.ModifyInstanceFleet'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['InstanceFleet'] = InstanceFleetModifyConfig.build(input[:instance_fleet]) unless input[:instance_fleet].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InstanceFleetModifyConfig
    class InstanceFleetModifyConfig
      def self.build(input)
        data = {}
        data['InstanceFleetId'] = input[:instance_fleet_id] unless input[:instance_fleet_id].nil?
        data['TargetOnDemandCapacity'] = input[:target_on_demand_capacity] unless input[:target_on_demand_capacity].nil?
        data['TargetSpotCapacity'] = input[:target_spot_capacity] unless input[:target_spot_capacity].nil?
        data
      end
    end

    # Operation Builder for ModifyInstanceGroups
    class ModifyInstanceGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.ModifyInstanceGroups'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['InstanceGroups'] = InstanceGroupModifyConfigList.build(input[:instance_groups]) unless input[:instance_groups].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for InstanceGroupModifyConfigList
    class InstanceGroupModifyConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << InstanceGroupModifyConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InstanceGroupModifyConfig
    class InstanceGroupModifyConfig
      def self.build(input)
        data = {}
        data['InstanceGroupId'] = input[:instance_group_id] unless input[:instance_group_id].nil?
        data['InstanceCount'] = input[:instance_count] unless input[:instance_count].nil?
        data['EC2InstanceIdsToTerminate'] = EC2InstanceIdsToTerminateList.build(input[:ec2_instance_ids_to_terminate]) unless input[:ec2_instance_ids_to_terminate].nil?
        data['ShrinkPolicy'] = ShrinkPolicy.build(input[:shrink_policy]) unless input[:shrink_policy].nil?
        data['ReconfigurationType'] = input[:reconfiguration_type] unless input[:reconfiguration_type].nil?
        data['Configurations'] = ConfigurationList.build(input[:configurations]) unless input[:configurations].nil?
        data
      end
    end

    # Structure Builder for ShrinkPolicy
    class ShrinkPolicy
      def self.build(input)
        data = {}
        data['DecommissionTimeout'] = input[:decommission_timeout] unless input[:decommission_timeout].nil?
        data['InstanceResizePolicy'] = InstanceResizePolicy.build(input[:instance_resize_policy]) unless input[:instance_resize_policy].nil?
        data
      end
    end

    # Structure Builder for InstanceResizePolicy
    class InstanceResizePolicy
      def self.build(input)
        data = {}
        data['InstancesToTerminate'] = EC2InstanceIdsList.build(input[:instances_to_terminate]) unless input[:instances_to_terminate].nil?
        data['InstancesToProtect'] = EC2InstanceIdsList.build(input[:instances_to_protect]) unless input[:instances_to_protect].nil?
        data['InstanceTerminationTimeout'] = input[:instance_termination_timeout] unless input[:instance_termination_timeout].nil?
        data
      end
    end

    # List Builder for EC2InstanceIdsList
    class EC2InstanceIdsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for EC2InstanceIdsToTerminateList
    class EC2InstanceIdsToTerminateList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutAutoScalingPolicy
    class PutAutoScalingPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.PutAutoScalingPolicy'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['InstanceGroupId'] = input[:instance_group_id] unless input[:instance_group_id].nil?
        data['AutoScalingPolicy'] = AutoScalingPolicy.build(input[:auto_scaling_policy]) unless input[:auto_scaling_policy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutAutoTerminationPolicy
    class PutAutoTerminationPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.PutAutoTerminationPolicy'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['AutoTerminationPolicy'] = AutoTerminationPolicy.build(input[:auto_termination_policy]) unless input[:auto_termination_policy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AutoTerminationPolicy
    class AutoTerminationPolicy
      def self.build(input)
        data = {}
        data['IdleTimeout'] = input[:idle_timeout] unless input[:idle_timeout].nil?
        data
      end
    end

    # Operation Builder for PutBlockPublicAccessConfiguration
    class PutBlockPublicAccessConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.PutBlockPublicAccessConfiguration'
        data = {}
        data['BlockPublicAccessConfiguration'] = BlockPublicAccessConfiguration.build(input[:block_public_access_configuration]) unless input[:block_public_access_configuration].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BlockPublicAccessConfiguration
    class BlockPublicAccessConfiguration
      def self.build(input)
        data = {}
        data['BlockPublicSecurityGroupRules'] = input[:block_public_security_group_rules] unless input[:block_public_security_group_rules].nil?
        data['PermittedPublicSecurityGroupRuleRanges'] = PortRanges.build(input[:permitted_public_security_group_rule_ranges]) unless input[:permitted_public_security_group_rule_ranges].nil?
        data['Classification'] = input[:classification] unless input[:classification].nil?
        data['Configurations'] = ConfigurationList.build(input[:configurations]) unless input[:configurations].nil?
        data['Properties'] = StringMap.build(input[:properties]) unless input[:properties].nil?
        data
      end
    end

    # List Builder for PortRanges
    class PortRanges
      def self.build(input)
        data = []
        input.each do |element|
          data << PortRange.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PortRange
    class PortRange
      def self.build(input)
        data = {}
        data['MinRange'] = input[:min_range] unless input[:min_range].nil?
        data['MaxRange'] = input[:max_range] unless input[:max_range].nil?
        data
      end
    end

    # Operation Builder for PutManagedScalingPolicy
    class PutManagedScalingPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.PutManagedScalingPolicy'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['ManagedScalingPolicy'] = ManagedScalingPolicy.build(input[:managed_scaling_policy]) unless input[:managed_scaling_policy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ManagedScalingPolicy
    class ManagedScalingPolicy
      def self.build(input)
        data = {}
        data['ComputeLimits'] = ComputeLimits.build(input[:compute_limits]) unless input[:compute_limits].nil?
        data
      end
    end

    # Structure Builder for ComputeLimits
    class ComputeLimits
      def self.build(input)
        data = {}
        data['UnitType'] = input[:unit_type] unless input[:unit_type].nil?
        data['MinimumCapacityUnits'] = input[:minimum_capacity_units] unless input[:minimum_capacity_units].nil?
        data['MaximumCapacityUnits'] = input[:maximum_capacity_units] unless input[:maximum_capacity_units].nil?
        data['MaximumOnDemandCapacityUnits'] = input[:maximum_on_demand_capacity_units] unless input[:maximum_on_demand_capacity_units].nil?
        data['MaximumCoreCapacityUnits'] = input[:maximum_core_capacity_units] unless input[:maximum_core_capacity_units].nil?
        data
      end
    end

    # Operation Builder for RemoveAutoScalingPolicy
    class RemoveAutoScalingPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.RemoveAutoScalingPolicy'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data['InstanceGroupId'] = input[:instance_group_id] unless input[:instance_group_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveAutoTerminationPolicy
    class RemoveAutoTerminationPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.RemoveAutoTerminationPolicy'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveManagedScalingPolicy
    class RemoveManagedScalingPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.RemoveManagedScalingPolicy'
        data = {}
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveTags
    class RemoveTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.RemoveTags'
        data = {}
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['TagKeys'] = StringList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RunJobFlow
    class RunJobFlow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.RunJobFlow'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['LogUri'] = input[:log_uri] unless input[:log_uri].nil?
        data['LogEncryptionKmsKeyId'] = input[:log_encryption_kms_key_id] unless input[:log_encryption_kms_key_id].nil?
        data['AdditionalInfo'] = input[:additional_info] unless input[:additional_info].nil?
        data['AmiVersion'] = input[:ami_version] unless input[:ami_version].nil?
        data['ReleaseLabel'] = input[:release_label] unless input[:release_label].nil?
        data['Instances'] = JobFlowInstancesConfig.build(input[:instances]) unless input[:instances].nil?
        data['Steps'] = StepConfigList.build(input[:steps]) unless input[:steps].nil?
        data['BootstrapActions'] = BootstrapActionConfigList.build(input[:bootstrap_actions]) unless input[:bootstrap_actions].nil?
        data['SupportedProducts'] = SupportedProductsList.build(input[:supported_products]) unless input[:supported_products].nil?
        data['NewSupportedProducts'] = NewSupportedProductsList.build(input[:new_supported_products]) unless input[:new_supported_products].nil?
        data['Applications'] = ApplicationList.build(input[:applications]) unless input[:applications].nil?
        data['Configurations'] = ConfigurationList.build(input[:configurations]) unless input[:configurations].nil?
        data['VisibleToAllUsers'] = input[:visible_to_all_users] unless input[:visible_to_all_users].nil?
        data['JobFlowRole'] = input[:job_flow_role] unless input[:job_flow_role].nil?
        data['ServiceRole'] = input[:service_role] unless input[:service_role].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['SecurityConfiguration'] = input[:security_configuration] unless input[:security_configuration].nil?
        data['AutoScalingRole'] = input[:auto_scaling_role] unless input[:auto_scaling_role].nil?
        data['ScaleDownBehavior'] = input[:scale_down_behavior] unless input[:scale_down_behavior].nil?
        data['CustomAmiId'] = input[:custom_ami_id] unless input[:custom_ami_id].nil?
        data['EbsRootVolumeSize'] = input[:ebs_root_volume_size] unless input[:ebs_root_volume_size].nil?
        data['RepoUpgradeOnBoot'] = input[:repo_upgrade_on_boot] unless input[:repo_upgrade_on_boot].nil?
        data['KerberosAttributes'] = KerberosAttributes.build(input[:kerberos_attributes]) unless input[:kerberos_attributes].nil?
        data['StepConcurrencyLevel'] = input[:step_concurrency_level] unless input[:step_concurrency_level].nil?
        data['ManagedScalingPolicy'] = ManagedScalingPolicy.build(input[:managed_scaling_policy]) unless input[:managed_scaling_policy].nil?
        data['PlacementGroupConfigs'] = PlacementGroupConfigList.build(input[:placement_group_configs]) unless input[:placement_group_configs].nil?
        data['AutoTerminationPolicy'] = AutoTerminationPolicy.build(input[:auto_termination_policy]) unless input[:auto_termination_policy].nil?
        data['OSReleaseLabel'] = input[:os_release_label] unless input[:os_release_label].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PlacementGroupConfigList
    class PlacementGroupConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << PlacementGroupConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PlacementGroupConfig
    class PlacementGroupConfig
      def self.build(input)
        data = {}
        data['InstanceRole'] = input[:instance_role] unless input[:instance_role].nil?
        data['PlacementStrategy'] = input[:placement_strategy] unless input[:placement_strategy].nil?
        data
      end
    end

    # Structure Builder for KerberosAttributes
    class KerberosAttributes
      def self.build(input)
        data = {}
        data['Realm'] = input[:realm] unless input[:realm].nil?
        data['KdcAdminPassword'] = input[:kdc_admin_password] unless input[:kdc_admin_password].nil?
        data['CrossRealmTrustPrincipalPassword'] = input[:cross_realm_trust_principal_password] unless input[:cross_realm_trust_principal_password].nil?
        data['ADDomainJoinUser'] = input[:ad_domain_join_user] unless input[:ad_domain_join_user].nil?
        data['ADDomainJoinPassword'] = input[:ad_domain_join_password] unless input[:ad_domain_join_password].nil?
        data
      end
    end

    # List Builder for ApplicationList
    class ApplicationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Application.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Application
    class Application
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data['Args'] = StringList.build(input[:args]) unless input[:args].nil?
        data['AdditionalInfo'] = StringMap.build(input[:additional_info]) unless input[:additional_info].nil?
        data
      end
    end

    # List Builder for NewSupportedProductsList
    class NewSupportedProductsList
      def self.build(input)
        data = []
        input.each do |element|
          data << SupportedProductConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SupportedProductConfig
    class SupportedProductConfig
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Args'] = XmlStringList.build(input[:args]) unless input[:args].nil?
        data
      end
    end

    # List Builder for SupportedProductsList
    class SupportedProductsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for BootstrapActionConfigList
    class BootstrapActionConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << BootstrapActionConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BootstrapActionConfig
    class BootstrapActionConfig
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ScriptBootstrapAction'] = ScriptBootstrapActionConfig.build(input[:script_bootstrap_action]) unless input[:script_bootstrap_action].nil?
        data
      end
    end

    # Structure Builder for ScriptBootstrapActionConfig
    class ScriptBootstrapActionConfig
      def self.build(input)
        data = {}
        data['Path'] = input[:path] unless input[:path].nil?
        data['Args'] = XmlStringList.build(input[:args]) unless input[:args].nil?
        data
      end
    end

    # Structure Builder for JobFlowInstancesConfig
    class JobFlowInstancesConfig
      def self.build(input)
        data = {}
        data['MasterInstanceType'] = input[:master_instance_type] unless input[:master_instance_type].nil?
        data['SlaveInstanceType'] = input[:slave_instance_type] unless input[:slave_instance_type].nil?
        data['InstanceCount'] = input[:instance_count] unless input[:instance_count].nil?
        data['InstanceGroups'] = InstanceGroupConfigList.build(input[:instance_groups]) unless input[:instance_groups].nil?
        data['InstanceFleets'] = InstanceFleetConfigList.build(input[:instance_fleets]) unless input[:instance_fleets].nil?
        data['Ec2KeyName'] = input[:ec2_key_name] unless input[:ec2_key_name].nil?
        data['Placement'] = PlacementType.build(input[:placement]) unless input[:placement].nil?
        data['KeepJobFlowAliveWhenNoSteps'] = input[:keep_job_flow_alive_when_no_steps] unless input[:keep_job_flow_alive_when_no_steps].nil?
        data['TerminationProtected'] = input[:termination_protected] unless input[:termination_protected].nil?
        data['HadoopVersion'] = input[:hadoop_version] unless input[:hadoop_version].nil?
        data['Ec2SubnetId'] = input[:ec2_subnet_id] unless input[:ec2_subnet_id].nil?
        data['Ec2SubnetIds'] = XmlStringMaxLen256List.build(input[:ec2_subnet_ids]) unless input[:ec2_subnet_ids].nil?
        data['EmrManagedMasterSecurityGroup'] = input[:emr_managed_master_security_group] unless input[:emr_managed_master_security_group].nil?
        data['EmrManagedSlaveSecurityGroup'] = input[:emr_managed_slave_security_group] unless input[:emr_managed_slave_security_group].nil?
        data['ServiceAccessSecurityGroup'] = input[:service_access_security_group] unless input[:service_access_security_group].nil?
        data['AdditionalMasterSecurityGroups'] = SecurityGroupsList.build(input[:additional_master_security_groups]) unless input[:additional_master_security_groups].nil?
        data['AdditionalSlaveSecurityGroups'] = SecurityGroupsList.build(input[:additional_slave_security_groups]) unless input[:additional_slave_security_groups].nil?
        data
      end
    end

    # List Builder for SecurityGroupsList
    class SecurityGroupsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for XmlStringMaxLen256List
    class XmlStringMaxLen256List
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PlacementType
    class PlacementType
      def self.build(input)
        data = {}
        data['AvailabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['AvailabilityZones'] = XmlStringMaxLen256List.build(input[:availability_zones]) unless input[:availability_zones].nil?
        data
      end
    end

    # List Builder for InstanceFleetConfigList
    class InstanceFleetConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << InstanceFleetConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SetTerminationProtection
    class SetTerminationProtection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.SetTerminationProtection'
        data = {}
        data['JobFlowIds'] = XmlStringList.build(input[:job_flow_ids]) unless input[:job_flow_ids].nil?
        data['TerminationProtected'] = input[:termination_protected] unless input[:termination_protected].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetVisibleToAllUsers
    class SetVisibleToAllUsers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.SetVisibleToAllUsers'
        data = {}
        data['JobFlowIds'] = XmlStringList.build(input[:job_flow_ids]) unless input[:job_flow_ids].nil?
        data['VisibleToAllUsers'] = input[:visible_to_all_users] unless input[:visible_to_all_users].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartNotebookExecution
    class StartNotebookExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.StartNotebookExecution'
        data = {}
        data['EditorId'] = input[:editor_id] unless input[:editor_id].nil?
        data['RelativePath'] = input[:relative_path] unless input[:relative_path].nil?
        data['NotebookExecutionName'] = input[:notebook_execution_name] unless input[:notebook_execution_name].nil?
        data['NotebookParams'] = input[:notebook_params] unless input[:notebook_params].nil?
        data['ExecutionEngine'] = ExecutionEngineConfig.build(input[:execution_engine]) unless input[:execution_engine].nil?
        data['ServiceRole'] = input[:service_role] unless input[:service_role].nil?
        data['NotebookInstanceSecurityGroupId'] = input[:notebook_instance_security_group_id] unless input[:notebook_instance_security_group_id].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ExecutionEngineConfig
    class ExecutionEngineConfig
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['MasterInstanceSecurityGroupId'] = input[:master_instance_security_group_id] unless input[:master_instance_security_group_id].nil?
        data
      end
    end

    # Operation Builder for StopNotebookExecution
    class StopNotebookExecution
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.StopNotebookExecution'
        data = {}
        data['NotebookExecutionId'] = input[:notebook_execution_id] unless input[:notebook_execution_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TerminateJobFlows
    class TerminateJobFlows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.TerminateJobFlows'
        data = {}
        data['JobFlowIds'] = XmlStringList.build(input[:job_flow_ids]) unless input[:job_flow_ids].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateStudio
    class UpdateStudio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.UpdateStudio'
        data = {}
        data['StudioId'] = input[:studio_id] unless input[:studio_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SubnetIds'] = SubnetIdList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['DefaultS3Location'] = input[:default_s3_location] unless input[:default_s3_location].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateStudioSessionMapping
    class UpdateStudioSessionMapping
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'ElasticMapReduce.UpdateStudioSessionMapping'
        data = {}
        data['StudioId'] = input[:studio_id] unless input[:studio_id].nil?
        data['IdentityId'] = input[:identity_id] unless input[:identity_id].nil?
        data['IdentityName'] = input[:identity_name] unless input[:identity_name].nil?
        data['IdentityType'] = input[:identity_type] unless input[:identity_type].nil?
        data['SessionPolicyArn'] = input[:session_policy_arn] unless input[:session_policy_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
