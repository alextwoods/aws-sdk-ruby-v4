# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EMR
  module Parsers

    # Operation Parser for AddInstanceFleet
    class AddInstanceFleet
      def self.parse(http_resp)
        data = Types::AddInstanceFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster_id = map['ClusterId']
        data.instance_fleet_id = map['InstanceFleetId']
        data.cluster_arn = map['ClusterArn']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.error_code = map['ErrorCode']
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AddInstanceGroups
    class AddInstanceGroups
      def self.parse(http_resp)
        data = Types::AddInstanceGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_flow_id = map['JobFlowId']
        data.instance_group_ids = (InstanceGroupIdsList.parse(map['InstanceGroupIds']) unless map['InstanceGroupIds'].nil?)
        data.cluster_arn = map['ClusterArn']
        data
      end
    end

    class InstanceGroupIdsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp)
        data = Types::InternalServerError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AddJobFlowSteps
    class AddJobFlowSteps
      def self.parse(http_resp)
        data = Types::AddJobFlowStepsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.step_ids = (StepIdsList.parse(map['StepIds']) unless map['StepIds'].nil?)
        data
      end
    end

    class StepIdsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for AddTags
    class AddTags
      def self.parse(http_resp)
        data = Types::AddTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CancelSteps
    class CancelSteps
      def self.parse(http_resp)
        data = Types::CancelStepsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cancel_steps_info_list = (CancelStepsInfoList.parse(map['CancelStepsInfoList']) unless map['CancelStepsInfoList'].nil?)
        data
      end
    end

    class CancelStepsInfoList
      def self.parse(list)
        list.map do |value|
          CancelStepsInfo.parse(value) unless value.nil?
        end
      end
    end

    class CancelStepsInfo
      def self.parse(map)
        data = Types::CancelStepsInfo.new
        data.step_id = map['StepId']
        data.status = map['Status']
        data.reason = map['Reason']
        return data
      end
    end

    # Operation Parser for CreateSecurityConfiguration
    class CreateSecurityConfiguration
      def self.parse(http_resp)
        data = Types::CreateSecurityConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data
      end
    end

    # Operation Parser for CreateStudio
    class CreateStudio
      def self.parse(http_resp)
        data = Types::CreateStudioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.studio_id = map['StudioId']
        data.url = map['Url']
        data
      end
    end

    # Operation Parser for CreateStudioSessionMapping
    class CreateStudioSessionMapping
      def self.parse(http_resp)
        data = Types::CreateStudioSessionMappingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteSecurityConfiguration
    class DeleteSecurityConfiguration
      def self.parse(http_resp)
        data = Types::DeleteSecurityConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteStudio
    class DeleteStudio
      def self.parse(http_resp)
        data = Types::DeleteStudioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteStudioSessionMapping
    class DeleteStudioSessionMapping
      def self.parse(http_resp)
        data = Types::DeleteStudioSessionMappingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeCluster
    class DescribeCluster
      def self.parse(http_resp)
        data = Types::DescribeClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster = (Cluster.parse(map['Cluster']) unless map['Cluster'].nil?)
        data
      end
    end

    class Cluster
      def self.parse(map)
        data = Types::Cluster.new
        data.id = map['Id']
        data.name = map['Name']
        data.status = (ClusterStatus.parse(map['Status']) unless map['Status'].nil?)
        data.ec2_instance_attributes = (Ec2InstanceAttributes.parse(map['Ec2InstanceAttributes']) unless map['Ec2InstanceAttributes'].nil?)
        data.instance_collection_type = map['InstanceCollectionType']
        data.log_uri = map['LogUri']
        data.log_encryption_kms_key_id = map['LogEncryptionKmsKeyId']
        data.requested_ami_version = map['RequestedAmiVersion']
        data.running_ami_version = map['RunningAmiVersion']
        data.release_label = map['ReleaseLabel']
        data.auto_terminate = map['AutoTerminate']
        data.termination_protected = map['TerminationProtected']
        data.visible_to_all_users = map['VisibleToAllUsers']
        data.applications = (ApplicationList.parse(map['Applications']) unless map['Applications'].nil?)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.service_role = map['ServiceRole']
        data.normalized_instance_hours = map['NormalizedInstanceHours']
        data.master_public_dns_name = map['MasterPublicDnsName']
        data.configurations = (ConfigurationList.parse(map['Configurations']) unless map['Configurations'].nil?)
        data.security_configuration = map['SecurityConfiguration']
        data.auto_scaling_role = map['AutoScalingRole']
        data.scale_down_behavior = map['ScaleDownBehavior']
        data.custom_ami_id = map['CustomAmiId']
        data.ebs_root_volume_size = map['EbsRootVolumeSize']
        data.repo_upgrade_on_boot = map['RepoUpgradeOnBoot']
        data.kerberos_attributes = (KerberosAttributes.parse(map['KerberosAttributes']) unless map['KerberosAttributes'].nil?)
        data.cluster_arn = map['ClusterArn']
        data.outpost_arn = map['OutpostArn']
        data.step_concurrency_level = map['StepConcurrencyLevel']
        data.placement_groups = (PlacementGroupConfigList.parse(map['PlacementGroups']) unless map['PlacementGroups'].nil?)
        data.os_release_label = map['OSReleaseLabel']
        return data
      end
    end

    class PlacementGroupConfigList
      def self.parse(list)
        list.map do |value|
          PlacementGroupConfig.parse(value) unless value.nil?
        end
      end
    end

    class PlacementGroupConfig
      def self.parse(map)
        data = Types::PlacementGroupConfig.new
        data.instance_role = map['InstanceRole']
        data.placement_strategy = map['PlacementStrategy']
        return data
      end
    end

    class KerberosAttributes
      def self.parse(map)
        data = Types::KerberosAttributes.new
        data.realm = map['Realm']
        data.kdc_admin_password = map['KdcAdminPassword']
        data.cross_realm_trust_principal_password = map['CrossRealmTrustPrincipalPassword']
        data.ad_domain_join_user = map['ADDomainJoinUser']
        data.ad_domain_join_password = map['ADDomainJoinPassword']
        return data
      end
    end

    class ConfigurationList
      def self.parse(list)
        list.map do |value|
          Configuration.parse(value) unless value.nil?
        end
      end
    end

    class Configuration
      def self.parse(map)
        data = Types::Configuration.new
        data.classification = map['Classification']
        data.configurations = (ConfigurationList.parse(map['Configurations']) unless map['Configurations'].nil?)
        data.properties = (StringMap.parse(map['Properties']) unless map['Properties'].nil?)
        return data
      end
    end

    class StringMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
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

    class ApplicationList
      def self.parse(list)
        list.map do |value|
          Application.parse(value) unless value.nil?
        end
      end
    end

    class Application
      def self.parse(map)
        data = Types::Application.new
        data.name = map['Name']
        data.version = map['Version']
        data.args = (StringList.parse(map['Args']) unless map['Args'].nil?)
        data.additional_info = (StringMap.parse(map['AdditionalInfo']) unless map['AdditionalInfo'].nil?)
        return data
      end
    end

    class StringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Ec2InstanceAttributes
      def self.parse(map)
        data = Types::Ec2InstanceAttributes.new
        data.ec2_key_name = map['Ec2KeyName']
        data.ec2_subnet_id = map['Ec2SubnetId']
        data.requested_ec2_subnet_ids = (XmlStringMaxLen256List.parse(map['RequestedEc2SubnetIds']) unless map['RequestedEc2SubnetIds'].nil?)
        data.ec2_availability_zone = map['Ec2AvailabilityZone']
        data.requested_ec2_availability_zones = (XmlStringMaxLen256List.parse(map['RequestedEc2AvailabilityZones']) unless map['RequestedEc2AvailabilityZones'].nil?)
        data.iam_instance_profile = map['IamInstanceProfile']
        data.emr_managed_master_security_group = map['EmrManagedMasterSecurityGroup']
        data.emr_managed_slave_security_group = map['EmrManagedSlaveSecurityGroup']
        data.service_access_security_group = map['ServiceAccessSecurityGroup']
        data.additional_master_security_groups = (StringList.parse(map['AdditionalMasterSecurityGroups']) unless map['AdditionalMasterSecurityGroups'].nil?)
        data.additional_slave_security_groups = (StringList.parse(map['AdditionalSlaveSecurityGroups']) unless map['AdditionalSlaveSecurityGroups'].nil?)
        return data
      end
    end

    class XmlStringMaxLen256List
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ClusterStatus
      def self.parse(map)
        data = Types::ClusterStatus.new
        data.state = map['State']
        data.state_change_reason = (ClusterStateChangeReason.parse(map['StateChangeReason']) unless map['StateChangeReason'].nil?)
        data.timeline = (ClusterTimeline.parse(map['Timeline']) unless map['Timeline'].nil?)
        return data
      end
    end

    class ClusterTimeline
      def self.parse(map)
        data = Types::ClusterTimeline.new
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data.ready_date_time = Time.at(map['ReadyDateTime'].to_i) if map['ReadyDateTime']
        data.end_date_time = Time.at(map['EndDateTime'].to_i) if map['EndDateTime']
        return data
      end
    end

    class ClusterStateChangeReason
      def self.parse(map)
        data = Types::ClusterStateChangeReason.new
        data.code = map['Code']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for DescribeJobFlows
    class DescribeJobFlows
      def self.parse(http_resp)
        data = Types::DescribeJobFlowsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_flows = (JobFlowDetailList.parse(map['JobFlows']) unless map['JobFlows'].nil?)
        data
      end
    end

    class JobFlowDetailList
      def self.parse(list)
        list.map do |value|
          JobFlowDetail.parse(value) unless value.nil?
        end
      end
    end

    class JobFlowDetail
      def self.parse(map)
        data = Types::JobFlowDetail.new
        data.job_flow_id = map['JobFlowId']
        data.name = map['Name']
        data.log_uri = map['LogUri']
        data.log_encryption_kms_key_id = map['LogEncryptionKmsKeyId']
        data.ami_version = map['AmiVersion']
        data.execution_status_detail = (JobFlowExecutionStatusDetail.parse(map['ExecutionStatusDetail']) unless map['ExecutionStatusDetail'].nil?)
        data.instances = (JobFlowInstancesDetail.parse(map['Instances']) unless map['Instances'].nil?)
        data.steps = (StepDetailList.parse(map['Steps']) unless map['Steps'].nil?)
        data.bootstrap_actions = (BootstrapActionDetailList.parse(map['BootstrapActions']) unless map['BootstrapActions'].nil?)
        data.supported_products = (SupportedProductsList.parse(map['SupportedProducts']) unless map['SupportedProducts'].nil?)
        data.visible_to_all_users = map['VisibleToAllUsers']
        data.job_flow_role = map['JobFlowRole']
        data.service_role = map['ServiceRole']
        data.auto_scaling_role = map['AutoScalingRole']
        data.scale_down_behavior = map['ScaleDownBehavior']
        return data
      end
    end

    class SupportedProductsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class BootstrapActionDetailList
      def self.parse(list)
        list.map do |value|
          BootstrapActionDetail.parse(value) unless value.nil?
        end
      end
    end

    class BootstrapActionDetail
      def self.parse(map)
        data = Types::BootstrapActionDetail.new
        data.bootstrap_action_config = (BootstrapActionConfig.parse(map['BootstrapActionConfig']) unless map['BootstrapActionConfig'].nil?)
        return data
      end
    end

    class BootstrapActionConfig
      def self.parse(map)
        data = Types::BootstrapActionConfig.new
        data.name = map['Name']
        data.script_bootstrap_action = (ScriptBootstrapActionConfig.parse(map['ScriptBootstrapAction']) unless map['ScriptBootstrapAction'].nil?)
        return data
      end
    end

    class ScriptBootstrapActionConfig
      def self.parse(map)
        data = Types::ScriptBootstrapActionConfig.new
        data.path = map['Path']
        data.args = (XmlStringList.parse(map['Args']) unless map['Args'].nil?)
        return data
      end
    end

    class XmlStringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class StepDetailList
      def self.parse(list)
        list.map do |value|
          StepDetail.parse(value) unless value.nil?
        end
      end
    end

    class StepDetail
      def self.parse(map)
        data = Types::StepDetail.new
        data.step_config = (StepConfig.parse(map['StepConfig']) unless map['StepConfig'].nil?)
        data.execution_status_detail = (StepExecutionStatusDetail.parse(map['ExecutionStatusDetail']) unless map['ExecutionStatusDetail'].nil?)
        return data
      end
    end

    class StepExecutionStatusDetail
      def self.parse(map)
        data = Types::StepExecutionStatusDetail.new
        data.state = map['State']
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data.start_date_time = Time.at(map['StartDateTime'].to_i) if map['StartDateTime']
        data.end_date_time = Time.at(map['EndDateTime'].to_i) if map['EndDateTime']
        data.last_state_change_reason = map['LastStateChangeReason']
        return data
      end
    end

    class StepConfig
      def self.parse(map)
        data = Types::StepConfig.new
        data.name = map['Name']
        data.action_on_failure = map['ActionOnFailure']
        data.hadoop_jar_step = (HadoopJarStepConfig.parse(map['HadoopJarStep']) unless map['HadoopJarStep'].nil?)
        return data
      end
    end

    class HadoopJarStepConfig
      def self.parse(map)
        data = Types::HadoopJarStepConfig.new
        data.properties = (KeyValueList.parse(map['Properties']) unless map['Properties'].nil?)
        data.jar = map['Jar']
        data.main_class = map['MainClass']
        data.args = (XmlStringList.parse(map['Args']) unless map['Args'].nil?)
        return data
      end
    end

    class KeyValueList
      def self.parse(list)
        list.map do |value|
          KeyValue.parse(value) unless value.nil?
        end
      end
    end

    class KeyValue
      def self.parse(map)
        data = Types::KeyValue.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class JobFlowInstancesDetail
      def self.parse(map)
        data = Types::JobFlowInstancesDetail.new
        data.master_instance_type = map['MasterInstanceType']
        data.master_public_dns_name = map['MasterPublicDnsName']
        data.master_instance_id = map['MasterInstanceId']
        data.slave_instance_type = map['SlaveInstanceType']
        data.instance_count = map['InstanceCount']
        data.instance_groups = (InstanceGroupDetailList.parse(map['InstanceGroups']) unless map['InstanceGroups'].nil?)
        data.normalized_instance_hours = map['NormalizedInstanceHours']
        data.ec2_key_name = map['Ec2KeyName']
        data.ec2_subnet_id = map['Ec2SubnetId']
        data.placement = (PlacementType.parse(map['Placement']) unless map['Placement'].nil?)
        data.keep_job_flow_alive_when_no_steps = map['KeepJobFlowAliveWhenNoSteps']
        data.termination_protected = map['TerminationProtected']
        data.hadoop_version = map['HadoopVersion']
        return data
      end
    end

    class PlacementType
      def self.parse(map)
        data = Types::PlacementType.new
        data.availability_zone = map['AvailabilityZone']
        data.availability_zones = (XmlStringMaxLen256List.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        return data
      end
    end

    class InstanceGroupDetailList
      def self.parse(list)
        list.map do |value|
          InstanceGroupDetail.parse(value) unless value.nil?
        end
      end
    end

    class InstanceGroupDetail
      def self.parse(map)
        data = Types::InstanceGroupDetail.new
        data.instance_group_id = map['InstanceGroupId']
        data.name = map['Name']
        data.market = map['Market']
        data.instance_role = map['InstanceRole']
        data.bid_price = map['BidPrice']
        data.instance_type = map['InstanceType']
        data.instance_request_count = map['InstanceRequestCount']
        data.instance_running_count = map['InstanceRunningCount']
        data.state = map['State']
        data.last_state_change_reason = map['LastStateChangeReason']
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data.start_date_time = Time.at(map['StartDateTime'].to_i) if map['StartDateTime']
        data.ready_date_time = Time.at(map['ReadyDateTime'].to_i) if map['ReadyDateTime']
        data.end_date_time = Time.at(map['EndDateTime'].to_i) if map['EndDateTime']
        data.custom_ami_id = map['CustomAmiId']
        return data
      end
    end

    class JobFlowExecutionStatusDetail
      def self.parse(map)
        data = Types::JobFlowExecutionStatusDetail.new
        data.state = map['State']
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data.start_date_time = Time.at(map['StartDateTime'].to_i) if map['StartDateTime']
        data.ready_date_time = Time.at(map['ReadyDateTime'].to_i) if map['ReadyDateTime']
        data.end_date_time = Time.at(map['EndDateTime'].to_i) if map['EndDateTime']
        data.last_state_change_reason = map['LastStateChangeReason']
        return data
      end
    end

    # Operation Parser for DescribeNotebookExecution
    class DescribeNotebookExecution
      def self.parse(http_resp)
        data = Types::DescribeNotebookExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.notebook_execution = (NotebookExecution.parse(map['NotebookExecution']) unless map['NotebookExecution'].nil?)
        data
      end
    end

    class NotebookExecution
      def self.parse(map)
        data = Types::NotebookExecution.new
        data.notebook_execution_id = map['NotebookExecutionId']
        data.editor_id = map['EditorId']
        data.execution_engine = (ExecutionEngineConfig.parse(map['ExecutionEngine']) unless map['ExecutionEngine'].nil?)
        data.notebook_execution_name = map['NotebookExecutionName']
        data.notebook_params = map['NotebookParams']
        data.status = map['Status']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.arn = map['Arn']
        data.output_notebook_uri = map['OutputNotebookURI']
        data.last_state_change_reason = map['LastStateChangeReason']
        data.notebook_instance_security_group_id = map['NotebookInstanceSecurityGroupId']
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class ExecutionEngineConfig
      def self.parse(map)
        data = Types::ExecutionEngineConfig.new
        data.id = map['Id']
        data.type = map['Type']
        data.master_instance_security_group_id = map['MasterInstanceSecurityGroupId']
        return data
      end
    end

    # Operation Parser for DescribeReleaseLabel
    class DescribeReleaseLabel
      def self.parse(http_resp)
        data = Types::DescribeReleaseLabelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.release_label = map['ReleaseLabel']
        data.applications = (SimplifiedApplicationList.parse(map['Applications']) unless map['Applications'].nil?)
        data.next_token = map['NextToken']
        data.available_os_releases = (OSReleaseList.parse(map['AvailableOSReleases']) unless map['AvailableOSReleases'].nil?)
        data
      end
    end

    class OSReleaseList
      def self.parse(list)
        list.map do |value|
          OSRelease.parse(value) unless value.nil?
        end
      end
    end

    class OSRelease
      def self.parse(map)
        data = Types::OSRelease.new
        data.label = map['Label']
        return data
      end
    end

    class SimplifiedApplicationList
      def self.parse(list)
        list.map do |value|
          SimplifiedApplication.parse(value) unless value.nil?
        end
      end
    end

    class SimplifiedApplication
      def self.parse(map)
        data = Types::SimplifiedApplication.new
        data.name = map['Name']
        data.version = map['Version']
        return data
      end
    end

    # Operation Parser for DescribeSecurityConfiguration
    class DescribeSecurityConfiguration
      def self.parse(http_resp)
        data = Types::DescribeSecurityConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.security_configuration = map['SecurityConfiguration']
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data
      end
    end

    # Operation Parser for DescribeStep
    class DescribeStep
      def self.parse(http_resp)
        data = Types::DescribeStepOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.step = (Step.parse(map['Step']) unless map['Step'].nil?)
        data
      end
    end

    class Step
      def self.parse(map)
        data = Types::Step.new
        data.id = map['Id']
        data.name = map['Name']
        data.config = (HadoopStepConfig.parse(map['Config']) unless map['Config'].nil?)
        data.action_on_failure = map['ActionOnFailure']
        data.status = (StepStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    class StepStatus
      def self.parse(map)
        data = Types::StepStatus.new
        data.state = map['State']
        data.state_change_reason = (StepStateChangeReason.parse(map['StateChangeReason']) unless map['StateChangeReason'].nil?)
        data.failure_details = (FailureDetails.parse(map['FailureDetails']) unless map['FailureDetails'].nil?)
        data.timeline = (StepTimeline.parse(map['Timeline']) unless map['Timeline'].nil?)
        return data
      end
    end

    class StepTimeline
      def self.parse(map)
        data = Types::StepTimeline.new
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data.start_date_time = Time.at(map['StartDateTime'].to_i) if map['StartDateTime']
        data.end_date_time = Time.at(map['EndDateTime'].to_i) if map['EndDateTime']
        return data
      end
    end

    class FailureDetails
      def self.parse(map)
        data = Types::FailureDetails.new
        data.reason = map['Reason']
        data.message = map['Message']
        data.log_file = map['LogFile']
        return data
      end
    end

    class StepStateChangeReason
      def self.parse(map)
        data = Types::StepStateChangeReason.new
        data.code = map['Code']
        data.message = map['Message']
        return data
      end
    end

    class HadoopStepConfig
      def self.parse(map)
        data = Types::HadoopStepConfig.new
        data.jar = map['Jar']
        data.properties = (StringMap.parse(map['Properties']) unless map['Properties'].nil?)
        data.main_class = map['MainClass']
        data.args = (StringList.parse(map['Args']) unless map['Args'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeStudio
    class DescribeStudio
      def self.parse(http_resp)
        data = Types::DescribeStudioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.studio = (Studio.parse(map['Studio']) unless map['Studio'].nil?)
        data
      end
    end

    class Studio
      def self.parse(map)
        data = Types::Studio.new
        data.studio_id = map['StudioId']
        data.studio_arn = map['StudioArn']
        data.name = map['Name']
        data.description = map['Description']
        data.auth_mode = map['AuthMode']
        data.vpc_id = map['VpcId']
        data.subnet_ids = (SubnetIdList.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.service_role = map['ServiceRole']
        data.user_role = map['UserRole']
        data.workspace_security_group_id = map['WorkspaceSecurityGroupId']
        data.engine_security_group_id = map['EngineSecurityGroupId']
        data.url = map['Url']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.default_s3_location = map['DefaultS3Location']
        data.idp_auth_url = map['IdpAuthUrl']
        data.idp_relay_state_parameter_name = map['IdpRelayStateParameterName']
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class SubnetIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetAutoTerminationPolicy
    class GetAutoTerminationPolicy
      def self.parse(http_resp)
        data = Types::GetAutoTerminationPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.auto_termination_policy = (AutoTerminationPolicy.parse(map['AutoTerminationPolicy']) unless map['AutoTerminationPolicy'].nil?)
        data
      end
    end

    class AutoTerminationPolicy
      def self.parse(map)
        data = Types::AutoTerminationPolicy.new
        data.idle_timeout = map['IdleTimeout']
        return data
      end
    end

    # Operation Parser for GetBlockPublicAccessConfiguration
    class GetBlockPublicAccessConfiguration
      def self.parse(http_resp)
        data = Types::GetBlockPublicAccessConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.block_public_access_configuration = (BlockPublicAccessConfiguration.parse(map['BlockPublicAccessConfiguration']) unless map['BlockPublicAccessConfiguration'].nil?)
        data.block_public_access_configuration_metadata = (BlockPublicAccessConfigurationMetadata.parse(map['BlockPublicAccessConfigurationMetadata']) unless map['BlockPublicAccessConfigurationMetadata'].nil?)
        data
      end
    end

    class BlockPublicAccessConfigurationMetadata
      def self.parse(map)
        data = Types::BlockPublicAccessConfigurationMetadata.new
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data.created_by_arn = map['CreatedByArn']
        return data
      end
    end

    class BlockPublicAccessConfiguration
      def self.parse(map)
        data = Types::BlockPublicAccessConfiguration.new
        data.block_public_security_group_rules = map['BlockPublicSecurityGroupRules']
        data.permitted_public_security_group_rule_ranges = (PortRanges.parse(map['PermittedPublicSecurityGroupRuleRanges']) unless map['PermittedPublicSecurityGroupRuleRanges'].nil?)
        data.classification = map['Classification']
        data.configurations = (ConfigurationList.parse(map['Configurations']) unless map['Configurations'].nil?)
        data.properties = (StringMap.parse(map['Properties']) unless map['Properties'].nil?)
        return data
      end
    end

    class PortRanges
      def self.parse(list)
        list.map do |value|
          PortRange.parse(value) unless value.nil?
        end
      end
    end

    class PortRange
      def self.parse(map)
        data = Types::PortRange.new
        data.min_range = map['MinRange']
        data.max_range = map['MaxRange']
        return data
      end
    end

    # Operation Parser for GetManagedScalingPolicy
    class GetManagedScalingPolicy
      def self.parse(http_resp)
        data = Types::GetManagedScalingPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.managed_scaling_policy = (ManagedScalingPolicy.parse(map['ManagedScalingPolicy']) unless map['ManagedScalingPolicy'].nil?)
        data
      end
    end

    class ManagedScalingPolicy
      def self.parse(map)
        data = Types::ManagedScalingPolicy.new
        data.compute_limits = (ComputeLimits.parse(map['ComputeLimits']) unless map['ComputeLimits'].nil?)
        return data
      end
    end

    class ComputeLimits
      def self.parse(map)
        data = Types::ComputeLimits.new
        data.unit_type = map['UnitType']
        data.minimum_capacity_units = map['MinimumCapacityUnits']
        data.maximum_capacity_units = map['MaximumCapacityUnits']
        data.maximum_on_demand_capacity_units = map['MaximumOnDemandCapacityUnits']
        data.maximum_core_capacity_units = map['MaximumCoreCapacityUnits']
        return data
      end
    end

    # Operation Parser for GetStudioSessionMapping
    class GetStudioSessionMapping
      def self.parse(http_resp)
        data = Types::GetStudioSessionMappingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.session_mapping = (SessionMappingDetail.parse(map['SessionMapping']) unless map['SessionMapping'].nil?)
        data
      end
    end

    class SessionMappingDetail
      def self.parse(map)
        data = Types::SessionMappingDetail.new
        data.studio_id = map['StudioId']
        data.identity_id = map['IdentityId']
        data.identity_name = map['IdentityName']
        data.identity_type = map['IdentityType']
        data.session_policy_arn = map['SessionPolicyArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for ListBootstrapActions
    class ListBootstrapActions
      def self.parse(http_resp)
        data = Types::ListBootstrapActionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.bootstrap_actions = (CommandList.parse(map['BootstrapActions']) unless map['BootstrapActions'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class CommandList
      def self.parse(list)
        list.map do |value|
          Command.parse(value) unless value.nil?
        end
      end
    end

    class Command
      def self.parse(map)
        data = Types::Command.new
        data.name = map['Name']
        data.script_path = map['ScriptPath']
        data.args = (StringList.parse(map['Args']) unless map['Args'].nil?)
        return data
      end
    end

    # Operation Parser for ListClusters
    class ListClusters
      def self.parse(http_resp)
        data = Types::ListClustersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.clusters = (ClusterSummaryList.parse(map['Clusters']) unless map['Clusters'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class ClusterSummaryList
      def self.parse(list)
        list.map do |value|
          ClusterSummary.parse(value) unless value.nil?
        end
      end
    end

    class ClusterSummary
      def self.parse(map)
        data = Types::ClusterSummary.new
        data.id = map['Id']
        data.name = map['Name']
        data.status = (ClusterStatus.parse(map['Status']) unless map['Status'].nil?)
        data.normalized_instance_hours = map['NormalizedInstanceHours']
        data.cluster_arn = map['ClusterArn']
        data.outpost_arn = map['OutpostArn']
        return data
      end
    end

    # Operation Parser for ListInstanceFleets
    class ListInstanceFleets
      def self.parse(http_resp)
        data = Types::ListInstanceFleetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_fleets = (InstanceFleetList.parse(map['InstanceFleets']) unless map['InstanceFleets'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class InstanceFleetList
      def self.parse(list)
        list.map do |value|
          InstanceFleet.parse(value) unless value.nil?
        end
      end
    end

    class InstanceFleet
      def self.parse(map)
        data = Types::InstanceFleet.new
        data.id = map['Id']
        data.name = map['Name']
        data.status = (InstanceFleetStatus.parse(map['Status']) unless map['Status'].nil?)
        data.instance_fleet_type = map['InstanceFleetType']
        data.target_on_demand_capacity = map['TargetOnDemandCapacity']
        data.target_spot_capacity = map['TargetSpotCapacity']
        data.provisioned_on_demand_capacity = map['ProvisionedOnDemandCapacity']
        data.provisioned_spot_capacity = map['ProvisionedSpotCapacity']
        data.instance_type_specifications = (InstanceTypeSpecificationList.parse(map['InstanceTypeSpecifications']) unless map['InstanceTypeSpecifications'].nil?)
        data.launch_specifications = (InstanceFleetProvisioningSpecifications.parse(map['LaunchSpecifications']) unless map['LaunchSpecifications'].nil?)
        return data
      end
    end

    class InstanceFleetProvisioningSpecifications
      def self.parse(map)
        data = Types::InstanceFleetProvisioningSpecifications.new
        data.spot_specification = (SpotProvisioningSpecification.parse(map['SpotSpecification']) unless map['SpotSpecification'].nil?)
        data.on_demand_specification = (OnDemandProvisioningSpecification.parse(map['OnDemandSpecification']) unless map['OnDemandSpecification'].nil?)
        return data
      end
    end

    class OnDemandProvisioningSpecification
      def self.parse(map)
        data = Types::OnDemandProvisioningSpecification.new
        data.allocation_strategy = map['AllocationStrategy']
        data.capacity_reservation_options = (OnDemandCapacityReservationOptions.parse(map['CapacityReservationOptions']) unless map['CapacityReservationOptions'].nil?)
        return data
      end
    end

    class OnDemandCapacityReservationOptions
      def self.parse(map)
        data = Types::OnDemandCapacityReservationOptions.new
        data.usage_strategy = map['UsageStrategy']
        data.capacity_reservation_preference = map['CapacityReservationPreference']
        data.capacity_reservation_resource_group_arn = map['CapacityReservationResourceGroupArn']
        return data
      end
    end

    class SpotProvisioningSpecification
      def self.parse(map)
        data = Types::SpotProvisioningSpecification.new
        data.timeout_duration_minutes = map['TimeoutDurationMinutes']
        data.timeout_action = map['TimeoutAction']
        data.block_duration_minutes = map['BlockDurationMinutes']
        data.allocation_strategy = map['AllocationStrategy']
        return data
      end
    end

    class InstanceTypeSpecificationList
      def self.parse(list)
        list.map do |value|
          InstanceTypeSpecification.parse(value) unless value.nil?
        end
      end
    end

    class InstanceTypeSpecification
      def self.parse(map)
        data = Types::InstanceTypeSpecification.new
        data.instance_type = map['InstanceType']
        data.weighted_capacity = map['WeightedCapacity']
        data.bid_price = map['BidPrice']
        data.bid_price_as_percentage_of_on_demand_price = Hearth::NumberHelper.deserialize(map['BidPriceAsPercentageOfOnDemandPrice'])
        data.configurations = (ConfigurationList.parse(map['Configurations']) unless map['Configurations'].nil?)
        data.ebs_block_devices = (EbsBlockDeviceList.parse(map['EbsBlockDevices']) unless map['EbsBlockDevices'].nil?)
        data.ebs_optimized = map['EbsOptimized']
        data.custom_ami_id = map['CustomAmiId']
        return data
      end
    end

    class EbsBlockDeviceList
      def self.parse(list)
        list.map do |value|
          EbsBlockDevice.parse(value) unless value.nil?
        end
      end
    end

    class EbsBlockDevice
      def self.parse(map)
        data = Types::EbsBlockDevice.new
        data.volume_specification = (VolumeSpecification.parse(map['VolumeSpecification']) unless map['VolumeSpecification'].nil?)
        data.device = map['Device']
        return data
      end
    end

    class VolumeSpecification
      def self.parse(map)
        data = Types::VolumeSpecification.new
        data.volume_type = map['VolumeType']
        data.iops = map['Iops']
        data.size_in_gb = map['SizeInGB']
        return data
      end
    end

    class InstanceFleetStatus
      def self.parse(map)
        data = Types::InstanceFleetStatus.new
        data.state = map['State']
        data.state_change_reason = (InstanceFleetStateChangeReason.parse(map['StateChangeReason']) unless map['StateChangeReason'].nil?)
        data.timeline = (InstanceFleetTimeline.parse(map['Timeline']) unless map['Timeline'].nil?)
        return data
      end
    end

    class InstanceFleetTimeline
      def self.parse(map)
        data = Types::InstanceFleetTimeline.new
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data.ready_date_time = Time.at(map['ReadyDateTime'].to_i) if map['ReadyDateTime']
        data.end_date_time = Time.at(map['EndDateTime'].to_i) if map['EndDateTime']
        return data
      end
    end

    class InstanceFleetStateChangeReason
      def self.parse(map)
        data = Types::InstanceFleetStateChangeReason.new
        data.code = map['Code']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for ListInstanceGroups
    class ListInstanceGroups
      def self.parse(http_resp)
        data = Types::ListInstanceGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_groups = (InstanceGroupList.parse(map['InstanceGroups']) unless map['InstanceGroups'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class InstanceGroupList
      def self.parse(list)
        list.map do |value|
          InstanceGroup.parse(value) unless value.nil?
        end
      end
    end

    class InstanceGroup
      def self.parse(map)
        data = Types::InstanceGroup.new
        data.id = map['Id']
        data.name = map['Name']
        data.market = map['Market']
        data.instance_group_type = map['InstanceGroupType']
        data.bid_price = map['BidPrice']
        data.instance_type = map['InstanceType']
        data.requested_instance_count = map['RequestedInstanceCount']
        data.running_instance_count = map['RunningInstanceCount']
        data.status = (InstanceGroupStatus.parse(map['Status']) unless map['Status'].nil?)
        data.configurations = (ConfigurationList.parse(map['Configurations']) unless map['Configurations'].nil?)
        data.configurations_version = map['ConfigurationsVersion']
        data.last_successfully_applied_configurations = (ConfigurationList.parse(map['LastSuccessfullyAppliedConfigurations']) unless map['LastSuccessfullyAppliedConfigurations'].nil?)
        data.last_successfully_applied_configurations_version = map['LastSuccessfullyAppliedConfigurationsVersion']
        data.ebs_block_devices = (EbsBlockDeviceList.parse(map['EbsBlockDevices']) unless map['EbsBlockDevices'].nil?)
        data.ebs_optimized = map['EbsOptimized']
        data.shrink_policy = (ShrinkPolicy.parse(map['ShrinkPolicy']) unless map['ShrinkPolicy'].nil?)
        data.auto_scaling_policy = (AutoScalingPolicyDescription.parse(map['AutoScalingPolicy']) unless map['AutoScalingPolicy'].nil?)
        data.custom_ami_id = map['CustomAmiId']
        return data
      end
    end

    class AutoScalingPolicyDescription
      def self.parse(map)
        data = Types::AutoScalingPolicyDescription.new
        data.status = (AutoScalingPolicyStatus.parse(map['Status']) unless map['Status'].nil?)
        data.constraints = (ScalingConstraints.parse(map['Constraints']) unless map['Constraints'].nil?)
        data.rules = (ScalingRuleList.parse(map['Rules']) unless map['Rules'].nil?)
        return data
      end
    end

    class ScalingRuleList
      def self.parse(list)
        list.map do |value|
          ScalingRule.parse(value) unless value.nil?
        end
      end
    end

    class ScalingRule
      def self.parse(map)
        data = Types::ScalingRule.new
        data.name = map['Name']
        data.description = map['Description']
        data.action = (ScalingAction.parse(map['Action']) unless map['Action'].nil?)
        data.trigger = (ScalingTrigger.parse(map['Trigger']) unless map['Trigger'].nil?)
        return data
      end
    end

    class ScalingTrigger
      def self.parse(map)
        data = Types::ScalingTrigger.new
        data.cloud_watch_alarm_definition = (CloudWatchAlarmDefinition.parse(map['CloudWatchAlarmDefinition']) unless map['CloudWatchAlarmDefinition'].nil?)
        return data
      end
    end

    class CloudWatchAlarmDefinition
      def self.parse(map)
        data = Types::CloudWatchAlarmDefinition.new
        data.comparison_operator = map['ComparisonOperator']
        data.evaluation_periods = map['EvaluationPeriods']
        data.metric_name = map['MetricName']
        data.namespace = map['Namespace']
        data.period = map['Period']
        data.statistic = map['Statistic']
        data.threshold = Hearth::NumberHelper.deserialize(map['Threshold'])
        data.unit = map['Unit']
        data.dimensions = (MetricDimensionList.parse(map['Dimensions']) unless map['Dimensions'].nil?)
        return data
      end
    end

    class MetricDimensionList
      def self.parse(list)
        list.map do |value|
          MetricDimension.parse(value) unless value.nil?
        end
      end
    end

    class MetricDimension
      def self.parse(map)
        data = Types::MetricDimension.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class ScalingAction
      def self.parse(map)
        data = Types::ScalingAction.new
        data.market = map['Market']
        data.simple_scaling_policy_configuration = (SimpleScalingPolicyConfiguration.parse(map['SimpleScalingPolicyConfiguration']) unless map['SimpleScalingPolicyConfiguration'].nil?)
        return data
      end
    end

    class SimpleScalingPolicyConfiguration
      def self.parse(map)
        data = Types::SimpleScalingPolicyConfiguration.new
        data.adjustment_type = map['AdjustmentType']
        data.scaling_adjustment = map['ScalingAdjustment']
        data.cool_down = map['CoolDown']
        return data
      end
    end

    class ScalingConstraints
      def self.parse(map)
        data = Types::ScalingConstraints.new
        data.min_capacity = map['MinCapacity']
        data.max_capacity = map['MaxCapacity']
        return data
      end
    end

    class AutoScalingPolicyStatus
      def self.parse(map)
        data = Types::AutoScalingPolicyStatus.new
        data.state = map['State']
        data.state_change_reason = (AutoScalingPolicyStateChangeReason.parse(map['StateChangeReason']) unless map['StateChangeReason'].nil?)
        return data
      end
    end

    class AutoScalingPolicyStateChangeReason
      def self.parse(map)
        data = Types::AutoScalingPolicyStateChangeReason.new
        data.code = map['Code']
        data.message = map['Message']
        return data
      end
    end

    class ShrinkPolicy
      def self.parse(map)
        data = Types::ShrinkPolicy.new
        data.decommission_timeout = map['DecommissionTimeout']
        data.instance_resize_policy = (InstanceResizePolicy.parse(map['InstanceResizePolicy']) unless map['InstanceResizePolicy'].nil?)
        return data
      end
    end

    class InstanceResizePolicy
      def self.parse(map)
        data = Types::InstanceResizePolicy.new
        data.instances_to_terminate = (EC2InstanceIdsList.parse(map['InstancesToTerminate']) unless map['InstancesToTerminate'].nil?)
        data.instances_to_protect = (EC2InstanceIdsList.parse(map['InstancesToProtect']) unless map['InstancesToProtect'].nil?)
        data.instance_termination_timeout = map['InstanceTerminationTimeout']
        return data
      end
    end

    class EC2InstanceIdsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class InstanceGroupStatus
      def self.parse(map)
        data = Types::InstanceGroupStatus.new
        data.state = map['State']
        data.state_change_reason = (InstanceGroupStateChangeReason.parse(map['StateChangeReason']) unless map['StateChangeReason'].nil?)
        data.timeline = (InstanceGroupTimeline.parse(map['Timeline']) unless map['Timeline'].nil?)
        return data
      end
    end

    class InstanceGroupTimeline
      def self.parse(map)
        data = Types::InstanceGroupTimeline.new
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data.ready_date_time = Time.at(map['ReadyDateTime'].to_i) if map['ReadyDateTime']
        data.end_date_time = Time.at(map['EndDateTime'].to_i) if map['EndDateTime']
        return data
      end
    end

    class InstanceGroupStateChangeReason
      def self.parse(map)
        data = Types::InstanceGroupStateChangeReason.new
        data.code = map['Code']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for ListInstances
    class ListInstances
      def self.parse(http_resp)
        data = Types::ListInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instances = (InstanceList.parse(map['Instances']) unless map['Instances'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class InstanceList
      def self.parse(list)
        list.map do |value|
          Instance.parse(value) unless value.nil?
        end
      end
    end

    class Instance
      def self.parse(map)
        data = Types::Instance.new
        data.id = map['Id']
        data.ec2_instance_id = map['Ec2InstanceId']
        data.public_dns_name = map['PublicDnsName']
        data.public_ip_address = map['PublicIpAddress']
        data.private_dns_name = map['PrivateDnsName']
        data.private_ip_address = map['PrivateIpAddress']
        data.status = (InstanceStatus.parse(map['Status']) unless map['Status'].nil?)
        data.instance_group_id = map['InstanceGroupId']
        data.instance_fleet_id = map['InstanceFleetId']
        data.market = map['Market']
        data.instance_type = map['InstanceType']
        data.ebs_volumes = (EbsVolumeList.parse(map['EbsVolumes']) unless map['EbsVolumes'].nil?)
        return data
      end
    end

    class EbsVolumeList
      def self.parse(list)
        list.map do |value|
          EbsVolume.parse(value) unless value.nil?
        end
      end
    end

    class EbsVolume
      def self.parse(map)
        data = Types::EbsVolume.new
        data.device = map['Device']
        data.volume_id = map['VolumeId']
        return data
      end
    end

    class InstanceStatus
      def self.parse(map)
        data = Types::InstanceStatus.new
        data.state = map['State']
        data.state_change_reason = (InstanceStateChangeReason.parse(map['StateChangeReason']) unless map['StateChangeReason'].nil?)
        data.timeline = (InstanceTimeline.parse(map['Timeline']) unless map['Timeline'].nil?)
        return data
      end
    end

    class InstanceTimeline
      def self.parse(map)
        data = Types::InstanceTimeline.new
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        data.ready_date_time = Time.at(map['ReadyDateTime'].to_i) if map['ReadyDateTime']
        data.end_date_time = Time.at(map['EndDateTime'].to_i) if map['EndDateTime']
        return data
      end
    end

    class InstanceStateChangeReason
      def self.parse(map)
        data = Types::InstanceStateChangeReason.new
        data.code = map['Code']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for ListNotebookExecutions
    class ListNotebookExecutions
      def self.parse(http_resp)
        data = Types::ListNotebookExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.notebook_executions = (NotebookExecutionSummaryList.parse(map['NotebookExecutions']) unless map['NotebookExecutions'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class NotebookExecutionSummaryList
      def self.parse(list)
        list.map do |value|
          NotebookExecutionSummary.parse(value) unless value.nil?
        end
      end
    end

    class NotebookExecutionSummary
      def self.parse(map)
        data = Types::NotebookExecutionSummary.new
        data.notebook_execution_id = map['NotebookExecutionId']
        data.editor_id = map['EditorId']
        data.notebook_execution_name = map['NotebookExecutionName']
        data.status = map['Status']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        return data
      end
    end

    # Operation Parser for ListReleaseLabels
    class ListReleaseLabels
      def self.parse(http_resp)
        data = Types::ListReleaseLabelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.release_labels = (StringList.parse(map['ReleaseLabels']) unless map['ReleaseLabels'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListSecurityConfigurations
    class ListSecurityConfigurations
      def self.parse(http_resp)
        data = Types::ListSecurityConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.security_configurations = (SecurityConfigurationList.parse(map['SecurityConfigurations']) unless map['SecurityConfigurations'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class SecurityConfigurationList
      def self.parse(list)
        list.map do |value|
          SecurityConfigurationSummary.parse(value) unless value.nil?
        end
      end
    end

    class SecurityConfigurationSummary
      def self.parse(map)
        data = Types::SecurityConfigurationSummary.new
        data.name = map['Name']
        data.creation_date_time = Time.at(map['CreationDateTime'].to_i) if map['CreationDateTime']
        return data
      end
    end

    # Operation Parser for ListSteps
    class ListSteps
      def self.parse(http_resp)
        data = Types::ListStepsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.steps = (StepSummaryList.parse(map['Steps']) unless map['Steps'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class StepSummaryList
      def self.parse(list)
        list.map do |value|
          StepSummary.parse(value) unless value.nil?
        end
      end
    end

    class StepSummary
      def self.parse(map)
        data = Types::StepSummary.new
        data.id = map['Id']
        data.name = map['Name']
        data.config = (HadoopStepConfig.parse(map['Config']) unless map['Config'].nil?)
        data.action_on_failure = map['ActionOnFailure']
        data.status = (StepStatus.parse(map['Status']) unless map['Status'].nil?)
        return data
      end
    end

    # Operation Parser for ListStudioSessionMappings
    class ListStudioSessionMappings
      def self.parse(http_resp)
        data = Types::ListStudioSessionMappingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.session_mappings = (SessionMappingSummaryList.parse(map['SessionMappings']) unless map['SessionMappings'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class SessionMappingSummaryList
      def self.parse(list)
        list.map do |value|
          SessionMappingSummary.parse(value) unless value.nil?
        end
      end
    end

    class SessionMappingSummary
      def self.parse(map)
        data = Types::SessionMappingSummary.new
        data.studio_id = map['StudioId']
        data.identity_id = map['IdentityId']
        data.identity_name = map['IdentityName']
        data.identity_type = map['IdentityType']
        data.session_policy_arn = map['SessionPolicyArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    # Operation Parser for ListStudios
    class ListStudios
      def self.parse(http_resp)
        data = Types::ListStudiosOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.studios = (StudioSummaryList.parse(map['Studios']) unless map['Studios'].nil?)
        data.marker = map['Marker']
        data
      end
    end

    class StudioSummaryList
      def self.parse(list)
        list.map do |value|
          StudioSummary.parse(value) unless value.nil?
        end
      end
    end

    class StudioSummary
      def self.parse(map)
        data = Types::StudioSummary.new
        data.studio_id = map['StudioId']
        data.name = map['Name']
        data.vpc_id = map['VpcId']
        data.description = map['Description']
        data.url = map['Url']
        data.auth_mode = map['AuthMode']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    # Operation Parser for ModifyCluster
    class ModifyCluster
      def self.parse(http_resp)
        data = Types::ModifyClusterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.step_concurrency_level = map['StepConcurrencyLevel']
        data
      end
    end

    # Operation Parser for ModifyInstanceFleet
    class ModifyInstanceFleet
      def self.parse(http_resp)
        data = Types::ModifyInstanceFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ModifyInstanceGroups
    class ModifyInstanceGroups
      def self.parse(http_resp)
        data = Types::ModifyInstanceGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutAutoScalingPolicy
    class PutAutoScalingPolicy
      def self.parse(http_resp)
        data = Types::PutAutoScalingPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.cluster_id = map['ClusterId']
        data.instance_group_id = map['InstanceGroupId']
        data.auto_scaling_policy = (AutoScalingPolicyDescription.parse(map['AutoScalingPolicy']) unless map['AutoScalingPolicy'].nil?)
        data.cluster_arn = map['ClusterArn']
        data
      end
    end

    # Operation Parser for PutAutoTerminationPolicy
    class PutAutoTerminationPolicy
      def self.parse(http_resp)
        data = Types::PutAutoTerminationPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutBlockPublicAccessConfiguration
    class PutBlockPublicAccessConfiguration
      def self.parse(http_resp)
        data = Types::PutBlockPublicAccessConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for PutManagedScalingPolicy
    class PutManagedScalingPolicy
      def self.parse(http_resp)
        data = Types::PutManagedScalingPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RemoveAutoScalingPolicy
    class RemoveAutoScalingPolicy
      def self.parse(http_resp)
        data = Types::RemoveAutoScalingPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RemoveAutoTerminationPolicy
    class RemoveAutoTerminationPolicy
      def self.parse(http_resp)
        data = Types::RemoveAutoTerminationPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RemoveManagedScalingPolicy
    class RemoveManagedScalingPolicy
      def self.parse(http_resp)
        data = Types::RemoveManagedScalingPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RemoveTags
    class RemoveTags
      def self.parse(http_resp)
        data = Types::RemoveTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for RunJobFlow
    class RunJobFlow
      def self.parse(http_resp)
        data = Types::RunJobFlowOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_flow_id = map['JobFlowId']
        data.cluster_arn = map['ClusterArn']
        data
      end
    end

    # Operation Parser for SetTerminationProtection
    class SetTerminationProtection
      def self.parse(http_resp)
        data = Types::SetTerminationProtectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SetVisibleToAllUsers
    class SetVisibleToAllUsers
      def self.parse(http_resp)
        data = Types::SetVisibleToAllUsersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartNotebookExecution
    class StartNotebookExecution
      def self.parse(http_resp)
        data = Types::StartNotebookExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.notebook_execution_id = map['NotebookExecutionId']
        data
      end
    end

    # Operation Parser for StopNotebookExecution
    class StopNotebookExecution
      def self.parse(http_resp)
        data = Types::StopNotebookExecutionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TerminateJobFlows
    class TerminateJobFlows
      def self.parse(http_resp)
        data = Types::TerminateJobFlowsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateStudio
    class UpdateStudio
      def self.parse(http_resp)
        data = Types::UpdateStudioOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateStudioSessionMapping
    class UpdateStudioSessionMapping
      def self.parse(http_resp)
        data = Types::UpdateStudioSessionMappingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
